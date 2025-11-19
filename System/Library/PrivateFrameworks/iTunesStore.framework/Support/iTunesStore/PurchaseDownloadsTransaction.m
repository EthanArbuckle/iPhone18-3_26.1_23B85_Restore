@interface PurchaseDownloadsTransaction
- (BOOL)_addPlaceholderDownloadForPurchase:(id)a3 clientIdentifier:(id)a4;
- (BOOL)_cancelDownloadForPurchaseIdentifier:(int64_t)a3;
- (BOOL)_insertPurchases:(id)a3 forClient:(id)a4 orderIdentifier:(double)a5 orderSpacing:(double)a6;
- (BOOL)addPurchases:(id)a3 forClient:(id)a4;
- (BOOL)cancelPurchaseWithIdentifier:(int64_t)a3 applyingProperties:(id)a4;
- (BOOL)deletePurchaseWithIdentifier:(int64_t)a3;
- (BOOL)insertPurchases:(id)a3 afterPurchaseWithIdentifier:(int64_t)a4 forClient:(id)a5;
- (BOOL)movePurchasesWithIdentifiers:(id)a3 afterPurchaseWithIdentifier:(int64_t)a4;
- (BOOL)replaceDownloadsInQuery:(id)a3 withStoreDownloads:(id)a4 accountID:(id)a5;
- (BOOL)resetPurchasedAutoUpdateForStoreItemID:(id)a3;
- (double)_maxOrderIdentifier;
- (id)_addEntityForPurchase:(id)a3 managerIdentifier:(int64_t)a4 orderIdentifier:(double)a5;
- (id)existingDownloadForPurchase:(id)a3;
- (id)replacePurchase:(id)a3 withDownloadQueueResponse:(id)a4 withClientIdentifier:(id)a5;
- (int64_t)_nextBatchIdentifier;
- (void)_getInsertOrderID:(double *)a3 nextOrderID:(double *)a4 afterPurchaseID:(int64_t)a5;
@end

@implementation PurchaseDownloadsTransaction

- (BOOL)addPurchases:(id)a3 forClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(PurchaseDownloadsTransaction *)self _maxOrderIdentifier];
  LOBYTE(self) = [PurchaseDownloadsTransaction _insertPurchases:"_insertPurchases:forClient:orderIdentifier:orderSpacing:" forClient:v7 orderIdentifier:v6 orderSpacing:?];

  return self;
}

- (BOOL)cancelPurchaseWithIdentifier:(int64_t)a3 applyingProperties:(id)a4
{
  v6 = a4;
  if ([(PurchaseDownloadsTransaction *)self _cancelDownloadForPurchaseIdentifier:a3])
  {
    v7 = [PurchaseEntity alloc];
    v8 = [(DownloadsSession *)self database];
    v9 = [(PurchaseEntity *)v7 initWithPersistentID:a3 inDatabase:v8];

    if ([v6 count])
    {
      v10 = [v6 mutableCopy];
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

- (BOOL)deletePurchaseWithIdentifier:(int64_t)a3
{
  v5 = [(PurchaseDownloadsTransaction *)self _cancelDownloadForPurchaseIdentifier:?];
  if (v5)
  {
    v6 = [PurchaseEntity alloc];
    v7 = [(DownloadsSession *)self database];
    v8 = [(PurchaseEntity *)v6 initWithPersistentID:a3 inDatabase:v7];

    LOBYTE(v7) = [(PurchaseEntity *)v8 deleteFromDatabase];
    LOBYTE(v5) = v7;
  }

  return v5;
}

- (id)existingDownloadForPurchase:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1002214F4;
  v19 = sub_100221504;
  v20 = 0;
  v5 = [v4 valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 longLongValue];
    if (v7)
    {
      v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_item_id" equalToLongLong:v7];
      v9 = [(DownloadsSession *)self database];
      v10 = [Download queryWithDatabase:v9 predicate:v8];

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

- (BOOL)insertPurchases:(id)a3 afterPurchaseWithIdentifier:(int64_t)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14 = 0.0;
  v15 = 0.0;
  [(PurchaseDownloadsTransaction *)self _getInsertOrderID:&v15 nextOrderID:&v14 afterPurchaseID:a4];
  if (v14 <= 0.0)
  {
    v11 = 100.0;
  }

  else
  {
    v10 = vabdd_f64(v14, v15);
    v11 = v10 / ([v8 count] + 1);
  }

  v12 = [(PurchaseDownloadsTransaction *)self _insertPurchases:v8 forClient:v9 orderIdentifier:v15 orderSpacing:v11];

  return v12;
}

- (BOOL)movePurchasesWithIdentifiers:(id)a3 afterPurchaseWithIdentifier:(int64_t)a4
{
  v6 = a3;
  v25 = 0.0;
  v26 = 0.0;
  [(PurchaseDownloadsTransaction *)self _getInsertOrderID:&v26 nextOrderID:&v25 afterPurchaseID:a4];
  if (v25 <= 0.0)
  {
    v8 = 100.0;
  }

  else
  {
    v7 = vabdd_f64(v25, v26);
    v8 = v7 / ([v6 count] + 1);
  }

  v9 = [(DownloadsSession *)self database];
  v10 = v26;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v6;
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
        v18 = -[PurchaseEntity initWithPersistentID:inDatabase:](v17, "initWithPersistentID:inDatabase:", [v16 longLongValue], v9);
        v19 = [NSNumber numberWithDouble:v10];
        [(PurchaseEntity *)v18 setValue:v19 forProperty:@"order_id"];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v13);
  }

  return 1;
}

- (BOOL)resetPurchasedAutoUpdateForStoreItemID:(id)a3
{
  v4 = a3;
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
  v10 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_item_id" equalToValue:v4];

  v18[0] = v8;
  v18[1] = v9;
  v18[2] = v10;
  v11 = [NSArray arrayWithObjects:v18 count:3];
  v12 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
  [v5 setPredicate:v12];

  v13 = [SSSQLiteQuery alloc];
  v14 = [(DownloadsSession *)self database];
  v15 = [v13 initWithDatabase:v14 descriptor:v5];

  v16 = [v15 copyEntityIdentifiers];
  LOBYTE(self) = [(DownloadsTransaction *)self resetDownloadsWithIdentifiers:v16 isUserInitiated:0];

  return self;
}

- (BOOL)replaceDownloadsInQuery:(id)a3 withStoreDownloads:(id)a4 accountID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v30 = v7;
  v10 = [v7 copyEntityIdentifiers];
  v11 = objc_alloc_init(NSMutableArray);
  v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100222090;
  v32[3] = &unk_10032CB70;
  v14 = v9;
  v33 = v14;
  v34 = self;
  v15 = v12;
  v35 = v15;
  v16 = v13;
  v36 = v16;
  v39 = &v40;
  v17 = v11;
  v37 = v17;
  v18 = v10;
  v38 = v18;
  [v8 enumerateObjectsUsingBlock:v32];
  if (*(v41 + 24) == 1 && [v18 count])
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    v21 = [v19 shouldLogToDisk];
    v22 = [v19 OSLogObject];
    v23 = v22;
    if (v21)
    {
      v20 |= 2u;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v20 &= 2u;
    }

    if (v20)
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

- (id)replacePurchase:(id)a3 withDownloadQueueResponse:(id)a4 withClientIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v133 = a5;
  v9 = +[NSMutableOrderedSet orderedSet];
  v10 = [v8 downloads];
  v11 = objc_alloc_init(NSMutableDictionary);
  v140 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v137 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  if ([v10 count] == 1)
  {
    v12 = [v7 valueForDownloadProperty:SSDownloadPropertyKind];
    if (v12 && !SSDownloadKindIsMediaKind())
    {
      v153 = 0;
    }

    else
    {
      v153 = [v7 buyParameters];
    }
  }

  else
  {
    v153 = 0;
  }

  v13 = +[ApplicationWorkspace defaultWorkspace];
  v145 = [v13 isMultiUser];

  v14 = [(DownloadsSession *)self placeholderDownloadForPurchase:v7];
  v135 = v14;
  if (v14)
  {
    v15 = [v14 persistentID];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v7 downloadPolicy];
  v17 = &CFDictionaryGetValue_ptr;
  v134 = v15;
  if (v16)
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v20 &= 2u;
    }

    if (!v20)
    {

      v141 = 0;
      goto LABEL_38;
    }

    v22 = objc_opt_class();
    v167 = 138412546;
    v168 = v22;
    v169 = 2112;
    v170 = v16;
    LODWORD(v130) = 22;
    v128 = &v167;
    v23 = _os_log_send_and_compose_impl();

    if (v23)
    {
      v24 = [NSString stringWithCString:v23 encoding:4, &v167, v130];
      free(v23);
      v128 = v24;
      SSFileLog();
    }

    v141 = 0;
  }

  else
  {
    v141 = [v7 networkConstraints];
    if (!v141)
    {
      v141 = 0;
      goto LABEL_39;
    }

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v25 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v18 OSLogObject];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
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
    v170 = v141;
    LODWORD(v130) = 22;
    v128 = &v167;
    v29 = _os_log_send_and_compose_impl();

    if (v29)
    {
      v30 = [NSString stringWithCString:v29 encoding:4, &v167, v130];
      free(v29);
      v128 = v30;
      SSFileLog();
    }
  }

  v17 = &CFDictionaryGetValue_ptr;
LABEL_38:

LABEL_39:
  v31 = [v7 requestProperties];
  v32 = [v31 URLBagKey];
  v33 = [v32 isEqualToString:@"subDownload"];

  v34 = &off_10034C210;
  v144 = v33;
  if (!v33)
  {
    v34 = 0;
  }

  v139 = v34;
  v148 = [v7 valueForDownloadProperty:SSDownloadPropertyEnableExtensions];
  v147 = [v8 userIdentifier];
  v149 = [v7 filteredAssetTypes];
  v152 = [v7 valueForDownloadProperty:SSDownloadPropertyShouldCancelIfDuplicate];
  v35 = [v17[412] sharedDaemonConfig];
  if (!v35)
  {
    v35 = [v17[412] sharedConfig];
  }

  v136 = v11;
  v36 = [v35 shouldLog];
  if ([v35 shouldLogToDisk])
  {
    v37 = v36 | 2;
  }

  else
  {
    v37 = v36;
  }

  v38 = [v35 OSLogObject];
  if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v37 &= 2u;
  }

  v146 = v16;
  if (!v37)
  {
    goto LABEL_51;
  }

  v39 = v8;
  v40 = objc_opt_class();
  v41 = [v135 persistentID];
  v42 = [v10 count];
  v167 = 138413058;
  v168 = v40;
  v169 = 2048;
  v170 = v41;
  v171 = 2048;
  v172 = v42;
  v173 = 2112;
  v174 = v149;
  LODWORD(v130) = 42;
  v129 = &v167;
  v43 = _os_log_send_and_compose_impl();

  v8 = v39;
  v16 = v146;

  if (v43)
  {
    v38 = [NSString stringWithCString:v43 encoding:4, &v167, v130];
    free(v43);
    v129 = v38;
    SSFileLog();
LABEL_51:
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = v10;
  v150 = [obj countByEnumeratingWithState:&v161 objects:v166 count:16];
  if (!v150)
  {
    v111 = 1;
LABEL_156:
    v112 = v136;
    goto LABEL_159;
  }

  v131 = v8;
  v132 = v7;
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

    v49 = [NSNumber numberWithBool:v145];
    [(Download *)v46 setValue:v49 forProperty:@"is_shared"];

    if (v16)
    {
      [(Download *)v46 setDownloadPolicy:v16];
      v50 = v148;
    }

    else
    {
      v50 = v148;
      if (v141)
      {
        [(Download *)v46 unionNetworkConstraints:v141];
      }
    }

    if (v147)
    {
      [(Download *)v46 setValue:v147 forProperty:@"store_account_id"];
    }

    if (v50)
    {
      [(Download *)v46 setValue:v50 forProperty:@"enable_extensions"];
    }

    if (v153)
    {
      v51 = [(Download *)v46 valueForProperty:@"store_redownload_parameters"];

      if (!v51)
      {
        [(Download *)v46 setValue:v153 forProperty:@"store_redownload_parameters"];
      }
    }

    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v52 = v149;
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
      v58 = [(Download *)v46 assets];
      v155[0] = _NSConcreteStackBlock;
      v155[1] = 3221225472;
      v155[2] = sub_1002243FC;
      v155[3] = &unk_10032CB98;
      v156 = v139;
      [v58 enumerateObjectsUsingBlock:v155];
    }

    v59 = [(DownloadsSession *)self downloadForStoreDownload:v45, v129];
    v60 = [v45 kind];
    IsSoftwareKind = SSDownloadKindIsSoftwareKind();

    if (!IsSoftwareKind)
    {
      break;
    }

    [v140 addObject:v46];
    if (!v59)
    {
      goto LABEL_97;
    }

    v62 = +[SSLogConfig sharedDaemonConfig];
    if (!v62)
    {
      v62 = +[SSLogConfig sharedConfig];
    }

    v63 = [v62 shouldLog];
    if ([v62 shouldLogToDisk])
    {
      v64 = v63 | 2;
    }

    else
    {
      v64 = v63;
    }

    v65 = [v62 OSLogObject];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
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
    v69 = [v59 persistentID];
    v167 = 138412546;
    v168 = v67;
    v169 = 2048;
    v170 = v69;
    LODWORD(v130) = 22;
    v129 = &v167;
    v70 = _os_log_send_and_compose_impl();

    if (v70)
    {
      v65 = [NSString stringWithCString:v70 encoding:4, &v167, v130];
      free(v70);
      v129 = v65;
      SSFileLog();
LABEL_93:
    }

    -[DownloadsTransaction finishDownloadWithID:finalPhase:](self, "finishDownloadWithID:finalPhase:", [v59 persistentID], v138);
    v71 = 0;
    v59 = 0;
LABEL_98:
    v74 = 1;
LABEL_99:
    v75 = [[NSNumber alloc] initWithLongLong:v71];
    v76 = [v45 kind];
    v77 = [ScratchManager directoryPathForDownloadID:v71 kind:v76 createIfNeeded:1];
    v78 = [v77 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

    [v45 writeToFile:v78 options:0 error:0];
    v79 = [v45 kind];
    LODWORD(v76) = SSDownloadKindIsSoftwareKind();

    if (v76)
    {
      v80 = [v45 bundleIdentifier];
      if (v80)
      {
        v81 = v74;
      }

      else
      {
        v81 = 0;
      }

      if (v81 == 1)
      {
        [v136 setObject:v75 forKey:v80];
      }
    }

    v9 = v143;
    [v143 addObject:{v75, v129}];

    v44 = v44 + 1;
    v16 = v146;
    if (v44 == v150)
    {
      v110 = [obj countByEnumeratingWithState:&v161 objects:v166 count:16];
      v150 = v110;
      if (!v110)
      {
        v111 = 1;
        v8 = v131;
        v7 = v132;
        goto LABEL_156;
      }

      goto LABEL_54;
    }
  }

  v72 = [v45 kind];
  IsBookToShimKind = SSDownloadKindIsBookToShimKind();

  if (IsBookToShimKind)
  {
    [v137 addObject:v46];
LABEL_97:
    v71 = 0;
    goto LABEL_98;
  }

  if (v59)
  {
    v82 = +[SSLogConfig sharedDaemonConfig];
    if (!v82)
    {
      v82 = +[SSLogConfig sharedConfig];
    }

    v83 = [v82 shouldLog];
    if ([v82 shouldLogToDisk])
    {
      v83 |= 2u;
    }

    v84 = [v82 OSLogObject];
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      v85 = v83;
    }

    else
    {
      v85 = v83 & 2;
    }

    if (v85)
    {
      v86 = objc_opt_class();
      v87 = [v59 persistentID];
      v167 = 138412546;
      v168 = v86;
      v169 = 2048;
      v170 = v87;
      LODWORD(v130) = 22;
      v129 = &v167;
      v88 = _os_log_send_and_compose_impl();

      if (v88)
      {
        v84 = [NSString stringWithCString:v88 encoding:4, &v167, v130];
        free(v88);
        v129 = v84;
        SSFileLog();
        goto LABEL_119;
      }
    }

    else
    {
LABEL_119:
    }

    v89 = -[DownloadsTransaction updateDownloadEntityWithIdentifier:withDownload:](self, "updateDownloadEntityWithIdentifier:withDownload:", [v59 persistentID], v46);
    v90 = [v59 persistentID];
    if ((v89 & 1) == 0)
    {
      goto LABEL_158;
    }

    v71 = v90;
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

    v94 = [v93 shouldLog];
    if ([v93 shouldLogToDisk])
    {
      v94 |= 2u;
    }

    v95 = [v93 OSLogObject];
    if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
    {
      v96 = v94;
    }

    else
    {
      v96 = v94 & 2;
    }

    if (v96)
    {
      v97 = objc_opt_class();
      v98 = [v135 persistentID];
      v167 = 138412546;
      v168 = v97;
      v169 = 2048;
      v170 = v98;
      LODWORD(v130) = 22;
      v129 = &v167;
      v99 = _os_log_send_and_compose_impl();

      if (v99)
      {
        v95 = [NSString stringWithCString:v99 encoding:4, &v167, v130];
        free(v99);
        v129 = v95;
        SSFileLog();
        goto LABEL_134;
      }
    }

    else
    {
LABEL_134:
    }

    v100 = -[DownloadsTransaction updateDownloadEntityWithIdentifier:withDownload:](self, "updateDownloadEntityWithIdentifier:withDownload:", [v135 persistentID], v46);
    v71 = [v135 persistentID];

    v135 = 0;
    if ((v100 & 1) == 0)
    {
      goto LABEL_158;
    }

    v74 = 1;
    v59 = 0;
    goto LABEL_99;
  }

  if (!v92)
  {
    v93 = +[SSLogConfig sharedConfig];
  }

  v101 = [v93 shouldLog];
  if ([v93 shouldLogToDisk])
  {
    v101 |= 2u;
  }

  v102 = [v93 OSLogObject];
  if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
  {
    v103 = v101;
  }

  else
  {
    v103 = v101 & 2;
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
      v102 = [NSString stringWithCString:v105 encoding:4, &v167, v130];
      free(v105);
      v129 = v102;
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
    v109 = [v108 longLongValue];

    v59 = 0;
    v74 = 1;
    v134 = v109;
    v71 = v109;
    goto LABEL_99;
  }

LABEL_158:
  v111 = 0;
  v8 = v131;
  v7 = v132;
  v9 = v143;
  v112 = v136;
  v16 = v146;
LABEL_159:

  if ([v8 triggeredQueueCheck])
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

    v115 = [v114 shouldLog];
    if ([v114 shouldLogToDisk])
    {
      v116 = v115 | 2;
    }

    else
    {
      v116 = v115;
    }

    v117 = [v114 OSLogObject];
    if (!os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
    {
      v116 &= 2u;
    }

    if (v116)
    {
      v118 = objc_opt_class();
      v119 = [v135 persistentID];
      v167 = 138412546;
      v168 = v118;
      v169 = 2048;
      v170 = v119;
      LODWORD(v130) = 22;
      v129 = &v167;
      v120 = _os_log_send_and_compose_impl();

      if (v120)
      {
        v117 = [NSString stringWithCString:v120 encoding:4, &v167, v130];
        free(v120);
        v129 = v117;
        SSFileLog();
        goto LABEL_174;
      }
    }

    else
    {
LABEL_174:
    }

    v121 = [v135 persistentID];
    if (![(DownloadsTransaction *)self finishDownloadWithID:v121 finalPhase:SSDownloadPhaseCanceled])
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
    [AppStoreUtility sendSoftwareDownloads:v140 withReason:@"purchase response" forClientID:v133];
    v123 = [v8 clusterMappings];
    v124 = [v123 count];

    if (v124)
    {
      v125 = [v8 clusterMappings];
      [AppStoreUtility sendClusterMappings:v125];
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

- (id)_addEntityForPurchase:(id)a3 managerIdentifier:(int64_t)a4 orderIdentifier:(double)a5
{
  v8 = a3;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v8, "uniqueIdentifier")}];
  [v9 setObject:v10 forKey:SSSQLEntityPropertyPersistentID];
  v11 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v8, "batchIdentifier")}];

  [v9 setObject:v11 forKey:@"batch_id"];
  v12 = [[NSNumber alloc] initWithLongLong:a4];

  [v9 setObject:v12 forKey:@"client_id"];
  v13 = [v8 databaseEncoding];

  if (v13)
  {
    [v9 setObject:v13 forKey:@"encoded_data"];
  }

  v14 = [[NSNumber alloc] initWithDouble:a5];

  [v9 setObject:v14 forKey:@"order_id"];
  v15 = [PurchaseEntity alloc];
  v16 = [(DownloadsSession *)self database];
  v17 = [(PurchaseEntity *)v15 initWithPropertyValues:v9 inDatabase:v16];

  return v17;
}

- (BOOL)_addPlaceholderDownloadForPurchase:(id)a3 clientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 downloadProperties];
  v9 = [DownloadEntity copyDatabaseDictionaryToSetClientDictionary:v8];

  v10 = [NSNumber numberWithBool:1];
  [v9 setObject:v10 forKey:@"is_purchase"];

  v11 = [NSNumber numberWithBool:1];
  [v9 setObject:v11 forKey:@"is_from_store"];

  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 uniqueIdentifier]);
  [v9 setObject:v12 forKey:@"purchase_id"];

  if (v7)
  {
    [v9 setObject:v7 forKey:@"client_id"];
  }

  v13 = SSSQLEntityPropertyPersistentID;
  v14 = [v9 objectForKey:SSSQLEntityPropertyPersistentID];
  v15 = [v6 placeholderDownloadIdentifier];
  if (v15 && !v14)
  {
    v14 = [[NSNumber alloc] initWithLongLong:v15];
    [v9 setObject:v14 forKey:v13];
  }

  v16 = objc_alloc_init(Download);
  if (v14)
  {
    v17 = [v14 longLongValue];
  }

  else
  {
    v17 = 0;
  }

  [(Download *)v16 setDatabaseID:v17];
  [(Download *)v16 setValuesWithDictionary:v9];
  v18 = [NSArray arrayWithObject:v16];
  v19 = [(DownloadsTransaction *)self addDownloads:v18];

  LOBYTE(v18) = [v19 count] == 1;
  return v18;
}

- (BOOL)_cancelDownloadForPurchaseIdentifier:(int64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_purchase" equalToLongLong:1];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"purchase_id" equalToLongLong:a3];
  v17[0] = v5;
  v17[1] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:2];
  v8 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [(DownloadsSession *)self database];
  v10 = [DownloadEntity queryWithDatabase:v9 predicate:v8];

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

- (void)_getInsertOrderID:(double *)a3 nextOrderID:(double *)a4 afterPurchaseID:(int64_t)a5
{
  v8 = [(DownloadsSession *)self database];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (a5)
  {
    v9 = [[PurchaseEntity alloc] initWithPersistentID:a5 inDatabase:v8];
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

      v17 = [[SSSQLiteQuery alloc] initWithDatabase:v8 descriptor:v14];
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
    v18 = [PurchaseEntity minValueForProperty:@"order_id" predicate:0 database:v8];
    v9 = v18;
    v13 = 0;
    v19 = 0;
    if (v18)
    {
      [(PurchaseEntity *)v18 doubleValue];
    }

    *(v22 + 3) = v19;
  }

  if (a3)
  {
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
}

- (BOOL)_insertPurchases:(id)a3 forClient:(id)a4 orderIdentifier:(double)a5 orderSpacing:(double)a6
{
  v10 = a3;
  v11 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v12 = [(PurchaseDownloadsTransaction *)self _nextBatchIdentifier];
  v13 = [v11 clientIdentifier];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  *&v23[3] = a5 + a6;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100224F80;
  v16[3] = &unk_10032CBC0;
  v20 = v12;
  v21 = [v11 uniqueIdentifier];
  v16[4] = self;
  v18 = v23;
  v19 = &v24;
  v14 = v13;
  v17 = v14;
  v22 = a6;
  [v10 enumerateObjectsUsingBlock:v16];
  LOBYTE(v12) = *(v25 + 24);

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (double)_maxOrderIdentifier
{
  v2 = [(DownloadsSession *)self database];
  v3 = [PurchaseEntity maxValueForProperty:@"order_id" predicate:0 database:v2];

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
  v2 = [(DownloadsSession *)self database];
  v3 = [PurchaseEntity maxValueForProperty:@"batch_id" predicate:0 database:v2];

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