@interface PKAuxiliaryPassInformationDataSource
- (BOOL)_isDynamicSection:(int64_t)a3;
- (BOOL)isListLayoutForSection:(unint64_t)a3;
- (PKAuxiliaryPassInformationDataSource)initWithItem:(id)a3 forPass:(id)a4;
- (id)_headerItem;
- (id)footerTextItemForSection:(unint64_t)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)navigationBarTitle;
- (id)titleForSection:(unint64_t)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (unint64_t)numberOfSections;
- (void)_loadMerchantForPassUniqueID:(id)a3;
- (void)_notifyContentLoadedIfNecessary;
- (void)setDataSourceDelegate:(id)a3;
@end

@implementation PKAuxiliaryPassInformationDataSource

- (PKAuxiliaryPassInformationDataSource)initWithItem:(id)a3 forPass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PKAuxiliaryPassInformationDataSource;
  v9 = [(PKAuxiliaryPassInformationDataSource *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, a3);
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    headerIndexPath = v10->_headerIndexPath;
    v10->_headerIndexPath = v11;

    v10->_contentIsLoaded = 0;
    v13 = [v8 uniqueID];
    [(PKAuxiliaryPassInformationDataSource *)v10 _loadMerchantForPassUniqueID:v13];
  }

  return v10;
}

- (id)titleForSection:(unint64_t)a3
{
  if ([(PKAuxiliaryPassInformationDataSource *)self _isDynamicSection:?])
  {
    v5 = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
    v6 = [v5 objectAtIndex:(a3 + -1.0)];
    v7 = [v6 header];

    if (v7)
    {
      v8 = [PKDashboardHeaderTextItem itemWithHeaderText:v7];
      [v8 setStyle:3];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)footerTextItemForSection:(unint64_t)a3
{
  if ([(PKAuxiliaryPassInformationDataSource *)self _isDynamicSection:?])
  {
    v5 = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
    v6 = [v5 objectAtIndex:(a3 + -1.0)];
    v7 = [v6 footer];

    if (v7)
    {
      v8 = [PKDashboardFooterTextItem itemWithFooterText:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)numberOfSections
{
  merchant = self->_merchant;
  if (self->_contentIsLoaded)
  {
    v4 = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
    v5 = [v4 count] + 2;

    if (!merchant)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
    if (!merchant)
    {
LABEL_5:
      v5 -= self->_contentIsLoaded;
    }
  }

  return v5;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  if (!a3)
  {
    return 1;
  }

  if (![(PKAuxiliaryPassInformationDataSource *)self _isDynamicSection:?])
  {
    return self->_merchant != 0;
  }

  if (!self->_contentIsLoaded)
  {
    return 0;
  }

  v5 = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
  v6 = [v5 objectAtIndex:(a3 + -1.0)];
  v7 = [v6 rows];
  v8 = [v7 count];

  return v8;
}

- (id)itemAtIndexPath:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 section];
  if (v5)
  {
    v6 = v5;
    if ([(PKAuxiliaryPassInformationDataSource *)self _isDynamicSection:v5])
    {
      v7 = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
      v8 = [v7 objectAtIndex:(v6 + -1.0)];
      v9 = [v8 rows];
      v10 = [v9 objectAtIndex:{objc_msgSend(v4, "row")}];

      v11 = objc_alloc_init(PKDashboardTextActionItem);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v12 = [(PKPassAuxiliaryPassInformationItem *)self->_item fields];
      v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v41;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v40 + 1) + 8 * i);
            v18 = [v17 key];
            v19 = [v18 isEqualToString:v10];

            if (v19)
            {
              v39 = 0;
              v20 = [v17 labelImage];
              v21 = +[PKDashboardTextActionItem colorForSemanticColor:hasTintColor:](PKDashboardTextActionItem, "colorForSemanticColor:hasTintColor:", [v20 tintColor], &v39);
              v38 = v20;
              v22 = [PKDashboardTextActionItem imageForPassFieldImage:v20 hasTintColor:v39];
              v33 = [v17 value];
              v23 = [v17 valueImage];
              v36 = +[PKDashboardTextActionItem colorForSemanticColor:hasTintColor:](PKDashboardTextActionItem, "colorForSemanticColor:hasTintColor:", [v23 tintColor], &v39);
              v37 = v23;
              v35 = [PKDashboardTextActionItem imageForPassFieldImage:v23 hasTintColor:v39];
              v24 = [v17 accessoryImage];
              v34 = +[PKDashboardTextActionItem colorForSemanticColor:hasTintColor:](PKDashboardTextActionItem, "colorForSemanticColor:hasTintColor:", [v24 tintColor], &v39);
              v25 = [PKDashboardTextActionItem imageForPassFieldImage:v24 hasTintColor:v39];
              v26 = [v17 label];
              [(PKDashboardTextActionItem *)v11 setTitle:v26];

              [(PKDashboardTextActionItem *)v11 setTitleImage:v22];
              v27 = v21;
              [(PKDashboardTextActionItem *)v11 setTitleColor:v21];
              v28 = v33;
              v29 = v28;
              if (v28)
              {
                v30 = [v28 length];

                if (v30)
                {
                  v31 = v29;
                }

                else
                {
                  v31 = 0;
                }
              }

              else
              {
                v31 = 0;
              }

              [(PKDashboardTextActionItem *)v11 setSubtitle:v31];
              [(PKDashboardTextActionItem *)v11 setSubtitleImage:v35];
              [(PKDashboardTextActionItem *)v11 setSubtitleColor:v36];
              [(PKDashboardTextActionItem *)v11 setAccessoryImage:v25];
              [(PKDashboardTextActionItem *)v11 setAccessoryColor:v34];
              [(PKDashboardTextActionItem *)v11 setLayoutStyle:1];

              goto LABEL_22;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
    }

    else if (self->_merchant)
    {
      v11 = objc_alloc_init(PKDashboardTransactionMapItem);
      [(PKDashboardTextActionItem *)v11 setMerchant:self->_merchant];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(PKAuxiliaryPassInformationDataSource *)self _headerItem];
  }

  return v11;
}

- (BOOL)isListLayoutForSection:(unint64_t)a3
{
  if (a3)
  {
    return ![(PKAuxiliaryPassInformationDataSource *)self _isDynamicSection:?];
  }

  else
  {
    return 0;
  }
}

- (void)setDataSourceDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  if (self->_contentIsLoaded)
  {
    [v4 contentIsLoaded];
  }
}

- (id)navigationBarTitle
{
  v3 = [(PKMerchant *)self->_merchant displayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PKPassAuxiliaryPassInformationItem *)self->_item title];
  }

  v6 = v5;

  if ([(PKMerchant *)self->_merchant useDisplayNameIgnoringBrand])
  {
    v7 = [(PKMerchant *)self->_merchant displayNameIgnoringBrand];

    v6 = v7;
  }

  return v6;
}

- (BOOL)_isDynamicSection:(int64_t)a3
{
  if (a3 < 1)
  {
    return 0;
  }

  v3 = a3;
  v4 = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
  v5 = [v4 count] + 1.0 > v3;

  return v5;
}

- (id)_headerItem
{
  v3 = [[PKTransactionHistoryHeaderItem alloc] initWithType:0];
  v4 = v3;
  if (self->_merchant)
  {
    [(PKTransactionHistoryHeaderItem *)v3 setMerchant:?];
    [(PKTransactionHistoryHeaderItem *)v4 setShowDetailedPropertyLocation:1];
  }

  else
  {
    v5 = [(PKPassAuxiliaryPassInformationItem *)self->_item title];
    [(PKTransactionHistoryHeaderItem *)v4 setTitle:v5];

    [(PKTransactionHistoryHeaderItem *)v4 setCategory:[(PKPassAuxiliaryPassInformationItem *)self->_item merchantCategory]];
  }

  return v4;
}

- (void)_loadMerchantForPassUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(PKPassAuxiliaryPassInformationItem *)self->_item mapsURL];

  if (v5)
  {
    v6 = [MEMORY[0x1E69B8DB8] paymentService];
    item = self->_item;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKAuxiliaryPassInformationDataSource__loadMerchantForPassUniqueID___block_invoke;
    v8[3] = &unk_1E8017F98;
    v8[4] = self;
    [v6 merchantForPassUniqueIdentifier:v4 withAuxiliaryPassInformationItem:item completion:v8];
  }

  else if (!self->_contentIsLoaded)
  {
    [(PKAuxiliaryPassInformationDataSource *)self _notifyContentLoadedIfNecessary];
  }
}

void __69__PKAuxiliaryPassInformationDataSource__loadMerchantForPassUniqueID___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), a2);
  v4 = a2;
  objc_initWeak(&location, *(a1 + 32));

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PKAuxiliaryPassInformationDataSource__loadMerchantForPassUniqueID___block_invoke_2;
  v5[3] = &unk_1E8010998;
  objc_copyWeak(&v6, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __69__PKAuxiliaryPassInformationDataSource__loadMerchantForPassUniqueID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[8] & 1) == 0)
  {
    v2 = WeakRetained;
    [WeakRetained _notifyContentLoadedIfNecessary];
    WeakRetained = v2;
  }
}

- (void)_notifyContentLoadedIfNecessary
{
  if (!self->_contentIsLoaded)
  {
    self->_contentIsLoaded = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentIsLoaded];
  }
}

@end