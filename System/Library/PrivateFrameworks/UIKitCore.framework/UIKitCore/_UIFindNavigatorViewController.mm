@interface _UIFindNavigatorViewController
- (BOOL)_dismissesKeyboardOnReturn;
- (BOOL)hostedInKeyboard;
- (UIResponder)parentResponder;
- (_UIFindNavigatorView)findNavigatorView;
- (_UIFindNavigatorViewControllerDelegate)findNavigatorViewControllerDelegate;
- (double)preferredHeightForTraitCollection:(id)collection;
- (double)preferredWidthForTraitCollection:(id)collection;
- (id)keyCommands;
- (id)nextResponder;
- (id)parentFocusEnvironment;
- (id)undoManager;
- (void)_didEnterSearchQuery:(id)query;
- (void)_finishSearchingOnResignIfNecessary;
- (void)_handleDone:(id)done;
- (void)_handleInsertNewline:(id)newline;
- (void)_handleSearchReturn:(id)return;
- (void)_performAutoSearch;
- (void)_performSearchWithQuery:(id)query options:(id)options;
- (void)_recomputeConfiguredSearchOptions;
- (void)_replaceFieldDidChange:(id)change;
- (void)_searchTextFieldChanged:(id)changed;
- (void)_textViewDidChangeNotification:(id)notification;
- (void)_updateReplaceButtonEnabled;
- (void)_updateResultsCount;
- (void)_updateReturnKeyType;
- (void)buildMenuWithBuilder:(id)builder;
- (void)find:(id)find;
- (void)findAndReplace:(id)replace;
- (void)findNavigator:(id)navigator didChangeMode:(int64_t)mode;
- (void)findNavigator:(id)navigator didInvokeNextResultInDirection:(int64_t)direction;
- (void)findNavigator:(id)navigator didInvokeReplaceReplacingAll:(BOOL)all;
- (void)findNavigatorDidInvalidateSearchSession:(id)session;
- (void)loadView;
- (void)resignFirstResponderAndFinishSearching;
- (void)setAssistantBarStyle:(int64_t)style;
- (void)setFindSession:(id)session;
- (void)setTintTechnique:(unint64_t)technique;
- (void)updateViewForActiveFindSession;
- (void)viewDidLoad;
- (void)viewWillMoveToWindow:(id)window;
@end

@implementation _UIFindNavigatorViewController

- (_UIFindNavigatorView)findNavigatorView
{
  [(UIViewController *)self loadViewIfNeeded];
  findNavigatorView = self->_findNavigatorView;

  return findNavigatorView;
}

- (void)setFindSession:(id)session
{
  sessionCopy = session;
  v12 = sessionCopy;
  if (self->_findSession != sessionCopy)
  {
    objc_storeStrong(&self->_findSession, session);
    [(_UIFindNavigatorViewController *)self updateViewForActiveFindSession];
    sessionCopy = v12;
  }

  searchText = [(UIFindSession *)sessionCopy searchText];
  v7 = [searchText length];

  if (v7)
  {
    lastSearchOptions = self->_lastSearchOptions;
    if (lastSearchOptions)
    {
      v9 = lastSearchOptions;
    }

    else
    {
      v9 = +[UITextSearchOptions defaultSearchOptions];
    }

    v10 = v9;
    searchText2 = [(UIFindSession *)v12 searchText];
    [(_UIFindNavigatorViewController *)self _performSearchWithQuery:searchText2 options:v10];
  }
}

- (void)loadView
{
  v3 = [_UIFindNavigatorView alloc];
  v4 = [(_UIFindNavigatorView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  findNavigatorView = self->_findNavigatorView;
  self->_findNavigatorView = v4;

  [(_UIFindNavigatorView *)self->_findNavigatorView setFindNavigatorDelegate:self];
  v6 = self->_findNavigatorView;

  [(UIInputViewController *)self setView:v6];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = _UIFindNavigatorViewController;
  [(UIInputViewController *)&v12 viewDidLoad];
  [(_UIFindNavigatorViewController *)self setTintTechnique:1];
  doneButton = [(_UIFindNavigatorView *)self->_findNavigatorView doneButton];
  [doneButton addTarget:self action:sel__handleDone_ forControlEvents:0x2000];

  searchTextField = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
  [searchTextField addTarget:self action:sel__handleSearchReturn_ forControlEvents:0x2000];

  searchTextField2 = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
  [searchTextField2 addTarget:self action:sel__searchTextFieldChanged_ forControlEvents:0x20000];

  replaceTextField = [(_UIFindNavigatorView *)self->_findNavigatorView replaceTextField];
  [replaceTextField addTarget:self action:sel__didEnterReplacementString_ forControlEvents:0x2000];

  replaceTextField2 = [(_UIFindNavigatorView *)self->_findNavigatorView replaceTextField];
  [replaceTextField2 addTarget:self action:sel__replaceFieldDidChange_ forControlEvents:0x20000];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__textViewDidChangeNotification_ name:@"UITextViewTextDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__windowDidChangeToFirstResponder_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45___UIFindNavigatorViewController_viewDidLoad__block_invoke;
  v11[3] = &unk_1E71091B8;
  v11[4] = self;
  settingsButton = [(_UIFindNavigatorView *)self->_findNavigatorView settingsButton];
  [settingsButton _setMenuProvider:v11];
}

- (BOOL)hostedInKeyboard
{
  parentInteraction = [(UIFindSession *)self->_findSession parentInteraction];
  v3 = [parentInteraction _currentHostingStrategy] == 1;

  return v3;
}

- (void)setAssistantBarStyle:(int64_t)style
{
  self->_assistantBarStyle = style;
  [(_UIFindNavigatorView *)self->_findNavigatorView setAssistantBarStyle:?];
  v7 = 1;
  if (style == 1)
  {
    _inheritedRenderConfig = [(UIView *)self->_findNavigatorView _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (!colorAdaptiveBackground)
    {
      v7 = 0;
    }
  }

  [(_UIFindNavigatorViewController *)self setTintTechnique:v7];
}

- (void)setTintTechnique:(unint64_t)technique
{
  self->_tintTechnique = technique;
  searchableResponderAsView = [(UIFindSession *)self->_findSession searchableResponderAsView];
  if (technique || !searchableResponderAsView)
  {
    if (technique != 1)
    {
      goto LABEL_7;
    }

    v8 = searchableResponderAsView;
    tintColor = +[UIColor labelColor];
  }

  else
  {
    v8 = searchableResponderAsView;
    tintColor = [searchableResponderAsView tintColor];
  }

  v7 = tintColor;
  [(UIView *)self->_findNavigatorView setTintColor:tintColor];

  searchableResponderAsView = v8;
LABEL_7:
}

- (id)nextResponder
{
  if ([(_UIFindNavigatorViewController *)self hostedInKeyboard]&& (v3 = objc_loadWeakRetained(&self->_parentResponder), v3, v3))
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentResponder);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIFindNavigatorViewController;
    WeakRetained = [(UIViewController *)&v6 nextResponder];
  }

  return WeakRetained;
}

- (id)parentFocusEnvironment
{
  if ([(_UIFindNavigatorViewController *)self hostedInKeyboard])
  {
    divergentResponder = [(UIFindSession *)self->_findSession divergentResponder];
    if ([divergentResponder __isKindOfUIView])
    {
      goto LABEL_5;
    }
  }

  v5.receiver = self;
  v5.super_class = _UIFindNavigatorViewController;
  divergentResponder = [(UIViewController *)&v5 parentFocusEnvironment];
LABEL_5:

  return divergentResponder;
}

- (id)undoManager
{
  searchableResponder = [(UIFindSession *)self->_findSession searchableResponder];
  undoManager = [searchableResponder undoManager];

  return undoManager;
}

- (id)keyCommands
{
  v10[3] = *MEMORY[0x1E69E9840];
  extraKeyCommands = self->_extraKeyCommands;
  if (!extraKeyCommands)
  {
    v4 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0x20000 action:sel__handleHighlightPreviousResult_];
    [v4 setWantsPriorityOverSystemBehavior:1];
    v5 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0x80000 action:sel__handleInsertNewline_];
    [v5 setWantsPriorityOverSystemBehavior:1];
    v6 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputEscape" modifierFlags:0 action:sel__handleDone_];
    v10[0] = v4;
    v10[1] = v5;
    v10[2] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
    v8 = self->_extraKeyCommands;
    self->_extraKeyCommands = v7;

    extraKeyCommands = self->_extraKeyCommands;
  }

  return extraKeyCommands;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = _UIFindNavigatorViewController;
  [(UIResponder *)&v7 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  v6 = +[UIMenuSystem contextSystem];

  if (system == v6)
  {
    [builderCopy removeMenuForIdentifier:@"com.apple.menu.lookup"];
    [builderCopy removeMenuForIdentifier:@"com.apple.menu.learn"];
    [builderCopy removeMenuForIdentifier:@"com.apple.menu.share"];
  }
}

- (void)viewWillMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = _UIFindNavigatorViewController;
  [(UIViewController *)&v6 viewWillMoveToWindow:?];
  if (window)
  {
    if (+[UIKeyboard usesInputSystemUI])
    {
      findNavigatorView = [(_UIFindNavigatorViewController *)self findNavigatorView];
      [findNavigatorView becomeFirstResponder];
    }
  }
}

- (void)resignFirstResponderAndFinishSearching
{
  firstResponder = [(UIResponder *)self->_findNavigatorView firstResponder];
  if ([(UIResponder *)self->_findNavigatorView _containsResponder:?])
  {
    [firstResponder resignFirstResponder];
  }
}

- (void)_finishSearchingOnResignIfNecessary
{
  [MEMORY[0x1E696AF00] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  firstResponder = [(UIResponder *)self firstResponder];
  _ui_findNavigatorResponder = [(UIResponder *)self _ui_findNavigatorResponder];
  if (_ui_findNavigatorResponder && firstResponder)
  {
    _ui_findNavigatorResponder2 = [(UIResponder *)self _ui_findNavigatorResponder];
    if ([_ui_findNavigatorResponder2 _containsResponder:firstResponder])
    {
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_findNavigatorViewControllerDelegate);
      v6 = [WeakRetained findNavigatorShouldDismissOnResponderChange:self];

      if (!v6)
      {
        goto LABEL_8;
      }

      _ui_findNavigatorResponder = objc_loadWeakRetained(&self->_findNavigatorViewControllerDelegate);
      [_ui_findNavigatorResponder findNavigatorViewControllerDidRequestDismissal:self];
    }
  }

LABEL_8:
}

- (void)_textViewDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  findNavigatorView = self->_findNavigatorView;
  firstResponder = [(UIResponder *)self firstResponder];
  LODWORD(findNavigatorView) = [(UIResponder *)findNavigatorView _containsResponder:firstResponder];

  if (findNavigatorView)
  {
    if (!self->_performingReplacement)
    {
      object = [notificationCopy object];
      searchableResponder = [(UIFindSession *)self->_findSession searchableResponder];

      if (object == searchableResponder)
      {
        [(UIFindSession *)self->_findSession invalidateFoundResults];
        [(_UIFindNavigatorViewController *)self _performAutoSearch];
      }
    }
  }
}

- (void)find:(id)find
{
  searchTextField = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
  [searchTextField becomeFirstResponder];
}

- (void)findAndReplace:(id)replace
{
  if ([(UIFindSession *)self->_findSession supportsReplacement])
  {
    [(_UIFindNavigatorView *)self->_findNavigatorView setMode:1];
    [(UIView *)self->_findNavigatorView layoutIfNeeded];
    replaceTextField = [(_UIFindNavigatorView *)self->_findNavigatorView replaceTextField];
    [replaceTextField becomeFirstResponder];
  }
}

- (BOOL)_dismissesKeyboardOnReturn
{
  traitCollection = [(UIViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 0;

  return v3;
}

- (void)_updateReturnKeyType
{
  if ([(_UIFindNavigatorViewController *)self _dismissesKeyboardOnReturn])
  {
    v3 = 6;
  }

  else if ([(UIFindSession *)self->_findSession resultCount]<= 0)
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  searchTextField = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
  [searchTextField setReturnKeyType:v3];

  searchTextField2 = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
  [searchTextField2 reloadInputViews];
}

- (void)_updateResultsCount
{
  searchResultDisplayStyle = [(UIFindSession *)self->_findSession searchResultDisplayStyle];
  mode = [(_UIFindNavigatorView *)self->_findNavigatorView mode];
  if (searchResultDisplayStyle != UIFindSessionSearchResultDisplayStyleNone && (v5 = mode, [(NSString *)self->_lastSearchQuery length]) && (lastSearchQuery = self->_lastSearchQuery, [(UIFindSession *)self->_findSession searchText], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(lastSearchQuery) = [(NSString *)lastSearchQuery isEqualToString:v7], v7, lastSearchQuery))
  {
    resultCount = [(UIFindSession *)self->_findSession resultCount];
    highlightedResultIndex = [(UIFindSession *)self->_findSession highlightedResultIndex];
    if (searchResultDisplayStyle == UIFindSessionSearchResultDisplayStyleTotal || highlightedResultIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = MEMORY[0x1E696ADA0];
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:resultCount];
      v21 = [v16 localizedStringFromNumber:v17 numberStyle:1];
    }

    else
    {
      v20 = highlightedResultIndex + 1;
      if (v5 == 1)
      {
        _UILocalizedFormat(@"MATCH_OF_MATCHES_ABBREVIATED", @"Indicates which match is currently highlighted, in an abbreviated form.", @"%ld/%ld", v10, v11, v12, v13, v14, v20);
      }

      else
      {
        _UILocalizedFormat(@"MATCH_OF_MATCHES", @"Indicates which match is currently highlighted.", @"%ld of %ld", v10, v11, v12, v13, v14, v20);
      }
      v21 = ;
    }
  }

  else
  {
    v21 = 0;
  }

  resultCountLabel = [(_UIFindNavigatorView *)self->_findNavigatorView resultCountLabel];
  [resultCountLabel setText:v21];

  resultCountLabel2 = [(_UIFindNavigatorView *)self->_findNavigatorView resultCountLabel];
  [resultCountLabel2 sizeToFit];
}

- (void)_updateReplaceButtonEnabled
{
  v3 = [(UIFindSession *)self->_findSession resultCount]> 0;
  allowsReplacementForCurrentlyHighlightedResult = [(UIFindSession *)self->_findSession allowsReplacementForCurrentlyHighlightedResult];
  searchText = [(UIFindSession *)self->_findSession searchText];
  searchTextField = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
  text = [searchTextField text];
  v8 = [searchText isEqualToString:text];

  findNavigatorView = self->_findNavigatorView;

  [(_UIFindNavigatorView *)findNavigatorView setReplaceButtonEnabled:(v3 && allowsReplacementForCurrentlyHighlightedResult) & v8];
}

- (void)_recomputeConfiguredSearchOptions
{
  configuredSearchOptions = [(UIFindSession *)self->_findSession configuredSearchOptions];
  findNavigatorView = [(_UIFindNavigatorViewController *)self findNavigatorView];
  matchCase = [findNavigatorView matchCase];

  v5 = [configuredSearchOptions stringCompareOptions] & 0xFFFFFFFFFFFFFF7ELL;
  v6 = 129;
  if (matchCase)
  {
    v6 = 0;
  }

  [configuredSearchOptions setStringCompareOptions:v5 | v6];
  findNavigatorView2 = [(_UIFindNavigatorViewController *)self findNavigatorView];
  wholeWords = [findNavigatorView2 wholeWords];

  if (wholeWords)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [configuredSearchOptions setWordMatchMethod:v9];
  [(UIFindSession *)self->_findSession setConfiguredSearchOptions:configuredSearchOptions];
}

- (void)_handleDone:(id)done
{
  WeakRetained = objc_loadWeakRetained(&self->_findNavigatorViewControllerDelegate);
  [WeakRetained findNavigatorViewControllerDidRequestDismissal:self];
}

- (void)_handleSearchReturn:(id)return
{
  returnCopy = return;
  if ([(_UIFindNavigatorViewController *)self _dismissesKeyboardOnReturn])
  {
    _ui_findNavigatorResponder = [(UIResponder *)self _ui_findNavigatorResponder];
    [_ui_findNavigatorResponder becomeFirstResponder];
  }

  else
  {
    [(_UIFindNavigatorViewController *)self _didEnterSearchQuery:returnCopy];
  }
}

- (void)_handleInsertNewline:(id)newline
{
  findNavigatorView = [(_UIFindNavigatorViewController *)self findNavigatorView];
  searchTextField = [findNavigatorView searchTextField];
  isFirstResponder = [searchTextField isFirstResponder];

  findNavigatorView2 = [(_UIFindNavigatorViewController *)self findNavigatorView];
  findNavigatorView3 = findNavigatorView2;
  if (isFirstResponder)
  {
    searchTextField2 = [findNavigatorView2 searchTextField];
LABEL_5:
    v12 = searchTextField2;

    goto LABEL_7;
  }

  replaceTextField = [findNavigatorView2 replaceTextField];
  isFirstResponder2 = [replaceTextField isFirstResponder];

  if (isFirstResponder2)
  {
    findNavigatorView3 = [(_UIFindNavigatorViewController *)self findNavigatorView];
    searchTextField2 = [findNavigatorView3 replaceTextField];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  [v12 insertNewline];
}

- (void)_didEnterSearchQuery:(id)query
{
  text = [query text];
  _configuredSearchOptions = [(_UIFindNavigatorViewController *)self _configuredSearchOptions];
  if ([text isEqualToString:self->_lastSearchQuery] && objc_msgSend(_configuredSearchOptions, "isEqual:", self->_lastSearchOptions))
  {
    [(UIFindSession *)self->_findSession highlightNextResultInDirection:0];
  }

  else
  {
    [(_UIFindNavigatorViewController *)self _performSearchWithQuery:text options:_configuredSearchOptions];
  }
}

- (void)_performSearchWithQuery:(id)query options:(id)options
{
  queryCopy = query;
  optionsCopy = options;
  objc_storeStrong(&self->_lastSearchQuery, query);
  objc_storeStrong(&self->_lastSearchOptions, options);
  [UIFindInteraction _setGlobalFindBuffer:queryCopy];
  v8 = [queryCopy length];
  findSession = self->_findSession;
  if (v8)
  {
    [(UIFindSession *)findSession performSearchWithQuery:queryCopy options:optionsCopy];
    [(UIFindSession *)self->_findSession highlightNextResultInDirection:0];
  }

  else
  {
    [(UIFindSession *)findSession invalidateFoundResults];
  }
}

- (void)_performAutoSearch
{
  [MEMORY[0x1E696AF00] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  searchTextField = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
  markedTextRange = [searchTextField markedTextRange];

  if (!markedTextRange || (v4 = [markedTextRange isEmpty], v5 = markedTextRange, v4))
  {
    searchTextField2 = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
    text = [searchTextField2 text];

    _configuredSearchOptions = [(_UIFindNavigatorViewController *)self _configuredSearchOptions];
    [(_UIFindNavigatorViewController *)self _performSearchWithQuery:text options:_configuredSearchOptions];

    v5 = markedTextRange;
  }
}

- (void)_searchTextFieldChanged:(id)changed
{
  text = [changed text];
  v5 = [text length];

  if (v5)
  {
    v6 = 0.35;
  }

  else
  {
    v6 = 0.0;
  }

  searchTextField = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
  text2 = [searchTextField text];
  [(UIFindSession *)self->_findSession setSearchText:text2];

  [(_UIFindNavigatorViewController *)self performSelector:sel__performAutoSearch withObject:0 afterDelay:v6];
}

- (void)_replaceFieldDidChange:(id)change
{
  replaceTextField = [(_UIFindNavigatorView *)self->_findNavigatorView replaceTextField];
  text = [replaceTextField text];
  [(UIFindSession *)self->_findSession setReplacementText:text];

  [(_UIFindNavigatorViewController *)self _updateReplaceButtonEnabled];
}

- (void)updateViewForActiveFindSession
{
  [(_UIFindNavigatorViewController *)self _updateResultsCount];
  [(_UIFindNavigatorViewController *)self _updateReplaceButtonEnabled];
  searchText = [(UIFindSession *)self->_findSession searchText];
  findNavigatorView = [(_UIFindNavigatorViewController *)self findNavigatorView];
  searchTextField = [findNavigatorView searchTextField];
  [searchTextField setText:searchText];

  replacementText = [(UIFindSession *)self->_findSession replacementText];
  findNavigatorView2 = [(_UIFindNavigatorViewController *)self findNavigatorView];
  replaceTextField = [findNavigatorView2 replaceTextField];
  [replaceTextField setText:replacementText];
}

- (void)findNavigator:(id)navigator didChangeMode:(int64_t)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_findNavigatorViewControllerDelegate);
  [WeakRetained findNavigatorViewControllerViewDidChangeIntrinsicContentSize:self];

  [(_UIFindNavigatorViewController *)self _updateResultsCount];
}

- (void)findNavigator:(id)navigator didInvokeReplaceReplacingAll:(BOOL)all
{
  allCopy = all;
  if ([(UIFindSession *)self->_findSession supportsReplacement])
  {
    searchTextField = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
    text = [searchTextField text];
    v8 = [text length];

    if (v8)
    {
      self->_performingReplacement = 1;
      findSession = self->_findSession;
      if (allCopy)
      {
        searchTextField2 = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
        text2 = [searchTextField2 text];
        replaceTextField = [(_UIFindNavigatorView *)self->_findNavigatorView replaceTextField];
        text3 = [replaceTextField text];
        _configuredSearchOptions = [(_UIFindNavigatorViewController *)self _configuredSearchOptions];
        [(UIFindSession *)findSession replaceAllInstancesOfSearchQuery:text2 withReplacementString:text3 options:_configuredSearchOptions];
      }

      else
      {
        if ([(UIFindSession *)self->_findSession allowsReplacementForCurrentlyHighlightedResult])
        {
          v15 = self->_findSession;
          searchTextField3 = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
          text4 = [searchTextField3 text];
          replaceTextField2 = [(_UIFindNavigatorView *)self->_findNavigatorView replaceTextField];
          text5 = [replaceTextField2 text];
          _configuredSearchOptions2 = [(_UIFindNavigatorViewController *)self _configuredSearchOptions];
          [(UIFindSession *)v15 performSingleReplacementWithSearchQuery:text4 replacementString:text5 options:_configuredSearchOptions2];
        }

        [(UIFindSession *)self->_findSession highlightNextResultInDirection:0];
      }

      self->_performingReplacement = 0;
    }
  }
}

- (void)findNavigator:(id)navigator didInvokeNextResultInDirection:(int64_t)direction
{
  if (![(UIFindSession *)self->_findSession resultCount])
  {
    findSession = self->_findSession;
    searchTextField = [(_UIFindNavigatorView *)self->_findNavigatorView searchTextField];
    text = [searchTextField text];
    _configuredSearchOptions = [(_UIFindNavigatorViewController *)self _configuredSearchOptions];
    [(UIFindSession *)findSession performSearchWithQuery:text options:_configuredSearchOptions];
  }

  v10 = self->_findSession;

  [(UIFindSession *)v10 highlightNextResultInDirection:direction];
}

- (void)findNavigatorDidInvalidateSearchSession:(id)session
{
  sessionCopy = session;
  [(_UIFindNavigatorViewController *)self _recomputeConfiguredSearchOptions];
  [(UIFindSession *)self->_findSession invalidateFoundResults];
  searchTextField = [sessionCopy searchTextField];

  text = [searchTextField text];
  _configuredSearchOptions = [(_UIFindNavigatorViewController *)self _configuredSearchOptions];
  [(_UIFindNavigatorViewController *)self _performSearchWithQuery:text options:_configuredSearchOptions];
}

- (double)preferredHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:collectionCopy];
  v6 = v5;
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  horizontalSizeClass = [collectionCopy horizontalSizeClass];

  if ((!userInterfaceIdiom || horizontalSizeClass == 1) && [(_UIFindNavigatorView *)self->_findNavigatorView mode]== 1)
  {
    return v6 + v6;
  }

  return v6;
}

- (double)preferredWidthForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [collectionCopy userInterfaceIdiom] != 1 && objc_msgSend(collectionCopy, "userInterfaceIdiom") != 6;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  v7 = -1.0;
  if (!v5 && horizontalSizeClass != 1)
  {
    if ([(_UIFindNavigatorView *)self->_findNavigatorView mode]== 1)
    {
      v7 = 700.0;
    }

    else
    {
      v7 = -1.0;
    }
  }

  return v7;
}

- (_UIFindNavigatorViewControllerDelegate)findNavigatorViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_findNavigatorViewControllerDelegate);

  return WeakRetained;
}

- (UIResponder)parentResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_parentResponder);

  return WeakRetained;
}

@end