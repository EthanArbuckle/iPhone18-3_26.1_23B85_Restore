@interface StoreDownloadQueueResponse
- (BOOL)shouldCancelPurchaseBatch;
- (BOOL)triggeredQueueCheck;
- (NSError)error;
- (NSOrderedSet)downloads;
- (StoreDownloadQueueResponse)initWithDictionary:(id)a3 userIdentifier:(id)a4 preferredAssetFlavor:(id)a5;
- (StoreDownloadQueueResponse)initWithError:(id)a3 userIdentifier:(id)a4;
- (id)_errorWithFailureType:(id)a3 customerMessage:(id)a4;
- (id)_initStoreDownloadQueueResponse;
- (id)_newManifestWithStoreDownloadQueueResponse:(id)a3 accountID:(id)a4 accountName:(id)a5;
- (id)copyJobManifestWithAccountID:(id)a3 accountName:(id)a4;
- (void)enumerateActivitiesWithAccountID:(id)a3 accountName:(id)a4 usingBlock:(id)a5;
- (void)setError:(id)a3;
- (void)setShouldCancelPurchaseBatch:(BOOL)a3;
- (void)setTriggeredQueueCheck:(BOOL)a3;
@end

@implementation StoreDownloadQueueResponse

- (id)_initStoreDownloadQueueResponse
{
  v6.receiver = self;
  v6.super_class = StoreDownloadQueueResponse;
  v2 = [(StoreDownloadQueueResponse *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.StoreDownloadQueueResponse", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (StoreDownloadQueueResponse)initWithDictionary:(id)a3 userIdentifier:(id)a4 preferredAssetFlavor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v88 = a5;
  v10 = [(StoreDownloadQueueResponse *)self _initStoreDownloadQueueResponse];
  if (v10)
  {
    v11 = objc_opt_new();
    v12 = [v8 objectForKey:@"page-type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 objectForKey:@"template-name"];

      v12 = v13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v12 isEqualToString:@"preorder-success"];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v8 objectForKey:@"more"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = ISCopyLoadMoreRangesFromArray();
      rangesToLoad = v10->_rangesToLoad;
      v10->_rangesToLoad = v16;
    }

    v18 = [v8 objectForKey:@"failureType"];

    if (v18)
    {
      v19 = [v8 objectForKey:@"customerMessage"];
      v20 = [(StoreDownloadQueueResponse *)v10 _errorWithFailureType:v18 customerMessage:v19];
      error = v10->_error;
      v10->_error = v20;
    }

    v22 = [v8 objectForKey:@"failed-items"];

    objc_opt_class();
    v85 = v9;
    v86 = v8;
    if (objc_opt_isKindOfClass())
    {
      v93 = v11;
      v98 = v22;
      v100 = objc_alloc_init(NSMutableDictionary);
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v118 objects:v126 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v119;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v119 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v118 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [v28 objectForKey:@"item-id"];
              v30 = [v28 objectForKey:@"failureType"];
              v31 = [v28 objectForKey:@"customerMessage"];
              v32 = [(StoreDownloadQueueResponse *)v10 _errorWithFailureType:v30 customerMessage:v31];

              if (v29)
              {
                v33 = v32 == 0;
              }

              else
              {
                v33 = 1;
              }

              if (!v33)
              {
                [v100 setObject:v32 forKey:v29];
              }
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v118 objects:v126 count:16];
        }

        while (v25);
      }

      v34 = [v100 copy];
      itemErrors = v10->_itemErrors;
      v10->_itemErrors = v34;

      v9 = v85;
      v8 = v86;
      v11 = v93;
      v22 = v98;
    }

    v36 = [v8 objectForKey:@"keybag"];
    keybag = v10->_keybag;
    v10->_keybag = v36;

    v38 = [v8 objectForKey:@"dsPersonId"];
    v39 = SSAccountGetUniqueIdentifierFromValue();

    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v9;
    }

    v41 = [v40 copy];
    userIdentifier = v10->_userIdentifier;
    v10->_userIdentifier = v41;

    if ((v14 & 1) == 0)
    {
      v43 = [v8 objectForKey:@"items"];

      v22 = v43;
      if (!v43)
      {
        v22 = [v8 objectForKey:@"songList"];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v83 = v39;
        v44 = objc_alloc_init(NSMutableOrderedSet);
        downloads = v10->_downloads;
        v10->_downloads = v44;

        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v22 = v22;
        v46 = [v22 countByEnumeratingWithState:&v114 objects:v125 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v115;
          do
          {
            v49 = v22;
            for (j = 0; j != v47; j = j + 1)
            {
              if (*v115 != v48)
              {
                objc_enumerationMutation(v49);
              }

              v51 = [[StoreDownload alloc] initWithDictionary:*(*(&v114 + 1) + 8 * j)];
              if ([(StoreDownload *)v51 itemIdentifier])
              {
                v52 = [(StoreDownload *)v51 bundleIdentifier];
                v53 = [v52 length];

                if (v53)
                {
                  v54 = [(StoreDownload *)v51 bundleIdentifier];
                  v55 = [NSNumber numberWithUnsignedLongLong:[(StoreDownload *)v51 itemIdentifier]];
                  [v11 setObject:v54 forKey:v55];
                }
              }

              if ([v88 length])
              {
                [(StoreDownload *)v51 setPreferredAssetFlavor:v88];
              }

              [(NSMutableOrderedSet *)v10->_downloads addObject:v51];
            }

            v22 = v49;
            v47 = [v49 countByEnumeratingWithState:&v114 objects:v125 count:16];
          }

          while (v47);
        }

        v9 = v85;
        v8 = v86;
        v39 = v83;
      }
    }

    v56 = [v8 objectForKey:@"cancel-purchase-batch"];

    if (objc_opt_respondsToSelector())
    {
      v57 = [v56 BOOLValue];
    }

    else
    {
      v57 = 0;
    }

    v10->_shouldCancelPurchaseBatch = v57;
    v58 = [v8 objectForKey:@"appClusterAssignmentsResultSet"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84 = v39;
      v59 = objc_opt_new();
      clusterMappings = v10->_clusterMappings;
      v10->_clusterMappings = v59;

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v82 = v58;
      obj = v58;
      v61 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v111;
        v94 = v11;
        v87 = *v111;
        do
        {
          v64 = 0;
          v89 = v62;
          do
          {
            if (*v111 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v92 = v64;
            v65 = *(*(&v110 + 1) + 8 * v64);
            v66 = [v65 objectForKeyedSubscript:{@"clusterVersionId", v82}];
            v67 = [v65 objectForKeyedSubscript:@"appsClusterAssignments"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v91 = v67;
              v95 = v67;
              v99 = [v95 countByEnumeratingWithState:&v106 objects:v123 count:16];
              if (v99)
              {
                v97 = *v107;
                do
                {
                  v68 = 0;
                  do
                  {
                    if (*v107 != v97)
                    {
                      objc_enumerationMutation(v95);
                    }

                    v101 = v68;
                    v69 = *(*(&v106 + 1) + 8 * v68);
                    v70 = [v69 objectForKeyedSubscript:@"adamId"];
                    v71 = [v11 objectForKey:v70];
                    v72 = [v69 objectForKeyedSubscript:@"clusterAssignments"];
                    if (v71)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v104 = 0u;
                        v105 = 0u;
                        v102 = 0u;
                        v103 = 0u;
                        v96 = v72;
                        v73 = v72;
                        v74 = [v73 countByEnumeratingWithState:&v102 objects:v122 count:16];
                        if (v74)
                        {
                          v75 = v74;
                          v76 = *v103;
                          do
                          {
                            for (k = 0; k != v75; k = k + 1)
                            {
                              if (*v103 != v76)
                              {
                                objc_enumerationMutation(v73);
                              }

                              v78 = [[AppClusterMapping alloc] initWithItemID:v70 bundleID:v71 clusterVersionID:v66 dictionary:*(*(&v102 + 1) + 8 * k)];
                              [(NSMutableOrderedSet *)v10->_clusterMappings addObject:v78];
                            }

                            v75 = [v73 countByEnumeratingWithState:&v102 objects:v122 count:16];
                          }

                          while (v75);
                        }

                        v11 = v94;
                        v72 = v96;
                      }
                    }

                    v68 = v101 + 1;
                  }

                  while ((v101 + 1) != v99);
                  v99 = [v95 countByEnumeratingWithState:&v106 objects:v123 count:16];
                }

                while (v99);
              }

              v63 = v87;
              v62 = v89;
              v67 = v91;
            }

            v64 = v92 + 1;
          }

          while ((v92 + 1) != v62);
          v62 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
        }

        while (v62);
      }

      v9 = v85;
      v8 = v86;
      v58 = v82;
      v39 = v84;
    }

    v79 = [[SSDictionaryResponse alloc] initWithResponseDictionary:v8];
    v80 = [v79 actionsWithActionType:SSResponseActionTypeCheckDownloadQueues];
    v10->_triggeredQueueCheck = [v80 count] != 0;
  }

  return v10;
}

- (StoreDownloadQueueResponse)initWithError:(id)a3 userIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(StoreDownloadQueueResponse *)self _initStoreDownloadQueueResponse];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 4, a3);
    v11 = [v8 copy];
    userIdentifier = v10->_userIdentifier;
    v10->_userIdentifier = v11;
  }

  return v10;
}

- (NSOrderedSet)downloads
{
  v2 = [(NSMutableOrderedSet *)self->_downloads copy];

  return v2;
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10009BFB8;
  v10 = sub_10009BFC8;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009BFD0;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setError:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009C094;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setShouldCancelPurchaseBatch:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009C12C;
  v4[3] = &unk_1003274E8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setTriggeredQueueCheck:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009C1B4;
  v4[3] = &unk_1003274E8;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (BOOL)shouldCancelPurchaseBatch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009C270;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)triggeredQueueCheck
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009C330;
  v5[3] = &unk_1003274C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_errorWithFailureType:(id)a3 customerMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 intValue];
  }

  v7 = SSError();

  return v7;
}

- (id)copyJobManifestWithAccountID:(id)a3 accountName:(id)a4
{
  v5 = [(StoreDownloadQueueResponse *)self _newManifestWithStoreDownloadQueueResponse:self accountID:a3 accountName:a4];
  v6 = [(StoreDownloadQueueResponse *)self storeCorrelationID];
  [v5 setStoreCorrelationID:v6];

  return v5;
}

- (void)enumerateActivitiesWithAccountID:(id)a3 accountName:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v44 = a5;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v48 = self;
  obj = [(StoreDownloadQueueResponse *)self downloads];
  v10 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    v45 = v8;
    v47 = v9;
    do
    {
      v13 = 0;
      do
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v49 + 1) + 8 * v13);
        v15 = [v14 kind];
        IsSoftwareKind = SSDownloadKindIsSoftwareKind();

        if (IsSoftwareKind)
        {
          v17 = [v14 copyJobActivity];
          v18 = [v17 bundleID];
          v19 = [v18 length];

          v20 = +[SSLogConfig sharedDaemonConfig];
          v21 = v20;
          if (!v19)
          {
            if (!v20)
            {
              v21 = +[SSLogConfig sharedConfig];
            }

            v36 = [v21 shouldLog];
            if ([v21 shouldLogToDisk])
            {
              v36 |= 2u;
            }

            v37 = [v21 OSLogObject];
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v36 &= 2u;
            }

            if (v36)
            {
              v38 = objc_opt_class();
              v53 = 138412546;
              v54 = v38;
              v55 = 2112;
              v56 = v14;
              v39 = v38;
              LODWORD(v43) = 22;
              v42 = &v53;
              v40 = _os_log_send_and_compose_impl();

              v9 = v47;
              if (!v40)
              {
                goto LABEL_44;
              }

              v37 = [NSString stringWithCString:v40 encoding:4, &v53, v43];
              free(v40);
              v42 = v37;
              SSFileLog();
            }

            goto LABEL_44;
          }

          if (!v20)
          {
            v21 = +[SSLogConfig sharedConfig];
          }

          v22 = [v21 shouldLog];
          if ([v21 shouldLogToDisk])
          {
            v22 |= 2u;
          }

          v23 = [v21 OSLogObject];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = v22;
          }

          else
          {
            v24 = v22 & 2;
          }

          if (v24)
          {
            v25 = objc_opt_class();
            v26 = v25;
            v27 = [v17 bundleID];
            v53 = 138412546;
            v54 = v25;
            v55 = 2112;
            v56 = v27;
            LODWORD(v43) = 22;
            v42 = &v53;
            v28 = _os_log_send_and_compose_impl();

            v8 = v45;
            v9 = v47;

            if (v28)
            {
              v23 = [NSString stringWithCString:v28 encoding:4, &v53, v43];
              free(v28);
              v42 = v23;
              SSFileLog();
              goto LABEL_18;
            }
          }

          else
          {
LABEL_18:
          }

          v29 = [(StoreDownloadQueueResponse *)v48 clientIdentifier];
          [v17 setClientID:v29];

          [v17 setIsFromStore:1];
          if (v8)
          {
            [v17 setStoreAccountID:v8];
          }

          if (v9)
          {
            [v17 setStoreAccountName:v9];
          }

          v44[2](v44, v17);
          goto LABEL_45;
        }

        v17 = +[SSLogConfig sharedDaemonConfig];
        if (!v17)
        {
          v17 = +[SSLogConfig sharedConfig];
        }

        v30 = [v17 shouldLog];
        if ([v17 shouldLogToDisk])
        {
          v30 |= 2u;
        }

        v21 = [v17 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
        }

        else
        {
          v31 = v30 & 2;
        }

        if (!v31)
        {
          goto LABEL_44;
        }

        v32 = objc_opt_class();
        v33 = v32;
        v34 = [v14 kind];
        v53 = 138412546;
        v54 = v32;
        v55 = 2112;
        v56 = v34;
        LODWORD(v43) = 22;
        v42 = &v53;
        v35 = _os_log_send_and_compose_impl();

        if (v35)
        {
          v21 = [NSString stringWithCString:v35 encoding:4, &v53, v43];
          free(v35);
          v42 = v21;
          SSFileLog();
          v8 = v45;
          v9 = v47;
LABEL_44:

          goto LABEL_45;
        }

        v8 = v45;
        v9 = v47;
LABEL_45:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v41 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
      v11 = v41;
    }

    while (v41);
  }
}

- (id)_newManifestWithStoreDownloadQueueResponse:(id)a3 accountID:(id)a4 accountName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v44 = [objc_alloc(ISWeakLinkedClassForString()) initWithManifestType:0];
  v45 = v7;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = [v7 downloads];
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    v43 = *v48;
    v42 = v10;
    do
    {
      v14 = 0;
      v46 = v12;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v47 + 1) + 8 * v14);
        v16 = [v15 kind];
        IsSoftwareKind = SSDownloadKindIsSoftwareKind();

        if (IsSoftwareKind)
        {
          v18 = [v15 copyJobActivity];
          v19 = [v18 bundleID];
          v20 = [v19 length];

          v21 = +[SSLogConfig sharedDaemonConfig];
          v22 = v21;
          if (v20)
          {
            if (!v21)
            {
              v22 = +[SSLogConfig sharedConfig];
            }

            v23 = [v22 shouldLog];
            if ([v22 shouldLogToDisk])
            {
              v23 |= 2u;
            }

            v24 = [v22 OSLogObject];
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v23 &= 2u;
            }

            if (v23)
            {
              v25 = objc_opt_class();
              v26 = v9;
              v27 = v8;
              v28 = v25;
              v29 = [v18 bundleID];
              v51 = 138412546;
              v52 = v25;
              v53 = 2112;
              v54 = v29;
              LODWORD(v41) = 22;
              v40 = &v51;
              v30 = _os_log_send_and_compose_impl();

              v13 = v43;
              v8 = v27;
              v9 = v26;
              v10 = v42;

              if (v30)
              {
                v24 = [NSString stringWithCString:v30 encoding:4, &v51, v41];
                free(v30);
                v40 = v24;
                SSFileLog();
                goto LABEL_17;
              }
            }

            else
            {
LABEL_17:
            }

            v31 = [v45 clientIdentifier];
            [v18 setClientID:v31];

            if (v8)
            {
              [v18 setStoreAccountID:v8];
            }

            v12 = v46;
            if (v9)
            {
              [v18 setStoreAccountName:v9];
            }

            [v18 setIsFromStore:{1, v40}];
            v32 = [v44 addActivity:v18];
LABEL_35:

            goto LABEL_36;
          }

          if (!v21)
          {
            v22 = +[SSLogConfig sharedConfig];
          }

          v33 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v34 = v33 | 2;
          }

          else
          {
            v34 = v33;
          }

          v35 = [v22 OSLogObject];
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v34 &= 2u;
          }

          if (v34)
          {
            v36 = objc_opt_class();
            v51 = 138412546;
            v52 = v36;
            v53 = 2112;
            v54 = v15;
            v37 = v36;
            LODWORD(v41) = 22;
            v40 = &v51;
            v38 = _os_log_send_and_compose_impl();

            v13 = v43;
            if (v38)
            {
              v35 = [NSString stringWithCString:v38 encoding:4, &v51, v41];
              free(v38);
              v40 = v35;
              SSFileLog();
              goto LABEL_33;
            }
          }

          else
          {
LABEL_33:
          }

          v12 = v46;
          goto LABEL_35;
        }

LABEL_36:
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v12);
  }

  return v44;
}

@end