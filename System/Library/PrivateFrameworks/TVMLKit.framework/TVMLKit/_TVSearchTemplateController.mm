@interface _TVSearchTemplateController
- (BOOL)_isAtWordEnd;
- (BOOL)_searchBarContainsFocus;
- (_TVSearchTemplateController)init;
- (id)_sanitizedText;
- (id)impressionableElementsContainedInDocument:(id)document;
- (void)_keyboardDidChangeFrame:(id)frame;
- (void)_recordImpressionsForVisibleView;
- (void)_scrollToTopAnimated:(BOOL)animated;
- (void)_setNonResultsView:(id)view;
- (void)_updateImpressions;
- (void)_updateKeyboardText;
- (void)_updateSearchFieldText;
- (void)dealloc;
- (void)loadView;
- (void)updateNavigationItem:(id)item;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateWithViewElement:(id)element;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
@end

@implementation _TVSearchTemplateController

- (_TVSearchTemplateController)init
{
  v14.receiver = self;
  v14.super_class = _TVSearchTemplateController;
  v2 = [(_TVSearchTemplateController *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TVStackCollectionViewController);
    resultsViewController = v2->_resultsViewController;
    v2->_resultsViewController = v3;

    [(_TVStackCollectionViewController *)v2->_resultsViewController setDelegate:v2];
    [(_TVStackCollectionViewController *)v2->_resultsViewController setDefinesPresentationContext:1];
    v5 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
    searchController = v2->_searchController;
    v2->_searchController = v5;

    [(UISearchController *)v2->_searchController setObscuresBackgroundDuringPresentation:0];
    [(UISearchController *)v2->_searchController setSearchResultsUpdater:v2];
    searchBar = [(UISearchController *)v2->_searchController searchBar];
    [searchBar setKeyboardType:0];
    [searchBar setSearchBarStyle:2];
    [searchBar setEnablesReturnKeyAutomatically:0];
    [searchBar setCenterPlaceholder:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__keyboardDidChangeFrame_ name:*MEMORY[0x277D76B98] object:0];

    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v2->_spinner;
    v2->_spinner = v9;

    [MEMORY[0x277D750E8] defaultSizeForStyle:100];
    [(UIActivityIndicatorView *)v2->_spinner setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v11, v12];
    [(UIActivityIndicatorView *)v2->_spinner startAnimating];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardText object:0];
  v4.receiver = self;
  v4.super_class = _TVSearchTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 dealloc];
}

- (void)updateWithViewElement:(id)element
{
  v68 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v66.receiver = self;
  v66.super_class = _TVSearchTemplateController;
  [(_TVBgImageLoadingViewController *)&v66 updateWithViewElement:elementCopy];
  objc_storeStrong(&self->_viewElement, element);
  appDocument = [elementCopy appDocument];
  [appDocument impressionThreshold];
  self->_impressionThreshold = v7;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = elementCopy;
  children = [elementCopy children];
  v9 = [children countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v63;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v63 != v14)
        {
          objc_enumerationMutation(children);
        }

        v16 = *(*(&v62 + 1) + 8 * i);
        tv_elementType = [v16 tv_elementType];
        if (tv_elementType == 10)
        {
          v19 = v16;

          v12 = v19;
        }

        else if (tv_elementType == 45)
        {
          v18 = v16;

          v13 = v18;
        }

        else if (v13 && !v12 && !v11)
        {
          v11 = v16;
          v12 = 0;
        }
      }

      v10 = [children countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  objc_storeStrong(&self->_searchFieldElement, v13);
  objc_storeStrong(&self->_collectionListElement, v12);
  objc_storeStrong(&self->_nonResultsElement, v11);
  ikKeyboard = self->_ikKeyboard;
  keyboard = [(IKTextFieldElement *)self->_searchFieldElement keyboard];

  if (ikKeyboard != keyboard)
  {
    [(IKAppKeyboard *)self->_ikKeyboard setDelegate:0];
    keyboard2 = [(IKTextFieldElement *)self->_searchFieldElement keyboard];
    v23 = self->_ikKeyboard;
    self->_ikKeyboard = keyboard2;

    [(IKAppKeyboard *)self->_ikKeyboard setDelegate:self];
  }

  if (self->_nonResultsElement)
  {
    v24 = +[TVInterfaceFactory sharedInterfaceFactory];
    v25 = [v24 _viewFromElement:self->_nonResultsElement existingView:self->_nonResultsView];
    [(_TVSearchTemplateController *)self _setNonResultsView:v25];
  }

  else
  {
    [(_TVSearchTemplateController *)self _setNonResultsView:0];
  }

  if ([(_TVSearchTemplateController *)self _searchBarContainsFocus]&& [(IKViewElement *)self->_collectionListElement updateType]!= 2)
  {
    [(_TVStackCollectionViewController *)self->_resultsViewController resetLastFocusedIndexPath];
  }

  [(_TVStackCollectionViewController *)self->_resultsViewController updateWithViewElement:self->_collectionListElement];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  text = [(IKTextFieldElement *)self->_searchFieldElement text];
  string = [text string];
  [searchBar setPlaceholder:string];

  style = [(IKTextFieldElement *)self->_searchFieldElement style];
  [style tv_padding];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [searchBar setContentInset:{v31, v33, v35, v37}];
  attributes = [(IKTextFieldElement *)self->_searchFieldElement attributes];
  v39 = [attributes objectForKeyedSubscript:@"showSpinner"];
  bOOLValue = [v39 BOOLValue];

  if (bOOLValue)
  {
    if (!self->_originalSearchFieldRightView)
    {
      searchField = [searchBar searchField];
      rightView = [searchField rightView];
      spinner = self->_spinner;

      if (rightView != spinner)
      {
        searchField2 = [searchBar searchField];
        rightView2 = [searchField2 rightView];
        originalSearchFieldRightView = self->_originalSearchFieldRightView;
        self->_originalSearchFieldRightView = rightView2;

        searchField3 = [searchBar searchField];
        self->_originalSearchFieldRightViewMode = [searchField3 rightViewMode];
      }
    }

    searchField4 = [searchBar searchField];
    p_spinner = &self->_spinner;
    [searchField4 setRightView:self->_spinner];

    searchField5 = [searchBar searchField];
    v51 = searchField5;
    v52 = 3;
    goto LABEL_31;
  }

  searchField6 = [searchBar searchField];
  rightView3 = [searchField6 rightView];
  p_spinner = &self->_spinner;
  v55 = self->_spinner;

  if (rightView3 == v55)
  {
    v57 = self->_originalSearchFieldRightView;
    searchField7 = [searchBar searchField];
    v59 = searchField7;
    if (v57)
    {
      [searchField7 setRightView:self->_originalSearchFieldRightView];

      searchField8 = [searchBar searchField];
      [searchField8 setRightViewMode:self->_originalSearchFieldRightViewMode];

      v51 = self->_originalSearchFieldRightView;
      self->_originalSearchFieldRightView = 0;
      goto LABEL_32;
    }

    [searchField7 setRightView:0];

    searchField5 = [searchBar searchField];
    v51 = searchField5;
    v52 = 0;
LABEL_31:
    [(UIView *)searchField5 setRightViewMode:v52];
LABEL_32:

    [(UIActivityIndicatorView *)*p_spinner setHidden:bOOLValue ^ 1u];
  }

  if ([(_TVSearchTemplateController *)self isViewLoaded])
  {
    view = [(_TVSearchTemplateController *)self view];
    [view setNeedsLayout];
  }

  [(_TVSearchTemplateController *)self _updateImpressions];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = _TVSearchTemplateController;
  [(_TVSearchTemplateController *)&v6 loadView];
  view = [(_TVSearchTemplateController *)self view];
  v4 = self->_resultsViewController;
  [(_TVSearchTemplateController *)self addChildViewController:v4];
  view2 = [(_TVStackCollectionViewController *)v4 view];
  [view2 setAutoresizingMask:18];
  [view addSubview:view2];
  [(_TVStackCollectionViewController *)v4 didMoveToParentViewController:self];
  if (self->_nonResultsView)
  {
    [view addSubview:?];
  }

  [(_TVSearchTemplateController *)self _updateSearchFieldText];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = _TVSearchTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidAppear:appear];
  [(_TVSearchTemplateController *)self _updateImpressions];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = _TVSearchTemplateController;
  [(_TVBgImageLoadingViewController *)&v15 viewDidLayoutSubviews];
  view = [(_TVSearchTemplateController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(_TVStackCollectionViewController *)self->_resultsViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
  [view2 setHidden:self->_nonResultsView != 0];
  [view safeAreaInsets];
  [(UIView *)self->_nonResultsView setFrame:v5, v7 + v13, v9, v11 - (v13 + fmax(v11 - self->_keyboardFrame.origin.y, v14))];
}

- (void)updateNavigationItem:(id)item
{
  searchController = self->_searchController;
  itemCopy = item;
  [itemCopy setSearchController:searchController];
  [itemCopy setHidesSearchBarWhenScrolling:0];
}

- (void)_scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  collectionView = [(_TVStackCollectionViewController *)self->_resultsViewController collectionView];
  [collectionView adjustedContentInset];
  [collectionView setContentOffset:animatedCopy animated:{0.0, -v5}];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionView bounds];
  v7 = [collectionViewLayout invalidationContextForBoundsChange:?];
  [collectionViewLayout invalidateLayoutWithContext:v7];

  [(_TVStackCollectionViewController *)self->_resultsViewController resetLastFocusedIndexPath];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardText object:0];
  if ([(_TVSearchTemplateController *)self _isAtWordEnd])
  {

    [(_TVSearchTemplateController *)self _updateKeyboardText];
  }

  else
  {

    [(_TVSearchTemplateController *)self performSelector:sel__updateKeyboardText withObject:0 afterDelay:0.5];
  }
}

- (void)_updateImpressions
{
  [(_TVSearchTemplateController *)self _cancelImpressionsUpdate];
  if (self->_impressionThreshold > 0.0)
  {

    [(_TVSearchTemplateController *)self performSelector:sel__recordImpressionsForVisibleView withObject:0 afterDelay:?];
  }
}

- (void)_recordImpressionsForVisibleView
{
  if ([(_TVSearchTemplateController *)self isViewLoaded])
  {
    view = [(_TVSearchTemplateController *)self view];
    window = [view window];

    if (window)
    {
      appDocument = [(IKViewElement *)self->_viewElement appDocument];
      v5 = [(_TVSearchTemplateController *)self impressionableElementsContainedInDocument:?];
      if ([v5 count])
      {
        [appDocument recordImpressionsForViewElements:v5];
      }
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)document
{
  v24 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  appDocument = [(IKViewElement *)self->_viewElement appDocument];
  v6 = [appDocument isEqual:documentCopy];

  if (v6)
  {
    collectionView = [(_TVStackCollectionViewController *)self->_resultsViewController collectionView];
    visibleCells = [collectionView visibleCells];
    array = [MEMORY[0x277CBEB18] array];
    if ([(_TVSearchTemplateController *)self isViewLoaded])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = visibleCells;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            viewController = [*(*(&v19 + 1) + 8 * i) viewController];
            v16 = [viewController tv_impressionableElementsForDocument:documentCopy];
            [array addObjectsFromArray:v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }

    if ([array count])
    {
      v17 = [MEMORY[0x277CBEA60] arrayWithArray:array];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_updateSearchFieldText
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardText object:0];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  text = [(IKAppKeyboard *)self->_ikKeyboard text];
  [searchBar setText:text];
}

- (void)_updateKeyboardText
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardText object:0];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  _textInputSource = [searchBar _textInputSource];

  v5 = @"dictation";
  if (_textInputSource != 2)
  {
    v5 = 0;
  }

  if (_textInputSource == 1)
  {
    v6 = @"keyboard";
  }

  else
  {
    v6 = v5;
  }

  [(IKAppKeyboard *)self->_ikKeyboard _setSource:v6];
  _sanitizedText = [(_TVSearchTemplateController *)self _sanitizedText];
  [(IKAppKeyboard *)self->_ikKeyboard setText:_sanitizedText];
}

- (BOOL)_isAtWordEnd
{
  if (_isAtWordEnd_onceToken != -1)
  {
    [_TVSearchTemplateController _isAtWordEnd];
  }

  _sanitizedText = [(_TVSearchTemplateController *)self _sanitizedText];
  v4 = [_sanitizedText length];
  if (v4)
  {
    v5 = [_isAtWordEnd_wordDelimiters characterIsMember:{objc_msgSend(_sanitizedText, "characterAtIndex:", v4 - 1)}];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_sanitizedText
{
  v7 = -4;
  searchBar = [(UISearchController *)self->_searchController searchBar];
  text = [searchBar text];

  v4 = [MEMORY[0x277CCACA8] stringWithCharacters:&v7 length:1];
  v5 = [text stringByReplacingOccurrencesOfString:v4 withString:&stru_287E12870];

  return v5;
}

- (BOOL)_searchBarContainsFocus
{
  if ([(_TVSearchTemplateController *)self isViewLoaded])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    focusedView = [mainScreen focusedView];

    view = [(_TVSearchTemplateController *)self view];
    if ([focusedView isDescendantOfView:view])
    {
      view2 = [(_TVStackCollectionViewController *)self->_resultsViewController view];
      v7 = [focusedView isDescendantOfView:view2] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_setNonResultsView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_nonResultsView removeFromSuperview];
  objc_storeStrong(&self->_nonResultsView, view);
  if ([(_TVSearchTemplateController *)self isViewLoaded]&& self->_nonResultsView)
  {
    view = [(_TVSearchTemplateController *)self view];
    [view addSubview:self->_nonResultsView];
  }
}

- (void)_keyboardDidChangeFrame:(id)frame
{
  p_keyboardFrame = &self->_keyboardFrame;
  userInfo = [frame userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v6 CGRectValue];
  p_keyboardFrame->origin.x = v7;
  p_keyboardFrame->origin.y = v8;
  p_keyboardFrame->size.width = v9;
  p_keyboardFrame->size.height = v10;

  if ([(_TVSearchTemplateController *)self isViewLoaded]&& self->_nonResultsView)
  {
    view = [(_TVSearchTemplateController *)self view];
    [view setNeedsLayout];
  }
}

@end