@interface StoreDownloadQueueResponse
- (BOOL)shouldCancelPurchaseBatch;
- (BOOL)triggeredQueueCheck;
- (NSError)error;
- (NSOrderedSet)downloads;
- (StoreDownloadQueueResponse)initWithDictionary:(id)dictionary userIdentifier:(id)identifier preferredAssetFlavor:(id)flavor;
- (StoreDownloadQueueResponse)initWithError:(id)error userIdentifier:(id)identifier;
- (id)_errorWithFailureType:(id)type customerMessage:(id)message;
- (id)_initStoreDownloadQueueResponse;
- (id)_newManifestWithStoreDownloadQueueResponse:(id)response accountID:(id)d accountName:(id)name;
- (id)copyJobManifestWithAccountID:(id)d accountName:(id)name;
- (void)enumerateActivitiesWithAccountID:(id)d accountName:(id)name usingBlock:(id)block;
- (void)setError:(id)error;
- (void)setShouldCancelPurchaseBatch:(BOOL)batch;
- (void)setTriggeredQueueCheck:(BOOL)check;
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

- (StoreDownloadQueueResponse)initWithDictionary:(id)dictionary userIdentifier:(id)identifier preferredAssetFlavor:(id)flavor
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  flavorCopy = flavor;
  _initStoreDownloadQueueResponse = [(StoreDownloadQueueResponse *)self _initStoreDownloadQueueResponse];
  if (_initStoreDownloadQueueResponse)
  {
    v11 = objc_opt_new();
    v12 = [dictionaryCopy objectForKey:@"page-type"];
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

    v15 = [dictionaryCopy objectForKey:@"more"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = ISCopyLoadMoreRangesFromArray();
      rangesToLoad = _initStoreDownloadQueueResponse->_rangesToLoad;
      _initStoreDownloadQueueResponse->_rangesToLoad = v16;
    }

    v18 = [dictionaryCopy objectForKey:@"failureType"];

    if (v18)
    {
      v19 = [dictionaryCopy objectForKey:@"customerMessage"];
      v20 = [(StoreDownloadQueueResponse *)_initStoreDownloadQueueResponse _errorWithFailureType:v18 customerMessage:v19];
      error = _initStoreDownloadQueueResponse->_error;
      _initStoreDownloadQueueResponse->_error = v20;
    }

    v22 = [dictionaryCopy objectForKey:@"failed-items"];

    objc_opt_class();
    v85 = identifierCopy;
    v86 = dictionaryCopy;
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
              v32 = [(StoreDownloadQueueResponse *)_initStoreDownloadQueueResponse _errorWithFailureType:v30 customerMessage:v31];

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
      itemErrors = _initStoreDownloadQueueResponse->_itemErrors;
      _initStoreDownloadQueueResponse->_itemErrors = v34;

      identifierCopy = v85;
      dictionaryCopy = v86;
      v11 = v93;
      v22 = v98;
    }

    v36 = [dictionaryCopy objectForKey:@"keybag"];
    keybag = _initStoreDownloadQueueResponse->_keybag;
    _initStoreDownloadQueueResponse->_keybag = v36;

    v38 = [dictionaryCopy objectForKey:@"dsPersonId"];
    v39 = SSAccountGetUniqueIdentifierFromValue();

    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = identifierCopy;
    }

    v41 = [v40 copy];
    userIdentifier = _initStoreDownloadQueueResponse->_userIdentifier;
    _initStoreDownloadQueueResponse->_userIdentifier = v41;

    if ((v14 & 1) == 0)
    {
      v43 = [dictionaryCopy objectForKey:@"items"];

      v22 = v43;
      if (!v43)
      {
        v22 = [dictionaryCopy objectForKey:@"songList"];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v83 = v39;
        v44 = objc_alloc_init(NSMutableOrderedSet);
        downloads = _initStoreDownloadQueueResponse->_downloads;
        _initStoreDownloadQueueResponse->_downloads = v44;

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
                bundleIdentifier = [(StoreDownload *)v51 bundleIdentifier];
                v53 = [bundleIdentifier length];

                if (v53)
                {
                  bundleIdentifier2 = [(StoreDownload *)v51 bundleIdentifier];
                  v55 = [NSNumber numberWithUnsignedLongLong:[(StoreDownload *)v51 itemIdentifier]];
                  [v11 setObject:bundleIdentifier2 forKey:v55];
                }
              }

              if ([flavorCopy length])
              {
                [(StoreDownload *)v51 setPreferredAssetFlavor:flavorCopy];
              }

              [(NSMutableOrderedSet *)_initStoreDownloadQueueResponse->_downloads addObject:v51];
            }

            v22 = v49;
            v47 = [v49 countByEnumeratingWithState:&v114 objects:v125 count:16];
          }

          while (v47);
        }

        identifierCopy = v85;
        dictionaryCopy = v86;
        v39 = v83;
      }
    }

    v56 = [dictionaryCopy objectForKey:@"cancel-purchase-batch"];

    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v56 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    _initStoreDownloadQueueResponse->_shouldCancelPurchaseBatch = bOOLValue;
    v58 = [dictionaryCopy objectForKey:@"appClusterAssignmentsResultSet"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84 = v39;
      v59 = objc_opt_new();
      clusterMappings = _initStoreDownloadQueueResponse->_clusterMappings;
      _initStoreDownloadQueueResponse->_clusterMappings = v59;

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
                              [(NSMutableOrderedSet *)_initStoreDownloadQueueResponse->_clusterMappings addObject:v78];
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

      identifierCopy = v85;
      dictionaryCopy = v86;
      v58 = v82;
      v39 = v84;
    }

    v79 = [[SSDictionaryResponse alloc] initWithResponseDictionary:dictionaryCopy];
    v80 = [v79 actionsWithActionType:SSResponseActionTypeCheckDownloadQueues];
    _initStoreDownloadQueueResponse->_triggeredQueueCheck = [v80 count] != 0;
  }

  return _initStoreDownloadQueueResponse;
}

- (StoreDownloadQueueResponse)initWithError:(id)error userIdentifier:(id)identifier
{
  errorCopy = error;
  identifierCopy = identifier;
  _initStoreDownloadQueueResponse = [(StoreDownloadQueueResponse *)self _initStoreDownloadQueueResponse];
  v10 = _initStoreDownloadQueueResponse;
  if (_initStoreDownloadQueueResponse)
  {
    objc_storeStrong(_initStoreDownloadQueueResponse + 4, error);
    v11 = [identifierCopy copy];
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

- (void)setError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009C094;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setShouldCancelPurchaseBatch:(BOOL)batch
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009C12C;
  v4[3] = &unk_1003274E8;
  v4[4] = self;
  batchCopy = batch;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setTriggeredQueueCheck:(BOOL)check
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009C1B4;
  v4[3] = &unk_1003274E8;
  v4[4] = self;
  checkCopy = check;
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

- (id)_errorWithFailureType:(id)type customerMessage:(id)message
{
  typeCopy = type;
  messageCopy = message;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    messageCopy = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [typeCopy intValue];
  }

  v7 = SSError();

  return v7;
}

- (id)copyJobManifestWithAccountID:(id)d accountName:(id)name
{
  v5 = [(StoreDownloadQueueResponse *)self _newManifestWithStoreDownloadQueueResponse:self accountID:d accountName:name];
  storeCorrelationID = [(StoreDownloadQueueResponse *)self storeCorrelationID];
  [v5 setStoreCorrelationID:storeCorrelationID];

  return v5;
}

- (void)enumerateActivitiesWithAccountID:(id)d accountName:(id)name usingBlock:(id)block
{
  dCopy = d;
  nameCopy = name;
  blockCopy = block;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  selfCopy = self;
  obj = [(StoreDownloadQueueResponse *)self downloads];
  v10 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    v45 = dCopy;
    v47 = nameCopy;
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
        kind = [v14 kind];
        IsSoftwareKind = SSDownloadKindIsSoftwareKind();

        if (IsSoftwareKind)
        {
          copyJobActivity = [v14 copyJobActivity];
          bundleID = [copyJobActivity bundleID];
          v19 = [bundleID length];

          v20 = +[SSLogConfig sharedDaemonConfig];
          oSLogObject3 = v20;
          if (!v19)
          {
            if (!v20)
            {
              oSLogObject3 = +[SSLogConfig sharedConfig];
            }

            shouldLog = [oSLogObject3 shouldLog];
            if ([oSLogObject3 shouldLogToDisk])
            {
              shouldLog |= 2u;
            }

            oSLogObject = [oSLogObject3 OSLogObject];
            if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
            {
              shouldLog &= 2u;
            }

            if (shouldLog)
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

              nameCopy = v47;
              if (!v40)
              {
                goto LABEL_44;
              }

              oSLogObject = [NSString stringWithCString:v40 encoding:4, &v53, v43];
              free(v40);
              v42 = oSLogObject;
              SSFileLog();
            }

            goto LABEL_44;
          }

          if (!v20)
          {
            oSLogObject3 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [oSLogObject3 shouldLog];
          if ([oSLogObject3 shouldLogToDisk])
          {
            shouldLog2 |= 2u;
          }

          oSLogObject2 = [oSLogObject3 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v24 = shouldLog2;
          }

          else
          {
            v24 = shouldLog2 & 2;
          }

          if (v24)
          {
            v25 = objc_opt_class();
            v26 = v25;
            bundleID2 = [copyJobActivity bundleID];
            v53 = 138412546;
            v54 = v25;
            v55 = 2112;
            v56 = bundleID2;
            LODWORD(v43) = 22;
            v42 = &v53;
            v28 = _os_log_send_and_compose_impl();

            dCopy = v45;
            nameCopy = v47;

            if (v28)
            {
              oSLogObject2 = [NSString stringWithCString:v28 encoding:4, &v53, v43];
              free(v28);
              v42 = oSLogObject2;
              SSFileLog();
              goto LABEL_18;
            }
          }

          else
          {
LABEL_18:
          }

          clientIdentifier = [(StoreDownloadQueueResponse *)selfCopy clientIdentifier];
          [copyJobActivity setClientID:clientIdentifier];

          [copyJobActivity setIsFromStore:1];
          if (dCopy)
          {
            [copyJobActivity setStoreAccountID:dCopy];
          }

          if (nameCopy)
          {
            [copyJobActivity setStoreAccountName:nameCopy];
          }

          blockCopy[2](blockCopy, copyJobActivity);
          goto LABEL_45;
        }

        copyJobActivity = +[SSLogConfig sharedDaemonConfig];
        if (!copyJobActivity)
        {
          copyJobActivity = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [copyJobActivity shouldLog];
        if ([copyJobActivity shouldLogToDisk])
        {
          shouldLog3 |= 2u;
        }

        oSLogObject3 = [copyJobActivity OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v31 = shouldLog3;
        }

        else
        {
          v31 = shouldLog3 & 2;
        }

        if (!v31)
        {
          goto LABEL_44;
        }

        v32 = objc_opt_class();
        v33 = v32;
        kind2 = [v14 kind];
        v53 = 138412546;
        v54 = v32;
        v55 = 2112;
        v56 = kind2;
        LODWORD(v43) = 22;
        v42 = &v53;
        v35 = _os_log_send_and_compose_impl();

        if (v35)
        {
          oSLogObject3 = [NSString stringWithCString:v35 encoding:4, &v53, v43];
          free(v35);
          v42 = oSLogObject3;
          SSFileLog();
          dCopy = v45;
          nameCopy = v47;
LABEL_44:

          goto LABEL_45;
        }

        dCopy = v45;
        nameCopy = v47;
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

- (id)_newManifestWithStoreDownloadQueueResponse:(id)response accountID:(id)d accountName:(id)name
{
  responseCopy = response;
  dCopy = d;
  nameCopy = name;
  v44 = [objc_alloc(ISWeakLinkedClassForString()) initWithManifestType:0];
  v45 = responseCopy;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  downloads = [responseCopy downloads];
  v11 = [downloads countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    v43 = *v48;
    v42 = downloads;
    do
    {
      v14 = 0;
      v46 = v12;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(downloads);
        }

        v15 = *(*(&v47 + 1) + 8 * v14);
        kind = [v15 kind];
        IsSoftwareKind = SSDownloadKindIsSoftwareKind();

        if (IsSoftwareKind)
        {
          copyJobActivity = [v15 copyJobActivity];
          bundleID = [copyJobActivity bundleID];
          v20 = [bundleID length];

          v21 = +[SSLogConfig sharedDaemonConfig];
          v22 = v21;
          if (v20)
          {
            if (!v21)
            {
              v22 = +[SSLogConfig sharedConfig];
            }

            shouldLog = [v22 shouldLog];
            if ([v22 shouldLogToDisk])
            {
              shouldLog |= 2u;
            }

            oSLogObject = [v22 OSLogObject];
            if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
            {
              shouldLog &= 2u;
            }

            if (shouldLog)
            {
              v25 = objc_opt_class();
              v26 = nameCopy;
              v27 = dCopy;
              v28 = v25;
              bundleID2 = [copyJobActivity bundleID];
              v51 = 138412546;
              v52 = v25;
              v53 = 2112;
              v54 = bundleID2;
              LODWORD(v41) = 22;
              v40 = &v51;
              v30 = _os_log_send_and_compose_impl();

              v13 = v43;
              dCopy = v27;
              nameCopy = v26;
              downloads = v42;

              if (v30)
              {
                oSLogObject = [NSString stringWithCString:v30 encoding:4, &v51, v41];
                free(v30);
                v40 = oSLogObject;
                SSFileLog();
                goto LABEL_17;
              }
            }

            else
            {
LABEL_17:
            }

            clientIdentifier = [v45 clientIdentifier];
            [copyJobActivity setClientID:clientIdentifier];

            if (dCopy)
            {
              [copyJobActivity setStoreAccountID:dCopy];
            }

            v12 = v46;
            if (nameCopy)
            {
              [copyJobActivity setStoreAccountName:nameCopy];
            }

            [copyJobActivity setIsFromStore:{1, v40}];
            v32 = [v44 addActivity:copyJobActivity];
LABEL_35:

            goto LABEL_36;
          }

          if (!v21)
          {
            v22 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v22 shouldLog];
          if ([v22 shouldLogToDisk])
          {
            v34 = shouldLog2 | 2;
          }

          else
          {
            v34 = shouldLog2;
          }

          oSLogObject2 = [v22 OSLogObject];
          if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
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
              oSLogObject2 = [NSString stringWithCString:v38 encoding:4, &v51, v41];
              free(v38);
              v40 = oSLogObject2;
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
      v12 = [downloads countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v12);
  }

  return v44;
}

@end