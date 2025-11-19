@interface PLCloudSharedUpdateAlbumMetadataJob
+ (void)updateAlbumMetadata:(id)a3;
- (id)_argumentsDictionaryAsData:(id)a3;
- (id)_argumentsDictionaryFromXPCEvent:(id)a3;
- (id)description;
- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4;
- (void)_updateCloudSharedAlbumWithArgumentsDictionary:(id)a3 photoLibrary:(id)a4;
- (void)_updateSharedStreamCollectionShareWithArgumentsDictionary:(id)a3 photoLibrary:(id)a4;
- (void)encodeToXPCObject:(id)a3;
- (void)runDaemonSide;
@end

@implementation PLCloudSharedUpdateAlbumMetadataJob

- (void)_updateSharedStreamCollectionShareWithArgumentsDictionary:(id)a3 photoLibrary:(id)a4
{
  v103 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"album-guid"];
  if (v7)
  {
    v8 = [v5 objectForKey:@"album-relationshipState"];
    v9 = [v6 managedObjectContext];
    v10 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v7 includeTrashed:0 inManagedObjectContext:v9];

    if ([v8 intValue]== 1)
    {
      if (v10 && [v10 status] == 3)
      {
        v11 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v92 = v10;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "PLCloudSharedUpdateAlbumMetadataJob ignoring pending relationship for already subscribed sharedstream collection share %@", buf, 0xCu);
        }

        goto LABEL_90;
      }

      v77 = v7;
      v76 = [MEMORY[0x1E695DF00] date];
    }

    else
    {
      v76 = 0;
      v77 = v7;
    }

    v12 = [v8 intValue];
    v13 = v10;
    if (!v10)
    {
      v13 = [(PLShare *)PLCollectionShare insertInPhotoLibrary:v6];
      [v13 setCollectionShareKind:2];
      [v13 setScopeIdentifier:v77];
      v14 = [MEMORY[0x1E695DF00] now];
      [v13 setCreationDate:v14];

      [v13 setUnseenContentState:1];
      [v13 setNotificationState:0x7FFFLL];
      v15 = +[PLPhotoSharingHelper sharingPersonID];
      [v13 setCloudPersonID:v15];

      [v13 setCustomSortKey:6];
      [v13 setCustomSortAscending:0];
      if (!v12)
      {
        [v13 setStatus:1];
      }

      v16 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (!v12)
        {
          v17 = @"YES";
        }

        *buf = 138412546;
        v92 = v77;
        v93 = 2112;
        v94 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "inserting sharedstream collectionshare with GUID %@ isOwned %@", buf, 0x16u);
      }
    }

    v80 = [v5 objectForKey:@"kPLAlbumOwnerDictionaryKey"];
    v78 = v8;
    v79 = v6;
    v75 = v10;
    if ([v80 count])
    {
      v71 = v12;
      v73 = [v80 objectForKey:@"kPLAlbumOwnerHashedPersonIDKey"];
      [v13 participants];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v18 = v90 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v87 objects:v102 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v88;
LABEL_23:
        v22 = 0;
        while (1)
        {
          if (*v88 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v87 + 1) + 8 * v22);
          if ([v23 role] == 1)
          {
            break;
          }

          if (v20 == ++v22)
          {
            v20 = [v18 countByEnumeratingWithState:&v87 objects:v102 count:16];
            if (v20)
            {
              goto LABEL_23;
            }

            goto LABEL_29;
          }
        }

        v24 = v23;

        if (v24)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_29:
      }

      v25 = [v6 managedObjectContext];
      v24 = [PLShareParticipant insertInManagedObjectContext:v25];

      [v24 setRole:1];
      [v24 setPermission:3];
      [v24 setAcceptanceStatus:2];
      [v24 setParticipantKind:1];
      [v24 setShare:v13];
LABEL_32:
      v26 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v92 = v80;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "found album owner info %@", buf, 0xCu);
      }

      v27 = objc_alloc_init(MEMORY[0x1E696ADF0]);
      v28 = [v80 objectForKey:@"kPLAlbumOwnerFirstNameKey"];
      if (v28)
      {
        [v27 setGivenName:v28];
      }

      v29 = [v80 objectForKey:@"kPLAlbumOwnerLastNameKey"];
      if (v29)
      {
        [v27 setFamilyName:v29];
      }

      [v24 setNameComponents:v27];
      v30 = [v80 objectForKey:@"kPLAlbumOwnerEmailKey"];
      if (v30)
      {
        [v24 setEmailAddress:v30];
      }

      if (v73)
      {
        [v24 setHashedPersonID:v73];
      }

      v31 = [v80 objectForKey:@"kPLAlbumOwnerIsWhitelistedKey"];
      [v24 setAllowlistedState:{objc_msgSend(v31, "BOOLValue")}];
      v32 = [v80 objectForKey:@"kPLAlbumOwnerSubscriptionDateKey"];
      if (v32)
      {
        [v13 setCloudSubscriptionDate:v32];
      }

      [v24 setIsCurrentUser:v71 == 0];

      v8 = v78;
      v6 = v79;
      v10 = v75;
    }

    if (v8)
    {
      v33 = [v8 intValue];
      if (v33 < 3)
      {
        v34 = v33 + 1;
      }

      else
      {
        v34 = 0;
      }

      [v13 setStatus:v34];
    }

    v35 = [v5 objectForKey:@"album-name"];
    if (v35)
    {
      [v13 setTitle:v35];
    }

    v36 = [v5 objectForKey:@"album-metadata"];
    v37 = v36;
    if (v36)
    {
      v38 = [v36 objectForKey:*MEMORY[0x1E6997FE8]];
      [v13 setPhoneInvitationToken:v38];

      v39 = [v37 objectForKey:*MEMORY[0x1E6997FC8]];
      [v13 setClientBundleIdentifier:v39];
    }

    v40 = [v5 objectForKey:@"album-isPublic"];
    v41 = v40;
    if (v40)
    {
      if ([v40 BOOLValue])
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      [v13 setPublicURLState:v42];
      v43 = [v5 objectForKey:@"album-publicURLString"];
      if (v43)
      {
        v44 = [MEMORY[0x1E695DFF8] URLWithString:v43];
        [v13 setShareURL:v44];
      }
    }

    v70 = v41;
    v72 = v37;
    v74 = v35;
    v45 = [v5 objectForKey:@"album-allowsMultipleContributors"];
    if (v45)
    {
      v46 = [v13 publicPermission];
      v69 = v45;
      v47 = [v45 BOOLValue];
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      [v13 setPublicPermission:v48];
      v49 = [v13 participants];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v50 = [v49 countByEnumeratingWithState:&v83 objects:v101 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v84;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v84 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v83 + 1) + 8 * i);
            if ([v54 role] != 1)
            {
              [v54 setPermission:v48];
            }
          }

          v51 = [v49 countByEnumeratingWithState:&v83 objects:v101 count:16];
        }

        while (v51);
      }

      if ((((v46 != 3) ^ v47) & 1) == 0 && [v13 status] == 3)
      {
        v55 = +[PLNotificationManager sharedManager];
        v56 = [v5 objectForKey:@"mstreamd-info"];
        [v55 noteMultipleContributorStatusChangedForCollectionShare:v13 mstreamdInfo:v56];
      }

      v6 = v79;
      v10 = v75;
      v45 = v69;
    }

    v57 = [v5 objectForKey:@"album-creationDate"];
    if (v57)
    {
      [v13 setCreationDate:v57];
      [v13 setLastModifiedDate:v57];
    }

    v58 = [v5 objectForKey:@"album-isFamilySharedAlbum"];
    [v13 setCreationType:{objc_msgSend(v58, "BOOLValue")}];
    if (([v13 isCurrentUserOwner] & 1) == 0)
    {
      v59 = [v13 status];
      if (!v10 && v59 == 2)
      {
        [v13 setUnseenContentState:2];
        v60 = +[PLNotificationManager sharedManager];
        [v60 noteDidReceiveInvitationForCollectionShare:v13];

        [v13 setLastModifiedDate:v76];
        v61 = [v5 objectForKey:@"album-autoAcceptInvitation"];
        v62 = v61;
        if (v61 && [v61 BOOLValue])
        {
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __110__PLCloudSharedUpdateAlbumMetadataJob__updateSharedStreamCollectionShareWithArgumentsDictionary_photoLibrary___block_invoke;
          v81[3] = &unk_1E7575FA8;
          v82 = v13;
          [v82 acceptWithCompletionHandler:v81];
        }
      }
    }

    v63 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = [v13 scopeIdentifier];
      v65 = [v13 title];
      v66 = [v13 isCurrentUserOwner];
      v67 = [v13 publicURLState];
      v68 = [v13 status];
      *buf = 138413314;
      v92 = v64;
      v93 = 2112;
      v94 = v65;
      v95 = 1024;
      v96 = v66;
      v6 = v79;
      v97 = 1024;
      v98 = v67;
      v99 = 1024;
      v100 = v68;
      _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_DEFAULT, "PLCloudSharedUpdateAlbumMetadataJob finished processing sharedstream collectionshare scopeIdentifier:%@ title:%@ isCurrentUserOwner:%i isPublic:%i relationshipState:%i", buf, 0x28u);
    }

    v7 = v77;
    v8 = v78;
  }

  else
  {
    v8 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "ERROR: PLCloudSharedUpdateAlbumMetadataJob didn't get an album-guid in arguments, ignoring request", buf, 2u);
    }
  }

LABEL_90:
}

void __110__PLCloudSharedUpdateAlbumMetadataJob__updateSharedStreamCollectionShareWithArgumentsDictionary_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Automatically accepted invitation for sharedstream collection share %@ error: %@", &v6, 0x16u);
  }
}

- (void)_updateCloudSharedAlbumWithArgumentsDictionary:(id)a3 photoLibrary:(id)a4
{
  v115 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"album-guid"];
  if (v7)
  {
    v8 = [v5 objectForKey:@"album-relationshipState"];
    v9 = [PLCloudSharedAlbum cloudSharedAlbumWithGUID:v7 inLibrary:v6];
    if ([v8 intValue]== 1)
    {
      if (v9 && [(__CFString *)v9 cloudRelationshipStateLocalValue]== 2)
      {
        v10 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v99 = v9;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "PLCloudSharedUpdateAlbumMetadataJob ignoring pending relationship for already subscribed album %@", buf, 0xCu);
        }

        goto LABEL_75;
      }

      v89 = [MEMORY[0x1E695DF00] date];
    }

    else
    {
      v89 = 0;
    }

    v11 = v9;
    v91 = v7;
    v87 = v6;
    v88 = v8;
    v85 = v9;
    if (!v9)
    {
      v82 = v5;
      v11 = [PLGenericAlbum insertNewCloudSharedAlbumWithTitle:0 lastInterestingDate:v89 intoLibrary:v6];
      [v11 setCloudGUID:v7];
      v12 = [v8 intValue];
      v13 = [MEMORY[0x1E696AD98] numberWithBool:v12 == 0];
      [v11 setIsOwned:v13];

      v14 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        if (!v12)
        {
          v15 = @"YES";
        }

        *buf = 138412546;
        v99 = v7;
        v100 = 2112;
        v101 = v15;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "inserting shared album with GUID %@ isOwned %@", buf, 0x16u);
      }

      v16 = [PLCloudSharedAlbumInvitationRecord cloudSharedAlbumInvitationRecordsWithAlbumGUID:v7 inLibrary:v6];
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v94 objects:v114 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v95;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v95 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v94 + 1) + 8 * i);
            v22 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v99 = v21;
              v100 = 2112;
              v101 = v7;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Linking invitation record %@ to newly created album with GUID %@", buf, 0x16u);
            }

            [(__CFString *)v21 setAlbum:v11];
          }

          v18 = [v16 countByEnumeratingWithState:&v94 objects:v114 count:16];
        }

        while (v18);
      }

      v5 = v82;
      v9 = 0;
      v6 = v87;
    }

    v23 = [v5 objectForKey:@"kPLAlbumOwnerDictionaryKey"];
    v90 = v23;
    if ([(__CFString *)v23 count])
    {
      v24 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v99 = v23;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "found album owner info %@", buf, 0xCu);
      }

      v25 = [(__CFString *)v23 objectForKey:@"kPLAlbumOwnerFirstNameKey"];
      if (v25)
      {
        [v11 setCloudOwnerFirstName:v25];
      }

      v26 = [(__CFString *)v23 objectForKey:@"kPLAlbumOwnerLastNameKey"];
      if (v26)
      {
        [v11 setCloudOwnerLastName:v26];
      }

      v27 = [(__CFString *)v23 objectForKey:@"kPLAlbumOwnerEmailKey"];
      if (v27)
      {
        [v11 setCloudOwnerEmail:v27];
      }

      v28 = [(__CFString *)v23 objectForKey:@"kPLAlbumOwnerFullNameKey"];
      if (v28)
      {
        [v11 setCloudOwnerFullName:v28];
      }

      v29 = [(__CFString *)v23 objectForKey:@"kPLAlbumOwnerHashedPersonIDKey"];
      if (v29)
      {
        [v11 setCloudOwnerHashedPersonID:v29];
      }

      v30 = [(__CFString *)v23 objectForKey:@"kPLAlbumOwnerIsWhitelistedKey"];
      v31 = v30;
      if (v30)
      {
        [v11 setCloudOwnerIsWhitelisted:{objc_msgSend(v30, "BOOLValue")}];
      }

      v83 = v25;
      v32 = [(__CFString *)v23 objectForKey:@"kPLAlbumOwnerSubscriptionDateKey", v31];
      if (v32)
      {
        [v11 setCloudSubscriptionDate:v32];
      }

      v75 = v29;
      v76 = v28;
      v78 = v27;
      v80 = v26;
      v33 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v5 objectForKey:@"album-name"];
        v35 = [v11 cloudOwnerFirstName];
        v36 = [v11 cloudOwnerLastName];
        v37 = [v11 cloudOwnerFullName];
        v38 = [v11 cloudOwnerEmail];
        v39 = [v11 cloudOwnerHashedPersonID];
        v40 = [v11 cloudOwnerIsWhitelisted];
        *buf = 138414082;
        v41 = @"NO";
        v99 = v34;
        v100 = 2112;
        if (v40)
        {
          v41 = @"YES";
        }

        v101 = v91;
        v102 = 2112;
        v103 = v35;
        v104 = 2112;
        v105 = v36;
        v106 = 2112;
        v107 = v37;
        v108 = 2112;
        v109 = v38;
        v110 = 2112;
        v111 = v39;
        v112 = 2112;
        v113 = v41;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "setting person info for album '%@' (%@): %@, %@, %@, %@, hashedPersonID %@, whitelist: %@", buf, 0x52u);
      }

      v6 = v87;
      v42 = [v87 personInfoManager];
      v43 = [v11 cloudOwnerFirstName];
      v44 = [v11 cloudOwnerLastName];
      v45 = [v11 cloudOwnerFullName];
      v46 = [v11 cloudOwnerEmail];
      v47 = [v11 cloudOwnerHashedPersonID];
      [v42 setFirstName:v43 lastName:v44 fullName:v45 email:v46 forPersonID:v47];

      v7 = v91;
      v8 = v88;
      v9 = v85;
    }

    if (v8)
    {
      [v11 setCloudRelationshipState:v8];
    }

    v48 = [v5 objectForKey:@"album-name"];
    if (v48)
    {
      [v11 setTitle:v48];
    }

    v49 = [v5 objectForKey:@"album-metadata"];
    if (v49)
    {
      [v11 setCloudMetadata:v49];
    }

    v50 = [v5 objectForKey:@"album-isPublic"];
    if (v50)
    {
      [v11 setCloudPublicURLEnabled:v50];
      [v11 setCloudPublicURLEnabledLocal:v50];
      v51 = [v5 objectForKey:@"album-publicURLString"];
      if (v51)
      {
        [v11 setPublicURL:v51];
      }
    }

    v79 = v50;
    v81 = v49;
    v84 = v48;
    v52 = [v11 cloudRelationshipStateValue];
    v53 = [v5 objectForKey:@"album-allowsMultipleContributors"];
    if (v53)
    {
      v54 = [v11 cloudMultipleContributorsEnabled];
      v55 = [v54 BOOLValue];

      LODWORD(v54) = [v53 BOOLValue];
      [v11 setCloudMultipleContributorsEnabled:v53];
      [v11 setCloudMultipleContributorsEnabledLocal:v53];
      if (v55 != v54 && v52 == 2)
      {
        v56 = +[PLNotificationManager sharedManager];
        v57 = [v5 objectForKey:@"mstreamd-info"];
        [v56 noteMultipleContributorStatusChangedForAlbum:v11 mstreamdInfo:v57];
      }
    }

    v58 = [v5 objectForKey:@"album-isFamilySharedAlbum"];
    [v11 setCloudAlbumSubtype:{objc_msgSend(v58, "BOOLValue")}];
    v59 = [v5 objectForKey:@"album-creationDate"];
    if (v59)
    {
      [v11 setCloudCreationDate:v59];
    }

    v60 = [v11 isOwnedCloudSharedAlbum];
    if (!v9 && (v60 & 1) == 0 && v52 == 1)
    {
      v61 = v59;
      [v11 setHasUnseenContentBoolValue:1];
      v62 = +[PLNotificationManager sharedManager];
      [v62 noteDidReceiveInvitationForSharedAlbum:v11];

      [v11 updateCloudLastInterestingChangeDateWithDate:v89];
      v63 = [v5 objectForKey:@"album-autoAcceptInvitation"];
      v64 = v63;
      if (v63 && [v63 BOOLValue])
      {
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __99__PLCloudSharedUpdateAlbumMetadataJob__updateCloudSharedAlbumWithArgumentsDictionary_photoLibrary___block_invoke;
        v92[3] = &unk_1E7575FA8;
        v93 = v11;
        [PLPhotoSharingHelper acceptPendingInvitationForAlbum:v93 completionHandler:v92];
      }

      v59 = v61;
    }

    v65 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [v11 cloudGUID];
      v67 = [v11 title];
      [v11 isOwned];
      v68 = v86 = v59;
      v69 = [v11 cloudPublicURLEnabled];
      [v11 cloudRelationshipState];
      v77 = v58;
      v70 = v53;
      v72 = v71 = v6;
      v73 = [v72 intValue];
      *buf = 138413314;
      v99 = v66;
      v100 = 2112;
      v101 = v67;
      v102 = 2112;
      v103 = v68;
      v104 = 2112;
      v105 = v69;
      v106 = 1024;
      LODWORD(v107) = v73;
      _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_DEFAULT, "PLCloudSharedUpdateAlbumMetadataJob finished processing album GUID:%@ title:%@ isOwned:%@ isPublic:%@ relationshipState:%i", buf, 0x30u);

      v6 = v71;
      v53 = v70;
      v58 = v77;

      v7 = v91;
      v59 = v86;

      v8 = v88;
    }

    [v11 persistRecoveryMetadata];
  }

  else
  {
    v8 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "ERROR: PLCloudSharedUpdateAlbumMetadataJob didn't get an album-guid in arguments, ignoring request", buf, 2u);
    }
  }

LABEL_75:
}

void __99__PLCloudSharedUpdateAlbumMetadataJob__updateCloudSharedAlbumWithArgumentsDictionary_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Automatically accepted invitation for album %@ error: %@", &v6, 0x16u);
  }
}

- (id)_argumentsDictionaryFromXPCEvent:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  length = 0;
  data = xpc_dictionary_get_data(a3, "arguments-dictionary", &length);
  if (data)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:length];
    v9 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v9];
    v6 = v9;
    if (!v5)
    {
      v7 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "ERROR: _argumentsDictionaryFromXPCEvent failed to deserialize arguments dictionary %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "ERROR: _argumentsDictionaryFromXPCEvent failed to get arguments-dictionary from xpc event", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)_argumentsDictionaryAsData:(id)a3
{
  v3 = a3;
  v6 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:&v6];
  if (!v4)
  {
    NSLog(&cfstr_ErrorArguments.isa, v3, v6);
  }

  return v4;
}

- (void)runDaemonSide
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudSharedUpdateAlbumMetadataJob runDaemonSide]"];
  v4 = [objc_opt_class() lowPriorityOperationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PLCloudSharedUpdateAlbumMetadataJob_runDaemonSide__block_invoke;
  v6[3] = &unk_1E7578848;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [v4 addOperationWithBlock:v6];
}

void __52__PLCloudSharedUpdateAlbumMetadataJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) metadata];
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLCloudSharedUpdateAlbumMetadataJob runDaemonSide %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) transientPhotoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PLCloudSharedUpdateAlbumMetadataJob_runDaemonSide__block_invoke_37;
  v8[3] = &unk_1E7578848;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [v6 performTransactionAndWait:v8];
  v7.receiver = *(a1 + 32);
  v7.super_class = PLCloudSharedUpdateAlbumMetadataJob;
  objc_msgSendSuper2(&v7, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];

  objc_autoreleasePoolPop(v2);
}

void __52__PLCloudSharedUpdateAlbumMetadataJob_runDaemonSide__block_invoke_37(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  [*(a1 + 32) _updateSharedStreamCollectionShareWithArgumentsDictionary:v2 photoLibrary:*(a1 + 40)];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PLCloudSharedUpdateAlbumMetadataJob;
  v3 = [(PLDaemonJob *)&v7 description];
  v4 = [(PLCloudSharedUpdateAlbumMetadataJob *)self metadata];
  v5 = [v3 stringByAppendingFormat:@" metadata %@", v4];

  return v5;
}

- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PLCloudSharedUpdateAlbumMetadataJob;
  v7 = [(PLCloudSharingJob *)&v13 initFromXPCObject:v6 libraryServicesManager:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _argumentsDictionaryFromXPCEvent:v6];
    if (!v9)
    {
      v10 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "ERROR: PLCloudSharedUpdateAlbumMetadataJob couldn't get arguments from xpc event", buf, 2u);
      }
    }

    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "PLCloudSharedUpdateAlbumMetadataJob got arguments dictionary %@", buf, 0xCu);
    }

    [v8 setMetadata:v9];
  }

  return v8;
}

- (void)encodeToXPCObject:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLCloudSharedUpdateAlbumMetadataJob;
  [(PLDaemonJob *)&v9 encodeToXPCObject:v4];
  v5 = [(PLCloudSharedUpdateAlbumMetadataJob *)self metadata];
  if ([v5 count])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [(PLCloudSharedUpdateAlbumMetadataJob *)self _argumentsDictionaryAsData:v5];
    v8 = v7;
    if (v7)
    {
      xpc_dictionary_set_data(v4, "arguments-dictionary", [v7 bytes], objc_msgSend(v7, "length"));
    }

    else
    {
      NSLog(&cfstr_ErrorPlcloudsh.isa);
    }

    objc_autoreleasePoolPop(v6);
  }
}

+ (void)updateAlbumMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setMetadata:v3];

  [v4 runAndWaitForMessageToBeSent];
}

@end