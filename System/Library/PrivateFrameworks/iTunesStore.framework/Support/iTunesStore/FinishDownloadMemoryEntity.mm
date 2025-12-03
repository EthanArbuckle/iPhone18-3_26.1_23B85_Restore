@interface FinishDownloadMemoryEntity
+ (id)defaultProperties;
- (BOOL)hasRestoreData;
- (BOOL)isDeviceBasedVPP;
- (BOOL)isHLS;
- (BOOL)isPodcastDownload;
- (BOOL)isRentalDownload;
- (BOOL)isRestoreDownload;
- (BOOL)isSampleDownload;
- (BOOL)isSharedDownload;
- (BOOL)isStoreDownload;
- (BOOL)isTvTemplate;
- (NSString)ITunesMetadataDestinationPath;
- (id)destinationDirectoryPathForAsset:(id)asset;
- (id)newITunesMetadataDictionary;
- (id)secondaryAssetForType:(id)type;
- (int64_t)automaticType;
- (int64_t)priority;
- (int64_t)restoreState;
- (int64_t)transactionID;
- (void)loadAssetsUsingSession:(id)session;
@end

@implementation FinishDownloadMemoryEntity

- (int64_t)automaticType
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_automatic"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (int64_t)priority
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"priority"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)destinationDirectoryPathForAsset:(id)asset
{
  destinationURLString = [asset destinationURLString];
  if (destinationURLString)
  {
    downloadKind = [[NSURL alloc] initWithString:destinationURLString];
    path = [downloadKind path];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  }

  else
  {
    downloadKind = [(FinishDownloadMemoryEntity *)self downloadKind];
    stringByDeletingLastPathComponent = sub_10020F36C(downloadKind);
  }

  return stringByDeletingLastPathComponent;
}

- (BOOL)hasRestoreData
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"download_state.has_restore_data"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isDeviceBasedVPP
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_device_based_vpp"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isHLS
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_hls"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPodcastDownload
{
  downloadKind = [(FinishDownloadMemoryEntity *)self downloadKind];
  IsPodcastKind = SSDownloadKindIsPodcastKind();

  return IsPodcastKind;
}

- (BOOL)isRentalDownload
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_rental"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isRestoreDownload
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_restore"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSampleDownload
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_sample"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSharedDownload
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_shared"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isStoreDownload
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_from_store"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isTvTemplate
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_tv_template"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)ITunesMetadataDestinationPath
{
  downloadKind = [(FinishDownloadMemoryEntity *)self downloadKind];
  v4 = sub_10020F36C(downloadKind);
  v5 = [NSString stringWithFormat:@"%lld", [(FinishDownloadMemoryEntity *)self databaseID]];
  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = [v6 stringByAppendingPathExtension:@"plist"];

  return v7;
}

- (void)loadAssetsUsingSession:(id)session
{
  sessionCopy = session;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000FD674;
  v35 = sub_1000FD684;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000FD674;
  v29 = sub_1000FD684;
  v30 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:[(FinishDownloadMemoryEntity *)self databaseID]];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"IFNULL(asset.blocked_reason equalToLongLong:0)", 0];
  v38[0] = v6;
  v38[1] = v7;
  v8 = [NSArray arrayWithObjects:v38 count:2];
  v9 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v8];

  database = [sessionCopy database];
  v37 = @"asset_order";
  v11 = [NSArray arrayWithObjects:&v37 count:1];
  v12 = [FinishDownloadAssetMemoryEntity queryWithDatabase:database predicate:v9 orderingProperties:v11];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000FD68C;
  v20 = &unk_100328C88;
  v23 = &v25;
  v24 = &v31;
  v13 = v5;
  v21 = v13;
  selfCopy = self;
  [v12 enumerateMemoryEntitiesUsingBlock:&v17];
  v14 = v32[5];
  if (!v14)
  {
    v14 = v26[5];
  }

  objc_storeStrong(&self->_mediaAsset, v14);
  v15 = [v13 copy];
  secondaryAssets = self->_secondaryAssets;
  self->_secondaryAssets = v15;

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

- (id)newITunesMetadataDictionary
{
  copyWritableMetadata = [(StoreDownload *)self->_storeMetadata copyWritableMetadata];
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = SSDownloadMetadataKeyPurchaseDate;
  v6 = [(StoreDownload *)self->_storeMetadata valueForMetadataKey:SSDownloadMetadataKeyPurchaseDate];
  if (v6)
  {
    [v4 setObject:v6 forKey:v5];
  }

  v7 = [DownloadDRM alloc];
  sinfs = [(StoreDownload *)self->_storeMetadata sinfs];
  v9 = [(DownloadDRM *)v7 initWithSinfArray:sinfs];

  sinfsArray = [(DownloadDRM *)v9 sinfsArray];
  v11 = [sinfsArray copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];

  v43 = v9;
  v44 = v4;
  if (!v11)
  {
    pinfsArray = [(DownloadDRM *)v9 pinfsArray];
    v11 = [pinfsArray copyValueForProperty:@"SinfPropertyAccountIdentifier" error:0];

    if (!v11)
    {
      v13 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"store_account_id"];
      if (!v13)
      {
        goto LABEL_21;
      }

      v11 = v13;
    }
  }

  v42 = copyWritableMetadata;
  v14 = +[SSAccountStore defaultStore];
  v15 = [v14 accountWithUniqueIdentifier:v11];

  copyLockdownRepresentation = [v15 copyLockdownRepresentation];
  if (!copyLockdownRepresentation)
  {
    copyLockdownRepresentation = objc_alloc_init(NSMutableDictionary);
    [copyLockdownRepresentation setObject:v11 forKey:kSSLockdownKeyAccountDSPersonID];
  }

  v17 = v6;
  v18 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"store_account_name"];
  v19 = kSSLockdownKeyAccountID;
  v20 = [copyLockdownRepresentation objectForKey:kSSLockdownKeyAccountID];

  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = v18 == 0;
  }

  if (!v21)
  {
    [copyLockdownRepresentation setObject:v18 forKey:v19];
  }

  downloaderAccountIdentifier = [(StoreDownload *)self->_storeMetadata downloaderAccountIdentifier];
  if (downloaderAccountIdentifier)
  {
    [copyLockdownRepresentation setObject:downloaderAccountIdentifier forKey:@"DownloaderID"];
  }

  familyAccountIdentifier = [(StoreDownload *)self->_storeMetadata familyAccountIdentifier];
  if (familyAccountIdentifier)
  {
    [copyLockdownRepresentation setObject:familyAccountIdentifier forKey:@"FamilyID"];
  }

  purchaserAccountIdentifier = [(StoreDownload *)self->_storeMetadata purchaserAccountIdentifier];
  if (purchaserAccountIdentifier)
  {
    [copyLockdownRepresentation setObject:purchaserAccountIdentifier forKey:@"PurchaserID"];
  }

  [v44 setObject:copyLockdownRepresentation forKey:SSDownloadMetadataKeyAccountInfo];

  v4 = v44;
  v6 = v17;
  copyWritableMetadata = v42;
  v9 = v43;
LABEL_21:
  downloadKind = [(FinishDownloadMemoryEntity *)self downloadKind];
  IsToneKind = SSDownloadKindIsToneKind();

  if (IsToneKind)
  {
    v27 = [NSString stringWithFormat:@"%llx", [(FinishDownloadMemoryEntity *)self databaseID]];
    [v4 setObject:v27 forKey:SSDownloadMetadataKeyRingtoneGUID];
  }

  v28 = SSDownloadMetadataKeyIsPurchaseRedownload;
  v29 = [copyWritableMetadata objectForKey:SSDownloadMetadataKeyIsPurchaseRedownload];

  if (!v29)
  {
    v30 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"is_redownload"];
    bOOLValue = [v30 BOOLValue];

    if (bOOLValue)
    {
      [copyWritableMetadata setObject:&__kCFBooleanTrue forKey:v28];
    }
  }

  v32 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"ref_app"];

  if (v32)
  {
    [v4 setObject:v32 forKey:SSDownloadMetadataKeyReferrerAppName];
  }

  v33 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"ref_url"];

  if (v33)
  {
    [v4 setObject:v33 forKey:SSDownloadMetadataKeyReferrerURL];
  }

  v34 = [copyWritableMetadata objectForKey:@"sourceApp"];

  if (!v34)
  {
    clientIdentifier = [(FinishDownloadMemoryEntity *)self clientIdentifier];
    if (clientIdentifier)
    {
      [copyWritableMetadata setObject:clientIdentifier forKey:@"sourceApp"];
    }
  }

  v36 = [copyWritableMetadata objectForKey:SSDownloadMetadataKeyVariantIdentifier];

  if (!v36)
  {
    mediaAsset = [(FinishDownloadMemoryEntity *)self mediaAsset];
    variantIdentifier = [mediaAsset variantIdentifier];

    if (!variantIdentifier)
    {
      v39 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"variant_id"];
      if (!v39)
      {
        goto LABEL_39;
      }

      variantIdentifier = v39;
    }

    [copyWritableMetadata setObject:variantIdentifier forKey:@"variantID"];
  }

LABEL_39:
  v40 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"beta_external_version_identifier"];
  if (v40)
  {
    [copyWritableMetadata setObject:v40 forKey:SSDownloadMetadataKeyBetaExternalVersionIdentifier];
  }

  [copyWritableMetadata setObject:v4 forKey:SSDownloadMetadataKeyAdditionalInfo];

  return copyWritableMetadata;
}

- (int64_t)restoreState
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"IFNULL(download_state.restore_state, 0)"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)secondaryAssetForType:(id)type
{
  typeCopy = type;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_secondaryAssets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        assetType = [v9 assetType];
        v11 = [assetType isEqualToString:typeCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (int64_t)transactionID
{
  v2 = [(FinishDownloadMemoryEntity *)self valueForProperty:@"transaction_id"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

+ (id)defaultProperties
{
  v4[0] = @"artist_name";
  v4[1] = @"artwork_template_name";
  v4[2] = @"is_automatic";
  v4[3] = @"bundle_id";
  v4[4] = @"bundle_version";
  v4[5] = @"client_id";
  v4[6] = @"collection_name";
  v4[7] = @"document_target_id";
  v4[8] = @"download_permalink";
  v4[9] = @"duration_in_ms";
  v4[10] = @"handler_id";
  v4[11] = @"genre_name";
  v4[12] = @"has_4k";
  v4[13] = @"has_dolby_vision";
  v4[14] = @"has_hdr";
  v4[15] = @"download_state.has_restore_data";
  v4[16] = @"is_device_based_vpp";
  v4[17] = @"is_hls";
  v4[18] = @"is_redownload";
  v4[19] = @"is_rental";
  v4[20] = @"is_restore";
  v4[21] = @"is_sample";
  v4[22] = @"is_shared";
  v4[23] = @"is_from_store";
  v4[24] = @"is_tv_template";
  v4[25] = @"is_device_based_vpp";
  v4[26] = @"kind";
  v4[27] = @"library_id";
  v4[28] = @"ref_app";
  v4[29] = @"ref_url";
  v4[30] = @"IFNULL(download_state.restore_state, 0)";
  v4[31] = @"store_account_name";
  v4[32] = @"store_account_id";
  v4[33] = @"store_collection_id";
  v4[34] = @"store_front_id";
  v4[35] = @"store_item_id";
  v4[36] = @"store_publication_version";
  v4[37] = @"store_saga_id";
  v4[38] = @"store_transaction_id";
  v4[39] = @"store_xid";
  v4[40] = @"title";
  v4[41] = @"transaction_id";
  v4[42] = @"priority";
  v2 = [NSArray arrayWithObjects:v4 count:43];

  return v2;
}

@end