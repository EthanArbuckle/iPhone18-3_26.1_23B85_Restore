@interface SiriUICardSnippetViewController
+ (void)initialize;
- (BOOL)cardLoader:(id)loader loadCard:(id)card withCompletionHandler:(id)handler;
- (BOOL)isNavigating;
- (BOOL)logContentsIfApplicable;
- (BOOL)performBeganEditingCommand:(id)command forCardViewController:(id)controller;
- (BOOL)performFinishedEditingCommand:(id)command forCardViewController:(id)controller;
- (BOOL)performInvocationPayloadCommand:(id)command forCardViewController:(id)controller;
- (BOOL)performNextCardCommand:(id)command forCardViewController:(id)controller;
- (BOOL)performPunchoutCommand:(id)command forCardViewController:(id)controller;
- (BOOL)performReferentialCommand:(id)command forCardViewController:(id)controller;
- (CGSize)cardViewController:(id)controller boundingSizeForCardSectionViewController:(id)viewController;
- (Class)transparentHeaderViewClass;
- (SiriUICardSnippetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIEdgeInsets)defaultViewInsets;
- (double)boundingWidthForPresentation:(id)presentation;
- (double)desiredHeight;
- (double)desiredHeightForTransparentHeaderView;
- (id)_metricsContextOfEventsForCard:(id)card;
- (id)_metricsContextOfEventsForCardSection:(id)section inCard:(id)card;
- (id)localeForCardSnippetView:(id)view;
- (id)requestContext;
- (unint64_t)navigationIndexOfCardViewController:(id)controller;
- (void)_addCardViewControllerAsChildViewController:(id)controller;
- (void)_addNextCardTo:(id)to fullCard:(id)card;
- (void)_beginMonitoringForNextCardWithBlock:(id)block;
- (void)_emitInstrumentationEvent:(id)event requiresNewTurn:(BOOL)turn;
- (void)_emitInstrumentationEventForKeyboardInvocation;
- (void)_emitInstrumentationEventWithInvocationSource:(int)source;
- (void)_forwardProgressEvent:(unint64_t)event toCardViewController:(id)controller animated:(BOOL)animated;
- (void)_forwardProgressEventToCardViewController:(unint64_t)controller;
- (void)_insertCardViewController:(id)controller;
- (void)_inspectPayloadForMetricsEvents:(id)events;
- (void)_instrumentCardSectionInteractionForCardSection:(id)section previousTurn:(id)turn;
- (void)_logCardRelationshipIdentifiedForCompactCard:(id)card fullCard:(id)fullCard snippet:(id)snippet;
- (void)_navigationButtonTapped:(id)tapped;
- (void)_removeBottomKeylineFromCard:(id)card;
- (void)_removeCardViewControllerFromParentViewController:(id)controller;
- (void)_removeShouldHideInAmbientSectionsFromCurrentCard;
- (void)_setCardViewController:(id)controller;
- (void)_updateContentSizeAndNotifyDelegateIfNecessary:(BOOL)necessary;
- (void)_validateCardForParsecFeedbackDelivery:(id)delivery validHandler:(id)handler;
- (void)_validateCardSectionForParsecFeedbackDelivery:(id)delivery validHandler:(id)handler;
- (void)backgroundColorView:(id)view didFinishColorUpdate:(id)update;
- (void)cardLoadingMonitor:(id)monitor didReceiveCardSnippet:(id)snippet;
- (void)cardLoadingMonitor:(id)monitor didReceiveVisualResponseSnippet:(id)snippet;
- (void)cardSectionView:(id)view willProcessEngagementFeedback:(id)feedback;
- (void)cardSectionViewDidAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback;
- (void)cardSectionViewWillAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback;
- (void)cardSnippetViewSashWasTapped:(id)tapped;
- (void)cardViewController:(id)controller requestsHandlingOfIntent:(id)intent;
- (void)cardViewController:(id)controller willDismissViewController:(id)viewController;
- (void)cardViewControllerDidLoad:(id)load;
- (void)cardViewDidAppearForCard:(id)card withAppearanceFeedback:(id)feedback;
- (void)cardViewDidDisappearForCard:(id)card withDisappearanceFeedback:(id)feedback;
- (void)cardViewWillAppearForCard:(id)card withAppearanceFeedback:(id)feedback;
- (void)commandWasPerformed:(id)performed;
- (void)configureContentWithSizeClass:(int64_t)class;
- (void)configureReusableTransparentHeaderView:(id)view;
- (void)controllerForCard:(id)card didReceiveAsyncCard:(id)asyncCard withAsyncCardReceiptFeedback:(id)feedback;
- (void)controllerForCard:(id)card didRequestAsyncCard:(id)asyncCard withAsyncCardRequestFeedback:(id)feedback;
- (void)loadView;
- (void)modalContainerViewControllerViewDidDisappear:(id)disappear;
- (void)modalContainerViewControllerViewWillDisappear:(id)disappear;
- (void)presentViewController:(id)controller forCardViewController:(id)viewController;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setIsInAmbientInteractivity:(BOOL)interactivity;
- (void)setNavigating:(BOOL)navigating;
- (void)setSnippet:(id)snippet;
- (void)siriDidDeactivate;
- (void)siriDidReceiveViewsWithDialogPhase:(id)phase;
- (void)siriDidScrollVisible:(BOOL)visible;
- (void)siriDidStartSpeakingWithIdentifier:(id)identifier;
- (void)siriDidStopSpeakingWithIdentifier:(id)identifier speechQueueIsEmpty:(BOOL)empty;
- (void)siriDidTapOutsideContent;
- (void)siriDidUpdateASRWithRecognition:(id)recognition;
- (void)siriWillBeginScrolling;
- (void)siriWillStartRequest;
- (void)userDidEngageCardSection:(id)section withEngagementFeedback:(id)feedback;
- (void)userDidReportFeedback:(id)feedback fromCardSection:(id)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)wasAddedToTranscript;
- (void)willCancel;
- (void)willConfirm;
@end

@implementation SiriUICardSnippetViewController

+ (void)initialize
{
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___SiriUICardSnippetViewController;
  objc_msgSendSuper2(&v17, sel_initialize);
  +[(CRKCardSectionViewController *)SiriUILegacyStocksChartCardSectionViewController];
  appearance = [MEMORY[0x277CF93D0] appearance];
  siriui_highlightColor = [MEMORY[0x277D75348] siriui_highlightColor];
  [appearance setBackgroundColor:siriui_highlightColor forState:1];

  appearance2 = [MEMORY[0x277CF93D0] appearance];
  siriui_highlightColor2 = [MEMORY[0x277D75348] siriui_highlightColor];
  [appearance2 setBackgroundColor:siriui_highlightColor2 forState:4];

  appearance3 = [MEMORY[0x277CF93D0] appearance];
  siriui_highlightColor3 = [MEMORY[0x277D75348] siriui_highlightColor];
  [appearance3 setBackgroundColor:siriui_highlightColor3 forState:5];

  feedbackListenerForParsec = [MEMORY[0x277D0ED00] feedbackListenerForParsec];
  SFFeedbackListenerRegister();

  mEMORY[0x277D007C0] = [MEMORY[0x277D007C0] sharedSession];
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

- (SiriUICardSnippetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v13.receiver = self;
  v13.super_class = SiriUICardSnippetViewController;
  v4 = [(SiriUISnippetViewController *)&v13 initWithNibName:name bundle:bundle];
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

    _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
    [(SiriUICardSnippetViewController *)self _addCardViewControllerAsChildViewController:_cardViewController];

    view = [(SiriUICardSnippetViewController *)self view];
    [view reloadData];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SiriUICardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v5 viewDidLoad];
  view = [(SiriUICardSnippetViewController *)self view];
  backNavigationButton = [view backNavigationButton];
  [backNavigationButton addTarget:self action:sel__navigationButtonTapped_ forControlEvents:64];
}

- (void)backgroundColorView:(id)view didFinishColorUpdate:(id)update
{
  v12 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SiriUICardSnippetViewController backgroundColorView:didFinishColorUpdate:]";
    v10 = 1024;
    v11 = updateCopy != 0;
    _os_log_impl(&dword_26948D000, v6, OS_LOG_TYPE_DEFAULT, "%s #background SearchUI color update successful %d", &v8, 0x12u);
  }

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriSnippetViewController:self isBackgroundColorUpdateSuccessful:updateCopy != 0];
}

- (void)setIsInAmbient:(BOOL)ambient
{
  if (self->_isInAmbient == ambient)
  {
    return;
  }

  ambientCopy = ambient;
  self->_isInAmbient = ambient;
  cardViewController = self->_cardViewController;
  if (ambient)
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

  view = [(SiriUICardSnippetViewController *)self view];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    view2 = [(SiriUICardSnippetViewController *)self view];
    [view2 setIsInAmbient:ambientCopy];
  }
}

- (void)_removeShouldHideInAmbientSectionsFromCurrentCard
{
  v28 = *MEMORY[0x277D85DE8];
  getSearchUICardViewControllerClass();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_cardViewController;
    card = [(CRKCardViewControlling *)v3 card];
    cardSections = [card cardSections];
    v6 = [cardSections count];

    if (v6)
    {
      v7 = [card copy];
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      cardSections2 = [card cardSections];
      v10 = [cardSections2 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
              objc_enumerationMutation(cardSections2);
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

          v11 = [cardSections2 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v11);

        v3 = v20;
        v18 = card;
        v7 = v19;
        if (v12)
        {
          [v19 setCardSections:v8];
          v18 = v19;
        }
      }

      else
      {

        v18 = card;
      }

      [(CRKCardViewControlling *)v3 setCard:v18];
    }
  }
}

- (void)setIsInAmbientInteractivity:(BOOL)interactivity
{
  interactivityCopy = interactivity;
  view = [(SiriUICardSnippetViewController *)self view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    view2 = [(SiriUICardSnippetViewController *)self view];
    [view2 setIsInAmbientInteractivity:interactivityCopy];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SiriUICardSnippetViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279C5A068;
  v9[4] = self;
  coordinatorCopy = coordinator;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
  v8.receiver = self;
  v8.super_class = SiriUICardSnippetViewController;
  [(SiriUICardSnippetViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = SiriUICardSnippetViewController;
  [(SiriUISnippetViewController *)&v10 viewDidAppear:appear];
  [(SiriUICardSnippetViewController *)self _updateContentSizeAndNotifyDelegateIfNecessary:1];
  presentedModalContainerViewController = self->_presentedModalContainerViewController;
  if (presentedModalContainerViewController)
  {
    contentViewController = [(SiriUIModalContainerViewController *)presentedModalContainerViewController contentViewController];
    siriui_shouldHideStatusBar = [contentViewController siriui_shouldHideStatusBar];

    if (siriui_shouldHideStatusBar)
    {
      delegate = [(SiriUIBaseSnippetViewController *)self delegate];
      [delegate siriSnippetViewController:self setStatusBarHidden:0 animated:1];
    }

    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    [delegate2 siriSnippetViewController:self setStatusViewHidden:0];

    v9 = self->_presentedModalContainerViewController;
    self->_presentedModalContainerViewController = 0;
  }

  if (self->_isCardViewControllerLoading)
  {
    [(SiriUISnippetViewController *)self setUserConfirmationEnabled:0];
  }
}

- (void)configureContentWithSizeClass:(int64_t)class
{
  if (self->_sizeClass != class)
  {
    self->_sizeClass = class;
  }
}

- (void)_addNextCardTo:(id)to fullCard:(id)card
{
  v33 = *MEMORY[0x277D85DE8];
  toCopy = to;
  cardCopy = card;
  cardSections = [toCopy cardSections];
  if (![cardSections count])
  {
LABEL_20:

    goto LABEL_21;
  }

  if ([cardCopy type] == 2)
  {

LABEL_5:
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    cardSections2 = [toCopy cardSections];
    v12 = [cardSections2 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(cardSections2);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          nextCard = [v16 nextCard];

          if (nextCard)
          {
            nextCard2 = [v16 nextCard];
            backingCard = [nextCard2 backingCard];

            backingCard2 = [cardCopy backingCard];
            if ([backingCard afui_hasContentEqualTo:backingCard2])
            {
              backingCard3 = [toCopy backingCard];
              backingCard4 = [cardCopy backingCard];
              [(SiriUICardSnippetViewController *)self _logCardRelationshipIdentifiedForCompactCard:backingCard3 fullCard:backingCard4 snippet:self->_snippet];
            }

            v18 = 1;
            goto LABEL_17;
          }
        }

        v13 = [cardSections2 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_17:

    cardSections3 = [toCopy cardSections];
    cardSections = [cardSections3 firstObject];

    if ((v18 & 1) == 0)
    {
      punchoutOptions = [cardSections punchoutOptions];

      if (!punchoutOptions)
      {
        [cardSections setNextCard:cardCopy];
        backingCard5 = [toCopy backingCard];
        backingCard6 = [cardCopy backingCard];
        [(SiriUICardSnippetViewController *)self _logCardRelationshipIdentifiedForCompactCard:backingCard5 fullCard:backingCard6 snippet:self->_snippet];
      }
    }

    goto LABEL_20;
  }

  cardSections4 = [cardCopy cardSections];
  v10 = [cardSections4 count];

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_21:
}

- (void)_removeBottomKeylineFromCard:(id)card
{
  cardCopy = card;
  cardSections = [cardCopy cardSections];
  v4 = [cardSections count];

  if (v4)
  {
    cardSections2 = [cardCopy cardSections];
    lastObject = [cardSections2 lastObject];

    [lastObject setSeparatorStyle:1];
  }
}

- (void)setSnippet:(id)snippet
{
  v73 = *MEMORY[0x277D85DE8];
  snippetCopy = snippet;
  snippet = self->_snippet;
  if (snippet != snippetCopy && ([(SACardSnippet *)snippet isEqual:snippetCopy]& 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = snippetCopy;
      objc_storeStrong(&self->_snippet, snippet);
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      referencedCommands = [(SACardSnippet *)self->_snippet referencedCommands];
      v8 = [referencedCommands countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (v8)
      {
        v9 = *v64;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v64 != v9)
            {
              objc_enumerationMutation(referencedCommands);
            }

            v11 = *(*(&v63 + 1) + 8 * i);
            referenceableCommandsByIdentifierMap = self->_referenceableCommandsByIdentifierMap;
            aceId = [v11 aceId];
            [(NSMutableDictionary *)referenceableCommandsByIdentifierMap setObject:v11 forKey:aceId];
          }

          v8 = [referencedCommands countByEnumeratingWithState:&v63 objects:v72 count:16];
        }

        while (v8);
      }

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      referencedSnippets = [(SACardSnippet *)self->_snippet referencedSnippets];
      v15 = [referencedSnippets countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (v15)
      {
        v16 = *v60;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v60 != v16)
            {
              objc_enumerationMutation(referencedSnippets);
            }

            v18 = *(*(&v59 + 1) + 8 * j);
            referenceableSnippetsByIdentifierMap = self->_referenceableSnippetsByIdentifierMap;
            aceId2 = [v18 aceId];
            [(NSMutableDictionary *)referenceableSnippetsByIdentifierMap setObject:v18 forKey:aceId2];
          }

          v15 = [referencedSnippets countByEnumeratingWithState:&v59 objects:v71 count:16];
        }

        while (v15);
      }

      mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
      cardLoggingEnabled = [mEMORY[0x277CEF368] cardLoggingEnabled];

      if (cardLoggingEnabled)
      {
        [(SiriUICardSnippetViewController *)self logContentsIfApplicable];
      }

      v23 = objc_alloc_init(MEMORY[0x277CF93A8]);
      cardPresentation = self->_cardPresentation;
      self->_cardPresentation = v23;

      [(CRKCardPresentation *)self->_cardPresentation setDelegate:self];
      siriui_card = [(SACardSnippet *)self->_snippet siriui_card];
      interactions = [siriui_card interactions];
      anyObject = [interactions anyObject];

      intent = [anyObject intent];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      siriui_card_compact = [(SACardSnippet *)self->_snippet siriui_card_compact];
      backingCard = [siriui_card backingCard];
      originalCard = self->_originalCard;
      self->_originalCard = backingCard;

      _instrumentationManager = [(SiriUICardSnippetViewController *)self _instrumentationManager];
      backingCard2 = [siriui_card backingCard];
      cardId = [backingCard2 cardId];
      aceId3 = [(SACardSnippet *)self->_snippet aceId];
      [_instrumentationManager storeCardID:cardId forSnippetAceID:aceId3];

      if (self->_sizeClass != 1 || ([siriui_card_compact backingCard], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "cardSections"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v36 == 0, v36, v35, v37))
      {
        v41 = siriui_card;
      }

      else
      {
        v38 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v68 = "[SiriUICardSnippetViewController setSnippet:]";
          v69 = 2112;
          v70 = siriui_card_compact;
          _os_log_impl(&dword_26948D000, v38, OS_LOG_TYPE_DEFAULT, "%s Compact card exists and our size class is compact. Presenting compact card : %@", buf, 0x16u);
        }

        backingCard3 = [siriui_card_compact backingCard];
        backingCard4 = [siriui_card backingCard];
        [(SiriUICardSnippetViewController *)self _addNextCardTo:backingCard3 fullCard:backingCard4];

        v41 = siriui_card_compact;
        _instrumentationManager2 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
        backingCard5 = [v41 backingCard];
        cardId2 = [backingCard5 cardId];
        aceId4 = [(SACardSnippet *)self->_snippet aceId];
        [_instrumentationManager2 storeCardID:cardId2 forSnippetAceID:aceId4];
      }

      backingCard6 = [v41 backingCard];
      [(SiriUICardSnippetViewController *)self _removeBottomKeylineFromCard:backingCard6];

      v47 = [objc_alloc(MEMORY[0x277CF93B0]) initWithCard:v41];
      [v47 setLoadsBundleProviders:0];
      cardRequest = [v47 cardRequest];
      [cardRequest setLoadsBundleServices:0];

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

      snippetCopy = v52;
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
  siriui_card = [(SACardSnippet *)self->_snippet siriui_card];
  siriui_card_compact = [(SACardSnippet *)self->_snippet siriui_card_compact];
  v5 = siriui_card_compact;
  if (self->_sizeClass == 1)
  {
    backingCard = [siriui_card_compact backingCard];
    cardSections = [backingCard cardSections];

    if (cardSections)
    {
      v8 = v5;

      siriui_card = v8;
    }
  }

  v9 = [SiriUICardLogger logCard:siriui_card format:0];
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
      v20 = siriui_card;
      v21 = 2112;
      selfCopy2 = self;
      v23 = 2112;
      v24 = snippet;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_26948D000, v11, OS_LOG_TYPE_DEFAULT, "%s #cards Logged card for CardSnippetViewController\n    Card: %@\n    SnippetViewController: %@\n    Snippet: %@\n    Filename: %@", &v17, 0x34u);
    }
  }

  v13 = [SiriUICardLogger logCard:siriui_card format:3];
  if (v13)
  {
    v14 = *v10;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_snippet;
      v17 = 136316162;
      v18 = "[SiriUICardSnippetViewController logContentsIfApplicable]";
      v19 = 2112;
      v20 = siriui_card;
      v21 = 2112;
      selfCopy2 = self;
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
  siriui_card = [(SACardSnippet *)self->_snippet siriui_card];
  backingCard = [siriui_card backingCard];
  entityProtobufMessages = [backingCard entityProtobufMessages];
  v6 = [entityProtobufMessages count];

  if (v6)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    siriui_card2 = [(SACardSnippet *)self->_snippet siriui_card];
    backingCard2 = [siriui_card2 backingCard];
    entityProtobufMessages2 = [backingCard2 entityProtobufMessages];

    v10 = [entityProtobufMessages2 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
            objc_enumerationMutation(entityProtobufMessages2);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = objc_alloc_init(MEMORY[0x277D47688]);
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];
          [v15 setAceId:uUIDString];

          protobufMessageData = [v14 protobufMessageData];
          [v15 setData:protobufMessageData];

          protobufMessageName = [v14 protobufMessageName];
          [v15 setTypeName:protobufMessageName];

          [v38 addObject:v15];
        }

        v11 = [entityProtobufMessages2 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);
    }
  }

  else
  {
    siriui_card3 = [(SACardSnippet *)self->_snippet siriui_card];
    backingCard3 = [siriui_card3 backingCard];
    entityIdentifier = [backingCard3 entityIdentifier];

    if (!entityIdentifier)
    {
      goto LABEL_13;
    }

    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    siriui_card4 = [(SACardSnippet *)self->_snippet siriui_card];
    backingCard4 = [siriui_card4 backingCard];
    entityIdentifier2 = [backingCard4 entityIdentifier];
    v27 = [v23 initWithData:entityIdentifier2 encoding:4];
    entityProtobufMessages2 = [v27 stringByRemovingPercentEncoding];

    v28 = objc_alloc(MEMORY[0x277D4C7E8]);
    v29 = [MEMORY[0x277CBEBC0] URLWithString:entityProtobufMessages2];
    v30 = [v28 initWithNSURL:v29];

    v31 = objc_alloc_init(MEMORY[0x277D47688]);
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];
    [v31 setAceId:uUIDString2];

    data = [v30 data];
    [v31 setData:data];

    _siriui_protobufTypeName = [v30 _siriui_protobufTypeName];
    [v31 setTypeName:_siriui_protobufTypeName];

    [v38 addObject:v31];
  }

LABEL_13:
  v36 = [v38 copy];

  return v36;
}

- (void)setNavigating:(BOOL)navigating
{
  navigatingCopy = navigating;
  view = [(SiriUICardSnippetViewController *)self view];
  [view setNavigating:navigatingCopy];
}

- (BOOL)isNavigating
{
  view = [(SiriUICardSnippetViewController *)self view];
  isNavigating = [view isNavigating];

  return isNavigating;
}

- (void)wasAddedToTranscript
{
  v6.receiver = self;
  v6.super_class = SiriUICardSnippetViewController;
  [(SiriUIBaseSnippetViewController *)&v6 wasAddedToTranscript];
  if ([(SiriUISnippetViewController *)self isVirgin])
  {
    _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
      [_cardViewController2 cardEventDidOccur:0 withIdentifier:0 userInfo:0];
    }
  }
}

- (void)siriDidDeactivate
{
  v6.receiver = self;
  v6.super_class = SiriUICardSnippetViewController;
  [(SiriUIBaseSnippetViewController *)&v6 siriDidDeactivate];
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [_cardViewController2 cardEventDidOccur:4 withIdentifier:0 userInfo:0];
  }
}

- (void)willCancel
{
  v6.receiver = self;
  v6.super_class = SiriUICardSnippetViewController;
  [(SiriUISnippetViewController *)&v6 willCancel];
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [_cardViewController2 cardEventDidOccur:3 withIdentifier:0 userInfo:0];
  }
}

- (void)siriDidStartSpeakingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [_cardViewController2 cardEventDidOccur:1 withIdentifier:identifierCopy userInfo:0];
  }
}

- (void)siriDidStopSpeakingWithIdentifier:(id)identifier speechQueueIsEmpty:(BOOL)empty
{
  identifierCopy = identifier;
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [_cardViewController2 cardEventDidOccur:2 withIdentifier:identifierCopy userInfo:0];
  }
}

- (void)siriDidUpdateASRWithRecognition:(id)recognition
{
  recognitionCopy = recognition;
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:recognitionCopy forKey:@"UpdatedRecognition"];
    _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [_cardViewController2 cardEventDidOccur:7 withIdentifier:0 userInfo:v6];
  }
}

- (void)siriWillBeginScrolling
{
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [_cardViewController2 cardEventDidOccur:5 withIdentifier:0 userInfo:0];
  }
}

- (void)siriDidScrollVisible:(BOOL)visible
{
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [_cardViewController2 cardEventDidOccur:6 withIdentifier:0 userInfo:0];
  }
}

- (void)siriDidTapOutsideContent
{
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [_cardViewController2 cardEventDidOccur:8 withIdentifier:0 userInfo:0];
  }
}

- (void)siriWillStartRequest
{
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _cardViewController2 = [(SiriUICardSnippetViewController *)self _cardViewController];
    [_cardViewController2 cardEventDidOccur:9 withIdentifier:0 userInfo:0];
  }
}

- (void)siriDidReceiveViewsWithDialogPhase:(id)phase
{
  phaseCopy = phase;
  if ([(SiriUISnippetViewController *)self _isAwaitingSuccessOrFailureEvent])
  {
    _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
    card = [_cardViewController card];
    interactions = [card interactions];
    anyObject = [interactions anyObject];

    if (anyObject)
    {
      if (([phaseCopy isCompletionDialogPhase] & 1) != 0 || objc_msgSend(phaseCopy, "isConfirmedDialogPhase"))
      {
        if ([phaseCopy isConfirmedDialogPhase])
        {
          [(SiriUISnippetViewController *)self setConfirmed:1];
        }

        v8 = 2;
LABEL_8:
        [(SiriUICardSnippetViewController *)self _forwardProgressEventToCardViewController:v8];
        [(SiriUISnippetViewController *)self _setAwaitingSuccessOrFailureEvent:0];
        goto LABEL_9;
      }

      if (([phaseCopy isErrorDialogPhase] & 1) != 0 || objc_msgSend(phaseCopy, "isCancelledDialogPhase"))
      {
        if ([phaseCopy isCancelledDialogPhase])
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

- (void)_setCardViewController:(id)controller
{
  objc_storeStrong(&self->_cardViewController, controller);
  if (self->_isInAmbient)
  {
    [(SiriUICardSnippetViewController *)self _removeShouldHideInAmbientSectionsFromCurrentCard];
  }

  [(SiriUISnippetViewController *)self setLoading:0];
}

- (void)_removeCardViewControllerFromParentViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];

  if (parentViewController)
  {
    [controllerCopy didMoveToParentViewController:0];
    view = [controllerCopy view];
    [view removeFromSuperview];

    [controllerCopy removeFromParentViewController];
  }
}

- (void)_addCardViewControllerAsChildViewController:(id)controller
{
  controllerCopy = controller;
  childViewControllers = [(SiriUICardSnippetViewController *)self childViewControllers];
  v5 = [childViewControllers containsObject:controllerCopy];

  if ((v5 & 1) == 0)
  {
    [(SiriUICardSnippetViewController *)self _removeCardViewControllerFromParentViewController:self->_cardViewController];
    [(SiriUICardSnippetViewController *)self addChildViewController:controllerCopy];
    view = [controllerCopy view];
    view2 = [(SiriUICardSnippetViewController *)self view];
    [view2 setCardView:view];

    [controllerCopy didMoveToParentViewController:self];
  }
}

- (void)_updateContentSizeAndNotifyDelegateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  p_contentSize = &self->_contentSize;
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  view = [(SiriUICardSnippetViewController *)self view];
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  [view sizeThatFits:{v10 + 8.0 + 8.0, 1.79769313e308}];
  p_contentSize->width = v11;
  p_contentSize->height = v12;

  if (necessaryCopy && (width != p_contentSize->width || height != p_contentSize->height))
  {
    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    [delegate2 siriViewControllerHeightDidChange:self];
  }
}

- (void)_beginMonitoringForNextCardWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&cardLoadingLock);
  if (self->_isCardLoading)
  {
    os_unfair_lock_unlock(&cardLoadingLock);
  }

  else
  {
    self->_isCardLoading = 1;
    os_unfair_lock_unlock(&cardLoadingLock);
    mEMORY[0x277D61AC8] = [MEMORY[0x277D61AC8] sharedInstance];
    [mEMORY[0x277D61AC8] addObserver:self];

    v6 = MEMORY[0x26D63F900](blockCopy);
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

- (void)_validateCardForParsecFeedbackDelivery:(id)delivery validHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  deliveryCopy = delivery;
  handlerCopy = handler;
  card = [(CRKCardViewControlling *)self->_cardViewController card];
  if (objc_opt_respondsToSelector())
  {
    backingCard = [card backingCard];
  }

  else
  {
    backingCard = 0;
  }

  v10 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v13 = 136315394;
    v14 = "[SiriUICardSnippetViewController _validateCardForParsecFeedbackDelivery:validHandler:]";
    v15 = 1024;
    source = [backingCard source];
    _os_log_impl(&dword_26948D000, v11, OS_LOG_TYPE_DEFAULT, "%s #cards Card source for backing card is %d", &v13, 0x12u);
  }

  if (backingCard)
  {
    if ([backingCard source] == 1)
    {
      v12 = [card isEqual:deliveryCopy];
      if (handlerCopy)
      {
        if (v12)
        {
          handlerCopy[2](handlerCopy);
        }
      }
    }
  }
}

- (void)_validateCardSectionForParsecFeedbackDelivery:(id)delivery validHandler:(id)handler
{
  deliveryCopy = delivery;
  handlerCopy = handler;
  card = [(CRKCardViewControlling *)self->_cardViewController card];
  if (objc_opt_respondsToSelector())
  {
    backingCard = [card backingCard];
    v9 = backingCard;
    if (backingCard)
    {
      if ([backingCard source] == 1)
      {
        cardSections = [card cardSections];
        v11 = [cardSections containsObject:deliveryCopy];

        if (handlerCopy)
        {
          if (v11)
          {
            handlerCopy[2](handlerCopy);
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

- (id)_metricsContextOfEventsForCard:(id)card
{
  cardCopy = card;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cardSections = [cardCopy cardSections];
  v7 = [cardSections count];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v5 setObject:v8 forKey:@"cardSectionCount"];

  snippet = [(SiriUICardSnippetViewController *)self snippet];
  aceId = [snippet aceId];

  if (aceId)
  {
    [v5 setObject:aceId forKey:@"snippetAceId"];
  }

  interactions = [cardCopy interactions];
  anyObject = [interactions anyObject];
  identifier = [anyObject identifier];

  if (identifier)
  {
    [v5 setObject:identifier forKey:@"interactionId"];
  }

  if (objc_opt_respondsToSelector())
  {
    backingCard = [cardCopy backingCard];
    if (backingCard)
    {
      v15 = backingCard;
      cardId = [backingCard cardId];
      if (cardId)
      {
        [v5 setObject:cardId forKey:@"cardId"];
      }

      resultIdentifier = [v15 resultIdentifier];
      if (resultIdentifier)
      {
        [v5 setObject:resultIdentifier forKey:@"resultId"];
      }
    }
  }

  v18 = [v5 copy];

  return v18;
}

- (id)_metricsContextOfEventsForCardSection:(id)section inCard:(id)card
{
  sectionCopy = section;
  cardCopy = card;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = MEMORY[0x277CCABB0];
  cardSections = [cardCopy cardSections];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(cardSections, "indexOfObject:", sectionCopy)}];
  [v8 setObject:v11 forKey:@"ordinalCardSectionPosition"];

  cardSections2 = [cardCopy cardSections];
  v13 = [cardSections2 count];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  [v8 setObject:v14 forKey:@"cardSectionCount"];

  snippet = [(SiriUICardSnippetViewController *)self snippet];
  aceId = [snippet aceId];

  if (aceId)
  {
    [v8 setObject:aceId forKey:@"snippetAceId"];
  }

  interactions = [cardCopy interactions];
  anyObject = [interactions anyObject];
  identifier = [anyObject identifier];

  if (identifier)
  {
    [v8 setObject:identifier forKey:@"interactionId"];
  }

  if (objc_opt_respondsToSelector())
  {
    backingCardSection = [sectionCopy backingCardSection];
    if (backingCardSection)
    {
      v21 = backingCardSection;
      cardSectionId = [backingCardSection cardSectionId];
      if (cardSectionId)
      {
        [v8 setObject:cardSectionId forKey:@"cardSectionId"];
      }

      resultIdentifier = [v21 resultIdentifier];
      if (resultIdentifier)
      {
        [v8 setObject:resultIdentifier forKey:@"resultId"];
      }

      v30 = cardSectionId;
      nextCard = [v21 nextCard];
      cardId = [nextCard cardId];

      if (cardId)
      {
        [v8 setObject:cardId forKey:@"nextCardId"];
      }

      nextCard2 = [v21 nextCard];
      resultIdentifier2 = [nextCard2 resultIdentifier];

      if (resultIdentifier2)
      {
        [v8 setObject:resultIdentifier2 forKey:@"nextCardResultId"];
      }
    }
  }

  v28 = [v8 copy];

  return v28;
}

- (void)_insertCardViewController:(id)controller
{
  [(SiriUICardSnippetViewController *)self _addCardViewControllerAsChildViewController:controller];
  view = [(SiriUICardSnippetViewController *)self view];
  [view reloadData];

  [(SiriUICardSnippetViewController *)self _updateContentSizeAndNotifyDelegateIfNecessary:1];
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriSnippetViewControllerViewDidLoad:self];
}

- (void)willConfirm
{
  v7.receiver = self;
  v7.super_class = SiriUICardSnippetViewController;
  [(SiriUISnippetViewController *)&v7 willConfirm];
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  card = [_cardViewController card];
  interactions = [card interactions];
  anyObject = [interactions anyObject];

  if (anyObject)
  {
    [(SiriUICardSnippetViewController *)self _forwardProgressEventToCardViewController:0];
    [(SiriUISnippetViewController *)self _setAwaitingSuccessOrFailureEvent:1];
  }
}

- (void)_forwardProgressEventToCardViewController:(unint64_t)controller
{
  _cardViewController = [(SiriUICardSnippetViewController *)self _cardViewController];
  [(SiriUICardSnippetViewController *)self _forwardProgressEvent:controller toCardViewController:_cardViewController animated:1];
}

- (void)_forwardProgressEvent:(unint64_t)event toCardViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  v8 = objc_alloc_init(MEMORY[0x277CF9478]);
  [v8 setEvent:event];
  [v8 setAnimatesProgress:animatedCopy];
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__SiriUICardSnippetViewController__forwardProgressEvent_toCardViewController_animated___block_invoke;
    v10[3] = &unk_279C5A0E0;
    v11 = controllerCopy;
    [v11 handleCardCommand:v8 reply:v10];
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SiriUICardSnippetViewController _forwardProgressEvent:controllerCopy toCardViewController:v9 animated:?];
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

- (void)_navigationButtonTapped:(id)tapped
{
  navigationController = [(SiriUICardSnippetViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (id)localeForCardSnippetView:(id)view
{
  _privateDelegate = [(SiriUISnippetViewController *)self _privateDelegate];
  v5 = [_privateDelegate localeForSiriViewController:self];

  return v5;
}

- (void)cardSnippetViewSashWasTapped:(id)tapped
{
  v26 = *MEMORY[0x277D85DE8];
  sashItem = [(SiriUIBaseSnippetViewController *)self sashItem];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SiriUICardSnippetViewController cardSnippetViewSashWasTapped:]";
    v24 = 2112;
    v25 = sashItem;
    _os_log_impl(&dword_26948D000, v5, OS_LOG_TYPE_DEFAULT, "%s #cards Card snippet's sash %@ tapped", buf, 0x16u);
  }

  commands = [sashItem commands];
  v7 = [commands count];

  if (v7)
  {
    delegate = [(SiriUIBaseSnippetViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    commands2 = [sashItem commands];
    if (v9)
    {
      [delegate2 siriSnippetViewController:self performAceCommands:commands2 sashItem:sashItem];
    }

    else
    {
      [delegate2 siriViewController:self performAceCommands:commands2];
    }

LABEL_13:

    goto LABEL_14;
  }

  applicationBundleIdentifier = [sashItem applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    v13 = applicationBundleIdentifier;
    canPunchout = [sashItem canPunchout];

    if (canPunchout)
    {
      delegate2 = objc_alloc_init(MEMORY[0x277D479F0]);
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [delegate2 setAceId:uUIDString];

      [delegate2 setAppAvailableInStorefront:1];
      applicationBundleIdentifier2 = [sashItem applicationBundleIdentifier];
      [delegate2 setBundleId:applicationBundleIdentifier2];

      delegate3 = [(SiriUIBaseSnippetViewController *)self delegate];
      LOBYTE(uUIDString) = objc_opt_respondsToSelector();

      commands2 = [(SiriUIBaseSnippetViewController *)self delegate];
      if (uUIDString)
      {
        v21 = delegate2;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
        [commands2 siriSnippetViewController:self performAceCommands:v19 sashItem:sashItem];
      }

      else
      {
        v20 = delegate2;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        [commands2 siriViewController:self performAceCommands:v19];
      }

      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)cardViewControllerDidLoad:(id)load
{
  loadCopy = load;
  if ([(SiriUISnippetViewController *)self isLoading])
  {
    [(SiriUISnippetViewController *)self setLoading:0];
    [(SiriUICardSnippetViewController *)self _insertCardViewController:loadCopy];
  }

  self->_isCardViewControllerLoading = 0;
  [(SiriUISnippetViewController *)self setUserConfirmationEnabled:1];
}

- (void)cardViewController:(id)controller requestsHandlingOfIntent:(id)intent
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SiriUICardSnippetViewController_cardViewController_requestsHandlingOfIntent___block_invoke;
  block[3] = &unk_279C59D78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)performReferentialCommand:(id)command forCardViewController:(id)controller
{
  v24 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  controllerCopy = controller;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SiriUICardSnippetViewController performReferentialCommand:forCardViewController:]";
    v22 = 2112;
    v23 = commandCopy;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Perform referential command %@", buf, 0x16u);
  }

  referenceIdentifier = [commandCopy referenceIdentifier];
  v10 = [(NSMutableDictionary *)self->_referenceableCommandsByIdentifierMap objectForKey:referenceIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo = [commandCopy userInfo];
    [v10 _siriui_applyUserInfoDictionary:userInfo];
  }

  if (v10)
  {
    SRUIFPopulateSendCommandWithInstrumentationTurn();
    delegate = [(SiriUIBaseSnippetViewController *)self delegate];
    v19 = v10;
    delegate2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    [delegate siriViewController:self performAceCommands:delegate2];
  }

  else
  {
    v14 = [(NSMutableDictionary *)self->_referenceableSnippetsByIdentifierMap objectForKey:referenceIdentifier];
    if (!v14)
    {
      v16 = 0;
      goto LABEL_10;
    }

    delegate = v14;
    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    v18 = delegate;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [delegate2 siriSnippetViewController:self pushSirilandSnippets:v15];
  }

  v16 = 1;
LABEL_10:

  return v16;
}

- (BOOL)performNextCardCommand:(id)command forCardViewController:(id)controller
{
  v26 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[SiriUICardSnippetViewController performNextCardCommand:forCardViewController:]";
    v24 = 2112;
    v25 = commandCopy;
    _os_log_impl(&dword_26948D000, v6, OS_LOG_TYPE_DEFAULT, "%s #cards Perform next card command %@", buf, 0x16u);
  }

  v7 = MEMORY[0x277D47200];
  v8 = self->_snippet;
  v9 = objc_alloc_init(v7);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v9 setAceId:uUIDString];

  v12 = MEMORY[0x277CF9450];
  nextCard = [commandCopy nextCard];
  v14 = [v12 originalDataForCard:nextCard];
  [v9 setCardData:v14];

  referencedCommands = [(SACardSnippet *)v8 referencedCommands];
  [v9 setReferencedCommands:referencedCommands];

  referencedSnippets = [(SACardSnippet *)v8 referencedSnippets];
  [v9 setReferencedSnippets:referencedSnippets];

  sash = [(SACardSnippet *)v8 sash];
  [v9 setSash:sash];

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  v21 = v9;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [delegate siriSnippetViewController:self pushSirilandSnippets:v19];

  [(SiriUICardSnippetViewController *)self beginAppearanceTransition:1 animated:0];
  [(SiriUICardSnippetViewController *)self endAppearanceTransition];

  return 1;
}

- (BOOL)performPunchoutCommand:(id)command forCardViewController:(id)controller
{
  v39 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  controllerCopy = controller;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[SiriUICardSnippetViewController performPunchoutCommand:forCardViewController:]";
    v37 = 2112;
    v38 = commandCopy;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Perform punch out command %@", buf, 0x16u);
  }

  punchout = [commandCopy punchout];
  bundleIdentifier = [punchout bundleIdentifier];
  punchout2 = [commandCopy punchout];
  urls = [punchout2 urls];

  getSearchUICardViewControllerClass();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setThreeDTouchEnabled:0];
  }

  if (bundleIdentifier)
  {
    urls2 = objc_alloc_init(MEMORY[0x277D479F0]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [urls2 setAceId:uUIDString];

    [urls2 setAppAvailableInStorefront:1];
    [urls2 setBundleId:bundleIdentifier];
    if ([urls count])
    {
      firstObject = [urls firstObject];
      [urls2 setPunchOutUri:firstObject];
    }

    delegate = [(SiriUIBaseSnippetViewController *)self delegate];
    v34 = urls2;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [delegate siriViewController:self performAceCommands:v18];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    punchout3 = [commandCopy punchout];
    urls2 = [punchout3 urls];

    v20 = [urls2 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v27 = punchout;
      v28 = controllerCopy;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(urls2);
          }

          v24 = *(*(&v29 + 1) + 8 * i);
          v25 = [(SiriUIBaseSnippetViewController *)self delegate:v27];
          [v25 siriViewController:self openURL:v24 completion:0];
        }

        v21 = [urls2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v21);
      punchout = v27;
      controllerCopy = v28;
    }
  }

  return 1;
}

- (BOOL)performInvocationPayloadCommand:(id)command forCardViewController:(id)controller
{
  v27 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  controllerCopy = controller;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[SiriUICardSnippetViewController performInvocationPayloadCommand:forCardViewController:]";
    v25 = 2112;
    v26 = commandCopy;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Perform invocation payload command %@", &v23, 0x16u);
  }

  [(SiriUICardSnippetViewController *)self _inspectPayloadForMetricsEvents:commandCopy];
  v9 = objc_alloc(MEMORY[0x277D5C220]);
  invocationIdentifier = [commandCopy invocationIdentifier];
  v11 = [v9 initWithIdentifier:invocationIdentifier];

  userInfo = [commandCopy userInfo];
  [v11 setUserData:userInfo];

  v13 = objc_alloc_init(MEMORY[0x277D5C218]);
  [v13 setInputOrigin:*MEMORY[0x277D48400]];
  [v13 setInteractionType:*MEMORY[0x277D48470]];
  v14 = [MEMORY[0x277D5C210] runSiriKitExecutorCommandWithContext:v13 payload:v11];
  v15 = [MEMORY[0x277D5C210] wrapCommandInStartLocalRequest:v14];
  _instrumentationManager = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];
    [delegate2 siriSnippetViewController:self handleStartLocalRequest:v15 turnIdentifier:turnIdentifier];
  }

  return 1;
}

- (void)_inspectPayloadForMetricsEvents:(id)events
{
  invocationIdentifier = [events invocationIdentifier];
  v5 = [invocationIdentifier isEqualToString:*MEMORY[0x277D5C2E0]];

  if (v5)
  {

    [(SiriUICardSnippetViewController *)self _emitInstrumentationEventWithInvocationSource:59];
  }
}

- (BOOL)performBeganEditingCommand:(id)command forCardViewController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SiriUICardSnippetViewController performBeganEditingCommand:forCardViewController:]";
    v12 = 2112;
    v13 = controllerCopy;
    _os_log_impl(&dword_26948D000, v6, OS_LOG_TYPE_DEFAULT, "%s #cards CRBeganEditingCommand received for %@. Hiding status view and alerting our delegate", &v10, 0x16u);
  }

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriSnippetViewController:self setStatusViewHidden:1];

  _privateDelegate = [(SiriUISnippetViewController *)self _privateDelegate];
  [_privateDelegate siriViewControllerWillBeginEditing:self];

  [(SiriUICardSnippetViewController *)self _emitInstrumentationEventForKeyboardInvocation];
  return 1;
}

- (BOOL)performFinishedEditingCommand:(id)command forCardViewController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SiriUICardSnippetViewController performFinishedEditingCommand:forCardViewController:]";
    v12 = 2112;
    v13 = controllerCopy;
    _os_log_impl(&dword_26948D000, v6, OS_LOG_TYPE_DEFAULT, "%s #cards CRFinishedEditingCommand received for %@. Showing status view and alerting our delegate", &v10, 0x16u);
  }

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriSnippetViewController:self setStatusViewHidden:0];

  _privateDelegate = [(SiriUISnippetViewController *)self _privateDelegate];
  [_privateDelegate siriViewControllerDidEndEditing:self];

  return 1;
}

- (CGSize)cardViewController:(id)controller boundingSizeForCardSectionViewController:(id)viewController
{
  v5 = [(SiriUIBaseSnippetViewController *)self delegate:controller];
  [v5 siriViewControllerExpectedWidth:self];
  v7 = v6 - 8.0 - 8.0;

  v8 = 1.79769313e308;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (unint64_t)navigationIndexOfCardViewController:(id)controller
{
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    v6 = [delegate2 navigationIndexOfSnippetViewController:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)presentViewController:(id)controller forCardViewController:(id)viewController
{
  v33 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "[SiriUICardSnippetViewController presentViewController:forCardViewController:]";
    v29 = 2112;
    v30 = controllerCopy;
    v31 = 2112;
    v32 = viewControllerCopy;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Presenting view controller: %@ for card view controller: %@", buf, 0x20u);
  }

  modalPresentationStyle = [(SiriUIModalContainerViewController *)controllerCopy modalPresentationStyle];
  v10 = 0;
  v11 = modalPresentationStyle + 2;
  if ((modalPresentationStyle + 2) > 0xA)
  {
    v13 = 0;
    goto LABEL_6;
  }

  v12 = controllerCopy;
  if (((1 << v11) & 0x73B) == 0)
  {
    if (((1 << v11) & 0x84) != 0)
    {
      v12 = [[SiriUIModalContainerViewController alloc] initWithContentViewController:controllerCopy];
      [(SiriUIModalContainerViewController *)v12 setDelegate:self];
      _privateDelegate = [(SiriUISnippetViewController *)self _privateDelegate];
      [_privateDelegate siriSnippetViewController:self willPresentViewController:controllerCopy];

      delegate = [(SiriUIBaseSnippetViewController *)self delegate];
      [delegate siriSnippetViewController:self setStatusViewHidden:1];

      if (![(UIViewController *)controllerCopy siriui_shouldHideStatusBar])
      {
        v10 = v12;
        goto LABEL_5;
      }

      delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
      [delegate2 siriSnippetViewController:self setStatusBarHidden:1 animated:1];
      v10 = v12;
    }

    else
    {
      delegate3 = [(SiriUIBaseSnippetViewController *)self delegate];
      [delegate3 siriSnippetViewController:self setStatusViewHidden:1];

      if ([(UIViewController *)controllerCopy siriui_shouldHideStatusBar])
      {
        delegate4 = [(SiriUIBaseSnippetViewController *)self delegate];
        [delegate4 siriSnippetViewController:self setStatusBarHidden:1 animated:1];
      }

      delegate5 = [(SiriUIBaseSnippetViewController *)self delegate];
      v22 = objc_opt_respondsToSelector();

      if ((v22 & 1) == 0)
      {
        v10 = 0;
        v12 = controllerCopy;
        goto LABEL_5;
      }

      delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
      [delegate2 siriViewController:self setTypeToSiriViewHidden:1];
      v10 = 0;
      v12 = controllerCopy;
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
  selfCopy = self;
  v26 = controllerCopy;
  v14 = controllerCopy;
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

- (void)cardViewController:(id)controller willDismissViewController:(id)viewController
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SiriUICardSnippetViewController cardViewController:willDismissViewController:]";
    v16 = 2112;
    v17 = controllerCopy;
    v18 = 2112;
    v19 = viewControllerCopy;
    _os_log_impl(&dword_26948D000, v8, OS_LOG_TYPE_DEFAULT, "%s #cards Card view controller %@ dismissing view controller %@", &v14, 0x20u);
  }

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriSnippetViewController:self setStatusViewHidden:0];

  if ([controllerCopy siriui_shouldHideStatusBar])
  {
    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    [delegate2 siriSnippetViewController:self setStatusBarHidden:0 animated:1];
  }

  delegate3 = [(SiriUIBaseSnippetViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate4 = [(SiriUIBaseSnippetViewController *)self delegate];
    [delegate4 siriViewController:self setTypeToSiriViewHidden:0];
  }
}

- (void)modalContainerViewControllerViewWillDisappear:(id)disappear
{
  disappearCopy = disappear;
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate siriSnippetViewController:self setStatusViewHidden:0];

  _privateDelegate = [(SiriUISnippetViewController *)self _privateDelegate];
  contentViewController = [disappearCopy contentViewController];
  [_privateDelegate siriSnippetViewController:self willDismissViewController:contentViewController];

  contentViewController2 = [disappearCopy contentViewController];

  LODWORD(disappearCopy) = [contentViewController2 siriui_shouldHideStatusBar];
  if (disappearCopy)
  {
    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    [delegate2 siriSnippetViewController:self setStatusBarHidden:0 animated:1];
  }
}

- (void)modalContainerViewControllerViewDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  _privateDelegate = [(SiriUISnippetViewController *)self _privateDelegate];
  contentViewController = [disappearCopy contentViewController];

  [_privateDelegate siriSnippetViewController:self didDismissViewController:contentViewController];
}

- (void)commandWasPerformed:(id)performed
{
  backingFeedback = [performed backingFeedback];
  if (backingFeedback)
  {
    v14 = backingFeedback;
    snippet = [(SiriUICardSnippetViewController *)self snippet];
    aceId = [snippet aceId];

    [MEMORY[0x277CCAD78] UUID];
    v7 = [objc_claimAutoreleasedReturnValue() initWithUUIDString:aceId];
    _instrumentationManager = [(SiriUICardSnippetViewController *)self _instrumentationManager];
    currentInstrumentationTurnContext = [_instrumentationManager currentInstrumentationTurnContext];
    turnIdentifier = [currentInstrumentationTurnContext turnIdentifier];
    v11 = MEMORY[0x26D63F050]();

    v12 = [v11 isEqualToString:self->_feedbackEngagementInstrumentationIdentifier];
    _instrumentationManager2 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
    [_instrumentationManager2 emitVRXInstrumentationEvent:v14 aceViewId:v7 cardEngagementProcessed:v12];

    backingFeedback = v14;
  }
}

- (void)cardSectionView:(id)view willProcessEngagementFeedback:(id)feedback
{
  viewCopy = view;
  instrumentationTurnIdentifier = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
  [(SiriUICardSnippetViewController *)self _instrumentCardSectionInteractionForCardSection:viewCopy previousTurn:instrumentationTurnIdentifier];
}

- (void)userDidEngageCardSection:(id)section withEngagementFeedback:(id)feedback
{
  v41 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  backingFeedback = [feedback backingFeedback];
  if ([backingFeedback actionTarget] == 1 || objc_msgSend(backingFeedback, "actionTarget") == 2)
  {
    if ([backingFeedback actionTarget] == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4 * ([backingFeedback actionTarget] == 2);
    }

    _instrumentationManager = [(SiriUICardSnippetViewController *)self _instrumentationManager];
    destination = [backingFeedback destination];
    urls = [destination urls];
    firstObject = [urls firstObject];
    destination2 = [backingFeedback destination];
    bundleIdentifier = [destination2 bundleIdentifier];
    [_instrumentationManager emitPunchOutEventWithURL:firstObject appID:bundleIdentifier punchoutOrigin:v8];
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __83__SiriUICardSnippetViewController_userDidEngageCardSection_withEngagementFeedback___block_invoke;
  v35[3] = &unk_279C59D78;
  v15 = backingFeedback;
  v36 = v15;
  [(SiriUICardSnippetViewController *)self _validateCardSectionForParsecFeedbackDelivery:sectionCopy validHandler:v35];
  card = [(CRKCardViewControlling *)self->_cardViewController card];
  v17 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCardSection:sectionCopy inCard:card];

  _instrumentationManager2 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  v19 = [v17 objectForKey:@"cardSectionId"];
  v20 = [v17 objectForKey:@"ordinalCardSectionPosition"];
  integerValue = [v20 integerValue];
  v22 = [v17 objectForKey:@"snippetAceId"];
  [_instrumentationManager2 emitUUFRCasinoCardSelectedEventWithCardSectionID:v19 ordinalCardSectionPosition:integerValue snippetAceId:v22];

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

  _analytics = [(SiriUICardSnippetViewController *)self _analytics];
  [_analytics logEventWithType:3905 context:v17];

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

  _analytics2 = [(SiriUICardSnippetViewController *)self _analytics];
  v32 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:card];
  [_analytics2 logEventWithType:3904 context:v32];

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  LOBYTE(v32) = objc_opt_respondsToSelector();

  if (v32)
  {
    delegate2 = [(SiriUIBaseSnippetViewController *)self delegate];
    [delegate2 userTouchedSnippet];
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

- (void)_instrumentCardSectionInteractionForCardSection:(id)section previousTurn:(id)turn
{
  v30 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  turnCopy = turn;
  v8 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:turnCopy];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    turnIdentifier = [v8 turnIdentifier];
    v24 = 136315650;
    v25 = "[SiriUICardSnippetViewController _instrumentCardSectionInteractionForCardSection:previousTurn:]";
    v26 = 2112;
    v27 = turnIdentifier;
    v28 = 2112;
    v29 = turnCopy;
    _os_log_impl(&dword_26948D000, v10, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v24, 0x20u);
  }

  _instrumentationManager = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [_instrumentationManager storeCurrentInstrumentationTurnContext:v8];

  responseViewId = [(SACardSnippet *)self->_snippet responseViewId];

  if (!responseViewId)
  {
    v14 = objc_alloc_init(MEMORY[0x277D5A928]);
    [v14 setInvocationSource:11];
    v15 = objc_alloc_init(MEMORY[0x277D5ACB0]);
    cardSectionIdentifier = [sectionCopy cardSectionIdentifier];
    [v15 setViewID:cardSectionIdentifier];

    [v14 setViewContainer:v15];
    if (objc_opt_respondsToSelector())
    {
      backingCardSection = [sectionCopy backingCardSection];
      resultIdentifier = [backingCardSection resultIdentifier];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && resultIdentifier)
      {
        v19 = objc_alloc_init(MEMORY[0x277D5ACA8]);
        [v19 setResultIdentifier:resultIdentifier];
        [v14 setCardInvocationContext:v19];
      }

      _instrumentationManager2 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
      [_instrumentationManager2 emitInstrumentation:v14];
    }
  }

  turnIdentifier2 = [v8 turnIdentifier];
  uUIDString = [turnIdentifier2 UUIDString];
  feedbackEngagementInstrumentationIdentifier = self->_feedbackEngagementInstrumentationIdentifier;
  self->_feedbackEngagementInstrumentationIdentifier = uUIDString;
}

- (void)_emitInstrumentationEventWithInvocationSource:(int)source
{
  v3 = *&source;
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v5 setInvocationSource:v3];
  v6 = MEMORY[0x277CEF168];
  instrumentationTurnIdentifier = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
  v8 = [v6 newTurnBasedContextWithPreviousTurnID:instrumentationTurnIdentifier];

  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    turnIdentifier = [v8 turnIdentifier];
    instrumentationTurnIdentifier2 = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
    v15 = 136315650;
    v16 = "[SiriUICardSnippetViewController _emitInstrumentationEventWithInvocationSource:]";
    v17 = 2112;
    v18 = turnIdentifier;
    v19 = 2112;
    v20 = instrumentationTurnIdentifier2;
    _os_log_impl(&dword_26948D000, v10, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v15, 0x20u);
  }

  _instrumentationManager = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [_instrumentationManager storeCurrentInstrumentationTurnContext:v8];

  _instrumentationManager2 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [_instrumentationManager2 emitInstrumentation:v5];
}

- (void)_emitInstrumentationEventForKeyboardInvocation
{
  v8 = objc_alloc_init(MEMORY[0x277D5A7F0]);
  v3 = MEMORY[0x277D5ACF0];
  textInputMode = [(SiriUICardSnippetViewController *)self textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];
  v6 = [v3 convertLanguageCodeToSchemaLocale:primaryLanguage];

  [v8 setKeyboardLocale:v6];
  [v8 setKeyboardPresented:1];
  v7 = objc_alloc_init(MEMORY[0x277D5A928]);
  [v7 setInvocationSource:11];
  [v7 setKeyboardInvocationContext:v8];
  [(SiriUICardSnippetViewController *)self _emitInstrumentationEvent:v7 requiresNewTurn:1];
}

- (void)_emitInstrumentationEvent:(id)event requiresNewTurn:(BOOL)turn
{
  turnCopy = turn;
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (turnCopy)
  {
    instrumentationTurnIdentifier = [(SiriUIBaseSnippetViewController *)self instrumentationTurnIdentifier];
    v8 = [MEMORY[0x277CEF168] newTurnBasedContextWithPreviousTurnID:instrumentationTurnIdentifier];
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      turnIdentifier = [v8 turnIdentifier];
      v14 = 136315650;
      v15 = "[SiriUICardSnippetViewController _emitInstrumentationEvent:requiresNewTurn:]";
      v16 = 2112;
      v17 = turnIdentifier;
      v18 = 2112;
      v19 = instrumentationTurnIdentifier;
      _os_log_impl(&dword_26948D000, v10, OS_LOG_TYPE_DEFAULT, "%s #instrumentation New Turn %@ <-> Old Turn %@ ", &v14, 0x20u);
    }

    _instrumentationManager = [(SiriUICardSnippetViewController *)self _instrumentationManager];
    [_instrumentationManager storeCurrentInstrumentationTurnContext:v8];
  }

  _instrumentationManager2 = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [_instrumentationManager2 emitInstrumentation:eventCopy];
}

- (void)userDidReportFeedback:(id)feedback fromCardSection:(id)section
{
  feedbackCopy = feedback;
  sectionCopy = section;
  v8 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  card = [(CRKCardViewControlling *)self->_cardViewController card];
  if (objc_opt_respondsToSelector())
  {
    backingCard = [card backingCard];
  }

  else
  {
    backingCard = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    backingCardSection = 0;
    if (!backingCard)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  backingCardSection = [sectionCopy backingCardSection];
  if (backingCard)
  {
LABEL_8:
    v12 = [backingCard fbr];
    [v8 setFbr:v12];
  }

LABEL_9:
  if (backingCardSection)
  {
    resultIdentifier = [backingCardSection resultIdentifier];
    [v8 setIdentifier:resultIdentifier];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SiriUICardSnippetViewController_userDidReportFeedback_fromCardSection___block_invoke;
  v16[3] = &unk_279C5A018;
  v17 = feedbackCopy;
  v18 = v8;
  v14 = v8;
  v15 = feedbackCopy;
  [(SiriUICardSnippetViewController *)self _validateCardSectionForParsecFeedbackDelivery:sectionCopy validHandler:v16];
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

- (void)cardViewWillAppearForCard:(id)card withAppearanceFeedback:(id)feedback
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(CRKCardViewControlling *)self->_cardViewController card:card];
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

  _analytics = [(SiriUICardSnippetViewController *)self _analytics];
  v10 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:v5];
  [_analytics logEventWithType:3900 context:v10];
}

- (void)cardViewDidAppearForCard:(id)card withAppearanceFeedback:(id)feedback
{
  v20 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__SiriUICardSnippetViewController_cardViewDidAppearForCard_withAppearanceFeedback___block_invoke;
  v14[3] = &unk_279C59D78;
  v7 = feedbackCopy;
  v15 = v7;
  [(SiriUICardSnippetViewController *)self _validateCardForParsecFeedbackDelivery:card validHandler:v14];
  card = [(CRKCardViewControlling *)self->_cardViewController card];
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

  _analytics = [(SiriUICardSnippetViewController *)self _analytics];
  v13 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:card];
  [_analytics logEventWithType:3901 context:v13];
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

- (void)cardViewDidDisappearForCard:(id)card withDisappearanceFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__SiriUICardSnippetViewController_cardViewDidDisappearForCard_withDisappearanceFeedback___block_invoke;
  v8[3] = &unk_279C59D78;
  v9 = feedbackCopy;
  v7 = feedbackCopy;
  [(SiriUICardSnippetViewController *)self _validateCardForParsecFeedbackDelivery:card validHandler:v8];
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

- (void)cardSectionViewWillAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback
{
  v17 = *MEMORY[0x277D85DE8];
  cardViewController = self->_cardViewController;
  sectionCopy = section;
  card = [(CRKCardViewControlling *)cardViewController card];
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

  _analytics = [(SiriUICardSnippetViewController *)self _analytics];
  v12 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCardSection:sectionCopy inCard:card];

  [_analytics logEventWithType:3902 context:v12];
}

- (void)cardSectionViewDidAppearForCardSection:(id)section withAppearanceFeedback:(id)feedback
{
  v17 = *MEMORY[0x277D85DE8];
  cardViewController = self->_cardViewController;
  sectionCopy = section;
  card = [(CRKCardViewControlling *)cardViewController card];
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

  _analytics = [(SiriUICardSnippetViewController *)self _analytics];
  v12 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCardSection:sectionCopy inCard:card];

  [_analytics logEventWithType:3903 context:v12];
}

- (void)controllerForCard:(id)card didRequestAsyncCard:(id)asyncCard withAsyncCardRequestFeedback:(id)feedback
{
  v16 = *MEMORY[0x277D85DE8];
  cardCopy = card;
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

  _analytics = [(SiriUICardSnippetViewController *)self _analytics];
  v11 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:cardCopy];
  [_analytics logEventWithType:3906 context:v11];
}

- (void)controllerForCard:(id)card didReceiveAsyncCard:(id)asyncCard withAsyncCardReceiptFeedback:(id)feedback
{
  v16 = *MEMORY[0x277D85DE8];
  cardCopy = card;
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

  _analytics = [(SiriUICardSnippetViewController *)self _analytics];
  v11 = [(SiriUICardSnippetViewController *)self _metricsContextOfEventsForCard:cardCopy];
  [_analytics logEventWithType:3907 context:v11];
}

- (BOOL)cardLoader:(id)loader loadCard:(id)card withCompletionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  handlerCopy = handler;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  entityIdentifier = [cardCopy entityIdentifier];
  v11 = [v9 initWithData:entityIdentifier encoding:4];
  stringByRemovingPercentEncoding = [v11 stringByRemovingPercentEncoding];

  [stringByRemovingPercentEncoding componentsSeparatedByString:@"&"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = v35 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v29 = stringByRemovingPercentEncoding;
    v30 = handlerCopy;
    v31 = cardCopy;
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
    handlerCopy = v30;
    cardCopy = v31;
    stringByRemovingPercentEncoding = v29;
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v23 setAceId:uUIDString];

  [v23 setUtterance:v21];
  [(SiriUICardSnippetViewController *)self _beginMonitoringForNextCardWithBlock:handlerCopy];
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  v36 = v23;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [delegate siriViewController:self performAceCommands:v27];

  return 1;
}

- (void)cardLoadingMonitor:(id)monitor didReceiveCardSnippet:(id)snippet
{
  v21 = *MEMORY[0x277D85DE8];
  snippetCopy = snippet;
  objc_storeStrong(&self->_newlyLoadedCardSnippet, snippet);
  monitorCopy = monitor;
  [(NSTimer *)self->_cardLoadingTimer invalidate];
  cardLoadingTimer = self->_cardLoadingTimer;
  self->_cardLoadingTimer = 0;

  [monitorCopy removeObserver:self];
  newlyLoadedCardSnippet = self->_newlyLoadedCardSnippet;
  if (newlyLoadedCardSnippet)
  {
    siriui_card = [(SACardSnippet *)newlyLoadedCardSnippet siriui_card];
    backingCard = [siriui_card backingCard];

    v13 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "[SiriUICardSnippetViewController cardLoadingMonitor:didReceiveCardSnippet:]";
      v19 = 2112;
      v20 = backingCard;
      _os_log_impl(&dword_26948D000, v13, OS_LOG_TYPE_DEFAULT, "%s #cards CardLoadingMonitor received next card %@", &v17, 0x16u);
    }

    cardLoadingCompletionhandler = self->_cardLoadingCompletionhandler;
    if (cardLoadingCompletionhandler)
    {
      cardLoadingCompletionhandler[2](cardLoadingCompletionhandler, backingCard, 0);
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

- (void)cardLoadingMonitor:(id)monitor didReceiveVisualResponseSnippet:(id)snippet
{
  v13[1] = *MEMORY[0x277D85DE8];
  cardLoadingTimer = self->_cardLoadingTimer;
  snippetCopy = snippet;
  monitorCopy = monitor;
  [(NSTimer *)cardLoadingTimer invalidate];
  v9 = self->_cardLoadingTimer;
  self->_cardLoadingTimer = 0;

  [monitorCopy removeObserver:self];
  cardLoadingCompletionhandler = self->_cardLoadingCompletionhandler;
  self->_cardLoadingCompletionhandler = 0;

  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  v13[0] = snippetCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  [delegate siriSnippetViewController:self pushSirilandSnippets:v12];
  os_unfair_lock_lock(&cardLoadingLock);
  self->_isCardLoading = 0;
  os_unfair_lock_unlock(&cardLoadingLock);
}

- (Class)transparentHeaderViewClass
{
  title = [(SACardSnippet *)self->_snippet title];

  if (title)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)configureReusableTransparentHeaderView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    snippet = self->_snippet;
    v5 = viewCopy;
    title = [(SACardSnippet *)snippet title];
    [v5 configureWithTitle:title];
  }
}

- (double)desiredHeightForTransparentHeaderView
{
  transparentHeaderViewClass = [(SiriUICardSnippetViewController *)self transparentHeaderViewClass];

  [(objc_class *)transparentHeaderViewClass defaultHeight];
  return result;
}

- (double)boundingWidthForPresentation:(id)presentation
{
  delegate = [(SiriUIBaseSnippetViewController *)self delegate];
  [delegate boundingWidthForSnippetViewController:self];
  v6 = v5;

  return v6;
}

- (void)_logCardRelationshipIdentifiedForCompactCard:(id)card fullCard:(id)fullCard snippet:(id)snippet
{
  snippetCopy = snippet;
  fullCardCopy = fullCard;
  cardId = [card cardId];
  cardId2 = [fullCardCopy cardId];

  aceId = [snippetCopy aceId];

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v12 setValue:cardId forKey:@"compactId"];
  [v12 setValue:cardId2 forKey:@"regularId"];
  [v12 setValue:aceId forKey:@"snippetAceId"];
  _instrumentationManager = [(SiriUICardSnippetViewController *)self _instrumentationManager];
  [_instrumentationManager emitCasinoRelationshipEventWithViewIDFrom:cardId ViewIDTo:cardId2 casinoFromType:1];

  _analytics = [(SiriUICardSnippetViewController *)self _analytics];
  [_analytics logEventWithType:3908 context:v12];
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