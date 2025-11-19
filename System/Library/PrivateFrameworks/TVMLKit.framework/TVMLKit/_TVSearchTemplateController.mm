@interface _TVSearchTemplateController
- (BOOL)_isAtWordEnd;
- (BOOL)_searchBarContainsFocus;
- (_TVSearchTemplateController)init;
- (id)_sanitizedText;
- (id)impressionableElementsContainedInDocument:(id)a3;
- (void)_keyboardDidChangeFrame:(id)a3;
- (void)_recordImpressionsForVisibleView;
- (void)_scrollToTopAnimated:(BOOL)a3;
- (void)_setNonResultsView:(id)a3;
- (void)_updateImpressions;
- (void)_updateKeyboardText;
- (void)_updateSearchFieldText;
- (void)dealloc;
- (void)loadView;
- (void)updateNavigationItem:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateWithViewElement:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
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
    v7 = [(UISearchController *)v2->_searchController searchBar];
    [v7 setKeyboardType:0];
    [v7 setSearchBarStyle:2];
    [v7 setEnablesReturnKeyAutomatically:0];
    [v7 setCenterPlaceholder:0];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel__keyboardDidChangeFrame_ name:*MEMORY[0x277D76B98] object:0];

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardText object:0];
  v4.receiver = self;
  v4.super_class = _TVSearchTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 dealloc];
}

- (void)updateWithViewElement:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v66.receiver = self;
  v66.super_class = _TVSearchTemplateController;
  [(_TVBgImageLoadingViewController *)&v66 updateWithViewElement:v5];
  objc_storeStrong(&self->_viewElement, a3);
  v6 = [v5 appDocument];
  [v6 impressionThreshold];
  self->_impressionThreshold = v7;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = v5;
  v8 = [v5 children];
  v9 = [v8 countByEnumeratingWithState:&v62 objects:v67 count:16];
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
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v62 + 1) + 8 * i);
        v17 = [v16 tv_elementType];
        if (v17 == 10)
        {
          v19 = v16;

          v12 = v19;
        }

        else if (v17 == 45)
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

      v10 = [v8 countByEnumeratingWithState:&v62 objects:v67 count:16];
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
  v21 = [(IKTextFieldElement *)self->_searchFieldElement keyboard];

  if (ikKeyboard != v21)
  {
    [(IKAppKeyboard *)self->_ikKeyboard setDelegate:0];
    v22 = [(IKTextFieldElement *)self->_searchFieldElement keyboard];
    v23 = self->_ikKeyboard;
    self->_ikKeyboard = v22;

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
  v26 = [(UISearchController *)self->_searchController searchBar];
  v27 = [(IKTextFieldElement *)self->_searchFieldElement text];
  v28 = [v27 string];
  [v26 setPlaceholder:v28];

  v29 = [(IKTextFieldElement *)self->_searchFieldElement style];
  [v29 tv_padding];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v26 setContentInset:{v31, v33, v35, v37}];
  v38 = [(IKTextFieldElement *)self->_searchFieldElement attributes];
  v39 = [v38 objectForKeyedSubscript:@"showSpinner"];
  v40 = [v39 BOOLValue];

  if (v40)
  {
    if (!self->_originalSearchFieldRightView)
    {
      v41 = [v26 searchField];
      v42 = [v41 rightView];
      spinner = self->_spinner;

      if (v42 != spinner)
      {
        v44 = [v26 searchField];
        v45 = [v44 rightView];
        originalSearchFieldRightView = self->_originalSearchFieldRightView;
        self->_originalSearchFieldRightView = v45;

        v47 = [v26 searchField];
        self->_originalSearchFieldRightViewMode = [v47 rightViewMode];
      }
    }

    v48 = [v26 searchField];
    p_spinner = &self->_spinner;
    [v48 setRightView:self->_spinner];

    v50 = [v26 searchField];
    v51 = v50;
    v52 = 3;
    goto LABEL_31;
  }

  v53 = [v26 searchField];
  v54 = [v53 rightView];
  p_spinner = &self->_spinner;
  v55 = self->_spinner;

  if (v54 == v55)
  {
    v57 = self->_originalSearchFieldRightView;
    v58 = [v26 searchField];
    v59 = v58;
    if (v57)
    {
      [v58 setRightView:self->_originalSearchFieldRightView];

      v60 = [v26 searchField];
      [v60 setRightViewMode:self->_originalSearchFieldRightViewMode];

      v51 = self->_originalSearchFieldRightView;
      self->_originalSearchFieldRightView = 0;
      goto LABEL_32;
    }

    [v58 setRightView:0];

    v50 = [v26 searchField];
    v51 = v50;
    v52 = 0;
LABEL_31:
    [(UIView *)v50 setRightViewMode:v52];
LABEL_32:

    [(UIActivityIndicatorView *)*p_spinner setHidden:v40 ^ 1u];
  }

  if ([(_TVSearchTemplateController *)self isViewLoaded])
  {
    v56 = [(_TVSearchTemplateController *)self view];
    [v56 setNeedsLayout];
  }

  [(_TVSearchTemplateController *)self _updateImpressions];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = _TVSearchTemplateController;
  [(_TVSearchTemplateController *)&v6 loadView];
  v3 = [(_TVSearchTemplateController *)self view];
  v4 = self->_resultsViewController;
  [(_TVSearchTemplateController *)self addChildViewController:v4];
  v5 = [(_TVStackCollectionViewController *)v4 view];
  [v5 setAutoresizingMask:18];
  [v3 addSubview:v5];
  [(_TVStackCollectionViewController *)v4 didMoveToParentViewController:self];
  if (self->_nonResultsView)
  {
    [v3 addSubview:?];
  }

  [(_TVSearchTemplateController *)self _updateSearchFieldText];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _TVSearchTemplateController;
  [(_TVBgImageLoadingViewController *)&v4 viewDidAppear:a3];
  [(_TVSearchTemplateController *)self _updateImpressions];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = _TVSearchTemplateController;
  [(_TVBgImageLoadingViewController *)&v15 viewDidLayoutSubviews];
  v3 = [(_TVSearchTemplateController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_TVStackCollectionViewController *)self->_resultsViewController view];
  [v12 setFrame:{v5, v7, v9, v11}];
  [v12 setHidden:self->_nonResultsView != 0];
  [v3 safeAreaInsets];
  [(UIView *)self->_nonResultsView setFrame:v5, v7 + v13, v9, v11 - (v13 + fmax(v11 - self->_keyboardFrame.origin.y, v14))];
}

- (void)updateNavigationItem:(id)a3
{
  searchController = self->_searchController;
  v4 = a3;
  [v4 setSearchController:searchController];
  [v4 setHidesSearchBarWhenScrolling:0];
}

- (void)_scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v8 = [(_TVStackCollectionViewController *)self->_resultsViewController collectionView];
  [v8 adjustedContentInset];
  [v8 setContentOffset:v3 animated:{0.0, -v5}];
  v6 = [v8 collectionViewLayout];
  [v8 bounds];
  v7 = [v6 invalidationContextForBoundsChange:?];
  [v6 invalidateLayoutWithContext:v7];

  [(_TVStackCollectionViewController *)self->_resultsViewController resetLastFocusedIndexPath];
}

- (void)updateSearchResultsForSearchController:(id)a3
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
    v3 = [(_TVSearchTemplateController *)self view];
    v4 = [v3 window];

    if (v4)
    {
      v6 = [(IKViewElement *)self->_viewElement appDocument];
      v5 = [(_TVSearchTemplateController *)self impressionableElementsContainedInDocument:?];
      if ([v5 count])
      {
        [v6 recordImpressionsForViewElements:v5];
      }
    }
  }
}

- (id)impressionableElementsContainedInDocument:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IKViewElement *)self->_viewElement appDocument];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    v7 = [(_TVStackCollectionViewController *)self->_resultsViewController collectionView];
    v8 = [v7 visibleCells];
    v9 = [MEMORY[0x277CBEB18] array];
    if ([(_TVSearchTemplateController *)self isViewLoaded])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v8;
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

            v15 = [*(*(&v19 + 1) + 8 * i) viewController];
            v16 = [v15 tv_impressionableElementsForDocument:v4];
            [v9 addObjectsFromArray:v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }
    }

    if ([v9 count])
    {
      v17 = [MEMORY[0x277CBEA60] arrayWithArray:v9];
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
  v4 = [(UISearchController *)self->_searchController searchBar];
  v3 = [(IKAppKeyboard *)self->_ikKeyboard text];
  [v4 setText:v3];
}

- (void)_updateKeyboardText
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateKeyboardText object:0];
  v3 = [(UISearchController *)self->_searchController searchBar];
  v4 = [v3 _textInputSource];

  v5 = @"dictation";
  if (v4 != 2)
  {
    v5 = 0;
  }

  if (v4 == 1)
  {
    v6 = @"keyboard";
  }

  else
  {
    v6 = v5;
  }

  [(IKAppKeyboard *)self->_ikKeyboard _setSource:v6];
  v7 = [(_TVSearchTemplateController *)self _sanitizedText];
  [(IKAppKeyboard *)self->_ikKeyboard setText:v7];
}

- (BOOL)_isAtWordEnd
{
  if (_isAtWordEnd_onceToken != -1)
  {
    [_TVSearchTemplateController _isAtWordEnd];
  }

  v3 = [(_TVSearchTemplateController *)self _sanitizedText];
  v4 = [v3 length];
  if (v4)
  {
    v5 = [_isAtWordEnd_wordDelimiters characterIsMember:{objc_msgSend(v3, "characterAtIndex:", v4 - 1)}];
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
  v2 = [(UISearchController *)self->_searchController searchBar];
  v3 = [v2 text];

  v4 = [MEMORY[0x277CCACA8] stringWithCharacters:&v7 length:1];
  v5 = [v3 stringByReplacingOccurrencesOfString:v4 withString:&stru_287E12870];

  return v5;
}

- (BOOL)_searchBarContainsFocus
{
  if ([(_TVSearchTemplateController *)self isViewLoaded])
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    v4 = [v3 focusedView];

    v5 = [(_TVSearchTemplateController *)self view];
    if ([v4 isDescendantOfView:v5])
    {
      v6 = [(_TVStackCollectionViewController *)self->_resultsViewController view];
      v7 = [v4 isDescendantOfView:v6] ^ 1;
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

- (void)_setNonResultsView:(id)a3
{
  v6 = a3;
  [(UIView *)self->_nonResultsView removeFromSuperview];
  objc_storeStrong(&self->_nonResultsView, a3);
  if ([(_TVSearchTemplateController *)self isViewLoaded]&& self->_nonResultsView)
  {
    v5 = [(_TVSearchTemplateController *)self view];
    [v5 addSubview:self->_nonResultsView];
  }
}

- (void)_keyboardDidChangeFrame:(id)a3
{
  p_keyboardFrame = &self->_keyboardFrame;
  v5 = [a3 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
  [v6 CGRectValue];
  p_keyboardFrame->origin.x = v7;
  p_keyboardFrame->origin.y = v8;
  p_keyboardFrame->size.width = v9;
  p_keyboardFrame->size.height = v10;

  if ([(_TVSearchTemplateController *)self isViewLoaded]&& self->_nonResultsView)
  {
    v11 = [(_TVSearchTemplateController *)self view];
    [v11 setNeedsLayout];
  }
}

@end