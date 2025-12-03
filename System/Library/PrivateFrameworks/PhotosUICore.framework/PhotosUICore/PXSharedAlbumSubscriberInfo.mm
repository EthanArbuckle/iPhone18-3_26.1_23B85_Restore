@interface PXSharedAlbumSubscriberInfo
+ (id)_allSubscribersForAlbum:(id)album includeMyself:(BOOL)myself;
+ (id)allSubscribersForAlbumWithObjectID:(id)d includingCurrentUser:(BOOL)user managedObjectContext:(id)context;
- (PXSharedAlbumSubscriberInfo)init;
- (PXSharedAlbumSubscriberInfo)initWithInvitationRecord:(id)record identifier:(id)identifier email:(id)email phone:(id)phone firstName:(id)name lastName:(id)lastName displayName:(id)displayName isOwner:(BOOL)self0;
- (id)matchingContactWithKeysToFetch:(id)fetch outMatchingKey:(id *)key outMatchingIdentifier:(id *)identifier;
@end

@implementation PXSharedAlbumSubscriberInfo

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

  firstName = [(PXSharedAlbumSubscriberInfo *)self firstName];
  lastName = [(PXSharedAlbumSubscriberInfo *)self lastName];
  email = [(PXSharedAlbumSubscriberInfo *)self email];
  phone = [(PXSharedAlbumSubscriberInfo *)self phone];
  v15 = phone;
  if (firstName | lastName)
  {
    v16 = fetchCopy;
    v17 = phone;
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
  if (![email length])
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
          v87 = "[PXSharedAlbumSubscriberInfo matchingContactWithKeysToFetch:outMatchingKey:outMatchingIdentifier:]";
          v88 = 2112;
          v89 = v67;
          _os_log_impl(&dword_1A3C1C000, v38, OS_LOG_TYPE_ERROR, "%s: Error attempting to fetch unified contacts : %@", buf, 0x16u);
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

  [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:email];
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
      v87 = "[PXSharedAlbumSubscriberInfo matchingContactWithKeysToFetch:outMatchingKey:outMatchingIdentifier:]";
      v88 = 2112;
      v89 = v66;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_ERROR, "%s: Error attempting to fetch unified contacts : %@", buf, 0x16u);
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
            v35 = [value2 isEqualToString:email];

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

- (PXSharedAlbumSubscriberInfo)initWithInvitationRecord:(id)record identifier:(id)identifier email:(id)email phone:(id)phone firstName:(id)name lastName:(id)lastName displayName:(id)displayName isOwner:(BOOL)self0
{
  recordCopy = record;
  identifierCopy = identifier;
  emailCopy = email;
  phoneCopy = phone;
  nameCopy = name;
  lastNameCopy = lastName;
  displayNameCopy = displayName;
  v39.receiver = self;
  v39.super_class = PXSharedAlbumSubscriberInfo;
  v24 = [(PXSharedAlbumSubscriberInfo *)&v39 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_invitationRecord, record);
    v26 = [identifierCopy copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [emailCopy copy];
    email = v25->_email;
    v25->_email = v28;

    v30 = [phoneCopy copy];
    phone = v25->_phone;
    v25->_phone = v30;

    v32 = [nameCopy copy];
    firstName = v25->_firstName;
    v25->_firstName = v32;

    v34 = [lastNameCopy copy];
    lastName = v25->_lastName;
    v25->_lastName = v34;

    v36 = [displayNameCopy copy];
    displayName = v25->_displayName;
    v25->_displayName = v36;

    v25->_isOwner = owner;
  }

  return v25;
}

- (PXSharedAlbumSubscriberInfo)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedAlbumSubscriberInfo.m" lineNumber:90 description:{@"%s is not available as initializer", "-[PXSharedAlbumSubscriberInfo init]"}];

  return 0;
}

+ (id)_allSubscribersForAlbum:(id)album includeMyself:(BOOL)myself
{
  v43 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  isOwnedCloudSharedAlbum = [albumCopy isOwnedCloudSharedAlbum];
  v37 = albumCopy;
  cloudAlbumSubscriberRecords = [albumCopy cloudAlbumSubscriberRecords];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [cloudAlbumSubscriberRecords countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(cloudAlbumSubscriberRecords);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        if (myself || ([*(*(&v38 + 1) + 8 * i) isMine] & 1) == 0)
        {
          invitationState = [v13 invitationState];
          integerValue = [invitationState integerValue];

          if (!isOwnedCloudSharedAlbum)
          {
            if (integerValue != 2)
            {
              continue;
            }

LABEL_12:
            [v6 addObject:v13];
            continue;
          }

          if ((integerValue - 1) < 4)
          {
            goto LABEL_12;
          }
        }
      }

      v10 = [cloudAlbumSubscriberRecords countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v10);
  }

  v16 = [v6 count];
  v17 = v37;
  v18 = v16 + ([v37 isOwnedCloudSharedAlbum] ^ 1);
  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18];
  v20 = v19;
  if (v18)
  {
    v21 = 0;
    v35 = v18;
    v36 = v19;
    do
    {
      v22 = v17;
      v23 = v6;
      if ([v22 isOwnedCloudSharedAlbum])
      {
        v24 = v23;
        v25 = v21;
      }

      else
      {
        if (!v21)
        {
          v27 = v22;
          cloudOwnerEmail = [v27 cloudOwnerEmail];
          cloudOwnerFirstName = [v27 cloudOwnerFirstName];
          cloudOwnerLastName = [v27 cloudOwnerLastName];
          v31 = [v27 cloudOwnerDisplayNameIncludingEmail:0 allowsEmail:1];
          cloudOwnerHashedPersonID = [v27 cloudOwnerHashedPersonID];

          LOBYTE(v34) = 1;
          v26 = [[PXSharedAlbumSubscriberInfo alloc] initWithInvitationRecord:0 identifier:cloudOwnerHashedPersonID email:cloudOwnerEmail phone:0 firstName:cloudOwnerFirstName lastName:cloudOwnerLastName displayName:v31 isOwner:v34];

          v18 = v35;
          v20 = v36;

          v17 = v37;
          goto LABEL_22;
        }

        v25 = v21 - 1;
        v24 = v23;
      }

      v26 = _subscriberInfoForAdjustedIndex(v24, v25);
LABEL_22:

      [v20 addObject:v26];
      ++v21;
    }

    while (v18 != v21);
  }

  return v20;
}

+ (id)allSubscribersForAlbumWithObjectID:(id)d includingCurrentUser:(BOOL)user managedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13111;
  v24 = __Block_byref_object_dispose__13112;
  v25 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __108__PXSharedAlbumSubscriberInfo_allSubscribersForAlbumWithObjectID_includingCurrentUser_managedObjectContext___block_invoke;
  v14[3] = &unk_1E772E930;
  v10 = dCopy;
  v15 = v10;
  v11 = contextCopy;
  v16 = v11;
  v17 = &v20;
  selfCopy = self;
  userCopy = user;
  [v11 performBlockAndWait:v14];
  v12 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v12;
}

void __108__PXSharedAlbumSubscriberInfo_allSubscribersForAlbumWithObjectID_includingCurrentUser_managedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69BE330] cloudSharedAlbumWithObjectID:*(a1 + 32) managedObjectContext:*(a1 + 40)];
  v6 = v2;
  if (v2)
  {
    v3 = [*(a1 + 56) _allSubscribersForAlbum:v2 includeMyself:*(a1 + 64)];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end