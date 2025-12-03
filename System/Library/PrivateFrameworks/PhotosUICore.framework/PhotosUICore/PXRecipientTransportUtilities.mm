@interface PXRecipientTransportUtilities
+ (BOOL)px_IsEmailAddress:(id)address equalToEmailAddress:(id)emailAddress;
+ (id)px_bestMessagingTransportForContact:(id)contact;
+ (id)px_validPhoneNumberFromString:(id)string;
+ (int64_t)px_recipientKindFromString:(id)string;
@end

@implementation PXRecipientTransportUtilities

+ (id)px_bestMessagingTransportForContact:(id)contact
{
  v33 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipientTransportUtilities.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v4 = [[PXRecipient alloc] initWithContact:contactCopy address:0 nameComponents:0 recipientKind:0];
  allEmails = [(PXRecipient *)v4 allEmails];
  unformattedAllPhones = [(PXRecipient *)v4 unformattedAllPhones];
  v7 = [allEmails setByAddingObjectsFromSet:unformattedAllPhones];
  if ([v7 count] < 2)
  {
    suggestedTransport = [(PXRecipient *)v4 suggestedTransport];
    goto LABEL_19;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v8 = get_CDInteractionAdvisorClass_softClass;
  v29 = get_CDInteractionAdvisorClass_softClass;
  if (!get_CDInteractionAdvisorClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __get_CDInteractionAdvisorClass_block_invoke;
    v31 = &unk_1E774BD00;
    v32 = &v26;
    __get_CDInteractionAdvisorClass_block_invoke(buf);
    v8 = v27[3];
  }

  v9 = v8;
  _Block_object_dispose(&v26, 8);
  interactionAdvisor = [v9 interactionAdvisor];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v11 = get_CDInteractionAdvisorSettingsClass_softClass;
  v29 = get_CDInteractionAdvisorSettingsClass_softClass;
  if (!get_CDInteractionAdvisorSettingsClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __get_CDInteractionAdvisorSettingsClass_block_invoke;
    v31 = &unk_1E774BD00;
    v32 = &v26;
    __get_CDInteractionAdvisorSettingsClass_block_invoke(buf);
    v11 = v27[3];
  }

  v12 = v11;
  _Block_object_dispose(&v26, 8);
  interactionAdvisorSettingsDefault = [v12 interactionAdvisorSettingsDefault];
  [interactionAdvisorSettingsDefault setConstrainIdentifiers:v7];
  v14 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F190D228, &unk_1F190D240, &unk_1F190D258, 0}];
  [interactionAdvisorSettingsDefault setConstrainMechanisms:v14];

  allObjects = [v7 allObjects];
  v16 = [interactionAdvisor rankCandidateContacts:allObjects usingSettings:interactionAdvisorSettingsDefault];

  firstObject = [v16 firstObject];
  if ([allEmails containsObject:firstObject])
  {
    v18 = 1;
    if (!firstObject)
    {
LABEL_22:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXRecipientTransportUtilities.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"bestAddress"}];
    }
  }

  else
  {
    if (([unformattedAllPhones containsObject:firstObject] & 1) == 0)
    {
      v20 = PLUIGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = firstObject;
        *&buf[12] = 2112;
        *&buf[14] = contactCopy;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "The result for best messaging transport address:%@ for contact:%@ is invalid", buf, 0x16u);
      }

      suggestedTransport = 0;
      goto LABEL_18;
    }

    v18 = 2;
    if (!firstObject)
    {
      goto LABEL_22;
    }
  }

  suggestedTransport = [[PXRecipientTransport alloc] initWithAddress:firstObject addressKind:v18];
LABEL_18:

LABEL_19:

  return suggestedTransport;
}

+ (int64_t)px_recipientKindFromString:(id)string
{
  stringCopy = string;
  v5 = [self px_validPhoneNumberFromString:stringCopy];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = [self px_IsValidEmailAddress:stringCopy];
  }

  return v6;
}

+ (id)px_validPhoneNumberFromString:(id)string
{
  v13 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (![stringCopy length])
  {
    goto LABEL_4;
  }

  v4 = _PXPhoneNumberDataDetector(stringCopy);
  if (v4)
  {
    goto LABEL_5;
  }

  if (([stringCopy hasPrefix:@"+"] & 1) == 0)
  {
    v6 = [@"+" stringByAppendingString:stringCopy];
    v4 = _PXPhoneNumberDataDetector(v6);
    if (v4)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412546;
        v10 = stringCopy;
        v11 = 2048;
        v12 = [stringCopy length];
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Sad workaround allowed %@ (%lu) to be recognized as a phone number", &v9, 0x16u);
      }

      if ([v4 hasPrefix:@"+"])
      {
        v8 = [v4 substringFromIndex:1];

        v4 = v8;
      }
    }
  }

  else
  {
LABEL_4:
    v4 = 0;
  }

LABEL_5:

  return v4;
}

+ (BOOL)px_IsEmailAddress:(id)address equalToEmailAddress:(id)emailAddress
{
  v5 = MEMORY[0x1E699B240];
  emailAddressCopy = emailAddress;
  addressCopy = address;
  v8 = [[v5 alloc] initWithString:addressCopy];

  v9 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:emailAddressCopy];
  if (v8 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = [v8 isEqual:v9];
  }

  return v10;
}

@end