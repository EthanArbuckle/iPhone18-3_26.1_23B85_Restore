@interface PXSharedAlbumParticipant
- (NSArray)allEmailsArray;
- (NSArray)allPhonesArray;
- (NSNumber)stateNumber;
- (NSString)acceptanceStatusDescription;
- (NSString)description;
- (NSString)displayAddress;
- (NSString)displayName;
- (NSString)stateDescription;
- (PXSharedAlbumParticipant)initWithInvitationRecord:(id)record;
- (PXSharedAlbumParticipant)initWithPersonID:(id)d firstName:(id)name lastName:(id)lastName fullName:(id)fullName emails:(id)emails phones:(id)phones acceptanceStatus:(signed __int16)status;
- (PXSharedAlbumParticipant)initWithPersonID:(id)d firstName:(id)name lastName:(id)lastName fullName:(id)fullName emails:(id)emails phones:(id)phones state:(int)state;
- (PXSharedAlbumParticipant)initWithShareParticipant:(id)participant;
- (id)displayNameWithAddressAppended:(BOOL)appended;
- (id)matchingContact;
- (id)matchingContactWithKeysToFetch:(id)fetch outMatchingKey:(id *)key outMatchingIdentifier:(id *)identifier;
@end

@implementation PXSharedAlbumParticipant

- (id)displayNameWithAddressAppended:(BOOL)appended
{
  appendedCopy = appended;
  displayAddress = [(PXSharedAlbumParticipant *)self displayAddress];
  fullName = [(PXSharedAlbumParticipant *)self fullName];
  if (![fullName length])
  {

    goto LABEL_6;
  }

  fullName2 = [(PXSharedAlbumParticipant *)self fullName];
  v8 = [fullName2 isEqualToString:@"(null) (null)"];

  if (v8)
  {
LABEL_6:
    firstName = [(PXRecipient *)self firstName];
    if ([firstName length])
    {
    }

    else
    {
      lastName = [(PXRecipient *)self lastName];
      v12 = [lastName length];

      if (!v12)
      {
        fullName3 = displayAddress;
        goto LABEL_11;
      }
    }

    firstName2 = [(PXRecipient *)self firstName];
    lastName2 = [(PXRecipient *)self lastName];
    fullName3 = PLLocalizedNameWithFirstAndLastName();

    if (!appendedCopy)
    {
      goto LABEL_11;
    }

LABEL_10:
    v15 = PLServicesLocalizedFrameworkString();
    v16 = PFStringWithValidatedFormat();

    fullName3 = v16;
    goto LABEL_11;
  }

  fullName3 = [(PXSharedAlbumParticipant *)self fullName];
  if (appendedCopy)
  {
    goto LABEL_10;
  }

LABEL_11:

  return fullName3;
}

- (id)matchingContactWithKeysToFetch:(id)fetch outMatchingKey:(id *)key outMatchingIdentifier:(id *)identifier
{
  v90[2] = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  v7 = +[PXPeopleUtilities sharedContactStore];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:fetchCopy];
  v59 = *MEMORY[0x1E695C330];
  v9 = *MEMORY[0x1E695C330];
  v61 = *MEMORY[0x1E695C208];
  v90[0] = *MEMORY[0x1E695C208];
  v90[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
  [v8 addObjectsFromArray:v10];

  firstName = [(PXRecipient *)self firstName];
  lastName = [(PXRecipient *)self lastName];
  emailAddressString = [(PXRecipient *)self emailAddressString];
  phoneNumberString = [(PXRecipient *)self phoneNumberString];
  v15 = phoneNumberString;
  if (firstName | lastName)
  {
    v16 = fetchCopy;
    v17 = phoneNumberString;
    v18 = objc_alloc_init(MEMORY[0x1E695CD80]);
    v19 = v18;
    if (v18)
    {
      [v18 setStyle:0];
      v20 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
      [v8 addObject:v20];
    }

    keyCopy4 = key;
    v15 = v17;
    fetchCopy = v16;
  }

  else
  {
    v19 = 0;
    keyCopy4 = key;
  }

  v71 = lastName;
  v72 = firstName;
  if (![emailAddressString length])
  {
    v28 = 0;
    identifier2 = 0;
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
          phoneNumbers = [v27 phoneNumbers];
          v40 = [phoneNumbers countByEnumeratingWithState:&v74 objects:v84 count:16];
          if (v40)
          {
            v41 = v40;
            v52 = v19;
            v54 = v7;
            v56 = fetchCopy;
            v42 = *v75;
            while (2)
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v75 != v42)
                {
                  objc_enumerationMutation(phoneNumbers);
                }

                v44 = *(*(&v74 + 1) + 8 * i);
                value = [v44 value];
                if ([value isLikePhoneNumber:v36])
                {
                  identifier = [v44 identifier];

                  identifier2 = identifier;
                  goto LABEL_48;
                }
              }

              v41 = [phoneNumbers countByEnumeratingWithState:&v74 objects:v84 count:16];
              if (v41)
              {
                continue;
              }

              break;
            }

LABEL_48:
            v7 = v54;
            fetchCopy = v56;
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

      keyCopy4 = key;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_51;
  }

  [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:emailAddressString];
  v64 = v83 = 0;
  v22 = [v7 unifiedContactsMatchingPredicate:? keysToFetch:? error:?];
  v66 = 0;
  v68 = v22;
  if (v66)
  {
    v23 = fetchCopy;
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
    fetchCopy = v23;
    v22 = v68;
  }

  if ([v22 count])
  {
    v27 = [MEMORY[0x1E695CD58] pl_findBestMatchingContactFromMatchingContacts:v22 firstName:firstName lastName:lastName contactFormatter:v19];
    if (v27)
    {
      v57 = v8;
      v28 = v61;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      emailAddresses = [v27 emailAddresses];
      identifier2 = [emailAddresses countByEnumeratingWithState:&v79 objects:v85 count:16];
      if (identifier2)
      {
        v51 = v19;
        v53 = v7;
        v62 = v15;
        v55 = fetchCopy;
        v31 = *v80;
        while (2)
        {
          for (j = 0; j != identifier2; j = j + 1)
          {
            if (*v80 != v31)
            {
              objc_enumerationMutation(emailAddresses);
            }

            v33 = *(*(&v79 + 1) + 8 * j);
            value2 = [v33 value];
            v35 = [value2 isEqualToString:emailAddressString];

            if (v35)
            {
              identifier2 = [v33 identifier];
              goto LABEL_25;
            }
          }

          identifier2 = [emailAddresses countByEnumeratingWithState:&v79 objects:v85 count:16];
          if (identifier2)
          {
            continue;
          }

          break;
        }

LABEL_25:
        v7 = v53;
        fetchCopy = v55;
        keyCopy4 = key;
        v15 = v62;
        v19 = v51;
      }

      v8 = v57;
    }

    else
    {
      identifier2 = 0;
      v28 = 0;
    }
  }

  else
  {
    identifier2 = 0;
    v28 = 0;
    v27 = 0;
  }

  if (!v27)
  {
    goto LABEL_29;
  }

LABEL_51:
  if (keyCopy4)
  {
    v47 = v28;
    *keyCopy4 = v28;
  }

  if (identifier)
  {
    v48 = identifier2;
    *identifier = identifier2;
  }

  v49 = v27;

  return v27;
}

- (id)matchingContact
{
  v7[1] = *MEMORY[0x1E69E9840];
  descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v7[0] = descriptorForRequiredKeys;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [(PXSharedAlbumParticipant *)self matchingContactWithKeysToFetch:v4 outMatchingKey:0 outMatchingIdentifier:0];

  return v5;
}

- (NSString)displayAddress
{
  suggestedTransport = [(PXRecipient *)self suggestedTransport];
  address = [suggestedTransport address];

  if (address)
  {
    invalidAddressString = address;
  }

  else
  {
    invalidAddressString = [(PXRecipient *)self invalidAddressString];
  }

  v6 = invalidAddressString;

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  displayName = [(PXSharedAlbumParticipant *)self displayName];
  allEmails = [(PXRecipient *)self allEmails];
  allPhones = [(PXRecipient *)self allPhones];
  v7 = [v3 stringWithFormat:@"displayName: %@, emails: %@, phones: %@", displayName, allEmails, allPhones];

  return v7;
}

- (NSString)stateDescription
{
  invitationRecord = [(PXSharedAlbumParticipant *)self invitationRecord];

  if (invitationRecord)
  {
    invitationRecord2 = [(PXSharedAlbumParticipant *)self invitationRecord];
    invitationStateDescription = [invitationRecord2 invitationStateDescription];
  }

  else
  {
    state = [(PXSharedAlbumParticipant *)self state];
    if (state > 2 || (invitationStateDescription = 0, state) && state != 2)
    {
      invitationStateDescription = PLLocalizedFrameworkString();
    }
  }

  return invitationStateDescription;
}

- (NSNumber)stateNumber
{
  v2 = MEMORY[0x1E696AD98];
  state = [(PXSharedAlbumParticipant *)self state];

  return [v2 numberWithInt:state];
}

- (NSString)acceptanceStatusDescription
{
  acceptanceStatus = [(PXSharedAlbumParticipant *)self acceptanceStatus];
  if (acceptanceStatus > 2)
  {
    if (acceptanceStatus == 3)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_8;
    }
  }

  else if (acceptanceStatus == 2)
  {
    shareParticipant = [(PXSharedAlbumParticipant *)self shareParticipant];
    role = [shareParticipant role];

    if (role == 1)
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
  allPhones = [(PXRecipient *)self allPhones];
  allObjects = [allPhones allObjects];

  return allObjects;
}

- (NSArray)allEmailsArray
{
  allEmails = [(PXRecipient *)self allEmails];
  allObjects = [allEmails allObjects];

  return allObjects;
}

- (NSString)displayName
{
  fullName = [(PXSharedAlbumParticipant *)self fullName];
  v4 = fullName;
  if (fullName)
  {
    localizedName = fullName;
  }

  else
  {
    localizedName = [(PXRecipient *)self localizedName];
  }

  v6 = localizedName;

  return v6;
}

- (PXSharedAlbumParticipant)initWithPersonID:(id)d firstName:(id)name lastName:(id)lastName fullName:(id)fullName emails:(id)emails phones:(id)phones state:(int)state
{
  dCopy = d;
  nameCopy = name;
  lastNameCopy = lastName;
  fullNameCopy = fullName;
  emailsCopy = emails;
  phonesCopy = phones;
  if (nameCopy | lastNameCopy)
  {
    v20 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v20 setFamilyName:{lastNameCopy, fullNameCopy, dCopy}];
    [v20 setGivenName:nameCopy];
  }

  else
  {
    v20 = 0;
  }

  firstObject = [emailsCopy firstObject];
  firstObject2 = [phonesCopy firstObject];
  v28.receiver = self;
  v28.super_class = PXSharedAlbumParticipant;
  v23 = [(PXRecipient *)&v28 initWithEmailAddress:firstObject phoneNumber:firstObject2 nameComponents:v20];

  if (v23)
  {
    objc_storeStrong(&v23->_personID, d);
    objc_storeStrong(&v23->_fullName, fullName);
    v23->_state = state;
  }

  return v23;
}

- (PXSharedAlbumParticipant)initWithPersonID:(id)d firstName:(id)name lastName:(id)lastName fullName:(id)fullName emails:(id)emails phones:(id)phones acceptanceStatus:(signed __int16)status
{
  dCopy = d;
  nameCopy = name;
  lastNameCopy = lastName;
  fullNameCopy = fullName;
  emailsCopy = emails;
  phonesCopy = phones;
  if ([nameCopy length] || objc_msgSend(lastNameCopy, "length", fullNameCopy, dCopy))
  {
    v20 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v20 setFamilyName:lastNameCopy];
    [v20 setGivenName:nameCopy];
  }

  else
  {
    v20 = 0;
  }

  firstObject = [emailsCopy firstObject];
  firstObject2 = [phonesCopy firstObject];

  v28.receiver = self;
  v28.super_class = PXSharedAlbumParticipant;
  v23 = [(PXRecipient *)&v28 initWithEmailAddress:firstObject phoneNumber:firstObject2 nameComponents:v20];

  if (v23)
  {
    objc_storeStrong(&v23->_personID, d);
    objc_storeStrong(&v23->_fullName, fullName);
    v23->_acceptanceStatus = status;
  }

  return v23;
}

- (PXSharedAlbumParticipant)initWithInvitationRecord:(id)record
{
  recordCopy = record;
  inviteeHashedPersonID = [recordCopy inviteeHashedPersonID];
  inviteeFirstName = [recordCopy inviteeFirstName];
  inviteeLastName = [recordCopy inviteeLastName];
  inviteeFullName = [recordCopy inviteeFullName];
  inviteeEmails = [recordCopy inviteeEmails];
  inviteePhones = [recordCopy inviteePhones];
  invitationState = [recordCopy invitationState];
  LODWORD(v15) = [invitationState intValue];
  v13 = [(PXSharedAlbumParticipant *)self initWithPersonID:inviteeHashedPersonID firstName:inviteeFirstName lastName:inviteeLastName fullName:inviteeFullName emails:inviteeEmails phones:inviteePhones state:v15];

  if (v13)
  {
    objc_storeStrong(&v13->_invitationRecord, record);
  }

  return v13;
}

- (PXSharedAlbumParticipant)initWithShareParticipant:(id)participant
{
  participantCopy = participant;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  emailAddress = [participantCopy emailAddress];

  if (emailAddress)
  {
    emailAddress2 = [participantCopy emailAddress];
    [v5 addObject:emailAddress2];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  phoneNumber = [participantCopy phoneNumber];

  if (phoneNumber)
  {
    phoneNumber2 = [participantCopy phoneNumber];
    [v8 addObject:phoneNumber2];
  }

  hashedPersonID = [participantCopy hashedPersonID];
  nameComponents = [participantCopy nameComponents];
  givenName = [nameComponents givenName];
  nameComponents2 = [participantCopy nameComponents];
  familyName = [nameComponents2 familyName];
  fullName = [participantCopy fullName];
  LOWORD(v19) = [participantCopy acceptanceStatus];
  v17 = [(PXSharedAlbumParticipant *)self initWithPersonID:hashedPersonID firstName:givenName lastName:familyName fullName:fullName emails:v5 phones:v8 acceptanceStatus:v19];

  if (v17)
  {
    objc_storeStrong(&v17->_shareParticipant, participant);
  }

  return v17;
}

@end