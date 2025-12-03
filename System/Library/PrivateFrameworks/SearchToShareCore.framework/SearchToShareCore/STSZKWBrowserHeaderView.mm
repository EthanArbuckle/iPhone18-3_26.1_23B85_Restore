@interface STSZKWBrowserHeaderView
- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element;
- (CGRect)contentRect;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (STSKeyCommandDelegate)keyCommandDelegate;
- (STSZKWBrowserHeaderView)init;
- (STSZKWBrowserHeaderViewDelegate)delegate;
- (UIEdgeInsets)contentInset;
- (double)_searchBarWidthFraction;
- (id)_buttonWithTitle:(id)title;
- (id)keyCommands;
- (unint64_t)_suggestionIndexForButton:(id)button;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_searchButtonPressed:(id)pressed;
- (void)_suggestionButtonPressed:(id)pressed;
- (void)_updateTopStackView:(BOOL)view andBottomStackView:(BOOL)stackView;
- (void)clear;
- (void)downArrowPressed;
- (void)escapeKeyPressed;
- (void)layoutSubviews;
- (void)returnKeyPressed;
- (void)setBottomSuggestions:(id)suggestions;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setTopSuggestions:(id)suggestions;
- (void)traitCollectionDidChange:(id)change;
- (void)upArrowPressed;
@end

@implementation STSZKWBrowserHeaderView

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  writingInSearchBar = self->_writingInSearchBar;
  if (!writingInSearchBar && [(STSSearchBar *)self->_searchBar isUserInteractionEnabled])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__STSZKWBrowserHeaderView_searchBarShouldBeginEditing___block_invoke;
    block[3] = &unk_279B8A988;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return writingInSearchBar;
}

uint64_t __55__STSZKWBrowserHeaderView_searchBarShouldBeginEditing___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setUserInteractionEnabled:0];
  v2 = *(a1 + 32);

  return [v2 _searchButtonPressed:0];
}

- (STSZKWBrowserHeaderView)init
{
  v45[1] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = STSZKWBrowserHeaderView;
  v2 = [(STSZKWBrowserHeaderView *)&v43 init];
  if (v2)
  {
    sts_defaultBackgroundColor = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
    [(STSZKWBrowserHeaderView *)v2 setBackgroundColor:sts_defaultBackgroundColor];

    [(STSZKWBrowserHeaderView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    array = [MEMORY[0x277CBEB18] array];
    topZKWButtons = v2->_topZKWButtons;
    v2->_topZKWButtons = array;

    array2 = [MEMORY[0x277CBEB18] array];
    bottomZKWButtons = v2->_bottomZKWButtons;
    v2->_bottomZKWButtons = array2;

    v8 = objc_alloc_init(STSSearchBar);
    searchBar = v2->_searchBar;
    v2->_searchBar = v8;

    [(STSSearchBar *)v2->_searchBar setDelegate:v2];
    [(STSSearchBar *)v2->_searchBar setStsDelegate:v2];
    searchTextField = [(STSSearchBar *)v2->_searchBar searchTextField];
    [searchTextField setDelegate:v2];

    [(STSSearchBar *)v2->_searchBar setStsDelegate:v2];
    [(STSSearchBar *)v2->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STSSearchBar *)v2->_searchBar _setDisableDictationButton:1];
    searchField = [(STSSearchBar *)v2->_searchBar searchField];
    [(STSSearchBar *)v2->_searchBar setSearchBarStyle:2];
    searchTextField2 = [(STSSearchBar *)v2->_searchBar searchTextField];
    layer = [searchTextField2 layer];
    [layer setCornerRadius:20.0];

    searchTextField3 = [(STSSearchBar *)v2->_searchBar searchTextField];
    layer2 = [searchTextField3 layer];
    [layer2 setMasksToBounds:1];

    v16 = v2->_searchBar;
    systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
    [(STSSearchBar *)v16 setTintColor:systemPinkColor];

    searchTextField4 = [(STSSearchBar *)v2->_searchBar searchTextField];
    sts_headerZKWSearchButtonAndSearchTextFieldBackgroundColor = [MEMORY[0x277D75348] sts_headerZKWSearchButtonAndSearchTextFieldBackgroundColor];
    [searchTextField4 setBackgroundColor:sts_headerZKWSearchButtonAndSearchTextFieldBackgroundColor];

    v20 = STSLocalizedString(@"SEARCHBAR_BUTTON_TITLE");
    v21 = objc_alloc(MEMORY[0x277CCAB48]);
    v44 = *MEMORY[0x277D740C0];
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    v45[0] = lightGrayColor;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v24 = [v21 initWithString:v20 attributes:v23];

    v42 = searchField;
    [searchField setAttributedPlaceholder:v24];
    [(STSZKWBrowserHeaderView *)v2 addSubview:v2->_searchBar];
    array3 = [MEMORY[0x277CBEB18] array];
    searchBarConstraints = v2->_searchBarConstraints;
    v2->_searchBarConstraints = array3;

    traitCollection = [(STSZKWBrowserHeaderView *)v2 traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    readableContentGuide = [(STSZKWBrowserHeaderView *)v2 readableContentGuide];
    v30 = v2->_searchBarConstraints;
    leadingAnchor = [(STSSearchBar *)v2->_searchBar leadingAnchor];
    if (horizontalSizeClass == 2)
    {
      v32 = readableContentGuide;
    }

    else
    {
      v32 = v2;
    }

    leadingAnchor2 = [(STSZKWBrowserHeaderView *)v32 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(NSMutableArray *)v30 addObject:v34];

    v35 = v2->_searchBarConstraints;
    trailingAnchor = [(STSSearchBar *)v2->_searchBar trailingAnchor];
    if (horizontalSizeClass == 2)
    {
      v37 = readableContentGuide;
    }

    else
    {
      v37 = v2;
    }

    trailingAnchor2 = [(STSZKWBrowserHeaderView *)v37 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(NSMutableArray *)v35 addObject:v39];

    [MEMORY[0x277CCAAD0] activateConstraints:v2->_searchBarConstraints];
    v40 = objc_alloc_init(MEMORY[0x277CD9660]);
    [v40 setDelegate:v2];
    [v40 setElementSource:v2];
    [(STSZKWBrowserHeaderView *)v2 addInteraction:v40];

    [(STSZKWBrowserHeaderView *)v2 _updateTopStackView:1 andBottomStackView:1];
  }

  return v2;
}

- (void)clear
{
  searchTextField = [(STSSearchBar *)self->_searchBar searchTextField];
  [searchTextField setText:0];
}

- (void)traitCollectionDidChange:(id)change
{
  traitCollection = [(STSZKWBrowserHeaderView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  readableContentGuide = [(STSZKWBrowserHeaderView *)self readableContentGuide];
  searchBarConstraints = self->_searchBarConstraints;
  leadingAnchor = [(STSSearchBar *)self->_searchBar leadingAnchor];
  if (horizontalSizeClass == 2)
  {
    selfCopy = readableContentGuide;
  }

  else
  {
    selfCopy = self;
  }

  leadingAnchor2 = [(STSZKWBrowserHeaderView *)selfCopy leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(NSMutableArray *)searchBarConstraints addObject:v10];

  v11 = self->_searchBarConstraints;
  trailingAnchor = [(STSSearchBar *)self->_searchBar trailingAnchor];
  if (horizontalSizeClass == 2)
  {
    selfCopy2 = readableContentGuide;
  }

  else
  {
    selfCopy2 = self;
  }

  trailingAnchor2 = [(STSZKWBrowserHeaderView *)selfCopy2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [(NSMutableArray *)v11 addObject:v15];

  v16 = self->_searchBarConstraints;
  topAnchor = [(STSSearchBar *)self->_searchBar topAnchor];
  topAnchor2 = [(STSZKWBrowserHeaderView *)self topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [(NSMutableArray *)v16 addObject:v19];

  [MEMORY[0x277CCAAD0] activateConstraints:self->_searchBarConstraints];
}

- (void)layoutSubviews
{
  [(STSZKWBrowserHeaderView *)self bounds];
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_contentInset.right);
  v12 = v11 - (top + self->_contentInset.bottom);
  v13 = [(NSMutableArray *)self->_bottomZKWButtons count];
  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v13)
  {
    v15 = 6.0;
  }

  else
  {
    v15 = 0.0;
  }

  v45.origin.x = v6;
  v45.origin.y = v8;
  v45.size.width = v10;
  v45.size.height = v12;
  v16 = (CGRectGetHeight(v45) - v15) / v14;
  [(STSSearchBar *)self->_searchBar sizeThatFits:v10, v12];
  v18 = v17;
  v40 = 0;
  v41 = &v40;
  v42 = 0x4010000000;
  v43 = &unk_264EC8ED5;
  memset(&v44, 0, sizeof(v44));
  v35 = 0;
  v36 = &v35;
  v37 = 0x4010000000;
  v38 = &unk_264EC8ED5;
  memset(&v39, 0, sizeof(v39));
  v46.origin.x = v6;
  v46.origin.y = v8;
  v46.size.width = v10;
  v46.size.height = v12;
  CGRectDivide(v46, &v44, &v39, v15 + v16, CGRectMinYEdge);
  v19 = v41;
  v41[1].size.height = v18;
  v36[1].size.height = v18;
  size = v19[1].size;
  slice.origin = v19[1].origin;
  slice.size = size;
  if ([(NSMutableArray *)self->_topZKWButtons count])
  {
    Width = CGRectGetWidth(slice);
    [(STSZKWBrowserHeaderView *)self _searchBarWidthFraction];
    CGRectDivide(v41[1], &slice, v41 + 1, Width * v22 + -3.0 + 6.0, CGRectMinXEdge);
    slice.size.width = slice.size.width + -6.0;
    UIFloorToViewScale();
    slice.size.width = v23;
    v24 = [(NSMutableArray *)self->_topZKWButtons count];
    v25 = CGRectGetWidth(v41[1]);
    v26 = (v25 + (v24 - 1) * -6.0) / [(NSMutableArray *)self->_topZKWButtons count];
    topZKWButtons = self->_topZKWButtons;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __41__STSZKWBrowserHeaderView_layoutSubviews__block_invoke;
    v33[3] = &unk_279B8B1C0;
    v33[4] = self;
    v33[5] = &v40;
    *&v33[6] = v26;
    [(NSMutableArray *)topZKWButtons enumerateObjectsUsingBlock:v33];
  }

  if ([(NSMutableArray *)self->_bottomZKWButtons count])
  {
    v28 = [(NSMutableArray *)self->_bottomZKWButtons count];
    v29 = CGRectGetWidth(v36[1]);
    v30 = (v29 + (v28 - 1) * -6.0) / [(NSMutableArray *)self->_bottomZKWButtons count];
    bottomZKWButtons = self->_bottomZKWButtons;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __41__STSZKWBrowserHeaderView_layoutSubviews__block_invoke_2;
    v32[3] = &unk_279B8B1C0;
    v32[4] = self;
    v32[5] = &v35;
    *&v32[6] = v30;
    [(NSMutableArray *)bottomZKWButtons enumerateObjectsUsingBlock:v32];
  }

  [(STSSearchBar *)self->_searchBar setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v40, 8);
}

void __41__STSZKWBrowserHeaderView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(*(a1 + 32) + 432);
  v6 = a2;
  if ([v5 count] - 1 <= a3)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 6.0;
  }

  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v15.origin = *MEMORY[0x277CBF3A0];
  v15.size = v8;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 32);
  v8.width = *(v9 + 40);
  v9 += 32;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  CGRectDivide(*(&v8 - 8), &v15, v9, v7 + *(a1 + 48), CGRectMinXEdge);
  UIFloorToViewScale();
  v15.origin.x = v13;
  UIFloorToViewScale();
  v15.size.width = v14;
  [v6 setFrame:{*&v15.origin, __PAIR128__(*&v15.size.height, *&v14)}];
}

void __41__STSZKWBrowserHeaderView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(*(a1 + 32) + 440);
  v6 = a2;
  if ([v5 count] - 1 <= a3)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 6.0;
  }

  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v15.origin = *MEMORY[0x277CBF3A0];
  v15.size = v8;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 32);
  v8.width = *(v9 + 40);
  v9 += 32;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  CGRectDivide(*(&v8 - 8), &v15, v9, v7 + *(a1 + 48), CGRectMinXEdge);
  UIFloorToViewScale();
  v15.origin.x = v13;
  UIFloorToViewScale();
  v15.size.width = v14;
  [v6 setFrame:{*&v15.origin, __PAIR128__(*&v15.size.height, *&v14)}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(STSSearchBar *)self->_searchBar sizeThatFits:fits.width, fits.height];
  v6 = v5;
  v7 = [(NSMutableArray *)self->_bottomZKWButtons count];
  v8 = 0.0;
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  if (v9 > 0.0 && v6 > 0.0)
  {
    v8 = 6.0;
  }

  v11 = self->_contentInset.bottom + v9 + v6 + self->_contentInset.top + v8;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(STSZKWBrowserHeaderView *)self frame];

  [(STSZKWBrowserHeaderView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)_searchButtonPressed:(id)pressed
{
  if (!self->_writingInSearchBar)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained headerViewDidSelectSearchButton:self];
  }
}

- (void)_cancelButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained headerDidSelectCancelButton:self];
}

- (unint64_t)_suggestionIndexForButton:(id)button
{
  buttonCopy = button;
  v5 = [(NSMutableArray *)self->_topZKWButtons indexOfObject:buttonCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSMutableArray *)self->_bottomZKWButtons indexOfObject:buttonCopy];
  }

  return v5;
}

- (void)_suggestionButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(STSZKWBrowserHeaderView *)self _suggestionIndexForButton:pressedCopy];

  [WeakRetained headerView:self didSelectSuggestionButtonAtIndex:v5];
}

- (CGRect)contentRect
{
  searchField = [(STSSearchBar *)self->_searchBar searchField];
  [searchField frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setTopSuggestions:(id)suggestions
{
  if (self->_topSuggestions != suggestions)
  {
    v4 = [suggestions copy];
    topSuggestions = self->_topSuggestions;
    self->_topSuggestions = v4;

    [(STSZKWBrowserHeaderView *)self _updateTopStackView:1 andBottomStackView:0];
  }
}

- (void)setBottomSuggestions:(id)suggestions
{
  if (self->_bottomSuggestions != suggestions)
  {
    v4 = [suggestions copy];
    bottomSuggestions = self->_bottomSuggestions;
    self->_bottomSuggestions = v4;

    [(STSZKWBrowserHeaderView *)self _updateTopStackView:0 andBottomStackView:1];
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(STSZKWBrowserHeaderView *)self setNeedsLayout];
  }
}

- (void)_updateTopStackView:(BOOL)view andBottomStackView:(BOOL)stackView
{
  stackViewCopy = stackView;
  viewCopy = view;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__STSZKWBrowserHeaderView__updateTopStackView_andBottomStackView___block_invoke;
  v9[3] = &unk_279B8B208;
  v9[4] = self;
  v7 = MEMORY[0x266751FB0](v9, a2);
  v8 = v7;
  if (viewCopy)
  {
    (*(v7 + 16))(v7, self->_topZKWButtons, self->_topSuggestions);
  }

  if (stackViewCopy)
  {
    (v8)[2](v8, self->_bottomZKWButtons, self->_bottomSuggestions);
  }

  [(STSZKWBrowserHeaderView *)self setNeedsLayout];
  [(STSZKWBrowserHeaderView *)self layoutIfNeeded];
}

void __66__STSZKWBrowserHeaderView__updateTopStackView_andBottomStackView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_0];
  [v5 removeAllObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__STSZKWBrowserHeaderView__updateTopStackView_andBottomStackView___block_invoke_3;
  v8[3] = &unk_279B8A9D8;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __66__STSZKWBrowserHeaderView__updateTopStackView_andBottomStackView___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 suggestion];
  v5 = [v3 _buttonWithTitle:v4];

  [v5 addTarget:*(a1 + 32) action:sel__suggestionButtonPressed_ forControlEvents:64];
  [*(a1 + 32) addSubview:v5];
  [*(a1 + 40) addObject:v5];
}

- (id)_buttonWithTitle:(id)title
{
  v4 = MEMORY[0x277D75220];
  titleCopy = title;
  v6 = [v4 buttonWithType:1];
  effectiveUserInterfaceLayoutDirection = [(STSSearchBar *)self->_searchBar effectiveUserInterfaceLayoutDirection];
  v8 = 0.0;
  if (effectiveUserInterfaceLayoutDirection)
  {
    v9 = 8.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (!effectiveUserInterfaceLayoutDirection)
  {
    v8 = 8.0;
  }

  [v6 setContentEdgeInsets:{9.0, v8, 8.0, v9}];
  [v6 setTitle:titleCopy forState:0];

  titleLabel = [v6 titleLabel];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [titleLabel setFont:v11];

  layer = [v6 layer];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [layer setBackgroundColor:{objc_msgSend(whiteColor, "CGColor")}];

  layer2 = [v6 layer];
  [layer2 setCornerRadius:6.0];

  return v6;
}

- (double)_searchBarWidthFraction
{
  v2 = [(NSArray *)self->_topSuggestions count];
  result = 0.5;
  if (v2 == 1)
  {
    return 0.75;
  }

  return result;
}

- (BOOL)_scribbleInteraction:(id)interaction shouldBeginAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(STSSearchBar *)self->_searchBar frame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element
{
  v6 = [(STSSearchBar *)self->_searchBar text:interaction];
  self->_writingInSearchBar = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained headerView:self didSearchFor:v6];
}

- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element
{
  [(STSSearchBar *)self->_searchBar frame:interaction];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  [(STSSearchBar *)self->_searchBar frame];
  v12.x = x;
  v12.y = y;
  if (CGRectContainsPoint(v13, v12))
  {
    self->_writingInSearchBar = 1;
    searchTextField = [(STSSearchBar *)self->_searchBar searchTextField];
    completionCopy[2](completionCopy, searchTextField);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (id)keyCommands
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75650] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_returnKeyPressed];
  v3 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AC0] modifierFlags:0 action:{sel_downArrowPressed, v2}];
  v9[1] = v3;
  v4 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B68] modifierFlags:0 action:sel_upArrowPressed];
  v9[2] = v4;
  v5 = [MEMORY[0x277D75650] keyCommandWithInput:@"\t" modifierFlags:0 action:sel_downArrowPressed];
  v9[3] = v5;
  v6 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AD8] modifierFlags:0 action:sel_escapeKeyPressed];
  v9[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  return v7;
}

- (void)returnKeyPressed
{
  if ([(STSSearchBar *)self->_searchBar isFirstResponder])
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyCommandDelegate);
    searchField = [(STSSearchBar *)self->_searchBar searchField];
    text = [searchField text];
    [WeakRetained didPressReturnKey:text];
  }
}

- (void)downArrowPressed
{
  if ([(STSSearchBar *)self->_searchBar isFirstResponder])
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyCommandDelegate);
    [WeakRetained didPressDownKey];
  }
}

- (void)upArrowPressed
{
  if ([(STSSearchBar *)self->_searchBar isFirstResponder])
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyCommandDelegate);
    [WeakRetained didPressUpKey];
  }
}

- (void)escapeKeyPressed
{
  if ([(STSSearchBar *)self->_searchBar isFirstResponder])
  {
    WeakRetained = objc_loadWeakRetained(&self->_keyCommandDelegate);
    [WeakRetained didRequestClose];
  }
}

- (STSZKWBrowserHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (STSKeyCommandDelegate)keyCommandDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keyCommandDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end