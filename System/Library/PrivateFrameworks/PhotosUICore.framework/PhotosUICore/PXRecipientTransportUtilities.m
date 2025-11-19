@interface PXRecipientTransportUtilities
+ (BOOL)px_IsEmailAddress:(id)a3 equalToEmailAddress:(id)a4;
+ (id)px_bestMessagingTransportForContact:(id)a3;
+ (id)px_validPhoneNumberFromString:(id)a3;
+ (int64_t)px_recipientKindFromString:(id)a3;
@end

@implementation PXRecipientTransportUtilities

+ (id)px_bestMessagingTransportForContact:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PXRecipientTransportUtilities.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v4 = [[PXRecipient alloc] initWithContact:v3 address:0 nameComponents:0 recipientKind:0];
  v5 = [(PXRecipient *)v4 allEmails];
  v6 = [(PXRecipient *)v4 unformattedAllPhones];
  v7 = [v5 setByAddingObjectsFromSet:v6];
  if ([v7 count] < 2)
  {
    v19 = [(PXRecipient *)v4 suggestedTransport];
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
  v10 = [v9 interactionAdvisor];
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
  v13 = [v12 interactionAdvisorSettingsDefault];
  [v13 setConstrainIdentifiers:v7];
  v14 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F190D228, &unk_1F190D240, &unk_1F190D258, 0}];
  [v13 setConstrainMechanisms:v14];

  v15 = [v7 allObjects];
  v16 = [v10 rankCandidateContacts:v15 usingSettings:v13];

  v17 = [v16 firstObject];
  if ([v5 containsObject:v17])
  {
    v18 = 1;
    if (!v17)
    {
LABEL_22:
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:a1 file:@"PXRecipientTransportUtilities.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"bestAddress"}];
    }
  }

  else
  {
    if (([v6 containsObject:v17] & 1) == 0)
    {
      v20 = PLUIGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v3;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "The result for best messaging transport address:%@ for contact:%@ is invalid", buf, 0x16u);
      }

      v19 = 0;
      goto LABEL_18;
    }

    v18 = 2;
    if (!v17)
    {
      goto LABEL_22;
    }
  }

  v19 = [[PXRecipientTransport alloc] initWithAddress:v17 addressKind:v18];
LABEL_18:

LABEL_19:

  return v19;
}

+ (int64_t)px_recipientKindFromString:(id)a3
{
  v4 = a3;
  v5 = [a1 px_validPhoneNumberFromString:v4];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = [a1 px_IsValidEmailAddress:v4];
  }

  return v6;
}

+ (id)px_validPhoneNumberFromString:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 length])
  {
    goto LABEL_4;
  }

  v4 = _PXPhoneNumberDataDetector(v3);
  if (v4)
  {
    goto LABEL_5;
  }

  if (([v3 hasPrefix:@"+"] & 1) == 0)
  {
    v6 = [@"+" stringByAppendingString:v3];
    v4 = _PXPhoneNumberDataDetector(v6);
    if (v4)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412546;
        v10 = v3;
        v11 = 2048;
        v12 = [v3 length];
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

+ (BOOL)px_IsEmailAddress:(id)a3 equalToEmailAddress:(id)a4
{
  v5 = MEMORY[0x1E699B240];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithString:v7];

  v9 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v6];
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