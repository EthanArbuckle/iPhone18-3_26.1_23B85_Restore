@interface VKVisualSearchViewController
- (VKVisualSearchViewController)initWithImage:(CGImage *)image;
- (VKVisualSearchViewController)initWithVisualSearchResultItems:(id)items;
- (VKVisualSearchViewControllerDelegate)delegate;
- (id)_resultSectionsForRecognitionResult:(id)result;
- (id)_resultSectionsForRecognitionResultItems:(id)items;
- (void)_showVisualSearchViewController;
- (void)presentSearchViewControllerForSections:(id)sections;
- (void)setVisualSearchResultItems:(id)items;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation VKVisualSearchViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = VKVisualSearchViewController;
  [(VKVisualSearchViewController *)&v9 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(VKVisualSearchViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  loadingIndicator = self->_loadingIndicator;
  self->_loadingIndicator = v5;

  [(UIActivityIndicatorView *)self->_loadingIndicator setHidden:1];
  view2 = [(VKVisualSearchViewController *)self view];
  [view2 bounds];
  [(UIActivityIndicatorView *)self->_loadingIndicator setFrame:?];

  [(UIActivityIndicatorView *)self->_loadingIndicator setHidesWhenStopped:1];
  view3 = [(VKVisualSearchViewController *)self view];
  [view3 addSubview:self->_loadingIndicator];
}

- (VKVisualSearchViewController)initWithImage:(CGImage *)image
{
  v4.receiver = self;
  v4.super_class = VKVisualSearchViewController;
  result = [(VKVisualSearchViewController *)&v4 init];
  if (result)
  {
    result->_didShowResults = 0;
  }

  return result;
}

- (VKVisualSearchViewController)initWithVisualSearchResultItems:(id)items
{
  itemsCopy = items;
  v8.receiver = self;
  v8.super_class = VKVisualSearchViewController;
  v5 = [(VKVisualSearchViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VKVisualSearchViewController *)v5 setVisualSearchResultItems:itemsCopy];
    v6->_didShowResults = 0;
  }

  return v6;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = VKVisualSearchViewController;
  [(VKVisualSearchViewController *)&v6 viewWillAppear:appear];
  visualSearchResult = [(VKVisualSearchViewController *)self visualSearchResult];
  if (visualSearchResult)
  {
  }

  else
  {
    visualSearchResultItems = [(VKVisualSearchViewController *)self visualSearchResultItems];

    if (!visualSearchResultItems)
    {
      [(UIActivityIndicatorView *)self->_loadingIndicator setHidden:0];
      [(UIActivityIndicatorView *)self->_loadingIndicator startAnimating];
      return;
    }
  }

  [(VKVisualSearchViewController *)self _showVisualSearchViewController];
}

- (void)setVisualSearchResultItems:(id)items
{
  objc_storeStrong(&self->_visualSearchResultItems, items);
  itemsCopy = items;
  [(UIActivityIndicatorView *)self->_loadingIndicator setHidden:1];
  [(UIActivityIndicatorView *)self->_loadingIndicator stopAnimating];

  [(VKVisualSearchViewController *)self _showVisualSearchViewController];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = VKVisualSearchViewController;
  [(VKVisualSearchViewController *)&v4 viewWillLayoutSubviews];
  view = [(VKVisualSearchViewController *)self view];
  [view bounds];
  [(UIActivityIndicatorView *)self->_loadingIndicator setFrame:?];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = VKVisualSearchViewController;
  [(VKVisualSearchViewController *)&v5 viewWillDisappear:disappear];
  delegate = [(VKVisualSearchViewController *)self delegate];
  [delegate didDismissViewController];
}

- (void)_showVisualSearchViewController
{
  visualSearchResult = [(VKVisualSearchViewController *)self visualSearchResult];

  if (visualSearchResult)
  {
    visualSearchResult2 = [(VKVisualSearchViewController *)self visualSearchResult];
    v5 = [(VKVisualSearchViewController *)self _resultSectionsForRecognitionResult:visualSearchResult2];
LABEL_3:
    v10 = v5;

    goto LABEL_8;
  }

  visualSearchResultItems = [(VKVisualSearchViewController *)self visualSearchResultItems];
  if (visualSearchResultItems)
  {
    v7 = visualSearchResultItems;
    visualSearchResultItems2 = [(VKVisualSearchViewController *)self visualSearchResultItems];
    v9 = [visualSearchResultItems2 count];

    if (v9)
    {
      visualSearchResult2 = [(VKVisualSearchViewController *)self visualSearchResultItems];
      v5 = [(VKVisualSearchViewController *)self _resultSectionsForRecognitionResultItems:visualSearchResult2];
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_8:
  [(VKVisualSearchViewController *)self presentSearchViewControllerForSections:v10];
}

- (void)presentSearchViewControllerForSections:(id)sections
{
  sectionsCopy = sections;
  v5 = sectionsCopy;
  if (!self->_didShowResults)
  {
    if ([sectionsCopy count])
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v6 = getSearchUIResultsViewControllerClass_softClass;
      v23 = getSearchUIResultsViewControllerClass_softClass;
      if (!getSearchUIResultsViewControllerClass_softClass)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __getSearchUIResultsViewControllerClass_block_invoke;
        v19[3] = &unk_1E7BE3F48;
        v19[4] = &v20;
        __getSearchUIResultsViewControllerClass_block_invoke(v19);
        v6 = v21[3];
      }

      v7 = v6;
      _Block_object_dispose(&v20, 8);
      v8 = objc_alloc_init(v6);
      [v8 setSections:v5];
      [v8 setShouldUseInsetRoundedSections:1];
      [v8 setShouldUseStandardSectionInsets:1];
      [(VKVisualSearchViewController *)self addChildViewController:v8];
      [v8 didMoveToParentViewController:self];
      view = [v8 view];
      view2 = [(VKVisualSearchViewController *)self view];
      [view2 bounds];
      v12 = v11;
      view3 = [(VKVisualSearchViewController *)self view];
      [view3 bounds];
      [view setFrame:{0.0, 0.0, v12}];

      view4 = [(VKVisualSearchViewController *)self view];
      view5 = [v8 view];
      [view4 addSubview:view5];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{0.0, 0.0, 500.0, 500.0}];
      v16 = VKBundle();
      v17 = [v16 localizedStringForKey:@"VK_VISUAL_SEARCH_NO_RESULTS_MESSAGE" value:@"VK_VISUAL_SEARCH_NO_RESULTS_MESSAGE" table:@"Localizable"];
      [v8 setText:v17];

      view6 = [(VKVisualSearchViewController *)self view];
      [view6 center];
      [v8 setCenter:?];

      [v8 setTextAlignment:1];
      view4 = [(VKVisualSearchViewController *)self view];
      [view4 addSubview:v8];
    }

    self->_didShowResults = 1;
  }
}

- (id)_resultSectionsForRecognitionResult:(id)result
{
  resultItems = [result resultItems];
  v5 = [(VKVisualSearchViewController *)self _resultSectionsForRecognitionResultItems:resultItems];

  return v5;
}

- (id)_resultSectionsForRecognitionResultItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        searchItem = [*(*(&v14 + 1) + 8 * i) searchItem];
        searchSections = [searchItem searchSections];

        if (searchSections)
        {
          [v4 addObjectsFromArray:searchSections];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (VKVisualSearchViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end