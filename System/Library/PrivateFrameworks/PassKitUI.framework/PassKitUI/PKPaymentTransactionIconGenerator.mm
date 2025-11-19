@interface PKPaymentTransactionIconGenerator
- (PKPaymentTransactionIconGenerator)initWithCache:(BOOL)a3 scale:(double)a4;
- (id)_cacheImageFromDownloaderCacheForURL:(id)a3;
- (id)_iconCacheKeyForApp:(int64_t)a3 bundleIdentifier:(id)a4 size:(CGSize)a5;
- (id)_iconCacheKeyForTransaction:(id)a3 merchant:(id)a4 size:(CGSize)a5 ignoreLogoURL:(BOOL)a6 imageOut:(id *)a7;
- (id)_iconCacheKeyForTransaction:(id)a3 size:(CGSize)a4 ignoreLogoURL:(BOOL)a5 imageOut:(id *)a6;
- (id)_iconForCacheKey:(id)a3;
- (id)_iconForTransaction:(id)a3 merchant:(id)a4 size:(CGSize)a5 ignoreLogoURL:(BOOL)a6 requestType:(unint64_t)a7 iconHandler:(id)a8;
- (id)fileDownloader;
- (void)_downloadLogoForURL:(id)a3 withCompletionHandler:(id)a4;
- (void)_iconForApplication:(int64_t)a3 applicationIdentifier:(id)a4 requestToProcess:(id)a5 iconHandler:(id)a6;
- (void)_iconForBusinessConnectMerchant:(id)a3 requestToProcess:(id)a4 iconHandler:(id)a5;
- (void)_iconForDataReleaseRequest:(id)a3 iconHandler:(id)a4;
- (void)queue_processNextIconRequest;
@end

@implementation PKPaymentTransactionIconGenerator

- (PKPaymentTransactionIconGenerator)initWithCache:(BOOL)a3 scale:(double)a4
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = PKPaymentTransactionIconGenerator;
  v6 = [(PKPaymentTransactionIconGenerator *)&v21 init];
  if (v6)
  {
    v6->_hasNetworkAccess = PKProcessHasNetworkPrivilegies();
    v6->_useCache = v5;
    if (v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      iconCache = v6->_iconCache;
      v6->_iconCache = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      iconCacheKeys = v6->_iconCacheKeys;
      v6->_iconCacheKeys = v9;
    }

    v6->_scale = a4;
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

- (id)_iconForTransaction:(id)a3 merchant:(id)a4 size:(CGSize)a5 ignoreLogoURL:(BOOL)a6 requestType:(unint64_t)a7 iconHandler:(id)a8
{
  v10 = a6;
  height = a5.height;
  width = a5.width;
  v50[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a8;
  if (!v17 || !(v15 | v16))
  {
    v22 = 0;
    goto LABEL_33;
  }

  if (v15)
  {
    v18 = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForTransaction:v15 size:v10 ignoreLogoURL:0 imageOut:width, height];
    v19 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v18];
    v20 = [v15 merchant];
    IsFinalForMerchant = CacheKeyIsFinalForMerchant(v18, v20, v10);

    if (!v19)
    {
LABEL_12:
      v23 = objc_alloc_init(PKPaymentTransactionIconRequest);
      [(PKPaymentTransactionIconRequest *)v23 setSize:width, height];
      [(PKPaymentTransactionIconRequest *)v23 setTransaction:v15];
      [(PKPaymentTransactionIconRequest *)v23 setMerchant:v16];
      [(PKPaymentTransactionIconRequest *)v23 setCacheKey:v18];
      [(PKPaymentTransactionIconRequest *)v23 setIgnoreLogoURL:v10];
      os_unfair_lock_lock(&self->_lockRequests);
      v48 = v18;
      if (a7)
      {
        if (a7 != 1)
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
            v29 = [v17 copy];
            v30 = _Block_copy(v29);
            v31 = [v28 arrayByAddingObject:v30];
            [v27 setCompletionHandlers:v31];

            v26 = v45;
LABEL_28:
            v18 = v48;
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
              v33 = [0 completionHandlers];
              v34 = [v17 copy];
              v35 = _Block_copy(v34);
              v36 = [v33 arrayByAddingObject:v35];
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
            v46 = [v37 completionHandlers];
            v38 = [v17 copy];
            v39 = _Block_copy(v38);
            [v46 arrayByAddingObject:v39];
            v41 = v40 = v26;
            [(PKPaymentTransactionIconRequest *)v23 setCompletionHandlers:v41];

            v26 = v40;
LABEL_27:

            [v26 addObject:v23];
            goto LABEL_28;
          }

LABEL_26:
          v37 = [v17 copy];
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
    if (!v16)
    {
      v19 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:0];
      v18 = 0;
      goto LABEL_12;
    }

    v18 = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForMerchant:v16 size:v10 ignoreLogoURL:0 imageOut:width, height];
    v19 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v18];
    IsFinalForMerchant = CacheKeyIsFinalForMerchant(v18, v16, v10);
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
  v2 = self;
  v69 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lockRequests);
  v3 = [(NSMutableOrderedSet *)v2->_highPriorityIconRequests lastObject];
  if (v3)
  {
    v4 = v3;
    [(NSMutableOrderedSet *)v2->_highPriorityIconRequests removeObject:v3];
    os_unfair_lock_unlock(&v2->_lockRequests);
    goto LABEL_4;
  }

  v4 = [(NSMutableOrderedSet *)v2->_lowPriorityIconRequests lastObject];
  [(NSMutableOrderedSet *)v2->_lowPriorityIconRequests removeObject:v4];
  os_unfair_lock_unlock(&v2->_lockRequests);
  if (v4)
  {
    while (1)
    {
LABEL_4:
      v5 = objc_autoreleasePoolPush();
      v6 = [v4 transaction];
      v7 = [v4 merchant];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [v6 merchant];
      }

      v10 = v9;

      v11 = [v4 logoURL];
      v12 = [v4 ignoreLogoURL];
      v13 = v12;
      if (v11 && (v12 & 1) == 0)
      {
        v45 = v10;
        if (v6)
        {
          [v4 size];
          v66 = 0;
          v14 = &v66;
          v15 = [(PKPaymentTransactionIconGenerator *)v2 _iconCacheKeyForTransaction:v6 size:0 ignoreLogoURL:&v66 imageOut:?];
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
            v29 = [v4 completionHandlers];
            v30 = [v29 countByEnumeratingWithState:&v61 objects:v68 count:16];
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
                    objc_enumerationMutation(v29);
                  }

                  (*(*(*(&v61 + 1) + 8 * i) + 16))();
                }

                v31 = [v29 countByEnumeratingWithState:&v61 objects:v68 count:16];
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
            [v4 size];
            v65 = 0;
            v14 = &v65;
            v15 = [(PKPaymentTransactionIconGenerator *)v2 _iconCacheKeyForMerchant:v10 size:0 ignoreLogoURL:&v65 imageOut:?];
            goto LABEL_25;
          }

          v26 = 0;
        }

        os_unfair_lock_lock(&v2->_lockRequests);
        [(NSMutableArray *)v2->_inflightRequests addObject:v4];
        os_unfair_lock_unlock(&v2->_lockRequests);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __65__PKPaymentTransactionIconGenerator_queue_processNextIconRequest__block_invoke;
        v56[3] = &unk_1E8022120;
        v41 = v11;
        v57 = v41;
        v58 = v2;
        v59 = v10;
        v60 = v4;
        v42 = v10;
        [(PKPaymentTransactionIconGenerator *)v2 _downloadLogoForURL:v41 withCompletionHandler:v56];

        v10 = v45;
        goto LABEL_47;
      }

      if (!v6)
      {
        break;
      }

      v16 = [v6 transactionType] == 15;
      if ([v6 transactionSource] == 3)
      {
        goto LABEL_15;
      }

      v17 = 0;
LABEL_16:
      v46 = v5;
      if ([v6 transactionSource] == 2)
      {
        [v6 releasedData];
        v44 = v6;
        v19 = v11;
        v21 = v20 = v10;
        [v21 application];
        v22 = v2;
        v24 = v23 = v16;
        v25 = [v24 client] == 2;

        v16 = v23;
        v2 = v22;

        v10 = v20;
        v11 = v19;
        v6 = v44;
      }

      else
      {
        v25 = 0;
      }

      if (!v16 || !v17 && !v25)
      {
        if (v6)
        {
          [v4 size];
          v53 = 0;
          v27 = &v53;
          v28 = [(PKPaymentTransactionIconGenerator *)v2 _iconCacheKeyForTransaction:v6 size:v13 ignoreLogoURL:&v53 imageOut:?];
          goto LABEL_36;
        }

        if (v10)
        {
          [v4 size];
          v52 = 0;
          v27 = &v52;
          v34 = [(PKPaymentTransactionIconGenerator *)v2 _iconCacheKeyForMerchant:v10 size:v13 ignoreLogoURL:&v52 imageOut:?];
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
        v36 = [v4 completionHandlers];
        v37 = [v36 countByEnumeratingWithState:&v48 objects:v67 count:16];
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
                objc_enumerationMutation(v36);
              }

              (*(*(*(&v48 + 1) + 8 * j) + 16))();
            }

            v38 = [v36 countByEnumeratingWithState:&v48 objects:v67 count:16];
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
      v55 = v4;
      [(PKPaymentTransactionIconGenerator *)v2 _iconForDataReleaseRequest:v55 iconHandler:v54];
      v26 = v55;
      v5 = v46;
LABEL_47:

      os_unfair_lock_lock(&v2->_lockRequests);
      v43 = [(NSMutableOrderedSet *)v2->_highPriorityIconRequests lastObject];

      if (v43)
      {
        [(NSMutableOrderedSet *)v2->_highPriorityIconRequests removeObject:v43];
        v4 = v43;
      }

      else
      {
        v4 = [(NSMutableOrderedSet *)v2->_lowPriorityIconRequests lastObject];
        [(NSMutableOrderedSet *)v2->_lowPriorityIconRequests removeObject:v4];
      }

      os_unfair_lock_unlock(&v2->_lockRequests);

      objc_autoreleasePoolPop(v5);
      if (!v4)
      {
        goto LABEL_53;
      }
    }

    v16 = 1;
LABEL_15:
    v18 = [v10 businessConnectBrandIdentifier];
    v17 = v18 != 0;

    goto LABEL_16;
  }

LABEL_53:
  os_unfair_lock_lock(&v2->_lockRequests);
  v2->_processingRequest = 0;
  os_unfair_lock_unlock(&v2->_lockRequests);
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

- (id)_iconForCacheKey:(id)a3
{
  v4 = a3;
  if (v4 && self->_useCache)
  {
    os_unfair_lock_lock(&self->_lockRequests);
    v5 = [(NSMutableDictionary *)self->_iconCache objectForKey:v4];
    [(NSMutableArray *)self->_iconCacheKeys removeObject:v4];
    [(NSMutableArray *)self->_iconCacheKeys addObject:v4];
    if ([(NSMutableArray *)self->_iconCacheKeys count]>= 0x12D)
    {
      v6 = [(NSMutableArray *)self->_iconCacheKeys firstObject];
      [(NSMutableArray *)self->_iconCacheKeys removeObject:v6];
      [(NSMutableDictionary *)self->_iconCache removeObjectForKey:v6];
    }

    os_unfair_lock_unlock(&self->_lockRequests);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_iconCacheKeyForTransaction:(id)a3 size:(CGSize)a4 ignoreLogoURL:(BOOL)a5 imageOut:(id *)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = [v11 merchant];
  v13 = [MEMORY[0x1E69B8EB8] iconTypeForTransaction:v11 ignoreLogoURL:v7];
  v14 = 0;
  if (v13 <= 1)
  {
    if (v13)
    {
      v15 = 0;
      v16 = 0;
      if (v13 != 1)
      {
        goto LABEL_57;
      }

      v17 = [v11 transitType];
      if (v7)
      {
        v18 = 0;
      }

      else
      {
        v18 = [v12 logoImageURL];
      }

      v15 = [(PKPaymentTransactionIconGenerator *)self _cacheImageFromDownloaderCacheForURL:v18];
      v27 = PKCurrencyCodeForTransitTransactionIcon();
      if (v15)
      {
        v16 = [v18 absoluteString];
        v28 = 1;
LABEL_48:

        v14 = 0;
LABEL_49:
        v36 = v15 != 0;
        if ((v28 & 1) == 0 && v15 && v16 && self->_useCache)
        {
          os_unfair_lock_lock(&self->_lockRequests);
          [(NSMutableDictionary *)self->_iconCache setObject:v15 forKey:v16];
          [(NSMutableArray *)self->_iconCacheKeys addObject:v16];
          os_unfair_lock_unlock(&self->_lockRequests);
        }

        goto LABEL_54;
      }

      v29 = MEMORY[0x1E696AEC0];
      v30 = [v12 uniqueIdentifier];
      v16 = [v29 stringWithFormat:@"%lu-%@-%.2f-%.2f", v17, v30, *&width, *&height];

      if (v17 == 513 && v27)
      {
        v31 = [v16 stringByAppendingFormat:@"-%@", v27];

        v16 = v31;
      }

      v32 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v16];
      v15 = v32;
      v28 = 1;
      if (!a6 || v32)
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
          v44 = v17;
          _os_log_impl(&dword_1BD026000, v34, OS_LOG_TYPE_DEFAULT, "Missing icon for attributes: %@, transitSubtype: %ld, falling back to default transit icon", buf, 0x16u);
        }

        v35 = PKIconForTransitTransaction();
      }

      else if (v17 == 517)
      {
        v35 = PKIconForTransitCardRead();
      }

      else
      {
        if (v17 == 513)
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

    v16 = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForTransaction:v11 merchant:v12 size:v7 ignoreLogoURL:a6 imageOut:width, height];
LABEL_34:
    v14 = 0;
    v15 = 0;
    goto LABEL_57;
  }

  if (v13 != 2)
  {
    v15 = 0;
    v16 = 0;
    if (v13 != 3)
    {
      goto LABEL_57;
    }

    v19 = [v11 releasedData];
    v20 = [v19 application];
    v21 = [v20 client];

    if (v21 != 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_57;
    }

    v22 = [v11 releasedData];
    v23 = [v22 application];
    v24 = [v23 bundleIdentifier];

    v25 = [v12 adamIdentifier];
    if (v25 > 0 || v24)
    {
      v16 = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForApp:v25 bundleIdentifier:v24 size:width, height];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_34;
  }

  v14 = [MEMORY[0x1E69B8EB8] staticIconNameForTransaction:v11];
  if (v14)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%.2f-%.2f", v14, *&width, *&height];
    if (a6)
    {
      v26 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v16];
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
    v16 = 0;
  }

  v36 = v15 != 0;
LABEL_54:
  if (a6 && v36)
  {
    v38 = v15;
    *a6 = v15;
  }

LABEL_57:
  v39 = v16;

  return v16;
}

- (id)_iconCacheKeyForTransaction:(id)a3 merchant:(id)a4 size:(CGSize)a5 ignoreLogoURL:(BOOL)a6 imageOut:(id *)a7
{
  height = a5.height;
  width = a5.width;
  v13 = a3;
  v14 = a4;
  v15 = v14;
  if (a6)
  {
    v16 = 0;
  }

  else
  {
    v16 = [v14 logoImageURL];
  }

  v17 = [(PKPaymentTransactionIconGenerator *)self _cacheImageFromDownloaderCacheForURL:v16];
  if (v17)
  {
    v18 = v17;
    v19 = [v16 absoluteString];
    v20 = a7 != 0;
  }

  else
  {
    if (v13)
    {
      [v13 effectiveTransactionCategory];
    }

    else
    {
      [v15 category];
    }

    v23 = MEMORY[0x1E696AEC0];
    v24 = [v15 uniqueIdentifier];
    v25 = PKMerchantCategoryToString();
    v19 = [v23 stringWithFormat:@"%@-%@-%.2f-%.2f", v24, v25, *&width, *&height];

    v26 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v19];
    v18 = v26;
    v20 = a7 != 0;
    if (a7 && !v26)
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
        if (v19)
        {
          if (self->_useCache)
          {
            os_unfair_lock_lock(&self->_lockRequests);
            [(NSMutableDictionary *)self->_iconCache setObject:v18 forKey:v19];
            [(NSMutableArray *)self->_iconCacheKeys addObject:v19];
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
    *a7 = v18;
  }

  return v19;
}

- (id)_cacheImageFromDownloaderCacheForURL:(id)a3
{
  v4 = a3;
  v5 = [v4 absoluteString];
  if (v5)
  {
    v6 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v5];
    if (!v6)
    {
      v7 = [(PKPaymentTransactionIconGenerator *)self fileDownloader];
      v8 = [v7 cachedDataForURL:v4];

      if (v8)
      {
        v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v8];
        if (v6 && self->_useCache)
        {
          os_unfair_lock_lock(&self->_lockRequests);
          [(NSMutableDictionary *)self->_iconCache setObject:v6 forKey:v5];
          [(NSMutableArray *)self->_iconCacheKeys addObject:v5];
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

- (void)_downloadLogoForURL:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_hasNetworkAccess)
  {
    v8 = [(PKPaymentTransactionIconGenerator *)self fileDownloader];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__PKPaymentTransactionIconGenerator__downloadLogoForURL_withCompletionHandler___block_invoke;
    v12[3] = &unk_1E8013E70;
    v13 = v7;
    [v8 downloadFromUrl:v6 completionHandler:v12];
  }

  else
  {
    paymentService = self->_paymentService;
    if (!paymentService)
    {
      v10 = [MEMORY[0x1E69B8DB8] paymentService];
      v11 = self->_paymentService;
      self->_paymentService = v10;

      paymentService = self->_paymentService;
    }

    [(PKPaymentService *)paymentService logoImageDataForURL:v6 completion:v7];
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
    v4 = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    [v4 setTimeoutIntervalForResource:15.0];
    [v4 setRequestCachePolicy:0];
    [v4 setHTTPMaximumConnectionsPerHost:10];
    v5 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v4];
    v6 = [objc_alloc(MEMORY[0x1E69B8A08]) initWithSession:v5];
    v7 = self->_fileDownloader;
    self->_fileDownloader = v6;

    v8 = self->_fileDownloader;
  }

  return v8;
}

- (id)_iconCacheKeyForApp:(int64_t)a3 bundleIdentifier:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a4;
  v9 = v8;
  if (a3 >= 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"app-%lu-%.2f-%.2f", a3, *&width, *&height];
    v10 = LABEL_5:;
    goto LABEL_6;
  }

  if (v8)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"app-%@-%.2f-%.2f", v8, *&width, *&height];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)_iconForDataReleaseRequest:(id)a3 iconHandler:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [v17 transaction];
  v8 = [v17 merchant];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v7 merchant];
  }

  v11 = v10;

  v12 = [v7 releasedData];
  v13 = [v12 application];

  v14 = [v11 businessConnectBrandIdentifier];

  if (v14)
  {
    [(PKPaymentTransactionIconGenerator *)self _iconForBusinessConnectMerchant:v11 requestToProcess:v17 iconHandler:v6];
  }

  else if ([v13 client] == 2)
  {
    v15 = [v11 adamIdentifier];
    v16 = [v13 bundleIdentifier];
    [(PKPaymentTransactionIconGenerator *)self _iconForApplication:v15 applicationIdentifier:v16 requestToProcess:v17 iconHandler:v6];
  }
}

- (void)_iconForBusinessConnectMerchant:(id)a3 requestToProcess:(id)a4 iconHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 businessConnectBrandIdentifier];
  [v8 size];
  v12 = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForMerchant:v10 size:1 ignoreLogoURL:0 imageOut:?];

  v13 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v12];
  if (v13)
  {
    v9[2](v9, v13, 1);
  }

  else
  {
    os_unfair_lock_lock(&self->_lockRequests);
    [(NSMutableArray *)self->_inflightRequests addObject:v8];
    os_unfair_lock_unlock(&self->_lockRequests);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__PKPaymentTransactionIconGenerator__iconForBusinessConnectMerchant_requestToProcess_iconHandler___block_invoke;
    aBlock[3] = &unk_1E8022170;
    aBlock[4] = self;
    v20 = v12;
    v21 = v8;
    v22 = v9;
    v14 = _Block_copy(aBlock);
    v15 = objc_alloc_init(getBCSBusinessQueryServiceClass());
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__PKPaymentTransactionIconGenerator__iconForBusinessConnectMerchant_requestToProcess_iconHandler___block_invoke_2;
    v17[3] = &unk_1E8022198;
    v18 = v14;
    v16 = v14;
    [v15 fetchBrandWithIdentifier:v11 serviceType:5 completion:v17];
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

- (void)_iconForApplication:(int64_t)a3 applicationIdentifier:(id)a4 requestToProcess:(id)a5 iconHandler:(id)a6
{
  v37[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [v11 size];
  if (a3 > 0 || v10)
  {
    v13 = [(PKPaymentTransactionIconGenerator *)self _iconCacheKeyForApp:a3 bundleIdentifier:v10 size:?];
    v14 = [(PKPaymentTransactionIconGenerator *)self _iconForCacheKey:v13];
    if (v14)
    {
      v12[2](v12, v14, 1);
LABEL_6:

      goto LABEL_7;
    }

    os_unfair_lock_lock(&self->_lockRequests);
    [(NSMutableArray *)self->_inflightRequests addObject:v11];
    os_unfair_lock_unlock(&self->_lockRequests);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__PKPaymentTransactionIconGenerator__iconForApplication_applicationIdentifier_requestToProcess_iconHandler___block_invoke;
    aBlock[3] = &unk_1E8022170;
    aBlock[4] = self;
    v15 = v13;
    v33 = v15;
    v16 = v11;
    v34 = v16;
    v27 = v12;
    v35 = v27;
    v28 = _Block_copy(aBlock);
    if ([v10 length])
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

    if (a3 < 1)
    {
      if (!a3)
      {
        v20 = 0;
        if (v10)
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

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v37[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];

    if (v10)
    {
LABEL_16:
      v36 = v10;
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

  [v11 size];
  v13 = PKMapsIconForMerchant();
  v12[2](v12, v13, 1);
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