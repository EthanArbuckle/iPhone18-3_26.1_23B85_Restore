@interface PXCMMTranscriptBubbleViewController
+ (void)_registerPermanentFailureURL:(id)l;
- (BOOL)_shouldOpenCloudSettings;
- (BOOL)_shouldOpenInSafari;
- (BOOL)_shouldRetryOnTap;
- (BOOL)_shouldShowContent;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (CGSize)workaroundSizeForSize:(CGSize)size;
- (NSString)description;
- (PXCMMTranscriptBubbleTouchDelegate)touchDelegate;
- (PXCMMTranscriptBubbleViewController)init;
- (PXCMMTranscriptBubbleViewController)initWithCoder:(id)coder;
- (PXCMMTranscriptBubbleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXCMMTranscriptBubbleViewController)initWithURL:(id)l isSender:(BOOL)sender;
- (void)_acceptMomentShareIfNeeded:(id)needed;
- (void)_autoAcceptMomentShareIfNeeded:(id)needed;
- (void)_ensureBubbleStateTransition;
- (void)_fetchMomentShareFromNetworkURL:(id)l;
- (void)_momentShareURL:(id)l fetchDidFailWithError:(id)error;
- (void)_retryMomentShareFetch;
- (void)_tapGesture:(id)gesture;
- (void)_triggerForcedSyncIfNeeded;
- (void)_updateBubbleState;
- (void)_updateBubbleView;
- (void)_updateContent;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)setBubbleState:(int64_t)state;
- (void)setError:(id)error;
- (void)setTargetState:(int64_t)state;
- (void)viewDidLoad;
@end

@implementation PXCMMTranscriptBubbleViewController

- (PXCMMTranscriptBubbleTouchDelegate)touchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (CMMSpecObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:629 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PXCMMTranscriptBubbleViewController *)self _updateBubbleView];
    observableCopy = v11;
  }
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  v29 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v6 = PLSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Photo library did change for bubble: %@.", buf, 0xCu);
  }

  if (!self->_backingFetchResult)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:570 description:{@"Invalid parameter not satisfying: %@", @"_backingFetchResult"}];
  }

  v7 = [queueCopy changeDetailsForFetchResult:?];
  if (v7)
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = v7;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "Change details: %@.", buf, 0xCu);
    }

    fetchResultAfterChanges = [(PXCMMTranscriptBubbleViewController *)v7 fetchResultAfterChanges];
    backingFetchResult = self->_backingFetchResult;
    self->_backingFetchResult = fetchResultAfterChanges;

    changedIndexes = [(PXCMMTranscriptBubbleViewController *)v7 changedIndexes];
    v12 = [changedIndexes count];

    error = [(PXCMMTranscriptBubbleViewController *)self error];

    if (error)
    {
      goto LABEL_25;
    }

    fetchResultBeforeChanges = [(PXCMMTranscriptBubbleViewController *)v7 fetchResultBeforeChanges];
    firstObject = [fetchResultBeforeChanges firstObject];
    firstObject2 = [(PHFetchResult *)self->_backingFetchResult firstObject];
    v16 = [(PXCMMTranscriptBubbleViewController *)self url];
    pl_redactedShareURL = [v16 pl_redactedShareURL];

    if (firstObject2 && [firstObject2 trashedState] == 1 && !objc_msgSend(firstObject, "trashedState"))
    {
      v21 = PLSharingGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = pl_redactedShareURL;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "Moment share was trashed for URL: %{public}@", buf, 0xCu);
      }

      [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1100 debugDescription:{@"Moment share was trashed for URL: %@", pl_redactedShareURL}];
    }

    else
    {
      removedIndexes = [(PXCMMTranscriptBubbleViewController *)v7 removedIndexes];
      if (![removedIndexes count] || -[PHFetchResult count](self->_backingFetchResult, "count") || !objc_msgSend(fetchResultBeforeChanges, "count"))
      {
        goto LABEL_23;
      }

      isExpungingAndRefetching = self->_isExpungingAndRefetching;

      if (isExpungingAndRefetching)
      {
LABEL_24:

LABEL_25:
        if (self->_isExpungingAndRefetching)
        {
          insertedIndexes = [(PXCMMTranscriptBubbleViewController *)v7 insertedIndexes];
          if ([insertedIndexes count])
          {
            fetchResultBeforeChanges2 = [(PXCMMTranscriptBubbleViewController *)v7 fetchResultBeforeChanges];
            v24 = [fetchResultBeforeChanges2 count];

            if (!v24)
            {
              self->_isExpungingAndRefetching = 0;
            }
          }

          else
          {
          }
        }

        [(PXCMMTranscriptBubbleViewController *)self _updateBubbleState];
        if (v12)
        {
          [(PXCMMTranscriptBubbleViewController *)self _updateBubbleView];
        }

        [(PXCMMTranscriptBubbleViewController *)self _triggerForcedSyncIfNeeded];
        goto LABEL_33;
      }

      v20 = PLSharingGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = pl_redactedShareURL;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "Moment share object went away for URL: %{public}@", buf, 0xCu);
      }

      [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1101 debugDescription:{@"Moment share object went away for URL: %@", pl_redactedShareURL}];
    }
    removedIndexes = ;
    [(PXCMMTranscriptBubbleViewController *)self setError:removedIndexes];
LABEL_23:

    goto LABEL_24;
  }

LABEL_33:
}

- (void)_ensureBubbleStateTransition
{
  targetState = [(PXCMMTranscriptBubbleViewController *)self targetState];
  if (targetState != [(PXCMMTranscriptBubbleViewController *)self bubbleState]&& self->_readyForBubbleStateTransitions)
  {
    [(PXCMMTranscriptBubbleViewController *)self setBubbleState:[(PXCMMTranscriptBubbleViewController *)self targetState]];
    self->_readyForBubbleStateTransitions = 0;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 2000000000);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__PXCMMTranscriptBubbleViewController__ensureBubbleStateTransition__block_invoke;
    v5[3] = &unk_1E774C318;
    objc_copyWeak(&v6, &location);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __67__PXCMMTranscriptBubbleViewController__ensureBubbleStateTransition__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _readyForStateTransition];
}

- (void)_updateBubbleState
{
  v14 = *MEMORY[0x1E69E9840];
  bubbleState = [(PXCMMTranscriptBubbleViewController *)self bubbleState];
  v4 = +[PXCompleteMyMomentSettings sharedInstance];
  simulateMomentShareBubbleError = [v4 simulateMomentShareBubbleError];

  error = [(PXCMMTranscriptBubbleViewController *)self error];

  if (error || simulateMomentShareBubbleError)
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (simulateMomentShareBubbleError)
      {
        error2 = @"Simulated";
      }

      else
      {
        error2 = [(PXCMMTranscriptBubbleViewController *)self error];
      }

      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = error2;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Will enter error state for bubble: %@ - Error: %@", &v10, 0x16u);
      if ((simulateMomentShareBubbleError & 1) == 0)
      {
      }
    }

    v7 = 3;
  }

  else if ([(PXCMMTranscriptBubbleViewController *)self _shouldShowContent])
  {
    v7 = 2;
  }

  else
  {
    v7 = bubbleState != 0;
  }

  [(PXCMMTranscriptBubbleViewController *)self setTargetState:v7];
}

- (void)_updateContent
{
  if ([(PXCMMTranscriptBubbleViewController *)self _shouldShowContent])
  {
    momentShare = [(PXCMMTranscriptBubbleViewController *)self momentShare];
    [(PXCMMStackBubbleView *)self->_stackBubbleView setMomentShare:momentShare];
  }
}

- (void)_updateBubbleView
{
  v40 = *MEMORY[0x1E69E9840];
  bubbleState = [(PXCMMTranscriptBubbleViewController *)self bubbleState];
  if (bubbleState != 1)
  {
    if (bubbleState != 3)
    {
      if (bubbleState != 2)
      {
        return;
      }

      if (self->_stackBubbleView)
      {
        v4 = 0;
      }

      else
      {
        v26 = [PXCMMStackBubbleView alloc];
        v27 = [(PXCMMStackBubbleView *)v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        stackBubbleView = self->_stackBubbleView;
        self->_stackBubbleView = v27;

        px_screen = [(PXCMMTranscriptBubbleViewController *)self px_screen];
        [px_screen bounds];
        v31 = v30;

        [(PXCMMStackBubbleView *)self->_stackBubbleView setMaximumHeight:ceil(v31 * 0.2)];
        v4 = self->_stackBubbleView;
      }

      loadingStatusView = self->_loadingStatusView;
      self->_loadingStatusView = 0;

      errorStatusView = self->_errorStatusView;
      self->_errorStatusView = 0;

      [(PXCMMTranscriptBubbleViewController *)self _updateContent];
      if (!v4)
      {
        return;
      }

LABEL_28:
      [(PXTranscriptBubbleViewController *)self transitionToContentView:v4];

      return;
    }

    if (self->_errorStatusView)
    {
      v4 = 0;
    }

    else
    {
      v5 = [PXCMMTranscriptBubbleStatusView alloc];
      v6 = [(PXCMMTranscriptBubbleStatusView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v7 = self->_errorStatusView;
      self->_errorStatusView = v6;

      v4 = self->_errorStatusView;
    }

    v8 = self->_stackBubbleView;
    self->_stackBubbleView = 0;

    v9 = self->_loadingStatusView;
    self->_loadingStatusView = 0;

    v10 = PXLocalizedStringFromTable(@"PXMessagesBubbleLinkUnavailableTitle", @"PhotosUICore");
    [(PXCMMTranscriptBubbleStatusView *)self->_errorStatusView setStatusTitle:v10];

    error = [(PXCMMTranscriptBubbleViewController *)self error];
    v12 = +[PXCompleteMyMomentSettings sharedInstance];
    simulateMomentShareBubbleError = [v12 simulateMomentShareBubbleError];

    if (simulateMomentShareBubbleError)
    {
      v14 = +[PXCompleteMyMomentSettings sharedInstance];
      simulatedMomentShareBubbleErrorType = [v14 simulatedMomentShareBubbleErrorType];

      v16 = PLSharingGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (simulatedMomentShareBubbleErrorType > 0xB)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(&off_1E7739160 + simulatedMomentShareBubbleErrorType);
        }

        v34 = v17;
        v38 = 138543362;
        v39 = v34;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "Simulating moment share bubble error (PXCompleteMyMomentSettings.sharedInstance.simulatedMomentShareBubbleErrorType):  %{public}@", &v38, 0xCu);
      }

      if (simulatedMomentShareBubbleErrorType > 0xB)
      {
        v35 = 0;
LABEL_27:
        [(PXCMMTranscriptBubbleStatusView *)self->_errorStatusView setStatusDescription:v35];
        delegate = [(PXTranscriptBubbleViewController *)self delegate];
        [delegate safeAreaInsetsForBubble:self];
        [(PXCMMTranscriptBubbleStatusView *)self->_errorStatusView setBubbleSafeAreaInsets:?];

        spec = [(PXFeatureSpecManager *)self->_specManager spec];
        [(PXCMMTranscriptBubbleStatusView *)self->_errorStatusView setSpec:spec];

        if (!v4)
        {
          return;
        }

        goto LABEL_28;
      }
    }

    else
    {
      simulatedMomentShareBubbleErrorType = PXMomentShareTypeForError(error);
    }

    v35 = PXLocalizedStringFromTable(off_1E774B750[simulatedMomentShareBubbleErrorType], @"PhotosUICore");
    goto LABEL_27;
  }

  if (self->_loadingStatusView)
  {
    v4 = 0;
  }

  else
  {
    v18 = [PXCMMTranscriptBubbleStatusView alloc];
    v19 = [(PXCMMTranscriptBubbleStatusView *)v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v20 = self->_loadingStatusView;
    self->_loadingStatusView = v19;

    v4 = self->_loadingStatusView;
  }

  v21 = self->_stackBubbleView;
  self->_stackBubbleView = 0;

  v22 = self->_errorStatusView;
  self->_errorStatusView = 0;

  v23 = PXLocalizedStringFromTable(@"PXMessagesBubbleLoadingMessage", @"PhotosUICore");
  [(PXCMMTranscriptBubbleStatusView *)self->_loadingStatusView setStatusTitle:v23];

  [(PXCMMTranscriptBubbleStatusView *)self->_loadingStatusView setShowsActivityIndicator:1];
  delegate2 = [(PXTranscriptBubbleViewController *)self delegate];
  [delegate2 safeAreaInsetsForBubble:self];
  [(PXCMMTranscriptBubbleStatusView *)self->_loadingStatusView setBubbleSafeAreaInsets:?];

  spec2 = [(PXFeatureSpecManager *)self->_specManager spec];
  [(PXCMMTranscriptBubbleStatusView *)self->_loadingStatusView setSpec:spec2];

  if (v4)
  {
    goto LABEL_28;
  }
}

- (BOOL)_shouldShowContent
{
  momentShare = [(PXCMMTranscriptBubbleViewController *)self momentShare];
  v3 = momentShare;
  if (momentShare)
  {
    v4 = [momentShare trashedState] != 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PXCMMTranscriptBubbleViewController;
  [(PXTranscriptBubbleViewController *)&v13 viewDidLoad];
  px_extendedTraitCollection = [(PXCMMTranscriptBubbleViewController *)self px_extendedTraitCollection];
  if (!px_extendedTraitCollection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:380 description:@"Spec cannot be set up if there's no trait collection"];
  }

  if ([(PXCMMTranscriptBubbleViewController *)self isSender])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [[PXCMMSpecManager alloc] initWithExtendedTraitCollection:px_extendedTraitCollection activityType:v5];
  specManager = self->_specManager;
  self->_specManager = v6;

  [(PXCMMSpecManager *)self->_specManager registerChangeObserver:self context:CMMSpecObservationContext];
  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapGesture_];
  view = [(PXCMMTranscriptBubbleViewController *)self view];
  [view addGestureRecognizer:v8];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view2 = [(PXCMMTranscriptBubbleViewController *)self view];
  [view2 setBackgroundColor:clearColor];
}

- (void)_tapGesture:(id)gesture
{
  v13 = *MEMORY[0x1E69E9840];
  if ([gesture state] != 3)
  {
    return;
  }

  if ([(PXCMMTranscriptBubbleViewController *)self _shouldNavigateToContent])
  {
    delegate = [(PXTranscriptBubbleViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      momentShare = [(PXCMMTranscriptBubbleViewController *)self momentShare];
      touchDelegate = [(PXCMMTranscriptBubbleViewController *)self touchDelegate];
      [touchDelegate transcriptBubbleViewController:self didSelectMomentShare:momentShare];
    }

    return;
  }

  if ([(PXCMMTranscriptBubbleViewController *)self _shouldRetryOnTap])
  {

    [(PXCMMTranscriptBubbleViewController *)self _retryMomentShareFetch];
    return;
  }

  if ([(PXCMMTranscriptBubbleViewController *)self _shouldOpenInSafari])
  {
    v7 = PLSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to open URL in Safari for bubble: %@", buf, 0xCu);
    }

    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v9 = [(PXCMMTranscriptBubbleViewController *)self url];
    [defaultWorkspace openURL:v9 configuration:0 completionHandler:0];

LABEL_15:
    return;
  }

  if (![(PXCMMTranscriptBubbleViewController *)self _shouldOpenCloudSettings])
  {
    defaultWorkspace = PLSharingGetLog();
    if (os_log_type_enabled(defaultWorkspace, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1A3C1C000, defaultWorkspace, OS_LOG_TYPE_DEFAULT, "No action required for tap on bubble: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  [PXSystemNavigation navigateToDestination:4 completion:0];
}

- (BOOL)_shouldOpenCloudSettings
{
  error = [(PXCMMTranscriptBubbleViewController *)self error];
  v3 = error;
  if (error)
  {
    v4 = PXMomentShareTypeForError(error) == 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldOpenInSafari
{
  error = [(PXCMMTranscriptBubbleViewController *)self error];
  v3 = error;
  if (error)
  {
    v4 = PXMomentShareTypeForError(error) == 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldRetryOnTap
{
  error = [(PXCMMTranscriptBubbleViewController *)self error];

  if (error)
  {
    error2 = [(PXCMMTranscriptBubbleViewController *)self error];
    v5 = PXMomentShareTypeForError(error2);

    if (v5 == 1)
    {
      v7 = 1;
    }

    else if (v5 == 3)
    {
      momentShare = [(PXCMMTranscriptBubbleViewController *)self momentShare];
      v7 = [momentShare status] != 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = +[PXCompleteMyMomentSettings sharedInstance];
    if ([v8 alwaysTapToRetry])
    {
      momentShare2 = [(PXCMMTranscriptBubbleViewController *)self momentShare];
      v10 = momentShare2 == 0;

      v7 |= v10;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)_retryMomentShareFetch
{
  v20 = *MEMORY[0x1E69E9840];
  momentShare = [(PXCMMTranscriptBubbleViewController *)self momentShare];
  v4 = momentShare;
  if (momentShare)
  {
    if (!self->_isExpungingAndRefetching && [momentShare trashedState] == 1 && objc_msgSend(v4, "status") != 1)
    {
      [(PXCMMTranscriptBubbleViewController *)self setError:0];
      self->_isExpungingAndRefetching = 1;
      v10 = PLSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(PXCMMTranscriptBubbleViewController *)self url];
        pl_redactedShareURL = [v11 pl_redactedShareURL];
        uuid = [v4 uuid];
        *buf = 138543618;
        selfCopy = pl_redactedShareURL;
        v18 = 2112;
        v19 = uuid;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Retrying moment share fetch for URL: %{public}@ - Trashed Moment Shared with UUID: %@", buf, 0x16u);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __61__PXCMMTranscriptBubbleViewController__retryMomentShareFetch__block_invoke;
      v14[3] = &unk_1E774B730;
      v14[4] = self;
      v15 = v4;
      PXExpungeMomentShare(v15, v14);
    }

    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Skipping moment share retry. There's already a moment share for bubble: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = PLSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PXCMMTranscriptBubbleViewController *)self url];
      pl_redactedShareURL2 = [v7 pl_redactedShareURL];
      error = [(PXCMMTranscriptBubbleViewController *)self error];
      *buf = 138543618;
      selfCopy = pl_redactedShareURL2;
      v18 = 2112;
      v19 = error;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Retrying moment share fetch for URL: %{public}@ - Previous error: %@", buf, 0x16u);
    }

    [(PXCMMTranscriptBubbleViewController *)self setError:0];
    v5 = [(PXCMMTranscriptBubbleViewController *)self url];
    [(PXCMMTranscriptBubbleViewController *)self _fetchMomentShareFromNetworkURL:v5];
  }
}

void __61__PXCMMTranscriptBubbleViewController__retryMomentShareFetch__block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) url];
      v9 = [v8 pl_redactedShareURL];
      v10 = [*(a1 + 40) uuid];
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Successfully expunged trashed moment share fetch for refetch - URL: %{public}@ UUID: %@", &v16, 0x16u);
    }

    v11 = *(a1 + 32);
    v12 = [v11 url];
    [v11 _fetchMomentShareFromNetworkURL:v12];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) url];
      v14 = [v13 pl_redactedShareURL];
      v15 = [*(a1 + 40) uuid];
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Failed to expunge trashed moment share fetch for refetch - URL: %{public}@ UUID: %@", &v16, 0x16u);
    }

    [*(a1 + 32) setError:v5];
    *(*(a1 + 32) + 1105) = 0;
  }
}

- (void)_triggerForcedSyncIfNeeded
{
  if (!self->_triggeredForcedSync)
  {
    momentShare = [(PXCMMTranscriptBubbleViewController *)self momentShare];
    if (-[PXCMMTranscriptBubbleViewController bubbleState](self, "bubbleState") == 2 && momentShare && ([momentShare status] == 1 || objc_msgSend(momentShare, "status") == 3))
    {
      self->_triggeredForcedSync = 1;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __65__PXCMMTranscriptBubbleViewController__triggerForcedSyncIfNeeded__block_invoke;
      v4[3] = &unk_1E774BE98;
      v4[4] = self;
      [momentShare forceSyncMomentShareWithCompletion:v4];
    }
  }
}

void __65__PXCMMTranscriptBubbleViewController__triggerForcedSyncIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = PLSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 134218242;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Forced sync for bubble %p, failed with error: %@", &v6, 0x16u);
    }
  }
}

- (void)_acceptMomentShareIfNeeded:(id)needed
{
  neededCopy = needed;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXCMMTranscriptBubbleViewController__acceptMomentShareIfNeeded___block_invoke;
  block[3] = &unk_1E774C648;
  v4 = neededCopy;
  v10 = v4;
  v5 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
  v6 = +[PXCompleteMyMomentSettings sharedInstance];
  simulateDelays = [v6 simulateDelays];

  if (simulateDelays)
  {
    v8 = dispatch_time(0, 3000000000);
    dispatch_after(v8, MEMORY[0x1E69E96A0], v5);
  }

  else
  {
    v5[2](v5);
  }
}

- (void)_autoAcceptMomentShareIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[PXCompleteMyMomentSettings sharedInstance];
  autoAcceptBubbles = [v4 autoAcceptBubbles];

  if (autoAcceptBubbles)
  {
    [(PXCMMTranscriptBubbleViewController *)self _acceptMomentShareIfNeeded:neededCopy];
  }
}

- (void)_momentShareURL:(id)l fetchDidFailWithError:(id)error
{
  lCopy = l;
  errorCopy = error;
  [(PXCMMTranscriptBubbleViewController *)self setError:errorCopy];
  v7 = PXMomentShareTypeForError(errorCopy);

  if (v7 == 4 || (v7 & 0xE) == 2)
  {
    [objc_opt_class() _registerPermanentFailureURL:lCopy];
  }
}

- (void)_fetchMomentShareFromNetworkURL:(id)l
{
  lCopy = l;
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __71__PXCMMTranscriptBubbleViewController__fetchMomentShareFromNetworkURL___block_invoke;
  v13 = &unk_1E774B708;
  v5 = lCopy;
  v14 = v5;
  selfCopy = self;
  objc_copyWeak(&v16, &location);
  v6 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, &v10);
  v7 = [PXCompleteMyMomentSettings sharedInstance:v10];
  simulateDelays = [v7 simulateDelays];

  if (simulateDelays)
  {
    v9 = dispatch_time(0, 3000000000);
    dispatch_after(v9, MEMORY[0x1E69E96A0], v6);
  }

  else
  {
    v6[2](v6);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __71__PXCMMTranscriptBubbleViewController__fetchMomentShareFromNetworkURL___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978930];
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 1056) librarySpecificFetchOptions];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__PXCMMTranscriptBubbleViewController__fetchMomentShareFromNetworkURL___block_invoke_2;
  v5[3] = &unk_1E774B6E0;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 32);
  [v2 fetchMomentShareFromShareURL:v3 options:v4 completionHandler:v5];

  objc_destroyWeak(&v7);
}

void __71__PXCMMTranscriptBubbleViewController__fetchMomentShareFromNetworkURL___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    objc_copyWeak(&v10, (a1 + 40));
    *(a1 + 32);
    v6;
    px_dispatch_on_main_queue();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _autoAcceptMomentShareIfNeeded:v5];

  v8 = PLSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) pl_redactedShareURL];
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Successfully fetched MomentShare for URL %{public}@", buf, 0xCu);
  }
}

void __71__PXCMMTranscriptBubbleViewController__fetchMomentShareFromNetworkURL___block_invoke_216(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _momentShareURL:*(a1 + 32) fetchDidFailWithError:*(a1 + 40)];
}

- (void)setTargetState:(int64_t)state
{
  if (self->_targetState != state)
  {
    self->_targetState = state;
    [(PXCMMTranscriptBubbleViewController *)self _ensureBubbleStateTransition];
  }
}

- (void)setBubbleState:(int64_t)state
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_bubbleState != state)
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      bubbleState = self->_bubbleState;
      v7 = 138412802;
      selfCopy = self;
      v9 = 2048;
      v10 = bubbleState;
      v11 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Transitioning bubble %@ state from %ld to %ld", &v7, 0x20u);
    }

    self->_bubbleState = state;
    [(PXCMMTranscriptBubbleViewController *)self _updateBubbleView];
  }
}

- (void)setError:(id)error
{
  errorCopy = error;
  if (self->_error != errorCopy)
  {
    v6 = errorCopy;
    objc_storeStrong(&self->_error, error);
    [(PXCMMTranscriptBubbleViewController *)self _updateBubbleState];
    errorCopy = v6;
  }
}

- (CGSize)workaroundSizeForSize:(CGSize)size
{
  [PXCMMStackBubbleView sizeThatFits:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(PXCMMTranscriptBubbleViewController *)self _updateBubbleView];
  v8.receiver = self;
  v8.super_class = PXCMMTranscriptBubbleViewController;
  [(PXTranscriptBubbleViewController *)&v8 contentSizeThatFits:width, height];
  result.height = v7;
  result.width = v6;
  return result;
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = PXCMMTranscriptBubbleViewController;
  v3 = [(PXCMMTranscriptBubbleViewController *)&v17 description];
  momentShare = [(PXCMMTranscriptBubbleViewController *)self momentShare];
  v5 = [(PXCMMTranscriptBubbleViewController *)self url];
  pl_redactedShareURL = [v5 pl_redactedShareURL];
  if ([(PXCMMTranscriptBubbleViewController *)self isSender])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  if (momentShare)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  assetCount = [momentShare assetCount];
  cloudPhotoCount = [momentShare cloudPhotoCount];
  v13 = [momentShare cloudVideoCount] + cloudPhotoCount;
  error = [(PXCMMTranscriptBubbleViewController *)self error];
  v15 = [v3 stringByAppendingFormat:@" URL: %@ isSender: %@ hasMomentShare: %@ expectedAssetCount: %lu cloudCount: %lu error: %@", pl_redactedShareURL, v8, v10, assetCount, v13, error];

  return v15;
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary px_unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PXCMMTranscriptBubbleViewController;
  [(PXCMMTranscriptBubbleViewController *)&v3 dealloc];
}

- (PXCMMTranscriptBubbleViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:144 description:{@"%s is not available as initializer", "-[PXCMMTranscriptBubbleViewController initWithCoder:]"}];

  abort();
}

- (PXCMMTranscriptBubbleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:140 description:{@"%s is not available as initializer", "-[PXCMMTranscriptBubbleViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXCMMTranscriptBubbleViewController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:136 description:{@"%s is not available as initializer", "-[PXCMMTranscriptBubbleViewController init]"}];

  abort();
}

- (PXCMMTranscriptBubbleViewController)initWithURL:(id)l isSender:(BOOL)sender
{
  v46 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v39.receiver = self;
  v39.super_class = PXCMMTranscriptBubbleViewController;
  v8 = [(PXCMMTranscriptBubbleViewController *)&v39 initWithNibName:0 bundle:0];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_30;
  }

  if (!lCopy)
  {
    v10 = PLSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "A URL must be provided to a transcript bubble", buf, 2u);
    }

    objc_storeStrong(&v9->_url, l);
    v9->_isSender = sender;
    goto LABEL_27;
  }

  objc_storeStrong(&v8->_url, l);
  v9->_isSender = sender;
  v38 = 0;
  v11 = PXFetchAssetCollectionForCMMShareURL(lCopy, 1, &v38);
  backingFetchResult = v9->_backingFetchResult;
  v9->_backingFetchResult = v11;

  if (v38 == 1)
  {
    v13 = PLSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      pl_redactedShareURL = [lCopy pl_redactedShareURL];
      *buf = 138543362;
      v41 = pl_redactedShareURL;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Unsupported debug URL: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696ABC0];
    pl_redactedShareURL2 = [lCopy pl_redactedShareURL];
    v17 = [v15 px_errorWithDomain:@"PXCMMErrorDomain" code:-1102 debugDescription:{@"Debug URLs are unsupported: %@", pl_redactedShareURL2}];
    error = v9->_error;
    v9->_error = v17;

    goto LABEL_26;
  }

  firstObject = [(PHFetchResult *)v9->_backingFetchResult firstObject];
  mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  photoLibrary = v9->_photoLibrary;
  v9->_photoLibrary = mEMORY[0x1E69789A8];

  if (firstObject)
  {
    if ([firstObject trashedState] != 1)
    {
      [(PXCMMTranscriptBubbleViewController *)v9 _triggerForcedSyncIfNeeded];
      goto LABEL_25;
    }

    v22 = PLSharingGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      pl_redactedShareURL3 = [lCopy pl_redactedShareURL];
      *buf = 138543362;
      v41 = pl_redactedShareURL3;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEFAULT, "Bubble will display error for trashed moment share URL: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E696ABC0];
    pl_redactedShareURL4 = [lCopy pl_redactedShareURL];
    v26 = [v24 px_errorWithDomain:@"PXCMMErrorDomain" code:-1100 debugDescription:{@"Moment share is trashed for URL: %@", pl_redactedShareURL4}];
  }

  else
  {
    v27 = [objc_opt_class() _isPermanentFailureURL:lCopy];
    v28 = PLSharingGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if ((v27 & 1) == 0)
    {
      if (v29)
      {
        pl_redactedShareURL5 = [lCopy pl_redactedShareURL];
        *buf = 138543362;
        v41 = pl_redactedShareURL5;
        _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_DEFAULT, "Unable to find MomentShare for URL %{public}@. Triggering network request", buf, 0xCu);
      }

      [(PXCMMTranscriptBubbleViewController *)v9 _fetchMomentShareFromNetworkURL:lCopy];
      goto LABEL_25;
    }

    if (v29)
    {
      pl_redactedShareURL6 = [lCopy pl_redactedShareURL];
      *buf = 138543362;
      v41 = pl_redactedShareURL6;
      _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_DEFAULT, "Dropping to error state for known permanent failure URL: %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x1E696ABC0];
    pl_redactedShareURL4 = [lCopy pl_redactedShareURL];
    v26 = [v31 px_genericErrorWithDebugDescription:{@"Known permanent failure for URL: %@", pl_redactedShareURL4}];
  }

  v32 = v9->_error;
  v9->_error = v26;

LABEL_25:
LABEL_26:
  [(PHPhotoLibrary *)v9->_photoLibrary px_registerChangeObserver:v9];
LABEL_27:
  [(PXCMMTranscriptBubbleViewController *)v9 px_enableExtendedTraitCollection];
  v9->_readyForBubbleStateTransitions = 1;
  [(PXCMMTranscriptBubbleViewController *)v9 _updateBubbleState];
  v34 = PLSharingGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    bubbleState = [(PXCMMTranscriptBubbleViewController *)v9 bubbleState];
    targetState = [(PXCMMTranscriptBubbleViewController *)v9 targetState];
    *buf = 138412802;
    v41 = v9;
    v42 = 2048;
    v43 = bubbleState;
    v44 = 2048;
    v45 = targetState;
    _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEFAULT, "Initialized transcript bubble: %@ -  Initial state %lu (%lu)", buf, 0x20u);
  }

LABEL_30:
  return v9;
}

+ (void)_registerPermanentFailureURL:(id)l
{
  lCopy = l;
  v4 = knownPermanentFailures;
  v7 = lCopy;
  if (!knownPermanentFailures)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = knownPermanentFailures;
    knownPermanentFailures = v5;

    lCopy = v7;
    v4 = knownPermanentFailures;
  }

  [v4 addObject:lCopy];
}

@end