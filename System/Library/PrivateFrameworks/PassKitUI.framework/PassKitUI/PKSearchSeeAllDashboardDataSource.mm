@interface PKSearchSeeAllDashboardDataSource
- (PKSearchSeeAllDashboardDataSource)initWithItems:(id)a3 searchQuery:(id)a4;
- (id)itemAtIndexPath:(id)a3;
- (id)titleForSection:(unint64_t)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (void)setDataSourceDelegate:(id)a3;
- (void)updateWithItems:(id)a3;
@end

@implementation PKSearchSeeAllDashboardDataSource

- (PKSearchSeeAllDashboardDataSource)initWithItems:(id)a3 searchQuery:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKSearchSeeAllDashboardDataSource;
  v9 = [(PKSearchSeeAllDashboardDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, a3);
    objc_storeStrong(&v10->_searchQuery, a4);
  }

  return v10;
}

- (void)updateWithItems:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_items, a3);
  if ([(NSArray *)self->_items count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contentIsLoaded];
  }
}

- (id)titleForSection:(unint64_t)a3
{
  if (a3 != 1 || ![(NSArray *)self->_items count])
  {
    goto LABEL_22;
  }

  v4 = [(PKSearchQuery *)self->_searchQuery type];
  v5 = 0;
  if (v4 <= 7)
  {
    switch(v4)
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

  else if (v4 > 12)
  {
    if (v4 == 13)
    {
      v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_1.isa);
      goto LABEL_20;
    }

    if (v4 != 14)
    {
      goto LABEL_23;
    }

    v6 = @"SEARCH_TITLE_EXPIRED_PASSES";
  }

  else if (v4 == 8)
  {
    v6 = @"SEARCH_TITLE_ORDERS";
  }

  else
  {
    if (v4 != 9)
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

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  if (!a3)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return [(NSArray *)self->_items count];
  }

  return 0;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 row];

  if (v5 == 1)
  {
    v7 = [(NSArray *)self->_items objectAtIndexedSubscript:v6];
  }

  else if (v5)
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

- (void)setDataSourceDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  if ([(NSArray *)self->_items count])
  {
    [v4 contentIsLoaded];
  }
}

@end