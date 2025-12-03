@interface STSSearchBrowserHeaderView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
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
    sts_defaultBackgroundColor = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
    [(STSSearchBrowserHeaderView *)v2 setBackgroundColor:sts_defaultBackgroundColor];

    v4 = objc_alloc_init(STSSearchBar);
    searchBar = v2->_searchBar;
    v2->_searchBar = &v4->super;

    searchField = [(UISearchBar *)v2->_searchBar searchField];
    [(UISearchBar *)v2->_searchBar setSearchBarStyle:2];
    searchTextField = [(UISearchBar *)v2->_searchBar searchTextField];
    layer = [searchTextField layer];
    [layer setCornerRadius:20.0];

    searchTextField2 = [(UISearchBar *)v2->_searchBar searchTextField];
    layer2 = [searchTextField2 layer];
    [layer2 setMasksToBounds:1];

    searchTextField3 = [(UISearchBar *)v2->_searchBar searchTextField];
    sts_headerZKWSearchButtonAndSearchTextFieldBackgroundColor = [MEMORY[0x277D75348] sts_headerZKWSearchButtonAndSearchTextFieldBackgroundColor];
    [searchTextField3 setBackgroundColor:sts_headerZKWSearchButtonAndSearchTextFieldBackgroundColor];

    v13 = v2->_searchBar;
    systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
    [(UISearchBar *)v13 setTintColor:systemPinkColor];

    [(UISearchBar *)v2->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = STSLocalizedString(@"SEARCHBAR_PLACEHOLDER");
    v16 = objc_alloc(MEMORY[0x277CCAB48]);
    v34 = *MEMORY[0x277D740C0];
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    v35[0] = lightGrayColor;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v19 = [v16 initWithString:v15 attributes:v18];

    [searchField setAttributedPlaceholder:v19];
    [(UISearchBar *)v2->_searchBar setShowsCancelButton:1];
    cancelButton = [(UISearchBar *)v2->_searchBar cancelButton];
    [cancelButton setEnabled:1];

    [(UISearchBar *)v2->_searchBar _setAutoDisableCancelButton:0];
    [(STSSearchBrowserHeaderView *)v2 addSubview:v2->_searchBar];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];

    leadingAnchor = [(UISearchBar *)v2->_searchBar leadingAnchor];
    leadingAnchor2 = [(STSSearchBrowserHeaderView *)v2 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array2 addObject:v25];

    trailingAnchor = [(UISearchBar *)v2->_searchBar trailingAnchor];
    trailingAnchor2 = [(STSSearchBrowserHeaderView *)v2 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array2 addObject:v28];

    topAnchor = [(UISearchBar *)v2->_searchBar topAnchor];
    topAnchor2 = [(STSSearchBrowserHeaderView *)v2 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array2 addObject:v31];

    [MEMORY[0x277CCAAD0] activateConstraints:array2];
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
  heightAnchor = [(UISearchBar *)self->_searchBar heightAnchor];
  [(UISearchBar *)self->_searchBar bounds];
  v8 = [heightAnchor constraintEqualToConstant:v7];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UISearchBar *)self->_searchBar sizeThatFits:fits.width, fits.height];
  v5 = v4 + 7.0;
  result.height = v5;
  result.width = v3;
  return result;
}

@end