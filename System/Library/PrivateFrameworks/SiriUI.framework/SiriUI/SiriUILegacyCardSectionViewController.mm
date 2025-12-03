@interface SiriUILegacyCardSectionViewController
+ (id)cardSectionClasses;
- (BOOL)siriSnippetViewControllerIsVisible:(id)visible;
- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)interaction;
- (CGSize)siriViewControllerVisibleContentArea:(id)area;
- (SiriUISnippetViewController)containingSnippetViewController;
- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)insets;
- (double)boundingWidthForSnippetViewController:(id)controller;
- (double)siriViewControllerExpectedWidth:(id)width;
- (double)statusBarHeightForSiriViewController:(id)controller;
- (id)_createReusableViewIfNeededWithClass:(Class)class;
- (id)_interaction;
- (id)localeForSiriViewController:(id)controller;
- (id)persistentDataStoreForSiriViewController:(id)controller;
- (id)siriEnabledAppListForSiriViewController:(id)controller;
- (id)siriViewController:(id)controller disambiguationItemForListItem:(id)item disambiguationKey:(id)key;
- (id)siriViewController:(id)controller domainObjectForIdentifier:(id)identifier;
- (id)siriViewController:(id)controller filteredDisambiguationListItems:(id)items;
- (id)siriViewController:(id)controller listItemToPickInAutodisambiguationForListItems:(id)items;
- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)location;
- (id)updatedUserUtteranceForSiriViewController:(id)controller;
- (unint64_t)siriDeviceLockStateForSnippetViewController:(id)controller;
- (void)_loadCardSectionView;
- (void)_updateContentSize;
- (void)cancelRequestForSiriSnippetViewController:(id)controller;
- (void)cancelSpeakingForSiriViewController:(id)controller;
- (void)removeSiriViewController:(id)controller;
- (void)setDelegate:(id)delegate;
- (void)siriSnippetViewController:(id)controller didDismissViewController:(id)viewController;
- (void)siriSnippetViewController:(id)controller didPresentViewController:(id)viewController;
- (void)siriSnippetViewController:(id)controller didRequestKeyboardWithVisibility:(BOOL)visibility;
- (void)siriSnippetViewController:(id)controller didShowGuideStartDate:(id)date endDate:(id)endDate;
- (void)siriSnippetViewController:(id)controller pushSirilandSnippets:(id)snippets;
- (void)siriSnippetViewController:(id)controller requestPasscodeUnlockWithCompletion:(id)completion;
- (void)siriSnippetViewController:(id)controller setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)siriSnippetViewController:(id)controller setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)siriSnippetViewController:(id)controller setStatusViewHidden:(BOOL)hidden;
- (void)siriSnippetViewController:(id)controller shouldPresentPicker:(id)picker completion:(id)completion;
- (void)siriSnippetViewController:(id)controller willDismissViewController:(id)viewController;
- (void)siriSnippetViewController:(id)controller willPresentViewController:(id)viewController;
- (void)siriSnippetViewControllerViewDidLoad:(id)load;
- (void)siriSnippetViewControllerWillBecomeFirstResponder:(id)responder;
- (void)siriViewController:(id)controller addSelectionResponse:(id)response;
- (void)siriViewController:(id)controller didHideVibrantView:(id)view;
- (void)siriViewController:(id)controller openURL:(id)l completion:(id)completion;
- (void)siriViewController:(id)controller performAceCommands:(id)commands;
- (void)siriViewController:(id)controller performAceCommands:(id)commands completion:(id)completion;
- (void)siriViewController:(id)controller setContentOffset:(double)offset;
- (void)siriViewController:(id)controller setDomainObject:(id)object forIdentifier:(id)identifier;
- (void)siriViewController:(id)controller speakText:(id)text completion:(id)completion;
- (void)siriViewController:(id)controller startCorrectedSpeechRequestWithText:(id)text correctionIdentifier:(id)identifier userSelectionResults:(id)results;
- (void)siriViewControllerDidEndEditing:(id)editing;
- (void)siriViewControllerHeightDidChange:(id)change;
- (void)siriViewControllerRequestTearDownEditingViewController:(id)controller;
- (void)siriViewControllerViewDidAppear:(id)appear isTopLevelViewController:(BOOL)controller;
- (void)siriViewControllerViewDidDisappear:(id)disappear isTopLevelViewController:(BOOL)controller;
- (void)siriViewControllerWillBeginEditing:(id)editing;
- (void)viewDidLayoutSubviews;
@end

@implementation SiriUILegacyCardSectionViewController

- (id)_interaction
{
  delegate = [(CRKCardSectionViewController *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate2 = [(CRKCardSectionViewController *)self delegate];
    card = [delegate2 card];
    interactions = [card interactions];
    anyObject = [interactions anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

+ (id)cardSectionClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (void)setDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = SiriUILegacyCardSectionViewController;
  [(CRKCardSectionViewController *)&v9 setDelegate:delegate];
  _interaction = [(SiriUILegacyCardSectionViewController *)self _interaction];
  v5 = +[SiriUISnippetManager sharedInstance];
  _snippet = [_interaction _snippet];
  v7 = [v5 snippetViewControllerForSnippet:_snippet];
  snippetViewController = self->_snippetViewController;
  self->_snippetViewController = v7;

  [(CRKCardSectionViewController *)self setLoading:[(SiriUISnippetViewController *)self->_snippetViewController isLoading]];
  if ([(SiriUILegacyCardSectionViewController *)self isViewLoaded])
  {
    [(SiriUILegacyCardSectionViewController *)self _loadCardSectionView];
  }
}

- (void)_loadCardSectionView
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  _snippet = [a2 _snippet];
  v5 = 136315650;
  v6 = "[SiriUILegacyCardSectionViewController _loadCardSectionView]";
  v7 = 2112;
  v8 = _snippet;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_26948D000, selfCopy, OS_LOG_TYPE_ERROR, "%s #cards No snippet view controller for snippet: %@, interaction: %@", &v5, 0x20u);
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SiriUILegacyCardSectionViewController;
  [(CRKCardSectionViewController *)&v3 viewDidLayoutSubviews];
  [(SiriUILegacyCardSectionViewController *)self _updateContentSize];
}

- (void)_updateContentSize
{
  [(SiriUILegacyCardSectionViewController *)self siriViewControllerExpectedWidth:self->_snippetViewController];
  v4 = v3;
  v5 = objc_opt_respondsToSelector();
  view = [(SiriUILegacyCardSectionViewController *)self view];
  snippetViewController = self->_snippetViewController;
  if (v5)
  {
    [(SiriUISnippetViewController *)snippetViewController desiredHeightForWidth:v4];
  }

  else
  {
    [(SiriUIBaseSnippetViewController *)snippetViewController desiredHeight];
  }

  [view setContentSize:{v4, v7}];
}

- (id)_createReusableViewIfNeededWithClass:(Class)class
{
  if (class)
  {
    v4 = [class alloc];
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    if (objc_opt_respondsToSelector())
    {
      [v5 setSnippetViewController:self->_snippetViewController];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)siriSnippetViewController:(id)controller pushSirilandSnippets:(id)snippets
{
  snippetsCopy = snippets;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriSnippetViewController:containingSnippetViewController2 pushSirilandSnippets:snippetsCopy];
}

- (void)siriSnippetViewControllerViewDidLoad:(id)load
{
  [(CRKCardSectionViewController *)self _finishLoadingViewIfNecessary];

  [(SiriUILegacyCardSectionViewController *)self _updateContentSize];
}

- (void)siriSnippetViewController:(id)controller setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriSnippetViewController:containingSnippetViewController2 setStatusBarHidden:hiddenCopy animated:animatedCopy];
}

- (void)siriSnippetViewController:(id)controller shouldPresentPicker:(id)picker completion:(id)completion
{
  completionCopy = completion;
  pickerCopy = picker;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriSnippetViewController:containingSnippetViewController2 shouldPresentPicker:pickerCopy completion:completionCopy];
}

- (void)siriSnippetViewController:(id)controller didShowGuideStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriSnippetViewController:containingSnippetViewController2 didShowGuideStartDate:dateCopy endDate:endDateCopy];
}

- (BOOL)siriSnippetViewControllerIsVisible:(id)visible
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [delegate siriSnippetViewControllerIsVisible:containingSnippetViewController2];

  return v7;
}

- (void)siriSnippetViewController:(id)controller requestPasscodeUnlockWithCompletion:(id)completion
{
  completionCopy = completion;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriSnippetViewController:containingSnippetViewController2 requestPasscodeUnlockWithCompletion:completionCopy];
}

- (void)siriSnippetViewControllerWillBecomeFirstResponder:(id)responder
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriSnippetViewControllerWillBecomeFirstResponder:containingSnippetViewController2];
}

- (unint64_t)siriDeviceLockStateForSnippetViewController:(id)controller
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [delegate siriDeviceLockStateForSnippetViewController:containingSnippetViewController2];

  return v7;
}

- (id)siriEnabledAppListForSiriViewController:(id)controller
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [delegate siriEnabledAppListForSiriViewController:containingSnippetViewController2];

  return v7;
}

- (void)siriSnippetViewController:(id)controller setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  v11 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController:controller];
  delegate = [v11 delegate];
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriSnippetViewController:containingSnippetViewController setStatusBarHidden:hiddenCopy animated:animatedCopy];
}

- (void)siriViewControllerViewDidAppear:(id)appear isTopLevelViewController:(BOOL)controller
{
  appearCopy = appear;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  [delegate siriViewControllerViewDidAppear:appearCopy isTopLevelViewController:0];
}

- (void)siriViewControllerViewDidDisappear:(id)disappear isTopLevelViewController:(BOOL)controller
{
  disappearCopy = disappear;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  [delegate siriViewControllerViewDidDisappear:disappearCopy isTopLevelViewController:0];
}

- (double)boundingWidthForSnippetViewController:(id)controller
{
  view = [(SiriUILegacyCardSectionViewController *)self view];
  [view bounds];
  v5 = v4;

  return v5;
}

- (void)siriViewController:(id)controller performAceCommands:(id)commands
{
  commandsCopy = commands;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriViewController:containingSnippetViewController2 performAceCommands:commandsCopy];
}

- (void)siriViewController:(id)controller performAceCommands:(id)commands completion:(id)completion
{
  completionCopy = completion;
  commandsCopy = commands;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriViewController:containingSnippetViewController2 performAceCommands:commandsCopy completion:completionCopy];
}

- (void)siriViewController:(id)controller openURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriViewController:containingSnippetViewController2 openURL:lCopy completion:completionCopy];
}

- (id)siriViewController:(id)controller domainObjectForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  identifierCopy = identifier;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v11 = [delegate siriViewController:containingSnippetViewController2 domainObjectForIdentifier:identifierCopy];

  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[SiriUILegacyCardSectionViewController siriViewController:domainObjectForIdentifier:]";
    v16 = 2112;
    v17 = controllerCopy;
    v18 = 2112;
    v19 = identifierCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_26948D000, v12, OS_LOG_TYPE_DEFAULT, "%s #cards Retrieving a domain object for a legacy snippet view controller:\n    Siri view controller: %@\n    Identifier: %@\n    Domain object: %@", &v14, 0x2Au);
  }

  return v11;
}

- (void)siriViewController:(id)controller setDomainObject:(id)object forIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  objectCopy = object;
  identifierCopy = identifier;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[SiriUILegacyCardSectionViewController siriViewController:setDomainObject:forIdentifier:]";
    v17 = 2112;
    v18 = controllerCopy;
    v19 = 2112;
    v20 = objectCopy;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_26948D000, v11, OS_LOG_TYPE_DEFAULT, "%s #cards Storing a domain object on behalf of a legacy snippet view controller:\n    Siri view controller: %@\n    Domain object: %@\n    Identifier: %@", &v15, 0x2Au);
  }

  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriViewController:containingSnippetViewController2 setDomainObject:objectCopy forIdentifier:identifierCopy];
}

- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)location
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [delegate siriViewControllerEffectiveBundleForCoreLocation:containingSnippetViewController2];

  return v7;
}

- (double)siriViewControllerExpectedWidth:(id)width
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriViewControllerExpectedWidth:containingSnippetViewController2];
  v8 = v7;

  return v8;
}

- (CGSize)siriViewControllerVisibleContentArea:(id)area
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriViewControllerVisibleContentArea:containingSnippetViewController2];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)siriViewControllerHeightDidChange:(id)change
{
  [(SiriUILegacyCardSectionViewController *)self _updateContentSize];
  delegate = [(CRKCardSectionViewController *)self delegate];
  [delegate cardSectionViewControllerBoundsDidChange:self];
}

- (void)siriViewController:(id)controller setContentOffset:(double)offset
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriViewController:containingSnippetViewController2 setContentOffset:offset];
}

- (id)siriViewController:(id)controller filteredDisambiguationListItems:(id)items
{
  itemsCopy = items;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [delegate siriViewController:containingSnippetViewController2 filteredDisambiguationListItems:itemsCopy];

  return v9;
}

- (id)siriViewController:(id)controller disambiguationItemForListItem:(id)item disambiguationKey:(id)key
{
  keyCopy = key;
  itemCopy = item;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v12 = [delegate siriViewController:containingSnippetViewController2 disambiguationItemForListItem:itemCopy disambiguationKey:keyCopy];

  return v12;
}

- (id)siriViewController:(id)controller listItemToPickInAutodisambiguationForListItems:(id)items
{
  itemsCopy = items;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [delegate siriViewController:containingSnippetViewController2 listItemToPickInAutodisambiguationForListItems:itemsCopy];

  return v9;
}

- (void)siriViewController:(id)controller addSelectionResponse:(id)response
{
  responseCopy = response;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriViewController:containingSnippetViewController2 addSelectionResponse:responseCopy];
}

- (void)cancelRequestForSiriSnippetViewController:(id)controller
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate cancelRequestForSiriSnippetViewController:containingSnippetViewController2];
}

- (id)persistentDataStoreForSiriViewController:(id)controller
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [delegate persistentDataStoreForSiriViewController:containingSnippetViewController2];

  return v7;
}

- (void)siriSnippetViewController:(id)controller setStatusViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriSnippetViewController:containingSnippetViewController2 setStatusViewHidden:hiddenCopy];

  containingSnippetViewController3 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate2 = [containingSnippetViewController3 delegate];
  LOBYTE(containingSnippetViewController2) = objc_opt_respondsToSelector();

  if (containingSnippetViewController2)
  {
    containingSnippetViewController4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
    delegate3 = [containingSnippetViewController4 delegate];
    containingSnippetViewController5 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
    [delegate3 siriSnippetViewController:containingSnippetViewController5 setTypeToSiriViewHidden:hiddenCopy];
  }
}

- (void)siriViewController:(id)controller didHideVibrantView:(id)view
{
  viewCopy = view;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [delegate siriViewController:containingSnippetViewController2 didHideVibrantView:viewCopy];
}

- (id)updatedUserUtteranceForSiriViewController:(id)controller
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
    delegate2 = [containingSnippetViewController2 delegate];
    containingSnippetViewController3 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
    v10 = [delegate2 updatedUserUtteranceForSiriViewController:containingSnippetViewController3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)statusBarHeightForSiriViewController:(id)controller
{
  controllerCopy = controller;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  delegate = [containingSnippetViewController delegate];
  [delegate statusBarHeightForSiriViewController:controllerCopy];
  v8 = v7;

  return v8;
}

- (void)siriViewController:(id)controller speakText:(id)text completion:(id)completion
{
  completionCopy = completion;
  textCopy = text;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriViewController:containingSnippetViewController2 speakText:textCopy completion:completionCopy];
}

- (void)siriSnippetViewController:(id)controller willPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriSnippetViewController:containingSnippetViewController2 willPresentViewController:viewControllerCopy];
}

- (void)siriSnippetViewController:(id)controller didPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriSnippetViewController:containingSnippetViewController2 didPresentViewController:viewControllerCopy];
}

- (void)siriSnippetViewController:(id)controller willDismissViewController:(id)viewController
{
  viewControllerCopy = viewController;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriSnippetViewController:containingSnippetViewController2 willDismissViewController:viewControllerCopy];
}

- (void)siriSnippetViewController:(id)controller didDismissViewController:(id)viewController
{
  viewControllerCopy = viewController;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriSnippetViewController:containingSnippetViewController2 didDismissViewController:viewControllerCopy];
}

- (void)siriSnippetViewController:(id)controller didRequestKeyboardWithVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriSnippetViewController:containingSnippetViewController2 didRequestKeyboardWithVisibility:visibilityCopy];
}

- (void)cancelSpeakingForSiriViewController:(id)controller
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate cancelSpeakingForSiriViewController:containingSnippetViewController2];
}

- (void)removeSiriViewController:(id)controller
{
  controllerCopy = controller;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  [_privateDelegate removeSiriViewController:controllerCopy];
}

- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)interaction
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [_privateDelegate siriViewControllerShouldPreventUserInteraction:containingSnippetViewController2];

  return v7;
}

- (void)siriViewControllerWillBeginEditing:(id)editing
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriViewControllerWillBeginEditing:containingSnippetViewController2];
}

- (void)siriViewControllerDidEndEditing:(id)editing
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriViewControllerDidEndEditing:containingSnippetViewController2];
}

- (void)siriViewController:(id)controller startCorrectedSpeechRequestWithText:(id)text correctionIdentifier:(id)identifier userSelectionResults:(id)results
{
  resultsCopy = results;
  identifierCopy = identifier;
  textCopy = text;
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriViewController:containingSnippetViewController2 startCorrectedSpeechRequestWithText:textCopy correctionIdentifier:identifierCopy userSelectionResults:resultsCopy];
}

- (void)siriViewControllerRequestTearDownEditingViewController:(id)controller
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [_privateDelegate siriViewControllerRequestTearDownEditingViewController:containingSnippetViewController2];
}

- (id)localeForSiriViewController:(id)controller
{
  containingSnippetViewController = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  _privateDelegate = [containingSnippetViewController _privateDelegate];
  containingSnippetViewController2 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [_privateDelegate localeForSiriViewController:containingSnippetViewController2];

  return v7;
}

- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)insets
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (SiriUISnippetViewController)containingSnippetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containingSnippetViewController);

  return WeakRetained;
}

@end