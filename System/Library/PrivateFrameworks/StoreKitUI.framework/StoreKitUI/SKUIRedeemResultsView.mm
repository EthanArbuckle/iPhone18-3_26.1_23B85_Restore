@interface SKUIRedeemResultsView
- (SKUIRedeemResultsView)init;
- (SKUIRedeemResultsViewDelegate)resultsDelegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)init;
- (void)layoutSubviews;
- (void)setSections:(id)sections;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation SKUIRedeemResultsView

- (SKUIRedeemResultsView)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemResultsView init];
  }

  v7.receiver = self;
  v7.super_class = SKUIRedeemResultsView;
  v3 = [(SKUIRedeemResultsView *)&v7 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = v3;
  if (v3)
  {
    [(SKUIRedeemResultsView *)v3 setDelegate:v3];
    [(SKUIRedeemResultsView *)v4 setDataSource:v4];
    [(SKUIRedeemResultsView *)v4 setAlwaysBounceVertical:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SKUIRedeemResultsView *)v4 setBackgroundColor:whiteColor];

    [(SKUIRedeemResultsView *)v4 setSeparatorStyle:0];
  }

  return v4;
}

- (void)setSections:(id)sections
{
  sectionsCopy = sections;
  if (self->_sections != sectionsCopy)
  {
    v6 = sectionsCopy;
    objc_storeStrong(&self->_sections, sections);
    [(SKUIRedeemResultsView *)self reloadData];
    sectionsCopy = v6;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  v9 = [v8 tableViewCellForTableView:viewCopy indexPath:pathCopy];

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  numberOfRowsInSection = [v4 numberOfRowsInSection];

  return numberOfRowsInSection;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_resultsDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_resultsDelegate);
    [v7 redeemResultsView:self didSelectRowAtIndexPath:pathCopy];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v8 heightForCellInTableView:viewCopy indexPath:pathCopy];
  v10 = v9;

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  cellCopy = cell;
  viewCopy = view;
  v11 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v11 tableView:viewCopy willDisplayCell:cellCopy forIndexPath:pathCopy];
}

- (void)layoutSubviews
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  sections = self->_sections;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __39__SKUIRedeemResultsView_layoutSubviews__block_invoke;
  v22[3] = &unk_2781FEFC0;
  v22[4] = self;
  v22[5] = &v23;
  [(NSArray *)sections enumerateObjectsUsingBlock:v22];
  [(SKUIRedeemResultsView *)self contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SKUIRedeemResultsView *)self bounds];
  v13 = v12;
  top = self->_contentInsetAdjustments.top;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v17 = 15.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v17 = 28.0;
  }

  v18 = (v13 - (v5 - top) - v24[3]) * 0.5;
  v19 = floorf(v18);
  if (v17 >= v19)
  {
    v19 = v17;
  }

  v20 = v19;
  self->_contentInsetAdjustments.top = v20;
  [(SKUIRedeemResultsView *)self setContentInset:v5 + v20 - top, v7, v9, v11];
  v21.receiver = self;
  v21.super_class = SKUIRedeemResultsView;
  [(SKUIRedeemResultsView *)&v21 layoutSubviews];
  _Block_object_dispose(&v23, 8);
}

void __39__SKUIRedeemResultsView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [v11 numberOfRowsInSection];
  if (v5 >= 1)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:a3];
      [v11 heightForCellInTableView:v8 indexPath:v9];
      *(*(*(a1 + 40) + 8) + 24) = v10 + *(*(*(a1 + 40) + 8) + 24);
    }
  }
}

- (SKUIRedeemResultsViewDelegate)resultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsDelegate);

  return WeakRetained;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemResultsView init]";
}

@end