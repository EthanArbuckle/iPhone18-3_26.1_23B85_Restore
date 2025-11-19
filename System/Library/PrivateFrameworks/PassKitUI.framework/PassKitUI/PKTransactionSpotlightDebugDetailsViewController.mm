@interface PKTransactionSpotlightDebugDetailsViewController
- (PKTransactionSpotlightDebugDetailsViewController)initWithTransaction:(id)a3;
- (id)_cellWithTitleText:(id)a3 valueText:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)loadItemWithCompletion:(id)a3;
- (void)spotlightObjectDescriptionWithCompletion:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKTransactionSpotlightDebugDetailsViewController

- (PKTransactionSpotlightDebugDetailsViewController)initWithTransaction:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKTransactionSpotlightDebugDetailsViewController;
  v6 = [(PKTransactionSpotlightDebugDetailsViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69B91C0]);
    searchService = v7->_searchService;
    v7->_searchService = v8;

    v7->_inBridge = PKBridgeUsesDarkAppearance();
    [(PKTransactionSpotlightDebugDetailsViewController *)v7 loadItemWithCompletion:0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKTransactionSpotlightDebugDetailsViewController;
  [(PKTransactionSpotlightDebugDetailsViewController *)&v4 viewDidLoad];
  v3 = [(PKTransactionSpotlightDebugDetailsViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];
}

- (id)_cellWithTitleText:(id)a3 valueText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKTransactionSpotlightDebugDetailsViewController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];

  [v9 setSelectionStyle:0];
  v10 = [v9 keyLabel];
  [v10 setNumberOfLines:0];
  [v10 setText:v7];

  v11 = [MEMORY[0x1E69DC888] labelColor];
  [v10 setTextColor:v11];

  if (self->_inBridge)
  {
    v12 = PKBridgeTextColor();
    [v10 setTextColor:v12];
  }

  v13 = [v9 valueLabel];
  [v13 setText:v6];

  return v9;
}

- (void)loadItemWithCompletion:(id)a3
{
  v4 = a3;
  searchService = self->_searchService;
  v6 = [(PKPaymentTransaction *)self->_transaction identifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PKTransactionSpotlightDebugDetailsViewController_loadItemWithCompletion___block_invoke;
  v8[3] = &unk_1E801EBB8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(PKSearchService *)searchService indexedTransactionWithIdentifier:v6 completion:v8];
}

void __75__PKTransactionSpotlightDebugDetailsViewController_loadItemWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__PKTransactionSpotlightDebugDetailsViewController_loadItemWithCompletion___block_invoke_2;
  v10[3] = &unk_1E8011D78;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __75__PKTransactionSpotlightDebugDetailsViewController_loadItemWithCompletion___block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 1056) = 0;
  objc_storeStrong((*(a1 + 32) + 1104), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 1064), *(a1 + 48));
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1072);
  *(v3 + 1072) = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 1088);
  *(v6 + 1088) = v5;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = *(a1 + 32);
  v10 = *(v9 + 1080);
  *(v9 + 1080) = v8;

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = *(a1 + 32);
  v13 = *(v12 + 1096);
  *(v12 + 1096) = v11;

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = [v14 attributeSet];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = PKCoreSpotlightTransactionKeys();
    v17 = [v16 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          v22 = NSSelectorFromString(v21);
          v23 = [v15 methodForSelector:v22];
          if (v22)
          {
            v24 = v23;
            if (objc_opt_respondsToSelector())
            {
              v25 = v24(v15, v22);
              if (v25)
              {
                [*(*(a1 + 32) + 1072) addObject:v21];
                [*(*(a1 + 32) + 1080) setObject:v25 forKey:v21];
              }
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v18);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = PKCoreSpotlightTransactionCustomKeys();
    v26 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v39 + 1) + 8 * j);
          v31 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:v30 searchable:1 searchableByDefault:1 unique:0 multiValued:0];
          v32 = [v15 valueForCustomKey:v31];
          if (v32)
          {
            v33 = v32;
            v34 = v31;
          }

          else
          {
            v34 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:v30 searchable:1 searchableByDefault:1 unique:0 multiValued:1];

            v35 = [v15 valueForCustomKey:v34];
            if (!v35)
            {
              goto LABEL_24;
            }

            v33 = v35;
          }

          [*(*(a1 + 32) + 1088) addObject:v30];
          [*(*(a1 + 32) + 1096) setObject:v33 forKey:v30];

LABEL_24:
        }

        v27 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v27);
    }
  }

  v36 = [*(a1 + 32) tableView];
  [v36 reloadData];

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    return @"Custom Attributes";
  }

  else
  {
    return @"Attributes";
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_loading)
  {
    goto LABEL_2;
  }

  if (a4)
  {
    p_customAttributes = &self->_customAttributes;
LABEL_6:
    v7 = [(NSMutableArray *)*p_customAttributes count];
    goto LABEL_7;
  }

  p_customAttributes = &self->_attributes;
  if ([(NSMutableArray *)*p_customAttributes count])
  {
    goto LABEL_6;
  }

LABEL_2:
  v7 = 1;
LABEL_7:

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_loading)
  {
    v8 = @"Loading";
LABEL_3:
    v9 = [(PKTransactionSpotlightDebugDetailsViewController *)self _cellWithTitleText:v8 valueText:0];
    goto LABEL_12;
  }

  error = self->_error;
  if (!error)
  {
    if (self->_item)
    {
      if ([v7 section])
      {
        v14 = -[NSMutableArray objectAtIndex:](self->_customAttributes, "objectAtIndex:", [v7 row]);
        v15 = [v14 stringByReplacingOccurrencesOfString:@"Passbook_" withString:&stru_1F3BD7330];
        v16 = [(NSMutableDictionary *)self->_customAttributesPerKey objectForKey:v14];
        v17 = [v16 description];
        v9 = [(PKTransactionSpotlightDebugDetailsViewController *)self _cellWithTitleText:v15 valueText:v17];
      }

      else
      {
        v14 = -[NSMutableArray objectAtIndex:](self->_attributes, "objectAtIndex:", [v7 row]);
        v15 = [(NSMutableDictionary *)self->_attributesPerKey objectForKey:v14];
        v16 = [v15 description];
        v9 = [(PKTransactionSpotlightDebugDetailsViewController *)self _cellWithTitleText:v14 valueText:v16];
      }

      goto LABEL_12;
    }

    v8 = @"No item in Spotlight";
    goto LABEL_3;
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(NSError *)error description];
  v13 = [v11 stringWithFormat:@"Error: %@", v12];
  v9 = [(PKTransactionSpotlightDebugDetailsViewController *)self _cellWithTitleText:v13 valueText:0];

LABEL_12:

  return v9;
}

- (void)spotlightObjectDescriptionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__PKTransactionSpotlightDebugDetailsViewController_spotlightObjectDescriptionWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8010DD0;
    aBlock[4] = self;
    v11 = v4;
    v6 = _Block_copy(aBlock);
    v7 = v6;
    if (self->_loading || !self->_item)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __93__PKTransactionSpotlightDebugDetailsViewController_spotlightObjectDescriptionWithCompletion___block_invoke_2;
      v8[3] = &unk_1E8010B50;
      v9 = v6;
      [(PKTransactionSpotlightDebugDetailsViewController *)self loadItemWithCompletion:v8];
    }

    else
    {
      v6[2](v6);
    }
  }
}

void __93__PKTransactionSpotlightDebugDetailsViewController_spotlightObjectDescriptionWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1080) description];
  v3 = [*(*(a1 + 32) + 1096) description];
  v4 = [v2 stringByAppendingFormat:@"\n%@", v3];

  (*(*(a1 + 40) + 16))();
}

@end