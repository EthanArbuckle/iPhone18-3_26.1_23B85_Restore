@interface PUPhotosDetailsViewController
- (BOOL)contentAreaContainsPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (CGRect)contentBoundsInCoordinateSpace:(id)a3;
- (CGSize)minimumContentSize;
- (CGSize)preferredContentSize;
- (PUAccessoryContentViewControllerDelegate)accessoryContentViewControllerDelegate;
- (PUPhotosDetailsViewController)initWithContext:(id)a3 configuration:(id)a4 assetViewModel:(id)a5;
- (PUPhotosDetailsViewController)initWithContext:(id)a3 options:(unint64_t)a4;
- (UIEdgeInsets)px_safeAreaInsets;
- (id)_oneUpViewController;
- (unint64_t)occludedContentEdges;
- (void)_configurePresentViewController;
- (void)_configureShazamEventInfo;
- (void)_configureVisualSearchTopResultItem;
- (void)_presentViewController:(id)a3;
- (void)_sendVisualSearchLookupAnalyticsForResultItem:(id)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_updatePhototypeSupport;
- (void)editingDidChange:(BOOL)a3;
- (void)editorHeightDidChange;
- (void)scrollViewControllerContentBoundsDidChange:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3 changeReason:(int64_t)a4;
- (void)setEmpty:(BOOL)a3;
- (void)setMaxVisibleContentInsetsWhenInEdit:(UIEdgeInsets)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
- (void)visualSearchLookupWidgetDidTap;
@end

@implementation PUPhotosDetailsViewController

- (PUAccessoryContentViewControllerDelegate)accessoryContentViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryContentViewControllerDelegate);

  return WeakRetained;
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v6 isInEditModeChanged])
  {
    if ([v8 isInEditMode])
    {
      goto LABEL_10;
    }

    if ([v8 lastEditStyleChangeReason] != 2)
    {
      v7 = 2 * ([v8 lastEditStyleChangeReason] != 1);
LABEL_9:
      [(PXPhotosDetailsUIViewController *)self requestExitEditModeWithChangeSavingMode:v7];
      goto LABEL_10;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  if ([v6 accessoryViewVisibilityChanged] && (objc_msgSend(v8, "isAccessoryViewVisible") & 1) == 0 && objc_msgSend(v8, "editStyle") == 2)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ([v6 visualImageAnalysisChanged])
  {
    [(PUPhotosDetailsViewController *)self _configureVisualSearchTopResultItem];
  }

  if ([v6 shazamEventInfoChanged])
  {
    [(PUPhotosDetailsViewController *)self _configureShazamEventInfo];
  }

  if (([v6 phototypeAccessoryViewSupportChanged] & 1) != 0 || objc_msgSend(v6, "phototypeInfoButtonSupportChanged"))
  {
    [(PUPhotosDetailsViewController *)self _updatePhototypeSupport];
  }
}

- (void)scrollViewControllerContentBoundsDidChange:(id)a3
{
  if (self->_superRespondsTo.scrollViewControllerContentBoundsDidChange)
  {
    v5.receiver = self;
    v5.super_class = PUPhotosDetailsViewController;
    [(PUPhotosDetailsViewController *)&v5 scrollViewControllerContentBoundsDidChange:a3];
  }

  v4 = [(PUPhotosDetailsViewController *)self accessoryContentViewControllerDelegate];
  [v4 accessoryContentViewControllerContentBoundsDidChange:self];
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v4 = a3;
  if (self->_superRespondsTo.scrollViewControllerDidScroll)
  {
    v7.receiver = self;
    v7.super_class = PUPhotosDetailsViewController;
    [(PXPhotosDetailsUIViewController *)&v7 scrollViewControllerDidScroll:v4];
  }

  v5 = [(PUPhotosDetailsViewController *)self assetViewModel];
  if ([v5 isInEditMode] && (objc_msgSend(v4, "isAnimatingScroll") & 1) == 0 && ((objc_msgSend(v4, "isDecelerating") & 1) != 0 || (objc_msgSend(v4, "isDragging") & 1) != 0 || objc_msgSend(v4, "isTracking")))
  {
    [(PXPhotosDetailsUIViewController *)self requestExitEditModeWithChangeSavingMode:1];
  }

  v6 = [(PUPhotosDetailsViewController *)self accessoryContentViewControllerDelegate];
  [v6 accessoryContentViewControllerContentBoundsDidChange:self];
}

- (UIEdgeInsets)px_safeAreaInsets
{
  v21.receiver = self;
  v21.super_class = PUPhotosDetailsViewController;
  [(PUPhotosDetailsViewController *)&v21 px_safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUPhotosDetailsViewController *)self parentViewController];
  v12 = v11;
  if (v11)
  {
    [v11 px_safeAreaInsets];
    v4 = v13;
    v6 = v14;
    v8 = v15;
    v10 = v16;
  }

  v17 = v4;
  v18 = v6;
  v19 = v8;
  v20 = v10;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (CGRect)contentBoundsInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  [v5 contentBounds];

  v6 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  [v6 contentInset];

  PXEdgeInsetsInsetRect();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  [v15 presentedContentSize];
  v17 = v16;

  if (!PXSizeIsEmpty())
  {
    v14 = v17;
  }

  v18 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  v19 = [v18 scrollView];

  [v19 convertRect:v4 toCoordinateSpace:{v8, v10, v12, v14}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (BOOL)contentAreaContainsPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PUPhotosDetailsViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 convertPoint:v7 fromCoordinateSpace:{x, y}];
  v18 = v17;
  v20 = v19;

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  v22.x = v18;
  v22.y = v20;
  LOBYTE(v7) = CGRectContainsPoint(v23, v22);

  return v7;
}

- (void)setContentInsets:(UIEdgeInsets)a3 changeReason:(int64_t)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(PXPhotosDetailsUIViewController *)self contentEdgeInsets];
  if (left != v13 || top != v10 || right != v12 || bottom != v11)
  {
    [(PXPhotosDetailsUIViewController *)self setContentEdgeInsets:top, left, bottom, right];
    if (a4 == 2)
    {
      v17 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
      v18 = [v17 scrollView];
      if (([v18 px_isScrolledAtEdge:1] & 1) == 0 && (objc_msgSend(v17, "isDecelerating") & 1) == 0 && (objc_msgSend(v17, "isDragging") & 1) == 0 && (objc_msgSend(v17, "isTracking") & 1) == 0)
      {
        [v18 px_scrollToEdge:1 animated:0];
      }
    }

    v19 = [(PUPhotosDetailsViewController *)self accessoryContentViewControllerDelegate];
    [v19 accessoryContentViewControllerContentBoundsDidChange:self];
  }
}

- (void)setMaxVisibleContentInsetsWhenInEdit:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(PUPhotosDetailsViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = left + v10;
  v18 = top + v12;
  v19 = v14 - (left + right);
  v20 = v16 - (top + bottom);
  v25.origin.x = v17;
  v25.origin.y = v18;
  v25.size.width = v19;
  v25.size.height = v20;
  Height = CGRectGetHeight(v25);
  if (Height <= 10.0)
  {
    v22 = v18;
  }

  else
  {
    v20 = v20 + -10.0;
    v22 = v18 + 10.0;
  }

  if (Height <= 10.0)
  {
    v23 = v17;
  }

  else
  {
    v23 = v17 + 0.0;
  }

  v26.origin.x = v23;
  v26.origin.y = v22;
  v26.size.width = v19;
  v26.size.height = v20;
  [(PUPhotosDetailsViewController *)self setMaxVisibleHeightInEdit:CGRectGetHeight(v26)];

  [(PXPhotosDetailsUIViewController *)self informFirstWidgetAvailableVisibleRectInEditMode:v23, v22, v19, v20];
}

- (CGSize)minimumContentSize
{
  v2 = *MEMORY[0x1E695F060];
  [(PXPhotosDetailsUIViewController *)self captionWidgetPreferredHeight];
  v4 = v3;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)_sendVisualSearchLookupAnalyticsForResultItem:(id)a3
{
  v3 = [a3 glyphName];
  v4 = [v3 containsString:@"leaf"];

  if (v4)
  {
    v5 = MEMORY[0x1E69C3BA8];

    [v5 donateSignalForEvent:6];
  }
}

- (void)visualSearchLookupWidgetDidTap
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PUPhotosDetailsViewController *)self assetViewModel];
  v4 = [v3 visualImageAnalysis];
  v5 = [v4 resultItems];
  v6 = [v5 firstObject];

  v7 = [v3 visualSearchImageAnalysisInteraction];
  [v7 showVisualSearchForResultItem:v6];
  if (v7)
  {
    [(PUPhotosDetailsViewController *)self _sendVisualSearchLookupAnalyticsForResultItem:v6];
    v8 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v3 asset];
      v10 = [v9 uuid];
      v12 = 138413058;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_INFO, "Visual Lookup item was tapped in 1Up's info panel (asset: %@, analysis: %@, top item: %@, interaction: %@)", &v12, 0x2Au);
LABEL_6:
    }
  }

  else
  {
    v8 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 asset];
      v10 = [v9 uuid];
      v11 = [MEMORY[0x1E696AD98] numberWithInt:v3 != 0];
      v12 = 138413058;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Visual Lookup item was tapped in 1Up's info panel but interaction is nil (asset: %@, analysis: %@, top item: %@, assetViewModel non-nil? %@)", &v12, 0x2Au);

      goto LABEL_6;
    }
  }
}

- (void)editorHeightDidChange
{
  [(PXPhotosDetailsUIViewController *)self captionWidgetCurrentContentHeight];
  v4 = v3;
  [(PXPhotosDetailsUIViewController *)self captionWidgetPreferredHeight];
  if (vabdd_f64(v5, v4) >= 1.0)
  {
    v6 = v5 - v4;
    v7 = [(PUPhotosDetailsViewController *)self accessoryContentViewControllerDelegate];
    [v7 accessoryContentViewController:self editorHeightDidChange:v6];
  }
}

- (void)editingDidChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPhotosDetailsViewController *)self assetViewModel];
  v6 = [v5 isInEditMode];

  if (v6 != v3)
  {
    if (v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    if (v3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(PUPhotosDetailsViewController *)self assetViewModel];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__PUPhotosDetailsViewController_editingDidChange___block_invoke;
    v10[3] = &unk_1E7B7C518;
    v10[5] = v8;
    v10[6] = v7;
    v10[4] = self;
    [v9 performChanges:v10];
  }
}

void __50__PUPhotosDetailsViewController_editingDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 == 1;
  }

  v3 = *(a1 + 48);
  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 1;
  }

  v5 = [*(a1 + 32) assetViewModel];
  [v5 setEditStyle:v2 changeReason:v4];
}

- (unint64_t)occludedContentEdges
{
  v3.receiver = self;
  v3.super_class = PUPhotosDetailsViewController;
  return [(PXPhotosDetailsUIViewController *)&v3 occludedContentEdges]& 0xFFFFFFFFFFFFFFFELL;
}

- (CGSize)preferredContentSize
{
  v3 = *MEMORY[0x1E695F060];
  *&v4 = 500.0;
  if ([(PUPhotosDetailsViewController *)self isViewLoaded])
  {
    v5 = [(PXPhotosDetailsUIViewController *)self scrollViewController];

    if (v5)
    {
      v6 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
      [v6 presentedContentSize];
      v3 = v7;
      v4 = v8;

      if (PXSizeIsEmpty())
      {
        v9 = [(PUPhotosDetailsViewController *)self view];
        [(PUPhotosDetailsViewController *)self contentBoundsInCoordinateSpace:v9];
        v3 = v10;
        v4 = v11;
      }
    }
  }

  v12 = v3;
  v13 = *&v4;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v7 = a3;
  if ([(PXPhotosDetailsUIViewController *)self isEmpty])
  {
    v4 = [MEMORY[0x1E69DC8C8] px_containerized_defaultConfiguration];
    v5 = PULocalizedString(@"PUPhotosDetailsViewControllerContentUnavailableTitle");
    [v4 setText:v5];

    v6 = [v4 updatedConfigurationForState:v7];
    [(PUPhotosDetailsViewController *)self _setContentUnavailableConfiguration:v6];
  }

  else
  {
    [(PUPhotosDetailsViewController *)self _setContentUnavailableConfiguration:0];
  }
}

- (void)setEmpty:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUPhotosDetailsViewController;
  [(PXPhotosDetailsUIViewController *)&v4 setEmpty:a3];
  [(PUPhotosDetailsViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_updatePhototypeSupport
{
  v3 = [(PXPhotosDetailsUIViewController *)self context];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PUPhotosDetailsViewController__updatePhototypeSupport__block_invoke;
  v4[3] = &unk_1E7B7CD48;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __56__PUPhotosDetailsViewController__updatePhototypeSupport__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 assetViewModel];
  v6 = [v5 phototypeAccessoryViewSupport];
  [v4 setPhototypeAccessoryViewSupport:v6];

  v8 = [*(a1 + 32) assetViewModel];
  v7 = [v8 phototypeInfoButtonSupport];
  [v4 setPhototypeInfoButtonSupport:v7];
}

- (id)_oneUpViewController
{
  v2 = self;
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      v4 = v3;
      if (objc_opt_class())
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      v5 = [(PUPhotosDetailsViewController *)v4 parentViewController];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = [(PUPhotosDetailsViewController *)v4 presentingViewController];
      }

      v3 = v7;

      if (!v3)
      {
        goto LABEL_9;
      }
    }

    v8 = v4;
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  return v8;
}

- (void)_presentViewController:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUPhotosDetailsViewController *)self _oneUpViewController];
  if (v5)
  {
    if ([v4 modalPresentationStyle])
    {
      v6 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E69C3BF8] defaultFreezer];
      v6 = [v8 freezeContentOfViewController:v5 timeout:1.0];

      [v5 hideAccessoryView];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__PUPhotosDetailsViewController__presentViewController___block_invoke;
    v9[3] = &unk_1E7B80DD0;
    v10 = v6;
    v7 = v6;
    [v5 presentViewController:v4 animated:1 completion:v9];
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "can't present %@ because 1-up view controller is missing", buf, 0xCu);
    }
  }
}

- (void)_configurePresentViewController
{
  v3 = [(PXPhotosDetailsUIViewController *)self context];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PUPhotosDetailsViewController__configurePresentViewController__block_invoke;
  v4[3] = &unk_1E7B7CD48;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __64__PUPhotosDetailsViewController__configurePresentViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PUPhotosDetailsViewController__configurePresentViewController__block_invoke_2;
  v4[3] = &unk_1E7B7F540;
  objc_copyWeak(&v5, &location);
  [v3 setPresentViewController:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__PUPhotosDetailsViewController__configurePresentViewController__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentViewController:v3];
}

- (void)_configureShazamEventInfo
{
  v3 = [(PUPhotosDetailsViewController *)self assetViewModel];
  v4 = [v3 shazamEventInfo];

  v5 = [(PXPhotosDetailsUIViewController *)self context];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PUPhotosDetailsViewController__configureShazamEventInfo__block_invoke;
  v7[3] = &unk_1E7B7CD48;
  v8 = v4;
  v6 = v4;
  [v5 performChanges:v7];
}

- (void)_configureVisualSearchTopResultItem
{
  v3 = [(PUPhotosDetailsViewController *)self assetViewModel];
  v4 = [v3 visualImageAnalysis];
  v5 = [v4 resultItems];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69C38C0]);
    v8 = [v6 glyphName];
    v9 = [v6 displayLabel];
    v10 = [v6 displayMessage];
    v11 = [v7 initWithGlyphName:v8 visualDomain:v9 displayMessage:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(PXPhotosDetailsUIViewController *)self context];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__PUPhotosDetailsViewController__configureVisualSearchTopResultItem__block_invoke;
  v14[3] = &unk_1E7B7CD48;
  v15 = v11;
  v13 = v11;
  [v12 performChanges:v14];
}

- (PUPhotosDetailsViewController)initWithContext:(id)a3 configuration:(id)a4 assetViewModel:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PUPhotosDetailsViewController;
  v10 = [(PXPhotosDetailsUIViewController *)&v14 initWithContext:a3 configuration:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetViewModel, a5);
    [(PUAssetViewModel *)v11->_assetViewModel registerChangeObserver:v11];
    [(PUPhotosDetailsViewController *)v11 _configureVisualSearchTopResultItem];
    [(PUPhotosDetailsViewController *)v11 _configureShazamEventInfo];
    [(PUPhotosDetailsViewController *)v11 _configurePresentViewController];
    [(PUPhotosDetailsViewController *)v11 _updatePhototypeSupport];
    v12 = [(PUPhotosDetailsViewController *)v11 superclass];
    v11->_superRespondsTo.scrollViewControllerDidScroll = [v12 instancesRespondToSelector:sel_scrollViewControllerDidScroll_];
    v11->_superRespondsTo.scrollViewControllerContentBoundsDidChange = [v12 instancesRespondToSelector:sel_scrollViewControllerContentBoundsDidChange_];
  }

  return v11;
}

- (PUPhotosDetailsViewController)initWithContext:(id)a3 options:(unint64_t)a4
{
  v6 = MEMORY[0x1E69C3880];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setOptions:a4];
  v9 = [(PUPhotosDetailsViewController *)self initWithContext:v7 configuration:v8 assetViewModel:0];

  return v9;
}

@end