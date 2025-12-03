@interface PKRecipientPickerViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (BOOL)_hasHeaderForSection:(unint64_t)section;
- (BOOL)_isRecipientTextViewEmpty;
- (BOOL)_showNearby;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PKRecipientPickerViewController)initWithTransactionSourceCollection:(id)collection familyCollection:(id)familyCollection peerPaymentSendFlowType:(int64_t)type;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)_recipientForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)_composeAddressKindFromCounterpartHandle:(id)handle;
- (void)_addRecipient:(id)recipient;
- (void)_addRecipientFromContactProperty:(id)property;
- (void)_cancelledAction;
- (void)_clearRecipientTextView;
- (void)_configureCell:(id)cell withContact:(id)contact;
- (void)_configureHeaderView:(id)view inSection:(unint64_t)section;
- (void)_keyboardWillChange:(id)change;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_nextAction;
- (void)_removeAllRecipients;
- (void)_showNearbyAmountEntry;
- (void)_showNextScreenWithRecipient:(id)recipient;
- (void)_updateLayoutForKeyboardAction:(id)action;
- (void)_updateNextBarButtonItem;
- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient;
- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size;
- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient;
- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address;
- (void)composeRecipientView:(id)view textDidChange:(id)change;
- (void)composeRecipientViewRequestAddRecipient:(id)recipient;
- (void)consumeResults:(id)results taskID:(id)d;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)dealloc;
- (void)finishedTaskWithID:(id)d;
- (void)loadView;
- (void)setPerformingAction:(BOOL)action;
- (void)setUpNavigationBar;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKRecipientPickerViewController

- (PKRecipientPickerViewController)initWithTransactionSourceCollection:(id)collection familyCollection:(id)familyCollection peerPaymentSendFlowType:(int64_t)type
{
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  v74.receiver = self;
  v74.super_class = PKRecipientPickerViewController;
  v11 = [(PKRecipientPickerViewController *)&v74 init];
  v12 = v11;
  if (v11)
  {
    v73 = familyCollectionCopy;
    objc_storeStrong(&v11->_transactionSourceCollection, collection);
    objc_storeStrong(&v12->_familyCollection, familyCollection);
    v12->_peerPaymentSendFlowType = type;
    if (type == 2)
    {
      v13 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecipientPicke.isa);
    }

    else
    {
      if (type != 1)
      {
        goto LABEL_7;
      }

      v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentWal.isa);
    }

    title = v12->_title;
    v12->_title = v13;

LABEL_7:
    defaultContactResolver = [MEMORY[0x1E69B8740] defaultContactResolver];
    contactResolver = v12->_contactResolver;
    v12->_contactResolver = defaultContactResolver;

    currentTaskID = v12->_currentTaskID;
    v12->_currentTaskID = 0;

    autocompleteResults = v12->_autocompleteResults;
    v12->_autocompleteResults = 0;

    v19 = MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 16);
    v12->_keyboardFrame.origin = *MEMORY[0x1E695F058];
    v12->_keyboardFrame.size = v20;
    v12->_keyboardVisible = 0;
    v21 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v12->_containerView;
    v12->_containerView = v21;

    v23 = objc_alloc_init(MEMORY[0x1E6996428]);
    recipientTextView = v12->_recipientTextView;
    v12->_recipientTextView = v23;

    [(CNComposeRecipientTextView *)v12->_recipientTextView setDelegate:v12];
    [(CNComposeRecipientTextView *)v12->_recipientTextView setMaxRecipients:1];
    v25 = v12->_recipientTextView;
    v26 = +[PKPeerPaymentTheme secondaryButtonTextColor];
    [(CNComposeRecipientTextView *)v25 setTintColor:v26];

    textView = [(CNComposeRecipientTextView *)v12->_recipientTextView textView];
    v28 = +[PKPeerPaymentTheme primaryTextColor];
    [textView setTintColor:v28];

    v72 = textView;
    [textView setKeyboardAppearance:1];
    v29 = 0.0;
    if (PKIsMac())
    {
      v30 = 12.0;
      v31 = 14.0;
    }

    else
    {
      if (PKIsVision())
      {
        v32 = *MEMORY[0x1E69DDCE0];
        v30 = *(MEMORY[0x1E69DDCE0] + 8);
        v29 = *(MEMORY[0x1E69DDCE0] + 16);
        v31 = *(MEMORY[0x1E69DDCE0] + 24);
LABEL_13:
        [(CNComposeRecipientTextView *)v12->_recipientTextView setShowGlassBackground:1];
        [(CNComposeRecipientTextView *)v12->_recipientTextView setOverrideContentMargins:v32, v30, v29, v31];
        textView2 = [(CNComposeRecipientTextView *)v12->_recipientTextView textView];
        [textView2 setReturnKeyType:11];

        [(CNComposeRecipientTextView *)v12->_recipientTextView setAccessibilityIdentifier:*MEMORY[0x1E69B9B18]];
        v34 = objc_alloc_init(_PKAutocompleteResultsTableViewController);
        resultsViewController = v12->_resultsViewController;
        v12->_resultsViewController = v34;

        [(CNAutocompleteResultsTableViewController *)v12->_resultsViewController setDelegate:v12];
        v36 = [objc_alloc(MEMORY[0x1E69963D8]) initWithAutocompleteSearchType:1];
        searchManager = v12->_searchManager;
        v12->_searchManager = v36;

        [(CNAutocompleteSearchManager *)v12->_searchManager setShouldIncludeGroupResults:0];
        [(CNAutocompleteSearchManager *)v12->_searchManager setFetchDelegate:v12];
        currentRecipientText = v12->_currentRecipientText;
        v12->_currentRecipientText = &stru_1F3BD7330;

        v39 = objc_alloc_init(MEMORY[0x1E69DC840]);
        v40 = objc_alloc(MEMORY[0x1E69DC7F0]);
        v41 = *v19;
        v42 = v19[1];
        v43 = v19[2];
        v44 = v19[3];
        v45 = [v40 initWithFrame:v39 collectionViewLayout:{*v19, v42, v43, v44}];
        suggestionsView = v12->_suggestionsView;
        v12->_suggestionsView = v45;

        [(UICollectionView *)v12->_suggestionsView setDataSource:v12];
        [(UICollectionView *)v12->_suggestionsView setDelegate:v12];
        v47 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionType:3 transactionSourceCollection:collectionCopy paymentDataProvider:0];
        transactionFetcher = v12->_transactionFetcher;
        v12->_transactionFetcher = v47;

        [(PKDashboardTransactionFetcher *)v12->_transactionFetcher setDelegate:v12];
        v49 = [[PKDashboardTitleHeaderView alloc] initWithFrame:v41, v42, v43, v44];
        sampleHeaderView = v12->_sampleHeaderView;
        v12->_sampleHeaderView = v49;

        v51 = [[PKThumbnailCollectionViewCell alloc] initWithFrame:v41, v42, v43, v44];
        sampleThumbnailCell = v12->_sampleThumbnailCell;
        v12->_sampleThumbnailCell = v51;

        v53 = [[PKNearbyPeerPaymentEntryCollectionViewCell alloc] initWithFrame:v41, v42, v43, v44];
        sampleNearbyCell = v12->_sampleNearbyCell;
        v12->_sampleNearbyCell = v53;

        v55 = [[PKNearbyPeerPaymentEntryCollectionViewHeaderView alloc] initWithFrame:v41, v42, v43, v44];
        sampleNearbyHeaderView = v12->_sampleNearbyHeaderView;
        v12->_sampleNearbyHeaderView = v55;

        mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
        context = [mEMORY[0x1E69B8EF8] context];
        configuration = [context configuration];
        [configuration contactFormatConfiguration];
        v61 = v60 = collectionCopy;

        v62 = [objc_alloc(MEMORY[0x1E69B8730]) initWithConfiguration:v61];
        contactFormatValidator = v12->_contactFormatValidator;
        v12->_contactFormatValidator = v62;

        mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
        v65 = [objc_alloc(MEMORY[0x1E69B8F28]) initWithPeerPaymentWebService:mEMORY[0x1E69B9020]];
        peerPaymentController = v12->_peerPaymentController;
        v12->_peerPaymentController = v65;

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:v12 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
        [defaultCenter addObserver:v12 selector:sel__keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
        [defaultCenter addObserver:v12 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
        [(PKRecipientPickerViewController *)v12 setOverrideUserInterfaceStyle:2];
        [(PKRecipientPickerViewController *)v12 _generateSuggestions];
        mEMORY[0x1E69B9020]2 = [MEMORY[0x1E69B9020] sharedService];
        v69 = objc_alloc_init(MEMORY[0x1E69B8F40]);
        [v69 setEndpoint:5];
        [v69 setQuoteRequestDestination:1];
        [v69 setMessagesContext:1];
        [mEMORY[0x1E69B9020]2 prewarmDeviceScoreForAttributes:v69];
        v70 = objc_alloc_init(MEMORY[0x1E69B8F40]);
        [v70 setEndpoint:3];
        [v70 setQuoteRequestDestination:1];
        [v70 setMessagesContext:1];
        [mEMORY[0x1E69B9020]2 prewarmDeviceScoreForAttributes:v70];

        collectionCopy = v60;
        familyCollectionCopy = v73;
        goto LABEL_14;
      }

      v30 = 14.0;
      v31 = 9.0;
    }

    v32 = 0.0;
    goto LABEL_13;
  }

LABEL_14:

  return v12;
}

- (void)dealloc
{
  mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
  v4 = objc_alloc_init(MEMORY[0x1E69B8F40]);
  [v4 setEndpoint:5];
  [v4 setQuoteRequestDestination:1];
  [v4 setMessagesContext:1];
  [mEMORY[0x1E69B9020] unloadDeviceScoreForAttributes:v4];
  v5 = objc_alloc_init(MEMORY[0x1E69B8F40]);
  [v5 setEndpoint:3];
  [v5 setQuoteRequestDestination:1];
  [v5 setMessagesContext:1];
  [mEMORY[0x1E69B9020] unloadDeviceScoreForAttributes:v5];

  v6.receiver = self;
  v6.super_class = PKRecipientPickerViewController;
  [(PKRecipientPickerViewController *)&v6 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PKRecipientPickerViewController;
  [(PKRecipientPickerViewController *)&v7 viewWillAppear:appear];
  [(PKRecipientPickerViewController *)self setUpNavigationBar];
  text = [(CNComposeRecipientTextView *)self->_recipientTextView text];
  v5 = [text isEqualToString:self->_currentRecipientText];

  if ((v5 & 1) == 0)
  {
    textView = [(CNComposeRecipientTextView *)self->_recipientTextView textView];
    [textView setText:self->_currentRecipientText];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKRecipientPickerViewController;
  [(PKRecipientPickerViewController *)&v12 viewDidAppear:appear];
  [(CNComposeRecipientTextView *)self->_recipientTextView becomeFirstResponder];
  if (self->_peerPaymentSendFlowType == 1)
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6A8];
    v6 = *MEMORY[0x1E69BAEE8];
    v7 = *MEMORY[0x1E69BABE8];
    v13[0] = *MEMORY[0x1E69BA850];
    v13[1] = v7;
    v8 = *MEMORY[0x1E69BB008];
    v14[0] = v6;
    v14[1] = v8;
    v9 = *MEMORY[0x1E69BAF60];
    v13[2] = *MEMORY[0x1E69BA680];
    v13[3] = v9;
    v10 = *MEMORY[0x1E69BAF70];
    v14[2] = *MEMORY[0x1E69BA818];
    v14[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
    [v4 subject:v5 sendEvent:v11];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = PKRecipientPickerViewController;
  [(PKRecipientPickerViewController *)&v12 viewDidDisappear:disappear];
  if (self->_peerPaymentSendFlowType == 1)
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6A8];
    v6 = *MEMORY[0x1E69BAEE8];
    v7 = *MEMORY[0x1E69BABE8];
    v13[0] = *MEMORY[0x1E69BA850];
    v13[1] = v7;
    v8 = *MEMORY[0x1E69BB008];
    v14[0] = v6;
    v14[1] = v8;
    v9 = *MEMORY[0x1E69BAF60];
    v13[2] = *MEMORY[0x1E69BA680];
    v13[3] = v9;
    v10 = *MEMORY[0x1E69BAF70];
    v14[2] = *MEMORY[0x1E69BA820];
    v14[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
    [v4 subject:v5 sendEvent:v11];
  }
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = PKRecipientPickerViewController;
  [(PKRecipientPickerViewController *)&v19 loadView];
  view = [(PKRecipientPickerViewController *)self view];
  v4 = +[PKPeerPaymentTheme backgroundColor];
  [view setBackgroundColor:v4];

  [view addSubview:self->_containerView];
  recipientTextView = self->_recipientTextView;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CNComposeRecipientTextView *)recipientTextView setBackgroundColor:clearColor];

  view2 = [(_PKAutocompleteResultsTableViewController *)self->_resultsViewController view];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [view2 setBackgroundColor:clearColor2];

  [(UIView *)self->_containerView setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self->_containerView addSubview:self->_recipientTextView];
  [(UIView *)self->_containerView addSubview:view2];
  [(_PKAutocompleteResultsTableViewController *)self->_resultsViewController didMoveToParentViewController:self];
  [(PKRecipientPickerViewController *)self addChildViewController:self->_resultsViewController];
  suggestionsView = self->_suggestionsView;
  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)suggestionsView setBackgroundColor:clearColor3];

  [(UICollectionView *)self->_suggestionsView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardRecipientPickerSuggestionsThumbnailCellIdentifier"];
  v11 = self->_suggestionsView;
  v12 = objc_opt_class();
  v13 = *MEMORY[0x1E69DDC08];
  [(UICollectionView *)v11 registerClass:v12 forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"PKDashboardRecipientPickerNearbyHeaderIdentifier"];
  [(UICollectionView *)self->_suggestionsView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardRecipientPickerNearbyCellIdentifier"];
  [(UICollectionView *)self->_suggestionsView registerClass:objc_opt_class() forSupplementaryViewOfKind:v13 withReuseIdentifier:@"PKDashboardRecipientPickerFamilySuggestionsTitleIdentifier"];
  [(UICollectionView *)self->_suggestionsView registerClass:objc_opt_class() forSupplementaryViewOfKind:v13 withReuseIdentifier:@"PKDashboardRecipientPickerSuggestionsTitleIdentifier"];
  v14 = _UISolariumFeatureFlagEnabled();
  v15 = 20.0;
  if (!v14)
  {
    v15 = 16.0;
  }

  [(UICollectionView *)self->_suggestionsView setContentInset:8.0, v15, 8.0, v15];
  traitCollection = [(PKRecipientPickerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(UICollectionView *)self->_suggestionsView setKeyboardDismissMode:1];
  }

  [(UIView *)self->_containerView addSubview:self->_suggestionsView];
  view3 = [(PKRecipientPickerViewController *)self view];
  [view3 setAccessibilityIdentifier:*MEMORY[0x1E69B9B20]];
}

- (void)viewDidLayoutSubviews
{
  view = [(PKRecipientPickerViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (![(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    v11 = v11 - self->_keyboardFrame.size.height;
  }

  [(UIView *)self->_containerView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_containerView pkui_readableContentBoundsWithMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  v13 = v12;
  v36 = v12;
  v15 = v14;
  v17 = v16;
  recipientTextView = self->_recipientTextView;
  [(UIView *)self->_containerView safeAreaInsets];
  v20 = v19 + 10.0;
  [MEMORY[0x1E6996428] preferredHeight];
  [(CNComposeRecipientTextView *)recipientTextView setFrame:v13, v20, v15, v21];
  v22 = self->_recipientTextView;
  v23 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentWal_0.isa);
  [(CNComposeRecipientTextView *)v22 setLabel:v23];

  recipients = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
  v25 = [recipients count] != 0;

  LOBYTE(v23) = [(PKRecipientPickerViewController *)self _isRecipientTextViewEmpty];
  view2 = [(_PKAutocompleteResultsTableViewController *)self->_resultsViewController view];
  [(UIView *)self->_containerView safeAreaInsets];
  v28 = v27;
  [(CNComposeRecipientTextView *)self->_recipientTextView frame];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  MaxY = CGRectGetMaxY(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  [view2 setFrame:{v36, MaxY, v15, v28 + v17 - CGRectGetMaxY(v39)}];
  [view2 setHidden:(v25 | v23) & 1];
  suggestionsView = self->_suggestionsView;
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v35 = CGRectGetMaxY(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v42.size.height = v28 + v17 - CGRectGetMaxY(v41);
  v42.origin.x = 0.0;
  v42.origin.y = v35;
  v42.size.width = v15;
  v43 = CGRectInset(v42, 4.0, 0.0);
  [(UICollectionView *)suggestionsView setFrame:v43.origin.x, v43.origin.y, v43.size.width, v43.size.height];
  [(UICollectionView *)self->_suggestionsView setHidden:v25 | ((v23 & 1) == 0)];
  v37.receiver = self;
  v37.super_class = PKRecipientPickerViewController;
  [(PKRecipientPickerViewController *)&v37 viewDidLayoutSubviews];
}

- (void)setUpNavigationBar
{
  [(PKRecipientPickerViewController *)self setTitle:self->_title];
  navigationController = [(PKRecipientPickerViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];

  [navigationBar setOverrideUserInterfaceStyle:2];
  navigationItem = [(PKRecipientPickerViewController *)self navigationItem];
  [navigationItem setBackButtonDisplayMode:2];
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentWal_1.isa);
  if (_UISolariumFeatureFlagEnabled())
  {
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E69DC628];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __53__PKRecipientPickerViewController_setUpNavigationBar__block_invoke;
    v17 = &unk_1E8010A60;
    objc_copyWeak(&v18, &location);
    v8 = [v7 actionWithHandler:&v14];
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = [v9 initWithBarButtonSystemItem:1 primaryAction:{v8, v14, v15, v16, v17}];
    [navigationItem setLeftBarButtonItem:v10];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v6 style:2 target:self action:sel__nextAction];
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelledAction];
    v12 = +[PKPeerPaymentTheme primaryNavigationTintColor];
    [v11 setTintColor:v12];

    [navigationItem setRightBarButtonItem:v11];
    [v11 setAccessibilityIdentifier:*MEMORY[0x1E69B9990]];
    [(PKRecipientPickerViewController *)self _updateNextBarButtonItem];
    v13 = +[PKPeerPaymentTheme secondaryButtonTextColor];
    [v10 setTintColor:v13];

    [navigationItem setLeftBarButtonItem:v10];
  }

  [v10 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
}

void __53__PKRecipientPickerViewController_setUpNavigationBar__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelledAction];
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PKRecipientPickerViewController__keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKRecipientPickerViewController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __53__PKRecipientPickerViewController__keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1040);
  v4 = *(v2 + 1048);
  v5 = *(v2 + 1056);
  v6 = *(v2 + 1064);
  *(v2 + 1072) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 1040);
  if (v7)
  {
    [v7 CGRectValue];
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
  }

  else
  {
    v14 = *(MEMORY[0x1E695F050] + 16);
    *v9 = *MEMORY[0x1E695F050];
    *(v8 + 1056) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1040), v16);
}

- (void)_keyboardWillChange:(id)change
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    userInfo = [change userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __55__PKRecipientPickerViewController__keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKRecipientPickerViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __55__PKRecipientPickerViewController__keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 130;
  v4 = *(v2 + 130);
  v5 = *(v2 + 131);
  v6 = *(v2 + 132);
  v7 = *(v2 + 133);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1040), v13);
}

- (void)_keyboardWillHide:(id)hide
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__PKRecipientPickerViewController__keyboardWillHide___block_invoke;
  v3[3] = &unk_1E8010EB8;
  v3[4] = self;
  [(PKRecipientPickerViewController *)self _updateLayoutForKeyboardAction:v3];
}

BOOL __53__PKRecipientPickerViewController__keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1040);
  *(v1 + 1072) = 0;
  v2 = (*(a1 + 32) + 1040);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1040);
  v4 = *(*(a1 + 32) + 1048);
  v5 = *(*(a1 + 32) + 1056);
  v6 = *(*(a1 + 32) + 1064);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    viewIfLoaded = [(PKRecipientPickerViewController *)self viewIfLoaded];
    v6 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded layoutIfNeeded];
      if (actionCopy[2](actionCopy))
      {
        [v6 setNeedsLayout];
        v7 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __66__PKRecipientPickerViewController__updateLayoutForKeyboardAction___block_invoke;
        v8[3] = &unk_1E8010970;
        v9 = v6;
        [v7 _animateUsingDefaultTimingWithOptions:134 animations:v8 completion:0];
      }
    }

    else
    {
      actionCopy[2](actionCopy);
    }
  }
}

- (void)_nextAction
{
  recipients = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
  firstObject = [recipients firstObject];

  [(PKRecipientPickerViewController *)self _showNextScreenWithRecipient:firstObject];
}

- (void)_cancelledAction
{
  v14[5] = *MEMORY[0x1E69E9840];
  presentingViewController = [(PKRecipientPickerViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  if (self->_peerPaymentSendFlowType == 1)
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6A8];
    v6 = *MEMORY[0x1E69BAEE8];
    v7 = *MEMORY[0x1E69BABE8];
    v13[0] = *MEMORY[0x1E69BA850];
    v13[1] = v7;
    v8 = *MEMORY[0x1E69BB008];
    v14[0] = v6;
    v14[1] = v8;
    v9 = *MEMORY[0x1E69BA6F0];
    v10 = *MEMORY[0x1E69BA440];
    v13[2] = *MEMORY[0x1E69BA680];
    v13[3] = v10;
    v11 = *MEMORY[0x1E69BA448];
    v14[2] = v9;
    v14[3] = v11;
    v13[4] = *MEMORY[0x1E69BAF60];
    v14[4] = *MEMORY[0x1E69BAF70];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
    [v4 subject:v5 sendEvent:v12];
  }
}

- (void)_updateNextBarButtonItem
{
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    navigationItem = [(PKRecipientPickerViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];

    recipients = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
    v5 = [recipients count];
    maxRecipients = [(CNComposeRecipientTextView *)self->_recipientTextView maxRecipients];

    _isRecipientTextViewEmpty = [(PKRecipientPickerViewController *)self _isRecipientTextViewEmpty];
    v9 = v5 == maxRecipients && _isRecipientTextViewEmpty && !self->_performingAction;
    [rightBarButtonItem setEnabled:v9];
  }
}

- (void)_addRecipientFromContactProperty:(id)property
{
  propertyCopy = property;
  contact = [propertyCopy contact];
  value = [propertyCopy value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  value2 = [propertyCopy value];
  stringValue = value2;
  if (isKindOfClass)
  {
    v9 = 0;
    if (!value2)
    {
      goto LABEL_7;
    }

LABEL_6:
    v12 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:contact address:stringValue kind:v9];
    [(PKRecipientPickerViewController *)self _addRecipient:v12];

    goto LABEL_7;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    value3 = [propertyCopy value];
    stringValue = [value3 stringValue];

    v9 = 1;
    if (stringValue)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)_addRecipient:(id)recipient
{
  v18 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  recipients = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
  v6 = [recipients countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(recipients);
      }

      address = [*(*(&v13 + 1) + 8 * v9) address];
      address2 = [recipientCopy address];
      v12 = [address caseInsensitiveCompare:address2];

      if (!v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [recipients countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    [(CNComposeRecipientTextView *)self->_recipientTextView addRecipient:recipientCopy];
    recipients = [(PKRecipientPickerViewController *)self view];
    [recipients setNeedsLayout];
  }
}

- (BOOL)_isRecipientTextViewEmpty
{
  text = [(CNComposeRecipientTextView *)self->_recipientTextView text];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v4 = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  LOBYTE(text) = [v4 length] == 0;
  return text;
}

- (void)_clearRecipientTextView
{
  currentRecipientText = self->_currentRecipientText;
  self->_currentRecipientText = 0;

  recipientTextView = self->_recipientTextView;

  [(CNComposeRecipientTextView *)recipientTextView clearText];
}

- (unint64_t)_composeAddressKindFromCounterpartHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy length])
  {
    if (([(PKContactFormatValidator *)self->_contactFormatValidator emailAddressIsValid:handleCopy]& 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:handleCopy];
      if ([(PKContactFormatValidator *)self->_contactFormatValidator phoneNumberIsValid:v6 forCountryCode:0])
      {
        v5 = 1;
      }

      else
      {
        v5 = 5;
      }
    }
  }

  else
  {
    v5 = 5;
  }

  return v5;
}

- (void)_showNextScreenWithRecipient:(id)recipient
{
  recipientCopy = recipient;
  if (!self->_performingAction)
  {
    [(PKRecipientPickerViewController *)self setPerformingAction:1];
    if (self->_peerPaymentSendFlowType == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    v6 = [[PKPeerPaymentRemoteMessagesComposer alloc] initWithPeerPaymentController:self->_peerPaymentController presentingViewController:self actionType:v5 sourceType:1];
    objc_initWeak(&location, self);
    address = [recipientCopy address];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__PKRecipientPickerViewController__showNextScreenWithRecipient___block_invoke;
    v9[3] = &unk_1E8020030;
    objc_copyWeak(&v13, &location);
    v8 = v6;
    v10 = v8;
    v11 = recipientCopy;
    selfCopy = self;
    [(PKPeerPaymentRemoteMessagesComposer *)v8 validateRecipientWithAddress:address completion:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

id __64__PKRecipientPickerViewController__showNextScreenWithRecipient___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    result = objc_loadWeakRetained((a1 + 56));
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result navigationController];
    v6 = [[PKAmountKeypadViewController alloc] initWithRemoteMessagesComposer:*(a1 + 32) recipient:*(a1 + 40) sendFlowType:*(*(a1 + 48) + 1008) familyCollection:*(*(a1 + 48) + 1000)];
    [v5 pushViewController:v6 animated:1];
  }

  else
  {
    [*(a1 + 48) _updateNextBarButtonItem];
  }

  v7 = *(a1 + 48);

  return [v7 setPerformingAction:0];
}

- (void)_showNearbyAmountEntry
{
  v19[5] = *MEMORY[0x1E69E9840];
  if (_UISolariumFeatureFlagEnabled())
  {
    v3 = [[PKNearbyPeerPaymentAmountEntryViewController alloc] initWithInitialAmount:0 initialMemo:0];
    navigationController = [(PKRecipientPickerViewController *)self navigationController];
    [navigationController pushViewController:v3 animated:1];
  }

  else
  {
    objc_initWeak(&location, self);
    nearbyViewProvider = self->_nearbyViewProvider;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PKRecipientPickerViewController__showNearbyAmountEntry__block_invoke;
    v15[3] = &unk_1E8020058;
    objc_copyWeak(&v16, &location);
    v6 = [(PKNearbyPeerPaymentViewProvider *)nearbyViewProvider amountEntryViewWithInitialAmount:0 initialMemo:0 dismissAction:v15];
    [(PKRecipientPickerViewController *)self presentViewController:v6 animated:1 completion:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  if (self->_peerPaymentSendFlowType == 1)
  {
    v7 = MEMORY[0x1E69B8540];
    v8 = *MEMORY[0x1E69BAEE8];
    v9 = *MEMORY[0x1E69BABE8];
    v18[0] = *MEMORY[0x1E69BA850];
    v18[1] = v9;
    v10 = *MEMORY[0x1E69BB008];
    v19[0] = v8;
    v19[1] = v10;
    v11 = *MEMORY[0x1E69BA6F0];
    v12 = *MEMORY[0x1E69BA440];
    v18[2] = *MEMORY[0x1E69BA680];
    v18[3] = v12;
    v13 = *MEMORY[0x1E69BAEA8];
    v19[2] = v11;
    v19[3] = v13;
    v18[4] = *MEMORY[0x1E69BAF60];
    v19[4] = *MEMORY[0x1E69BAF70];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:5];
    [v7 subject:*MEMORY[0x1E69BB6A8] sendEvent:v14];
  }
}

void __57__PKRecipientPickerViewController__showNearbyAmountEntry__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [MEMORY[0x1E69B9000] sharedInstance];
    [v3 presentSenderFlowWithHost:0 userInfo:v6 completion:0];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained presentingViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setPerformingAction:(BOOL)action
{
  if (self->_performingAction != action)
  {
    self->_performingAction = action;
    [(PKRecipientPickerViewController *)self _updateNextBarButtonItem];
  }
}

- (void)composeRecipientView:(id)view didAddRecipient:(id)recipient
{
  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKRecipientPickerViewController *)self _nextAction];

    [(PKRecipientPickerViewController *)self _clearRecipientTextView];
  }

  else
  {

    [(PKRecipientPickerViewController *)self _updateNextBarButtonItem];
  }
}

- (void)composeRecipientView:(id)view didFinishEnteringAddress:(id)address
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AB08];
  addressCopy = address;
  whitespaceCharacterSet = [v5 whitespaceCharacterSet];
  v8 = [addressCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if (![v8 length])
  {
    goto LABEL_11;
  }

  v9 = [(PKContactResolver *)self->_contactResolver contactForHandle:v8];
  v10 = [(PKRecipientPickerViewController *)self _composeAddressKindFromCounterpartHandle:v8];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695CF18]);
    if (v10 == 1)
    {
      v11 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v8];
      v12 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v11];
      v15 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [v9 setPhoneNumbers:v13];

      goto LABEL_7;
    }

    if (!v10)
    {
      v11 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v8];
      v16[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [v9 setEmailAddresses:v12];
LABEL_7:
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:v9 address:v8 kind:v10];
  if (v14)
  {
    [(PKRecipientPickerViewController *)self _clearRecipientTextView];
    [(PKRecipientPickerViewController *)self _addRecipient:v14];
  }

LABEL_11:
}

- (void)composeRecipientView:(id)view textDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  if (self->_currentTaskID)
  {
    [(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:?];
    currentTaskID = self->_currentTaskID;
    self->_currentTaskID = 0;
  }

  autocompleteResults = self->_autocompleteResults;
  self->_autocompleteResults = 0;

  recipients = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
  v10 = [recipients count];

  if (v10 == -[CNComposeRecipientTextView maxRecipients](self->_recipientTextView, "maxRecipients") && [changeCopy length])
  {
    [(PKRecipientPickerViewController *)self _clearRecipientTextView];
  }

  else
  {
    text = [(CNComposeRecipientTextView *)self->_recipientTextView text];
    currentRecipientText = self->_currentRecipientText;
    self->_currentRecipientText = text;

    [(PKRecipientPickerViewController *)self _updateNextBarButtonItem];
    if ([(PKRecipientPickerViewController *)self _isRecipientTextViewEmpty])
    {
      [(CNAutocompleteResultsTableViewController *)self->_resultsViewController setRecipients:0];
      if (!v10)
      {
        [(UICollectionView *)self->_suggestionsView reloadData];
      }
    }

    view = [(PKRecipientPickerViewController *)self view];
    [view setNeedsLayout];

    v14 = objc_alloc_init(MEMORY[0x1E6996330]);
    v15 = [(CNAutocompleteSearchManager *)self->_searchManager searchForText:changeCopy withAutocompleteFetchContext:v14 consumer:self];
    v16 = self->_currentTaskID;
    self->_currentTaskID = v15;
  }
}

- (void)composeRecipientViewRequestAddRecipient:(id)recipient
{
  v7 = objc_alloc_init(getCNContactPickerViewControllerClass());
  [v7 setDelegate:self];
  [v7 setModalPresentationStyle:2];
  [v7 setOverrideUserInterfaceStyle:2];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddresses.@count > 0) OR (phoneNumbers.@count > 0)"];
  [v7 setPredicateForEnablingContact:v4];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddresses.@count + phoneNumbers.@count) == 1"];
  [v7 setPredicateForSelectionOfContact:v5];

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(property == 'emailAddresses') OR (property == 'phoneNumbers')"];
  [v7 setPredicateForSelectionOfProperty:v6];

  [(PKRecipientPickerViewController *)self setEditing:0];
  [(PKRecipientPickerViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)composeHeaderView:(id)view didChangeSize:(CGSize)size
{
  [(CNComposeRecipientTextView *)self->_recipientTextView frame:view];
  [(CNComposeRecipientTextView *)self->_recipientTextView setFrame:?];
  view = [(PKRecipientPickerViewController *)self view];
  [view setNeedsLayout];
}

- (void)_removeAllRecipients
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  recipients = [(CNComposeRecipientTextView *)self->_recipientTextView recipients];
  v4 = [recipients countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(recipients);
        }

        [(CNComposeRecipientTextView *)self->_recipientTextView removeRecipient:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [recipients countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  pickerCopy = picker;
  [(PKRecipientPickerViewController *)self _removeAllRecipients];
  [(PKRecipientPickerViewController *)self _addRecipientFromContactProperty:propertyCopy];

  [pickerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  pickerCopy = picker;
  [(PKRecipientPickerViewController *)self _removeAllRecipients];
  [pickerCopy dismissViewControllerAnimated:1 completion:0];

  v9 = PKComposeRecipientFromContact(contactCopy);

  v8 = v9;
  if (v9)
  {
    [(PKRecipientPickerViewController *)self _addRecipient:v9];
    v8 = v9;
  }
}

- (void)consumeResults:(id)results taskID:(id)d
{
  resultsCopy = results;
  dCopy = d;
  v7 = dCopy;
  if (!self->_currentTaskID || [dCopy isEqualToNumber:?])
  {
    autocompleteResults = self->_autocompleteResults;
    if (autocompleteResults)
    {
      v9 = [(NSArray *)autocompleteResults arrayByAddingObjectsFromArray:resultsCopy];
    }

    else
    {
      v9 = resultsCopy;
    }

    v10 = self->_autocompleteResults;
    self->_autocompleteResults = v9;

    [(CNAutocompleteResultsTableViewController *)self->_resultsViewController setRecipients:self->_autocompleteResults];
    view = [(PKRecipientPickerViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)finishedTaskWithID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToNumber:self->_currentTaskID])
  {
    if (!self->_autocompleteResults)
    {
      [(PKRecipientPickerViewController *)self consumeResults:MEMORY[0x1E695E0F0] taskID:dCopy];
    }

    currentTaskID = self->_currentTaskID;
    self->_currentTaskID = 0;
  }
}

- (void)autocompleteResultsController:(id)controller didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  recipientCopy = recipient;
  if (self->_currentTaskID)
  {
    [(CNAutocompleteSearchManager *)self->_searchManager cancelTaskWithID:?];
    currentTaskID = self->_currentTaskID;
    self->_currentTaskID = 0;
  }

  [(PKRecipientPickerViewController *)self _clearRecipientTextView];
  [(CNComposeRecipientTextView *)self->_recipientTextView setAccessibilityIdentifier:@"AppleCash.RecipientPicker.TextView"];
  [(PKRecipientPickerViewController *)self _addRecipient:recipientCopy];
  autocompleteResults = self->_autocompleteResults;
  self->_autocompleteResults = 0;

  view = [(PKRecipientPickerViewController *)self view];
  [view setNeedsLayout];
}

- (void)autocompleteResultsController:(id)controller didRequestInfoAboutRecipient:(id)recipient
{
  v18[1] = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  [(CNComposeRecipientTextView *)self->_recipientTextView clearText];
  contact = [recipientCopy contact];
  if (!contact)
  {
    address = [recipientCopy address];
    if (!address)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v11 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v11 setNamePrefix:address];
    [v11 setContactType:0];
    kind = [recipientCopy kind];
    if (kind == 1)
    {
      v13 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:address];
      v14 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v13];
      v17 = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      [v11 setPhoneNumbers:v15];
    }

    else
    {
      if (kind)
      {
LABEL_12:
        v7 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v11];

LABEL_13:
        if (!v7)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }

      v13 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:address];
      v18[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [v11 setEmailAddresses:v14];
    }

    goto LABEL_12;
  }

  v7 = [MEMORY[0x1E695D148] viewControllerForContact:contact];
  if (v7)
  {
LABEL_3:
    [v7 setOverrideUserInterfaceStyle:2];
    [v7 setAllowsEditing:0];
    v16 = *MEMORY[0x1E695C300];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v7 setDisplayedPropertyKeys:v8];

    navigationController = [(PKRecipientPickerViewController *)self navigationController];
    [navigationController pushViewController:v7 animated:1];
  }

LABEL_4:
}

- (void)autocompleteResultsController:(id)controller tintColorForRecipient:(id)recipient completion:(id)completion
{
  v6 = MEMORY[0x1E69DC888];
  completionCopy = completion;
  labelColor = [v6 labelColor];
  (*(completion + 2))(completionCopy, labelColor);
}

- (BOOL)_showNearby
{
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  account = [mEMORY[0x1E69B9000] account];

  if ([account supportsDeviceTap])
  {
    v5 = self->_peerPaymentSendFlowType == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __55__PKRecipientPickerViewController__generateSuggestions__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__48;
  v30 = __Block_byref_object_dispose__48;
  v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v2 = *(a1 + 32);
  if (*(v2 + 1008) == 2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(*(a1 + 32) + 1000) familyMembers];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v4 = v23 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v5)
    {
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = [v8 contact];
          if (v9 && ([v8 isMe] & 1) == 0)
          {
            v10 = [v9 identifier];
            if (([v27[5] containsObject:v10] & 1) == 0)
            {
              v11 = PKComposeRecipientFromContact(v9);
              if (v11)
              {
                [v27[5] addObject:v10];
                [v3 addObject:v11];
              }
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v5);
    }

    v12 = [v3 copy];
    v13 = *(a1 + 32);
    v14 = *(v13 + 1160);
    *(v13 + 1160) = v12;

    if ([*(*(a1 + 32) + 1160) count] >= 5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_187;
      block[3] = &unk_1E8010970;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
      goto LABEL_20;
    }

    v2 = *(a1 + 32);
  }

  v15 = [*(v2 + 992) transactionSourceIdentifiers];
  v3 = [v15 anyObject];

  v4 = [MEMORY[0x1E695DF00] date];
  v16 = [MEMORY[0x1E695DEE8] currentCalendar];
  v17 = [v16 dateByAddingUnit:8 value:-6 toDate:v4 options:0];

  v18 = *(a1 + 32);
  v19 = *(v18 + 1136);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_2;
  v20[3] = &unk_1E80200F8;
  v20[4] = v18;
  v20[5] = &v26;
  [v19 peerPaymentCounterpartHandlesForTransactionSourceIdentifier:v3 startDate:v17 endDate:v4 completion:v20];

LABEL_20:
  _Block_object_dispose(&v26, 8);
}

uint64_t __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_187(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  *(v2 + 1152) = 0;

  v4 = *(*(a1 + 32) + 1144);

  return [v4 reloadData];
}

void __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![v3 count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_7;
    block[3] = &unk_1E8010970;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_19;
  }

  v21 = [MEMORY[0x1E69D8CA0] sharedPrivacyManager];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v3;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  v8 = *v30;
  do
  {
    v9 = 0;
    do
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v29 + 1) + 8 * v9);
      if (![v10 length])
      {

        v14 = 0;
LABEL_14:
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_3;
        v26[3] = &unk_1E80200A8;
        v16 = *(a1 + 40);
        v26[4] = *(a1 + 32);
        v26[5] = v10;
        v28 = v16;
        v27 = v4;
        [v5 addOperation:v26];

        goto LABEL_15;
      }

      v11 = [v10 containsString:@"@"];
      v12 = objc_alloc(MEMORY[0x1E69D8C00]);
      v13 = v12;
      if (v11)
      {
        v14 = [v12 initWithType:3 value:v10];
      }

      else
      {
        v15 = PKBestGuessNormalizedPhoneNumber();
        v14 = [v13 initWithType:2 value:v15];
      }

      if (!v14 || ([v21 isIncomingCommunicationBlockedForHandle:v14] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_15:

      ++v9;
    }

    while (v7 != v9);
    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v7);
LABEL_17:

  v17 = [MEMORY[0x1E695DFB0] null];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_5;
  v24[3] = &unk_1E80200D0;
  v24[4] = *(a1 + 32);
  v25 = v4;
  v18 = v4;
  v19 = [v5 evaluateWithInput:v17 completion:v24];

  v3 = v20;
LABEL_19:
}

void __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_3(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(v8 + 1128);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_4;
  v14[3] = &unk_1E8020080;
  v11 = a1[6];
  v18 = a1[7];
  v14[4] = v8;
  v14[5] = v9;
  v16 = v6;
  v17 = v7;
  v15 = v11;
  v12 = v6;
  v13 = v7;
  [v10 contactForHandle:v9 withCompletion:v14];
}

void __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = [v3 identifier];
    if (([*(*(*(a1 + 72) + 8) + 40) containsObject:v4] & 1) == 0)
    {
      [*(*(*(a1 + 72) + 8) + 40) addObject:v4];
      v5 = [*(a1 + 32) _composeAddressKindFromCounterpartHandle:*(a1 + 40)];
      v6 = [objc_alloc(MEMORY[0x1E6996408]) initWithContact:v7 address:*(a1 + 40) kind:v5];
      [*(a1 + 48) addObject:v6];
    }
  }

  (*(*(a1 + 64) + 16))();
}

void __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_6;
  v2[3] = &unk_1E8010A10;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1152);
  *(v3 + 1152) = v2;

  v5 = *(*(a1 + 32) + 1144);

  return [v5 reloadData];
}

uint64_t __55__PKRecipientPickerViewController__generateSuggestions__block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1152);
  *(v2 + 1152) = 0;

  v4 = *(*(a1 + 32) + 1144);

  return [v4 reloadData];
}

- (void)_configureCell:(id)cell withContact:(id)contact
{
  v17[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  contactCopy = contact;
  identifier = [contactCopy identifier];
  [cellCopy setIdentifier:identifier];

  [cellCopy setWantsCustomAppearance:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [cellCopy setBackgroundColor:clearColor];

  avatarView = [cellCopy avatarView];
  if (contactCopy)
  {
    v17[0] = contactCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v11 setContactType:0];
    v16 = v11;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  }

  [avatarView setContacts:v10];
  [avatarView frame];
  [avatarView setFrame:?];
  [cellCopy showAvatarView:1];
  emailAddresses = [contactCopy emailAddresses];
  firstObject = [emailAddresses firstObject];
  value = [firstObject value];

  v15 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:value contact:contactCopy];
  [cellCopy setTitle:v15];
}

- (BOOL)_hasHeaderForSection:(unint64_t)section
{
  if (section == 2)
  {
    _showFamilySuggestions = [(PKRecipientPickerViewController *)self _showRecentSuggestions]|| [(PKRecipientPickerViewController *)self _showFamilySuggestions];
    return [(PKRecipientPickerViewController *)self _showNearby]&& _showFamilySuggestions;
  }

  else if (section == 1)
  {

    return [(PKRecipientPickerViewController *)self _showRecentSuggestions];
  }

  else if (section)
  {
    return 0;
  }

  else
  {

    return [(PKRecipientPickerViewController *)self _showFamilySuggestions];
  }
}

- (void)_configureHeaderView:(id)view inSection:(unint64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentWal_2.isa);
    goto LABEL_5;
  }

  if (!section)
  {
    v5 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecipientPicke_0.isa);
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  [viewCopy setTitle:v6];
  [viewCopy setTitleStyle:2];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [viewCopy setTitleColor:labelColor];

  [viewCopy setHorizontalInset:0.0];
}

- (id)_recipientForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (!section)
  {
    v6 = &OBJC_IVAR___PKRecipientPickerViewController__suggestedFamilyRecipients;
    goto LABEL_5;
  }

  if (section == 1)
  {
    v6 = &OBJC_IVAR___PKRecipientPickerViewController__suggestedRecipients;
LABEL_5:
    v7 = [*(&self->super.super.super.isa + *v6) objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = *MEMORY[0x1E69DDC08];
  v12 = kindCopy;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if (!v12 || !v11)
    {

      goto LABEL_12;
    }

    v14 = [v12 isEqualToString:v11];

    if (!v14)
    {
      goto LABEL_12;
    }
  }

  section = [pathCopy section];
  if (section != 2)
  {
    if (section == 1)
    {
      v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:@"PKDashboardRecipientPickerSuggestionsTitleIdentifier" forIndexPath:pathCopy];
      selfCopy2 = self;
      v18 = v16;
      v19 = 1;
      goto LABEL_14;
    }

    if (!section)
    {
      v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:@"PKDashboardRecipientPickerFamilySuggestionsTitleIdentifier" forIndexPath:pathCopy];
      selfCopy2 = self;
      v18 = v16;
      v19 = 0;
LABEL_14:
      [(PKRecipientPickerViewController *)selfCopy2 _configureHeaderView:v18 inSection:v19];
      goto LABEL_16;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_16;
  }

  v16 = [viewCopy dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:@"PKDashboardRecipientPickerNearbyHeaderIdentifier" forIndexPath:pathCopy];
LABEL_16:

  return v16;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    _showNearby = [(PKRecipientPickerViewController *)self _showNearby];
    goto LABEL_21;
  }

  if (section != 1)
  {
    if (!section && [(PKRecipientPickerViewController *)self _showFamilySuggestions])
    {
      v7 = 1160;
      if ([(NSArray *)self->_suggestedFamilyRecipients count]<= 7)
      {
LABEL_6:
        suggestedRecipients = *(&self->super.super.super.isa + v7);
LABEL_19:
        _showNearby = [(NSArray *)suggestedRecipients count];
        goto LABEL_21;
      }

LABEL_20:
      _showNearby = 8;
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (![(PKRecipientPickerViewController *)self _showRecentSuggestions])
  {
LABEL_12:
    _showNearby = 0;
    goto LABEL_21;
  }

  if (![(PKRecipientPickerViewController *)self _showFamilySuggestions]|| [(NSArray *)self->_suggestedFamilyRecipients count]> 4)
  {
    _showNearby2 = [(PKRecipientPickerViewController *)self _showNearby];
    v11 = [(NSArray *)self->_suggestedRecipients count];
    if (_showNearby2)
    {
      if (v11 > 3)
      {
        _showNearby = 4;
        goto LABEL_21;
      }
    }

    else if (v11 > 7)
    {
      goto LABEL_20;
    }

    suggestedRecipients = self->_suggestedRecipients;
    goto LABEL_19;
  }

  v7 = 1152;
  if ([(NSArray *)self->_suggestedRecipients count]<= 2)
  {
    goto LABEL_6;
  }

  _showNearby = 2;
LABEL_21:

  return _showNearby;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section >= 2)
  {
    if (section == 2)
    {
      v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PKDashboardRecipientPickerNearbyCellIdentifier" forIndexPath:pathCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PKDashboardRecipientPickerSuggestionsThumbnailCellIdentifier" forIndexPath:pathCopy];
    v10 = [(PKRecipientPickerViewController *)self _recipientForIndexPath:pathCopy];
    contact = [v10 contact];

    [(PKRecipientPickerViewController *)self _configureCell:v9 withContact:contact];
  }

  return v9;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= 2)
  {
    if (section == 2)
    {
      [(PKRecipientPickerViewController *)self _showNearbyAmountEntry];
    }
  }

  else
  {
    v6 = [(PKRecipientPickerViewController *)self _recipientForIndexPath:pathCopy];
    if (v6)
    {
      [(PKRecipientPickerViewController *)self _addRecipient:v6];
      [(PKRecipientPickerViewController *)self _showNextScreenWithRecipient:v6];
    }
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy bounds];
  v10 = 75.0;
  if ((v9 + -24.0) * 0.25 < 75.0)
  {
    [viewCopy bounds];
    v10 = (v11 + -24.0) * 0.25;
  }

  if ([pathCopy section] == 2)
  {
    p_sampleNearbyCell = &self->_sampleNearbyCell;
  }

  else
  {
    p_sampleNearbyCell = &self->_sampleThumbnailCell;
    [(PKRecipientPickerViewController *)self _configureCell:self->_sampleThumbnailCell withContact:0];
  }

  [*p_sampleNearbyCell sizeThatFits:{v10, 3.40282347e38}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(PKRecipientPickerViewController *)self _hasHeaderForSection:section])
  {
    if (section == 2)
    {
      p_sampleNearbyHeaderView = &self->_sampleNearbyHeaderView;
    }

    else
    {
      p_sampleNearbyHeaderView = &self->_sampleHeaderView;
      [(PKRecipientPickerViewController *)self _configureHeaderView:self->_sampleHeaderView inSection:section];
    }

    v11 = *p_sampleNearbyHeaderView;
    [viewCopy bounds];
    [v11 sizeThatFits:{v12, 3.40282347e38}];
    v9 = v13;
    v10 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v15 = v9;
  v16 = v10;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v5 = 12.0;
  if (index == 2)
  {
    v5 = 24.0;
  }

  v6 = 0.0;
  if (index != 2)
  {
    v6 = 24.0;
  }

  v7 = 0.0;
  v8 = 0.0;
  result.right = v8;
  result.bottom = v6;
  result.left = v7;
  result.top = v5;
  return result;
}

- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor
{
  v2 = [(PKRecipientPickerViewController *)self overrideUserInterfaceStyle]== 2;
  v3 = v2;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end