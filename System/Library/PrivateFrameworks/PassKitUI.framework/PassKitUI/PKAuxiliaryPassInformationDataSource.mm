@interface PKAuxiliaryPassInformationDataSource
- (BOOL)_isDynamicSection:(int64_t)section;
- (BOOL)isListLayoutForSection:(unint64_t)section;
- (PKAuxiliaryPassInformationDataSource)initWithItem:(id)item forPass:(id)pass;
- (id)_headerItem;
- (id)footerTextItemForSection:(unint64_t)section;
- (id)itemAtIndexPath:(id)path;
- (id)navigationBarTitle;
- (id)titleForSection:(unint64_t)section;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
- (void)_loadMerchantForPassUniqueID:(id)d;
- (void)_notifyContentLoadedIfNecessary;
- (void)setDataSourceDelegate:(id)delegate;
@end

@implementation PKAuxiliaryPassInformationDataSource

- (PKAuxiliaryPassInformationDataSource)initWithItem:(id)item forPass:(id)pass
{
  itemCopy = item;
  passCopy = pass;
  v15.receiver = self;
  v15.super_class = PKAuxiliaryPassInformationDataSource;
  v9 = [(PKAuxiliaryPassInformationDataSource *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, item);
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    headerIndexPath = v10->_headerIndexPath;
    v10->_headerIndexPath = v11;

    v10->_contentIsLoaded = 0;
    uniqueID = [passCopy uniqueID];
    [(PKAuxiliaryPassInformationDataSource *)v10 _loadMerchantForPassUniqueID:uniqueID];
  }

  return v10;
}

- (id)titleForSection:(unint64_t)section
{
  if ([(PKAuxiliaryPassInformationDataSource *)self _isDynamicSection:?])
  {
    sections = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
    v6 = [sections objectAtIndex:(section + -1.0)];
    header = [v6 header];

    if (header)
    {
      v8 = [PKDashboardHeaderTextItem itemWithHeaderText:header];
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

- (id)footerTextItemForSection:(unint64_t)section
{
  if ([(PKAuxiliaryPassInformationDataSource *)self _isDynamicSection:?])
  {
    sections = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
    v6 = [sections objectAtIndex:(section + -1.0)];
    footer = [v6 footer];

    if (footer)
    {
      v8 = [PKDashboardFooterTextItem itemWithFooterText:footer];
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
    sections = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
    v5 = [sections count] + 2;

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

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  if (!section)
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

  sections = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
  v6 = [sections objectAtIndex:(section + -1.0)];
  rows = [v6 rows];
  v8 = [rows count];

  return v8;
}

- (id)itemAtIndexPath:(id)path
{
  v45 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  section = [pathCopy section];
  if (section)
  {
    v6 = section;
    if ([(PKAuxiliaryPassInformationDataSource *)self _isDynamicSection:section])
    {
      sections = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
      v8 = [sections objectAtIndex:(v6 + -1.0)];
      rows = [v8 rows];
      v10 = [rows objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      _headerItem = objc_alloc_init(PKDashboardTextActionItem);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      fields = [(PKPassAuxiliaryPassInformationItem *)self->_item fields];
      v13 = [fields countByEnumeratingWithState:&v40 objects:v44 count:16];
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
              objc_enumerationMutation(fields);
            }

            v17 = *(*(&v40 + 1) + 8 * i);
            v18 = [v17 key];
            v19 = [v18 isEqualToString:v10];

            if (v19)
            {
              v39 = 0;
              labelImage = [v17 labelImage];
              v21 = +[PKDashboardTextActionItem colorForSemanticColor:hasTintColor:](PKDashboardTextActionItem, "colorForSemanticColor:hasTintColor:", [labelImage tintColor], &v39);
              v38 = labelImage;
              v22 = [PKDashboardTextActionItem imageForPassFieldImage:labelImage hasTintColor:v39];
              value = [v17 value];
              valueImage = [v17 valueImage];
              v36 = +[PKDashboardTextActionItem colorForSemanticColor:hasTintColor:](PKDashboardTextActionItem, "colorForSemanticColor:hasTintColor:", [valueImage tintColor], &v39);
              v37 = valueImage;
              v35 = [PKDashboardTextActionItem imageForPassFieldImage:valueImage hasTintColor:v39];
              accessoryImage = [v17 accessoryImage];
              v34 = +[PKDashboardTextActionItem colorForSemanticColor:hasTintColor:](PKDashboardTextActionItem, "colorForSemanticColor:hasTintColor:", [accessoryImage tintColor], &v39);
              v25 = [PKDashboardTextActionItem imageForPassFieldImage:accessoryImage hasTintColor:v39];
              label = [v17 label];
              [(PKDashboardTextActionItem *)_headerItem setTitle:label];

              [(PKDashboardTextActionItem *)_headerItem setTitleImage:v22];
              v27 = v21;
              [(PKDashboardTextActionItem *)_headerItem setTitleColor:v21];
              v28 = value;
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

              [(PKDashboardTextActionItem *)_headerItem setSubtitle:v31];
              [(PKDashboardTextActionItem *)_headerItem setSubtitleImage:v35];
              [(PKDashboardTextActionItem *)_headerItem setSubtitleColor:v36];
              [(PKDashboardTextActionItem *)_headerItem setAccessoryImage:v25];
              [(PKDashboardTextActionItem *)_headerItem setAccessoryColor:v34];
              [(PKDashboardTextActionItem *)_headerItem setLayoutStyle:1];

              goto LABEL_22;
            }
          }

          v14 = [fields countByEnumeratingWithState:&v40 objects:v44 count:16];
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
      _headerItem = objc_alloc_init(PKDashboardTransactionMapItem);
      [(PKDashboardTextActionItem *)_headerItem setMerchant:self->_merchant];
    }

    else
    {
      _headerItem = 0;
    }
  }

  else
  {
    _headerItem = [(PKAuxiliaryPassInformationDataSource *)self _headerItem];
  }

  return _headerItem;
}

- (BOOL)isListLayoutForSection:(unint64_t)section
{
  if (section)
  {
    return ![(PKAuxiliaryPassInformationDataSource *)self _isDynamicSection:?];
  }

  else
  {
    return 0;
  }
}

- (void)setDataSourceDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (self->_contentIsLoaded)
  {
    [delegateCopy contentIsLoaded];
  }
}

- (id)navigationBarTitle
{
  displayName = [(PKMerchant *)self->_merchant displayName];
  v4 = displayName;
  if (displayName)
  {
    title = displayName;
  }

  else
  {
    title = [(PKPassAuxiliaryPassInformationItem *)self->_item title];
  }

  v6 = title;

  if ([(PKMerchant *)self->_merchant useDisplayNameIgnoringBrand])
  {
    displayNameIgnoringBrand = [(PKMerchant *)self->_merchant displayNameIgnoringBrand];

    v6 = displayNameIgnoringBrand;
  }

  return v6;
}

- (BOOL)_isDynamicSection:(int64_t)section
{
  if (section < 1)
  {
    return 0;
  }

  sectionCopy = section;
  sections = [(PKPassAuxiliaryPassInformationItem *)self->_item sections];
  v5 = [sections count] + 1.0 > sectionCopy;

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
    title = [(PKPassAuxiliaryPassInformationItem *)self->_item title];
    [(PKTransactionHistoryHeaderItem *)v4 setTitle:title];

    [(PKTransactionHistoryHeaderItem *)v4 setCategory:[(PKPassAuxiliaryPassInformationItem *)self->_item merchantCategory]];
  }

  return v4;
}

- (void)_loadMerchantForPassUniqueID:(id)d
{
  dCopy = d;
  mapsURL = [(PKPassAuxiliaryPassInformationItem *)self->_item mapsURL];

  if (mapsURL)
  {
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    item = self->_item;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKAuxiliaryPassInformationDataSource__loadMerchantForPassUniqueID___block_invoke;
    v8[3] = &unk_1E8017F98;
    v8[4] = self;
    [paymentService merchantForPassUniqueIdentifier:dCopy withAuxiliaryPassInformationItem:item completion:v8];
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