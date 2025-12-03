@interface PKSearchSeeAllDashboardDataSource
- (PKSearchSeeAllDashboardDataSource)initWithItems:(id)items searchQuery:(id)query;
- (id)itemAtIndexPath:(id)path;
- (id)titleForSection:(unint64_t)section;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (void)setDataSourceDelegate:(id)delegate;
- (void)updateWithItems:(id)items;
@end

@implementation PKSearchSeeAllDashboardDataSource

- (PKSearchSeeAllDashboardDataSource)initWithItems:(id)items searchQuery:(id)query
{
  itemsCopy = items;
  queryCopy = query;
  v12.receiver = self;
  v12.super_class = PKSearchSeeAllDashboardDataSource;
  v9 = [(PKSearchSeeAllDashboardDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, items);
    objc_storeStrong(&v10->_searchQuery, query);
  }

  return v10;
}

- (void)updateWithItems:(id)items
{
  itemsCopy = items;
  objc_storeStrong(&self->_items, items);
  if ([(NSArray *)self->_items count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentIsLoaded];
  }
}

- (id)titleForSection:(unint64_t)section
{
  if (section != 1 || ![(NSArray *)self->_items count])
  {
    goto LABEL_22;
  }

  type = [(PKSearchQuery *)self->_searchQuery type];
  v5 = 0;
  if (type <= 7)
  {
    switch(type)
    {
      case 1:
        v6 = @"SEARCH_TITLE_PAYMENT_PASSES";
        break;
      case 2:
        v6 = @"SEARCH_TITLE_KEYS_AND_IDS";
        break;
      case 3:
        v6 = @"SEARCH_TITLE_BARCODE_PASSES";
        break;
      default:
        goto LABEL_23;
    }
  }

  else if (type > 12)
  {
    if (type == 13)
    {
      v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_1.isa);
      goto LABEL_20;
    }

    if (type != 14)
    {
      goto LABEL_23;
    }

    v6 = @"SEARCH_TITLE_EXPIRED_PASSES";
  }

  else if (type == 8)
  {
    v6 = @"SEARCH_TITLE_ORDERS";
  }

  else
  {
    if (type != 9)
    {
      goto LABEL_23;
    }

    v6 = @"SEARCH_TITLE_PAYMENT_SETUP_PRODUCT";
  }

  v7 = PKLocalizedString(&v6->isa);
LABEL_20:
  v8 = v7;
  if (v7)
  {
    v5 = [PKDashboardHeaderTextItem itemWithHeaderText:v7];

    goto LABEL_23;
  }

LABEL_22:
  v5 = 0;
LABEL_23:

  return v5;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  if (!section)
  {
    return 1;
  }

  if (section == 1)
  {
    return [(NSArray *)self->_items count];
  }

  return 0;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];

  if (section == 1)
  {
    v7 = [(NSArray *)self->_items objectAtIndexedSubscript:v6];
  }

  else if (section)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(PKDashboardSearchSeeAllHeaderItem);
    [(PKDashboardSearchSeeAllHeaderItem *)v7 setResults:self->_items];
    [(PKDashboardSearchSeeAllHeaderItem *)v7 setQuery:self->_searchQuery];
  }

  return v7;
}

- (void)setDataSourceDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if ([(NSArray *)self->_items count])
  {
    [delegateCopy contentIsLoaded];
  }
}

@end