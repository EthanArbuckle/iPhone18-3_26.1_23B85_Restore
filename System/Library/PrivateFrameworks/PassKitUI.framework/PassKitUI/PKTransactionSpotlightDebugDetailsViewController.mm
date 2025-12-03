@interface PKTransactionSpotlightDebugDetailsViewController
- (PKTransactionSpotlightDebugDetailsViewController)initWithTransaction:(id)transaction;
- (id)_cellWithTitleText:(id)text valueText:(id)valueText;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)loadItemWithCompletion:(id)completion;
- (void)spotlightObjectDescriptionWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PKTransactionSpotlightDebugDetailsViewController

- (PKTransactionSpotlightDebugDetailsViewController)initWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v11.receiver = self;
  v11.super_class = PKTransactionSpotlightDebugDetailsViewController;
  v6 = [(PKTransactionSpotlightDebugDetailsViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transaction, transaction);
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
  tableView = [(PKTransactionSpotlightDebugDetailsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];
}

- (id)_cellWithTitleText:(id)text valueText:(id)valueText
{
  valueTextCopy = valueText;
  textCopy = text;
  tableView = [(PKTransactionSpotlightDebugDetailsViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTitleValueLabelCellReuseIdentifier"];

  [v9 setSelectionStyle:0];
  keyLabel = [v9 keyLabel];
  [keyLabel setNumberOfLines:0];
  [keyLabel setText:textCopy];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [keyLabel setTextColor:labelColor];

  if (self->_inBridge)
  {
    v12 = PKBridgeTextColor();
    [keyLabel setTextColor:v12];
  }

  valueLabel = [v9 valueLabel];
  [valueLabel setText:valueTextCopy];

  return v9;
}

- (void)loadItemWithCompletion:(id)completion
{
  completionCopy = completion;
  searchService = self->_searchService;
  identifier = [(PKPaymentTransaction *)self->_transaction identifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PKTransactionSpotlightDebugDetailsViewController_loadItemWithCompletion___block_invoke;
  v8[3] = &unk_1E801EBB8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(PKSearchService *)searchService indexedTransactionWithIdentifier:identifier completion:v8];
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

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    return @"Custom Attributes";
  }

  else
  {
    return @"Attributes";
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_loading)
  {
    goto LABEL_2;
  }

  if (section)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
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
      if ([pathCopy section])
      {
        v14 = -[NSMutableArray objectAtIndex:](self->_customAttributes, "objectAtIndex:", [pathCopy row]);
        v15 = [v14 stringByReplacingOccurrencesOfString:@"Passbook_" withString:&stru_1F3BD7330];
        v16 = [(NSMutableDictionary *)self->_customAttributesPerKey objectForKey:v14];
        v17 = [v16 description];
        v9 = [(PKTransactionSpotlightDebugDetailsViewController *)self _cellWithTitleText:v15 valueText:v17];
      }

      else
      {
        v14 = -[NSMutableArray objectAtIndex:](self->_attributes, "objectAtIndex:", [pathCopy row]);
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

- (void)spotlightObjectDescriptionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __93__PKTransactionSpotlightDebugDetailsViewController_spotlightObjectDescriptionWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8010DD0;
    aBlock[4] = self;
    v11 = completionCopy;
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