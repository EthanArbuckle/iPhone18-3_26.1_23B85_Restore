@interface PXCMMTranscriptBubbleViewController
+ (void)_registerPermanentFailureURL:(id)a3;
- (BOOL)_shouldOpenCloudSettings;
- (BOOL)_shouldOpenInSafari;
- (BOOL)_shouldRetryOnTap;
- (BOOL)_shouldShowContent;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (CGSize)workaroundSizeForSize:(CGSize)a3;
- (NSString)description;
- (PXCMMTranscriptBubbleTouchDelegate)touchDelegate;
- (PXCMMTranscriptBubbleViewController)init;
- (PXCMMTranscriptBubbleViewController)initWithCoder:(id)a3;
- (PXCMMTranscriptBubbleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXCMMTranscriptBubbleViewController)initWithURL:(id)a3 isSender:(BOOL)a4;
- (void)_acceptMomentShareIfNeeded:(id)a3;
- (void)_autoAcceptMomentShareIfNeeded:(id)a3;
- (void)_ensureBubbleStateTransition;
- (void)_fetchMomentShareFromNetworkURL:(id)a3;
- (void)_momentShareURL:(id)a3 fetchDidFailWithError:(id)a4;
- (void)_retryMomentShareFetch;
- (void)_tapGesture:(id)a3;
- (void)_triggerForcedSyncIfNeeded;
- (void)_updateBubbleState;
- (void)_updateBubbleView;
- (void)_updateContent;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)setBubbleState:(int64_t)a3;
- (void)setError:(id)a3;
- (void)setTargetState:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation PXCMMTranscriptBubbleViewController

- (PXCMMTranscriptBubbleTouchDelegate)touchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (CMMSpecObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:629 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PXCMMTranscriptBubbleViewController *)self _updateBubbleView];
    v9 = v11;
  }
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = self;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Photo library did change for bubble: %@.", buf, 0xCu);
  }

  if (!self->_backingFetchResult)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:570 description:{@"Invalid parameter not satisfying: %@", @"_backingFetchResult"}];
  }

  v7 = [v5 changeDetailsForFetchResult:?];
  if (v7)
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "Change details: %@.", buf, 0xCu);
    }

    v9 = [(PXCMMTranscriptBubbleViewController *)v7 fetchResultAfterChanges];
    backingFetchResult = self->_backingFetchResult;
    self->_backingFetchResult = v9;

    v11 = [(PXCMMTranscriptBubbleViewController *)v7 changedIndexes];
    v12 = [v11 count];

    v13 = [(PXCMMTranscriptBubbleViewController *)self error];

    if (v13)
    {
      goto LABEL_25;
    }

    v14 = [(PXCMMTranscriptBubbleViewController *)v7 fetchResultBeforeChanges];
    v26 = [v14 firstObject];
    v15 = [(PHFetchResult *)self->_backingFetchResult firstObject];
    v16 = [(PXCMMTranscriptBubbleViewController *)self url];
    v17 = [v16 pl_redactedShareURL];

    if (v15 && [v15 trashedState] == 1 && !objc_msgSend(v26, "trashedState"))
    {
      v21 = PLSharingGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v17;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "Moment share was trashed for URL: %{public}@", buf, 0xCu);
      }

      [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1100 debugDescription:{@"Moment share was trashed for URL: %@", v17}];
    }

    else
    {
      v18 = [(PXCMMTranscriptBubbleViewController *)v7 removedIndexes];
      if (![v18 count] || -[PHFetchResult count](self->_backingFetchResult, "count") || !objc_msgSend(v14, "count"))
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
          v22 = [(PXCMMTranscriptBubbleViewController *)v7 insertedIndexes];
          if ([v22 count])
          {
            v23 = [(PXCMMTranscriptBubbleViewController *)v7 fetchResultBeforeChanges];
            v24 = [v23 count];

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
        v28 = v17;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "Moment share object went away for URL: %{public}@", buf, 0xCu);
      }

      [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1101 debugDescription:{@"Moment share object went away for URL: %@", v17}];
    }
    v18 = ;
    [(PXCMMTranscriptBubbleViewController *)self setError:v18];
LABEL_23:

    goto LABEL_24;
  }

LABEL_33:
}

- (void)_ensureBubbleStateTransition
{
  v3 = [(PXCMMTranscriptBubbleViewController *)self targetState];
  if (v3 != [(PXCMMTranscriptBubbleViewController *)self bubbleState]&& self->_readyForBubbleStateTransitions)
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
  v3 = [(PXCMMTranscriptBubbleViewController *)self bubbleState];
  v4 = +[PXCompleteMyMomentSettings sharedInstance];
  v5 = [v4 simulateMomentShareBubbleError];

  v6 = [(PXCMMTranscriptBubbleViewController *)self error];

  if (v6 || v5)
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (v5)
      {
        v9 = @"Simulated";
      }

      else
      {
        v9 = [(PXCMMTranscriptBubbleViewController *)self error];
      }

      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Will enter error state for bubble: %@ - Error: %@", &v10, 0x16u);
      if ((v5 & 1) == 0)
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
    v7 = v3 != 0;
  }

  [(PXCMMTranscriptBubbleViewController *)self setTargetState:v7];
}

- (void)_updateContent
{
  if ([(PXCMMTranscriptBubbleViewController *)self _shouldShowContent])
  {
    v3 = [(PXCMMTranscriptBubbleViewController *)self momentShare];
    [(PXCMMStackBubbleView *)self->_stackBubbleView setMomentShare:v3];
  }
}

- (void)_updateBubbleView
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(PXCMMTranscriptBubbleViewController *)self bubbleState];
  if (v3 != 1)
  {
    if (v3 != 3)
    {
      if (v3 != 2)
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

        v29 = [(PXCMMTranscriptBubbleViewController *)self px_screen];
        [v29 bounds];
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

    v11 = [(PXCMMTranscriptBubbleViewController *)self error];
    v12 = +[PXCompleteMyMomentSettings sharedInstance];
    v13 = [v12 simulateMomentShareBubbleError];

    if (v13)
    {
      v14 = +[PXCompleteMyMomentSettings sharedInstance];
      v15 = [v14 simulatedMomentShareBubbleErrorType];

      v16 = PLSharingGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (v15 > 0xB)
        {
          v17 = 0;
        }

        else
        {
          v17 = *(&off_1E7739160 + v15);
        }

        v34 = v17;
        v38 = 138543362;
        v39 = v34;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "Simulating moment share bubble error (PXCompleteMyMomentSettings.sharedInstance.simulatedMomentShareBubbleErrorType):  %{public}@", &v38, 0xCu);
      }

      if (v15 > 0xB)
      {
        v35 = 0;
LABEL_27:
        [(PXCMMTranscriptBubbleStatusView *)self->_errorStatusView setStatusDescription:v35];
        v36 = [(PXTranscriptBubbleViewController *)self delegate];
        [v36 safeAreaInsetsForBubble:self];
        [(PXCMMTranscriptBubbleStatusView *)self->_errorStatusView setBubbleSafeAreaInsets:?];

        v37 = [(PXFeatureSpecManager *)self->_specManager spec];
        [(PXCMMTranscriptBubbleStatusView *)self->_errorStatusView setSpec:v37];

        if (!v4)
        {
          return;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v15 = PXMomentShareTypeForError(v11);
    }

    v35 = PXLocalizedStringFromTable(off_1E774B750[v15], @"PhotosUICore");
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
  v24 = [(PXTranscriptBubbleViewController *)self delegate];
  [v24 safeAreaInsetsForBubble:self];
  [(PXCMMTranscriptBubbleStatusView *)self->_loadingStatusView setBubbleSafeAreaInsets:?];

  v25 = [(PXFeatureSpecManager *)self->_specManager spec];
  [(PXCMMTranscriptBubbleStatusView *)self->_loadingStatusView setSpec:v25];

  if (v4)
  {
    goto LABEL_28;
  }
}

- (BOOL)_shouldShowContent
{
  v2 = [(PXCMMTranscriptBubbleViewController *)self momentShare];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 trashedState] != 1;
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
  v4 = [(PXCMMTranscriptBubbleViewController *)self px_extendedTraitCollection];
  if (!v4)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:380 description:@"Spec cannot be set up if there's no trait collection"];
  }

  if ([(PXCMMTranscriptBubbleViewController *)self isSender])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [[PXCMMSpecManager alloc] initWithExtendedTraitCollection:v4 activityType:v5];
  specManager = self->_specManager;
  self->_specManager = v6;

  [(PXCMMSpecManager *)self->_specManager registerChangeObserver:self context:CMMSpecObservationContext];
  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapGesture_];
  v9 = [(PXCMMTranscriptBubbleViewController *)self view];
  [v9 addGestureRecognizer:v8];

  v10 = [MEMORY[0x1E69DC888] clearColor];
  v11 = [(PXCMMTranscriptBubbleViewController *)self view];
  [v11 setBackgroundColor:v10];
}

- (void)_tapGesture:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if ([a3 state] != 3)
  {
    return;
  }

  if ([(PXCMMTranscriptBubbleViewController *)self _shouldNavigateToContent])
  {
    v4 = [(PXTranscriptBubbleViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v10 = [(PXCMMTranscriptBubbleViewController *)self momentShare];
      v6 = [(PXCMMTranscriptBubbleViewController *)self touchDelegate];
      [v6 transcriptBubbleViewController:self didSelectMomentShare:v10];
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
      v12 = self;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to open URL in Safari for bubble: %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E6963608] defaultWorkspace];
    v9 = [(PXCMMTranscriptBubbleViewController *)self url];
    [v8 openURL:v9 configuration:0 completionHandler:0];

LABEL_15:
    return;
  }

  if (![(PXCMMTranscriptBubbleViewController *)self _shouldOpenCloudSettings])
  {
    v8 = PLSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = self;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "No action required for tap on bubble: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  [PXSystemNavigation navigateToDestination:4 completion:0];
}

- (BOOL)_shouldOpenCloudSettings
{
  v2 = [(PXCMMTranscriptBubbleViewController *)self error];
  v3 = v2;
  if (v2)
  {
    v4 = PXMomentShareTypeForError(v2) == 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldOpenInSafari
{
  v2 = [(PXCMMTranscriptBubbleViewController *)self error];
  v3 = v2;
  if (v2)
  {
    v4 = PXMomentShareTypeForError(v2) == 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldRetryOnTap
{
  v3 = [(PXCMMTranscriptBubbleViewController *)self error];

  if (v3)
  {
    v4 = [(PXCMMTranscriptBubbleViewController *)self error];
    v5 = PXMomentShareTypeForError(v4);

    if (v5 == 1)
    {
      v7 = 1;
    }

    else if (v5 == 3)
    {
      v6 = [(PXCMMTranscriptBubbleViewController *)self momentShare];
      v7 = [v6 status] != 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = +[PXCompleteMyMomentSettings sharedInstance];
    if ([v8 alwaysTapToRetry])
    {
      v9 = [(PXCMMTranscriptBubbleViewController *)self momentShare];
      v10 = v9 == 0;

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
  v3 = [(PXCMMTranscriptBubbleViewController *)self momentShare];
  v4 = v3;
  if (v3)
  {
    if (!self->_isExpungingAndRefetching && [v3 trashedState] == 1 && objc_msgSend(v4, "status") != 1)
    {
      [(PXCMMTranscriptBubbleViewController *)self setError:0];
      self->_isExpungingAndRefetching = 1;
      v10 = PLSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(PXCMMTranscriptBubbleViewController *)self url];
        v12 = [v11 pl_redactedShareURL];
        v13 = [v4 uuid];
        *buf = 138543618;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
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
      v17 = self;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Skipping moment share retry. There's already a moment share for bubble: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = PLSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PXCMMTranscriptBubbleViewController *)self url];
      v8 = [v7 pl_redactedShareURL];
      v9 = [(PXCMMTranscriptBubbleViewController *)self error];
      *buf = 138543618;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
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
    v3 = [(PXCMMTranscriptBubbleViewController *)self momentShare];
    if (-[PXCMMTranscriptBubbleViewController bubbleState](self, "bubbleState") == 2 && v3 && ([v3 status] == 1 || objc_msgSend(v3, "status") == 3))
    {
      self->_triggeredForcedSync = 1;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __65__PXCMMTranscriptBubbleViewController__triggerForcedSyncIfNeeded__block_invoke;
      v4[3] = &unk_1E774BE98;
      v4[4] = self;
      [v3 forceSyncMomentShareWithCompletion:v4];
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

- (void)_acceptMomentShareIfNeeded:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PXCMMTranscriptBubbleViewController__acceptMomentShareIfNeeded___block_invoke;
  block[3] = &unk_1E774C648;
  v4 = v3;
  v10 = v4;
  v5 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
  v6 = +[PXCompleteMyMomentSettings sharedInstance];
  v7 = [v6 simulateDelays];

  if (v7)
  {
    v8 = dispatch_time(0, 3000000000);
    dispatch_after(v8, MEMORY[0x1E69E96A0], v5);
  }

  else
  {
    v5[2](v5);
  }
}

- (void)_autoAcceptMomentShareIfNeeded:(id)a3
{
  v6 = a3;
  v4 = +[PXCompleteMyMomentSettings sharedInstance];
  v5 = [v4 autoAcceptBubbles];

  if (v5)
  {
    [(PXCMMTranscriptBubbleViewController *)self _acceptMomentShareIfNeeded:v6];
  }
}

- (void)_momentShareURL:(id)a3 fetchDidFailWithError:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(PXCMMTranscriptBubbleViewController *)self setError:v6];
  v7 = PXMomentShareTypeForError(v6);

  if (v7 == 4 || (v7 & 0xE) == 2)
  {
    [objc_opt_class() _registerPermanentFailureURL:v8];
  }
}

- (void)_fetchMomentShareFromNetworkURL:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __71__PXCMMTranscriptBubbleViewController__fetchMomentShareFromNetworkURL___block_invoke;
  v13 = &unk_1E774B708;
  v5 = v4;
  v14 = v5;
  v15 = self;
  objc_copyWeak(&v16, &location);
  v6 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, &v10);
  v7 = [PXCompleteMyMomentSettings sharedInstance:v10];
  v8 = [v7 simulateDelays];

  if (v8)
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

- (void)setTargetState:(int64_t)a3
{
  if (self->_targetState != a3)
  {
    self->_targetState = a3;
    [(PXCMMTranscriptBubbleViewController *)self _ensureBubbleStateTransition];
  }
}

- (void)setBubbleState:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_bubbleState != a3)
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      bubbleState = self->_bubbleState;
      v7 = 138412802;
      v8 = self;
      v9 = 2048;
      v10 = bubbleState;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Transitioning bubble %@ state from %ld to %ld", &v7, 0x20u);
    }

    self->_bubbleState = a3;
    [(PXCMMTranscriptBubbleViewController *)self _updateBubbleView];
  }
}

- (void)setError:(id)a3
{
  v5 = a3;
  if (self->_error != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_error, a3);
    [(PXCMMTranscriptBubbleViewController *)self _updateBubbleState];
    v5 = v6;
  }
}

- (CGSize)workaroundSizeForSize:(CGSize)a3
{
  [PXCMMStackBubbleView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v4 = [(PXCMMTranscriptBubbleViewController *)self momentShare];
  v5 = [(PXCMMTranscriptBubbleViewController *)self url];
  v6 = [v5 pl_redactedShareURL];
  if ([(PXCMMTranscriptBubbleViewController *)self isSender])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = v7;
  if (v4)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = v9;
  v11 = [v4 assetCount];
  v12 = [v4 cloudPhotoCount];
  v13 = [v4 cloudVideoCount] + v12;
  v14 = [(PXCMMTranscriptBubbleViewController *)self error];
  v15 = [v3 stringByAppendingFormat:@" URL: %@ isSender: %@ hasMomentShare: %@ expectedAssetCount: %lu cloudCount: %lu error: %@", v6, v8, v10, v11, v13, v14];

  return v15;
}

- (void)dealloc
{
  [(PHPhotoLibrary *)self->_photoLibrary px_unregisterChangeObserver:self];
  v3.receiver = self;
  v3.super_class = PXCMMTranscriptBubbleViewController;
  [(PXCMMTranscriptBubbleViewController *)&v3 dealloc];
}

- (PXCMMTranscriptBubbleViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:144 description:{@"%s is not available as initializer", "-[PXCMMTranscriptBubbleViewController initWithCoder:]"}];

  abort();
}

- (PXCMMTranscriptBubbleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:140 description:{@"%s is not available as initializer", "-[PXCMMTranscriptBubbleViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXCMMTranscriptBubbleViewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptBubbleViewController.m" lineNumber:136 description:{@"%s is not available as initializer", "-[PXCMMTranscriptBubbleViewController init]"}];

  abort();
}

- (PXCMMTranscriptBubbleViewController)initWithURL:(id)a3 isSender:(BOOL)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v39.receiver = self;
  v39.super_class = PXCMMTranscriptBubbleViewController;
  v8 = [(PXCMMTranscriptBubbleViewController *)&v39 initWithNibName:0 bundle:0];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_30;
  }

  if (!v7)
  {
    v10 = PLSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "A URL must be provided to a transcript bubble", buf, 2u);
    }

    objc_storeStrong(&v9->_url, a3);
    v9->_isSender = a4;
    goto LABEL_27;
  }

  objc_storeStrong(&v8->_url, a3);
  v9->_isSender = a4;
  v38 = 0;
  v11 = PXFetchAssetCollectionForCMMShareURL(v7, 1, &v38);
  backingFetchResult = v9->_backingFetchResult;
  v9->_backingFetchResult = v11;

  if (v38 == 1)
  {
    v13 = PLSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v7 pl_redactedShareURL];
      *buf = 138543362;
      v41 = v14;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Unsupported debug URL: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = [v7 pl_redactedShareURL];
    v17 = [v15 px_errorWithDomain:@"PXCMMErrorDomain" code:-1102 debugDescription:{@"Debug URLs are unsupported: %@", v16}];
    error = v9->_error;
    v9->_error = v17;

    goto LABEL_26;
  }

  v19 = [(PHFetchResult *)v9->_backingFetchResult firstObject];
  v20 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
  photoLibrary = v9->_photoLibrary;
  v9->_photoLibrary = v20;

  if (v19)
  {
    if ([v19 trashedState] != 1)
    {
      [(PXCMMTranscriptBubbleViewController *)v9 _triggerForcedSyncIfNeeded];
      goto LABEL_25;
    }

    v22 = PLSharingGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v7 pl_redactedShareURL];
      *buf = 138543362;
      v41 = v23;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEFAULT, "Bubble will display error for trashed moment share URL: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E696ABC0];
    v25 = [v7 pl_redactedShareURL];
    v26 = [v24 px_errorWithDomain:@"PXCMMErrorDomain" code:-1100 debugDescription:{@"Moment share is trashed for URL: %@", v25}];
  }

  else
  {
    v27 = [objc_opt_class() _isPermanentFailureURL:v7];
    v28 = PLSharingGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if ((v27 & 1) == 0)
    {
      if (v29)
      {
        v33 = [v7 pl_redactedShareURL];
        *buf = 138543362;
        v41 = v33;
        _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_DEFAULT, "Unable to find MomentShare for URL %{public}@. Triggering network request", buf, 0xCu);
      }

      [(PXCMMTranscriptBubbleViewController *)v9 _fetchMomentShareFromNetworkURL:v7];
      goto LABEL_25;
    }

    if (v29)
    {
      v30 = [v7 pl_redactedShareURL];
      *buf = 138543362;
      v41 = v30;
      _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_DEFAULT, "Dropping to error state for known permanent failure URL: %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x1E696ABC0];
    v25 = [v7 pl_redactedShareURL];
    v26 = [v31 px_genericErrorWithDebugDescription:{@"Known permanent failure for URL: %@", v25}];
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
    v35 = [(PXCMMTranscriptBubbleViewController *)v9 bubbleState];
    v36 = [(PXCMMTranscriptBubbleViewController *)v9 targetState];
    *buf = 138412802;
    v41 = v9;
    v42 = 2048;
    v43 = v35;
    v44 = 2048;
    v45 = v36;
    _os_log_impl(&dword_1A3C1C000, v34, OS_LOG_TYPE_DEFAULT, "Initialized transcript bubble: %@ -  Initial state %lu (%lu)", buf, 0x20u);
  }

LABEL_30:
  return v9;
}

+ (void)_registerPermanentFailureURL:(id)a3
{
  v3 = a3;
  v4 = knownPermanentFailures;
  v7 = v3;
  if (!knownPermanentFailures)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = knownPermanentFailures;
    knownPermanentFailures = v5;

    v3 = v7;
    v4 = knownPermanentFailures;
  }

  [v4 addObject:v3];
}

@end