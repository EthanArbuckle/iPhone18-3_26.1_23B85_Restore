@interface SKUIProductPageTableInAppPurchasesSection
- (SKUIProductPageTableInAppPurchasesSection)initWithInAppPurchases:(id)purchases clientContext:(id)context;
- (id)headerViewForTableView:(id)view;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (int64_t)numberOfRowsInSection;
- (void)_reloadHeaderView;
- (void)setColorScheme:(id)scheme;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation SKUIProductPageTableInAppPurchasesSection

- (SKUIProductPageTableInAppPurchasesSection)initWithInAppPurchases:(id)purchases clientContext:(id)context
{
  purchasesCopy = purchases;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableInAppPurchasesSection initWithInAppPurchases:clientContext:];
  }

  v13.receiver = self;
  v13.super_class = SKUIProductPageTableInAppPurchasesSection;
  v8 = [(SKUIProductPageTableInAppPurchasesSection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, context);
    v10 = [purchasesCopy copy];
    inAppPurchases = v9->_inAppPurchases;
    v9->_inAppPurchases = v10;
  }

  return v9;
}

- (id)headerViewForTableView:(id)view
{
  if (!self->_headerView && ![(SKUITableViewSection *)self hidesHeaderView])
  {
    v4 = objc_alloc_init(SKUIProductPageTableExpandableHeaderView);
    headerView = self->_headerView;
    self->_headerView = v4;

    [(SKUIProductPageTableExpandableHeaderView *)self->_headerView setColorScheme:self->_colorScheme];
    v6 = self->_headerView;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v8 = ;
    [(SKUIProductPageTableExpandableHeaderView *)v6 setTitle:v8];

    [(SKUIProductPageTableExpandableHeaderView *)self->_headerView sizeToFit];
    [(SKUIProductPageTableInAppPurchasesSection *)self _reloadHeaderView];
  }

  v9 = self->_headerView;

  return v9;
}

- (int64_t)numberOfRowsInSection
{
  if (![(SKUIProductPageTableSection *)self isExpanded])
  {
    return 0;
  }

  inAppPurchases = self->_inAppPurchases;

  return [(NSArray *)inAppPurchases count];
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v6 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    [(SKUIProductPageTableExpandableHeaderView *)self->_headerView setColorScheme:v6];
    schemeCopy = v6;
  }
}

- (void)setExpanded:(BOOL)expanded
{
  v4.receiver = self;
  v4.super_class = SKUIProductPageTableInAppPurchasesSection;
  [(SKUIProductPageTableSection *)&v4 setExpanded:expanded];
  [(SKUIProductPageTableInAppPurchasesSection *)self _reloadHeaderView];
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"IA"];
  if (!v7)
  {
    v7 = [(SKUITableViewCell *)[SKUIProductPageInAppPurchaseTableCell alloc] initWithStyle:0 reuseIdentifier:@"IA"];
    primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(SKUITableViewCell *)v7 setBottomBorderColor:primaryTextColor];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(SKUITableViewCell *)v7 setBottomBorderColor:v9];
    }
  }

  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    [(SKUITableViewCell *)v7 setBorderPaddingLeft:30.0];
    [(SKUIProductPageInAppPurchaseTableCell *)v7 setContentInsets:0.0, 15.0, 0.0, 0.0];
  }

  v10 = [pathCopy row];
  v11 = [(NSArray *)self->_inAppPurchases objectAtIndex:v10];
  [(SKUIProductPageInAppPurchaseTableCell *)v7 setColorScheme:self->_colorScheme];
  formattedPrice = [v11 formattedPrice];
  [(SKUIProductPageInAppPurchaseTableCell *)v7 setPriceString:formattedPrice];

  name = [v11 name];
  [(SKUIProductPageInAppPurchaseTableCell *)v7 setProductName:name];

  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v16 = self->_numberFormatter;
    self->_numberFormatter = v15;

    [(NSNumberFormatter *)self->_numberFormatter setNumberStyle:1];
    [(NSNumberFormatter *)self->_numberFormatter setUsesGroupingSeparator:0];
    numberFormatter = self->_numberFormatter;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v10 + 1];
  v18 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v17];
  [(SKUIProductPageInAppPurchaseTableCell *)v7 setIndexString:v18];

  return v7;
}

- (void)_reloadHeaderView
{
  isExpanded = [(SKUIProductPageTableSection *)self isExpanded];
  headerView = self->_headerView;
  if (isExpanded)
  {
    [(SKUIProductPageTableExpandableHeaderView *)self->_headerView setActionString:0];
  }

  else
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_SHOW_IN_APPS_BUTTON" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_SHOW_IN_APPS_BUTTON" inBundles:0 inTable:@"ProductPage"];
    }
    v6 = ;
    [(SKUIProductPageTableExpandableHeaderView *)headerView setActionString:v6];
  }

  v7 = self->_headerView;
  primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
  v10 = primaryTextColor;
  if (primaryTextColor)
  {
    [(SKUIProductPageTableExpandableHeaderView *)v7 setBottomBorderColor:primaryTextColor];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(SKUIProductPageTableExpandableHeaderView *)v7 setBottomBorderColor:v9];
  }
}

- (void)initWithInAppPurchases:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageTableInAppPurchasesSection initWithInAppPurchases:clientContext:]";
}

@end