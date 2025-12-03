@interface PXRecipient
+ (id)_contactForAddress:(id)address recipientKind:(int64_t)kind;
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PXRecipient)init;
- (PXRecipient)initWithContact:(id)contact address:(id)address nameComponents:(id)components recipientKind:(int64_t)kind;
- (PXRecipient)initWithEmailAddress:(id)address phoneNumber:(id)number nameComponents:(id)components;
- (unint64_t)hash;
- (void)px_requestImageWithTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler;
@end

@implementation PXRecipient

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  localizedName = [(PXRecipient *)self localizedName];
  allEmails = [(PXRecipient *)self allEmails];
  allPhones = [(PXRecipient *)self allPhones];
  suggestedTransport = [(PXRecipient *)self suggestedTransport];
  v8 = [v3 stringWithFormat:@"localizedName %@ emails %@ phones %@ suggestedTransport %@", localizedName, allEmails, allPhones, suggestedTransport];

  return v8;
}

- (unint64_t)hash
{
  firstName = [(PXRecipient *)self firstName];
  v4 = [firstName hash];
  lastName = [(PXRecipient *)self lastName];
  v6 = [lastName hash] ^ v4;
  allPhones = [(PXRecipient *)self allPhones];
  v8 = [allPhones hash];
  allEmails = [(PXRecipient *)self allEmails];
  v10 = v8 ^ [allEmails hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    firstName = [(PXRecipient *)self firstName];
    firstName2 = [v5 firstName];
    if (firstName != firstName2 && ![firstName isEqualToString:firstName2])
    {
      v14 = 0;
LABEL_21:

      goto LABEL_22;
    }

    lastName = [(PXRecipient *)self lastName];
    lastName2 = [v5 lastName];
    if (lastName != lastName2 && ![lastName isEqualToString:lastName2])
    {
      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    allPhones = [(PXRecipient *)self allPhones];
    allPhones2 = [v5 allPhones];
    v12 = allPhones2;
    if (allPhones == allPhones2)
    {
      v25 = allPhones2;
    }

    else
    {
      allPhones3 = [(PXRecipient *)self allPhones];
      allPhones4 = [v5 allPhones];
      if (![allPhones3 isEqualToSet:?])
      {
        v14 = 0;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v23 = allPhones3;
      v25 = v12;
    }

    allEmails = [(PXRecipient *)self allEmails];
    allEmails2 = [v5 allEmails];
    v17 = allEmails2;
    if (allEmails == allEmails2)
    {

      v14 = 1;
    }

    else
    {
      [(PXRecipient *)self allEmails];
      v18 = v21 = allPhones;
      [v5 allEmails];
      v19 = v22 = lastName;
      v14 = [v18 isEqualToSet:v19];

      lastName = v22;
      allPhones = v21;
    }

    v12 = v25;
    allPhones3 = v23;
    if (allPhones == v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (PXRecipient)initWithContact:(id)contact address:(id)address nameComponents:(id)components recipientKind:(int64_t)kind
{
  v121 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  addressCopy = address;
  componentsCopy = components;
  if (!(contactCopy | addressCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"providedContact != nil || providedAddress != nil"}];
  }

  v112.receiver = self;
  v112.super_class = PXRecipient;
  v14 = [(PXRecipient *)&v112 init];
  if (v14)
  {
    v15 = contactCopy;
    v94 = v15;
    if (contactCopy || ([objc_opt_class() _contactForAddress:addressCopy recipientKind:kind], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_storeStrong(&v14->_contact, v15);
      v16 = MEMORY[0x1E696ADF0];
      v17 = v15;
      v18 = objc_alloc_init(v16);
      givenName = [v17 givenName];
      [v18 setGivenName:givenName];

      familyName = [v17 familyName];

      [v18 setFamilyName:familyName];
      v21 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v18 style:0 options:0];

      v22 = [v21 copy];
      localizedName = v14->_localizedName;
      v14->_localizedName = v22;

      if ([(NSString *)v14->_localizedName length])
      {
        v24 = v14->_localizedName;
      }

      else
      {
        v24 = [addressCopy copy];
      }

      v25 = v14->_localizedName;
      v14->_localizedName = v24;

      givenName2 = [v17 givenName];
      firstName = v14->_firstName;
      v14->_firstName = givenName2;

      familyName2 = [v17 familyName];
      lastName = v14->_lastName;
      v14->_lastName = familyName2;

      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v101 = [MEMORY[0x1E695DFA8] set];
      v103 = v14;
      kindCopy = kind;
      v97 = componentsCopy;
      v95 = v17;
      if ([v17 isKeyAvailable:*MEMORY[0x1E695C208]])
      {
        emailAddresses = [v17 emailAddresses];
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v32 = [emailAddresses countByEnumeratingWithState:&v108 objects:v120 count:16];
        if (!v32)
        {
          goto LABEL_24;
        }

        v33 = v32;
        v34 = *v109;
        while (1)
        {
          v35 = 0;
          do
          {
            if (*v109 != v34)
            {
              objc_enumerationMutation(emailAddresses);
            }

            value = [*(*(&v108 + 1) + 8 * v35) value];
            v37 = [PXRecipientTransportUtilities px_IsValidEmailAddress:value];
            v38 = v30;
            if (v37)
            {
              if (addressCopy)
              {
                v39 = [PXRecipientTransportUtilities px_IsEmailAddress:value equalToEmailAddress:addressCopy];
                v38 = v101;
                if (!v39)
                {
                  goto LABEL_19;
                }

LABEL_18:
                v40 = [value copy];
                emailAddressString = v103->_emailAddressString;
                v103->_emailAddressString = v40;

                v38 = v101;
                goto LABEL_19;
              }

              v38 = v101;
              if (!v103->_emailAddressString)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
            [v38 addObject:value];

            ++v35;
          }

          while (v33 != v35);
          v42 = [emailAddresses countByEnumeratingWithState:&v108 objects:v120 count:16];
          v33 = v42;
          if (!v42)
          {
LABEL_24:

            v14 = v103;
            componentsCopy = v97;
            v17 = v95;
            break;
          }
        }
      }

      v43 = [v101 copy];
      allEmails = v14->_allEmails;
      v14->_allEmails = v43;

      v100 = [MEMORY[0x1E695DFA8] set];
      v99 = [MEMORY[0x1E695DFA8] set];
      if (![v17 isKeyAvailable:*MEMORY[0x1E695C330]])
      {
        goto LABEL_46;
      }

      v98 = v30;
      phoneNumbers = [v17 phoneNumbers];
      v93 = addressCopy;
      v46 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:addressCopy];
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v47 = phoneNumbers;
      v48 = [v47 countByEnumeratingWithState:&v104 objects:v119 count:16];
      if (!v48)
      {
        goto LABEL_45;
      }

      v49 = v48;
      v50 = *v105;
LABEL_28:
      v51 = 0;
      while (1)
      {
        if (*v105 != v50)
        {
          objc_enumerationMutation(v47);
        }

        value2 = [*(*(&v104 + 1) + 8 * v51) value];
        formattedStringValue = [value2 formattedStringValue];
        v54 = [PXRecipientTransportUtilities px_validPhoneNumberFromString:formattedStringValue];
        v55 = v54;
        if (!v54)
        {
          if (formattedStringValue)
          {
            [v98 addObject:formattedStringValue];
          }

          goto LABEL_43;
        }

        if (v46)
        {
          break;
        }

        if (!v103->_phoneNumberString)
        {
          v59 = [v54 copy];
          phoneNumberString = v103->_phoneNumberString;
          v103->_phoneNumberString = v59;
LABEL_39:
        }

        [v100 addObject:v55];
        unformattedInternationalStringValue = [value2 unformattedInternationalStringValue];
        if (unformattedInternationalStringValue)
        {
          [v99 addObject:unformattedInternationalStringValue];
        }

LABEL_43:
        if (v49 == ++v51)
        {
          v49 = [v47 countByEnumeratingWithState:&v104 objects:v119 count:16];
          if (!v49)
          {
LABEL_45:

            addressCopy = v93;
            kind = kindCopy;
            componentsCopy = v97;
            v14 = v103;
            v17 = v95;
            v30 = v98;
LABEL_46:
            v61 = [v100 copy];
            allPhones = v14->_allPhones;
            v14->_allPhones = v61;

            v63 = [v99 copy];
            unformattedAllPhones = v14->_unformattedAllPhones;
            v14->_unformattedAllPhones = v63;

LABEL_47:
            goto LABEL_48;
          }

          goto LABEL_28;
        }
      }

      phoneNumberString = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v54];
      if ([phoneNumberString isLikePhoneNumber:v46])
      {
        v57 = [v55 copy];
        v58 = v103->_phoneNumberString;
        v103->_phoneNumberString = v57;
      }

      goto LABEL_39;
    }

    if (componentsCopy)
    {
      v72 = objc_alloc_init(MEMORY[0x1E696ADF8]);
      [v72 setStyle:0];
      v73 = [v72 stringFromPersonNameComponents:componentsCopy];
      v74 = v14->_localizedName;
      v14->_localizedName = v73;
    }

    v75 = [PXRecipientTransportUtilities px_IsValidEmailAddress:addressCopy];
    v76 = [PXRecipientTransportUtilities px_validPhoneNumberFromString:addressCopy];
    if (v76)
    {
      v30 = v76;
      v77 = [MEMORY[0x1E695DFD8] setWithObject:v76];
      v78 = v14->_allPhones;
      v14->_allPhones = v77;

      v79 = [v30 copy];
      v80 = v14->_phoneNumberString;
      v14->_phoneNumberString = v79;

      v81 = v14->_localizedName;
      if (!v81)
      {
        v81 = v14->_phoneNumberString;
      }

      objc_storeStrong(&v14->_localizedName, v81);
      v101 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v30];
      unformattedInternationalStringValue2 = [v101 unformattedInternationalStringValue];
      if (unformattedInternationalStringValue2)
      {
        v83 = [MEMORY[0x1E695DFD8] setWithObject:unformattedInternationalStringValue2];
        v84 = v14->_unformattedAllPhones;
        v14->_unformattedAllPhones = v83;
      }

      v17 = 0;
      goto LABEL_47;
    }

    if (v75)
    {
      v86 = [MEMORY[0x1E695DFD8] setWithObject:addressCopy];
      v87 = v14->_allEmails;
      v14->_allEmails = v86;

      v88 = [addressCopy copy];
      v89 = v14->_emailAddressString;
      v14->_emailAddressString = v88;

      v90 = v14->_localizedName;
      if (!v90)
      {
        v90 = v14->_emailAddressString;
      }

      v91 = v90;
      v30 = 0;
      v17 = 0;
      v102 = v14->_localizedName;
      v14->_localizedName = v91;
    }

    else
    {
      v30 = 0;
      v17 = 0;
    }

LABEL_48:

    if ([(NSString *)v14->_phoneNumberString length])
    {
      v65 = [PXRecipientTransport alloc];
      v66 = v14->_phoneNumberString;
      v67 = 2;
    }

    else
    {
      if (![(NSString *)v14->_emailAddressString length])
      {
        v85 = PLUIGetLog();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v114 = v94;
          v115 = 2112;
          v116 = addressCopy;
          v117 = 2048;
          kindCopy2 = kind;
          _os_log_impl(&dword_1A3C1C000, v85, OS_LOG_TYPE_ERROR, "No valid email address or phone number for the provided contact: %@, address: %@, kind: %ld", buf, 0x20u);
        }

        v68 = [addressCopy copy];
        v69 = 88;
        goto LABEL_53;
      }

      v65 = [PXRecipientTransport alloc];
      v66 = v14->_emailAddressString;
      v67 = 1;
    }

    v68 = [(PXRecipientTransport *)v65 initWithAddress:v66 addressKind:v67];
    v69 = 64;
LABEL_53:
    v70 = *(&v14->super.isa + v69);
    *(&v14->super.isa + v69) = v68;
  }

  return v14;
}

- (PXRecipient)initWithEmailAddress:(id)address phoneNumber:(id)number nameComponents:(id)components
{
  numberCopy = number;
  componentsCopy = components;
  addressCopy = address;
  if ([addressCopy length])
  {
    v12 = 1;
    v13 = addressCopy;
  }

  else
  {
    if (![numberCopy length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"hasEmailAddress || (phoneNumber.length > 0)"}];
    }

    v12 = 2;
    v13 = numberCopy;
  }

  v14 = [(PXRecipient *)self initWithContact:0 address:v13 nameComponents:componentsCopy recipientKind:v12];

  return v14;
}

- (PXRecipient)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:98 description:{@"%s is not available as initializer", "-[PXRecipient init]"}];

  abort();
}

+ (id)_contactForAddress:(id)address recipientKind:(int64_t)kind
{
  v28[3] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = +[PXPeopleUtilities sharedContactStore];
  if (!kind)
  {
    kind = [PXRecipientTransportUtilities px_recipientKindFromString:addressCopy];
  }

  if (kind == 1)
  {
    v8 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:addressCopy];
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_9:
    firstObject = 0;
    goto LABEL_19;
  }

  if (kind != 2)
  {
    goto LABEL_9;
  }

  v7 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:addressCopy];
  v8 = [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v7];

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_11:
  v10 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v11 = v10;
  if (v10)
  {
    v12 = *MEMORY[0x1E695C208];
    v28[0] = v10;
    v28[1] = v12;
    v28[2] = *MEMORY[0x1E695C330];
    v13 = MEMORY[0x1E695DEC8];
    v14 = v28;
    v15 = 3;
  }

  else
  {
    v16 = *MEMORY[0x1E695C330];
    v27[0] = *MEMORY[0x1E695C208];
    v27[1] = v16;
    v13 = MEMORY[0x1E695DEC8];
    v14 = v27;
    v15 = 2;
  }

  v17 = [v13 arrayWithObjects:v14 count:v15];
  v22 = 0;
  v18 = [v6 unifiedContactsMatchingPredicate:v8 keysToFetch:v17 error:&v22];
  v19 = v22;
  if (v19)
  {
    v20 = PLUIGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "+[PXRecipient _contactForAddress:recipientKind:]";
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "%s: Error while fetching contacts: %@", buf, 0x16u);
    }
  }

  firstObject = [v18 firstObject];

LABEL_19:

  return firstObject;
}

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:102 description:{@"%s is not available as initializer", "+[PXRecipient new]"}];

  abort();
}

- (void)px_requestImageWithTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l resultHandler:(id)handler
{
  lCopy = l;
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipient+PXFaceTileImageCombinerItem.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"!CGSizeEqualToSize(targetSize, CGSizeZero)"}];
  }

  if (scale <= 0.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXRecipient+PXFaceTileImageCombinerItem.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];

    if (handlerCopy)
    {
      goto LABEL_8;
    }
  }

  else if (handlerCopy)
  {
    goto LABEL_8;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXRecipient+PXFaceTileImageCombinerItem.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

LABEL_8:
  suggestedTransport = [(PXRecipient *)self suggestedTransport];
  addressKind = [suggestedTransport addressKind];
  if (addressKind == 2)
  {
    address = [suggestedTransport address];
LABEL_13:
    address2 = 0;
    goto LABEL_14;
  }

  if (addressKind != 1)
  {
    address = 0;
    goto LABEL_13;
  }

  address2 = [suggestedTransport address];
  address = 0;
LABEL_14:
  firstName = [(PXRecipient *)self firstName];
  lastName = [(PXRecipient *)self lastName];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __107__PXRecipient_PXFaceTileImageCombinerItem__px_requestImageWithTargetSize_displayScale_isRTL_resultHandler___block_invoke;
  v24[3] = &unk_1E774B7B8;
  v25 = handlerCopy;
  v20 = handlerCopy;
  [PXActivityUtilities requestPersonImageWithTargetSize:lCopy displayScale:address2 isRTL:address matchingEmail:firstName orPhone:lastName withFirstName:1 lastName:width prefersPhotosImage:height withCompletion:scale, v24];
}

@end