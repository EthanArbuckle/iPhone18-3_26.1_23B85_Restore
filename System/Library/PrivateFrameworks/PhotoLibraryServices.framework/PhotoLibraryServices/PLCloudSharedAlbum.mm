@interface PLCloudSharedAlbum
+ (id)allCloudSharedAlbumsInLibrary:(id)library;
+ (id)cloudOwnerDisplayNameWithFirstName:(id)name lastName:(id)lastName fullName:(id)fullName emailKey:(id)key includingEmail:(BOOL)email allowsEmail:(BOOL)allowsEmail emailAddressManager:(id)manager;
+ (id)cloudSharedAlbumWithGUID:(id)d inLibrary:(id)library;
+ (id)cloudSharedAlbumWithObjectID:(id)d managedObjectContext:(id)context;
+ (id)lightweightReimportDirectoryNameWithGUID:(id)d cloudPersonID:(id)iD;
+ (id)localizedSharedByLabelWithFirstName:(id)name lastName:(id)lastName fullName:(id)fullName emailKey:(id)key isOwned:(BOOL)owned allowsEmail:(BOOL)email emailAddressManager:(id)manager;
- (BOOL)canContributeToCloudSharedAlbum;
- (BOOL)hasUnseenContentBoolValue;
- (BOOL)isMultipleContributorCloudSharedAlbum;
- (BOOL)isOwnedCloudSharedAlbum;
- (NSDate)cloudFirstRecentBatchDate;
- (NSString)cloudOwnerEmail;
- (NSString)localizedSharedWithLabel;
- (id)albumDirectoryPath;
- (id)cloudOwnerDisplayNameIncludingEmail:(BOOL)email allowsEmail:(BOOL)allowsEmail;
- (id)emailAddressManager;
- (id)localizedSharedByLabelAllowsEmail:(BOOL)email;
- (id)sortDescriptorsForKeyAssetsCandidates;
- (id)sortingComparator;
- (int)cloudRelationshipStateLocalValue;
- (int)cloudRelationshipStateValue;
- (unint64_t)unseenAssetsCountIntegerValue;
- (void)awakeFromInsert;
- (void)delete;
- (void)deleteFromDatabaseOnly;
- (void)getUnseenStartMarkerIndex:(unint64_t *)index count:(unint64_t *)count showsProgress:(BOOL *)progress;
- (void)persistRecoveryMetadata;
- (void)prepareForDeletion;
- (void)setCloudOwnerEmail:(id)email;
- (void)setHasUnseenContentBoolValue:(BOOL)value;
- (void)setUnseenAssetsCountIntegerValue:(unint64_t)value;
- (void)updateCloudLastContributionDateWithDate:(id)date;
- (void)updateCloudLastInterestingChangeDateWithDate:(id)date;
- (void)userDeleteSubscriberRecord:(id)record;
- (void)willSave;
@end

@implementation PLCloudSharedAlbum

- (void)persistRecoveryMetadata
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:7];
  cloudRelationshipState = [(PLCloudSharedAlbum *)self cloudRelationshipState];

  if (cloudRelationshipState)
  {
    cloudRelationshipState2 = [(PLCloudSharedAlbum *)self cloudRelationshipState];
    [v3 setObject:cloudRelationshipState2 forKey:@"cloudRelationshipState"];
  }

  cloudOwnerFirstName = [(PLCloudSharedAlbum *)self cloudOwnerFirstName];

  if (cloudOwnerFirstName)
  {
    cloudOwnerFirstName2 = [(PLCloudSharedAlbum *)self cloudOwnerFirstName];
    [v3 setObject:cloudOwnerFirstName2 forKey:@"cloudOwnerFirstName"];
  }

  cloudOwnerLastName = [(PLCloudSharedAlbum *)self cloudOwnerLastName];

  if (cloudOwnerLastName)
  {
    cloudOwnerLastName2 = [(PLCloudSharedAlbum *)self cloudOwnerLastName];
    [v3 setObject:cloudOwnerLastName2 forKey:@"cloudOwnerLastName"];
  }

  cloudOwnerEmail = [(PLCloudSharedAlbum *)self cloudOwnerEmail];

  if (cloudOwnerEmail)
  {
    cloudOwnerEmail2 = [(PLCloudSharedAlbum *)self cloudOwnerEmail];
    [v3 setObject:cloudOwnerEmail2 forKey:@"cloudOwnerEmail"];
  }

  cloudOwnerHashedPersonID = [(PLCloudSharedAlbum *)self cloudOwnerHashedPersonID];

  if (cloudOwnerHashedPersonID)
  {
    cloudOwnerHashedPersonID2 = [(PLCloudSharedAlbum *)self cloudOwnerHashedPersonID];
    [v3 setObject:cloudOwnerHashedPersonID2 forKey:@"cloudOwnerHashedPersonID"];
  }

  cloudSubscriptionDate = [(PLCloudSharedAlbum *)self cloudSubscriptionDate];

  if (cloudSubscriptionDate)
  {
    cloudSubscriptionDate2 = [(PLCloudSharedAlbum *)self cloudSubscriptionDate];
    [v3 setObject:cloudSubscriptionDate2 forKey:@"cloudSubscriptionDate"];
  }

  title = [(PLCloudSharedAlbum *)self title];

  if (title)
  {
    title2 = [(PLCloudSharedAlbum *)self title];
    [v3 setObject:title2 forKey:@"title"];
  }

  cloudPublicURLEnabled = [(PLCloudSharedAlbum *)self cloudPublicURLEnabled];

  if (cloudPublicURLEnabled)
  {
    cloudPublicURLEnabled2 = [(PLCloudSharedAlbum *)self cloudPublicURLEnabled];
    [v3 setObject:cloudPublicURLEnabled2 forKey:@"cloudPublicURLEnabled"];
  }

  publicURL = [(PLCloudSharedAlbum *)self publicURL];

  if (publicURL)
  {
    publicURL2 = [(PLCloudSharedAlbum *)self publicURL];
    [v3 setObject:publicURL2 forKey:@"publicURL"];
  }

  if ([v3 count])
  {
    albumDirectoryPath = [(PLCloudSharedAlbum *)self albumDirectoryPath];
    v23 = [albumDirectoryPath stringByAppendingPathComponent:@"Info.plist"];

    if (v23)
    {
      v24 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:100 options:0 error:0];
      if (([v24 writeToFile:v23 options:1073741825 error:0]& 1) == 0)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        albumDirectoryPath2 = [(PLCloudSharedAlbum *)self albumDirectoryPath];
        [defaultManager createDirectoryAtPath:albumDirectoryPath2 withIntermediateDirectories:1 attributes:0 error:0];

        v29 = 0;
        LOBYTE(defaultManager) = [v24 writeToFile:v23 options:1073741825 error:&v29];
        v27 = v29;
        if ((defaultManager & 1) == 0)
        {
          v28 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v31 = v3;
            v32 = 2112;
            v33 = v23;
            v34 = 2112;
            v35 = v27;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to write recovery metadata %@ to %@: %@", buf, 0x20u);
          }
        }
      }
    }

    else
    {
      v24 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v3;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Missing path to persist recovery metadata %@ for cloud shared album", buf, 0xCu);
      }
    }
  }
}

- (void)userDeleteSubscriberRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v9 = recordCopy;
    isOwned = [(PLCloudSharedAlbum *)self isOwned];
    bOOLValue = [isOwned BOOLValue];

    if (bOOLValue)
    {
      v7 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];
      [PLPhotoSharingHelper removeSubscribers:v7 fromOwnedAlbum:self];

      selfCopy = v9;
    }

    else
    {
      [PLPhotoSharingHelper unsubscribeFromAlbum:self];
      selfCopy = self;
    }

    [(PLCloudSharedAlbum *)selfCopy delete];
    recordCopy = v9;
  }
}

- (void)setCloudOwnerEmail:(id)email
{
  emailCopy = email;
  emailAddressManager = [(PLCloudSharedAlbum *)self emailAddressManager];
  v6 = [emailAddressManager keyForEmailAddress:emailCopy];

  [(PLCloudSharedAlbum *)self setCloudOwnerEmailKey:v6];
}

- (NSString)cloudOwnerEmail
{
  emailAddressManager = [(PLCloudSharedAlbum *)self emailAddressManager];
  cloudOwnerEmailKey = [(PLCloudSharedAlbum *)self cloudOwnerEmailKey];
  v5 = [emailAddressManager emailAddressForKey:cloudOwnerEmailKey];

  if (!v5)
  {
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    personInfoManager = [photoLibrary personInfoManager];
    cloudOwnerHashedPersonID = [(PLCloudSharedAlbum *)self cloudOwnerHashedPersonID];
    v5 = [personInfoManager emailForPersonID:cloudOwnerHashedPersonID];

    if (!v5)
    {
      if ((PLIsAssetsd() & 1) == 0)
      {
        +[PLUserActivityDaemonJob checkedSharedAlbumServerModelRelationships];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)updateCloudLastContributionDateWithDate:(id)date
{
  v13 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  cloudLastContributionDate = [(PLCloudSharedAlbum *)self cloudLastContributionDate];
  v6 = cloudLastContributionDate;
  if (dateCopy && (!cloudLastContributionDate || [dateCopy compare:cloudLastContributionDate] == 1))
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle = [(PLGenericAlbum *)self localizedTitle];
      v9 = 138412546;
      v10 = localizedTitle;
      v11 = 2112;
      v12 = dateCopy;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Updating album last contribution date: %@ %@", &v9, 0x16u);
    }

    [(PLCloudSharedAlbum *)self setCloudLastContributionDate:dateCopy];
  }
}

- (void)updateCloudLastInterestingChangeDateWithDate:(id)date
{
  v23 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  cloudLastInterestingChangeDate = [(PLCloudSharedAlbum *)self cloudLastInterestingChangeDate];
  v6 = cloudLastInterestingChangeDate;
  if (dateCopy && (!cloudLastInterestingChangeDate || [dateCopy compare:cloudLastInterestingChangeDate] == 1))
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle = [(PLGenericAlbum *)self localizedTitle];
      *buf = 138412546;
      v20 = localizedTitle;
      v21 = 2112;
      v22 = dateCopy;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Updating album updated date: %@ %@", buf, 0x16u);
    }

    [(PLCloudSharedAlbum *)self setCloudLastInterestingChangeDate:dateCopy];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    albumLists = [(PLCloudSharedAlbum *)self albumLists];
    v10 = [albumLists countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(albumLists);
          }

          [*(*(&v14 + 1) + 8 * i) setNeedsReordering];
        }

        v11 = [albumLists countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (id)cloudOwnerDisplayNameIncludingEmail:(BOOL)email allowsEmail:(BOOL)allowsEmail
{
  allowsEmailCopy = allowsEmail;
  emailCopy = email;
  cloudOwnerFirstName = [(PLCloudSharedAlbum *)self cloudOwnerFirstName];
  cloudOwnerLastName = [(PLCloudSharedAlbum *)self cloudOwnerLastName];
  cloudOwnerFullName = [(PLCloudSharedAlbum *)self cloudOwnerFullName];
  cloudOwnerEmailKey = [(PLCloudSharedAlbum *)self cloudOwnerEmailKey];
  emailAddressManager = [(PLCloudSharedAlbum *)self emailAddressManager];
  v12 = [PLCloudSharedAlbum cloudOwnerDisplayNameWithFirstName:cloudOwnerFirstName lastName:cloudOwnerLastName fullName:cloudOwnerFullName emailKey:cloudOwnerEmailKey includingEmail:emailCopy allowsEmail:allowsEmailCopy emailAddressManager:emailAddressManager];

  return v12;
}

- (NSDate)cloudFirstRecentBatchDate
{
  v8 = 0;
  [(PLCloudSharedAlbum *)self getUnseenStartMarkerIndex:&v8 count:0 showsProgress:0];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (-[PLCloudSharedAlbum assets](self, "assets"), v3 = objc_claimAutoreleasedReturnValue(), [v3 objectAtIndex:v8], lastObject = objc_claimAutoreleasedReturnValue(), v3, !lastObject))
  {
    assets = [(PLCloudSharedAlbum *)self assets];
    lastObject = [assets lastObject];
  }

  cloudBatchPublishDate = [lastObject cloudBatchPublishDate];
  if (!cloudBatchPublishDate)
  {
    cloudBatchPublishDate = [MEMORY[0x1E695DF00] distantPast];
  }

  return cloudBatchPublishDate;
}

- (BOOL)canContributeToCloudSharedAlbum
{
  isOwned = [(PLCloudSharedAlbum *)self isOwned];
  if ([isOwned BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    cloudMultipleContributorsEnabled = [(PLCloudSharedAlbum *)self cloudMultipleContributorsEnabled];
    bOOLValue = [cloudMultipleContributorsEnabled BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)isMultipleContributorCloudSharedAlbum
{
  cloudMultipleContributorsEnabled = [(PLCloudSharedAlbum *)self cloudMultipleContributorsEnabled];
  bOOLValue = [cloudMultipleContributorsEnabled BOOLValue];

  return bOOLValue;
}

- (BOOL)isOwnedCloudSharedAlbum
{
  isOwned = [(PLCloudSharedAlbum *)self isOwned];
  bOOLValue = [isOwned BOOLValue];

  return bOOLValue;
}

- (NSString)localizedSharedWithLabel
{
  cloudAlbumSubscriberRecords = [(PLCloudSharedAlbum *)self cloudAlbumSubscriberRecords];
  v4 = [cloudAlbumSubscriberRecords count];
  if ([(PLCloudSharedAlbum *)self isOwnedCloudSharedAlbum])
  {
    if (v4 == 1)
    {
      v8 = PLServicesLocalizedFrameworkString();
      firstObject = [cloudAlbumSubscriberRecords firstObject];
      v10 = [firstObject inviteeDisplayNameIncludingEmail:0];

      v5 = PFStringWithValidatedFormat();
    }

    else
    {
      if (!v4)
      {
        v5 = PLServicesLocalizedFrameworkString();
        goto LABEL_9;
      }

      v8 = PLServicesLocalizedFrameworkString();
      v5 = PFStringWithValidatedFormat();
    }
  }

  else
  {
    v6 = PLServicesLocalizedFrameworkString();
    v7 = [(PLCloudSharedAlbum *)self cloudOwnerDisplayNameIncludingEmail:0 allowsEmail:1];
    v5 = PFStringWithValidatedFormat();
  }

LABEL_9:

  return v5;
}

- (id)localizedSharedByLabelAllowsEmail:(BOOL)email
{
  emailCopy = email;
  isOwnedCloudSharedAlbum = [(PLCloudSharedAlbum *)self isOwnedCloudSharedAlbum];
  cloudOwnerFirstName = [(PLCloudSharedAlbum *)self cloudOwnerFirstName];
  cloudOwnerLastName = [(PLCloudSharedAlbum *)self cloudOwnerLastName];
  cloudOwnerFullName = [(PLCloudSharedAlbum *)self cloudOwnerFullName];
  cloudOwnerEmailKey = [(PLCloudSharedAlbum *)self cloudOwnerEmailKey];
  emailAddressManager = [(PLCloudSharedAlbum *)self emailAddressManager];
  v11 = [PLCloudSharedAlbum localizedSharedByLabelWithFirstName:cloudOwnerFirstName lastName:cloudOwnerLastName fullName:cloudOwnerFullName emailKey:cloudOwnerEmailKey isOwned:isOwnedCloudSharedAlbum allowsEmail:emailCopy emailAddressManager:emailAddressManager];

  return v11;
}

- (id)emailAddressManager
{
  photoLibrary = [(PLGenericAlbum *)self photoLibrary];
  libraryBundle = [photoLibrary libraryBundle];
  emailAddressManager = [libraryBundle emailAddressManager];

  return emailAddressManager;
}

- (int)cloudRelationshipStateLocalValue
{
  cloudRelationshipState = [(PLCloudSharedAlbum *)self cloudRelationshipState];
  intValue = [cloudRelationshipState intValue];

  return intValue;
}

- (int)cloudRelationshipStateValue
{
  cloudRelationshipState = [(PLCloudSharedAlbum *)self cloudRelationshipState];
  intValue = [cloudRelationshipState intValue];

  return intValue;
}

- (id)sortingComparator
{
  v2 = [&__block_literal_global_73294 copy];

  return v2;
}

uint64_t __39__PLCloudSharedAlbum_sortingComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 cloudBatchPublishDate];
  v7 = [v5 cloudBatchPublishDate];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v4 cloudBatchPublishDate];
    v10 = [v5 cloudBatchPublishDate];
    v11 = [v9 compare:v10];
  }

  else
  {
    v11 = v7 != 0;
    if (v6)
    {
      v11 = -1;
      goto LABEL_9;
    }
  }

  if (!v11)
  {
    v12 = [v4 dateCreated];
    v13 = [v5 dateCreated];
    v11 = [v12 compare:v13];

    if (!v11)
    {
      v14 = [v4 cloudAssetGUID];
      v15 = [v5 cloudAssetGUID];
      v11 = [v14 compare:v15];
    }
  }

LABEL_9:

  return v11;
}

- (id)sortDescriptorsForKeyAssetsCandidates
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"albums" ascending:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)delete
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(&self->super.super.didRegisteredWithUserInterfaceContext + 3))
  {
    albumDirectoryPath = 0;
  }

  else
  {
    albumDirectoryPath = [(PLCloudSharedAlbum *)self albumDirectoryPath];
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    pathManager = [photoLibrary pathManager];
    [(PLManagedAlbum *)self removePersistedFileSystemDataWithPathManager:pathManager];
  }

  assets = [(PLCloudSharedAlbum *)self assets];
  v7 = [assets copy];

  v24.receiver = self;
  v24.super_class = PLCloudSharedAlbum;
  [(PLGenericAlbum *)&v24 delete];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[Shared Streams]The shared album %@ was deleted, removing all of its assets.", albumDirectoryPath];
  v9 = [PLAssetTransactionReason transactionReason:v8];

  managedObjectContext = [(PLCloudSharedAlbum *)self managedObjectContext];
  array = [v7 array];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __28__PLCloudSharedAlbum_delete__block_invoke;
  v22[3] = &unk_1E75781C0;
  v22[4] = self;
  v12 = v9;
  v23 = v12;
  v13 = [managedObjectContext enumerateWithIncrementalSaveUsingObjects:array withBlock:v22];

  if (v13)
  {
    v14 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to save the deletion of shared album assets. Error: %@", buf, 0xCu);
    }
  }

  if (albumDirectoryPath)
  {
    v15 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = albumDirectoryPath;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "deleting album directory path %@", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v21 = 0;
    v17 = [defaultManager removeItemAtPath:albumDirectoryPath error:&v21];
    v18 = v21;

    if ((v17 & 1) == 0)
    {
      v19 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "error %@", buf, 0xCu);
      }
    }
  }

  if (!*(&self->super.super.didRegisteredWithUserInterfaceContext + 3))
  {
    cloudGUID = [(PLCloudSharedAlbum *)self cloudGUID];
    [PLPhotoSharingHelper deleteDebugBreadcrumbsForAlbumGUID:cloudGUID];
  }
}

void __28__PLCloudSharedAlbum_delete__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isCloudSharedAsset])
  {
    if (*(*(a1 + 32) + 117))
    {
      [v3 deleteFromDatabaseOnly];
    }

    else
    {
      v4 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 pathForOriginalFile];
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "deleting asset at path %@", &v6, 0xCu);
      }

      [v3 deleteWithReason:*(a1 + 40)];
    }
  }
}

- (void)deleteFromDatabaseOnly
{
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudSharedAlbum.m" lineNumber:176 description:@"deleteFromDatabaseOnly is only safe from inside of assetsd!"];
  }

  *(&self->super.super.didRegisteredWithUserInterfaceContext + 3) = 1;

  [(PLCloudSharedAlbum *)self delete];
}

- (id)albumDirectoryPath
{
  v21 = *MEMORY[0x1E69E9840];
  cloudGUID = [(PLCloudSharedAlbum *)self cloudGUID];
  if (([cloudGUID hasPrefix:@"FS-"] & 1) != 0 || (v4 = cloudGUID, objc_msgSend(cloudGUID, "hasPrefix:", @"fs-")))
  {
    v4 = [cloudGUID substringFromIndex:3];
  }

  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
  if (v5)
  {
    cloudPersonID = [(PLCloudSharedAlbum *)self cloudPersonID];
    managedObjectContext = [(PLCloudSharedAlbum *)self managedObjectContext];
    pathManager = [managedObjectContext pathManager];
    v9 = [pathManager photoDirectoryWithType:23];

    if ([cloudPersonID length])
    {
      if (cloudPersonID)
      {
LABEL_7:
        v10 = [v9 stringByAppendingPathComponent:cloudPersonID];
        v11 = [v10 stringByAppendingPathComponent:cloudGUID];

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
      v14 = [v9 stringByAppendingPathComponent:@"personID"];
      v15 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v14 encoding:4 error:0];

      cloudPersonID = v15;
      if (v15)
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
    goto LABEL_13;
  }

  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    uuid = [(PLCloudSharedAlbum *)self uuid];
    v17 = 138412546;
    v18 = cloudGUID;
    v19 = 2112;
    v20 = uuid;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Invalid cloudGIUD (%@) for album (uuid: %@)", &v17, 0x16u);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (void)prepareForDeletion
{
  v5.receiver = self;
  v5.super_class = PLCloudSharedAlbum;
  [(PLManagedAlbum *)&v5 prepareForDeletion];
  managedObjectContext = [(PLCloudSharedAlbum *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0)
  {
    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordAlbumForCloudFeedUpdate:self];
  }
}

- (void)willSave
{
  v5.receiver = self;
  v5.super_class = PLCloudSharedAlbum;
  [(PLManagedAlbum *)&v5 willSave];
  managedObjectContext = [(PLCloudSharedAlbum *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordAlbumForCloudFeedUpdate:self];
  }
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLCloudSharedAlbum;
  [(PLGenericAlbum *)&v4 awakeFromInsert];
  [(PLGenericAlbum *)self setKindValue:1505];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLCloudSharedAlbum *)self setCloudGUID:uUIDString];
}

- (void)getUnseenStartMarkerIndex:(unint64_t *)index count:(unint64_t *)count showsProgress:(BOOL *)progress
{
  unseenAssetsCountIntegerValue = [(PLCloudSharedAlbum *)self unseenAssetsCountIntegerValue];
  if (unseenAssetsCountIntegerValue)
  {
    assets = [(PLCloudSharedAlbum *)self assets];
    v11 = [assets count];

    v12 = v11 - unseenAssetsCountIntegerValue;
    if (!index)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = -1;
    if (!index)
    {
      goto LABEL_6;
    }
  }

  if (v12 < 0)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *index = v12;
LABEL_6:
  if (count)
  {
    *count = unseenAssetsCountIntegerValue;
  }

  if (progress)
  {
    *progress = 0;
  }
}

- (void)setUnseenAssetsCountIntegerValue:(unint64_t)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:value];
  [(PLCloudSharedAlbum *)self setUnseenAssetsCount:v4];
}

- (unint64_t)unseenAssetsCountIntegerValue
{
  unseenAssetsCount = [(PLCloudSharedAlbum *)self unseenAssetsCount];
  integerValue = [unseenAssetsCount integerValue];

  return integerValue;
}

- (void)setHasUnseenContentBoolValue:(BOOL)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:value];
  [(PLCloudSharedAlbum *)self setHasUnseenContent:v4];
}

- (BOOL)hasUnseenContentBoolValue
{
  hasUnseenContent = [(PLCloudSharedAlbum *)self hasUnseenContent];
  bOOLValue = [hasUnseenContent BOOLValue];

  return bOOLValue;
}

+ (id)lightweightReimportDirectoryNameWithGUID:(id)d cloudPersonID:(id)iD
{
  v4 = 0;
  if (d && iD)
  {
    dCopy = d;
    v7 = [iD stringByAppendingString:@"_"];
    v4 = [v7 stringByAppendingString:dCopy];
  }

  return v4;
}

+ (id)cloudOwnerDisplayNameWithFirstName:(id)name lastName:(id)lastName fullName:(id)fullName emailKey:(id)key includingEmail:(BOOL)email allowsEmail:(BOOL)allowsEmail emailAddressManager:(id)manager
{
  allowsEmailCopy = allowsEmail;
  emailCopy = email;
  nameCopy = name;
  lastNameCopy = lastName;
  fullNameCopy = fullName;
  keyCopy = key;
  managerCopy = manager;
  v19 = managerCopy;
  v20 = &stru_1F0F06D80;
  if (allowsEmailCopy)
  {
    v20 = [managerCopy emailAddressForKey:keyCopy];
  }

  if ([fullNameCopy length] && !objc_msgSend(fullNameCopy, "isEqualToString:", @"(null) (null)"))
  {
    v21 = fullNameCopy;
    if (!emailCopy)
    {
      goto LABEL_13;
    }

LABEL_10:
    if ([(__CFString *)v20 length])
    {
      v22 = PLServicesLocalizedFrameworkString();
      v23 = PFStringWithValidatedFormat();

      v21 = v23;
    }

    goto LABEL_13;
  }

  if (![nameCopy length] && !objc_msgSend(lastNameCopy, "length"))
  {
    v21 = v20;
    goto LABEL_13;
  }

  v21 = PLLocalizedNameWithFirstAndLastName();
  if (emailCopy)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = &stru_1F0F06D80;
  }

  return v24;
}

+ (id)localizedSharedByLabelWithFirstName:(id)name lastName:(id)lastName fullName:(id)fullName emailKey:(id)key isOwned:(BOOL)owned allowsEmail:(BOOL)email emailAddressManager:(id)manager
{
  if (owned)
  {
    v9 = PLServicesLocalizedFrameworkString();
  }

  else
  {
    v10 = [PLCloudSharedAlbum cloudOwnerDisplayNameWithFirstName:name lastName:lastName fullName:fullName emailKey:key includingEmail:owned allowsEmail:email emailAddressManager:manager];
    if ([v10 length])
    {
      v11 = PLServicesLocalizedFrameworkString();
      v9 = PFStringWithValidatedFormat();
    }

    else
    {
      v9 = PLServicesLocalizedFrameworkString();
    }
  }

  return v9;
}

+ (id)allCloudSharedAlbumsInLibrary:(id)library
{
  managedObjectContext = [library managedObjectContext];
  v4 = [PLGenericAlbum albumsWithKind:1505 inManagedObjectContext:managedObjectContext];

  return v4;
}

+ (id)cloudSharedAlbumWithObjectID:(id)d managedObjectContext:(id)context
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v10 = [self entityInManagedObjectContext:contextCopy];
  [v9 setEntity:v10];

  v17[0] = @"invitationRecords";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v11];

  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self == %@", dCopy];
  [v9 setPredicate:dCopy];

  v16 = 0;
  v13 = [contextCopy executeFetchRequest:v9 error:&v16];
  lastObject = [v13 lastObject];

  objc_autoreleasePoolPop(v8);

  return lastObject;
}

+ (id)cloudSharedAlbumWithGUID:(id)d inLibrary:(id)library
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  v8 = objc_autoreleasePoolPush();
  managedObjectContext = [libraryCopy managedObjectContext];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d AND (uuid = %@ OR cloudGUID == %@)", 1505, dCopy, dCopy];
  v11 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v12 = [self entityInManagedObjectContext:managedObjectContext];
  [v11 setEntity:v12];

  [v11 setPredicate:dCopy];
  v18 = 0;
  v13 = [managedObjectContext executeFetchRequest:v11 error:&v18];
  v14 = v18;
  if ([v13 count] >= 2)
  {
    v15 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = dCopy;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "WARNING: Found more than one album with cloudGUID %@, returning last one in array %@", buf, 0x16u);
    }
  }

  lastObject = [v13 lastObject];

  objc_autoreleasePoolPop(v8);

  return lastObject;
}

@end