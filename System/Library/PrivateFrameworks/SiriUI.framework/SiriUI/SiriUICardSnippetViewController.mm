@interface SiriUICardSnippetViewController
+ (void)initialize;
- (BOOL)cardLoader:(id)a3 loadCard:(id)a4 withCompletionHandler:(id)a5;
- (BOOL)isNavigating;
- (BOOL)logContentsIfApplicable;
- (BOOL)performBeganEditingCommand:(id)a3 forCardViewController:(id)a4;
- (BOOL)performFinishedEditingCommand:(id)a3 forCardViewController:(id)a4;
- (BOOL)performInvocationPayloadCommand:(id)a3 forCardViewController:(id)a4;
- (BOOL)performNextCardCommand:(id)a3 forCardViewController:(id)a4;
- (BOOL)performPunchoutCommand:(id)a3 forCardViewController:(id)a4;
- (BOOL)performReferentialCommand:(id)a3 forCardViewController:(id)a4;
- (CGSize)cardViewController:(id)a3 boundingSizeForCardSectionViewController:(id)a4;
- (Class)transparentHeaderViewClass;
- (SiriUICardSnippetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)defaultViewInsets;
- (double)boundingWidthForPresentation:(id)a3;
- (double)desiredHeight;
- (double)desiredHeightForTransparentHeaderView;
- (id)_metricsContextOfEventsForCard:(id)a3;
- (id)_metricsContextOfEventsForCardSection:(id)a3 inCard:(id)a4;
- (id)localeForCardSnippetView:(id)a3;
- (id)requestContext;
- (unint64_t)navigationIndexOfCardViewController:(id)a3;
- (void)_addCardViewControllerAsChildViewController:(id)a3;
- (void)_addNextCardTo:(id)a3 fullCard:(id)a4;
- (void)_beginMonitoringForNextCardWithBlock:(id)a3;
- (void)_emitInstrumentationEvent:(id)a3 requiresNewTurn:(BOOL)a4;
- (void)_emitInstrumentationEventForKeyboardInvocation;
- (void)_emitInstrumentationEventWithInvocationSource:(int)a3;
- (void)_forwardProgressEvent:(unint64_t)a3 toCardViewController:(id)a4 animated:(BOOL)a5;
- (void)_forwardProgressEventToCardViewController:(unint64_t)a3;
- (void)_insertCardViewController:(id)a3;
- (void)_inspectPayloadForMetricsEvents:(id)a3;
- (void)_instrumentCardSectionInteractionForCardSection:(id)a3 previousTurn:(id)a4;
- (void)_logCardRelationshipIdentifiedForCompactCard:(id)a3 fullCard:(id)a4 snippet:(id)a5;
- (void)_navigationButtonTapped:(id)a3;
- (void)_removeBottomKeylineFromCard:(id)a3;
- (void)_removeCardViewControllerFromParentViewController:(id)a3;
- (void)_removeShouldHideInAmbientSectionsFromCurrentCard;
- (void)_setCardViewController:(id)a3;
- (void)_updateContentSizeAndNotifyDelegateIfNecessary:(BOOL)a3;
- (void)_validateCardForParsecFeedbackDelivery:(id)a3 validHandler:(id)a4;
- (void)_validateCardSectionForParsecFeedbackDelivery:(id)a3 validHandler:(id)a4;
- (void)backgroundColorView:(id)a3 didFinishColorUpdate:(id)a4;
- (void)cardLoadingMonitor:(id)a3 didReceiveCardSnippet:(id)a4;
- (void)cardLoadingMonitor:(id)a3 didReceiveVisualResponseSnippet:(id)a4;
- (void)cardSectionView:(id)a3 willProcessEngagementFeedback:(id)a4;
- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardSnippetViewSashWasTapped:(id)a3;
- (void)cardViewController:(id)a3 requestsHandlingOfIntent:(id)a4;
- (void)cardViewController:(id)a3 willDismissViewController:(id)a4;
- (void)cardViewControllerDidLoad:(id)a3;
- (void)cardViewDidAppearForCard:(id)a3 withAppearanceFeedback:(id)a4;
- (void)cardViewDidDisappearForCard:(id)a3 withDisappearanceFeedback:(id)a4;
- (void)cardViewWillAppearForCard:(id)a3 withAppearanceFeedback:(id)a4;
- (void)commandWasPerformed:(id)a3;
- (void)configureContentWithSizeClass:(int64_t)a3;
- (void)configureReusableTransparentHeaderView:(id)a3;
- (void)controllerForCard:(id)a3 didReceiveAsyncCard:(id)a4 withAsyncCardReceiptFeedback:(id)a5;
- (void)controllerForCard:(id)a3 didRequestAsyncCard:(id)a4 withAsyncCardRequestFeedback:(id)a5;
- (void)loadView;
- (void)modalContainerViewControllerViewDidDisappear:(id)a3;
- (void)modalContainerViewControllerViewWillDisappear:(id)a3;
- (void)presentViewController:(id)a3 forCardViewController:(id)a4;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setIsInAmbientInteractivity:(BOOL)a3;
- (void)setNavigating:(BOOL)a3;
- (void)setSnippet:(id)a3;
- (void)siriDidDeactivate;
- (void)siriDidReceiveViewsWithDialogPhase:(id)a3;
- (void)siriDidScrollVisible:(BOOL)a3;
- (void)siriDidStartSpeakingWithIdentifier:(id)a3;
- (void)siriDidStopSpeakingWithIdentifier:(id)a3 speechQueueIsEmpty:(BOOL)a4;
- (void)siriDidTapOutsideContent;
- (void)siriDidUpdateASRWithRecognition:(id)a3;
- (void)siriWillBeginScrolling;
- (void)siriWillStartRequest;
- (void)userDidEngageCardSection:(id)a3 withEngagementFeedback:(id)a4;
- (void)userDidReportFeedback:(id)a3 fromCardSection:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wasAddedToTranscript;
- (void)willCancel;
- (void)willConfirm;
@end

@implementation SiriUICardSnippetViewController

+ (void)initialize
{
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___SiriUICardSnippetViewController;
  objc_msgSendSuper2(&v17, sel_initialize);
  +[(CRKCardSectionViewController *)SiriUILegacyStocksChartCardSectionViewController];
  v2 = [MEMORY[0x277CF93D0] appearance];
  v3 = [MEMORY[0x277D75348] siriui_highlightColor];
  [v2 setBackgroundColor:v3 forState:1];

  v4 = [MEMORY[0x277CF93D0] appearance];
  v5 = [MEMORY[0x277D75348] siriui_highlightColor];
  [v4 setBackgroundColor:v5 forState:4];

  v6 = [MEMORY[0x277CF93D0] appearance];
  v7 = [MEMORY[0x277D75348] siriui_highlightColor];
  [v6 setBackgroundColor:v7 forState:5];

  v8 = [MEMORY[0x277D0ED00] feedbackListenerForParsec];
  SFFeedbackListenerRegister();

  v9 = [MEMORY[0x277D007C0] sharedSession];
  SFFeedbackListenerRegister();

  v10 = +[SiriUICardProviderRegistry sharedInstance];
  [v10 loadProviders];

  v11 = MEMORY[0x277CF93D8];
  v12 = objc_alloc_init(MEMORY[0x277CEEF98]);
  [v11 registerService:v12];

  v13 = MEMORY[0x277CF93D8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v14 = getAPUICardServiceClass_softClass;
  v22 = getAPUICardServiceClass_softClass;
  if (!getAPUICardServiceClass_softClass)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getAPUICardServiceClass_block_invoke;
    v18[3] = &unk_279C59F40;
    v18[4] = &v19;
    __getAPUICardServiceClass_block_invoke(v18);
    v14 = v20[3];
  }

  v15 = v14;
  _Block_object_dispose(&v19, 8);
  v16 = objc_alloc_init(v14);
  [v13 registerService:v16];
}

- (SiriUICardSnippetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v13.receiver = self;
  v13.super_class = SiriUICardSnippetViewController;
  v4 = [(SiriUISnippetViewController *)&v13 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(SiriUISnippetViewController *)v4 setLoading:1];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    referenceableCommandsByIdentifierMap = v5->_referenceableCommandsByIdentifierMap;
    v5->_referenceableCommandsByIdentifierMap = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    referenceableSnippetsByIdentifierMap = v5->_referenceableSnippetsByIdentifierMap;
    v5->_referenceableSnippetsByIdentifierMap = v8;

    v10 = objc_alloc_init(MEMORY[0x277D61AC0]);
    cardLoader = v5->_cardLoader;
    v5->_cardLoader = v10;

    [(SRUIFCardLoader *)v5->_cardLoader setDelegate:v5];
    [(SRUIFCardLoader *)v5->_cardLoader setActive:1];
    v5->_sizeClass = 0;
  }

  return v5;
}

- (void)loadView
{
  v5 = objc_alloc_init(SiriUICardSnippetView);
  [(SiriUICardSnippetView *)v5 setBackingViewController:self];
  [(SiriUICardSnippetView *)v5 setDataSource:self];
  [(SiriUICardSnippetView *)v5 setDelegate:self];
  [(SiriUICardSnippetViewController *)self setView:v5];
  if (![(SiriUISnippetViewController *)self isLoading]&& self->_cardViewController)
  {
    getSearchUICardViewControllerClass();
    if (objc_opt_isKindOfClass())
    {
      [(CRKCardViewControlling *)self->_cardViewController setThreeDTouchEnabled:0];
    }

    v3 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [(SiriUICardSnippetViewController *)self _addCardViewControllerAsChildViewController:v3];

    v4 = [(SiriUICardSnippetViewController *)self view];
    [v4 reloadData];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SiriUICardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v5 viewDidLoad];
  v3 = [(SiriUICardSnippetViewController *)self view];
  v4 = [v3 backNavigationButton];
  [v4 addTarget:self action:sel__navigationButtonTapped_ forControlEvents:64];
}

- (void)backgroundColorView:(id)a3 didFinishColorUpdate:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriUICardSnippetViewController backgroundColorView:didFinishColorUpdate:]";
    v10 = 1024;
    v11 = v5 != 0;
    _os_log_impl(&dword_26948D000, v6, OS_LOG_TYPE_DEFAULT, "%s #background SearchUI color update successful %d", &v8, 0x12u);
  }

  v7 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v7 siriSnippetViewController:self isBackgroundColorUpdateSuccessful:v5 != 0];
}

- (void)setIsInAmbient:(BOOL)a3
{
  if (self->_isInAmbient == a3)
  {
    return;
  }

  v3 = a3;
  self->_isInAmbient = a3;
  cardViewController = self->_cardViewController;
  if (a3)
  {
    v6 = cardViewController;
    getSearchUICardViewControllerClass();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = v6;
    v8 = 0;
  }

  else
  {
    [(CRKCardViewControlling *)cardViewController setCard:self->_originalCard];
    v6 = self->_cardViewController;
    getSearchUICardViewControllerClass();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = v6;
    v8 = 1;
  }

  [(CRKCardViewControlling *)v7 setRowSelectionAppearanceEnabled:v8];
LABEL_8:

  v9 = [(SiriUICardSnippetViewController *)self view];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SiriUICardSnippetViewController *)self view];
    [v11 setIsInAmbient:v3];
  }
}

- (void)_removeShouldHideInAmbientSectionsFromCurrentCard
{
  v28 = *MEMORY[0x277D85DE8];
  getSearchUICardViewControllerClass();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_cardViewController;
    v4 = [(CRKCardViewControlling *)v3 card];
    v5 = [v4 cardSections];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [v4 copy];
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = [v4 cardSections];
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v19 = v7;
        v20 = v3;
        v12 = 0;
        v13 = *v22;
        v14 = MEMORY[0x277CEF098];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            if ([v16 shouldHideInAmbientMode])
            {
              v17 = *v14;
              if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v26 = "[SiriUICardSnippetViewController _removeShouldHideInAmbientSectionsFromCurrentCard]";
                _os_log_impl(&dword_26948D000, v17, OS_LOG_TYPE_DEFAULT, "%s #ambient - In ambient mode and found a shouldHideInAmbientMode card section", buf, 0xCu);
              }

              v12 = 1;
            }

            else
            {
              [v8 addObject:v16];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v11);

        v3 = v20;
        v18 = v4;
        v7 = v19;
        if (v12)
        {
          [v19 setCardSections:v8];
          v18 = v19;
        }
      }

      else
      {

        v18 = v4;
      }

      [(CRKCardViewControlling *)v3 setCard:v18];
    }
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)a3
{
  v3 = a3;
  v5 = [(SiriUICardSnippetViewController *)self view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SiriUICardSnippetViewController *)self view];
    [v7 setIsInAmbientInteractivity:v3];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SiriUICardSnippetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279C5A068;
  v9[4] = self;
  v7 = a4;
  [v7 animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = SiriUICardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = SiriUICardSnippetViewController;
  [(SiriUISnippetViewController *)&v10 viewDidAppear:a3];
  [(SiriUICardSnippetViewController *)self _updateContentSizeAndNotifyDelegateIfNecessary:1];
  presentedModalContainerViewController = self->_presentedModalContainerViewController;
  if (presentedModalContainerViewController)
  {
    v5 = [(SiriUIModalContainerViewController *)presentedModalContainerViewController contentViewController];
    v6 = [v5 siriui_shouldHideStatusBar];

    if (v6)
    {
      v7 = [(SiriUIBaseSnippetViewController *)self delegate];
      [v7 siriSnippetViewController:self setStatusBarHidden:0 animated:1];
    }

    v8 = [(SiriUIBaseSnippetViewController *)self delegate];
    [v8 siriSnippetViewController:self setStatusViewHidden:0];

    v9 = self->_presentedModalContainerViewController;
    self->_presentedModalContainerViewController = 0;
  }

  if (self->_isCardViewControllerLoading)
  {
    [(SiriUISnippetViewController *)self setUserConfirmationEnabled:0];
  }
}

- (void)configureContentWithSizeClass:(int64_t)a3
{
  if (self->_sizeClass != a3)
  {
    self->_sizeClass = a3;
  }
}

- (void)_addNextCardTo:(id)a3 fullCard:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 cardSections];
  if (![v8 count])
  {
LABEL_20:

    goto LABEL_21;
  }

  if ([v7 type] == 2)
  {

LABEL_5:
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = [v6 cardSections];
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 nextCard];

          if (v17)
          {
            v19 = [v16 nextCard];
            v20 = [v19 backingCard];

            v21 = [v7 backingCard];
            if ([v20 afui_hasContentEqualTo:v21])
            {
              v22 = [v6 backingCard];
              v23 = [v7 backingCard];
              [(SiriUICardSnippetViewController *)self _logCardRelationshipIdentifiedForCompactCard:v22 fullCard:v23 snippet:self->_snippet];
            }

            v18 = 1;
            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_17:

    v24 = [v6 cardSections];
    v8 = [v24 firstObject];

    if ((v18 & 1) == 0)
    {
      v25 = [v8 punchoutOptions];

      if (!v25)
      {
        [v8 setNextCard:v7];
        v26 = [v6 backingCard];
        v27 = [v7 backingCard];
        [(SiriUICardSnippetViewController *)self _logCardRelationshipIdentifiedForCompactCard:v26 fullCard:v27 snippet:self->_snippet];
      }
    }

    goto LABEL_20;
  }

  v9 = [v7 cardSections];
  v10 = [v9 count];

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_21:
}

- (void)_removeBottomKeylineFromCard:(id)a3
{
  v7 = a3;
  v3 = [v7 cardSections];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [v7 cardSections];
    v6 = [v5 lastObject];

    [v6 setSeparatorStyle:1];
  }
}

- (void)setSnippet:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a3;
  snippet = self->_snippet;
  if (snippet != v5 && ([(SACardSnippet *)snippet isEqual:v5]& 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v5;
      objc_storeStrong(&self->_snippet, a3);
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v7 = [(SACardSnippet *)self->_snippet referencedCommands];
      v8 = [v7 countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (v8)
      {
        v9 = *v64;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v64 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v63 + 1) + 8 * i);
            referenceableCommandsByIdentifierMap = self->_referenceableCommandsByIdentifierMap;
            v13 = [v11 aceId];
            [(NSMutableDictionary *)referenceableCommandsByIdentifierMap setObject:v11 forKey:v13];
          }

          v8 = [v7 countByEnumeratingWithState:&v63 objects:v72 count:16];
        }

        while (v8);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v14 = [(SACardSnippet *)self->_snippet referencedSnippets];
      v15 = [v14 countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (v15)
      {
        v16 = *v60;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v60 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v59 + 1) + 8 * j);
            referenceableSnippetsByIdentifierMap = self->_referenceableSnippetsByIdentifierMap;
            v20 = [v18 aceId];
            [(NSMutableDictionary *)referenceableSnippetsByIdentifierMap setObject:v18 forKey:v20];
          }

          v15 = [v14 countByEnumeratingWithState:&v59 objects:v71 count:16];
        }

        while (v15);
      }

      v21 = [MEMORY[0x277CEF368] sharedPreferences];
      v22 = [v21 cardLoggingEnabled];

      if (v22)
      {
        [(SiriUICardSnippetViewController *)self logContentsIfApplicable];
      }

      v23 = objc_alloc_init(MEMORY[0x277CF93A8]);
      cardPresentation = self->_cardPresentation;
      self->_cardPresentation = v23;

      [(CRKCardPresentation *)self->_cardPresentation setDelegate:self];
      v25 = [(SACardSnippet *)self->_snippet siriui_card];
      v26 = [v25 interactions];
      v53 = [v26 anyObject];

      v27 = [v53 intent];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v28 = [(SACardSnippet *)self->_snippet siriui_card_compact];
      v29 = [v25 backingCard];
      originalCard = self->_originalCard;
      self->_originalCard = v29;

      v31 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
      v32 = [v25 backingCard];
      v33 = [v32 cardId];
      v34 = [(SACardSnippet *)self->_snippet aceId];
      [v31 storeCardID:v33 forSnippetAceID:v34];

      if (self->_sizeClass != 1 || ([v28 backingCard], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "cardSections"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v36 == 0, v36, v35, v37))
      {
        v41 = v25;
      }

      else
      {
        v38 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v68 = "[SiriUICardSnippetViewController setSnippet:]";
          v69 = 2112;
          v70 = v28;
          _os_log_impl(&dword_26948D000, v38, OS_LOG_TYPE_DEFAULT, "%s Compact card exists and our size class is compact. Presenting compact card : %@", buf, 0x16u);
        }

        v39 = [v28 backingCard];
        v40 = [v25 backingCard];
        [(SiriUICardSnippetViewController *)self _addNextCardTo:v39 fullCard:v40];

        v41 = v28;
        v42 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
        v43 = [v41 backingCard];
        v44 = [v43 cardId];
        v45 = [(SACardSnippet *)self->_snippet aceId];
        [v42 storeCardID:v44 forSnippetAceID:v45];
      }

      v46 = [v41 backingCard];
      [(SiriUICardSnippetViewController *)self _removeBottomKeylineFromCard:v46];

      v47 = [objc_alloc(MEMORY[0x277CF93B0]) initWithCard:v41];
      [v47 setLoadsBundleProviders:0];
      v48 = [v47 cardRequest];
      [v48 setLoadsBundleServices:0];

      [v47 setRespectsUserConsent:(isKindOfClass ^ 1) & 1];
      self->_isCardViewControllerLoading = 1;
      objc_initWeak(buf, self);
      objc_initWeak(&location, self->_cardPresentation);
      v49 = self->_cardPresentation;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __46__SiriUICardSnippetViewController_setSnippet___block_invoke;
      v54[3] = &unk_279C5A090;
      objc_copyWeak(&v56, buf);
      objc_copyWeak(&v57, &location);
      v50 = v41;
      v55 = v50;
      [(CRKCardPresentation *)v49 setConfiguration:v47 animated:0 completion:v54];

      objc_destroyWeak(&v57);
      objc_destroyWeak(&v56);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);

      v5 = v52;
    }
  }
}

void __46__SiriUICardSnippetViewController_setSnippet___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v6 = objc_loadWeakRetained(a1 + 6);
  v7 = v6;
  if (!WeakRetained || !v6)
  {
    goto LABEL_26;
  }

  if (v4)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __46__SiriUICardSnippetViewController_setSnippet___block_invoke_cold_1(v4, a1, v8);
    }

    goto LABEL_26;
  }

  v9 = [v6 cardViewController];
  v10 = [a1[4] interactions];
  v11 = [v10 anyObject];

  getSearchUICardViewControllerClass();
  if (objc_opt_isKindOfClass())
  {
    v12 = v9;
    if ([WeakRetained isInAmbient])
    {
      [v12 setRowSelectionAppearanceEnabled:0];
    }

    v13 = [v12 card];
    v14 = [v13 cardSections];
    v15 = [v14 count];

    if (!v15)
    {

      goto LABEL_26;
    }

    if ([WeakRetained isInAmbient])
    {
      goto LABEL_17;
    }

    v16 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v13 backgroundColor];

      if (!v17)
      {
LABEL_17:

        goto LABEL_18;
      }

      [v12 setShouldDrawBackgroundColor:0];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2050000000;
      v18 = getSearchUIBackgroundColorViewClass_softClass;
      v46 = getSearchUIBackgroundColorViewClass_softClass;
      if (!getSearchUIBackgroundColorViewClass_softClass)
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __getSearchUIBackgroundColorViewClass_block_invoke;
        v42[3] = &unk_279C59F40;
        v42[4] = &v43;
        __getSearchUIBackgroundColorViewClass_block_invoke(v42);
        v18 = v44[3];
      }

      v19 = v18;
      _Block_object_dispose(&v43, 8);
      v16 = objc_alloc_init(v18);
      [v16 updateWithSFCard:v13];
      [v16 setDelegate:WeakRetained];
      v20 = [WeakRetained delegate];
      [v20 siriSnippetViewController:WeakRetained informHostOfBackgroundView:v16 isSnippetAsyncColored:1];
    }

    goto LABEL_17;
  }

LABEL_18:
  v21 = [v11 intent];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [v11 intent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_21;
    }

    v32 = [v11 intent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      v34 = [v11 intent];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = 1;
      }

      else
      {
        v35 = [v11 intent];
        objc_opt_class();
        v41 = v35;
        if (objc_opt_isKindOfClass())
        {
          isKindOfClass = 1;
        }

        else
        {
          v40 = [v11 intent];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
        }
      }
    }

    if (!v11 || (isKindOfClass & 1) != 0)
    {
      goto LABEL_22;
    }

    v36 = [v11 intentHandlingStatus];
    if (v36 <= 2)
    {
      if (v36 >= 2)
      {
        v38 = v36 == 2;
        v39 = 0;
        goto LABEL_49;
      }
    }

    else if ((v36 - 5) >= 2)
    {
      v37 = 3;
      if (v36 != 4)
      {
        v37 = 0;
      }

      v38 = 0;
      if (v36 == 3)
      {
        v39 = 2;
      }

      else
      {
        v39 = v37;
      }

      goto LABEL_49;
    }

    v38 = 0;
    v39 = 4;
LABEL_49:
    [WeakRetained _forwardProgressEvent:v39 toCardViewController:v9 animated:0];
    [WeakRetained _setAwaitingSuccessOrFailureEvent:v38];
    goto LABEL_22;
  }

LABEL_21:

LABEL_22:
  [WeakRetained _setCardViewController:v9];
  [WeakRetained setLoading:0];
  [WeakRetained _addCardViewControllerAsChildViewController:v9];
  v23 = [WeakRetained view];
  [v23 reloadData];

  v24 = [MEMORY[0x277CEF4D0] saeAvailable];
  v25 = [v9 view];
  v26 = [WeakRetained view];
  [v26 bounds];
  Width = CGRectGetWidth(v47);
  if (v24)
  {
    [v9 preferredContentSize];
    v29 = v28;
  }

  else
  {
    v29 = 1000.0;
  }

  [v25 setFrame:{0.0, 0.0, Width, v29}];

  v30 = [v9 view];
  [v30 layoutBelowIfNeeded];

  [WeakRetained _updateContentSizeAndNotifyDelegateIfNecessary:1];
  v31 = [WeakRetained delegate];
  [v31 siriSnippetViewControllerViewDidLoad:WeakRetained];

LABEL_26:
}

- (UIEdgeInsets)defaultViewInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)desiredHeight
{
  p_contentSize = &self->_contentSize;
  result = self->_contentSize.height;
  if (self->_contentSize.width == *MEMORY[0x277CBF3A8] && result == *(MEMORY[0x277CBF3A8] + 8))
  {
    [(SiriUICardSnippetViewController *)self _updateContentSizeAndNotifyDelegateIfNecessary:0, result];
    return p_contentSize->height;
  }

  return result;
}

- (BOOL)logContentsIfApplicable
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(SACardSnippet *)self->_snippet siriui_card];
  v4 = [(SACardSnippet *)self->_snippet siriui_card_compact];
  v5 = v4;
  if (self->_sizeClass == 1)
  {
    v6 = [v4 backingCard];
    v7 = [v6 cardSections];

    if (v7)
    {
      v8 = v5;

      v3 = v8;
    }
  }

  v9 = [SiriUICardLogger logCard:v3 format:0];
  v10 = MEMORY[0x277CEF098];
  if (v9)
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      snippet = self->_snippet;
      v17 = 136316162;
      v18 = "[SiriUICardSnippetViewController logContentsIfApplicable]";
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = self;
      v23 = 2112;
      v24 = snippet;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_26948D000, v11, OS_LOG_TYPE_DEFAULT, "%s #cards Logged card for CardSnippetViewController\n    Card: %@\n    SnippetViewController: %@\n    Snippet: %@\n    Filename: %@", &v17, 0x34u);
    }
  }

  v13 = [SiriUICardLogger logCard:v3 format:3];
  if (v13)
  {
    v14 = *v10;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_snippet;
      v17 = 136316162;
      v18 = "[SiriUICardSnippetViewController logContentsIfApplicable]";
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = self;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_26948D000, v14, OS_LOG_TYPE_DEFAULT, "%s #cards Logged card for CardSnippetViewController\n    Card: %@\n    SnippetViewController: %@\n    Snippet: %@\n    Filename: %@", &v17, 0x34u);
    }
  }

  return (v9 | v13) != 0;
}

- (id)requestContext
{
  v44 = *MEMORY[0x277D85DE8];
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [(SACardSnippet *)self->_snippet siriui_card];
  v4 = [v3 backingCard];
  v5 = [v4 entityProtobufMessages];
  v6 = [v5 count];

  if (v6)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = [(SACardSnippet *)self->_snippet siriui_card];
    v8 = [v7 backingCard];
    v9 = [v8 entityProtobufMessages];

    v10 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = objc_alloc_init(MEMORY[0x277D47688]);
          v16 = [MEMORY[0x277CCAD78] UUID];
          v17 = [v16 UUIDString];
          [v15 setAceId:v17];

          v18 = [v14 protobufMessageData];
          [v15 setData:v18];

          v19 = [v14 protobufMessageName];
          [v15 setTypeName:v19];

          [v38 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v20 = [(SACardSnippet *)self->_snippet siriui_card];
    v21 = [v20 backingCard];
    v22 = [v21 entityIdentifier];

    if (!v22)
    {
      goto LABEL_13;
    }

    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = [(SACardSnippet *)self->_snippet siriui_card];
    v25 = [v24 backingCard];
    v26 = [v25 entityIdentifier];
    v27 = [v23 initWithData:v26 encoding:4];
    v9 = [v27 stringByRemovingPercentEncoding];

    v28 = objc_alloc(MEMORY[0x277D4C7E8]);
    v29 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    v30 = [v28 initWithNSURL:v29];

    v31 = objc_alloc_init(MEMORY[0x277D47688]);
    v32 = [MEMORY[0x277CCAD78] UUID];
    v33 = [v32 UUIDString];
    [v31 setAceId:v33];

    v34 = [v30 data];
    [v31 setData:v34];

    v35 = [v30 _siriui_protobufTypeName];
    [v31 setTypeName:v35];

    [v38 addObject:v31];
  }

LABEL_13:
  v36 = [v38 copy];

  return v36;
}

- (void)setNavigating:(BOOL)a3
{
  v3 = a3;
  v4 = [(SiriUICardSnippetViewController *)self view];
  [v4 setNavigating:v3];
}

- (BOOL)isNavigating
{
  v2 = [(SiriUICardSnippetViewController *)self view];
  v3 = [v2 isNavigating];

  return v3;
}

- (void)wasAddedToTranscript
{
  v6.receiver = self;
  v6.super_class = SiriUICardSnippetViewController;
  [(SiriUIBaseSnippetViewController *)&v6 wasAddedToTranscript];
  if ([(SiriUISnippetViewController *)self isVirgin])
  {
    v3 = [(SiriUICardSnippetViewController *)self _cardViewController];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(SiriUICardSnippetViewController *)self _cardViewController];
      [v5 cardEventDidOccur:0 withIdentifier:0 userInfo:0];
    }
  }
}

- (void)siriDidDeactivate
{
  v6.receiver = self;
  v6.super_class = SiriUICardSnippetViewController;
  [(SiriUIBaseSnippetViewController *)&v6 siriDidDeactivate];
  v3 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [v5 cardEventDidOccur:4 withIdentifier:0 userInfo:0];
  }
}

- (void)willCancel
{
  v6.receiver = self;
  v6.super_class = SiriUICardSnippetViewController;
  [(SiriUISnippetViewController *)&v6 willCancel];
  v3 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [v5 cardEventDidOccur:3 withIdentifier:0 userInfo:0];
  }
}

- (void)siriDidStartSpeakingWithIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [v6 cardEventDidOccur:1 withIdentifier:v7 userInfo:0];
  }
}

- (void)siriDidStopSpeakingWithIdentifier:(id)a3 speechQueueIsEmpty:(BOOL)a4
{
  v8 = a3;
  v5 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [v7 cardEventDidOccur:2 withIdentifier:v8 userInfo:0];
  }
}

- (void)siriDidUpdateASRWithRecognition:(id)a3
{
  v8 = a3;
  v4 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:@"UpdatedRecognition"];
    v7 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [v7 cardEventDidOccur:7 withIdentifier:0 userInfo:v6];
  }
}

- (void)siriWillBeginScrolling
{
  v3 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [v5 cardEventDidOccur:5 withIdentifier:0 userInfo:0];
  }
}

- (void)siriDidScrollVisible:(BOOL)a3
{
  v4 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [v6 cardEventDidOccur:6 withIdentifier:0 userInfo:0];
  }
}

- (void)siriDidTapOutsideContent
{
  v3 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [v5 cardEventDidOccur:8 withIdentifier:0 userInfo:0];
  }
}

- (void)siriWillStartRequest
{
  v3 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [v5 cardEventDidOccur:9 withIdentifier:0 userInfo:0];
  }
}

- (void)siriDidReceiveViewsWithDialogPhase:(id)a3
{
  v9 = a3;
  if ([(SiriUISnippetViewController *)self _isAwaitingSuccessOrFailureEvent])
  {
    v4 = [(SiriUICardSnippetViewController *)self _cardViewController];
    v5 = [v4 card];
    v6 = [v5 interactions];
    v7 = [v6 anyObject];

    if (v7)
    {
      if (([v9 isCompletionDialogPhase] & 1) != 0 || objc_msgSend(v9, "isConfirmedDialogPhase"))
      {
        if ([v9 isConfirmedDialogPhase])
        {
          [(SiriUISnippetViewController *)self setConfirmed:1];
        }

        v8 = 2;
LABEL_8:
        [(SiriUICardSnippetViewController *)self _forwardProgressEventToCardViewController:v8];
        [(SiriUISnippetViewController *)self _setAwaitingSuccessOrFailureEvent:0];
        goto LABEL_9;
      }

      if (([v9 isErrorDialogPhase] & 1) != 0 || objc_msgSend(v9, "isCancelledDialogPhase"))
      {
        if ([v9 isCancelledDialogPhase])
        {
          [(SiriUISnippetViewController *)self setCancelled:1];
        }

        v8 = 3;
        goto LABEL_8;
      }
    }
  }

LABEL_9:
}

- (void)_setCardViewController:(id)a3
{
  objc_storeStrong(&self->_cardViewController, a3);
  if (self->_isInAmbient)
  {
    [(SiriUICardSnippetViewController *)self _removeShouldHideInAmbientSectionsFromCurrentCard];
  }

  [(SiriUISnippetViewController *)self setLoading:0];
}

- (void)_removeCardViewControllerFromParentViewController:(id)a3
{
  v5 = a3;
  v3 = [v5 parentViewController];

  if (v3)
  {
    [v5 didMoveToParentViewController:0];
    v4 = [v5 view];
    [v4 removeFromSuperview];

    [v5 removeFromParentViewController];
  }
}

- (void)_addCardViewControllerAsChildViewController:(id)a3
{
  v8 = a3;
  v4 = [(SiriUICardSnippetViewController *)self childViewControllers];
  v5 = [v4 containsObject:v8];

  if ((v5 & 1) == 0)
  {
    [(SiriUICardSnippetViewController *)self _removeCardViewControllerFromParentViewController:self->_cardViewController];
    [(SiriUICardSnippetViewController *)self addChildViewController:v8];
    v6 = [v8 view];
    v7 = [(SiriUICardSnippetViewController *)self view];
    [v7 setCardView:v6];

    [v8 didMoveToParentViewController:self];
  }
}

- (void)_updateContentSizeAndNotifyDelegateIfNecessary:(BOOL)a3
{
  v3 = a3;
  p_contentSize = &self->_contentSize;
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  v8 = [(SiriUICardSnippetViewController *)self view];
  v9 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v9 siriViewControllerExpectedWidth:self];
  [v8 sizeThatFits:{v10 + 8.0 + 8.0, 1.79769313e308}];
  p_contentSize->width = v11;
  p_contentSize->height = v12;

  if (v3 && (width != p_contentSize->width || height != p_contentSize->height))
  {
    v14 = [(SiriUIBaseSnippetViewController *)self delegate];
    [v14 siriViewControllerHeightDidChange:self];
  }
}

- (void)_beginMonitoringForNextCardWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&cardLoadingLock);
  if (self->_isCardLoading)
  {
    os_unfair_lock_unlock(&cardLoadingLock);
  }

  else
  {
    self->_isCardLoading = 1;
    os_unfair_lock_unlock(&cardLoadingLock);
    v5 = [MEMORY[0x277D61AC8] sharedInstance];
    [v5 addObserver:self];

    v6 = MEMORY[0x26D63F900](v4);
    cardLoadingCompletionhandler = self->_cardLoadingCompletionhandler;
    self->_cardLoadingCompletionhandler = v6;

    objc_initWeak(&location, self);
    v8 = MEMORY[0x277CBEBB8];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__SiriUICardSnippetViewController__beginMonitoringForNextCardWithBlock___block_invoke;
    v11[3] = &unk_279C5A0B8;
    objc_copyWeak(&v12, &location);
    v11[4] = self;
    v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:10.0];
    cardLoadingTimer = self->_cardLoadingTimer;
    self->_cardLoadingTimer = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __72__SiriUICardSnippetViewController__beginMonitoringForNextCardWithBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D61AC8] sharedInstance];
    [v3 removeObserver:*(a1 + 32)];

    v4 = WeakRetained[157];
    if (v4)
    {
      v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF93E8] code:401 userInfo:0];
      (*(v4 + 16))(v4, 0, v5);

      v6 = WeakRetained[157];
      WeakRetained[157] = 0;
    }

    os_unfair_lock_lock(&cardLoadingLock);
    *(WeakRetained + 1272) = 0;
    os_unfair_lock_unlock(&cardLoadingLock);
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __72__SiriUICardSnippetViewController__beginMonitoringForNextCardWithBlock___block_invoke_cold_1(v7);
    }
  }
}

- (void)_validateCardForParsecFeedbackDelivery:(id)a3 validHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CRKCardViewControlling *)self->_cardViewController card];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 backingCard];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v13 = 136315394;
    v14 = "[SiriUICardSnippetViewController _validateCardForParsecFeedbackDelivery:validHandler:]";
    v15 = 1024;
    v16 = [v9 source];
    _os_log_impl(&dword_26948D000, v11, OS_LOG_TYPE_DEFAULT, "%s #cards Card source for backing card is %d", &v13, 0x12u);
  }

  if (v9)
  {
    if ([v9 source] == 1)
    {
      v12 = [v8 isEqual:v6];
      if (v7)
      {
        if (v12)
        {
          v7[2](v7);
        }
      }
    }
  }
}

- (void)_validateCardSectionForParsecFeedbackDelivery:(id)a3 validHandler:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(CRKCardViewControlling *)self->_cardViewController card];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 backingCard];
    v9 = v8;
    if (v8)
    {
      if ([v8 source] == 1)
      {
        v10 = [v7 cardSections];
        v11 = [v10 containsObject:v12];

        if (v6)
        {
          if (v11)
          {
            v6[2](v6);
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }
}

- (id)_metricsContextOfEventsForCard:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [v4 cardSections];
  v7 = [v6 count];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v5 setObject:v8 forKey:@"cardSectionCount"];

  v9 = [(SiriUICardSnippetViewController *)self snippet];
  v10 = [v9 aceId];

  if (v10)
  {
    [v5 setObject:v10 forKey:@"snippetAceId"];
  }

  v11 = [v4 interactions];
  v12 = [v11 anyObject];
  v13 = [v12 identifier];

  if (v13)
  {
    [v5 setObject:v13 forKey:@"interactionId"];
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [v4 backingCard];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 cardId];
      if (v16)
      {
        [v5 setObject:v16 forKey:@"cardId"];
      }

      v17 = [v15 resultIdentifier];
      if (v17)
      {
        [v5 setObject:v17 forKey:@"resultId"];
      }
    }
  }

  v18 = [v5 copy];

  return v18;
}

- (id)_metricsContextOfEventsForCardSection:(id)a3 inCard:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277CCABB0];
  v10 = [v7 cardSections];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "indexOfObject:", v6)}];
  [v8 setObject:v11 forKey:@"ordinalCardSectionPosition"];

  v12 = [v7 cardSections];
  v13 = [v12 count];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  [v8 setObject:v14 forKey:@"cardSectionCount"];

  v15 = [(SiriUICardSnippetViewController *)self snippet];
  v16 = [v15 aceId];

  if (v16)
  {
    [v8 setObject:v16 forKey:@"snippetAceId"];
  }

  v17 = [v7 interactions];
  v18 = [v17 anyObject];
  v19 = [v18 identifier];

  if (v19)
  {
    [v8 setObject:v19 forKey:@"interactionId"];
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [v6 backingCardSection];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 cardSectionId];
      if (v22)
      {
        [v8 setObject:v22 forKey:@"cardSectionId"];
      }

      v23 = [v21 resultIdentifier];
      if (v23)
      {
        [v8 setObject:v23 forKey:@"resultId"];
      }

      v30 = v22;
      v24 = [v21 nextCard];
      v25 = [v24 cardId];

      if (v25)
      {
        [v8 setObject:v25 forKey:@"nextCardId"];
      }

      v26 = [v21 nextCard];
      v27 = [v26 resultIdentifier];

      if (v27)
      {
        [v8 setObject:v27 forKey:@"nextCardResultId"];
      }
    }
  }

  v28 = [v8 copy];

  return v28;
}

- (void)_insertCardViewController:(id)a3
{
  [(SiriUICardSnippetViewController *)self _addCardViewControllerAsChildViewController:a3];
  v4 = [(SiriUICardSnippetViewController *)self view];
  [v4 reloadData];

  [(SiriUICardSnippetViewController *)self _updateContentSizeAndNotifyDelegateIfNecessary:1];
  v5 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v5 siriSnippetViewControllerViewDidLoad:self];
}

- (void)willConfirm
{
  v7.receiver = self;
  v7.super_class = SiriUICardSnippetViewController;
  [(SiriUISnippetViewController *)&v7 willConfirm];
  v3 = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = [v3 card];
  v5 = [v4 interactions];
  v6 = [v5 anyObject];

  if (v6)
  {
    [(SiriUICardSnippetViewController *)self _forwardProgressEventToCardViewController:0];
    [(SiriUISnippetViewController *)self _setAwaitingSuccessOrFailureEvent:1];
  }
}

- (void)_forwardProgressEventToCardViewController:(unint64_t)a3
{
  v5 = [(SiriUICardSnippetViewController *)self _cardViewController];
  [(SiriUICardSnippetViewController *)self _forwardProgressEvent:a3 toCardViewController:v5 animated:1];
}

- (void)_forwardProgressEvent:(unint64_t)a3 toCardViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CF9478]);
  [v8 setEvent:a3];
  [v8 setAnimatesProgress:v5];
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__SiriUICardSnippetViewController__forwardProgressEvent_toCardViewController_animated___block_invoke;
    v10[3] = &unk_279C5A0E0;
    v11 = v7;
    [v11 handleCardCommand:v8 reply:v10];
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriUICardSnippetViewController _forwardProgressEvent:v7 toCardViewController:v9 animated:?];
    }
  }
}

void __87__SiriUICardSnippetViewController__forwardProgressEvent_toCardViewController_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __87__SiriUICardSnippetViewController__forwardProgressEvent_toCardViewController_animated___block_invoke_cold_1(a1, v6, v7);
    }
  }
}

- (void)_navigationButtonTapped:(id)a3
{
  v4 = [(SiriUICardSnippetViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (id)localeForCardSnippetView:(id)a3
{
  v4 = [(SiriUISnippetViewController *)self _privateDelegate];
  v5 = [v4 localeForSiriViewController:self];

  return v5;
}

- (void)cardSnippetViewSashWasTapped:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(SiriUIBaseSnippetViewController *)self sashItem];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SiriUICardSnippetViewController cardSnippetViewSashWasTapped:]";
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_26948D000, v5, OS_LOG_TYPE_DEFAULT, "%s #cards Card snippet's sash %@ tapped", buf, 0x16u);
  }

  v6 = [v4 commands];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(SiriUIBaseSnippetViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    v10 = [(SiriUIBaseSnippetViewController *)self delegate];
    v11 = [v4 commands];
    if (v9)
    {
      [v10 siriSnippetViewController:self performAceCommands:v11 sashItem:v4];
    }

    else
    {
      [v10 siriViewController:self performAceCommands:v11];
    }

LABEL_13:

    goto LABEL_14;
  }

  v12 = [v4 applicationBundleIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [v4 canPunchout];

    if (v14)
    {
      v10 = objc_alloc_init(MEMORY[0x277D479F0]);
      v15 = [MEMORY[0x277CCAD78] UUID];
      v16 = [v15 UUIDString];
      [v10 setAceId:v16];

      [v10 setAppAvailableInStorefront:1];
      v17 = [v4 applicationBundleIdentifier];
      [v10 setBundleId:v17];

      v18 = [(SiriUIBaseSnippetViewController *)self delegate];
      LOBYTE(v16) = objc_opt_respondsToSelector();

      v11 = [(SiriUIBaseSnippetViewController *)self delegate];
      if (v16)
      {
        v21 = v10;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
        [v11 siriSnippetViewController:self performAceCommands:v19 sashItem:v4];
      }

      else
      {
        v20 = v10;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        [v11 siriViewController:self performAceCommands:v19];
      }

      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)cardViewControllerDidLoad:(id)a3
{
  v4 = a3;
  if ([(SiriUISnippetViewController *)self isLoading])
  {
    [(SiriUISnippetViewController *)self setLoading:0];
    [(SiriUICardSnippetViewController *)self _insertCardViewController:v4];
  }

  self->_isCardViewControllerLoading = 0;
  [(SiriUISnippetViewController *)self setUserConfirmationEnabled:1];
}

- (void)cardViewController:(id)a3 requestsHandlingOfIntent:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SiriUICardSnippetViewController_cardViewController_requestsHandlingOfIntent___block_invoke;
  block[3] = &unk_279C59D78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)performReferentialCommand:(id)a3 forCardViewController:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SiriUICardSnippetViewController performReferentialCommand:forCardViewController:]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Perform referential command %@", buf, 0x16u);
  }

  v9 = [v6 referenceIdentifier];
  v10 = [(NSMutableDictionary *)self->_referenceableCommandsByIdentifierMap objectForKey:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v6 userInfo];
    [v10 _siriui_applyUserInfoDictionary:v11];
  }

  if (v10)
  {
    SRUIFPopulateSendCommandWithInstrumentationTurn();
    v12 = [(SiriUIBaseSnippetViewController *)self delegate];
    v19 = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [v12 siriViewController:self performAceCommands:v13];
  }

  else
  {
    v14 = [(NSMutableDictionary *)self->_referenceableSnippetsByIdentifierMap objectForKey:v9];
    if (!v14)
    {
      v16 = 0;
      goto LABEL_10;
    }

    v12 = v14;
    v13 = [(SiriUIBaseSnippetViewController *)self delegate];
    v18 = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [v13 siriSnippetViewController:self pushSirilandSnippets:v15];
  }

  v16 = 1;
LABEL_10:

  return v16;
}

- (BOOL)performNextCardCommand:(id)a3 forCardViewController:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SiriUICardSnippetViewController performNextCardCommand:forCardViewController:]";
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_26948D000, v6, OS_LOG_TYPE_DEFAULT, "%s #cards Perform next card command %@", buf, 0x16u);
  }

  v7 = MEMORY[0x277D47200];
  v8 = self->_snippet;
  v9 = objc_alloc_init(v7);
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];
  [v9 setAceId:v11];

  v12 = MEMORY[0x277CF9450];
  v13 = [v5 nextCard];
  v14 = [v12 originalDataForCard:v13];
  [v9 setCardData:v14];

  v15 = [(SACardSnippet *)v8 referencedCommands];
  [v9 setReferencedCommands:v15];

  v16 = [(SACardSnippet *)v8 referencedSnippets];
  [v9 setReferencedSnippets:v16];

  v17 = [(SACardSnippet *)v8 sash];
  [v9 setSash:v17];

  v18 = [(SiriUIBaseSnippetViewController *)self delegate];
  v21 = v9;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v18 siriSnippetViewController:self pushSirilandSnippets:v19];

  [(SiriUICardSnippetViewController *)self beginAppearanceTransition:1 animated:0];
  [(SiriUICardSnippetViewController *)self endAppearanceTransition];

  return 1;
}

- (BOOL)performPunchoutCommand:(id)a3 forCardViewController:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[SiriUICardSnippetViewController performPunchoutCommand:forCardViewController:]";
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Perform punch out command %@", buf, 0x16u);
  }

  v9 = [v6 punchout];
  v10 = [v9 bundleIdentifier];
  v11 = [v6 punchout];
  v12 = [v11 urls];

  getSearchUICardViewControllerClass();
  if (objc_opt_isKindOfClass())
  {
    [v7 setThreeDTouchEnabled:0];
  }

  if (v10)
  {
    v13 = objc_alloc_init(MEMORY[0x277D479F0]);
    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];
    [v13 setAceId:v15];

    [v13 setAppAvailableInStorefront:1];
    [v13 setBundleId:v10];
    if ([v12 count])
    {
      v16 = [v12 firstObject];
      [v13 setPunchOutUri:v16];
    }

    v17 = [(SiriUIBaseSnippetViewController *)self delegate];
    v34 = v13;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [v17 siriViewController:self performAceCommands:v18];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = [v6 punchout];
    v13 = [v19 urls];

    v20 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v27 = v9;
      v28 = v7;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v13);
          }

          v24 = *(*(&v29 + 1) + 8 * i);
          v25 = [(SiriUIBaseSnippetViewController *)self delegate:v27];
          [v25 siriViewController:self openURL:v24 completion:0];
        }

        v21 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v21);
      v9 = v27;
      v7 = v28;
    }
  }

  return 1;
}

- (BOOL)performInvocationPayloadCommand:(id)a3 forCardViewController:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[SiriUICardSnippetViewController performInvocationPayloadCommand:forCardViewController:]";
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Perform invocation payload command %@", &v23, 0x16u);
  }

  [(SiriUICardSnippetViewController *)self _inspectPayloadForMetricsEvents:v6];
  v9 = objc_alloc(MEMORY[0x277D5C220]);
  v10 = [v6 invocationIdentifier];
  v11 = [v9 initWithIdentifier:v10];

  v12 = [v6 userInfo];
  [v11 setUserData:v12];

  v13 = objc_alloc_init(MEMORY[0x277D5C218]);
  [v13 setInputOrigin:*MEMORY[0x277D48400]];
  [v13 setInteractionType:*MEMORY[0x277D48470]];
  v14 = [MEMORY[0x277D5C210] runSiriKitExecutorCommandWithContext:v13 payload:v11];
  v15 = [MEMORY[0x277D5C210] wrapCommandInStartLocalRequest:v14];
  v16 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  v17 = [v16 currentInstrumentationTurnContext];

  v18 = [(SiriUIBaseSnippetViewController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(SiriUIBaseSnippetViewController *)self delegate];
    v21 = [v17 turnIdentifier];
    [v20 siriSnippetViewController:self handleStartLocalRequest:v15 turnIdentifier:v21];
  }

  return 1;
}

- (void)_inspectPayloadForMetricsEvents:(id)a3
{
  v4 = [a3 invocationIdentifier];
  v5 = [v4 isEqualToString:*MEMORY[0x277D5C2E0]];

  if (v5)
  {

    [(SiriUICardSnippetViewController *)self _emitInstrumentationEventWithInvocationSource:59];
  }
}

- (BOOL)performBeganEditingCommand:(id)a3 forCardViewController:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SiriUICardSnippetViewController performBeganEditingCommand:forCardViewController:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_26948D000, v6, OS_LOG_TYPE_DEFAULT, "%s #cards CRBeganEditingCommand received for %@. Hiding status view and alerting our delegate", &v10, 0x16u);
  }

  v7 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v7 siriSnippetViewController:self setStatusViewHidden:1];

  v8 = [(SiriUISnippetViewController *)self _privateDelegate];
  [v8 siriViewControllerWillBeginEditing:self];

  [(SiriUICardSnippetViewController *)self _emitInstrumentationEventForKeyboardInvocation];
  return 1;
}

- (BOOL)performFinishedEditingCommand:(id)a3 forCardViewController:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SiriUICardSnippetViewController performFinishedEditingCommand:forCardViewController:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_26948D000, v6, OS_LOG_TYPE_DEFAULT, "%s #cards CRFinishedEditingCommand received for %@. Showing status view and alerting our delegate", &v10, 0x16u);
  }

  v7 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v7 siriSnippetViewController:self setStatusViewHidden:0];

  v8 = [(SiriUISnippetViewController *)self _privateDelegate];
  [v8 siriViewControllerDidEndEditing:self];

  return 1;
}

- (CGSize)cardViewController:(id)a3 boundingSizeForCardSectionViewController:(id)a4
{
  v5 = [(SiriUIBaseSnippetViewController *)self delegate:a3];
  [v5 siriViewControllerExpectedWidth:self];
  v7 = v6 - 8.0 - 8.0;

  v8 = 1.79769313e308;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (unint64_t)navigationIndexOfCardViewController:(id)a3
{
  v4 = [(SiriUIBaseSnippetViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SiriUIBaseSnippetViewController *)self delegate];
    v6 = [v5 navigationIndexOfSnippetViewController:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)presentViewController:(id)a3 forCardViewController:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "[SiriUICardSnippetViewController presentViewController:forCardViewController:]";
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Presenting view controller: %@ for card view controller: %@", buf, 0x20u);
  }

  v9 = [(SiriUIModalContainerViewController *)v6 modalPresentationStyle];
  v10 = 0;
  v11 = v9 + 2;
  if ((v9 + 2) > 0xA)
  {
    v13 = 0;
    goto LABEL_6;
  }

  v12 = v6;
  if (((1 << v11) & 0x73B) == 0)
  {
    if (((1 << v11) & 0x84) != 0)
    {
      v12 = [[SiriUIModalContainerViewController alloc] initWithContentViewController:v6];
      [(SiriUIModalContainerViewController *)v12 setDelegate:self];
      v16 = [(SiriUISnippetViewController *)self _privateDelegate];
      [v16 siriSnippetViewController:self willPresentViewController:v6];

      v17 = [(SiriUIBaseSnippetViewController *)self delegate];
      [v17 siriSnippetViewController:self setStatusViewHidden:1];

      if (![(UIViewController *)v6 siriui_shouldHideStatusBar])
      {
        v10 = v12;
        goto LABEL_5;
      }

      v18 = [(SiriUIBaseSnippetViewController *)self delegate];
      [v18 siriSnippetViewController:self setStatusBarHidden:1 animated:1];
      v10 = v12;
    }

    else
    {
      v19 = [(SiriUIBaseSnippetViewController *)self delegate];
      [v19 siriSnippetViewController:self setStatusViewHidden:1];

      if ([(UIViewController *)v6 siriui_shouldHideStatusBar])
      {
        v20 = [(SiriUIBaseSnippetViewController *)self delegate];
        [v20 siriSnippetViewController:self setStatusBarHidden:1 animated:1];
      }

      v21 = [(SiriUIBaseSnippetViewController *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if ((v22 & 1) == 0)
      {
        v10 = 0;
        v12 = v6;
        goto LABEL_5;
      }

      v18 = [(SiriUIBaseSnippetViewController *)self delegate];
      [v18 siriViewController:self setTypeToSiriViewHidden:1];
      v10 = 0;
      v12 = v6;
    }
  }

LABEL_5:
  v13 = v10;
  v10 = v12;
LABEL_6:
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__SiriUICardSnippetViewController_presentViewController_forCardViewController___block_invoke;
  v23[3] = &unk_279C5A040;
  v24 = v13;
  v25 = self;
  v26 = v6;
  v14 = v6;
  v15 = v13;
  [(SiriUICardSnippetViewController *)self presentViewController:v10 animated:1 completion:v23];
}

void __79__SiriUICardSnippetViewController_presentViewController_forCardViewController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(a1 + 40) + 1312), v2);
  }

  v3 = [*(a1 + 40) _privateDelegate];
  [v3 siriSnippetViewController:*(a1 + 40) didPresentViewController:*(a1 + 48)];
}

- (void)cardViewController:(id)a3 willDismissViewController:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SiriUICardSnippetViewController cardViewController:willDismissViewController:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Card view controller %@ dismissing view controller %@", &v14, 0x20u);
  }

  v9 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v9 siriSnippetViewController:self setStatusViewHidden:0];

  if ([v6 siriui_shouldHideStatusBar])
  {
    v10 = [(SiriUIBaseSnippetViewController *)self delegate];
    [v10 siriSnippetViewController:self setStatusBarHidden:0 animated:1];
  }

  v11 = [(SiriUIBaseSnippetViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(SiriUIBaseSnippetViewController *)self delegate];
    [v13 siriViewController:self setTypeToSiriViewHidden:0];
  }
}

- (void)modalContainerViewControllerViewWillDisappear:(id)a3
{
  v4 = a3;
  v5 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v5 siriSnippetViewController:self setStatusViewHidden:0];

  v6 = [(SiriUISnippetViewController *)self _privateDelegate];
  v7 = [v4 contentViewController];
  [v6 siriSnippetViewController:self willDismissViewController:v7];

  v8 = [v4 contentViewController];

  LODWORD(v4) = [v8 siriui_shouldHideStatusBar];
  if (v4)
  {
    v9 = [(SiriUIBaseSnippetViewController *)self delegate];
    [v9 siriSnippetViewController:self setStatusBarHidden:0 animated:1];
  }
}

- (void)modalContainerViewControllerViewDidDisappear:(id)a3
{
  v4 = a3;
  v6 = [(SiriUISnippetViewController *)self _privateDelegate];
  v5 = [v4 contentViewController];

  [v6 siriSnippetViewController:self didDismissViewController:v5];
}

- (void)commandWasPerformed:(id)a3
{
  v4 = [a3 backingFeedback];
  if (v4)
  {
    v14 = v4;
    v5 = [(SiriUICardSnippetViewController *)self snippet];
    v6 = [v5 aceId];

    [MEMORY[0x277CCAD78] UUID];
    v7 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:v6];
    v8 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
    v9 = [v8 currentInstrumentationTurnContext];
    v10 = [v9 turnIdentifier];
    v11 = MEMORY[0x26D63F050]();

    v12 = [v11 isEqualToString:self->_feedbackEngagementInstrumentationIdentifier];
    v13 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
    [v13 emitVRXInstrumentationEvent:v14 aceViewId:v7 cardEngagementProcessed:v12];

    v4 = v14;
  }
}

- (void)cardSectionView:(id)a3 willProcessEngagementFeedback:(id)a4
{
  v5 = a3;
  v6 = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
  [(SiriUICardSnippetViewController *)self _instrumentCardSectionInteractionForCardSection:v5 previousTurn:v6];
}

- (void)userDidEngageCardSection:(id)a3 withEngagementFeedback:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 backingFeedback];
  if ([v7 actionTarget] == 1 || objc_msgSend(v7, "actionTarget") == 2)
  {
    if ([v7 actionTarget] == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4 * ([v7 actionTarget] == 2);
    }

    v9 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
    v10 = [v7 destination];
    v11 = [v10 urls];
    v12 = [v11 firstObject];
    v13 = [v7 destination];
    v14 = [v13 bundleIdentifier];
    [v9 emitPunchOutEventWithURL:v12 appID:v14 punchoutOrigin:v8];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __83__SiriUICardSnippetViewController_userDidEngageCardSection_withEngagementFeedback___block_invoke;
  v35[3] = &unk_279C59D78;
  v15 = v7;
  v36 = v15;
  [(SiriUICardSnippetViewController *)self _validateCardSectionForParsecFeedbackDelivery:v6 validHandler:v35];
  v16 = [(CRKCardViewControlling *)self->_cardViewController card];
  v17 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCardSection:v6 inCard:v16];

  v18 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  v19 = [v17 objectForKey:@"cardSectionId"];
  v20 = [v17 objectForKey:@"ordinalCardSectionPosition"];
  v21 = [v20 integerValue];
  v22 = [v17 objectForKey:@"snippetAceId"];
  [v18 emitUUFRCasinoCardSelectedEventWithCardSectionID:v19 ordinalCardSectionPosition:v21 snippetAceId:v22];

  v23 = MEMORY[0x277CEF098];
  v24 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = AFAnalyticsEventTypeGetName();
    *buf = 136315394;
    v38 = "[SiriUICardSnippetViewController userDidEngageCardSection:withEngagementFeedback:]";
    v39 = 2112;
    v40 = v26;
    _os_log_impl(&dword_26948D000, v25, OS_LOG_TYPE_DEFAULT, "%s Sending event to AFAnalytics: %@", buf, 0x16u);
  }

  v27 = [(SiriUICardSnippetViewController *)self _analytics];
  [v27 logEventWithType:3905 context:v17];

  v28 = *v23;
  if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v28;
    v30 = AFAnalyticsEventTypeGetName();
    *buf = 136315394;
    v38 = "[SiriUICardSnippetViewController userDidEngageCardSection:withEngagementFeedback:]";
    v39 = 2112;
    v40 = v30;
    _os_log_impl(&dword_26948D000, v29, OS_LOG_TYPE_DEFAULT, "%s Sending event to AFAnalytics: %@", buf, 0x16u);
  }

  v31 = [(SiriUICardSnippetViewController *)self _analytics];
  v32 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:v16];
  [v31 logEventWithType:3904 context:v32];

  v33 = [(SiriUIBaseSnippetViewController *)self delegate];
  LOBYTE(v32) = objc_opt_respondsToSelector();

  if (v32)
  {
    v34 = [(SiriUIBaseSnippetViewController *)self delegate];
    [v34 userTouchedSnippet];
  }
}

uint64_t __83__SiriUICardSnippetViewController_userDidEngageCardSection_withEngagementFeedback___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[SiriUICardSnippetViewController userDidEngageCardSection:withEngagementFeedback:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_26948D000, v2, OS_LOG_TYPE_DEFAULT, "%s #cards Sending feedback to registered feedbackListeners: %@", &v5, 0x16u);
  }

  [*(a1 + 32) queryId];
  return SFFeedbackNotify();
}

- (void)_instrumentCardSectionInteractionForCardSection:(id)a3 previousTurn:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v7];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 turnIdentifier];
    v24 = 136315650;
    v25 = "[SiriUICardSnippetViewController _instrumentCardSectionInteractionForCardSection:previousTurn:]";
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_26948D000, v10, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v24, 0x20u);
  }

  v12 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [v12 storeCurrentInstrumentationTurnContext:v8];

  v13 = [(SACardSnippet *)self->_snippet responseViewId];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277D5A928]);
    [v14 setInvocationSource:11];
    v15 = objc_alloc_init(MEMORY[0x277D5ACB0]);
    v16 = [v6 cardSectionIdentifier];
    [v15 setViewID:v16];

    [v14 setViewContainer:v15];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v6 backingCardSection];
      v18 = [v17 resultIdentifier];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v18)
      {
        v19 = objc_alloc_init(MEMORY[0x277D5ACA8]);
        [v19 setResultIdentifier:v18];
        [v14 setCardInvocationContext:v19];
      }

      v20 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
      [v20 emitInstrumentation:v14];
    }
  }

  v21 = [v8 turnIdentifier];
  v22 = [v21 UUIDString];
  feedbackEngagementInstrumentationIdentifier = self->_feedbackEngagementInstrumentationIdentifier;
  self->_feedbackEngagementInstrumentationIdentifier = v22;
}

- (void)_emitInstrumentationEventWithInvocationSource:(int)a3
{
  v3 = *&a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v5 setInvocationSource:v3];
  v6 = MEMORY[0x277CEF168];
  v7 = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
  v8 = [v6 newTurnBasedContextWithPreviousTurnID:v7];

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 turnIdentifier];
    v12 = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
    v15 = 136315650;
    v16 = "[SiriUICardSnippetViewController _emitInstrumentationEventWithInvocationSource:]";
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_26948D000, v10, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v15, 0x20u);
  }

  v13 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [v13 storeCurrentInstrumentationTurnContext:v8];

  v14 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [v14 emitInstrumentation:v5];
}

- (void)_emitInstrumentationEventForKeyboardInvocation
{
  v8 = objc_alloc_init(MEMORY[0x277D5A7F0]);
  v3 = MEMORY[0x277D5ACF0];
  v4 = [(SiriUICardSnippetViewController *)self textInputMode];
  v5 = [v4 primaryLanguage];
  v6 = [v3 convertLanguageCodeToSchemaLocale:v5];

  [v8 setKeyboardLocale:v6];
  [v8 setKeyboardPresented:1];
  v7 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v7 setInvocationSource:11];
  [v7 setKeyboardInvocationContext:v8];
  [(SiriUICardSnippetViewController *)self _emitInstrumentationEvent:v7 requiresNewTurn:1];
}

- (void)_emitInstrumentationEvent:(id)a3 requiresNewTurn:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4)
  {
    v7 = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
    v8 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:v7];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v8 turnIdentifier];
      v14 = 136315650;
      v15 = "[SiriUICardSnippetViewController _emitInstrumentationEvent:requiresNewTurn:]";
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_26948D000, v10, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v14, 0x20u);
    }

    v12 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
    [v12 storeCurrentInstrumentationTurnContext:v8];
  }

  v13 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [v13 emitInstrumentation:v6];
}

- (void)userDidReportFeedback:(id)a3 fromCardSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  v9 = [(CRKCardViewControlling *)self->_cardViewController card];
  if (objc_opt_respondsToSelector())
  {
    v10 = [v9 backingCard];
  }

  else
  {
    v10 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = 0;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = [v7 backingCardSection];
  if (v10)
  {
LABEL_8:
    v12 = [v10 fbr];
    [v8 setFbr:v12];
  }

LABEL_9:
  if (v11)
  {
    v13 = [v11 resultIdentifier];
    [v8 setIdentifier:v13];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SiriUICardSnippetViewController_userDidReportFeedback_fromCardSection___block_invoke;
  v16[3] = &unk_279C5A018;
  v17 = v6;
  v18 = v8;
  v14 = v8;
  v15 = v6;
  [(SiriUICardSnippetViewController *)self _validateCardSectionForParsecFeedbackDelivery:v7 validHandler:v16];
}

void __73__SiriUICardSnippetViewController_userDidReportFeedback_fromCardSection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) backingFeedback];
    [v2 setResult:*(a1 + 40)];
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "[SiriUICardSnippetViewController userDidReportFeedback:fromCardSection:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_26948D000, v3, OS_LOG_TYPE_DEFAULT, "%s #cards Sending user response feedback to registered feedbackListeners: %@", &v4, 0x16u);
    }

    [v2 queryId];
    SFFeedbackNotify();
  }
}

- (void)cardViewWillAppearForCard:(id)a3 withAppearanceFeedback:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(CRKCardViewControlling *)self->_cardViewController card:a3];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = AFAnalyticsEventTypeGetName();
    v11 = 136315394;
    v12 = "[SiriUICardSnippetViewController cardViewWillAppearForCard:withAppearanceFeedback:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_26948D000, v7, OS_LOG_TYPE_DEFAULT, "%s #cards Sending event to AFAnalytics: %@", &v11, 0x16u);
  }

  v9 = [(SiriUICardSnippetViewController *)self _analytics];
  v10 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:v5];
  [v9 logEventWithType:3900 context:v10];
}

- (void)cardViewDidAppearForCard:(id)a3 withAppearanceFeedback:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__SiriUICardSnippetViewController_cardViewDidAppearForCard_withAppearanceFeedback___block_invoke;
  v14[3] = &unk_279C59D78;
  v7 = v6;
  v15 = v7;
  [(SiriUICardSnippetViewController *)self _validateCardForParsecFeedbackDelivery:a3 validHandler:v14];
  v8 = [(CRKCardViewControlling *)self->_cardViewController card];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = AFAnalyticsEventTypeGetName();
    *buf = 136315394;
    v17 = "[SiriUICardSnippetViewController cardViewDidAppearForCard:withAppearanceFeedback:]";
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_26948D000, v10, OS_LOG_TYPE_DEFAULT, "%s #cards Sending event to AFAnalytics: %@", buf, 0x16u);
  }

  v12 = [(SiriUICardSnippetViewController *)self _analytics];
  v13 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:v8];
  [v12 logEventWithType:3901 context:v13];
}

void __83__SiriUICardSnippetViewController_cardViewDidAppearForCard_withAppearanceFeedback___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) backingFeedback];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[SiriUICardSnippetViewController cardViewDidAppearForCard:withAppearanceFeedback:]_block_invoke";
    v5 = 2112;
    v6 = v1;
    _os_log_impl(&dword_26948D000, v2, OS_LOG_TYPE_DEFAULT, "%s #cards Sending feedback to registered feedbackListeners: %@", &v3, 0x16u);
  }

  [v1 queryId];
  SFFeedbackNotify();
}

- (void)cardViewDidDisappearForCard:(id)a3 withDisappearanceFeedback:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__SiriUICardSnippetViewController_cardViewDidDisappearForCard_withDisappearanceFeedback___block_invoke;
  v8[3] = &unk_279C59D78;
  v9 = v6;
  v7 = v6;
  [(SiriUICardSnippetViewController *)self _validateCardForParsecFeedbackDelivery:a3 validHandler:v8];
}

void __89__SiriUICardSnippetViewController_cardViewDidDisappearForCard_withDisappearanceFeedback___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) backingFeedback];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "[SiriUICardSnippetViewController cardViewDidDisappearForCard:withDisappearanceFeedback:]_block_invoke";
    v5 = 2112;
    v6 = v1;
    _os_log_impl(&dword_26948D000, v2, OS_LOG_TYPE_DEFAULT, "%s #cards Sending feedback to registered feedbackListeners: %@", &v3, 0x16u);
  }

  [v1 queryId];
  SFFeedbackNotify();
}

- (void)cardSectionViewWillAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  cardViewController = self->_cardViewController;
  v6 = a3;
  v7 = [(CRKCardViewControlling *)cardViewController card];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = AFAnalyticsEventTypeGetName();
    v13 = 136315394;
    v14 = "[SiriUICardSnippetViewController cardSectionViewWillAppearForCardSection:withAppearanceFeedback:]";
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_26948D000, v9, OS_LOG_TYPE_DEFAULT, "%s #cards Sending event to AFAnalytics: %@", &v13, 0x16u);
  }

  v11 = [(SiriUICardSnippetViewController *)self _analytics];
  v12 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCardSection:v6 inCard:v7];

  [v11 logEventWithType:3902 context:v12];
}

- (void)cardSectionViewDidAppearForCardSection:(id)a3 withAppearanceFeedback:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  cardViewController = self->_cardViewController;
  v6 = a3;
  v7 = [(CRKCardViewControlling *)cardViewController card];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = AFAnalyticsEventTypeGetName();
    v13 = 136315394;
    v14 = "[SiriUICardSnippetViewController cardSectionViewDidAppearForCardSection:withAppearanceFeedback:]";
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_26948D000, v9, OS_LOG_TYPE_DEFAULT, "%s #cards Sending event to AFAnalytics: %@", &v13, 0x16u);
  }

  v11 = [(SiriUICardSnippetViewController *)self _analytics];
  v12 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCardSection:v6 inCard:v7];

  [v11 logEventWithType:3903 context:v12];
}

- (void)controllerForCard:(id)a3 didRequestAsyncCard:(id)a4 withAsyncCardRequestFeedback:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = AFAnalyticsEventTypeGetName();
    v12 = 136315394;
    v13 = "[SiriUICardSnippetViewController controllerForCard:didRequestAsyncCard:withAsyncCardRequestFeedback:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Sending event to AFAnalytics: %@", &v12, 0x16u);
  }

  v10 = [(SiriUICardSnippetViewController *)self _analytics];
  v11 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:v6];
  [v10 logEventWithType:3906 context:v11];
}

- (void)controllerForCard:(id)a3 didReceiveAsyncCard:(id)a4 withAsyncCardReceiptFeedback:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = AFAnalyticsEventTypeGetName();
    v12 = 136315394;
    v13 = "[SiriUICardSnippetViewController controllerForCard:didReceiveAsyncCard:withAsyncCardReceiptFeedback:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Sending event to AFAnalytics: %@", &v12, 0x16u);
  }

  v10 = [(SiriUICardSnippetViewController *)self _analytics];
  v11 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:v6];
  [v10 logEventWithType:3907 context:v11];
}

- (BOOL)cardLoader:(id)a3 loadCard:(id)a4 withCompletionHandler:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = [v7 entityIdentifier];
  v11 = [v9 initWithData:v10 encoding:4];
  v12 = [v11 stringByRemovingPercentEncoding];

  [v12 componentsSeparatedByString:@"&"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v35 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v29 = v12;
    v30 = v8;
    v31 = v7;
    v16 = *v33;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [v18 rangeOfString:@"="];
        v20 = [v18 substringToIndex:v19];
        v21 = [v18 substringFromIndex:v19 + 1];
        if ([v20 isEqualToString:@"utterance"])
        {

          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v21 = 0;
LABEL_11:
    v8 = v30;
    v7 = v31;
    v12 = v29;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "[SiriUICardSnippetViewController cardLoader:loadCard:withCompletionHandler:]";
    v39 = 2112;
    v40 = v21;
    _os_log_impl(&dword_26948D000, v22, OS_LOG_TYPE_DEFAULT, "%s #cards Machine utterance %@ for card loading", buf, 0x16u);
  }

  v23 = objc_alloc_init(MEMORY[0x277D47948]);
  v24 = [MEMORY[0x277CCAD78] UUID];
  v25 = [v24 UUIDString];
  [v23 setAceId:v25];

  [v23 setUtterance:v21];
  [(SiriUICardSnippetViewController *)self _beginMonitoringForNextCardWithBlock:v8];
  v26 = [(SiriUIBaseSnippetViewController *)self delegate];
  v36 = v23;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [v26 siriViewController:self performAceCommands:v27];

  return 1;
}

- (void)cardLoadingMonitor:(id)a3 didReceiveCardSnippet:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  objc_storeStrong(&self->_newlyLoadedCardSnippet, a4);
  v8 = a3;
  [(NSTimer *)self->_cardLoadingTimer invalidate];
  cardLoadingTimer = self->_cardLoadingTimer;
  self->_cardLoadingTimer = 0;

  [v8 removeObserver:self];
  newlyLoadedCardSnippet = self->_newlyLoadedCardSnippet;
  if (newlyLoadedCardSnippet)
  {
    v11 = [(SACardSnippet *)newlyLoadedCardSnippet siriui_card];
    v12 = [v11 backingCard];

    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[SiriUICardSnippetViewController cardLoadingMonitor:didReceiveCardSnippet:]";
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_26948D000, v13, OS_LOG_TYPE_DEFAULT, "%s #cards CardLoadingMonitor received next card %@", &v17, 0x16u);
    }

    cardLoadingCompletionhandler = self->_cardLoadingCompletionhandler;
    if (cardLoadingCompletionhandler)
    {
      cardLoadingCompletionhandler[2](cardLoadingCompletionhandler, v12, 0);
      v15 = self->_cardLoadingCompletionhandler;
      self->_cardLoadingCompletionhandler = 0;
    }

    v16 = self->_newlyLoadedCardSnippet;
    self->_newlyLoadedCardSnippet = 0;
  }

  os_unfair_lock_lock(&cardLoadingLock);
  self->_isCardLoading = 0;
  os_unfair_lock_unlock(&cardLoadingLock);
}

- (void)cardLoadingMonitor:(id)a3 didReceiveVisualResponseSnippet:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  cardLoadingTimer = self->_cardLoadingTimer;
  v7 = a4;
  v8 = a3;
  [(NSTimer *)cardLoadingTimer invalidate];
  v9 = self->_cardLoadingTimer;
  self->_cardLoadingTimer = 0;

  [v8 removeObserver:self];
  cardLoadingCompletionhandler = self->_cardLoadingCompletionhandler;
  self->_cardLoadingCompletionhandler = 0;

  v11 = [(SiriUIBaseSnippetViewController *)self delegate];
  v13[0] = v7;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  [v11 siriSnippetViewController:self pushSirilandSnippets:v12];
  os_unfair_lock_lock(&cardLoadingLock);
  self->_isCardLoading = 0;
  os_unfair_lock_unlock(&cardLoadingLock);
}

- (Class)transparentHeaderViewClass
{
  v2 = [(SACardSnippet *)self->_snippet title];

  if (v2)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)configureReusableTransparentHeaderView:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    snippet = self->_snippet;
    v5 = v7;
    v6 = [(SACardSnippet *)snippet title];
    [v5 configureWithTitle:v6];
  }
}

- (double)desiredHeightForTransparentHeaderView
{
  v2 = [(SiriUICardSnippetViewController *)self transparentHeaderViewClass];

  [(objc_class *)v2 defaultHeight];
  return result;
}

- (double)boundingWidthForPresentation:(id)a3
{
  v4 = [(SiriUIBaseSnippetViewController *)self delegate];
  [v4 boundingWidthForSnippetViewController:self];
  v6 = v5;

  return v6;
}

- (void)_logCardRelationshipIdentifiedForCompactCard:(id)a3 fullCard:(id)a4 snippet:(id)a5
{
  v8 = a5;
  v9 = a4;
  v15 = [a3 cardId];
  v10 = [v9 cardId];

  v11 = [v8 aceId];

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v12 setValue:v15 forKey:@"compactId"];
  [v12 setValue:v10 forKey:@"regularId"];
  [v12 setValue:v11 forKey:@"snippetAceId"];
  v13 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [v13 emitCasinoRelationshipEventWithViewIDFrom:v15 ViewIDTo:v10 casinoFromType:1];

  v14 = [(SiriUICardSnippetViewController *)self _analytics];
  [v14 logEventWithType:3908 context:v12];
}

void __46__SiriUICardSnippetViewController_setSnippet___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[SiriUICardSnippetViewController setSnippet:]_block_invoke";
  *&v3[12] = 2112;
  *&v3[14] = a1;
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_1_0(&dword_26948D000, a2, a3, "%s #cards Error %@ in attempting to configure CRKCardPresentation with card %@", *v3, *&v3[8], *&v3[16], *(a2 + 32));
}

void __72__SiriUICardSnippetViewController__beginMonitoringForNextCardWithBlock___block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SiriUICardSnippetViewController _beginMonitoringForNextCardWithBlock:]_block_invoke";
  _os_log_error_impl(&dword_26948D000, log, OS_LOG_TYPE_ERROR, "%s #cards Failed to load second level card", &v1, 0xCu);
}

- (void)_forwardProgressEvent:(uint64_t)a1 toCardViewController:(NSObject *)a2 animated:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SiriUICardSnippetViewController _forwardProgressEvent:toCardViewController:animated:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_26948D000, a2, OS_LOG_TYPE_ERROR, "%s Card view controller %@ is unable to handle card command", &v2, 0x16u);
}

void __87__SiriUICardSnippetViewController__forwardProgressEvent_toCardViewController_animated___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[SiriUICardSnippetViewController _forwardProgressEvent:toCardViewController:animated:]_block_invoke";
  *&v3[12] = 2112;
  *&v3[14] = *(a1 + 32);
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_1_0(&dword_26948D000, a2, a3, "%s Failed to handle progress undate command for card view controller %@ with error: %@", *v3, *&v3[8], *&v3[16], a2);
}

@end