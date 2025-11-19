@interface SKUIShareTemplateActivityViewController
- (SKUIShareTemplateActivityViewController)initWithTemplateElement:(id)a3 clientContext:(id)a4;
- (id)_activityItemsWithTemplateElement:(id)a3 clientContext:(id)a4;
- (id)_applicationActivitiesWithTemplateElement:(id)a3 clientContext:(id)a4;
- (id)_titleForActivity:(id)a3;
@end

@implementation SKUIShareTemplateActivityViewController

- (SKUIShareTemplateActivityViewController)initWithTemplateElement:(id)a3 clientContext:(id)a4
{
  v19[6] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIShareTemplateActivityViewController initWithTemplateElement:clientContext:];
  }

  v9 = [(SKUIShareTemplateActivityViewController *)self _activityItemsWithTemplateElement:v7 clientContext:v8];
  v10 = [(SKUIShareTemplateActivityViewController *)self _applicationActivitiesWithTemplateElement:v7 clientContext:v8];
  v18.receiver = self;
  v18.super_class = SKUIShareTemplateActivityViewController;
  v11 = [(SKUIShareTemplateActivityViewController *)&v18 initWithActivityItems:v9 applicationActivities:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientContext, a4);
    objc_storeStrong(&v12->_templateElement, a3);
    v13 = *MEMORY[0x277D54718];
    v19[0] = *MEMORY[0x277D54708];
    v19[1] = v13;
    v14 = *MEMORY[0x277D54768];
    v19[2] = *MEMORY[0x277D54750];
    v19[3] = v14;
    v15 = *MEMORY[0x277D54780];
    v19[4] = *MEMORY[0x277D54778];
    v19[5] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:6];
    [(SKUIShareTemplateActivityViewController *)v12 setExcludedActivityTypes:v16];
  }

  return v12;
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

- (id)_activityItemsWithTemplateElement:(id)a3 clientContext:(id)a4
{
  v12[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [[SKUIShareTemplateImageItemProvider alloc] initWithTemplateElement:v6];
  v8 = [[SKUIShareTemplateTextItemProvider alloc] initWithTemplateElement:v6 clientContext:v5];

  v9 = [[SKUIShareTemplateURLItemProvider alloc] initWithTemplateElement:v6];
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v10;
}

- (id)_applicationActivitiesWithTemplateElement:(id)a3 clientContext:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = @"wishlist";
  v8 = &v15;
  v16[0] = @"gift";
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = [v5 activityForShareSheetActivityType:*v8];
    if (v11)
    {
      v12 = [[SKUIShareTemplateActivity alloc] initWithActivityViewElement:v11 clientContext:v6];
      [v7 addObject:v12];
    }

    v9 = 0;
    v8 = v16;
  }

  while ((v10 & 1) != 0);
  for (i = 1; i != -1; --i)
  {
  }

  return v7;
}

- (void)initWithTemplateElement:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShareTemplateActivityViewController initWithTemplateElement:clientContext:]";
}

@end