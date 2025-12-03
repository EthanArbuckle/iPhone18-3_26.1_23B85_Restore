@interface SKUIPersonalizeOfferOperation
- (SKUIPersonalizeOfferOperation)initWithItemIdentifier:(int64_t)identifier clientContext:(id)context;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)block;
@end

@implementation SKUIPersonalizeOfferOperation

- (SKUIPersonalizeOfferOperation)initWithItemIdentifier:(int64_t)identifier clientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPersonalizeOfferOperation initWithItemIdentifier:clientContext:];
  }

  v15.receiver = self;
  v15.super_class = SKUIPersonalizeOfferOperation;
  v8 = [(SKUIPersonalizeOfferOperation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, context);
    v9->_itemID = identifier;
    v10 = dispatch_queue_create("com.apple.StoreKitUI.SKUIPersonalizeOfferOperation", 0);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v10;

    v12 = v9->_dispatchQueue;
    v13 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v12, v13);
  }

  return v9;
}

- (id)outputBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__67;
  v10 = __Block_byref_object_dispose__67;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SKUIPersonalizeOfferOperation_outputBlock__block_invoke;
  v5[3] = &unk_2781F8608;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__SKUIPersonalizeOfferOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 272) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKUIPersonalizeOfferOperation_setOutputBlock___block_invoke;
  v7[3] = &unk_2781F98F0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __48__SKUIPersonalizeOfferOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 272);
  *(v3 + 272) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)main
{
  v28[1] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__5_0;
  v26 = __Block_byref_object_dispose__6_0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5_0;
  v20 = __Block_byref_object_dispose__6_0;
  v21 = 0;
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lld", self->_itemID];
  v4 = objc_alloc(MEMORY[0x277D69CF0]);
  platformContext = [(SKUIClientContext *)self->_clientContext platformContext];
  v6 = [v4 initWithPlatformContext:platformContext];

  v28[0] = v3;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v6 setItemIdentifiers:v7];

  [v6 setKeyProfile:@"offer"];
  [v6 setPersonalizationStyle:0];
  v8 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [v6 setStoreFrontSuffix:v8];

  [v6 setTimeoutInterval:&unk_2828D3050];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__SKUIPersonalizeOfferOperation_main__block_invoke;
  v12[3] = &unk_2781FE948;
  v9 = v3;
  v13 = v9;
  v14 = &v22;
  v15 = &v16;
  [v6 setResponseBlock:v12];
  [v6 main];
  outputBlock = [(SKUIPersonalizeOfferOperation *)self outputBlock];
  v11 = outputBlock;
  if (outputBlock)
  {
    (*(outputBlock + 16))(outputBlock, v17[5], v23[5]);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

void __37__SKUIPersonalizeOfferOperation_main__block_invoke(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a2 itemForKey:a1[4]];
  v8 = v7;
  if (v7)
  {
    v20 = v6;
    [v7 offers];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [SKUIItemOffer alloc];
          v16 = [v14 lookupDictionary];
          v17 = [(SKUIItemOffer *)v15 initWithLookupDictionary:v16];

          if ([(SKUIItemOffer *)v17 offerType]== 1)
          {
            v18 = *(a1[6] + 8);
            v19 = *(v18 + 40);
            *(v18 + 40) = v17;

            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v6 = v20;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }
}

- (void)initWithItemIdentifier:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPersonalizeOfferOperation initWithItemIdentifier:clientContext:]";
}

@end