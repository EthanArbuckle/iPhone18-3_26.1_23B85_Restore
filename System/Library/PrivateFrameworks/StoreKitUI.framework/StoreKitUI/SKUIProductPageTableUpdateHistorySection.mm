@interface SKUIProductPageTableUpdateHistorySection
- (SKUIProductPageTableUpdateHistorySection)initWithClientContext:(id)context;
- (double)heightForCellInTableView:(id)view indexPath:(id)path;
- (id)headerViewForTableView:(id)view;
- (id)selectionActionForTableView:(id)view indexPath:(id)path;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (int64_t)numberOfRowsInSection;
- (void)_reloadHeaderView;
- (void)setColorScheme:(id)scheme;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation SKUIProductPageTableUpdateHistorySection

- (SKUIProductPageTableUpdateHistorySection)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageTableUpdateHistorySection initWithClientContext:];
  }

  v11.receiver = self;
  v11.super_class = SKUIProductPageTableUpdateHistorySection;
  v6 = [(SKUIProductPageTableUpdateHistorySection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v7->_dateFormatter;
    v7->_dateFormatter = v8;

    [(NSDateFormatter *)v7->_dateFormatter setDateStyle:2];
    [(NSDateFormatter *)v7->_dateFormatter setTimeStyle:0];
  }

  return v7;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v9 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    headerView = self->_headerView;
    primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(SKUIProductPageTableExpandableHeaderView *)headerView setBottomBorderColor:primaryTextColor];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(SKUIProductPageTableExpandableHeaderView *)headerView setBottomBorderColor:v8];
    }

    [(SKUIProductPageTableExpandableHeaderView *)self->_headerView setColorScheme:self->_colorScheme];
    schemeCopy = v9;
  }
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
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v8 = ;
    [(SKUIProductPageTableExpandableHeaderView *)v6 setTitle:v8];

    v9 = self->_headerView;
    primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(SKUIProductPageTableExpandableHeaderView *)v9 setBottomBorderColor:primaryTextColor];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(SKUIProductPageTableExpandableHeaderView *)v9 setBottomBorderColor:v11];
    }

    [(SKUIProductPageTableExpandableHeaderView *)self->_headerView sizeToFit];
    [(SKUIProductPageTableUpdateHistorySection *)self _reloadHeaderView];
  }

  v12 = self->_headerView;

  return v12;
}

- (double)heightForCellInTableView:(id)view indexPath:(id)path
{
  v5 = [path row];
  v6 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_firstStringIndex + v5];
  [(SKUIProductPageTableSection *)self heightForTextLayout:v6 isExpanded:[(NSMutableIndexSet *)self->_expandedIndexSet containsIndex:v5]];
  v8 = v7;

  return v8;
}

- (int64_t)numberOfRowsInSection
{
  if (![(SKUIProductPageTableSection *)self isExpanded])
  {
    return 0;
  }

  releaseNotes = self->_releaseNotes;

  return [(NSArray *)releaseNotes count];
}

- (id)selectionActionForTableView:(id)view indexPath:(id)path
{
  v5 = [path row];
  v6 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_firstStringIndex + v5];
  if ((-[NSMutableIndexSet containsIndex:](self->_expandedIndexSet, "containsIndex:", v5) & 1) != 0 || ![v6 requiresTruncation])
  {
    v10 = 0;
  }

  else
  {
    expandedIndexSet = self->_expandedIndexSet;
    if (!expandedIndexSet)
    {
      v8 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v9 = self->_expandedIndexSet;
      self->_expandedIndexSet = v8;

      expandedIndexSet = self->_expandedIndexSet;
    }

    [(NSMutableIndexSet *)expandedIndexSet addIndex:v5];
    v10 = [SKUIProductPageAction actionWithType:0];
  }

  return v10;
}

- (void)setExpanded:(BOOL)expanded
{
  v4.receiver = self;
  v4.super_class = SKUIProductPageTableUpdateHistorySection;
  [(SKUIProductPageTableSection *)&v4 setExpanded:expanded];
  [(SKUIProductPageTableUpdateHistorySection *)self _reloadHeaderView];
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  pathCopy = path;
  v7 = [(SKUIProductPageTableSection *)self textBoxTableViewCellForTableView:view indexPath:pathCopy];
  primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
  if (primaryTextColor)
  {
    [v7 setBottomBorderColor:primaryTextColor];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [v7 setBottomBorderColor:v9];
  }

  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    [v7 setBorderPaddingLeft:30.0];
    [v7 setTextBoxInsets:{0.0, 15.0, 0.0, 0.0}];
  }

  v10 = [pathCopy row];
  v11 = [(SKUILayoutCache *)self->_textLayoutCache layoutForIndex:self->_firstStringIndex + v10];
  textBoxView = [v7 textBoxView];
  v13 = textBoxView;
  if (v11)
  {
    v29 = pathCopy;
    [textBoxView setFixedWidthTextFrame:{objc_msgSend(v11, "textFrame")}];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"MORE_BUTTON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
    }
    v15 = ;
    [v13 setMoreButtonTitle:v15];

    if ([(NSMutableIndexSet *)self->_expandedIndexSet containsIndex:v10])
    {
      v16 = 0;
    }

    else
    {
      v16 = 5;
    }

    [v13 setNumberOfVisibleLines:v16];
    v17 = [(NSArray *)self->_releaseNotes objectAtIndex:v10];
    date = [v17 date];
    if (date)
    {
      v19 = self->_clientContext;
      if (v19)
      {
        [(SKUIClientContext *)v19 localizedStringForKey:@"PRODUCT_PAGE_UPDATED_DATE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATED_DATE" inBundles:0 inTable:@"ProductPage"];
      }
      v21 = ;
      v22 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:date];
      v20 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:0, v22];
    }

    else
    {
      v20 = 0;
    }

    [v13 setSubtitle:v20];
    versionString = [v17 versionString];
    if (versionString)
    {
      v24 = versionString;
      v25 = self->_clientContext;
      if (v25)
      {
        [(SKUIClientContext *)v25 localizedStringForKey:@"PRODUCT_PAGE_UPDATED_VERSION" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATED_VERSION" inBundles:0 inTable:@"ProductPage"];
      }
      v27 = ;
      v26 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v27 validFormatSpecifiers:@"%@" error:0, v24];
    }

    else
    {
      v26 = 0;
    }

    [v13 setTitle:v26];

    pathCopy = v29;
  }

  else
  {
    [textBoxView reset];
  }

  return v7;
}

- (void)_reloadHeaderView
{
  isExpanded = [(SKUIProductPageTableSection *)self isExpanded];
  headerView = self->_headerView;
  if (isExpanded)
  {
    v5 = self->_headerView;

    [(SKUIProductPageTableExpandableHeaderView *)v5 setActionString:0];
  }

  else
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_SHOW_UPDATE_HISTORY_BUTTON" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_SHOW_UPDATE_HISTORY_BUTTON" inBundles:0 inTable:@"ProductPage"];
    }
    v7 = ;
    [(SKUIProductPageTableExpandableHeaderView *)headerView setActionString:v7];
  }
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageTableUpdateHistorySection initWithClientContext:]";
}

@end