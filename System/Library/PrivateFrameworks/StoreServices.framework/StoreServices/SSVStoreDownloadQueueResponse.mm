@interface SSVStoreDownloadQueueResponse
- (BOOL)shouldCancelPurchaseBatch;
- (BOOL)triggeredQueueCheck;
- (NSError)error;
- (NSOrderedSet)downloads;
- (SSVStoreDownloadQueueResponse)initWithDictionary:(id)dictionary userIdentifier:(id)identifier preferredAssetFlavor:(id)flavor;
- (SSVStoreDownloadQueueResponse)initWithError:(id)error userIdentifier:(id)identifier;
- (id)_errorWithFailureType:(id)type customerMessage:(id)message;
- (id)_initStoreDownloadQueueResponse;
- (void)setError:(id)error;
- (void)setShouldCancelPurchaseBatch:(BOOL)batch;
- (void)setTriggeredQueueCheck:(BOOL)check;
@end

@implementation SSVStoreDownloadQueueResponse

- (id)_initStoreDownloadQueueResponse
{
  v6.receiver = self;
  v6.super_class = SSVStoreDownloadQueueResponse;
  v2 = [(SSVStoreDownloadQueueResponse *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.storeservices.StoreDownloadQueueResponse", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (SSVStoreDownloadQueueResponse)initWithDictionary:(id)dictionary userIdentifier:(id)identifier preferredAssetFlavor:(id)flavor
{
  v75 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  flavorCopy = flavor;
  _initStoreDownloadQueueResponse = [(SSVStoreDownloadQueueResponse *)self _initStoreDownloadQueueResponse];
  if (_initStoreDownloadQueueResponse)
  {
    v12 = [dictionaryCopy objectForKey:@"page-type"];
    v13 = 0x1E695D000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v12 objectForKey:@"template-name"];

      v12 = v14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v12 isEqualToString:@"preorder-success"];
    }

    else
    {
      v15 = 0;
    }

    v16 = [dictionaryCopy objectForKey:@"more"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = SSVCopyLoadMoreRangesFromArray(v16);
      rangesToLoad = _initStoreDownloadQueueResponse->_rangesToLoad;
      _initStoreDownloadQueueResponse->_rangesToLoad = v17;
    }

    v19 = [dictionaryCopy objectForKey:@"failureType"];

    if (v19)
    {
      v20 = [dictionaryCopy objectForKey:@"customerMessage"];
      v21 = [(SSVStoreDownloadQueueResponse *)_initStoreDownloadQueueResponse _errorWithFailureType:v19 customerMessage:v20];
      error = _initStoreDownloadQueueResponse->_error;
      _initStoreDownloadQueueResponse->_error = v21;
    }

    v23 = [dictionaryCopy objectForKey:@"failed-items"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = v15;
      v60 = flavorCopy;
      v61 = dictionaryCopy;
      v62 = identifierCopy;
      v24 = _initStoreDownloadQueueResponse;
      v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v59 = v23;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v70;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v70 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v69 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = v13;
              v32 = [v30 objectForKey:@"item-id"];
              v33 = [v30 objectForKey:@"failureType"];
              v34 = [v30 objectForKey:@"customerMessage"];
              v35 = [(SSVStoreDownloadQueueResponse *)v24 _errorWithFailureType:v33 customerMessage:v34];

              if (v32)
              {
                v36 = v35 == 0;
              }

              else
              {
                v36 = 1;
              }

              if (!v36)
              {
                [v64 setObject:v35 forKey:v32];
              }

              v13 = v31;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v69 objects:v74 count:16];
        }

        while (v27);
      }

      v37 = [v64 copy];
      _initStoreDownloadQueueResponse = v24;
      itemErrors = v24->_itemErrors;
      v24->_itemErrors = v37;

      dictionaryCopy = v61;
      identifierCopy = v62;
      v23 = v59;
      flavorCopy = v60;
      v15 = v58;
    }

    v39 = [dictionaryCopy objectForKey:@"keybag"];
    keybag = _initStoreDownloadQueueResponse->_keybag;
    _initStoreDownloadQueueResponse->_keybag = v39;

    v41 = [dictionaryCopy objectForKey:@"dsPersonId"];
    v42 = SSAccountGetUniqueIdentifierFromValue(v41);

    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = identifierCopy;
    }

    objc_storeStrong(&_initStoreDownloadQueueResponse->_userIdentifier, v43);
    if ((v15 & 1) == 0)
    {
      v44 = [dictionaryCopy objectForKey:@"items"];

      v23 = v44;
      if (!v44)
      {
        v23 = [dictionaryCopy objectForKey:@"songList"];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = identifierCopy;
        v45 = objc_alloc_init(MEMORY[0x1E695DFA0]);
        downloads = _initStoreDownloadQueueResponse->_downloads;
        _initStoreDownloadQueueResponse->_downloads = v45;

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v23 = v23;
        v47 = [v23 countByEnumeratingWithState:&v65 objects:v73 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v66;
          do
          {
            v50 = v23;
            for (j = 0; j != v48; ++j)
            {
              if (*v66 != v49)
              {
                objc_enumerationMutation(v50);
              }

              v52 = [[SSVStoreDownload alloc] initWithDictionary:*(*(&v65 + 1) + 8 * j)];
              if ([flavorCopy length])
              {
                [(SSVStoreDownload *)v52 setPreferredAssetFlavor:flavorCopy];
              }

              [(NSMutableOrderedSet *)_initStoreDownloadQueueResponse->_downloads addObject:v52];
            }

            v23 = v50;
            v48 = [v50 countByEnumeratingWithState:&v65 objects:v73 count:16];
          }

          while (v48);
        }

        identifierCopy = v63;
      }
    }

    v53 = [dictionaryCopy objectForKey:@"cancel-purchase-batch"];

    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v53 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    _initStoreDownloadQueueResponse->_shouldCancelPurchaseBatch = bOOLValue;
    v55 = [[SSDictionaryResponse alloc] initWithResponseDictionary:dictionaryCopy];
    v56 = [(SSDictionaryResponse *)v55 actionsWithActionType:@"SSResponseActionTypeCheckDownloadQueues"];
    _initStoreDownloadQueueResponse->_triggeredQueueCheck = [v56 count] != 0;
  }

  return _initStoreDownloadQueueResponse;
}

- (SSVStoreDownloadQueueResponse)initWithError:(id)error userIdentifier:(id)identifier
{
  errorCopy = error;
  identifierCopy = identifier;
  _initStoreDownloadQueueResponse = [(SSVStoreDownloadQueueResponse *)self _initStoreDownloadQueueResponse];
  v10 = _initStoreDownloadQueueResponse;
  if (_initStoreDownloadQueueResponse)
  {
    objc_storeStrong(_initStoreDownloadQueueResponse + 3, error);
    objc_storeStrong(&v10->_userIdentifier, identifier);
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
  v9 = __Block_byref_object_copy__80;
  v10 = __Block_byref_object_dispose__80;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__SSVStoreDownloadQueueResponse_error__block_invoke;
  v5[3] = &unk_1E84ABF40;
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
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SSVStoreDownloadQueueResponse_setError___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __42__SSVStoreDownloadQueueResponse_setError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 24);
  v4 = (v2 + 24);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

- (void)setShouldCancelPurchaseBatch:(BOOL)batch
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__SSVStoreDownloadQueueResponse_setShouldCancelPurchaseBatch___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  batchCopy = batch;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setTriggeredQueueCheck:(BOOL)check
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SSVStoreDownloadQueueResponse_setTriggeredQueueCheck___block_invoke;
  v4[3] = &unk_1E84AD070;
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
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SSVStoreDownloadQueueResponse_shouldCancelPurchaseBatch__block_invoke;
  v5[3] = &unk_1E84ABF40;
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
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SSVStoreDownloadQueueResponse_triggeredQueueCheck__block_invoke;
  v5[3] = &unk_1E84ABF40;
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
    intValue = [typeCopy intValue];
    v8 = @"SSServerErrorDomain";
  }

  else
  {
    v8 = @"SSErrorDomain";
    intValue = 100;
  }

  v9 = SSError(v8, intValue, messageCopy, 0);

  return v9;
}

@end