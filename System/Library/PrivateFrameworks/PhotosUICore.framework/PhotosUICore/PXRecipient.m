@interface PXRecipient
+ (id)_contactForAddress:(id)a3 recipientKind:(int64_t)a4;
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PXRecipient)init;
- (PXRecipient)initWithContact:(id)a3 address:(id)a4 nameComponents:(id)a5 recipientKind:(int64_t)a6;
- (PXRecipient)initWithEmailAddress:(id)a3 phoneNumber:(id)a4 nameComponents:(id)a5;
- (unint64_t)hash;
- (void)px_requestImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 resultHandler:(id)a6;
@end

@implementation PXRecipient

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXRecipient *)self localizedName];
  v5 = [(PXRecipient *)self allEmails];
  v6 = [(PXRecipient *)self allPhones];
  v7 = [(PXRecipient *)self suggestedTransport];
  v8 = [v3 stringWithFormat:@"localizedName %@ emails %@ phones %@ suggestedTransport %@", v4, v5, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PXRecipient *)self firstName];
  v4 = [v3 hash];
  v5 = [(PXRecipient *)self lastName];
  v6 = [v5 hash] ^ v4;
  v7 = [(PXRecipient *)self allPhones];
  v8 = [v7 hash];
  v9 = [(PXRecipient *)self allEmails];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXRecipient *)self firstName];
    v7 = [v5 firstName];
    if (v6 != v7 && ![v6 isEqualToString:v7])
    {
      v14 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v8 = [(PXRecipient *)self lastName];
    v9 = [v5 lastName];
    if (v8 != v9 && ![v8 isEqualToString:v9])
    {
      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v10 = [(PXRecipient *)self allPhones];
    v11 = [v5 allPhones];
    v12 = v11;
    if (v10 == v11)
    {
      v25 = v11;
    }

    else
    {
      v13 = [(PXRecipient *)self allPhones];
      v24 = [v5 allPhones];
      if (![v13 isEqualToSet:?])
      {
        v14 = 0;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v23 = v13;
      v25 = v12;
    }

    v15 = [(PXRecipient *)self allEmails];
    v16 = [v5 allEmails];
    v17 = v16;
    if (v15 == v16)
    {

      v14 = 1;
    }

    else
    {
      [(PXRecipient *)self allEmails];
      v18 = v21 = v10;
      [v5 allEmails];
      v19 = v22 = v8;
      v14 = [v18 isEqualToSet:v19];

      v8 = v22;
      v10 = v21;
    }

    v12 = v25;
    v13 = v23;
    if (v10 == v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (PXRecipient)initWithContact:(id)a3 address:(id)a4 nameComponents:(id)a5 recipientKind:(int64_t)a6
{
  v121 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!(v11 | v12))
  {
    v92 = [MEMORY[0x1E696AAA8] currentHandler];
    [v92 handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"providedContact != nil || providedAddress != nil"}];
  }

  v112.receiver = self;
  v112.super_class = PXRecipient;
  v14 = [(PXRecipient *)&v112 init];
  if (v14)
  {
    v15 = v11;
    v94 = v15;
    if (v11 || ([objc_opt_class() _contactForAddress:v12 recipientKind:a6], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_storeStrong(&v14->_contact, v15);
      v16 = MEMORY[0x1E696ADF0];
      v17 = v15;
      v18 = objc_alloc_init(v16);
      v19 = [v17 givenName];
      [v18 setGivenName:v19];

      v20 = [v17 familyName];

      [v18 setFamilyName:v20];
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
        v24 = [v12 copy];
      }

      v25 = v14->_localizedName;
      v14->_localizedName = v24;

      v26 = [v17 givenName];
      firstName = v14->_firstName;
      v14->_firstName = v26;

      v28 = [v17 familyName];
      lastName = v14->_lastName;
      v14->_lastName = v28;

      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v101 = [MEMORY[0x1E695DFA8] set];
      v103 = v14;
      v96 = a6;
      v97 = v13;
      v95 = v17;
      if ([v17 isKeyAvailable:*MEMORY[0x1E695C208]])
      {
        v31 = [v17 emailAddresses];
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v32 = [v31 countByEnumeratingWithState:&v108 objects:v120 count:16];
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
              objc_enumerationMutation(v31);
            }

            v36 = [*(*(&v108 + 1) + 8 * v35) value];
            v37 = [PXRecipientTransportUtilities px_IsValidEmailAddress:v36];
            v38 = v30;
            if (v37)
            {
              if (v12)
              {
                v39 = [PXRecipientTransportUtilities px_IsEmailAddress:v36 equalToEmailAddress:v12];
                v38 = v101;
                if (!v39)
                {
                  goto LABEL_19;
                }

LABEL_18:
                v40 = [v36 copy];
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
            [v38 addObject:v36];

            ++v35;
          }

          while (v33 != v35);
          v42 = [v31 countByEnumeratingWithState:&v108 objects:v120 count:16];
          v33 = v42;
          if (!v42)
          {
LABEL_24:

            v14 = v103;
            v13 = v97;
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
      v45 = [v17 phoneNumbers];
      v93 = v12;
      v46 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v12];
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v47 = v45;
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

        v52 = [*(*(&v104 + 1) + 8 * v51) value];
        v53 = [v52 formattedStringValue];
        v54 = [PXRecipientTransportUtilities px_validPhoneNumberFromString:v53];
        v55 = v54;
        if (!v54)
        {
          if (v53)
          {
            [v98 addObject:v53];
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
        v60 = [v52 unformattedInternationalStringValue];
        if (v60)
        {
          [v99 addObject:v60];
        }

LABEL_43:
        if (v49 == ++v51)
        {
          v49 = [v47 countByEnumeratingWithState:&v104 objects:v119 count:16];
          if (!v49)
          {
LABEL_45:

            v12 = v93;
            a6 = v96;
            v13 = v97;
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

    if (v13)
    {
      v72 = objc_alloc_init(MEMORY[0x1E696ADF8]);
      [v72 setStyle:0];
      v73 = [v72 stringFromPersonNameComponents:v13];
      v74 = v14->_localizedName;
      v14->_localizedName = v73;
    }

    v75 = [PXRecipientTransportUtilities px_IsValidEmailAddress:v12];
    v76 = [PXRecipientTransportUtilities px_validPhoneNumberFromString:v12];
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
      v82 = [v101 unformattedInternationalStringValue];
      if (v82)
      {
        v83 = [MEMORY[0x1E695DFD8] setWithObject:v82];
        v84 = v14->_unformattedAllPhones;
        v14->_unformattedAllPhones = v83;
      }

      v17 = 0;
      goto LABEL_47;
    }

    if (v75)
    {
      v86 = [MEMORY[0x1E695DFD8] setWithObject:v12];
      v87 = v14->_allEmails;
      v14->_allEmails = v86;

      v88 = [v12 copy];
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
          v116 = v12;
          v117 = 2048;
          v118 = a6;
          _os_log_impl(&dword_1A3C1C000, v85, OS_LOG_TYPE_ERROR, "No valid email address or phone number for the provided contact: %@, address: %@, kind: %ld", buf, 0x20u);
        }

        v68 = [v12 copy];
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

- (PXRecipient)initWithEmailAddress:(id)a3 phoneNumber:(id)a4 nameComponents:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  if ([v11 length])
  {
    v12 = 1;
    v13 = v11;
  }

  else
  {
    if (![v9 length])
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"hasEmailAddress || (phoneNumber.length > 0)"}];
    }

    v12 = 2;
    v13 = v9;
  }

  v14 = [(PXRecipient *)self initWithContact:0 address:v13 nameComponents:v10 recipientKind:v12];

  return v14;
}

- (PXRecipient)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXRecipient.m" lineNumber:98 description:{@"%s is not available as initializer", "-[PXRecipient init]"}];

  abort();
}

+ (id)_contactForAddress:(id)a3 recipientKind:(int64_t)a4
{
  v28[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = +[PXPeopleUtilities sharedContactStore];
  if (!a4)
  {
    a4 = [PXRecipientTransportUtilities px_recipientKindFromString:v5];
  }

  if (a4 == 1)
  {
    v8 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v5];
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_19;
  }

  if (a4 != 2)
  {
    goto LABEL_9;
  }

  v7 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v5];
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

  v9 = [v18 firstObject];

LABEL_19:

  return v9;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXRecipient.m" lineNumber:102 description:{@"%s is not available as initializer", "+[PXRecipient new]"}];

  abort();
}

- (void)px_requestImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 isRTL:(BOOL)a5 resultHandler:(id)a6
{
  v6 = a5;
  height = a3.height;
  width = a3.width;
  v12 = a6;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXRecipient+PXFaceTileImageCombinerItem.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"!CGSizeEqualToSize(targetSize, CGSizeZero)"}];
  }

  if (a4 <= 0.0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXRecipient+PXFaceTileImageCombinerItem.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"displayScale > 0"}];

    if (v12)
    {
      goto LABEL_8;
    }
  }

  else if (v12)
  {
    goto LABEL_8;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"PXRecipient+PXFaceTileImageCombinerItem.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];

LABEL_8:
  v14 = [(PXRecipient *)self suggestedTransport];
  v15 = [v14 addressKind];
  if (v15 == 2)
  {
    v17 = [v14 address];
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if (v15 != 1)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v16 = [v14 address];
  v17 = 0;
LABEL_14:
  v18 = [(PXRecipient *)self firstName];
  v19 = [(PXRecipient *)self lastName];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __107__PXRecipient_PXFaceTileImageCombinerItem__px_requestImageWithTargetSize_displayScale_isRTL_resultHandler___block_invoke;
  v24[3] = &unk_1E774B7B8;
  v25 = v12;
  v20 = v12;
  [PXActivityUtilities requestPersonImageWithTargetSize:v6 displayScale:v16 isRTL:v17 matchingEmail:v18 orPhone:v19 withFirstName:1 lastName:width prefersPhotosImage:height withCompletion:a4, v24];
}

@end