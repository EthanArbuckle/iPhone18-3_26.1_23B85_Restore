@interface PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare
+ (void)insertParticipantForCloudSharedAlbumInvitationRecord:(id)record collectionShare:(id)share personInfoManager:(id)manager moc:(id)moc;
- (id)_insertCollectionShareForCloudSharedAlbum:(id)album moc:(id)moc;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare

- (id)_insertCollectionShareForCloudSharedAlbum:(id)album moc:(id)moc
{
  albumCopy = album;
  mocCopy = moc;
  v7 = +[PLCollectionShare entityName];
  v8 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v7, mocCopy, 0);

  [v8 setCollectionShareKind:2];
  [v8 setCloudDeleteState:{objc_msgSend(albumCopy, "cloudDeleteState")}];
  cloudGUID = [albumCopy cloudGUID];
  [v8 setScopeIdentifier:cloudGUID];

  [v8 setCloudLocalState:{objc_msgSend(albumCopy, "cloudLocalState")}];
  title = [albumCopy title];
  [v8 setTitle:title];

  uuid = [albumCopy uuid];
  [v8 setUuid:uuid];

  if ([albumCopy customSortKey])
  {
    customSortKey = [albumCopy customSortKey];
  }

  else
  {
    customSortKey = 6;
  }

  [v8 setCustomSortKey:customSortKey];
  [v8 setCustomSortAscending:{objc_msgSend(albumCopy, "customSortAscending")}];
  cloudCreationDate = [albumCopy cloudCreationDate];
  if (cloudCreationDate)
  {
    [v8 setCreationDate:cloudCreationDate];
  }

  else
  {
    creationDate = [albumCopy creationDate];
    [v8 setCreationDate:creationDate];
  }

  cloudLastInterestingChangeDate = [albumCopy cloudLastInterestingChangeDate];
  [v8 setLastModifiedDate:cloudLastInterestingChangeDate];

  cloudMetadata = [albumCopy cloudMetadata];
  v17 = [cloudMetadata objectForKey:*MEMORY[0x1E6997FE8]];
  [v8 setPhoneInvitationToken:v17];

  cloudMultipleContributorsEnabled = [albumCopy cloudMultipleContributorsEnabled];
  LODWORD(v17) = [cloudMultipleContributorsEnabled BOOLValue];

  if (v17)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  [v8 setPublicPermission:v19];
  if ([albumCopy cloudNotificationsEnabled])
  {
    v20 = 0x7FFFLL;
  }

  else
  {
    v20 = 1;
  }

  [v8 setNotificationState:v20];
  cloudPersonID = [albumCopy cloudPersonID];
  [v8 setCloudPersonID:cloudPersonID];

  cloudPublicURLEnabled = [albumCopy cloudPublicURLEnabled];
  bOOLValue = [cloudPublicURLEnabled BOOLValue];

  if (bOOLValue)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  [v8 setPublicURLState:v24];
  v25 = MEMORY[0x1E695DFF8];
  publicURL = [albumCopy publicURL];
  v27 = [v25 URLWithString:publicURL];
  [v8 setShareURL:v27];

  cloudRelationshipState = [albumCopy cloudRelationshipState];

  if (cloudRelationshipState)
  {
    cloudRelationshipState2 = [albumCopy cloudRelationshipState];
    intValue = [cloudRelationshipState2 intValue];

    if (intValue < 3)
    {
      v31 = intValue + 1;
    }

    else
    {
      v31 = 0;
    }

    [v8 setStatus:v31];
  }

  cloudSubscriptionDate = [albumCopy cloudSubscriptionDate];
  [v8 setCloudSubscriptionDate:cloudSubscriptionDate];

  hasUnseenContent = [albumCopy hasUnseenContent];
  bOOLValue2 = [hasUnseenContent BOOLValue];

  if (bOOLValue2)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  [v8 setUnseenContentState:v35];
  unseenAssetsCount = [albumCopy unseenAssetsCount];
  [v8 setUnseenAssetsCount:{objc_msgSend(unseenAssetsCount, "intValue")}];

  cloudAlbumSubtype = [albumCopy cloudAlbumSubtype];
  if (cloudAlbumSubtype <= 1)
  {
    [v8 setCreationType:cloudAlbumSubtype];
  }

  return v8;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v151 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLCloudSharedAlbum entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  [v8 setFetchBatchSize:100];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v10 = objc_initWeak(location, self);

  v11 = objc_alloc(MEMORY[0x1E69BF270]);
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke;
  v113[3] = &unk_1E7573318;
  objc_copyWeak(&v115, location);
  v84 = systemLibraryURL;
  v114 = v84;
  v12 = [v11 initWithBlock:v113];

  objc_destroyWeak(&v115);
  objc_destroyWeak(location);
  v13 = [PLPersonInfoManager alloc];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v15 = [(PLPersonInfoManager *)v13 initWithPathManager:pathManager lazyAssetsdClient:v12];

  v16 = [PLEmailAddressManager alloc];
  pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
  v18 = [(PLEmailAddressManager *)v16 initWithPathManager:pathManager2 lazyAssetsdClient:v12];

  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__16168;
  v111 = __Block_byref_object_dispose__16169;
  v112 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 1;
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__16168;
  v101 = __Block_byref_object_dispose__16169;
  v102 = 0;
  v19 = [PLEnumerateAndSaveController alloc];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_130;
  v95[3] = &unk_1E7575B30;
  v96 = contextCopy;
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_2;
  v94[3] = &unk_1E7572E50;
  v94[4] = self;
  v94[5] = &v97;
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_3;
  v87[3] = &unk_1E7567E60;
  v87[4] = self;
  v91 = &v107;
  v92 = &v103;
  v22 = v96;
  v88 = v22;
  v83 = v18;
  v89 = v83;
  v82 = v15;
  v90 = v82;
  v93 = &v97;
  v23 = [(PLEnumerateAndSaveController *)v19 initWithName:v21 fetchRequest:v8 context:v22 options:4 generateContextBlock:v95 didFetchObjectIDsBlock:v94 processResultBlock:v87];

  v24 = (v108 + 5);
  obj = v108[5];
  LODWORD(v16) = [(PLEnumerateAndSaveController *)v23 processObjectsWithError:&obj];
  objc_storeStrong(v24, obj);
  if (v16)
  {
    if ([(PLEnumerateAndSaveController *)v23 isCancelled])
    {
      v25 = v108[5];
      v108[5] = 0;

      v26 = PLMigrationGetLog();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (!v27)
      {
        goto LABEL_24;
      }

      logger = [(PLModelMigrationActionCore *)self logger];
      v29 = logger == 0;

      if (!v29)
      {
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        memset(location, 0, sizeof(location));
        v30 = PLMigrationGetLog();
        os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        completedUnitCount = [v98[5] completedUnitCount];
        v32 = v108[5];
        v116 = 134218242;
        v117 = completedUnitCount;
        v118 = 2112;
        v119 = v32;
        LODWORD(v81) = 22;
        v33 = _os_log_send_and_compose_impl();

        v34 = [(PLModelMigrationActionCore *)self logger:&v116];
        [v34 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{278, 0}];

        goto LABEL_13;
      }

      v51 = PLMigrationGetLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        completedUnitCount2 = [v98[5] completedUnitCount];
        v57 = v108[5];
        LODWORD(location[0]) = 134218242;
        *(location + 4) = completedUnitCount2;
        WORD2(location[1]) = 2112;
        *(&location[1] + 6) = v57;
        _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, "Cancelled operation after update of %lld objects. Error: %@", location, 0x16u);
      }

LABEL_23:

      goto LABEL_24;
    }

    v44 = PLMigrationGetLog();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);

    if (!v45)
    {
      goto LABEL_24;
    }

    logger2 = [(PLModelMigrationActionCore *)self logger];
    v47 = logger2 == 0;

    if (v47)
    {
      v51 = PLMigrationGetLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        totalUnitCount = [v98[5] totalUnitCount];
        LODWORD(location[0]) = 134217984;
        *(location + 4) = totalUnitCount;
        _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, "Migrated %lld CloudSharedAlbums to CollectionShares.", location, 0xCu);
      }

      goto LABEL_23;
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    memset(location, 0, sizeof(location));
    v48 = PLMigrationGetLog();
    os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    totalUnitCount2 = [v98[5] totalUnitCount];
    v116 = 134217984;
    v117 = totalUnitCount2;
    LODWORD(v81) = 12;
    v33 = _os_log_send_and_compose_impl();

    v50 = [(PLModelMigrationActionCore *)self logger:&v116];
    [v50 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{280, 0}];
  }

  else
  {
    if (v104[3] == 2)
    {
      goto LABEL_24;
    }

    v104[3] = 3;
    v35 = PLMigrationGetLog();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);

    if (!v36)
    {
      goto LABEL_24;
    }

    logger3 = [(PLModelMigrationActionCore *)self logger];
    v38 = logger3 == 0;

    if (v38)
    {
      v51 = PLMigrationGetLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        v54 = v108[5];
        LODWORD(location[0]) = 138543618;
        *(location + 4) = v53;
        WORD2(location[1]) = 2112;
        *(&location[1] + 6) = v54;
        _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", location, 0x16u);
      }

      goto LABEL_23;
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    memset(location, 0, sizeof(location));
    v39 = PLMigrationGetLog();
    os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = v108[5];
    v116 = 138543618;
    v117 = v41;
    v118 = 2112;
    v119 = v42;
    LODWORD(v81) = 22;
    v33 = _os_log_send_and_compose_impl();

    v43 = [(PLModelMigrationActionCore *)self logger:&v116];
    [v43 logWithMessage:v33 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{284, 16}];
  }

LABEL_13:
  if (v33 != location)
  {
    free(v33);
  }

LABEL_24:
  v58 = MEMORY[0x1E695D5E0];
  v59 = +[PLCloudSharedAlbum entityName];
  v60 = [v58 fetchRequestWithEntityName:v59];

  v61 = [v22 countForFetchRequest:v60 error:0];
  if (v61)
  {
    v104[3] = 3;
    v62 = PLMigrationGetLog();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);

    if (!v63)
    {
      goto LABEL_39;
    }

    logger4 = [(PLModelMigrationActionCore *)self logger];
    v65 = logger4 == 0;

    if (!v65)
    {
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      memset(location, 0, sizeof(location));
      v66 = PLMigrationGetLog();
      os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
      v116 = 134217984;
      v117 = v61;
      LODWORD(v81) = 12;
      v67 = _os_log_send_and_compose_impl();

      v68 = [(PLModelMigrationActionCore *)self logger:&v116];
      [v68 logWithMessage:v67 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{292, 16}];

      goto LABEL_31;
    }

    v75 = PLMigrationGetLog();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = v61;
      _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_ERROR, "Failed to remove %llu CloudSharedAlbums.", location, 0xCu);
    }
  }

  else
  {
    v69 = PLMigrationGetLog();
    v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);

    if (!v70)
    {
      goto LABEL_39;
    }

    logger5 = [(PLModelMigrationActionCore *)self logger];
    v72 = logger5 == 0;

    if (!v72)
    {
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      memset(location, 0, sizeof(location));
      v73 = PLMigrationGetLog();
      os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
      LOWORD(v116) = 0;
      LODWORD(v81) = 2;
      v67 = _os_log_send_and_compose_impl();

      v74 = [(PLModelMigrationActionCore *)self logger:&v116];
      [v74 logWithMessage:v67 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{294, 0}];

LABEL_31:
      if (v67 != location)
      {
        free(v67);
      }

      goto LABEL_39;
    }

    v76 = PLMigrationGetLog();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_19BF1F000, v76, OS_LOG_TYPE_DEFAULT, "Successfully removed all CloudSharedAlbum objects from the DB", location, 2u);
    }
  }

LABEL_39:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v77 = v104[3];
  v78 = v108[5];
  if (v77 != 1 && error)
  {
    v78 = v78;
    *error = v78;
  }

  v79 = v104[3];
  _Block_object_dispose(&v97, 8);

  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v107, 8);

  return v79;
}

+ (void)insertParticipantForCloudSharedAlbumInvitationRecord:(id)record collectionShare:(id)share personInfoManager:(id)manager moc:(id)moc
{
  recordCopy = record;
  shareCopy = share;
  managerCopy = manager;
  mocCopy = moc;
  v12 = +[PLShareParticipant entityName];
  v13 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v12, mocCopy, 0);

  [v13 setParticipantKind:1];
  cloudGUID = [recordCopy cloudGUID];
  [v13 setParticipantID:cloudGUID];

  uuid = [recordCopy uuid];
  [v13 setUuid:uuid];

  invitationState = [recordCopy invitationState];
  intValue = [invitationState intValue];

  publicPermission = [shareCopy publicPermission];
  v19 = 2;
  v20 = 4;
  v21 = 2;
  v22 = 5;
  v23 = 2;
  v24 = 3;
  if (intValue != 5)
  {
    v24 = 0;
    v23 = 0;
  }

  if (intValue != 4)
  {
    v22 = v24;
    v21 = v23;
  }

  if (intValue != 3)
  {
    v20 = v22;
    v19 = v21;
  }

  v25 = 1;
  v26 = 3;
  v27 = 2;
  v28 = 2;
  v29 = 1;
  v30 = 2;
  if (intValue != 2)
  {
    v30 = 0;
  }

  if (intValue != 1)
  {
    v29 = v30;
    v28 = v30;
  }

  if (intValue)
  {
    v27 = v29;
    v26 = publicPermission;
    v25 = v28;
  }

  v31 = intValue <= 2;
  if (intValue <= 2)
  {
    v32 = v27;
  }

  else
  {
    v32 = v20;
  }

  if (intValue <= 2)
  {
    v33 = v26;
  }

  else
  {
    v33 = publicPermission;
  }

  if (v31)
  {
    v34 = v25;
  }

  else
  {
    v34 = v19;
  }

  [v13 setRole:v34];
  [v13 setPermission:v33];
  [v13 setAcceptanceStatus:v32];
  inviteeHashedPersonID = [recordCopy inviteeHashedPersonID];
  firstObject = [managerCopy emailForPersonID:inviteeHashedPersonID];

  if (!firstObject)
  {
    cloudGUID2 = [recordCopy cloudGUID];
    v38 = [managerCopy emailsForInvitationRecordGUID:cloudGUID2];
    firstObject = [v38 firstObject];
  }

  [v13 setEmailAddress:firstObject];
  cloudGUID3 = [recordCopy cloudGUID];
  v40 = [managerCopy phonesForInvitationRecordGUID:cloudGUID3];
  firstObject2 = [v40 firstObject];
  [v13 setPhoneNumber:firstObject2];

  v42 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  inviteeFirstName = [recordCopy inviteeFirstName];
  if (inviteeFirstName)
  {
    [v42 setGivenName:inviteeFirstName];
  }

  inviteeLastName = [recordCopy inviteeLastName];
  if (inviteeLastName)
  {
    [v42 setFamilyName:inviteeLastName];
  }

  [v13 setNameComponents:v42];
  inviteeHashedPersonID2 = [recordCopy inviteeHashedPersonID];
  [v13 setHashedPersonID:inviteeHashedPersonID2];

  inviteeSubscriptionDate = [recordCopy inviteeSubscriptionDate];
  [v13 setSubscriptionDate:inviteeSubscriptionDate];

  [v13 setIsCurrentUser:{objc_msgSend(recordCopy, "isMine")}];
  [v13 setShare:shareCopy];
}

@end