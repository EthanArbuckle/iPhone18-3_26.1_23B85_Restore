@interface STSSearchBrowserHeaderView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (STSSearchBrowserHeaderView)init;
- (void)updateConstraints;
@end

@implementation STSSearchBrowserHeaderView

- (STSSearchBrowserHeaderView)init
{
  v35[1] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = STSSearchBrowserHeaderView;
  v2 = [(STSSearchBrowserHeaderView *)&v33 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
    [(STSSearchBrowserHeaderView *)v2 setBackgroundColor:v3];

    v4 = objc_alloc_init(STSSearchBar);
    searchBar = v2->_searchBar;
    v2->_searchBar = &v4->super;

    v6 = [(UISearchBar *)v2->_searchBar searchField];
    [(UISearchBar *)v2->_searchBar setSearchBarStyle:2];
    v7 = [(UISearchBar *)v2->_searchBar searchTextField];
    v8 = [v7 layer];
    [v8 setCornerRadius:20.0];

    v9 = [(UISearchBar *)v2->_searchBar searchTextField];
    v10 = [v9 layer];
    [v10 setMasksToBounds:1];

    v11 = [(UISearchBar *)v2->_searchBar searchTextField];
    v12 = [MEMORY[0x277D75348] sts_headerZKWSearchButtonAndSearchTextFieldBackgroundColor];
    [v11 setBackgroundColor:v12];

    v13 = v2->_searchBar;
    v14 = [MEMORY[0x277D75348] systemPinkColor];
    [(UISearchBar *)v13 setTintColor:v14];

    [(UISearchBar *)v2->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = STSLocalizedString(@"SEARCHBAR_PLACEHOLDER");
    v16 = objc_alloc(MEMORY[0x277CCAB48]);
    v34 = *MEMORY[0x277D740C0];
    v17 = [MEMORY[0x277D75348] lightGrayColor];
    v35[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v19 = [v16 initWithString:v15 attributes:v18];

    [v6 setAttributedPlaceholder:v19];
    [(UISearchBar *)v2->_searchBar setShowsCancelButton:1];
    v20 = [(UISearchBar *)v2->_searchBar cancelButton];
    [v20 setEnabled:1];

    [(UISearchBar *)v2->_searchBar _setAutoDisableCancelButton:0];
    [(STSSearchBrowserHeaderView *)v2 addSubview:v2->_searchBar];
    v21 = [MEMORY[0x277CBEB18] array];
    v22 = [MEMORY[0x277CBEB18] array];

    v23 = [(UISearchBar *)v2->_searchBar leadingAnchor];
    v24 = [(STSSearchBrowserHeaderView *)v2 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v22 addObject:v25];

    v26 = [(UISearchBar *)v2->_searchBar trailingAnchor];
    v27 = [(STSSearchBrowserHeaderView *)v2 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v22 addObject:v28];

    v29 = [(UISearchBar *)v2->_searchBar topAnchor];
    v30 = [(STSSearchBrowserHeaderView *)v2 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v22 addObject:v31];

    [MEMORY[0x277CCAAD0] activateConstraints:v22];
  }

  return v2;
}

- (void)updateConstraints
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = STSSearchBrowserHeaderView;
  [(STSSearchBrowserHeaderView *)&v12 updateConstraints];
  if (self->_searchBarHeight)
  {
    v3 = MEMORY[0x277CCAAD0];
    v14[0] = self->_searchBarHeight;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v3 deactivateConstraints:v4];

    searchBarHeight = self->_searchBarHeight;
    self->_searchBarHeight = 0;
  }

  [(UISearchBar *)self->_searchBar sizeToFit];
  v6 = [(UISearchBar *)self->_searchBar heightAnchor];
  [(UISearchBar *)self->_searchBar bounds];
  v8 = [v6 constraintEqualToConstant:v7];
  v9 = self->_searchBarHeight;
  self->_searchBarHeight = v8;

  v10 = MEMORY[0x277CCAAD0];
  v13 = self->_searchBarHeight;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v10 activateConstraints:v11];
}

- (CGSize)intrinsicContentSize
{
  [(STSSearchBrowserHeaderView *)self frame];

  [(STSSearchBrowserHeaderView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UISearchBar *)self->_searchBar sizeThatFits:a3.width, a3.height];
  v5 = v4 + 7.0;
  result.height = v5;
  result.width = v3;
  return result;
}

@end