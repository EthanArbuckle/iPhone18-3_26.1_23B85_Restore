@interface SiriUILegacyCardSectionViewController
+ (id)cardSectionClasses;
- (BOOL)siriSnippetViewControllerIsVisible:(id)a3;
- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)a3;
- (CGSize)siriViewControllerVisibleContentArea:(id)a3;
- (SiriUISnippetViewController)containingSnippetViewController;
- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)a3;
- (double)boundingWidthForSnippetViewController:(id)a3;
- (double)siriViewControllerExpectedWidth:(id)a3;
- (double)statusBarHeightForSiriViewController:(id)a3;
- (id)_createReusableViewIfNeededWithClass:(Class)a3;
- (id)_interaction;
- (id)localeForSiriViewController:(id)a3;
- (id)persistentDataStoreForSiriViewController:(id)a3;
- (id)siriEnabledAppListForSiriViewController:(id)a3;
- (id)siriViewController:(id)a3 disambiguationItemForListItem:(id)a4 disambiguationKey:(id)a5;
- (id)siriViewController:(id)a3 domainObjectForIdentifier:(id)a4;
- (id)siriViewController:(id)a3 filteredDisambiguationListItems:(id)a4;
- (id)siriViewController:(id)a3 listItemToPickInAutodisambiguationForListItems:(id)a4;
- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)a3;
- (id)updatedUserUtteranceForSiriViewController:(id)a3;
- (unint64_t)siriDeviceLockStateForSnippetViewController:(id)a3;
- (void)_loadCardSectionView;
- (void)_updateContentSize;
- (void)cancelRequestForSiriSnippetViewController:(id)a3;
- (void)cancelSpeakingForSiriViewController:(id)a3;
- (void)removeSiriViewController:(id)a3;
- (void)setDelegate:(id)a3;
- (void)siriSnippetViewController:(id)a3 didDismissViewController:(id)a4;
- (void)siriSnippetViewController:(id)a3 didPresentViewController:(id)a4;
- (void)siriSnippetViewController:(id)a3 didRequestKeyboardWithVisibility:(BOOL)a4;
- (void)siriSnippetViewController:(id)a3 didShowGuideStartDate:(id)a4 endDate:(id)a5;
- (void)siriSnippetViewController:(id)a3 pushSirilandSnippets:(id)a4;
- (void)siriSnippetViewController:(id)a3 requestPasscodeUnlockWithCompletion:(id)a4;
- (void)siriSnippetViewController:(id)a3 setStatusBarHidden:(BOOL)a4 animated:(BOOL)a5;
- (void)siriSnippetViewController:(id)a3 setStatusBarHidden:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)siriSnippetViewController:(id)a3 setStatusViewHidden:(BOOL)a4;
- (void)siriSnippetViewController:(id)a3 shouldPresentPicker:(id)a4 completion:(id)a5;
- (void)siriSnippetViewController:(id)a3 willDismissViewController:(id)a4;
- (void)siriSnippetViewController:(id)a3 willPresentViewController:(id)a4;
- (void)siriSnippetViewControllerViewDidLoad:(id)a3;
- (void)siriSnippetViewControllerWillBecomeFirstResponder:(id)a3;
- (void)siriViewController:(id)a3 addSelectionResponse:(id)a4;
- (void)siriViewController:(id)a3 didHideVibrantView:(id)a4;
- (void)siriViewController:(id)a3 openURL:(id)a4 completion:(id)a5;
- (void)siriViewController:(id)a3 performAceCommands:(id)a4;
- (void)siriViewController:(id)a3 performAceCommands:(id)a4 completion:(id)a5;
- (void)siriViewController:(id)a3 setContentOffset:(double)a4;
- (void)siriViewController:(id)a3 setDomainObject:(id)a4 forIdentifier:(id)a5;
- (void)siriViewController:(id)a3 speakText:(id)a4 completion:(id)a5;
- (void)siriViewController:(id)a3 startCorrectedSpeechRequestWithText:(id)a4 correctionIdentifier:(id)a5 userSelectionResults:(id)a6;
- (void)siriViewControllerDidEndEditing:(id)a3;
- (void)siriViewControllerHeightDidChange:(id)a3;
- (void)siriViewControllerRequestTearDownEditingViewController:(id)a3;
- (void)siriViewControllerViewDidAppear:(id)a3 isTopLevelViewController:(BOOL)a4;
- (void)siriViewControllerViewDidDisappear:(id)a3 isTopLevelViewController:(BOOL)a4;
- (void)siriViewControllerWillBeginEditing:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation SiriUILegacyCardSectionViewController

- (id)_interaction
{
  v3 = [(CRKCardSectionViewController *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(CRKCardSectionViewController *)self delegate];
    v5 = [v4 card];
    v6 = [v5 interactions];
    v7 = [v6 anyObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)cardSectionClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (void)setDelegate:(id)a3
{
  v9.receiver = self;
  v9.super_class = SiriUILegacyCardSectionViewController;
  [(CRKCardSectionViewController *)&v9 setDelegate:a3];
  v4 = [(SiriUILegacyCardSectionViewController *)self _interaction];
  v5 = +[SiriUISnippetManager sharedInstance];
  v6 = [v4 _snippet];
  v7 = [v5 snippetViewControllerForSnippet:v6];
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
  v3 = a1;
  v4 = [a2 _snippet];
  v5 = 136315650;
  v6 = "[SiriUILegacyCardSectionViewController _loadCardSectionView]";
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_26948D000, v3, OS_LOG_TYPE_ERROR, "%s #cards No snippet view controller for snippet: %@, interaction: %@", &v5, 0x20u);
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
  v8 = [(SiriUILegacyCardSectionViewController *)self view];
  snippetViewController = self->_snippetViewController;
  if (v5)
  {
    [(SiriUISnippetViewController *)snippetViewController desiredHeightForWidth:v4];
  }

  else
  {
    [(SiriUIBaseSnippetViewController *)snippetViewController desiredHeight];
  }

  [v8 setContentSize:{v4, v7}];
}

- (id)_createReusableViewIfNeededWithClass:(Class)a3
{
  if (a3)
  {
    v4 = [a3 alloc];
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

- (void)siriSnippetViewController:(id)a3 pushSirilandSnippets:(id)a4
{
  v5 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 delegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriSnippetViewController:v7 pushSirilandSnippets:v5];
}

- (void)siriSnippetViewControllerViewDidLoad:(id)a3
{
  [(CRKCardSectionViewController *)self _finishLoadingViewIfNecessary];

  [(SiriUILegacyCardSectionViewController *)self _updateContentSize];
}

- (void)siriSnippetViewController:(id)a3 setStatusBarHidden:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v8 = [v10 delegate];
  v9 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v8 siriSnippetViewController:v9 setStatusBarHidden:v6 animated:v5];
}

- (void)siriSnippetViewController:(id)a3 shouldPresentPicker:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [v11 delegate];
  v10 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v9 siriSnippetViewController:v10 shouldPresentPicker:v8 completion:v7];
}

- (void)siriSnippetViewController:(id)a3 didShowGuideStartDate:(id)a4 endDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [v11 delegate];
  v10 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v9 siriSnippetViewController:v10 didShowGuideStartDate:v8 endDate:v7];
}

- (BOOL)siriSnippetViewControllerIsVisible:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 delegate];
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v5 siriSnippetViewControllerIsVisible:v6];

  return v7;
}

- (void)siriSnippetViewController:(id)a3 requestPasscodeUnlockWithCompletion:(id)a4
{
  v5 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 delegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriSnippetViewController:v7 requestPasscodeUnlockWithCompletion:v5];
}

- (void)siriSnippetViewControllerWillBecomeFirstResponder:(id)a3
{
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v4 = [v6 delegate];
  v5 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v4 siriSnippetViewControllerWillBecomeFirstResponder:v5];
}

- (unint64_t)siriDeviceLockStateForSnippetViewController:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 delegate];
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v5 siriDeviceLockStateForSnippetViewController:v6];

  return v7;
}

- (id)siriEnabledAppListForSiriViewController:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 delegate];
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v5 siriEnabledAppListForSiriViewController:v6];

  return v7;
}

- (void)siriSnippetViewController:(id)a3 setStatusBarHidden:(BOOL)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v11 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController:a3];
  v9 = [v11 delegate];
  v10 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v9 siriSnippetViewController:v10 setStatusBarHidden:v7 animated:v6];
}

- (void)siriViewControllerViewDidAppear:(id)a3 isTopLevelViewController:(BOOL)a4
{
  v5 = a3;
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v7 delegate];
  [v6 siriViewControllerViewDidAppear:v5 isTopLevelViewController:0];
}

- (void)siriViewControllerViewDidDisappear:(id)a3 isTopLevelViewController:(BOOL)a4
{
  v5 = a3;
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v7 delegate];
  [v6 siriViewControllerViewDidDisappear:v5 isTopLevelViewController:0];
}

- (double)boundingWidthForSnippetViewController:(id)a3
{
  v3 = [(SiriUILegacyCardSectionViewController *)self view];
  [v3 bounds];
  v5 = v4;

  return v5;
}

- (void)siriViewController:(id)a3 performAceCommands:(id)a4
{
  v5 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 delegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriViewController:v7 performAceCommands:v5];
}

- (void)siriViewController:(id)a3 performAceCommands:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [v11 delegate];
  v10 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v9 siriViewController:v10 performAceCommands:v8 completion:v7];
}

- (void)siriViewController:(id)a3 openURL:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [v11 delegate];
  v10 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v9 siriViewController:v10 openURL:v8 completion:v7];
}

- (id)siriViewController:(id)a3 domainObjectForIdentifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [v8 delegate];
  v10 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v11 = [v9 siriViewController:v10 domainObjectForIdentifier:v7];

  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[SiriUILegacyCardSectionViewController siriViewController:domainObjectForIdentifier:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_26948D000, v12, OS_LOG_TYPE_DEFAULT, "%s #cards Retrieving a domain object for a legacy snippet view controller:\n    Siri view controller: %@\n    Identifier: %@\n    Domain object: %@", &v14, 0x2Au);
  }

  return v11;
}

- (void)siriViewController:(id)a3 setDomainObject:(id)a4 forIdentifier:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[SiriUILegacyCardSectionViewController siriViewController:setDomainObject:forIdentifier:]";
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_26948D000, v11, OS_LOG_TYPE_DEFAULT, "%s #cards Storing a domain object on behalf of a legacy snippet view controller:\n    Siri view controller: %@\n    Domain object: %@\n    Identifier: %@", &v15, 0x2Au);
  }

  v12 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v13 = [v12 delegate];
  v14 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v13 siriViewController:v14 setDomainObject:v9 forIdentifier:v10];
}

- (id)siriViewControllerEffectiveBundleForCoreLocation:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 delegate];
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v5 siriViewControllerEffectiveBundleForCoreLocation:v6];

  return v7;
}

- (double)siriViewControllerExpectedWidth:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 delegate];
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v5 siriViewControllerExpectedWidth:v6];
  v8 = v7;

  return v8;
}

- (CGSize)siriViewControllerVisibleContentArea:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 delegate];
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v5 siriViewControllerVisibleContentArea:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)siriViewControllerHeightDidChange:(id)a3
{
  [(SiriUILegacyCardSectionViewController *)self _updateContentSize];
  v4 = [(CRKCardSectionViewController *)self delegate];
  [v4 cardSectionViewControllerBoundsDidChange:self];
}

- (void)siriViewController:(id)a3 setContentOffset:(double)a4
{
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 delegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriViewController:v7 setContentOffset:a4];
}

- (id)siriViewController:(id)a3 filteredDisambiguationListItems:(id)a4
{
  v5 = a4;
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v6 delegate];
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [v7 siriViewController:v8 filteredDisambiguationListItems:v5];

  return v9;
}

- (id)siriViewController:(id)a3 disambiguationItemForListItem:(id)a4 disambiguationKey:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v10 = [v9 delegate];
  v11 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v12 = [v10 siriViewController:v11 disambiguationItemForListItem:v8 disambiguationKey:v7];

  return v12;
}

- (id)siriViewController:(id)a3 listItemToPickInAutodisambiguationForListItems:(id)a4
{
  v5 = a4;
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v6 delegate];
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [v7 siriViewController:v8 listItemToPickInAutodisambiguationForListItems:v5];

  return v9;
}

- (void)siriViewController:(id)a3 addSelectionResponse:(id)a4
{
  v5 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 delegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriViewController:v7 addSelectionResponse:v5];
}

- (void)cancelRequestForSiriSnippetViewController:(id)a3
{
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v4 = [v6 delegate];
  v5 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v4 cancelRequestForSiriSnippetViewController:v5];
}

- (id)persistentDataStoreForSiriViewController:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 delegate];
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v5 persistentDataStoreForSiriViewController:v6];

  return v7;
}

- (void)siriSnippetViewController:(id)a3 setStatusViewHidden:(BOOL)a4
{
  v4 = a4;
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v6 delegate];
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v7 siriSnippetViewController:v8 setStatusViewHidden:v4];

  v9 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v10 = [v9 delegate];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v13 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
    v11 = [v13 delegate];
    v12 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
    [v11 siriSnippetViewController:v12 setTypeToSiriViewHidden:v4];
  }
}

- (void)siriViewController:(id)a3 didHideVibrantView:(id)a4
{
  v5 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 delegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriViewController:v7 didHideVibrantView:v5];
}

- (id)updatedUserUtteranceForSiriViewController:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
    v8 = [v7 delegate];
    v9 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
    v10 = [v8 updatedUserUtteranceForSiriViewController:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)statusBarHeightForSiriViewController:(id)a3
{
  v4 = a3;
  v5 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v5 delegate];
  [v6 statusBarHeightForSiriViewController:v4];
  v8 = v7;

  return v8;
}

- (void)siriViewController:(id)a3 speakText:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v9 = [v11 _privateDelegate];
  v10 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v9 siriViewController:v10 speakText:v8 completion:v7];
}

- (void)siriSnippetViewController:(id)a3 willPresentViewController:(id)a4
{
  v5 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 _privateDelegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriSnippetViewController:v7 willPresentViewController:v5];
}

- (void)siriSnippetViewController:(id)a3 didPresentViewController:(id)a4
{
  v5 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 _privateDelegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriSnippetViewController:v7 didPresentViewController:v5];
}

- (void)siriSnippetViewController:(id)a3 willDismissViewController:(id)a4
{
  v5 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 _privateDelegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriSnippetViewController:v7 willDismissViewController:v5];
}

- (void)siriSnippetViewController:(id)a3 didDismissViewController:(id)a4
{
  v5 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 _privateDelegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriSnippetViewController:v7 didDismissViewController:v5];
}

- (void)siriSnippetViewController:(id)a3 didRequestKeyboardWithVisibility:(BOOL)a4
{
  v4 = a4;
  v8 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v6 = [v8 _privateDelegate];
  v7 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v6 siriSnippetViewController:v7 didRequestKeyboardWithVisibility:v4];
}

- (void)cancelSpeakingForSiriViewController:(id)a3
{
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v4 = [v6 _privateDelegate];
  v5 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v4 cancelSpeakingForSiriViewController:v5];
}

- (void)removeSiriViewController:(id)a3
{
  v4 = a3;
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v6 _privateDelegate];
  [v5 removeSiriViewController:v4];
}

- (BOOL)siriViewControllerShouldPreventUserInteraction:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 _privateDelegate];
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v5 siriViewControllerShouldPreventUserInteraction:v6];

  return v7;
}

- (void)siriViewControllerWillBeginEditing:(id)a3
{
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v4 = [v6 _privateDelegate];
  v5 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v4 siriViewControllerWillBeginEditing:v5];
}

- (void)siriViewControllerDidEndEditing:(id)a3
{
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v4 = [v6 _privateDelegate];
  v5 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v4 siriViewControllerDidEndEditing:v5];
}

- (void)siriViewController:(id)a3 startCorrectedSpeechRequestWithText:(id)a4 correctionIdentifier:(id)a5 userSelectionResults:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v14 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v12 = [v14 _privateDelegate];
  v13 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v12 siriViewController:v13 startCorrectedSpeechRequestWithText:v11 correctionIdentifier:v10 userSelectionResults:v9];
}

- (void)siriViewControllerRequestTearDownEditingViewController:(id)a3
{
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v4 = [v6 _privateDelegate];
  v5 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  [v4 siriViewControllerRequestTearDownEditingViewController:v5];
}

- (id)localeForSiriViewController:(id)a3
{
  v4 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v5 = [v4 _privateDelegate];
  v6 = [(SiriUILegacyCardSectionViewController *)self containingSnippetViewController];
  v7 = [v5 localeForSiriViewController:v6];

  return v7;
}

- (UIEdgeInsets)siriViewControllerBackgroundInsets:(id)a3
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