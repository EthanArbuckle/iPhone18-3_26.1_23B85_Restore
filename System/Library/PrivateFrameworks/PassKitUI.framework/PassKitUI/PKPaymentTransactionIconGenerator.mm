@interface PKPaymentTransactionIconGenerator
- (PKPaymentTransactionIconGenerator)initWithCache:(BOOL)cache scale:(double)scale;
- (id)_cacheImageFromDownloaderCacheForURL:(id)l;
- (id)_iconCacheKeyForApp:(int64_t)app bundleIdentifier:(id)identifier size:(CGSize)size;
- (id)_iconCacheKeyForTransaction:(id)transaction merchant:(id)merchant size:(CGSize)size ignoreLogoURL:(BOOL)l imageOut:(id *)out;
- (id)_iconCacheKeyForTransaction:(id)transaction size:(CGSize)size ignoreLogoURL:(BOOL)l imageOut:(id *)out;
- (id)_iconForCacheKey:(id)key;
- (id)_iconForTransaction:(id)transaction merchant:(id)merchant size:(CGSize)size ignoreLogoURL:(BOOL)l requestType:(unint64_t)type iconHandler:(id)handler;
- (id)fileDownloader;
- (void)_downloadLogoForURL:(id)l withCompletionHandler:(id)handler;
- (void)_iconForApplication:(int64_t)application applicationIdentifier:(id)identifier requestToProcess:(id)process iconHandler:(id)handler;
- (void)_iconForBusinessConnectMerchant:(id)merchant requestToProcess:(id)process iconHandler:(id)handler;
- (void)_iconForDataReleaseRequest:(id)request iconHandler:(id)handler;
- (void)queue_processNextIconRequest;
@end

@implementation PKPaymentTransactionIconGenerator

- (PKPaymentTransactionIconGenerator)initWithCache:(BOOL)cache scale:(double)scale
{
  cacheCopy = cache;
  v21.receiver = self;
  v21.super_class = PKPaymentTransactionIconGenerator;
  v6 = [(PKPaymentTransactionIconGenerator *)&v21 init];
  if (v6)
  {
    v6->_hasNetworkAccess = PKProcessHasNetworkPrivilegies();
    v6->_useCache = cacheCopy;
    if (cacheCopy)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      iconCache = v6->_iconCache;
      v6->_iconCache = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      iconCacheKeys = v6->_iconCacheKeys;
      v6->_iconCacheKeys = v9;
    }

    v6->_scale = scale;
    v6->_lockRequests._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    highPriorityIconRequests = v6->_highPriorityIconRequests;
    v6->_highPriorityIconRequests = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    lowPriorityIconRequests = v6->_lowPriorityIconRequests;
    v6->_lowPriorityIconRequests = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    inflightRequests = v6->_inflightRequests;
    v6->_inflightRequests = v15;

    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v18 = dispatch_queue_create("com.apple.passbook.transaction.icons", v17);
    queueIcons = v6->_queueIcons;
    v6->_queueIcons = v18;
  }

  return v6;
}

- (id)_iconForTransaction:(id)transaction merchant:(id)merchant size:(CGSize)size ignoreLogoURL:(BOOL)l requestType:(unint64_t)type iconHandler:(id)handler
{
  lCopy = l;
  height = size.height;
  width = size.width;
  v50[1] = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  merchantCopy = merchant;
  handlerCopy = handler;
  if (!handlerCopy || !(transactionCopy | merchantCopy))
  {
    v22 = 0;
    goto LABEL_33;
  }

  if (transactionCopy)
  {
    height = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForTransaction:transactionCopy size:lCopy ignoreLogoURL:0 imageOut:width, height];
    v19 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:height];
    merchant = [transactionCopy merchant];
    IsFinalForMerchant = CacheKeyIsFinalForMerchant(height, merchant, lCopy);

    if (!v19)
    {
LABEL_12:
      v23 = objc_alloc_init(PKPaymentTransactionIconRequest);
      [(PKPaymentTransactionIconRequest *)v23 setSize:width, height];
      [(PKPaymentTransactionIconRequest *)v23 setTransaction:transactionCopy];
      [(PKPaymentTransactionIconRequest *)v23 setMerchant:merchantCopy];
      [(PKPaymentTransactionIconRequest *)v23 setCacheKey:height];
      [(PKPaymentTransactionIconRequest *)v23 setIgnoreLogoURL:lCopy];
      os_unfair_lock_lock(&self->_lockRequests);
      v48 = height;
      if (type)
      {
        if (type != 1)
        {
          v26 = 0;
          v24 = 0;
LABEL_18:
          v47 = v19;
          if ([(NSMutableArray *)self->_inflightRequests containsObject:v23])
          {
            v27 = [(NSMutableArray *)self->_inflightRequests objectAtIndex:[(NSMutableArray *)self->_inflightRequests indexOfObject:v23]];
            [v27 completionHandlers];
            v28 = v45 = v26;
            v29 = [handlerCopy copy];
            v30 = _Block_copy(v29);
            v31 = [v28 arrayByAddingObject:v30];
            [v27 setCompletionHandlers:v31];

            v26 = v45;
LABEL_28:
            height = v48;
            if (self->_processingRequest)
            {
              os_unfair_lock_unlock(&self->_lockRequests);
            }

            else
            {
              self->_processingRequest = 1;
              os_unfair_lock_unlock(&self->_lockRequests);
              queueIcons = self->_queueIcons;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __109__PKPaymentTransactionIconGenerator__iconForTransaction_merchant_size_ignoreLogoURL_requestType_iconHandler___block_invoke;
              block[3] = &unk_1E8010970;
              block[4] = self;
              dispatch_async(queueIcons, block);
            }

            v22 = v47;

            goto LABEL_32;
          }

          p_highPriorityIconRequests = &self->_highPriorityIconRequests;
          if ([(NSMutableOrderedSet *)self->_highPriorityIconRequests containsObject:v23])
          {
            if ((v24 & 1) == 0)
            {
              completionHandlers = [0 completionHandlers];
              v34 = [handlerCopy copy];
              v35 = _Block_copy(v34);
              v36 = [completionHandlers arrayByAddingObject:v35];
              [0 setCompletionHandlers:v36];

              goto LABEL_28;
            }
          }

          else
          {
            p_highPriorityIconRequests = &self->_lowPriorityIconRequests;
            if (![(NSMutableOrderedSet *)self->_lowPriorityIconRequests containsObject:v23])
            {
              goto LABEL_26;
            }
          }

          v37 = [(NSMutableOrderedSet *)*p_highPriorityIconRequests objectAtIndex:[(NSMutableOrderedSet *)*p_highPriorityIconRequests indexOfObject:v23]];
          [(NSMutableOrderedSet *)*p_highPriorityIconRequests removeObject:v23];
          if (v37)
          {
            completionHandlers2 = [v37 completionHandlers];
            v38 = [handlerCopy copy];
            v39 = _Block_copy(v38);
            [completionHandlers2 arrayByAddingObject:v39];
            v41 = v40 = v26;
            [(PKPaymentTransactionIconRequest *)v23 setCompletionHandlers:v41];

            v26 = v40;
LABEL_27:

            [v26 addObject:v23];
            goto LABEL_28;
          }

LABEL_26:
          v37 = [handlerCopy copy];
          v50[0] = v37;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
          [(PKPaymentTransactionIconRequest *)v23 setCompletionHandlers:v42];

          goto LABEL_27;
        }

        v24 = 0;
        v25 = 48;
      }

      else
      {
        v24 = 1;
        v25 = 40;
      }

      v26 = *(&self->super.isa + v25);
      goto LABEL_18;
    }
  }

  else
  {
    if (!merchantCopy)
    {
      v19 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:0];
      height = 0;
      goto LABEL_12;
    }

    height = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForMerchant:merchantCopy size:lCopy ignoreLogoURL:0 imageOut:width, height];
    v19 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:height];
    IsFinalForMerchant = CacheKeyIsFinalForMerchant(height, merchantCopy, lCopy);
    if (!v19)
    {
      goto LABEL_12;
    }
  }

  if (!IsFinalForMerchant)
  {
    goto LABEL_12;
  }

  v22 = v19;
LABEL_32:

LABEL_33:

  return v22;
}

- (void)queue_processNextIconRequest
{
  selfCopy = self;
  v69 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lockRequests);
  lastObject = [(NSMutableOrderedSet *)selfCopy->_highPriorityIconRequests lastObject];
  if (lastObject)
  {
    lastObject2 = lastObject;
    [(NSMutableOrderedSet *)selfCopy->_highPriorityIconRequests removeObject:lastObject];
    os_unfair_lock_unlock(&selfCopy->_lockRequests);
    goto LABEL_4;
  }

  lastObject2 = [(NSMutableOrderedSet *)selfCopy->_lowPriorityIconRequests lastObject];
  [(NSMutableOrderedSet *)selfCopy->_lowPriorityIconRequests removeObject:lastObject2];
  os_unfair_lock_unlock(&selfCopy->_lockRequests);
  if (lastObject2)
  {
    while (1)
    {
LABEL_4:
      v5 = objc_autoreleasePoolPush();
      transaction = [lastObject2 transaction];
      merchant = [lastObject2 merchant];
      v8 = merchant;
      if (merchant)
      {
        merchant2 = merchant;
      }

      else
      {
        merchant2 = [transaction merchant];
      }

      v10 = merchant2;

      logoURL = [lastObject2 logoURL];
      ignoreLogoURL = [lastObject2 ignoreLogoURL];
      v13 = ignoreLogoURL;
      if (logoURL && (ignoreLogoURL & 1) == 0)
      {
        v45 = v10;
        if (transaction)
        {
          [lastObject2 size];
          v66 = 0;
          v14 = &v66;
          v15 = [(PKPaymentTransactionIconGenerator *)selfCopy _iconCacheKeyForTransaction:transaction size:0 ignoreLogoURL:&v66 imageOut:?];
LABEL_25:
          v10 = v15;
          v26 = *v14;
          if (v26)
          {
            v47 = v5;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            completionHandlers = [lastObject2 completionHandlers];
            v30 = [completionHandlers countByEnumeratingWithState:&v61 objects:v68 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v62;
              do
              {
                for (i = 0; i != v31; ++i)
                {
                  if (*v62 != v32)
                  {
                    objc_enumerationMutation(completionHandlers);
                  }

                  (*(*(*(&v61 + 1) + 8 * i) + 16))();
                }

                v31 = [completionHandlers countByEnumeratingWithState:&v61 objects:v68 count:16];
              }

              while (v31);
            }

            v5 = v47;
          }
        }

        else
        {
          if (v10)
          {
            [lastObject2 size];
            v65 = 0;
            v14 = &v65;
            v15 = [(PKPaymentTransactionIconGenerator *)selfCopy _iconCacheKeyForMerchant:v10 size:0 ignoreLogoURL:&v65 imageOut:?];
            goto LABEL_25;
          }

          v26 = 0;
        }

        os_unfair_lock_lock(&selfCopy->_lockRequests);
        [(NSMutableArray *)selfCopy->_inflightRequests addObject:lastObject2];
        os_unfair_lock_unlock(&selfCopy->_lockRequests);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __65__PKPaymentTransactionIconGenerator_queue_processNextIconRequest__block_invoke;
        v56[3] = &unk_1E8022120;
        v41 = logoURL;
        v57 = v41;
        v58 = selfCopy;
        v59 = v10;
        v60 = lastObject2;
        v42 = v10;
        [(PKPaymentTransactionIconGenerator *)selfCopy _downloadLogoForURL:v41 withCompletionHandler:v56];

        v10 = v45;
        goto LABEL_47;
      }

      if (!transaction)
      {
        break;
      }

      v16 = [transaction transactionType] == 15;
      if ([transaction transactionSource] == 3)
      {
        goto LABEL_15;
      }

      v17 = 0;
LABEL_16:
      v46 = v5;
      if ([transaction transactionSource] == 2)
      {
        [transaction releasedData];
        v44 = transaction;
        v19 = logoURL;
        v21 = v20 = v10;
        [v21 application];
        v22 = selfCopy;
        v24 = v23 = v16;
        v25 = [v24 client] == 2;

        v16 = v23;
        selfCopy = v22;

        v10 = v20;
        logoURL = v19;
        transaction = v44;
      }

      else
      {
        v25 = 0;
      }

      if (!v16 || !v17 && !v25)
      {
        if (transaction)
        {
          [lastObject2 size];
          v53 = 0;
          v27 = &v53;
          v28 = [(PKPaymentTransactionIconGenerator *)selfCopy _iconCacheKeyForTransaction:transaction size:v13 ignoreLogoURL:&v53 imageOut:?];
          goto LABEL_36;
        }

        if (v10)
        {
          [lastObject2 size];
          v52 = 0;
          v27 = &v52;
          v34 = [(PKPaymentTransactionIconGenerator *)selfCopy _iconCacheKeyForMerchant:v10 size:v13 ignoreLogoURL:&v52 imageOut:?];
LABEL_36:
          v35 = v10;
          v26 = *v27;
        }

        else
        {
          v35 = 0;
          v26 = 0;
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        completionHandlers2 = [lastObject2 completionHandlers];
        v37 = [completionHandlers2 countByEnumeratingWithState:&v48 objects:v67 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v49;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v49 != v39)
              {
                objc_enumerationMutation(completionHandlers2);
              }

              (*(*(*(&v48 + 1) + 8 * j) + 16))();
            }

            v38 = [completionHandlers2 countByEnumeratingWithState:&v48 objects:v67 count:16];
          }

          while (v38);
        }

        v5 = v46;
        v10 = v35;
        goto LABEL_47;
      }

      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __65__PKPaymentTransactionIconGenerator_queue_processNextIconRequest__block_invoke_76;
      v54[3] = &unk_1E8022148;
      v55 = lastObject2;
      [(PKPaymentTransactionIconGenerator *)selfCopy _iconForDataReleaseRequest:v55 iconHandler:v54];
      v26 = v55;
      v5 = v46;
LABEL_47:

      os_unfair_lock_lock(&selfCopy->_lockRequests);
      lastObject3 = [(NSMutableOrderedSet *)selfCopy->_highPriorityIconRequests lastObject];

      if (lastObject3)
      {
        [(NSMutableOrderedSet *)selfCopy->_highPriorityIconRequests removeObject:lastObject3];
        lastObject2 = lastObject3;
      }

      else
      {
        lastObject2 = [(NSMutableOrderedSet *)selfCopy->_lowPriorityIconRequests lastObject];
        [(NSMutableOrderedSet *)selfCopy->_lowPriorityIconRequests removeObject:lastObject2];
      }

      os_unfair_lock_unlock(&selfCopy->_lockRequests);

      objc_autoreleasePoolPop(v5);
      if (!lastObject2)
      {
        goto LABEL_53;
      }
    }

    v16 = 1;
LABEL_15:
    businessConnectBrandIdentifier = [v10 businessConnectBrandIdentifier];
    v17 = businessConnectBrandIdentifier != 0;

    goto LABEL_16;
  }

LABEL_53:
  os_unfair_lock_lock(&selfCopy->_lockRequests);
  selfCopy->_processingRequest = 0;
  os_unfair_lock_unlock(&selfCopy->_lockRequests);
}

void __65__PKPaymentTransactionIconGenerator_queue_processNextIconRequest__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5 && !a3)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v5];
    v7 = [*(a1 + 32) absoluteString];
    os_unfair_lock_lock((*(a1 + 40) + 80));
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v7;
        v24 = 2048;
        v25 = [v5 length];
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Downloaded data did not result in an image, key: %@, data length: %lu", buf, 0x16u);
      }
    }

    else
    {
      v10 = *(a1 + 40);
      if (*(v10 + 24) == 1)
      {
        [*(v10 + 8) setObject:v6 forKey:v7];
        [*(*(a1 + 40) + 16) addObject:v7];
      }
    }

    v11 = *(a1 + 40);
    if (*(a1 + 48) && *(v11 + 24) == 1)
    {
      [*(v11 + 8) removeObjectForKey:?];
      [*(*(a1 + 40) + 16) addObject:*(a1 + 48)];
      v11 = *(a1 + 40);
    }

    [*(v11 + 56) removeObject:*(a1 + 56)];
    os_unfair_lock_unlock((*(a1 + 40) + 80));
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [*(a1 + 56) completionHandlers];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v17 + 1) + 8 * v16++) + 16))();
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

void __65__PKPaymentTransactionIconGenerator_queue_processNextIconRequest__block_invoke_76(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) completionHandlers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_iconForCacheKey:(id)key
{
  keyCopy = key;
  if (keyCopy && self->_useCache)
  {
    os_unfair_lock_lock(&self->_lockRequests);
    v5 = [(NSMutableDictionary *)self->_iconCache objectForKey:keyCopy];
    [(NSMutableArray *)self->_iconCacheKeys removeObject:keyCopy];
    [(NSMutableArray *)self->_iconCacheKeys addObject:keyCopy];
    if ([(NSMutableArray *)self->_iconCacheKeys count]>= 0x12D)
    {
      firstObject = [(NSMutableArray *)self->_iconCacheKeys firstObject];
      [(NSMutableArray *)self->_iconCacheKeys removeObject:firstObject];
      [(NSMutableDictionary *)self->_iconCache removeObjectForKey:firstObject];
    }

    os_unfair_lock_unlock(&self->_lockRequests);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_iconCacheKeyForTransaction:(id)transaction size:(CGSize)size ignoreLogoURL:(BOOL)l imageOut:(id *)out
{
  lCopy = l;
  height = size.height;
  width = size.width;
  v45 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  merchant = [transactionCopy merchant];
  v13 = [MEMORY[0x1E69B8EB8] iconTypeForTransaction:transactionCopy ignoreLogoURL:lCopy];
  v14 = 0;
  if (v13 <= 1)
  {
    if (v13)
    {
      v15 = 0;
      absoluteString = 0;
      if (v13 != 1)
      {
        goto LABEL_57;
      }

      transitType = [transactionCopy transitType];
      if (lCopy)
      {
        logoImageURL = 0;
      }

      else
      {
        logoImageURL = [merchant logoImageURL];
      }

      v15 = [(PKPaymentTransactionIconGenerator *)self _cacheImageFromDownloaderCacheForURL:logoImageURL];
      v27 = PKCurrencyCodeForTransitTransactionIcon();
      if (v15)
      {
        absoluteString = [logoImageURL absoluteString];
        v28 = 1;
LABEL_48:

        v14 = 0;
LABEL_49:
        v36 = v15 != 0;
        if ((v28 & 1) == 0 && v15 && absoluteString && self->_useCache)
        {
          os_unfair_lock_lock(&self->_lockRequests);
          [(NSMutableDictionary *)self->_iconCache setObject:v15 forKey:absoluteString];
          [(NSMutableArray *)self->_iconCacheKeys addObject:absoluteString];
          os_unfair_lock_unlock(&self->_lockRequests);
        }

        goto LABEL_54;
      }

      v29 = MEMORY[0x1E696AEC0];
      uniqueIdentifier = [merchant uniqueIdentifier];
      absoluteString = [v29 stringWithFormat:@"%lu-%@-%.2f-%.2f", transitType, uniqueIdentifier, *&width, *&height];

      if (transitType == 513 && v27)
      {
        v31 = [absoluteString stringByAppendingFormat:@"-%@", v27];

        absoluteString = v31;
      }

      v32 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:absoluteString];
      v15 = v32;
      v28 = 1;
      if (!out || v32)
      {
        goto LABEL_48;
      }

      v33 = PKStyleAttributesForTransitType();
      if (v33)
      {
        v15 = PKIconForStyleAttributes();
        if (v15)
        {
LABEL_47:

          v28 = 0;
          goto LABEL_48;
        }

        v34 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v42 = v33;
          v43 = 2048;
          v44 = transitType;
          _os_log_impl(&dword_1BD026000, v34, OS_LOG_TYPE_DEFAULT, "Missing icon for attributes: %@, transitSubtype: %ld, falling back to default transit icon", buf, 0x16u);
        }

        v35 = PKIconForTransitTransaction();
      }

      else if (transitType == 517)
      {
        v35 = PKIconForTransitCardRead();
      }

      else
      {
        if (transitType == 513)
        {
          PKIconForTopUpWithCurrency();
        }

        else
        {
          PKMapsIconForMerchant();
        }
        v35 = ;
      }

      v15 = v35;
      goto LABEL_47;
    }

    absoluteString = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForTransaction:transactionCopy merchant:merchant size:lCopy ignoreLogoURL:out imageOut:width, height];
LABEL_34:
    v14 = 0;
    v15 = 0;
    goto LABEL_57;
  }

  if (v13 != 2)
  {
    v15 = 0;
    absoluteString = 0;
    if (v13 != 3)
    {
      goto LABEL_57;
    }

    releasedData = [transactionCopy releasedData];
    application = [releasedData application];
    client = [application client];

    if (client != 2)
    {
      v14 = 0;
      v15 = 0;
      absoluteString = 0;
      goto LABEL_57;
    }

    releasedData2 = [transactionCopy releasedData];
    application2 = [releasedData2 application];
    bundleIdentifier = [application2 bundleIdentifier];

    adamIdentifier = [merchant adamIdentifier];
    if (adamIdentifier > 0 || bundleIdentifier)
    {
      absoluteString = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForApp:adamIdentifier bundleIdentifier:bundleIdentifier size:width, height];
    }

    else
    {
      absoluteString = 0;
    }

    goto LABEL_34;
  }

  v14 = [MEMORY[0x1E69B8EB8] staticIconNameForTransaction:transactionCopy];
  if (v14)
  {
    absoluteString = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%.2f-%.2f", v14, *&width, *&height];
    if (out)
    {
      v26 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:absoluteString];
      if (!v26)
      {
        v37 = PKIconForPDFName();
        if (!v37)
        {
          v37 = PKUIImageNamed(v14);
        }

        v15 = v37;
        v28 = 0;
        goto LABEL_49;
      }

      v15 = v26;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    absoluteString = 0;
  }

  v36 = v15 != 0;
LABEL_54:
  if (out && v36)
  {
    v38 = v15;
    *out = v15;
  }

LABEL_57:
  v39 = absoluteString;

  return absoluteString;
}

- (id)_iconCacheKeyForTransaction:(id)transaction merchant:(id)merchant size:(CGSize)size ignoreLogoURL:(BOOL)l imageOut:(id *)out
{
  height = size.height;
  width = size.width;
  transactionCopy = transaction;
  merchantCopy = merchant;
  v15 = merchantCopy;
  if (l)
  {
    logoImageURL = 0;
  }

  else
  {
    logoImageURL = [merchantCopy logoImageURL];
  }

  v17 = [(PKPaymentTransactionIconGenerator *)self _cacheImageFromDownloaderCacheForURL:logoImageURL];
  if (v17)
  {
    v18 = v17;
    absoluteString = [logoImageURL absoluteString];
    v20 = out != 0;
  }

  else
  {
    if (transactionCopy)
    {
      [transactionCopy effectiveTransactionCategory];
    }

    else
    {
      [v15 category];
    }

    v23 = MEMORY[0x1E696AEC0];
    uniqueIdentifier = [v15 uniqueIdentifier];
    v25 = PKMerchantCategoryToString();
    absoluteString = [v23 stringWithFormat:@"%@-%@-%.2f-%.2f", uniqueIdentifier, v25, *&width, *&height];

    v26 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:absoluteString];
    v18 = v26;
    v20 = out != 0;
    if (out && !v26)
    {
      if (PKPaymentTransactionRecategorizationEnabled())
      {
        PKMapsIconForTransaction();
      }

      else
      {
        PKMapsIconForMerchant();
      }
      v18 = ;
      v20 = 1;
      if (v18)
      {
        if (absoluteString)
        {
          if (self->_useCache)
          {
            os_unfair_lock_lock(&self->_lockRequests);
            [(NSMutableDictionary *)self->_iconCache setObject:v18 forKey:absoluteString];
            [(NSMutableArray *)self->_iconCacheKeys addObject:absoluteString];
            os_unfair_lock_unlock(&self->_lockRequests);
          }

          v20 = 1;
        }
      }
    }
  }

  if (v20 && v18)
  {
    v21 = v18;
    *out = v18;
  }

  return absoluteString;
}

- (id)_cacheImageFromDownloaderCacheForURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  if (absoluteString)
  {
    v6 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:absoluteString];
    if (!v6)
    {
      fileDownloader = [(PKPaymentTransactionIconGenerator *)self fileDownloader];
      v8 = [fileDownloader cachedDataForURL:lCopy];

      if (v8)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v8];
        if (v6 && self->_useCache)
        {
          os_unfair_lock_lock(&self->_lockRequests);
          [(NSMutableDictionary *)self->_iconCache setObject:v6 forKey:absoluteString];
          [(NSMutableArray *)self->_iconCacheKeys addObject:absoluteString];
          os_unfair_lock_unlock(&self->_lockRequests);
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_downloadLogoForURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (self->_hasNetworkAccess)
  {
    fileDownloader = [(PKPaymentTransactionIconGenerator *)self fileDownloader];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__PKPaymentTransactionIconGenerator__downloadLogoForURL_withCompletionHandler___block_invoke;
    v12[3] = &unk_1E8013E70;
    v13 = handlerCopy;
    [fileDownloader downloadFromUrl:lCopy completionHandler:v12];
  }

  else
  {
    paymentService = self->_paymentService;
    if (!paymentService)
    {
      paymentService = [MEMORY[0x1E69B8DB8] paymentService];
      v11 = self->_paymentService;
      self->_paymentService = paymentService;

      paymentService = self->_paymentService;
    }

    [(PKPaymentService *)paymentService logoImageDataForURL:lCopy completion:handlerCopy];
  }
}

- (id)fileDownloader
{
  fileDownloader = self->_fileDownloader;
  if (fileDownloader || !self->_hasNetworkAccess)
  {
    v8 = fileDownloader;
  }

  else
  {
    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    [defaultSessionConfiguration setTimeoutIntervalForResource:15.0];
    [defaultSessionConfiguration setRequestCachePolicy:0];
    [defaultSessionConfiguration setHTTPMaximumConnectionsPerHost:10];
    v5 = [MEMORY[0x1E696AF78] sessionWithConfiguration:defaultSessionConfiguration];
    v6 = [objc_alloc(MEMORY[0x1E69B8A08]) initWithSession:v5];
    v7 = self->_fileDownloader;
    self->_fileDownloader = v6;

    v8 = self->_fileDownloader;
  }

  return v8;
}

- (id)_iconCacheKeyForApp:(int64_t)app bundleIdentifier:(id)identifier size:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (app >= 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"app-%lu-%.2f-%.2f", app, *&width, *&height];
    v10 = LABEL_5:;
    goto LABEL_6;
  }

  if (identifierCopy)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"app-%@-%.2f-%.2f", identifierCopy, *&width, *&height];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)_iconForDataReleaseRequest:(id)request iconHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  transaction = [requestCopy transaction];
  merchant = [requestCopy merchant];
  v9 = merchant;
  if (merchant)
  {
    merchant2 = merchant;
  }

  else
  {
    merchant2 = [transaction merchant];
  }

  v11 = merchant2;

  releasedData = [transaction releasedData];
  application = [releasedData application];

  businessConnectBrandIdentifier = [v11 businessConnectBrandIdentifier];

  if (businessConnectBrandIdentifier)
  {
    [(PKPaymentTransactionIconGenerator *)self _iconForBusinessConnectMerchant:v11 requestToProcess:requestCopy iconHandler:handlerCopy];
  }

  else if ([application client] == 2)
  {
    adamIdentifier = [v11 adamIdentifier];
    bundleIdentifier = [application bundleIdentifier];
    [(PKPaymentTransactionIconGenerator *)self _iconForApplication:adamIdentifier applicationIdentifier:bundleIdentifier requestToProcess:requestCopy iconHandler:handlerCopy];
  }
}

- (void)_iconForBusinessConnectMerchant:(id)merchant requestToProcess:(id)process iconHandler:(id)handler
{
  processCopy = process;
  handlerCopy = handler;
  merchantCopy = merchant;
  businessConnectBrandIdentifier = [merchantCopy businessConnectBrandIdentifier];
  [processCopy size];
  v12 = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForMerchant:merchantCopy size:1 ignoreLogoURL:0 imageOut:?];

  v13 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v12];
  if (v13)
  {
    handlerCopy[2](handlerCopy, v13, 1);
  }

  else
  {
    os_unfair_lock_lock(&self->_lockRequests);
    [(NSMutableArray *)self->_inflightRequests addObject:processCopy];
    os_unfair_lock_unlock(&self->_lockRequests);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__PKPaymentTransactionIconGenerator__iconForBusinessConnectMerchant_requestToProcess_iconHandler___block_invoke;
    aBlock[3] = &unk_1E8022170;
    aBlock[4] = self;
    v20 = v12;
    v21 = processCopy;
    v22 = handlerCopy;
    v14 = _Block_copy(aBlock);
    v15 = objc_alloc_init(getBCSBusinessQueryServiceClass());
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__PKPaymentTransactionIconGenerator__iconForBusinessConnectMerchant_requestToProcess_iconHandler___block_invoke_2;
    v17[3] = &unk_1E8022198;
    v18 = v14;
    v16 = v14;
    [v15 fetchBrandWithIdentifier:businessConnectBrandIdentifier serviceType:5 completion:v17];
  }
}

void __98__PKPaymentTransactionIconGenerator__iconForBusinessConnectMerchant_requestToProcess_iconHandler___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  os_unfair_lock_lock((a1[4] + 80));
  v3 = a1[4];
  if (v6 && *(v3 + 24) == 1 && a1[5])
  {
    [*(v3 + 8) setObject:? forKey:?];
    [*(a1[4] + 16) addObject:a1[5]];
    v3 = a1[4];
  }

  [*(v3 + 56) removeObject:a1[6]];
  os_unfair_lock_unlock((a1[4] + 80));
  v4 = a1[7];
  v5 = v6;
  if (v4)
  {
    (*(v4 + 16))(v4, v6, 1);
    v5 = v6;
  }
}

void __98__PKPaymentTransactionIconGenerator__iconForBusinessConnectMerchant_requestToProcess_iconHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 logoURL];
  if (v3)
  {
    v4 = [v6 logoURL];
    v5 = PKCreateCGImage(v4);

    if (v5)
    {
      v3 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v5];
    }

    else
    {
      v3 = 0;
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_iconForApplication:(int64_t)application applicationIdentifier:(id)identifier requestToProcess:(id)process iconHandler:(id)handler
{
  v37[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  processCopy = process;
  handlerCopy = handler;
  [processCopy size];
  if (application > 0 || identifierCopy)
  {
    v13 = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForApp:application bundleIdentifier:identifierCopy size:?];
    v14 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v13];
    if (v14)
    {
      handlerCopy[2](handlerCopy, v14, 1);
LABEL_6:

      goto LABEL_7;
    }

    os_unfair_lock_lock(&self->_lockRequests);
    [(NSMutableArray *)self->_inflightRequests addObject:processCopy];
    os_unfair_lock_unlock(&self->_lockRequests);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__PKPaymentTransactionIconGenerator__iconForApplication_applicationIdentifier_requestToProcess_iconHandler___block_invoke;
    aBlock[3] = &unk_1E8022170;
    aBlock[4] = self;
    v15 = v13;
    v33 = v15;
    v16 = processCopy;
    v34 = v16;
    v27 = handlerCopy;
    v35 = v27;
    v28 = _Block_copy(aBlock);
    if ([identifierCopy length])
    {
      [v16 size];
      v17 = PKIconForBundleIdentifier();
      if (v17)
      {
LABEL_13:
        v18 = v17;
        v28[2](v28, v17);

        goto LABEL_8;
      }
    }

    if (application < 1)
    {
      if (!application)
      {
        v20 = 0;
        if (identifierCopy)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }
    }

    else
    {
      [v16 size];
      v17 = PKIconForAdamIdentifier();
      if (v17)
      {
        goto LABEL_13;
      }
    }

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:application];
    v37[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];

    if (identifierCopy)
    {
LABEL_16:
      v36 = identifierCopy;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
LABEL_19:
      v26 = v20;
      v22 = [[PKLinkedApplication alloc] initWithApplicationIdentifiers:v21 storeIDs:v20 defaultLaunchURL:0];
      [(PKLinkedApplication *)v22 setShouldApplyMask:0];
      [(PKLinkedApplication *)v22 setShouldApplyBorder:0];
      [v16 size];
      v23 = PKMapsIconForMerchant();
      v27[2](v27, v23, 0);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __108__PKPaymentTransactionIconGenerator__iconForApplication_applicationIdentifier_requestToProcess_iconHandler___block_invoke_2;
      v29[3] = &unk_1E8010DD0;
      v30 = v22;
      v31 = v28;
      v24 = v28;
      v25 = v22;
      [(PKLinkedApplication *)v25 reloadApplicationStateIfNecessaryWithCompletion:v29];

      goto LABEL_6;
    }

LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  [processCopy size];
  v13 = PKMapsIconForMerchant();
  handlerCopy[2](handlerCopy, v13, 1);
LABEL_7:

LABEL_8:
}

void __108__PKPaymentTransactionIconGenerator__iconForApplication_applicationIdentifier_requestToProcess_iconHandler___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  os_unfair_lock_lock((a1[4] + 80));
  v3 = a1[4];
  if (v6 && *(v3 + 24) == 1 && a1[5])
  {
    [*(v3 + 8) setObject:? forKey:?];
    [*(a1[4] + 16) addObject:a1[5]];
    v3 = a1[4];
  }

  [*(v3 + 56) removeObject:a1[6]];
  os_unfair_lock_unlock((a1[4] + 80));
  v4 = a1[7];
  v5 = v6;
  if (v4)
  {
    (*(v4 + 16))(v4, v6, 1);
    v5 = v6;
  }
}

void __108__PKPaymentTransactionIconGenerator__iconForApplication_applicationIdentifier_requestToProcess_iconHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) iconImage];
  (*(*(a1 + 40) + 16))();
}

@end