@interface SKUIProductPageActivityViewController
- (SKUIProductPageActivityViewController)initWithProductPageItem:(id)a3 clientContext:(id)a4;
- (id)_activityItemsForProductPageItem:(id)a3 clientContext:(id)a4;
- (id)_activityItemsForProductPageItemProvider:(id)a3 clientContext:(id)a4;
- (id)_applicationActivitiesForProductPageItem:(id)a3 clientContext:(id)a4;
- (id)_titleForActivity:(id)a3;
@end

@implementation SKUIProductPageActivityViewController

- (SKUIProductPageActivityViewController)initWithProductPageItem:(id)a3 clientContext:(id)a4
{
  v17[5] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIProductPageActivityViewController initWithProductPageItem:clientContext:];
  }

  v9 = [(SKUIProductPageActivityViewController *)self _activityItemsForProductPageItem:v8 clientContext:v7];
  v10 = [(SKUIProductPageActivityViewController *)self _applicationActivitiesForProductPageItem:v8 clientContext:v7];

  v16.receiver = self;
  v16.super_class = SKUIProductPageActivityViewController;
  v11 = [(SKUIProductPageActivityViewController *)&v16 initWithActivityItems:v9 applicationActivities:v10];
  if (v11)
  {
    v12 = *MEMORY[0x277D54718];
    v17[0] = *MEMORY[0x277D54708];
    v17[1] = v12;
    v13 = *MEMORY[0x277D54778];
    v17[2] = *MEMORY[0x277D54750];
    v17[3] = v13;
    v17[4] = *MEMORY[0x277D54780];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
    [(SKUIProductPageActivityViewController *)v11 setExcludedActivityTypes:v14];

    objc_storeStrong(&v11->_clientContext, a4);
  }

  return v11;
}

- (id)_titleForActivity:(id)a3
{
  v4 = a3;
  if (*MEMORY[0x277D54720] == v4)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"ACTIVITY_COPY_LINK"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"ACTIVITY_COPY_LINK" inBundles:0];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_activityItemsForProductPageItem:(id)a3 clientContext:(id)a4
{
  v12[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [[SKUIURLActivityItemProvider alloc] initWithProductPageItem:v6 clientContext:v5];
  v8 = [(SKUIDeferredActivityItemProvider *)[SKUITextActivityItemProvider alloc] initWithProductPageItem:v6 clientContext:v5];
  v9 = [(SKUIDeferredActivityItemProvider *)[SKUIImageActivityItemProvider alloc] initWithProductPageItem:v6 clientContext:v5];

  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v10;
}

- (id)_activityItemsForProductPageItemProvider:(id)a3 clientContext:(id)a4
{
  v12[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [[SKUIURLActivityItemProvider alloc] initWithProductPageItemProvider:v6 clientContext:v5];
  v8 = [(SKUIDeferredActivityItemProvider *)[SKUITextActivityItemProvider alloc] initWithProductPageItemProvider:v6 clientContext:v5];
  v9 = [(SKUIDeferredActivityItemProvider *)[SKUIImageActivityItemProvider alloc] initWithProductPageItemProvider:v6 clientContext:v5];

  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v10;
}

- (id)_applicationActivitiesForProductPageItem:(id)a3 clientContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [v5 primaryItemOffer];
  [v8 price];
  if (v9 > 0.0)
  {
    v10 = [v5 itemIdentifier];
    v11 = +[SKUIWishlist activeWishlist];
    v12 = v11;
    if (v11 && ([v11 containsItemWithIdentifier:v10] & 1) == 0)
    {
      v13 = +[SKUIItemStateCenter defaultCenter];
      v14 = [v13 stateForItemWithIdentifier:v10];

      if (([v14 state] & 0xF) == 0)
      {
        v15 = [[SKUIAddToWishlistActivity alloc] initWithItem:v5 clientContext:v6];
        [v7 addObject:v15];
      }
    }

    v16 = +[SKUIItemStateCenter defaultCenter];
    v17 = [v16 isItemRestrictedWithParentalControlsRank:{objc_msgSend(v5, "parentalControlsRank")}];

    if ((v17 & 1) == 0)
    {
      v18 = [[SKUIGiftActivity alloc] initWithItem:v5 clientContext:v6];
      [v7 addObject:v18];
    }
  }

  return v7;
}

- (void)initWithProductPageItem:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageActivityViewController initWithProductPageItem:clientContext:]";
}

@end