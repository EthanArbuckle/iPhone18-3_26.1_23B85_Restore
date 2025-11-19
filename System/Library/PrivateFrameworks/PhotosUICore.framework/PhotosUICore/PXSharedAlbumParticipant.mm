@interface PXSharedAlbumParticipant
- (NSArray)allEmailsArray;
- (NSArray)allPhonesArray;
- (NSNumber)stateNumber;
- (NSString)acceptanceStatusDescription;
- (NSString)description;
- (NSString)displayAddress;
- (NSString)displayName;
- (NSString)stateDescription;
- (PXSharedAlbumParticipant)initWithInvitationRecord:(id)a3;
- (PXSharedAlbumParticipant)initWithPersonID:(id)a3 firstName:(id)a4 lastName:(id)a5 fullName:(id)a6 emails:(id)a7 phones:(id)a8 acceptanceStatus:(signed __int16)a9;
- (PXSharedAlbumParticipant)initWithPersonID:(id)a3 firstName:(id)a4 lastName:(id)a5 fullName:(id)a6 emails:(id)a7 phones:(id)a8 state:(int)a9;
- (PXSharedAlbumParticipant)initWithShareParticipant:(id)a3;
- (id)displayNameWithAddressAppended:(BOOL)a3;
- (id)matchingContact;
- (id)matchingContactWithKeysToFetch:(id)a3 outMatchingKey:(id *)a4 outMatchingIdentifier:(id *)a5;
@end

@implementation PXSharedAlbumParticipant

- (id)displayNameWithAddressAppended:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXSharedAlbumParticipant *)self displayAddress];
  v6 = [(PXSharedAlbumParticipant *)self fullName];
  if (![v6 length])
  {

    goto LABEL_6;
  }

  v7 = [(PXSharedAlbumParticipant *)self fullName];
  v8 = [v7 isEqualToString:@"(null) (null)"];

  if (v8)
  {
LABEL_6:
    v10 = [(PXRecipient *)self firstName];
    if ([v10 length])
    {
    }

    else
    {
      v11 = [(PXRecipient *)self lastName];
      v12 = [v11 length];

      if (!v12)
      {
        v9 = v5;
        goto LABEL_11;
      }
    }

    v13 = [(PXRecipient *)self firstName];
    v14 = [(PXRecipient *)self lastName];
    v9 = PLLocalizedNameWithFirstAndLastName();

    if (!v3)
    {
      goto LABEL_11;
    }

LABEL_10:
    v15 = PLServicesLocalizedFrameworkString();
    v16 = PFStringWithValidatedFormat();

    v9 = v16;
    goto LABEL_11;
  }

  v9 = [(PXSharedAlbumParticipant *)self fullName];
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

- (id)matchingContactWithKeysToFetch:(id)a3 outMatchingKey:(id *)a4 outMatchingIdentifier:(id *)a5
{
  v90[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[PXPeopleUtilities sharedContactStore];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
  v59 = *MEMORY[0x1E695C330];
  v9 = *MEMORY[0x1E695C330];
  v61 = *MEMORY[0x1E695C208];
  v90[0] = *MEMORY[0x1E695C208];
  v90[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
  [v8 addObjectsFromArray:v10];

  v11 = [(PXRecipient *)self firstName];
  v12 = [(PXRecipient *)self lastName];
  v13 = [(PXRecipient *)self emailAddressString];
  v14 = [(PXRecipient *)self phoneNumberString];
  v15 = v14;
  if (v11 | v12)
  {
    v16 = v6;
    v17 = v14;
    v18 = objc_alloc_init(MEMORY[0x1E695CD80]);
    v19 = v18;
    if (v18)
    {
      [v18 setStyle:0];
      v20 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
      [v8 addObject:v20];
    }

    v21 = a4;
    v15 = v17;
    v6 = v16;
  }

  else
  {
    v19 = 0;
    v21 = a4;
  }

  v71 = v12;
  v72 = v11;
  if (![v13 length])
  {
    v28 = 0;
    v30 = 0;
LABEL_29:
    if ([v15 length])
    {
      v36 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v15];
      [MEMORY[0x1E695CD58] predicateForContactsMatchingPhoneNumber:v36];
      v65 = v78 = 0;
      v37 = [v7 unifiedContactsMatchingPredicate:? keysToFetch:? error:?];
      v67 = 0;
      v69 = v37;
      if (v67)
      {
        v38 = PLUIGetLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v87 = "[PXSharedAlbumParticipant matchingContactWithKeysToFetch:outMatchingKey:outMatchingIdentifier:]";
          v88 = 2112;
          v89 = v67;
          _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_ERROR, "%s: Error attempting to fetch unified contacts from phone : %@", buf, 0x16u);
        }

        v37 = v69;
      }

      if ([v37 count])
      {
        v27 = [MEMORY[0x1E695CD58] pl_findBestMatchingContactFromMatchingContacts:v37 firstName:v72 lastName:v71 contactFormatter:v19];
        if (v27)
        {
          v63 = v15;
          v58 = v8;
          v60 = v59;

          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v39 = [v27 phoneNumbers];
          v40 = [v39 countByEnumeratingWithState:&v74 objects:v84 count:16];
          if (v40)
          {
            v41 = v40;
            v52 = v19;
            v54 = v7;
            v56 = v6;
            v42 = *v75;
            while (2)
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v75 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v74 + 1) + 8 * i);
                v45 = [v44 value];
                if ([v45 isLikePhoneNumber:v36])
                {
                  v46 = [v44 identifier];

                  v30 = v46;
                  goto LABEL_48;
                }
              }

              v41 = [v39 countByEnumeratingWithState:&v74 objects:v84 count:16];
              if (v41)
              {
                continue;
              }

              break;
            }

LABEL_48:
            v7 = v54;
            v6 = v56;
            v19 = v52;
          }

          v8 = v58;
          v28 = v60;
          v15 = v63;
        }
      }

      else
      {
        v27 = 0;
      }

      v21 = a4;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_51;
  }

  [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:v13];
  v64 = v83 = 0;
  v22 = [v7 unifiedContactsMatchingPredicate:? keysToFetch:? error:?];
  v66 = 0;
  v68 = v22;
  if (v66)
  {
    v23 = v6;
    v24 = v19;
    v25 = v15;
    v26 = PLUIGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v87 = "[PXSharedAlbumParticipant matchingContactWithKeysToFetch:outMatchingKey:outMatchingIdentifier:]";
      v88 = 2112;
      v89 = v66;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_ERROR, "%s: Error attempting to fetch unified contacts from email : %@", buf, 0x16u);
    }

    v15 = v25;
    v19 = v24;
    v6 = v23;
    v22 = v68;
  }

  if ([v22 count])
  {
    v27 = [MEMORY[0x1E695CD58] pl_findBestMatchingContactFromMatchingContacts:v22 firstName:v11 lastName:v12 contactFormatter:v19];
    if (v27)
    {
      v57 = v8;
      v28 = v61;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v29 = [v27 emailAddresses];
      v30 = [v29 countByEnumeratingWithState:&v79 objects:v85 count:16];
      if (v30)
      {
        v51 = v19;
        v53 = v7;
        v62 = v15;
        v55 = v6;
        v31 = *v80;
        while (2)
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v80 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v79 + 1) + 8 * j);
            v34 = [v33 value];
            v35 = [v34 isEqualToString:v13];

            if (v35)
            {
              v30 = [v33 identifier];
              goto LABEL_25;
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v79 objects:v85 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

LABEL_25:
        v7 = v53;
        v6 = v55;
        v21 = a4;
        v15 = v62;
        v19 = v51;
      }

      v8 = v57;
    }

    else
    {
      v30 = 0;
      v28 = 0;
    }
  }

  else
  {
    v30 = 0;
    v28 = 0;
    v27 = 0;
  }

  if (!v27)
  {
    goto LABEL_29;
  }

LABEL_51:
  if (v21)
  {
    v47 = v28;
    *v21 = v28;
  }

  if (a5)
  {
    v48 = v30;
    *a5 = v30;
  }

  v49 = v27;

  return v27;
}

- (id)matchingContact
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [(PXSharedAlbumParticipant *)self matchingContactWithKeysToFetch:v4 outMatchingKey:0 outMatchingIdentifier:0];

  return v5;
}

- (NSString)displayAddress
{
  v3 = [(PXRecipient *)self suggestedTransport];
  v4 = [v3 address];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(PXRecipient *)self invalidAddressString];
  }

  v6 = v5;

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXSharedAlbumParticipant *)self displayName];
  v5 = [(PXRecipient *)self allEmails];
  v6 = [(PXRecipient *)self allPhones];
  v7 = [v3 stringWithFormat:@"displayName: %@, emails: %@, phones: %@", v4, v5, v6];

  return v7;
}

- (NSString)stateDescription
{
  v3 = [(PXSharedAlbumParticipant *)self invitationRecord];

  if (v3)
  {
    v4 = [(PXSharedAlbumParticipant *)self invitationRecord];
    v5 = [v4 invitationStateDescription];
  }

  else
  {
    v6 = [(PXSharedAlbumParticipant *)self state];
    if (v6 > 2 || (v5 = 0, v6) && v6 != 2)
    {
      v5 = PLLocalizedFrameworkString();
    }
  }

  return v5;
}

- (NSNumber)stateNumber
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(PXSharedAlbumParticipant *)self state];

  return [v2 numberWithInt:v3];
}

- (NSString)acceptanceStatusDescription
{
  v3 = [(PXSharedAlbumParticipant *)self acceptanceStatus];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_8;
    }
  }

  else if (v3 == 2)
  {
    v4 = [(PXSharedAlbumParticipant *)self shareParticipant];
    v5 = [v4 role];

    if (v5 == 1)
    {
      v6 = PLServicesLocalizedFrameworkString();
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v6 = PLLocalizedFrameworkString();
LABEL_8:

  return v6;
}

- (NSArray)allPhonesArray
{
  v2 = [(PXRecipient *)self allPhones];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)allEmailsArray
{
  v2 = [(PXRecipient *)self allEmails];
  v3 = [v2 allObjects];

  return v3;
}

- (NSString)displayName
{
  v3 = [(PXSharedAlbumParticipant *)self fullName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PXRecipient *)self localizedName];
  }

  v6 = v5;

  return v6;
}

- (PXSharedAlbumParticipant)initWithPersonID:(id)a3 firstName:(id)a4 lastName:(id)a5 fullName:(id)a6 emails:(id)a7 phones:(id)a8 state:(int)a9
{
  v27 = a3;
  v16 = a4;
  v17 = a5;
  v25 = a6;
  v18 = a7;
  v19 = a8;
  if (v16 | v17)
  {
    v20 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v20 setFamilyName:{v17, v25, v27}];
    [v20 setGivenName:v16];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v18 firstObject];
  v22 = [v19 firstObject];
  v28.receiver = self;
  v28.super_class = PXSharedAlbumParticipant;
  v23 = [(PXRecipient *)&v28 initWithEmailAddress:v21 phoneNumber:v22 nameComponents:v20];

  if (v23)
  {
    objc_storeStrong(&v23->_personID, a3);
    objc_storeStrong(&v23->_fullName, a6);
    v23->_state = a9;
  }

  return v23;
}

- (PXSharedAlbumParticipant)initWithPersonID:(id)a3 firstName:(id)a4 lastName:(id)a5 fullName:(id)a6 emails:(id)a7 phones:(id)a8 acceptanceStatus:(signed __int16)a9
{
  v27 = a3;
  v16 = a4;
  v17 = a5;
  v25 = a6;
  v18 = a7;
  v19 = a8;
  if ([v16 length] || objc_msgSend(v17, "length", v25, v27))
  {
    v20 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v20 setFamilyName:v17];
    [v20 setGivenName:v16];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v18 firstObject];
  v22 = [v19 firstObject];

  v28.receiver = self;
  v28.super_class = PXSharedAlbumParticipant;
  v23 = [(PXRecipient *)&v28 initWithEmailAddress:v21 phoneNumber:v22 nameComponents:v20];

  if (v23)
  {
    objc_storeStrong(&v23->_personID, a3);
    objc_storeStrong(&v23->_fullName, a6);
    v23->_acceptanceStatus = a9;
  }

  return v23;
}

- (PXSharedAlbumParticipant)initWithInvitationRecord:(id)a3
{
  v5 = a3;
  v6 = [v5 inviteeHashedPersonID];
  v7 = [v5 inviteeFirstName];
  v8 = [v5 inviteeLastName];
  v9 = [v5 inviteeFullName];
  v10 = [v5 inviteeEmails];
  v11 = [v5 inviteePhones];
  v12 = [v5 invitationState];
  LODWORD(v15) = [v12 intValue];
  v13 = [(PXSharedAlbumParticipant *)self initWithPersonID:v6 firstName:v7 lastName:v8 fullName:v9 emails:v10 phones:v11 state:v15];

  if (v13)
  {
    objc_storeStrong(&v13->_invitationRecord, a3);
  }

  return v13;
}

- (PXSharedAlbumParticipant)initWithShareParticipant:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [v4 emailAddress];

  if (v6)
  {
    v7 = [v4 emailAddress];
    [v5 addObject:v7];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v4 phoneNumber];

  if (v9)
  {
    v10 = [v4 phoneNumber];
    [v8 addObject:v10];
  }

  v11 = [v4 hashedPersonID];
  v12 = [v4 nameComponents];
  v13 = [v12 givenName];
  v14 = [v4 nameComponents];
  v15 = [v14 familyName];
  v16 = [v4 fullName];
  LOWORD(v19) = [v4 acceptanceStatus];
  v17 = [(PXSharedAlbumParticipant *)self initWithPersonID:v11 firstName:v13 lastName:v15 fullName:v16 emails:v5 phones:v8 acceptanceStatus:v19];

  if (v17)
  {
    objc_storeStrong(&v17->_shareParticipant, a3);
  }

  return v17;
}

@end