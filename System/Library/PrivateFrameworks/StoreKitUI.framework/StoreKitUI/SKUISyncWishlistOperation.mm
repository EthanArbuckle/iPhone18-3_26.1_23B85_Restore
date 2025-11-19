@interface SKUISyncWishlistOperation
- (BOOL)_loadRemoteItemsForWishlist:(id)a3 didChange:(BOOL *)a4 error:(id *)a5;
- (BOOL)_mergeItems:(id)a3 wishlist:(id)a4 didChange:(BOOL *)a5 error:(id *)a6;
- (SKUISyncWishlistOperation)init;
- (SKUISyncWishlistOperation)initWithClientContext:(id)a3;
- (id)resultBlock;
- (void)_sendLocalChangesForWishlist:(id)a3;
- (void)main;
- (void)setResultBlock:(id)a3;
@end

@implementation SKUISyncWishlistOperation

- (SKUISyncWishlistOperation)init
{
  v3 = +[SKUIClientContext defaultContext];
  v4 = [(SKUISyncWishlistOperation *)self initWithClientContext:v3];

  return v4;
}

- (SKUISyncWishlistOperation)initWithClientContext:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISyncWishlistOperation initWithClientContext:];
  }

  v11.receiver = self;
  v11.super_class = SKUISyncWishlistOperation;
  v6 = [(SKUISyncWishlistOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, a3);
    v8 = dispatch_queue_create("com.apple.StoreKitUI.SKUISyncWishlistOperation", 0);
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v8;
  }

  return v7;
}

- (id)resultBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__90;
  v10 = __Block_byref_object_dispose__90;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SKUISyncWishlistOperation_resultBlock__block_invoke;
  v5[3] = &unk_2781F8608;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__SKUISyncWishlistOperation_resultBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 264) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setResultBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SKUISyncWishlistOperation_setResultBlock___block_invoke;
  v7[3] = &unk_2781F98F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void *__44__SKUISyncWishlistOperation_setResultBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 264) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 264);
    *(v5 + 264) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (void)main
{
  v13 = 0;
  v3 = [MEMORY[0x277D69A20] defaultStore];
  v4 = [v3 activeAccount];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D69D58]);
    v6 = [v4 uniqueIdentifier];
    v7 = [v5 initWithAccountIdentifier:{objc_msgSend(v6, "longLongValue")}];

    [(SKUISyncWishlistOperation *)self _sendLocalChangesForWishlist:v7];
    v12 = 0;
    v8 = [(SKUISyncWishlistOperation *)self _loadRemoteItemsForWishlist:v7 didChange:&v13 error:&v12];
    v9 = v12;
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D6A678] code:1 userInfo:0];
    v8 = 0;
  }

  v10 = [(SKUISyncWishlistOperation *)self resultBlock];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v13, v9);
  }
}

- (BOOL)_loadRemoteItemsForWishlist:(id)a3 didChange:(BOOL *)a4 error:(id *)a5
{
  v8 = a3;
  v49[0] = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__8;
  v47 = __Block_byref_object_dispose__9;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v9 = [(SKUIClientContext *)self->_clientContext URLBag];
  v10 = [v9 valueForKey:@"viewWishlistBaseUrl" error:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x277D69B38] sharedConfig];
    v20 = [v19 shouldLog];
    v21 = [v19 shouldLogToDisk];
    v22 = [v19 OSLogObject];
    v23 = v22;
    if (v21)
    {
      v20 |= 2u;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v20;
    }

    else
    {
      v24 = v20 & 2;
    }

    if (v24)
    {
      LOWORD(v33) = 0;
      LODWORD(v30) = 2;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_14:

        v26 = SSError();
        v11 = v44[5];
        v44[5] = v26;
        goto LABEL_15;
      }

      v23 = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:{4, &v33, v30}];
      free(v25);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10];
  v12 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v11];
  [v12 setCachePolicy:1];
  v13 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v11];
  v14 = +[(SSVURLDataConsumer *)SKUIWishlistDataConsumer];
  [v13 setDataConsumer:v14];

  [v13 setITunesStoreRequest:1];
  v15 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [v13 setStoreFrontSuffix:v15];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__8;
  v37 = __Block_byref_object_dispose__9;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __73__SKUISyncWishlistOperation__loadRemoteItemsForWishlist_didChange_error___block_invoke;
  v32[3] = &unk_278200150;
  v32[4] = &v43;
  v32[5] = &v33;
  v32[6] = &v39;
  [v13 setOutputBlock:v32];
  [v13 main];
  if (*(v40 + 24) == 1)
  {
    v16 = v34[5];
    v17 = (v44 + 5);
    obj = v44[5];
    v18 = [(SKUISyncWishlistOperation *)self _mergeItems:v16 wishlist:v8 didChange:v49 error:&obj];
    objc_storeStrong(v17, obj);
    *(v40 + 24) = v18;
  }

  _Block_object_dispose(&v33, 8);

LABEL_15:
  v27 = v40;
  v28 = *(v40 + 24);
  if (a4 && (v40[3] & 1) != 0)
  {
    *a4 = v49[0];
    v28 = *(v27 + 24);
  }

  if (a5 && (v28 & 1) == 0)
  {
    *a5 = v44[5];
    v28 = *(v40 + 24);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  return v28 & 1;
}

void __73__SKUISyncWishlistOperation__loadRemoteItemsForWishlist_didChange_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  v9 = a3;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(*(a1[6] + 8) + 24) = *(*(a1[5] + 8) + 40) != 0;
}

- (BOOL)_mergeItems:(id)a3 wishlist:(id)a4 didChange:(BOOL *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__SKUISyncWishlistOperation__mergeItems_wishlist_didChange_error___block_invoke;
  v16[3] = &unk_2782001C8;
  v11 = v9;
  v17 = v11;
  v19 = &v25;
  v20 = &v21;
  v12 = v10;
  v18 = v12;
  [v12 performTransactionWithBlock:v16];
  v13 = v22;
  v14 = *(v22 + 24);
  if (a5 && (v22[3] & 1) != 0)
  {
    *a5 = *(v26 + 24);
    v14 = *(v13 + 24);
  }

  if (a6 && (v14 & 1) == 0)
  {
    *a6 = 0;
    v14 = *(v22 + 24);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v14 & 1;
}

uint64_t __66__SKUISyncWishlistOperation__mergeItems_wishlist_didChange_error___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [MEMORY[0x277D69C40] predicateWithProperty:*MEMORY[0x277D6A6A0] equalToLongLong:0];
  v6 = [MEMORY[0x277D69D60] queryWithDatabase:v3 predicate:v5];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __66__SKUISyncWishlistOperation__mergeItems_wishlist_didChange_error___block_invoke_2;
  v33[3] = &unk_278200178;
  v7 = v4;
  v34 = v7;
  v24 = v6;
  [v6 enumeratePersistentIDsUsingBlock:v33];
  v8 = *(a1 + 32);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __66__SKUISyncWishlistOperation__mergeItems_wishlist_didChange_error___block_invoke_3;
  v29[3] = &unk_2782001A0;
  v9 = v3;
  v30 = v9;
  v10 = v7;
  v31 = v10;
  v32 = *(a1 + 48);
  [v8 enumerateObjectsUsingBlock:v29];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v23 = v5;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v18 = [objc_alloc(MEMORY[0x277D69D60]) initWithPersistentID:objc_msgSend(v16 inDatabase:{"longLongValue"), v9}];
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *(*(*(a1 + 56) + 8) + 24) = [v18 deleteFromDatabase];

        objc_autoreleasePoolPop(v17);
        if (*(*(*(a1 + 56) + 8) + 24) != 1)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v25 objects:v35 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v5 = v23;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v19 = *(a1 + 40);
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
    [v19 setLastSyncTime:v20];

    v21 = *(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

void __66__SKUISyncWishlistOperation__mergeItems_wishlist_didChange_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:a2];
  [*(a1 + 32) addObject:v3];
}

void __66__SKUISyncWishlistOperation__mergeItems_wishlist_didChange_error___block_invoke_3(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = SKUIWishlistItemPropertiesWithItem(v15);
  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3 + 1];
    [v8 setObject:v9 forKey:*MEMORY[0x277D6A698]];

    v10 = [MEMORY[0x277D69C40] predicateWithProperty:*MEMORY[0x277D6A688] equalToLongLong:{objc_msgSend(v15, "itemIdentifier")}];
    v11 = [MEMORY[0x277D69D60] anyInDatabase:a1[4] predicate:v10];
    if (v11)
    {
      v12 = v11;
      [v11 setValuesWithDictionary:v8];
      v13 = a1[5];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "persistentID")}];
      [v13 removeObject:v14];
    }

    else
    {
      [v8 setObject:&unk_2828D2DF8 forKey:*MEMORY[0x277D6A6A0]];
      v12 = [objc_alloc(MEMORY[0x277D69D60]) initWithPropertyValues:v8 inDatabase:a1[4]];
      *(*(a1[6] + 8) + 24) = 1;
      *(*(a1[7] + 8) + 24) = v12 != 0;
      *a4 = *(*(a1[7] + 8) + 24) ^ 1;
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_sendLocalChangesForWishlist:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__SKUISyncWishlistOperation__sendLocalChangesForWishlist___block_invoke;
  v23[3] = &unk_2781FE0B0;
  v5 = v4;
  v24 = v5;
  [v3 performTransactionWithBlock:v23];
  if (![v5 count])
  {
    goto LABEL_19;
  }

  v6 = [MEMORY[0x277D69B38] sharedConfig];
  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v10 = [v5 count];
  v26 = 134217984;
  v27 = v10;
  LODWORD(v18) = 12;
  v17 = &v26;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v26, v18}];
    free(v11);
    v17 = v9;
    SSFileLog();
LABEL_10:
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v19 + 1) + 8 * i) main];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v14);
  }

LABEL_19:
}

uint64_t __58__SKUISyncWishlistOperation__sendLocalChangesForWishlist___block_invoke(uint64_t a1, void *a2)
{
  location[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D6A6A0];
  v5 = [MEMORY[0x277D69C40] predicateWithProperty:*MEMORY[0x277D6A6A0] equalToLongLong:1];
  v6 = [MEMORY[0x277D69D60] queryWithDatabase:v3 predicate:v5];
  location[0] = *MEMORY[0x277D6A680];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__SKUISyncWishlistOperation__sendLocalChangesForWishlist___block_invoke_2;
  v14[3] = &unk_2781FE088;
  v15 = *(a1 + 32);
  [v6 enumeratePersistentIDsAndProperties:location count:1 usingBlock:v14];
  v7 = [MEMORY[0x277D69C40] predicateWithProperty:v4 equalToLongLong:2];

  v8 = [MEMORY[0x277D69D60] queryWithDatabase:v3 predicate:v7];

  objc_storeStrong(location, *MEMORY[0x277D6A688]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SKUISyncWishlistOperation__sendLocalChangesForWishlist___block_invoke_3;
  v11[3] = &unk_2781F9CB0;
  v12 = v3;
  v13 = *(a1 + 32);
  v9 = v3;
  [v8 enumeratePersistentIDsAndProperties:location count:1 usingBlock:v11];

  return 1;
}

void __58__SKUISyncWishlistOperation__sendLocalChangesForWishlist___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  if (*a3)
  {
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:*a3 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SKUIItem alloc] initWithCacheRepresentation:v6];
      if (v7)
      {
        v8 = [[SKUIAddToWishlistOperation alloc] initWithItem:v7 reason:1];
        [*(a1 + 32) addObject:v8];
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __58__SKUISyncWishlistOperation__sendLocalChangesForWishlist___block_invoke_3(uint64_t a1, uint64_t a2, id *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (*a3)
  {
    v7 = -[SKUIRemoveFromWishlistOperation initWithItemIdentifier:entityIdentifier:reason:]([SKUIRemoveFromWishlistOperation alloc], "initWithItemIdentifier:entityIdentifier:reason:", [*a3 longLongValue], a2, 1);
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D69D60]) initWithPersistentID:a2 inDatabase:*(a1 + 32)];
    [(SKUIRemoveFromWishlistOperation *)v7 deleteFromDatabase];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISyncWishlistOperation initWithClientContext:]";
}

@end