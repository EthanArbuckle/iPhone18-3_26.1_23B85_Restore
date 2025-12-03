@interface PurchaseDownloadsTransaction
- (BOOL)_addPlaceholderDownloadForPurchase:(id)purchase clientIdentifier:(id)identifier;
- (BOOL)_cancelDownloadForPurchaseIdentifier:(int64_t)identifier;
- (BOOL)_insertPurchases:(id)purchases forClient:(id)client orderIdentifier:(double)identifier orderSpacing:(double)spacing;
- (BOOL)addPurchases:(id)purchases forClient:(id)client;
- (BOOL)cancelPurchaseWithIdentifier:(int64_t)identifier applyingProperties:(id)properties;
- (BOOL)deletePurchaseWithIdentifier:(int64_t)identifier;
- (BOOL)insertPurchases:(id)purchases afterPurchaseWithIdentifier:(int64_t)identifier forClient:(id)client;
- (BOOL)movePurchasesWithIdentifiers:(id)identifiers afterPurchaseWithIdentifier:(int64_t)identifier;
- (BOOL)replaceDownloadsInQuery:(id)query withStoreDownloads:(id)downloads accountID:(id)d;
- (BOOL)resetPurchasedAutoUpdateForStoreItemID:(id)d;
- (double)_maxOrderIdentifier;
- (id)_addEntityForPurchase:(id)purchase managerIdentifier:(int64_t)identifier orderIdentifier:(double)orderIdentifier;
- (id)existingDownloadForPurchase:(id)purchase;
- (id)replacePurchase:(id)purchase withDownloadQueueResponse:(id)response withClientIdentifier:(id)identifier;
- (int64_t)_nextBatchIdentifier;
- (void)_getInsertOrderID:(double *)d nextOrderID:(double *)iD afterPurchaseID:(int64_t)purchaseID;
@end

@implementation PurchaseDownloadsTransaction

- (BOOL)addPurchases:(id)purchases forClient:(id)client
{
  clientCopy = client;
  purchasesCopy = purchases;
  [(PurchaseDownloadsTransaction *)self _maxOrderIdentifier];
  LOBYTE(self) = [PurchaseDownloadsTransaction _insertPurchases:"_insertPurchases:forClient:orderIdentifier:orderSpacing:" forClient:purchasesCopy orderIdentifier:clientCopy orderSpacing:?];

  return self;
}

- (BOOL)cancelPurchaseWithIdentifier:(int64_t)identifier applyingProperties:(id)properties
{
  propertiesCopy = properties;
  if ([(PurchaseDownloadsTransaction *)self _cancelDownloadForPurchaseIdentifier:identifier])
  {
    v7 = [PurchaseEntity alloc];
    database = [(DownloadsSession *)self database];
    v9 = [(PurchaseEntity *)v7 initWithPersistentID:identifier inDatabase:database];

    if ([propertiesCopy count])
    {
      v10 = [propertiesCopy mutableCopy];
      v11 = [NSNumber numberWithInteger:2];
      [v10 setObject:v11 forKey:@"state"];

      v12 = [(PurchaseEntity *)v9 setValuesWithDictionary:v10];
    }

    else
    {
      v10 = [NSNumber numberWithInteger:2];
      v12 = [(PurchaseEntity *)v9 setValue:v10 forProperty:@"state"];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)deletePurchaseWithIdentifier:(int64_t)identifier
{
  v5 = [(PurchaseDownloadsTransaction *)self _cancelDownloadForPurchaseIdentifier:?];
  if (v5)
  {
    v6 = [PurchaseEntity alloc];
    database = [(DownloadsSession *)self database];
    v8 = [(PurchaseEntity *)v6 initWithPersistentID:identifier inDatabase:database];

    LOBYTE(database) = [(PurchaseEntity *)v8 deleteFromDatabase];
    LOBYTE(v5) = database;
  }

  return v5;
}

- (id)existingDownloadForPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1002214F4;
  v19 = sub_100221504;
  v20 = 0;
  v5 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier];
  v6 = v5;
  if (v5)
  {
    longLongValue = [v5 longLongValue];
    if (longLongValue)
    {
      v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_item_id" equalToLongLong:longLongValue];
      database = [(DownloadsSession *)self database];
      v10 = [Download queryWithDatabase:database predicate:v8];

      v21[0] = @"IFNULL(download_state.phase, SSDownloadPhaseWaiting)";
      v21[1] = @"kind";
      v21[2] = @"is_purchase";
      v21[3] = @"purchase_id";
      v11 = [NSArray arrayWithObjects:v21 count:4];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10022150C;
      v14[3] = &unk_10032CB48;
      v14[4] = self;
      v14[5] = &v15;
      [v10 enumerateMemoryEntitiesWithProperties:v11 usingBlock:v14];
    }
  }

  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (BOOL)insertPurchases:(id)purchases afterPurchaseWithIdentifier:(int64_t)identifier forClient:(id)client
{
  purchasesCopy = purchases;
  clientCopy = client;
  v14 = 0.0;
  v15 = 0.0;
  [(PurchaseDownloadsTransaction *)self _getInsertOrderID:&v15 nextOrderID:&v14 afterPurchaseID:identifier];
  if (v14 <= 0.0)
  {
    v11 = 100.0;
  }

  else
  {
    v10 = vabdd_f64(v14, v15);
    v11 = v10 / ([purchasesCopy count] + 1);
  }

  v12 = [(PurchaseDownloadsTransaction *)self _insertPurchases:purchasesCopy forClient:clientCopy orderIdentifier:v15 orderSpacing:v11];

  return v12;
}

- (BOOL)movePurchasesWithIdentifiers:(id)identifiers afterPurchaseWithIdentifier:(int64_t)identifier
{
  identifiersCopy = identifiers;
  v25 = 0.0;
  v26 = 0.0;
  [(PurchaseDownloadsTransaction *)self _getInsertOrderID:&v26 nextOrderID:&v25 afterPurchaseID:identifier];
  if (v25 <= 0.0)
  {
    v8 = 100.0;
  }

  else
  {
    v7 = vabdd_f64(v25, v26);
    v8 = v7 / ([identifiersCopy count] + 1);
  }

  database = [(DownloadsSession *)self database];
  v10 = v26;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = identifiersCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v10 = v8 + v10;
        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [PurchaseEntity alloc];
        v18 = -[PurchaseEntity initWithPersistentID:inDatabase:](v17, "initWithPersistentID:inDatabase:", [v16 longLongValue], database);
        v19 = [NSNumber numberWithDouble:v10];
        [(PurchaseEntity *)v18 setValue:v19 forProperty:@"order_id"];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v13);
  }

  return 1;
}

- (BOOL)resetPurchasedAutoUpdateForStoreItemID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [v5 setEntityClass:objc_opt_class()];
  [v5 setLimitCount:1];
  v20 = @"auto_update_time";
  v6 = [NSArray arrayWithObjects:&v20 count:1];
  [v5 setOrderingProperties:v6];

  v19 = SSSQLiteOrderDescending;
  v7 = [NSArray arrayWithObjects:&v19 count:1];
  [v5 setOrderingDirections:v7];

  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_private" equalToValue:&__kCFBooleanTrue];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_automatic" equalToValue:&off_10034C210];
  v10 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_item_id" equalToValue:dCopy];

  v18[0] = v8;
  v18[1] = v9;
  v18[2] = v10;
  v11 = [NSArray arrayWithObjects:v18 count:3];
  v12 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  [v5 setPredicate:v12];

  v13 = [SSSQLiteQuery alloc];
  database = [(DownloadsSession *)self database];
  v15 = [v13 initWithDatabase:database descriptor:v5];

  copyEntityIdentifiers = [v15 copyEntityIdentifiers];
  LOBYTE(self) = [(DownloadsTransaction *)self resetDownloadsWithIdentifiers:copyEntityIdentifiers isUserInitiated:0];

  return self;
}

- (BOOL)replaceDownloadsInQuery:(id)query withStoreDownloads:(id)downloads accountID:(id)d
{
  queryCopy = query;
  downloadsCopy = downloads;
  dCopy = d;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v30 = queryCopy;
  copyEntityIdentifiers = [queryCopy copyEntityIdentifiers];
  v11 = objc_alloc_init(NSMutableArray);
  v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(downloadsCopy, "count")}];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100222090;
  v32[3] = &unk_10032CB70;
  v14 = dCopy;
  v33 = v14;
  selfCopy = self;
  v15 = v12;
  v35 = v15;
  v16 = v13;
  v36 = v16;
  v39 = &v40;
  v17 = v11;
  v37 = v17;
  v18 = copyEntityIdentifiers;
  v38 = v18;
  [downloadsCopy enumerateObjectsUsingBlock:v32];
  if (*(v41 + 24) == 1 && [v18 count])
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v19 shouldLog];
    shouldLogToDisk = [v19 shouldLogToDisk];
    oSLogObject = [v19 OSLogObject];
    v23 = oSLogObject;
    if (shouldLogToDisk)
    {
      shouldLog |= 2u;
    }

    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      shouldLog &= 2u;
    }

    if (shouldLog)
    {
      v24 = objc_opt_class();
      v25 = [v18 count];
      v44 = 138412546;
      v45 = v24;
      v46 = 2048;
      v47 = v25;
      LODWORD(v29) = 22;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_13:

        [(DownloadsTransaction *)self finishDownloadsWithIdentifiers:v18 finalPhase:SSDownloadPhaseCanceled];
        goto LABEL_14;
      }

      v23 = [NSString stringWithCString:v26 encoding:4, &v44, v29];
      free(v26);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (*(v41 + 24) == 1 && [v15 count])
  {
    [AppStoreUtility sendSoftwareDownloads:v15 withReason:@"download queue request"];
  }

  if (*(v41 + 24) == 1 && [v16 count])
  {
    [BookAssetDaemonUtility sendBookStoreDownloads:v16 withReason:@"download queue request"];
  }

  v27 = *(v41 + 24);

  _Block_object_dispose(&v40, 8);
  return v27 & 1;
}

- (id)replacePurchase:(id)purchase withDownloadQueueResponse:(id)response withClientIdentifier:(id)identifier
{
  purchaseCopy = purchase;
  responseCopy = response;
  identifierCopy = identifier;
  v9 = +[NSMutableOrderedSet orderedSet];
  downloads = [responseCopy downloads];
  v11 = objc_alloc_init(NSMutableDictionary);
  v140 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(downloads, "count")}];
  v137 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(downloads, "count")}];
  if ([downloads count] == 1)
  {
    v12 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyKind];
    if (v12 && !SSDownloadKindIsMediaKind())
    {
      buyParameters = 0;
    }

    else
    {
      buyParameters = [purchaseCopy buyParameters];
    }
  }

  else
  {
    buyParameters = 0;
  }

  v13 = +[ApplicationWorkspace defaultWorkspace];
  isMultiUser = [v13 isMultiUser];

  v14 = [(DownloadsSession *)self placeholderDownloadForPurchase:purchaseCopy];
  v135 = v14;
  if (v14)
  {
    persistentID = [v14 persistentID];
  }

  else
  {
    persistentID = 0;
  }

  downloadPolicy = [purchaseCopy downloadPolicy];
  v17 = &CFDictionaryGetValue_ptr;
  v134 = persistentID;
  if (downloadPolicy)
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [v18 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v20 &= 2u;
    }

    if (!v20)
    {

      networkConstraints = 0;
      goto LABEL_38;
    }

    v22 = objc_opt_class();
    v167 = 138412546;
    v168 = v22;
    v169 = 2112;
    v170 = downloadPolicy;
    LODWORD(v130) = 22;
    v128 = &v167;
    v23 = _os_log_send_and_compose_impl();

    if (v23)
    {
      v130 = [NSString stringWithCString:v23 encoding:4, &v167, v130];
      free(v23);
      v128 = v130;
      SSFileLog();
    }

    networkConstraints = 0;
  }

  else
  {
    networkConstraints = [purchaseCopy networkConstraints];
    if (!networkConstraints)
    {
      networkConstraints = 0;
      goto LABEL_39;
    }

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v26 = shouldLog2 | 2;
    }

    else
    {
      v26 = shouldLog2;
    }

    oSLogObject2 = [v18 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v26 &= 2u;
    }

    if (!v26)
    {

      goto LABEL_38;
    }

    v28 = objc_opt_class();
    v167 = 138412546;
    v168 = v28;
    v169 = 2112;
    v170 = networkConstraints;
    LODWORD(v130) = 22;
    v128 = &v167;
    v29 = _os_log_send_and_compose_impl();

    if (v29)
    {
      v1302 = [NSString stringWithCString:v29 encoding:4, &v167, v130];
      free(v29);
      v128 = v1302;
      SSFileLog();
    }
  }

  v17 = &CFDictionaryGetValue_ptr;
LABEL_38:

LABEL_39:
  requestProperties = [purchaseCopy requestProperties];
  uRLBagKey = [requestProperties URLBagKey];
  v33 = [uRLBagKey isEqualToString:@"subDownload"];

  v34 = &off_10034C210;
  v144 = v33;
  if (!v33)
  {
    v34 = 0;
  }

  v139 = v34;
  v148 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyEnableExtensions];
  userIdentifier = [responseCopy userIdentifier];
  filteredAssetTypes = [purchaseCopy filteredAssetTypes];
  v152 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyShouldCancelIfDuplicate];
  sharedDaemonConfig = [v17[412] sharedDaemonConfig];
  if (!sharedDaemonConfig)
  {
    sharedDaemonConfig = [v17[412] sharedConfig];
  }

  v136 = v11;
  shouldLog3 = [sharedDaemonConfig shouldLog];
  if ([sharedDaemonConfig shouldLogToDisk])
  {
    v37 = shouldLog3 | 2;
  }

  else
  {
    v37 = shouldLog3;
  }

  oSLogObject3 = [sharedDaemonConfig OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v37 &= 2u;
  }

  v146 = downloadPolicy;
  if (!v37)
  {
    goto LABEL_51;
  }

  v39 = responseCopy;
  v40 = objc_opt_class();
  persistentID2 = [v135 persistentID];
  v42 = [downloads count];
  v167 = 138413058;
  v168 = v40;
  v169 = 2048;
  v170 = persistentID2;
  v171 = 2048;
  v172 = v42;
  v173 = 2112;
  v174 = filteredAssetTypes;
  LODWORD(v130) = 42;
  v129 = &v167;
  v43 = _os_log_send_and_compose_impl();

  responseCopy = v39;
  downloadPolicy = v146;

  if (v43)
  {
    oSLogObject3 = [NSString stringWithCString:v43 encoding:4, &v167, v130];
    free(v43);
    v129 = oSLogObject3;
    SSFileLog();
LABEL_51:
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = downloads;
  v150 = [obj countByEnumeratingWithState:&v161 objects:v166 count:16];
  if (!v150)
  {
    v111 = 1;
LABEL_156:
    v112 = v136;
    goto LABEL_159;
  }

  v131 = responseCopy;
  v132 = purchaseCopy;
  v142 = *v162;
  v138 = SSDownloadPhaseCanceled;
  v143 = v9;
LABEL_54:
  v44 = 0;
  while (1)
  {
    if (*v162 != v142)
    {
      objc_enumerationMutation(obj);
    }

    v45 = *(*(&v161 + 1) + 8 * v44);
    v46 = [[Download alloc] initWithStoreDownload:v45];
    v47 = [NSNumber numberWithBool:0];
    [(Download *)v46 setValue:v47 forProperty:@"is_purchase"];

    v48 = [NSNumber numberWithBool:1];
    [(Download *)v46 setValue:v48 forProperty:@"is_from_store"];

    v49 = [NSNumber numberWithBool:isMultiUser];
    [(Download *)v46 setValue:v49 forProperty:@"is_shared"];

    if (downloadPolicy)
    {
      [(Download *)v46 setDownloadPolicy:downloadPolicy];
      v50 = v148;
    }

    else
    {
      v50 = v148;
      if (networkConstraints)
      {
        [(Download *)v46 unionNetworkConstraints:networkConstraints];
      }
    }

    if (userIdentifier)
    {
      [(Download *)v46 setValue:userIdentifier forProperty:@"store_account_id"];
    }

    if (v50)
    {
      [(Download *)v46 setValue:v50 forProperty:@"enable_extensions"];
    }

    if (buyParameters)
    {
      v51 = [(Download *)v46 valueForProperty:@"store_redownload_parameters"];

      if (!v51)
      {
        [(Download *)v46 setValue:buyParameters forProperty:@"store_redownload_parameters"];
      }
    }

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v52 = filteredAssetTypes;
    v53 = [v52 countByEnumeratingWithState:&v157 objects:v165 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v158;
      do
      {
        for (i = 0; i != v54; i = i + 1)
        {
          if (*v158 != v55)
          {
            objc_enumerationMutation(v52);
          }

          [(Download *)v46 removeAssetsWithAssetType:*(*(&v157 + 1) + 8 * i), v129];
        }

        v54 = [v52 countByEnumeratingWithState:&v157 objects:v165 count:16];
      }

      while (v54);
    }

    if (v152)
    {
      v57 = [(Download *)v46 valueForProperty:@"cancel_if_duplicate"];

      if (!v57)
      {
        [(Download *)v46 setValue:v152 forProperty:@"cancel_if_duplicate"];
      }
    }

    if (v144)
    {
      assets = [(Download *)v46 assets];
      v155[0] = _NSConcreteStackBlock;
      v155[1] = 3221225472;
      v155[2] = sub_1002243FC;
      v155[3] = &unk_10032CB98;
      v156 = v139;
      [assets enumerateObjectsUsingBlock:v155];
    }

    v129 = [(DownloadsSession *)self downloadForStoreDownload:v45, v129];
    kind = [v45 kind];
    IsSoftwareKind = SSDownloadKindIsSoftwareKind();

    if (!IsSoftwareKind)
    {
      break;
    }

    [v140 addObject:v46];
    if (!v129)
    {
      goto LABEL_97;
    }

    v62 = +[SSLogConfig sharedDaemonConfig];
    if (!v62)
    {
      v62 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v62 shouldLog];
    if ([v62 shouldLogToDisk])
    {
      v64 = shouldLog4 | 2;
    }

    else
    {
      v64 = shouldLog4;
    }

    oSLogObject4 = [v62 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
    {
      v66 = v64;
    }

    else
    {
      v66 = v64 & 2;
    }

    if (!v66)
    {
      goto LABEL_93;
    }

    v67 = objc_opt_class();
    v68 = v67;
    persistentID3 = [v129 persistentID];
    v167 = 138412546;
    v168 = v67;
    v169 = 2048;
    v170 = persistentID3;
    LODWORD(v130) = 22;
    v129 = &v167;
    v70 = _os_log_send_and_compose_impl();

    if (v70)
    {
      oSLogObject4 = [NSString stringWithCString:v70 encoding:4, &v167, v130];
      free(v70);
      v129 = oSLogObject4;
      SSFileLog();
LABEL_93:
    }

    -[DownloadsTransaction finishDownloadWithID:finalPhase:](self, "finishDownloadWithID:finalPhase:", [v129 persistentID], v138);
    persistentID7 = 0;
    v129 = 0;
LABEL_98:
    v74 = 1;
LABEL_99:
    v75 = [[NSNumber alloc] initWithLongLong:persistentID7];
    kind2 = [v45 kind];
    v77 = [ScratchManager directoryPathForDownloadID:persistentID7 kind:kind2 createIfNeeded:1];
    v78 = [v77 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

    [v45 writeToFile:v78 options:0 error:0];
    kind3 = [v45 kind];
    LODWORD(kind2) = SSDownloadKindIsSoftwareKind();

    if (kind2)
    {
      bundleIdentifier = [v45 bundleIdentifier];
      if (bundleIdentifier)
      {
        v81 = v74;
      }

      else
      {
        v81 = 0;
      }

      if (v81 == 1)
      {
        [v136 setObject:v75 forKey:bundleIdentifier];
      }
    }

    v9 = v143;
    [v143 addObject:{v75, v129}];

    v44 = v44 + 1;
    downloadPolicy = v146;
    if (v44 == v150)
    {
      v110 = [obj countByEnumeratingWithState:&v161 objects:v166 count:16];
      v150 = v110;
      if (!v110)
      {
        v111 = 1;
        responseCopy = v131;
        purchaseCopy = v132;
        goto LABEL_156;
      }

      goto LABEL_54;
    }
  }

  kind4 = [v45 kind];
  IsBookToShimKind = SSDownloadKindIsBookToShimKind();

  if (IsBookToShimKind)
  {
    [v137 addObject:v46];
LABEL_97:
    persistentID7 = 0;
    goto LABEL_98;
  }

  if (v129)
  {
    v82 = +[SSLogConfig sharedDaemonConfig];
    if (!v82)
    {
      v82 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v82 shouldLog];
    if ([v82 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject5 = [v82 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
    {
      v85 = shouldLog5;
    }

    else
    {
      v85 = shouldLog5 & 2;
    }

    if (v85)
    {
      v86 = objc_opt_class();
      persistentID4 = [v129 persistentID];
      v167 = 138412546;
      v168 = v86;
      v169 = 2048;
      v170 = persistentID4;
      LODWORD(v130) = 22;
      v129 = &v167;
      v88 = _os_log_send_and_compose_impl();

      if (v88)
      {
        oSLogObject5 = [NSString stringWithCString:v88 encoding:4, &v167, v130];
        free(v88);
        v129 = oSLogObject5;
        SSFileLog();
        goto LABEL_119;
      }
    }

    else
    {
LABEL_119:
    }

    v89 = -[DownloadsTransaction updateDownloadEntityWithIdentifier:withDownload:](self, "updateDownloadEntityWithIdentifier:withDownload:", [v129 persistentID], v46);
    persistentID5 = [v129 persistentID];
    if ((v89 & 1) == 0)
    {
      goto LABEL_158;
    }

    persistentID7 = persistentID5;
    v74 = 0;
    goto LABEL_99;
  }

  v91 = [obj count];
  v92 = +[SSLogConfig sharedDaemonConfig];
  v93 = v92;
  if (v91 == 1 && v135)
  {
    if (!v92)
    {
      v93 = +[SSLogConfig sharedConfig];
    }

    shouldLog6 = [v93 shouldLog];
    if ([v93 shouldLogToDisk])
    {
      shouldLog6 |= 2u;
    }

    oSLogObject6 = [v93 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_INFO))
    {
      v96 = shouldLog6;
    }

    else
    {
      v96 = shouldLog6 & 2;
    }

    if (v96)
    {
      v97 = objc_opt_class();
      persistentID6 = [v135 persistentID];
      v167 = 138412546;
      v168 = v97;
      v169 = 2048;
      v170 = persistentID6;
      LODWORD(v130) = 22;
      v129 = &v167;
      v99 = _os_log_send_and_compose_impl();

      if (v99)
      {
        oSLogObject6 = [NSString stringWithCString:v99 encoding:4, &v167, v130];
        free(v99);
        v129 = oSLogObject6;
        SSFileLog();
        goto LABEL_134;
      }
    }

    else
    {
LABEL_134:
    }

    v100 = -[DownloadsTransaction updateDownloadEntityWithIdentifier:withDownload:](self, "updateDownloadEntityWithIdentifier:withDownload:", [v135 persistentID], v46);
    persistentID7 = [v135 persistentID];

    v135 = 0;
    if ((v100 & 1) == 0)
    {
      goto LABEL_158;
    }

    v74 = 1;
    v129 = 0;
    goto LABEL_99;
  }

  if (!v92)
  {
    v93 = +[SSLogConfig sharedConfig];
  }

  shouldLog7 = [v93 shouldLog];
  if ([v93 shouldLogToDisk])
  {
    shouldLog7 |= 2u;
  }

  oSLogObject7 = [v93 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
  {
    v103 = shouldLog7;
  }

  else
  {
    v103 = shouldLog7 & 2;
  }

  if (v103)
  {
    v104 = objc_opt_class();
    v167 = 138412290;
    v168 = v104;
    LODWORD(v130) = 12;
    v129 = &v167;
    v105 = _os_log_send_and_compose_impl();

    if (v105)
    {
      oSLogObject7 = [NSString stringWithCString:v105 encoding:4, &v167, v130];
      free(v105);
      v129 = oSLogObject7;
      SSFileLog();
      goto LABEL_147;
    }
  }

  else
  {
LABEL_147:
  }

  v106 = [NSArray arrayWithObject:v46];
  if (v134)
  {
    [(DownloadsTransaction *)self insertDownloads:v106 afterDownloadWithID:?];
  }

  else
  {
    [(DownloadsTransaction *)self addDownloads:v106];
  }
  v107 = ;

  if ([v107 count] == 1)
  {
    v108 = [v107 objectAtIndex:0];
    longLongValue = [v108 longLongValue];

    v129 = 0;
    v74 = 1;
    v134 = longLongValue;
    persistentID7 = longLongValue;
    goto LABEL_99;
  }

LABEL_158:
  v111 = 0;
  responseCopy = v131;
  purchaseCopy = v132;
  v9 = v143;
  v112 = v136;
  downloadPolicy = v146;
LABEL_159:

  if ([responseCopy triggeredQueueCheck])
  {
    v113 = [obj count] != 0;
  }

  else
  {
    v113 = 1;
  }

  if ((v111 & v113) == 1 && v135)
  {
    v114 = +[SSLogConfig sharedDaemonConfig];
    if (!v114)
    {
      v114 = +[SSLogConfig sharedConfig];
    }

    shouldLog8 = [v114 shouldLog];
    if ([v114 shouldLogToDisk])
    {
      v116 = shouldLog8 | 2;
    }

    else
    {
      v116 = shouldLog8;
    }

    oSLogObject8 = [v114 OSLogObject];
    if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_INFO))
    {
      v116 &= 2u;
    }

    if (v116)
    {
      v118 = objc_opt_class();
      persistentID8 = [v135 persistentID];
      v167 = 138412546;
      v168 = v118;
      v169 = 2048;
      v170 = persistentID8;
      LODWORD(v130) = 22;
      v129 = &v167;
      v120 = _os_log_send_and_compose_impl();

      if (v120)
      {
        oSLogObject8 = [NSString stringWithCString:v120 encoding:4, &v167, v130];
        free(v120);
        v129 = oSLogObject8;
        SSFileLog();
        goto LABEL_174;
      }
    }

    else
    {
LABEL_174:
    }

    persistentID9 = [v135 persistentID];
    if (![(DownloadsTransaction *)self finishDownloadWithID:persistentID9 finalPhase:SSDownloadPhaseCanceled])
    {
LABEL_176:

      v9 = 0;
      v122 = v137;
      goto LABEL_185;
    }
  }

  else if (!v111)
  {
    goto LABEL_176;
  }

  if ([v112 count])
  {
    [(DownloadsTransaction *)self reconcileSoftwareDownloads:v112 fromITunesStore:1];
  }

  if ([v140 count])
  {
    [AppStoreUtility sendSoftwareDownloads:v140 withReason:@"purchase response" forClientID:identifierCopy];
    clusterMappings = [responseCopy clusterMappings];
    v124 = [clusterMappings count];

    if (v124)
    {
      clusterMappings2 = [responseCopy clusterMappings];
      [AppStoreUtility sendClusterMappings:clusterMappings2];
    }
  }

  v122 = v137;
  if ([v137 count])
  {
    [BookAssetDaemonUtility sendBookDownloads:v137 withReason:@"purchase response"];
  }

LABEL_185:
  v126 = v9;

  return v9;
}

- (id)_addEntityForPurchase:(id)purchase managerIdentifier:(int64_t)identifier orderIdentifier:(double)orderIdentifier
{
  purchaseCopy = purchase;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(purchaseCopy, "uniqueIdentifier")}];
  [v9 setObject:v10 forKey:SSSQLEntityPropertyPersistentID];
  v11 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(purchaseCopy, "batchIdentifier")}];

  [v9 setObject:v11 forKey:@"batch_id"];
  v12 = [[NSNumber alloc] initWithLongLong:identifier];

  [v9 setObject:v12 forKey:@"client_id"];
  databaseEncoding = [purchaseCopy databaseEncoding];

  if (databaseEncoding)
  {
    [v9 setObject:databaseEncoding forKey:@"encoded_data"];
  }

  v14 = [[NSNumber alloc] initWithDouble:orderIdentifier];

  [v9 setObject:v14 forKey:@"order_id"];
  v15 = [PurchaseEntity alloc];
  database = [(DownloadsSession *)self database];
  v17 = [(PurchaseEntity *)v15 initWithPropertyValues:v9 inDatabase:database];

  return v17;
}

- (BOOL)_addPlaceholderDownloadForPurchase:(id)purchase clientIdentifier:(id)identifier
{
  purchaseCopy = purchase;
  identifierCopy = identifier;
  downloadProperties = [purchaseCopy downloadProperties];
  v9 = [DownloadEntity copyDatabaseDictionaryToSetClientDictionary:downloadProperties];

  v10 = [NSNumber numberWithBool:1];
  [v9 setObject:v10 forKey:@"is_purchase"];

  v11 = [NSNumber numberWithBool:1];
  [v9 setObject:v11 forKey:@"is_from_store"];

  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [purchaseCopy uniqueIdentifier]);
  [v9 setObject:v12 forKey:@"purchase_id"];

  if (identifierCopy)
  {
    [v9 setObject:identifierCopy forKey:@"client_id"];
  }

  v13 = SSSQLEntityPropertyPersistentID;
  v14 = [v9 objectForKey:SSSQLEntityPropertyPersistentID];
  placeholderDownloadIdentifier = [purchaseCopy placeholderDownloadIdentifier];
  if (placeholderDownloadIdentifier && !v14)
  {
    v14 = [[NSNumber alloc] initWithLongLong:placeholderDownloadIdentifier];
    [v9 setObject:v14 forKey:v13];
  }

  v16 = objc_alloc_init(Download);
  if (v14)
  {
    longLongValue = [v14 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  [(Download *)v16 setDatabaseID:longLongValue];
  [(Download *)v16 setValuesWithDictionary:v9];
  v18 = [NSArray arrayWithObject:v16];
  v19 = [(DownloadsTransaction *)self addDownloads:v18];

  LOBYTE(v18) = [v19 count] == 1;
  return v18;
}

- (BOOL)_cancelDownloadForPurchaseIdentifier:(int64_t)identifier
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToLongLong:1];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"purchase_id" equalToLongLong:identifier];
  v17[0] = v5;
  v17[1] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:2];
  v8 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  database = [(DownloadsSession *)self database];
  v10 = [DownloadEntity queryWithDatabase:database predicate:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100224A6C;
  v12[3] = &unk_1003293F0;
  v12[4] = self;
  v12[5] = &v13;
  [v10 enumeratePersistentIDsUsingBlock:v12];
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self & 1;
}

- (void)_getInsertOrderID:(double *)d nextOrderID:(double *)iD afterPurchaseID:(int64_t)purchaseID
{
  database = [(DownloadsSession *)self database];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (purchaseID)
  {
    v9 = [[PurchaseEntity alloc] initWithPersistentID:purchaseID inDatabase:database];
    v10 = [(PurchaseEntity *)v9 valueForProperty:@"order_id"];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v13 = v12;
      v14 = objc_alloc_init(SSSQLiteQueryDescriptor);
      [v14 setEntityClass:objc_opt_class()];
      [v14 setLimitCount:1];
      v26 = @"order_id";
      v15 = [NSArray arrayWithObjects:&v26 count:1];
      [v14 setOrderingProperties:v15];

      v16 = [SSSQLiteComparisonPredicate predicateWithProperty:@"order_id" value:v11 comparisonType:5];
      [v14 setPredicate:v16];

      v17 = [[SSSQLiteQuery alloc] initWithDatabase:database descriptor:v14];
      v25 = @"order_id";
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100224DAC;
      v20[3] = &unk_100327328;
      v20[4] = &v21;
      [v17 enumeratePersistentIDsAndProperties:&v25 count:1 usingBlock:v20];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v18 = [PurchaseEntity minValueForProperty:@"order_id" predicate:0 database:database];
    v9 = v18;
    v13 = 0;
    v19 = 0;
    if (v18)
    {
      [(PurchaseEntity *)v18 doubleValue];
    }

    *(v22 + 3) = v19;
  }

  if (d)
  {
    *d = v13;
  }

  if (iD)
  {
    *iD = v22[3];
  }

  _Block_object_dispose(&v21, 8);
}

- (BOOL)_insertPurchases:(id)purchases forClient:(id)client orderIdentifier:(double)identifier orderSpacing:(double)spacing
{
  purchasesCopy = purchases;
  clientCopy = client;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  _nextBatchIdentifier = [(PurchaseDownloadsTransaction *)self _nextBatchIdentifier];
  clientIdentifier = [clientCopy clientIdentifier];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  *&v23[3] = identifier + spacing;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100224F80;
  v16[3] = &unk_10032CBC0;
  v20 = _nextBatchIdentifier;
  uniqueIdentifier = [clientCopy uniqueIdentifier];
  v16[4] = self;
  v18 = v23;
  v19 = &v24;
  v14 = clientIdentifier;
  v17 = v14;
  spacingCopy = spacing;
  [purchasesCopy enumerateObjectsUsingBlock:v16];
  LOBYTE(_nextBatchIdentifier) = *(v25 + 24);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);

  return _nextBatchIdentifier;
}

- (double)_maxOrderIdentifier
{
  database = [(DownloadsSession *)self database];
  v3 = [PurchaseEntity maxValueForProperty:@"order_id" predicate:0 database:database];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (int64_t)_nextBatchIdentifier
{
  database = [(DownloadsSession *)self database];
  v3 = [PurchaseEntity maxValueForProperty:@"batch_id" predicate:0 database:database];

  if (v3)
  {
    v4 = [v3 longLongValue] + 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end