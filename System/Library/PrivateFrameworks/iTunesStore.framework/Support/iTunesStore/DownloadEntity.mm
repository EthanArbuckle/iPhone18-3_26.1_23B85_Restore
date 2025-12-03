@interface DownloadEntity
+ (id)copyValueDictionaryWithMetadata:(id)metadata;
+ (id)databasePropertyToSetClientProperty:(id)property;
+ (id)disambiguatedSQLForProperty:(id)property;
+ (void)initialize;
- (BOOL)deleteFromDatabase;
- (NSArray)allAssetCookies;
- (NSString)downloadKind;
- (id)_databaseAssetForAsset:(id)asset;
- (id)anyAssetForAssetType:(id)type;
- (id)copyAdditionalMetadataForStoreDownload:(id)download;
- (id)copyAssetsWithAssetType:(id)type;
- (id)copyDownloadingIPodLibraryItem;
- (id)copyStoreDownloadMetadata;
- (id)failWithError:(id)error;
- (id)finishWithFinalPhase:(id)phase;
- (id)rentalInformation;
- (id)retryDownload;
- (id)setAssetsUsingDownload:(id)download;
- (int64_t)addPersistentDownloadsWithClientID:(id)d kind:(id)kind;
- (unint64_t)itemIdentifier;
- (void)_deleteTransaction;
- (void)_resetAssetProperty:(id)property;
- (void)deleteScratchDirectory;
@end

@implementation DownloadEntity

+ (id)copyValueDictionaryWithMetadata:(id)metadata
{
  newDownloadProperties = [metadata newDownloadProperties];
  v5 = [self copyDatabaseDictionaryToSetClientDictionary:newDownloadProperties];

  return v5;
}

- (int64_t)addPersistentDownloadsWithClientID:(id)d kind:(id)kind
{
  dCopy = d;
  kindCopy = kind;
  if (kindCopy)
  {
    v7 = objc_alloc_init(NSMutableSet);
    v25 = [[NSNumber alloc] initWithLongLong:{-[DownloadEntity persistentID](self, "persistentID")}];
    database = [(DownloadEntity *)self database];
    v22 = kindCopy;
    v21 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_kind" equalToValue:kindCopy];
    v9 = [PersistentDownloadManagerKindEntity queryWithDatabase:database predicate:?];
    v36 = @"manager_id";
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000B39A8;
    v30[3] = &unk_100327958;
    v10 = v7;
    v31 = v10;
    [v9 enumeratePersistentIDsAndProperties:&v36 count:1 usingBlock:v30];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v27;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = -[PersistentDownloadManagerEntity initWithPersistentID:inDatabase:]([PersistentDownloadManagerEntity alloc], "initWithPersistentID:inDatabase:", [v16 longLongValue], database);
          v34[0] = @"client_id";
          v34[1] = @"filters_external_downloads";
          v32 = 0;
          v33 = 0;
          [(PersistentDownloadManagerEntity *)v17 getValues:&v32 forProperties:v34 count:2];
          if (![v33 BOOLValue] || objc_msgSend(dCopy, "isEqualToString:", v32))
          {
            v18 = [[NSDictionary alloc] initWithObjectsAndKeys:{v25, @"download_id", v16, @"manager_id", 0}];

            ++v13;
          }

          for (j = 1; j != -1; --j)
          {
          }
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    kindCopy = v22;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSArray)allAssetCookies
{
  v3 = +[NSMutableArray array];
  v4 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:[(DownloadEntity *)self persistentID]];
  database = [(DownloadEntity *)self database];
  v7 = [DownloadAssetEntity queryWithDatabase:database predicate:v5];

  v16 = @"url";
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B3B78;
  v13[3] = &unk_100327980;
  v14 = v4;
  v8 = v3;
  v15 = v8;
  v9 = v4;
  [v7 enumeratePersistentIDsAndProperties:&v16 count:1 usingBlock:v13];
  v10 = v15;
  v11 = v8;

  return v11;
}

- (id)anyAssetForAssetType:(id)type
{
  typeCopy = type;
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:[(DownloadEntity *)self persistentID]];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"asset_type" equalToValue:typeCopy];

  v7 = [NSArray arrayWithObjects:v5, v6, 0];
  v8 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  database = [(DownloadEntity *)self database];
  v10 = [DownloadAssetEntity anyInDatabase:database predicate:v8];

  return v10;
}

- (id)copyAdditionalMetadataForStoreDownload:(id)download
{
  downloadCopy = download;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = SSDownloadMetadataKeyPurchaseDate;
  v7 = [downloadCopy valueForMetadataKey:SSDownloadMetadataKeyPurchaseDate];
  if (v7)
  {
    [v5 setObject:v7 forKey:v6];
  }

  v21[0] = @"kind";
  v21[1] = @"store_account_id";
  v21[2] = @"store_account_name";
  v18 = 0;
  v19 = 0;
  v20 = 0;
  [(DownloadEntity *)self getValues:&v18 forProperties:v21 count:3];
  if (v19)
  {
    v8 = +[SSAccountStore defaultStore];
    v9 = [v8 accountWithUniqueIdentifier:v19];

    copyLockdownRepresentation = [v9 copyLockdownRepresentation];
    if (!copyLockdownRepresentation)
    {
      copyLockdownRepresentation = objc_alloc_init(NSMutableDictionary);
      [copyLockdownRepresentation setObject:v19 forKey:kSSLockdownKeyAccountDSPersonID];
    }

    v11 = kSSLockdownKeyAccountID;
    v12 = [copyLockdownRepresentation objectForKey:kSSLockdownKeyAccountID];
    v13 = v20;

    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (!v14)
    {
      [copyLockdownRepresentation setObject:v20 forKey:v11];
    }

    [v5 setObject:copyLockdownRepresentation forKey:SSDownloadMetadataKeyAccountInfo];
  }

  if (SSDownloadKindIsToneKind())
  {
    iTunesSafeGUID = [(DownloadEntity *)self ITunesSafeGUID];
    [v5 setObject:iTunesSafeGUID forKey:SSDownloadMetadataKeyRingtoneGUID];
  }

  for (i = 2; i != -1; --i)
  {
  }

  return v5;
}

- (id)copyAssetsWithAssetType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(NSMutableArray);
  database = [(DownloadEntity *)self database];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:[(DownloadEntity *)self persistentID]];
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"asset_type" equalToValue:typeCopy];

  v9 = [NSArray arrayWithObjects:v7, v8, 0];
  v10 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v9];

  v21 = @"asset_order";
  v11 = [NSArray arrayWithObjects:&v21 count:1];
  v12 = [DownloadAssetEntity queryWithDatabase:database predicate:v10 orderingProperties:v11];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B4208;
  v18[3] = &unk_1003279C0;
  v19 = database;
  v13 = v5;
  v20 = v13;
  v14 = database;
  [v12 enumeratePersistentIDsUsingBlock:v18];
  v15 = v20;
  v16 = v13;

  return v16;
}

- (id)copyDownloadingIPodLibraryItem
{
  v13[0] = @"is_restore";
  v13[1] = @"kind";
  v13[2] = @"library_id";
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  [(DownloadEntity *)self getValues:v11 forProperties:v13 count:3];
  v3 = 0;
  if (SSDownloadKindIsMediaKind())
  {
    v4 = [(DownloadEntity *)self anyAssetForAssetType:SSDownloadAssetTypeMedia];
    v3 = [v4 valueForProperty:@"url"];

    if (v3)
    {
      v3 = objc_alloc_init(IPodLibraryItem);
      if ([v11[0] BOOLValue])
      {
        [(IPodLibraryItem *)v3 setDownloadType:1];
      }

      if (v12)
      {
        -[IPodLibraryItem setLibraryPersistentIdentifier:](v3, "setLibraryPersistentIdentifier:", [v12 longLongValue]);
      }

      v5 = [v4 valueForProperty:@"protection_type"];
      v6 = v5;
      if (v5)
      {
        -[IPodLibraryItem setProtectionType:](v3, "setProtectionType:", [v5 integerValue]);
      }

      copyStoreDownloadMetadata = [(DownloadEntity *)self copyStoreDownloadMetadata];
      [(IPodLibraryItem *)v3 setItemMetadata:copyStoreDownloadMetadata];
      v8 = [[NSString alloc] initWithFormat:@"%lld", -[DownloadEntity persistentID](self, "persistentID")];
      [(IPodLibraryItem *)v3 setItemDownloadIdentifier:v8];
    }
  }

  for (i = 2; i != -1; --i)
  {
  }

  return v3;
}

- (id)copyStoreDownloadMetadata
{
  persistentID = [(DownloadEntity *)self persistentID];
  v4 = [(DownloadEntity *)self valueForProperty:@"kind"];
  v5 = [ScratchManager directoryPathForDownloadID:persistentID kind:v4 createIfNeeded:0];
  v6 = [v5 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

  v7 = [[StoreDownload alloc] initWithContentsOfFile:v6];
  if (!v7)
  {
    v7 = [[StoreDownload alloc] initWithDownload:self];
  }

  return v7;
}

- (NSString)downloadKind
{
  v2 = [(DownloadEntity *)self valueForProperty:@"kind"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = SSDownloadKindOther;
  }

  v5 = v4;

  return v4;
}

- (id)failWithError:(id)error
{
  errorCopy = error;
  v5 = objc_alloc_init(DownloadsChangeset);
  v34[0] = @"bundle_id";
  v34[1] = @"client_id";
  v34[2] = @"is_restore";
  v34[3] = @"kind";
  v34[4] = @"is_private";
  v34[5] = @"title";
  v34[6] = @"transaction_id";
  v34[7] = @"suppress_error_dialogs";
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  [(DownloadEntity *)self getValues:&v30 forProperties:v34 count:8];
  persistentID = [(DownloadEntity *)self persistentID];
  if (!errorCopy)
  {
    errorCopy = SSError();
  }

  ArchivableData = SSCodingCreateArchivableData();
  v8 = SSDownloadPhaseFailed;
  v28[0] = @"download_state.phase";
  v28[1] = @"download_state.download_error";
  v29[0] = SSDownloadPhaseFailed;
  v29[1] = ArchivableData;
  v9 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  [(DownloadEntity *)self setValuesWithDictionary:v9];

  if (SSDownloadKindIsSoftwareKind())
  {
    longLongValue = [v33 longLongValue];
    v11 = [ApplicationHandle alloc];
    v12 = [(ApplicationHandle *)v11 initWithTransactionIdentifier:longLongValue downloadIdentifier:persistentID bundleIdentifier:v30];
    [(DownloadsChangeset *)v5 addFailedAppWithHandle:v12];
    [ApplicationWorkspaceState incompleteNotificationForFailedDownload:persistentID bundleIdentifier:v30];
  }

  else
  {
    if (![*(&v31 + 1) isEqualToString:SSDownloadKindInAppContent])
    {
      goto LABEL_8;
    }

    v13 = [NSOrderedSet alloc];
    v14 = [NSNumber numberWithLongLong:persistentID];
    v12 = [v13 initWithObjects:{v14, 0}];

    v15 = +[MicroPaymentQueue paymentQueue];
    [v15 failDownloadsWithIdentifiers:v12];
  }

LABEL_8:
  v16 = *(&v31 + 1);
  if (SSDownloadKindIsBookToShimKind())
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:SSErrorDomain])
    {
      code = [errorCopy code];

      if (code == 150)
      {
        [(DownloadEntity *)self deleteFromDatabase];
        [(DownloadsChangeset *)v5 addDownloadChangeTypes:8];
        [(DownloadsChangeset *)v5 addDownloadKind:v16];
        [(DownloadsChangeset *)v5 addRemovedDownloadID:[(DownloadEntity *)self persistentID]];
        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  if (([v32 BOOLValue] & 1) == 0 && (objc_msgSend(*(&v31 + 1), "isEqualToString:", SSDownloadKindInAppContent) & 1) == 0)
  {
    [(DownloadEntity *)self addPersistentDownloadsWithClientID:*(&v30 + 1) kind:*(&v31 + 1)];
  }

  v26[0] = SSDownloadPropertyDownloadPhase;
  v26[1] = SSDownloadPropertyEncodedErrorData;
  v27[0] = v8;
  v27[1] = ArchivableData;
  v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  [(DownloadsChangeset *)v5 setChangedDownloadProperties:v19];

  [(DownloadsChangeset *)v5 addDownloadChangeTypes:2];
  [(DownloadsChangeset *)v5 addDownloadKind:*(&v31 + 1)];
  [(DownloadsChangeset *)v5 addStatusChangedDownloadID:persistentID];
  if (([*(&v33 + 1) BOOLValue] & 1) == 0 && (objc_msgSend(v31, "BOOLValue") & 1) == 0 && (SSDownloadKindIsSoftwareKind() & 1) == 0 && !-[DownloadEntity _shouldSuppressDialogForError:](self, "_shouldSuppressDialogForError:", errorCopy))
  {
    if (ISErrorIsEqual())
    {
      v20 = objc_alloc_init(DownloadDiskSpaceError);
    }

    else
    {
      v20 = [[DownloadGenericError alloc] initWithError:errorCopy];
    }

    v21 = v20;
    if (v20)
    {
      [(DownloadError *)v20 addDownloadIdentifier:persistentID];
      [(DownloadError *)v21 setDownloadKind:*(&v31 + 1)];
      [(DownloadError *)v21 setDownloadTitle:*(&v32 + 1)];
      v22 = +[DownloadErrorController sharedErrorController];
      [v22 showDownloadError:v21];
    }
  }

LABEL_26:
  v23 = v5;

  for (i = 7; i != -1; --i)
  {
  }

  return v23;
}

- (id)finishWithFinalPhase:(id)phase
{
  phaseCopy = phase;
  v5 = objc_alloc_init(DownloadsChangeset);
  database = [(DownloadEntity *)self database];
  v38[0] = @"bundle_id";
  v38[1] = @"cancel_url";
  v38[2] = @"client_id";
  v38[3] = @"download_state.did_restore_data";
  v38[4] = @"is_restore";
  v38[5] = @"download_state.is_server_finished";
  v38[6] = @"kind";
  v38[7] = @"library_id";
  v38[8] = @"is_private";
  v38[9] = @"store_account_id";
  v38[10] = @"store_item_id";
  v38[11] = @"store_transaction_id";
  v38[12] = @"transaction_id";
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  [(DownloadEntity *)self getValues:&v31 forProperties:v38 count:13];
  if (SSDownloadKindIsMediaKind())
  {
    allAssetCookies = [(DownloadEntity *)self allAssetCookies];
    if ([allAssetCookies count])
    {
      [(DownloadsChangeset *)v5 addDeletedHTTPCookies:allAssetCookies];
    }

    v8 = [phaseCopy isEqualToString:SSDownloadPhaseCanceled];
    persistentID = [(DownloadEntity *)self persistentID];
    if (v8)
    {
      [(DownloadsChangeset *)v5 addCanceledIPodLibraryDownloadID:persistentID];
    }

    else
    {
      [(DownloadsChangeset *)v5 addDeletedIPodLibraryDownloadID:persistentID];
    }
  }

  else
  {
    if (!SSDownloadKindIsSoftwareKind())
    {
      goto LABEL_19;
    }

    allAssetCookies = v31;
    if ([allAssetCookies length])
    {
      v10 = [ApplicationHandle alloc];
      v11 = -[ApplicationHandle initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:](v10, "initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:", [v37 longLongValue], -[DownloadEntity persistentID](self, "persistentID"), allAssetCookies);
      if ([phaseCopy isEqualToString:SSDownloadPhaseCanceled])
      {
        if ([v33 BOOLValue] && (objc_msgSend(*(&v32 + 1), "BOOLValue") & 1) == 0)
        {
          [(DownloadsChangeset *)v5 addCanceledAppDataRestoreID:allAssetCookies];
        }

        if (([v35 BOOLValue] & 1) == 0)
        {
          [(DownloadsChangeset *)v5 addCanceledAppWithHandle:v11];
          [ApplicationWorkspaceState incompleteNotificationForCanceledDownload:[(DownloadEntity *)self persistentID] bundleIdentifier:allAssetCookies];
        }
      }

      else if (([v35 BOOLValue] & 1) == 0)
      {
        [(DownloadsChangeset *)v5 addFinishedAppWithHandle:v11];
      }
    }
  }

LABEL_19:
  if (v32)
  {
    v12 = [SSSQLiteComparisonPredicate predicateWithProperty:@"client_id" equalToValue:?];
    v13 = [SSSQLiteComparisonPredicate predicateWithProperty:@"wake_up_on_finish" equalToLongLong:1];
    v14 = [NSArray arrayWithObjects:v13, v12, 0];
    v15 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v14];

    database2 = [(DownloadEntity *)self database];
    v17 = [PersistentDownloadManagerEntity anyInDatabase:database2 predicate:v15];

    if (v17)
    {
      v18 = [NSArray alloc];
      v19 = [v18 initWithObjects:{*(&v34 + 1), 0}];
      v20 = [SSAppWakeRequest newsstandFinishRequestWithAppIdentifier:v32 issueIdentifiers:v19];
      if (v20)
      {
        [(DownloadsChangeset *)v5 addSSAppWakeRequest:v20];
      }
    }
  }

  if (![v35 BOOLValue])
  {
    if ([v34 isEqualToString:SSDownloadKindInAppContent])
    {
      persistentID2 = [(DownloadEntity *)self persistentID];
    }

    else
    {
      v23 = [(DownloadEntity *)self addPersistentDownloadsWithClientID:v32 kind:v34];
      persistentID2 = [(DownloadEntity *)self persistentID];
      if (v23 < 1)
      {
        goto LABEL_27;
      }
    }

    v24 = [NSDictionary alloc];
    v25 = [v24 initWithObjectsAndKeys:{phaseCopy, SSDownloadPropertyDownloadPhase, 0}];
    [(DownloadEntity *)self setValue:phaseCopy forProperty:@"download_state.phase"];
    [(DownloadsChangeset *)v5 addDownloadChangeTypes:10];
    [(DownloadsChangeset *)v5 addRemovedPersistentDownloadID:persistentID2];
    [(DownloadsChangeset *)v5 addStatusChangedDownloadID:persistentID2];
    [(DownloadsChangeset *)v5 setChangedDownloadProperties:v25];

    v22 = 1;
    goto LABEL_34;
  }

  persistentID2 = [(DownloadEntity *)self persistentID];
LABEL_27:
  if ([(DownloadEntity *)self deleteFromDatabase])
  {
    [(DownloadsChangeset *)v5 addDownloadChangeTypes:8];
    [(DownloadsChangeset *)v5 addRemovedDownloadID:persistentID2];
  }

  v22 = 0;
LABEL_34:
  [(DownloadsChangeset *)v5 addDownloadKind:v34];
  [(DownloadsChangeset *)v5 addFinishedDownloadKind:v34];
  [(DownloadsChangeset *)v5 removeDownloadFromPipelineWithID:persistentID2];
  if (*(&v35 + 1) && ([*(&v33 + 1) BOOLValue] & 1) == 0)
  {
    v26 = objc_alloc_init(NSMutableDictionary);
    [v26 setObject:*(&v35 + 1) forKey:@"store_account_id"];
    if ([phaseCopy isEqualToString:SSDownloadPhaseCanceled])
    {
      if (*(&v31 + 1))
      {
        goto LABEL_42;
      }
    }

    else if (v36 && *(&v36 + 1))
    {
      [v26 setObject:? forKey:?];
LABEL_42:
      [v26 setObject:? forKey:?];
      v27 = [[FinishedDownloadEntity alloc] initWithPropertyValues:v26 inDatabase:database];
      if (v27)
      {
        if (v22)
        {
          v28 = [NSNumber numberWithBool:1];
          [(DownloadEntity *)self setValue:v28 forProperty:@"download_state.is_server_finished"];
        }

        [(DownloadsChangeset *)v5 addDownloadChangeTypes:4];
      }
    }
  }

  for (i = 12; i != -1; --i)
  {
  }

  return v5;
}

- (unint64_t)itemIdentifier
{
  v2 = [(DownloadEntity *)self valueForProperty:@"store_item_id"];
  v3 = SSGetItemIdentifierFromValue();

  return v3;
}

- (id)rentalInformation
{
  copyStoreDownloadMetadata = [(DownloadEntity *)self copyStoreDownloadMetadata];
  sinfs = [copyStoreDownloadMetadata sinfs];
  if (sinfs)
  {
    rentalID = [[DownloadDRM alloc] initWithSinfArray:sinfs];
    sinfsArray = [(DownloadDRM *)rentalID sinfsArray];
    v6 = [sinfsArray copyValueForProperty:@"SinfPropertyRentalInformation" error:0];
LABEL_6:
    v9 = v6;
    goto LABEL_7;
  }

  rentalID = [copyStoreDownloadMetadata rentalID];
  v7 = +[SSAccountStore defaultStore];
  activeAccount = [v7 activeAccount];
  sinfsArray = [activeAccount uniqueIdentifier];

  v9 = 0;
  if (rentalID && sinfsArray)
  {
    v6 = sub_1000B23FC([sinfsArray unsignedLongLongValue], -[DownloadDRM unsignedLongLongValue](rentalID, "unsignedLongLongValue"));
    goto LABEL_6;
  }

LABEL_7:

  if (v9)
  {
    v10 = +[NSMutableDictionary dictionary];
    v11 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v9 rentalStartTime]);
    v12 = sub_1000AECB8();
    [v10 setObject:v11 forKey:v12];

    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 rentalDuration]);
    v14 = sub_1000AEC88();
    [v10 setObject:v13 forKey:v14];

    v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 playbackDuration]);
    v16 = sub_1000AEC98();
    [v10 setObject:v15 forKey:v16];

    if ([v9 playbackStartTime] != -1)
    {
      v17 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v9 playbackStartTime]);
      v18 = sub_1000AECA8();
      [v10 setObject:v17 forKey:v18];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)retryDownload
{
  v3 = objc_alloc_init(DownloadsChangeset);
  persistentID = [(DownloadEntity *)self persistentID];
  [(DownloadsChangeset *)v3 addDownloadToPipelineWithID:persistentID];
  v12[0] = @"bundle_id";
  v12[1] = @"kind";
  v12[2] = @"transaction_id";
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  [(DownloadEntity *)self getValues:v10 forProperties:v12 count:3];
  if (SSDownloadKindIsSoftwareKind())
  {
    v5 = [ApplicationHandle alloc];
    longLongValue = [v11 longLongValue];
    v7 = [(ApplicationHandle *)v5 initWithTransactionIdentifier:longLongValue downloadIdentifier:persistentID bundleIdentifier:v10[0]];
    [(DownloadsChangeset *)v3 addRetryAppWithHandle:v7];
  }

  for (i = 2; i != -1; --i)
  {
  }

  return v3;
}

- (id)setAssetsUsingDownload:(id)download
{
  downloadCopy = download;
  v35 = objc_alloc_init(DownloadsChangeset);
  database = [(DownloadEntity *)self database];
  v6 = [NSNumber numberWithLongLong:[(DownloadEntity *)self persistentID]];
  v7 = objc_alloc_init(NSMutableSet);
  [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToValue:v6];
  v31 = v33 = database;
  v8 = [DownloadAssetEntity queryWithDatabase:database predicate:?];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000B5898;
  v44[3] = &unk_100327A50;
  v9 = v7;
  v45 = v9;
  v30 = v8;
  [v8 enumeratePersistentIDsUsingBlock:v44];
  v32 = downloadCopy;
  [downloadCopy assets];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v10 = [(DownloadsChangeset *)obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        [v14 setValue:v6 forProperty:@"download_id"];
        v15 = [(DownloadEntity *)self _databaseAssetForAsset:v14];
        if (v15)
        {
          v16 = v15;
          propertyValues = [v14 propertyValues];
          [(DownloadAssetEntity *)v16 setValuesWithDictionary:propertyValues];
        }

        else
        {
          v18 = [DownloadAssetEntity alloc];
          propertyValues2 = [v14 propertyValues];
          v16 = [(DownloadAssetEntity *)v18 initWithPropertyValues:propertyValues2 inDatabase:v33];

          if (!v16)
          {
            v22 = obj;
            goto LABEL_23;
          }
        }

        copyStoreDownloadKeyCookie = [(DownloadAssetEntity *)v16 copyStoreDownloadKeyCookie];
        if (copyStoreDownloadKeyCookie)
        {
          [(DownloadsChangeset *)v35 addHTTPCookie:copyStoreDownloadKeyCookie];
        }

        v21 = [NSNumber numberWithLongLong:[(DownloadAssetEntity *)v16 persistentID]];
        [v9 removeObject:v21];
      }

      v11 = [(DownloadsChangeset *)obj countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = v9;
  v23 = [(DownloadsChangeset *)v22 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
LABEL_15:
    v26 = 0;
    while (1)
    {
      if (*v37 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = -[DownloadAssetEntity initWithPersistentID:inDatabase:]([DownloadAssetEntity alloc], "initWithPersistentID:inDatabase:", [*(*(&v36 + 1) + 8 * v26) longLongValue], v33);
      deleteFromDatabase = [(DownloadAssetEntity *)v27 deleteFromDatabase];

      if (!deleteFromDatabase)
      {
        break;
      }

      if (v24 == ++v26)
      {
        v24 = [(DownloadsChangeset *)v22 countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v24)
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }
    }

LABEL_23:

    v22 = v35;
    v35 = 0;
  }

LABEL_24:

  return v35;
}

+ (id)databasePropertyToSetClientProperty:(id)property
{
  propertyCopy = property;
  v4 = [qword_100383E38 objectForKey:propertyCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [qword_100383E30 objectForKey:propertyCopy];
  }

  v7 = v6;

  return v7;
}

+ (id)disambiguatedSQLForProperty:(id)property
{
  propertyCopy = property;
  v5 = [qword_100383E00 objectForKey:propertyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___DownloadEntity;
    v7 = objc_msgSendSuper2(&v10, "disambiguatedSQLForProperty:", propertyCopy);
  }

  v8 = v7;

  return v8;
}

- (BOOL)deleteFromDatabase
{
  [(DownloadEntity *)self _deleteTransaction];
  v9.receiver = self;
  v9.super_class = DownloadEntity;
  deleteFromDatabase = [(DownloadEntity *)&v9 deleteFromDatabase];
  persistentID = [(DownloadEntity *)self persistentID];
  [(DownloadEntity *)self deleteScratchDirectory];
  if (deleteFromDatabase)
  {
    v5 = +[DownloadsDatabase downloadsDatabase];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B5B50;
    v8[3] = &unk_100327A70;
    v8[4] = persistentID;
    v6 = [v5 modifyExternalUsingTransactionBlock:v8];
  }

  return deleteFromDatabase;
}

- (void)deleteScratchDirectory
{
  persistentID = [(DownloadEntity *)self persistentID];
  v4 = [(DownloadEntity *)self valueForProperty:@"kind"];
  v6 = [ScratchManager directoryPathForDownloadID:persistentID kind:v4 createIfNeeded:0];

  v5 = objc_alloc_init(NSFileManager);
  if ([v5 fileExistsAtPath:v6])
  {
    [v5 removeItemAtPath:v6 error:0];
  }
}

- (id)_databaseAssetForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [assetCopy valueForProperty:@"asset_type"];
  if (v5)
  {
    v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:[(DownloadEntity *)self persistentID]];
    v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"asset_type" equalToValue:v5];
    v8 = [assetCopy valueForProperty:@"url"];
    if (v8)
    {
      [SSSQLiteComparisonPredicate predicateWithProperty:@"url" equalToValue:v8];
    }

    else
    {
      [SSSQLiteNullPredicate isNullPredicateWithProperty:@"url"];
    }
    v10 = ;
    v11 = [NSArray arrayWithObjects:v6, v7, v10, 0];
    v12 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v11];

    database = [(DownloadEntity *)self database];
    v9 = [DownloadAssetEntity anyInDatabase:database predicate:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_deleteTransaction
{
  v3 = [(DownloadEntity *)self valueForProperty:@"transaction_id"];
  longLongValue = [v3 longLongValue];

  v5 = [TransactionEntity alloc];
  database = [(DownloadEntity *)self database];
  v7 = [(TransactionEntity *)v5 initWithPersistentID:longLongValue inDatabase:database];

  [(TransactionEntity *)v7 deleteFromDatabase];
}

- (void)_resetAssetProperty:(id)property
{
  propertyCopy = property;
  database = [(DownloadEntity *)self database];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToLongLong:[(DownloadEntity *)self persistentID]];
  v7 = [DownloadAssetEntity queryWithDatabase:database predicate:v6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B5FB4;
  v10[3] = &unk_1003279C0;
  v11 = database;
  v12 = propertyCopy;
  v8 = propertyCopy;
  v9 = database;
  [v7 enumeratePersistentIDsUsingBlock:v10];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"download_state.auto_update_state", @"blocked_reason", @"download_state.blocked_reason", @"can_cancel", @"download_state.can_cancel", @"can_pause", @"download_state.can_pause", @"can_prioritize", @"download_state.can_prioritize", @"audit_token_data", @"client.audit_token_data", @"phase", @"download_state.phase", @"did_restore_data", @"download_state.did_restore_data", @"bundle_id", @"application_id.bundle_id", @"download_error", @"download_state.download_error", @"has_restore_data", @"download_state.has_restore_data", @"is_restricted", @"download_state.is_restricted", @"is_server_finished", @"download_state.is_server_finished", @"last_odr_action", @"download_state.last_odr_action", @"restore_data_size", @"download_state.restore_data_size", @"restore_state", @"download_state.restore_state", @"store_queue_refresh_count", @"download_state.store_queue_refresh_count", @"auto_update_state", @"IFNULL(download_state.auto_update_state, 0)", @"blocked_reason", @"IFNULL(download_state.blocked_reason, 0)", @"can_cancel", @"IFNULL(download_state.can_cancel, 1)", @"can_pause", @"IFNULL(download_state.can_pause, 1)", @"can_prioritize", @"IFNULL(download_state.can_prioritize, 1)", @"phase", @"IFNULL(download_state.phase, SSDownloadPhaseWaiting)", @"bundle_id", @"IFNULL(application_id.bundle_id, download.client_id)", @"has_restore_data", @"IFNULL(download_state.has_restore_data, -1)", @"is_restricted", @"IFNULL(download_state.is_restricted, 0)", @"is_server_finished", @"IFNULL(download_state.is_server_finished, 0)", @"restore_data_size", @"IFNULL(download_state.restore_data_size, 0)", @"restore_state", @"IFNULL(download_state.restore_state, 0)", 0}];
    v4 = qword_100383E08;
    qword_100383E08 = v3;

    v5 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"asset", @"client_id", @"client", @"download_id", @"download_state", @"effective_client_id", @"application_id", 0}];
    v6 = qword_100383E10;
    qword_100383E10 = v5;

    v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"download_state", @"download_state.auto_update_state", @"download_state", @"download_state.blocked_reason", @"download_state", @"download_state.can_cancel", @"download_state", @"download_state.can_pause", @"download_state", @"download_state.can_prioritize", @"client", @"client.audit_token_data", @"download_state", @"download_state.did_restore_data", @"download_state", @"download_state.phase", @"application_id", @"application_id.bundle_id", @"download_state", @"download_state.download_error", @"download_state", @"download_state.has_restore_data", @"download_state", @"download_state.is_restricted", @"download_state", @"download_state.is_server_finished", @"download_state", @"download_state.last_odr_action", @"download_state", @"download_state.restore_data_size", @"download_state", @"download_state.restore_state", @"download_state", @"IFNULL(download_state.auto_update_state, 0)", @"download_state", @"IFNULL(download_state.blocked_reason, 0)", @"download_state", @"IFNULL(download_state.can_cancel, 1)", @"download_state", @"IFNULL(download_state.can_pause, 1)", @"download_state", @"IFNULL(download_state.can_prioritize, 1)", @"download_state", @"IFNULL(download_state.phase, SSDownloadPhaseWaiting)", @"application_id", @"IFNULL(application_id.bundle_id, download.client_id)", @"download_state", @"IFNULL(download_state.has_restore_data, -1)", @"download_state", @"IFNULL(download_state.is_restricted, 0)", @"download_state", @"IFNULL(download_state.is_server_finished, 0)", @"download_state", @"IFNULL(download_state.restore_data_size, 0)", @"download_state", @"IFNULL(download_state.restore_state, 0)", @"download_state", @"download_state.store_queue_refresh_count", 0}];
    v8 = qword_100383E18;
    qword_100383E18 = v7;

    v9 = [[NSSet alloc] initWithObjects:{@"asset", @"download_state", 0}];
    v10 = qword_100383E20;
    qword_100383E20 = v9;

    v11 = objc_msgSend( [NSDictionary alloc],  "initWithObjectsAndKeys:",  @"auto_update_time",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.blocked_reason",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.can_cancel",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.can_pause",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.can_prioritize",  @"LEFT OUTER JOIN client ON download.client_id = client.client_id",  @"client.audit_token_data",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.did_restore_data",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.phase",  @"LEFT OUTER JOIN application_id ON download.effective_client_id = application_id.effective_client_id",  @"application_id.bundle_id",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.download_error",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.has_restore_data",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.is_restricted",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.is_server_finished",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.last_odr_action",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.restore_data_size",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"download_state.restore_state",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"IFNULL(download_state.auto_update_state, 0)",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"IFNULL(download_state.blocked_reason, 0)",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"IFNULL(download_state.can_cancel, 1)",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"IFNULL(download_state.can_pause, 1)",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"IFNULL(download_state.can_prioritize, 1)",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"IFNULL(download_state.phase, SSDownloadPhaseWaiting)",  @"LEFT OUTER JOIN application_id ON download.effective_client_id = application_id.effective_client_id",  @"IFNULL(application_id.bundle_id, download.client_id)",  @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",  @"IFNULL(download_state.has_restore_data, -1)",
            @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",
            @"IFNULL(download_state.is_restricted, 0)",
            @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",
            @"IFNULL(download_state.is_server_finished, 0)",
            @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",
            @"IFNULL(download_state.restore_data_size, 0)",
            @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",
            @"IFNULL(download_state.restore_state, 0)",
            @"LEFT OUTER JOIN download_state ON download.pid = download_state.download_id",
            @"download_state.store_queue_refresh_count",
            0);
    v12 = qword_100383E28;
    qword_100383E28 = v11;

    v13 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{@"client.audit_token_data", @"client.audit_token_data", @"application_id.bundle_id", @"application_id.bundle_id", @"IFNULL(download_state.auto_update_state, 0)", @"IFNULL(download_state.auto_update_state, 0)", @"IFNULL(download_state.blocked_reason, 0)", @"IFNULL(download_state.blocked_reason, 0)", @"IFNULL(download_state.can_cancel, 1)", @"IFNULL(download_state.can_cancel, 1)", @"IFNULL(download_state.can_pause, 1)", @"IFNULL(download_state.can_pause, 1)", @"IFNULL(download_state.can_prioritize, 1)", @"IFNULL(download_state.can_prioritize, 1)", @"IFNULL(download_state.phase, SSDownloadPhaseWaiting)", @"IFNULL(download_state.phase, SSDownloadPhaseWaiting)", @"IFNULL(application_id.bundle_id, download.client_id)", @"IFNULL(application_id.bundle_id, download.client_id)", @"IFNULL(download_state.has_restore_data, -1)", @"IFNULL(download_state.has_restore_data, -1)", @"IFNULL(download_state.is_restricted, 0)", @"IFNULL(download_state.is_restricted, 0)", @"IFNULL(download_state.is_server_finished, 0)", @"IFNULL(download_state.is_server_finished, 0)", @"IFNULL(download_state.restore_data_size, 0)", @"IFNULL(download_state.restore_data_size, 0)", @"IFNULL(download_state.restore_state, 0)", @"IFNULL(download_state.restore_state, 0)", @"IFNULL(download.store_item_id, 0)", @"IFNULL(download.store_item_id, 0)", 0}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = [[NSArray alloc] initWithObjects:{@"airplay_content_type", @"artist_name", @"artwork_is_prerendered", @"artwork_template_name", @"is_automatic", @"auto_update_time", @"download_state.blocked_reason", @"bundle_id", @"cancel_url", @"download_state.can_cancel", @"download_state.can_pause", @"download_state.can_prioritize", @"client_id", @"collection_artist_name", @"collection_group_count", @"collection_item_count", @"collection_name", @"composer_name", @"download_state.did_restore_data", @"document_target_id", @"download_state.phase", @"download_permalink", @"duet_transfer_type", @"duration_in_ms", @"effective_client_id", @"enable_extensions", @"download_state.download_error", @"episode_id", @"episode_sort_id", @"genre_name", @"handler_id", @"download_state.has_restore_data", @"index_in_collection", @"index_in_collection_group", @"is_compilation", @"is_device_based_vpp", @"is_explicit", @"is_hd", @"is_hls", @"is_store_queued", @"is_premium", @"is_private", @"is_purchase", @"is_redownload", @"is_rental", @"is_restore", @"download_state.is_restricted", @"download_state.is_server_finished", @"is_sample", @"is_shared", @"is_from_store", @"is_tv_template", @"is_music_show", @"show_composer", @"work_name", @"kind", @"download_state.last_odr_action", @"library_id", @"long_description", @"long_season_description", @"network_name"}];
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          v20 = [self disambiguatedSQLForProperty:v19];
          [v13 setObject:v20 forKey:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v16);
    }

    v21 = [v13 copy];
    v22 = qword_100383E00;
    qword_100383E00 = v21;

    v33 = [NSDictionary alloc];
    v23 = SSDownloadPropertyClientBundleIdentifier;
    v24 = SSDownloadPropertyDownloadPhase;
    v25 = SSDownloadPropertyCanPrioritize;
    v26 = SSDownloadPropertyCanPause;
    v27 = SSDownloadPropertyCanCancel;
    v28 = SSDownloadPropertyIsContentRestricted;
    v29 = [v33 initWithObjectsAndKeys:{@"airplay_content_type", SSDownloadPropertyAirPlayContentType, @"artist_name", SSDownloadPropertyArtistName, @"artwork_is_prerendered", SSDownloadPropertyArtworkIsPrerendered, @"artwork_template_name", SSDownloadPropertyArtworkTemplateName, @"is_automatic", SSDownloadPropertyAutomaticType, @"auto_update_time", SSDownloadPropertyAutoUpdateTime, @"beta_external_version_identifier", SSDownloadPropertyBetaExternalVersionIdentifier, @"bundle_id", SSDownloadPropertyBundleIdentifier, @"bundle_version", SSDownloadPropertyBundleVersion, @"cancel_url", SSDownloadPropertyStoreCancelURL, @"collection_artist_name", SSDownloadPropertyCollectionArtistName, @"collection_group_count", SSDownloadPropertyNumberOfCollectionsInGroup, @"collection_item_count", SSDownloadPropertyNumberOfItemsInCollection, @"collection_name", SSDownloadPropertyCollectionName, @"composer_name", SSDownloadPropertyComposerName, @"document_target_id", SSDownloadPropertyDocumentTargetIdentifier, @"download_permalink", SSDownloadPropertyDownloadPermalink, @"duet_transfer_type", SSDownloadPropertyDuetTransferType, @"duration_in_ms", SSDownloadPropertyDurationInMilliseconds, @"episode_id", SSDownloadPropertyEpisodeIdentifier, @"episode_sort_id", SSDownloadPropertyEpisodeSortIdentifier, @"enable_extensions", SSDownloadPropertyEnableExtensions, @"download_state.download_error", SSDownloadPropertyEncodedErrorData, @"genre_name", SSDownloadPropertyGenre, @"handler_id", SSDownloadPropertyHandlerID, @"has_messages_extension", SSDownloadPropertyHasMessagesExtension, @"is_hls", SSDownloadPropertyIsHLS, @"hls_playlist_url", SSDownloadPropertyHLSPlaylistURL, @"index_in_collection", SSDownloadPropertyIndexInCollection, @"index_in_collection_group", SSDownloadPropertyIndexInCollectionGroup, @"is_compilation"}];
    v30 = qword_100383E30;
    qword_100383E30 = v29;

    v31 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"download_state.can_cancel", v27, @"download_state.can_pause", v26, @"application_id.bundle_id", v23, @"download_state.can_prioritize", v25, @"download_state.phase", v24, @"download_state.is_restricted", v28, 0}];
    v32 = qword_100383E38;
    qword_100383E38 = v31;
  }
}

@end