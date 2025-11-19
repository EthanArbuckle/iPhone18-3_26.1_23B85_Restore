@interface PXSharedAlbumSubscriberInfo
+ (id)_allSubscribersForAlbum:(id)a3 includeMyself:(BOOL)a4;
+ (id)allSubscribersForAlbumWithObjectID:(id)a3 includingCurrentUser:(BOOL)a4 managedObjectContext:(id)a5;
- (PXSharedAlbumSubscriberInfo)init;
- (PXSharedAlbumSubscriberInfo)initWithInvitationRecord:(id)a3 identifier:(id)a4 email:(id)a5 phone:(id)a6 firstName:(id)a7 lastName:(id)a8 displayName:(id)a9 isOwner:(BOOL)a10;
- (id)matchingContactWithKeysToFetch:(id)a3 outMatchingKey:(id *)a4 outMatchingIdentifier:(id *)a5;
@end

@implementation PXSharedAlbumSubscriberInfo

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

  v11 = [(PXSharedAlbumSubscriberInfo *)self firstName];
  v12 = [(PXSharedAlbumSubscriberInfo *)self lastName];
  v13 = [(PXSharedAlbumSubscriberInfo *)self email];
  v14 = [(PXSharedAlbumSubscriberInfo *)self phone];
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
      v87 = "[PXSharedAlbumSubscriberInfo matchingContactWithKeysToFetch:outMatchingKey:outMatchingIdentifier:]";
      v88 = 2112;
      v89 = v66;
      _os_log_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_ERROR, "%s: Error attempting to fetch unified contacts : %@", buf, 0x16u);
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

- (PXSharedAlbumSubscriberInfo)initWithInvitationRecord:(id)a3 identifier:(id)a4 email:(id)a5 phone:(id)a6 firstName:(id)a7 lastName:(id)a8 displayName:(id)a9 isOwner:(BOOL)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v39.receiver = self;
  v39.super_class = PXSharedAlbumSubscriberInfo;
  v24 = [(PXSharedAlbumSubscriberInfo *)&v39 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_invitationRecord, a3);
    v26 = [v18 copy];
    identifier = v25->_identifier;
    v25->_identifier = v26;

    v28 = [v19 copy];
    email = v25->_email;
    v25->_email = v28;

    v30 = [v20 copy];
    phone = v25->_phone;
    v25->_phone = v30;

    v32 = [v21 copy];
    firstName = v25->_firstName;
    v25->_firstName = v32;

    v34 = [v22 copy];
    lastName = v25->_lastName;
    v25->_lastName = v34;

    v36 = [v23 copy];
    displayName = v25->_displayName;
    v25->_displayName = v36;

    v25->_isOwner = a10;
  }

  return v25;
}

- (PXSharedAlbumSubscriberInfo)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedAlbumSubscriberInfo.m" lineNumber:90 description:{@"%s is not available as initializer", "-[PXSharedAlbumSubscriberInfo init]"}];

  return 0;
}

+ (id)_allSubscribersForAlbum:(id)a3 includeMyself:(BOOL)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v5 isOwnedCloudSharedAlbum];
  v37 = v5;
  v8 = [v5 cloudAlbumSubscriberRecords];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        if (a4 || ([*(*(&v38 + 1) + 8 * i) isMine] & 1) == 0)
        {
          v14 = [v13 invitationState];
          v15 = [v14 integerValue];

          if (!v7)
          {
            if (v15 != 2)
            {
              continue;
            }

LABEL_12:
            [v6 addObject:v13];
            continue;
          }

          if ((v15 - 1) < 4)
          {
            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
          v28 = [v27 cloudOwnerEmail];
          v29 = [v27 cloudOwnerFirstName];
          v30 = [v27 cloudOwnerLastName];
          v31 = [v27 cloudOwnerDisplayNameIncludingEmail:0 allowsEmail:1];
          v32 = [v27 cloudOwnerHashedPersonID];

          LOBYTE(v34) = 1;
          v26 = [[PXSharedAlbumSubscriberInfo alloc] initWithInvitationRecord:0 identifier:v32 email:v28 phone:0 firstName:v29 lastName:v30 displayName:v31 isOwner:v34];

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

+ (id)allSubscribersForAlbumWithObjectID:(id)a3 includingCurrentUser:(BOOL)a4 managedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v10 = v8;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v17 = &v20;
  v18 = a1;
  v19 = a4;
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