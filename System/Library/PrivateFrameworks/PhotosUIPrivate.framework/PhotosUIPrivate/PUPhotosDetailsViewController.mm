@interface PUPhotosDetailsViewController
- (BOOL)contentAreaContainsPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (CGRect)contentBoundsInCoordinateSpace:(id)space;
- (CGSize)minimumContentSize;
- (CGSize)preferredContentSize;
- (PUAccessoryContentViewControllerDelegate)accessoryContentViewControllerDelegate;
- (PUPhotosDetailsViewController)initWithContext:(id)context configuration:(id)configuration assetViewModel:(id)model;
- (PUPhotosDetailsViewController)initWithContext:(id)context options:(unint64_t)options;
- (UIEdgeInsets)px_safeAreaInsets;
- (id)_oneUpViewController;
- (unint64_t)occludedContentEdges;
- (void)_configurePresentViewController;
- (void)_configureShazamEventInfo;
- (void)_configureVisualSearchTopResultItem;
- (void)_presentViewController:(id)controller;
- (void)_sendVisualSearchLookupAnalyticsForResultItem:(id)item;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)_updatePhototypeSupport;
- (void)editingDidChange:(BOOL)change;
- (void)editorHeightDidChange;
- (void)scrollViewControllerContentBoundsDidChange:(id)change;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)setContentInsets:(UIEdgeInsets)insets changeReason:(int64_t)reason;
- (void)setEmpty:(BOOL)empty;
- (void)setMaxVisibleContentInsetsWhenInEdit:(UIEdgeInsets)edit;
- (void)viewModel:(id)model didChange:(id)change;
- (void)visualSearchLookupWidgetDidTap;
@end

@implementation PUPhotosDetailsViewController

- (PUAccessoryContentViewControllerDelegate)accessoryContentViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryContentViewControllerDelegate);

  return WeakRetained;
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  if ([changeCopy isInEditModeChanged])
  {
    if ([modelCopy isInEditMode])
    {
      goto LABEL_10;
    }

    if ([modelCopy lastEditStyleChangeReason] != 2)
    {
      v7 = 2 * ([modelCopy lastEditStyleChangeReason] != 1);
LABEL_9:
      [(PXPhotosDetailsUIViewController *)self requestExitEditModeWithChangeSavingMode:v7];
      goto LABEL_10;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  if ([changeCopy accessoryViewVisibilityChanged] && (objc_msgSend(modelCopy, "isAccessoryViewVisible") & 1) == 0 && objc_msgSend(modelCopy, "editStyle") == 2)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ([changeCopy visualImageAnalysisChanged])
  {
    [(PUPhotosDetailsViewController *)self _configureVisualSearchTopResultItem];
  }

  if ([changeCopy shazamEventInfoChanged])
  {
    [(PUPhotosDetailsViewController *)self _configureShazamEventInfo];
  }

  if (([changeCopy phototypeAccessoryViewSupportChanged] & 1) != 0 || objc_msgSend(changeCopy, "phototypeInfoButtonSupportChanged"))
  {
    [(PUPhotosDetailsViewController *)self _updatePhototypeSupport];
  }
}

- (void)scrollViewControllerContentBoundsDidChange:(id)change
{
  if (self->_superRespondsTo.scrollViewControllerContentBoundsDidChange)
  {
    v5.receiver = self;
    v5.super_class = PUPhotosDetailsViewController;
    [(PUPhotosDetailsViewController *)&v5 scrollViewControllerContentBoundsDidChange:change];
  }

  accessoryContentViewControllerDelegate = [(PUPhotosDetailsViewController *)self accessoryContentViewControllerDelegate];
  [accessoryContentViewControllerDelegate accessoryContentViewControllerContentBoundsDidChange:self];
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (self->_superRespondsTo.scrollViewControllerDidScroll)
  {
    v7.receiver = self;
    v7.super_class = PUPhotosDetailsViewController;
    [(PXPhotosDetailsUIViewController *)&v7 scrollViewControllerDidScroll:scrollCopy];
  }

  assetViewModel = [(PUPhotosDetailsViewController *)self assetViewModel];
  if ([assetViewModel isInEditMode] && (objc_msgSend(scrollCopy, "isAnimatingScroll") & 1) == 0 && ((objc_msgSend(scrollCopy, "isDecelerating") & 1) != 0 || (objc_msgSend(scrollCopy, "isDragging") & 1) != 0 || objc_msgSend(scrollCopy, "isTracking")))
  {
    [(PXPhotosDetailsUIViewController *)self requestExitEditModeWithChangeSavingMode:1];
  }

  accessoryContentViewControllerDelegate = [(PUPhotosDetailsViewController *)self accessoryContentViewControllerDelegate];
  [accessoryContentViewControllerDelegate accessoryContentViewControllerContentBoundsDidChange:self];
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
  parentViewController = [(PUPhotosDetailsViewController *)self parentViewController];
  v12 = parentViewController;
  if (parentViewController)
  {
    [parentViewController px_safeAreaInsets];
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

- (CGRect)contentBoundsInCoordinateSpace:(id)space
{
  spaceCopy = space;
  scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  [scrollViewController contentBounds];

  scrollViewController2 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  [scrollViewController2 contentInset];

  PXEdgeInsetsInsetRect();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  scrollViewController3 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  [scrollViewController3 presentedContentSize];
  v17 = v16;

  if (!PXSizeIsEmpty())
  {
    v14 = v17;
  }

  scrollViewController4 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
  scrollView = [scrollViewController4 scrollView];

  [scrollView convertRect:spaceCopy toCoordinateSpace:{v8, v10, v12, v14}];
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

- (BOOL)contentAreaContainsPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  view = [(PUPhotosDetailsViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [view convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v18 = v17;
  v20 = v19;

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  v22.x = v18;
  v22.y = v20;
  LOBYTE(spaceCopy) = CGRectContainsPoint(v23, v22);

  return spaceCopy;
}

- (void)setContentInsets:(UIEdgeInsets)insets changeReason:(int64_t)reason
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(PXPhotosDetailsUIViewController *)self contentEdgeInsets];
  if (left != v13 || top != v10 || right != v12 || bottom != v11)
  {
    [(PXPhotosDetailsUIViewController *)self setContentEdgeInsets:top, left, bottom, right];
    if (reason == 2)
    {
      scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];
      scrollView = [scrollViewController scrollView];
      if (([scrollView px_isScrolledAtEdge:1] & 1) == 0 && (objc_msgSend(scrollViewController, "isDecelerating") & 1) == 0 && (objc_msgSend(scrollViewController, "isDragging") & 1) == 0 && (objc_msgSend(scrollViewController, "isTracking") & 1) == 0)
      {
        [scrollView px_scrollToEdge:1 animated:0];
      }
    }

    accessoryContentViewControllerDelegate = [(PUPhotosDetailsViewController *)self accessoryContentViewControllerDelegate];
    [accessoryContentViewControllerDelegate accessoryContentViewControllerContentBoundsDidChange:self];
  }
}

- (void)setMaxVisibleContentInsetsWhenInEdit:(UIEdgeInsets)edit
{
  right = edit.right;
  bottom = edit.bottom;
  left = edit.left;
  top = edit.top;
  view = [(PUPhotosDetailsViewController *)self view];
  [view bounds];
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

- (void)_sendVisualSearchLookupAnalyticsForResultItem:(id)item
{
  glyphName = [item glyphName];
  v4 = [glyphName containsString:@"leaf"];

  if (v4)
  {
    v5 = MEMORY[0x1E69C3BA8];

    [v5 donateSignalForEvent:6];
  }
}

- (void)visualSearchLookupWidgetDidTap
{
  v20 = *MEMORY[0x1E69E9840];
  assetViewModel = [(PUPhotosDetailsViewController *)self assetViewModel];
  visualImageAnalysis = [assetViewModel visualImageAnalysis];
  resultItems = [visualImageAnalysis resultItems];
  firstObject = [resultItems firstObject];

  visualSearchImageAnalysisInteraction = [assetViewModel visualSearchImageAnalysisInteraction];
  [visualSearchImageAnalysisInteraction showVisualSearchForResultItem:firstObject];
  if (visualSearchImageAnalysisInteraction)
  {
    [(PUPhotosDetailsViewController *)self _sendVisualSearchLookupAnalyticsForResultItem:firstObject];
    v8 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      asset = [assetViewModel asset];
      uuid = [asset uuid];
      v12 = 138413058;
      v13 = uuid;
      v14 = 2112;
      v15 = visualImageAnalysis;
      v16 = 2112;
      v17 = firstObject;
      v18 = 2112;
      v19 = visualSearchImageAnalysisInteraction;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_INFO, "Visual Lookup item was tapped in 1Up's info panel (asset: %@, analysis: %@, top item: %@, interaction: %@)", &v12, 0x2Au);
LABEL_6:
    }
  }

  else
  {
    v8 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      asset = [assetViewModel asset];
      uuid = [asset uuid];
      v11 = [MEMORY[0x1E696AD98] numberWithInt:assetViewModel != 0];
      v12 = 138413058;
      v13 = uuid;
      v14 = 2112;
      v15 = visualImageAnalysis;
      v16 = 2112;
      v17 = firstObject;
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
    accessoryContentViewControllerDelegate = [(PUPhotosDetailsViewController *)self accessoryContentViewControllerDelegate];
    [accessoryContentViewControllerDelegate accessoryContentViewController:self editorHeightDidChange:v6];
  }
}

- (void)editingDidChange:(BOOL)change
{
  changeCopy = change;
  assetViewModel = [(PUPhotosDetailsViewController *)self assetViewModel];
  isInEditMode = [assetViewModel isInEditMode];

  if (isInEditMode != changeCopy)
  {
    if (changeCopy)
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    if (changeCopy)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    assetViewModel2 = [(PUPhotosDetailsViewController *)self assetViewModel];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__PUPhotosDetailsViewController_editingDidChange___block_invoke;
    v10[3] = &unk_1E7B7C518;
    v10[5] = v8;
    v10[6] = v7;
    v10[4] = self;
    [assetViewModel2 performChanges:v10];
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
    scrollViewController = [(PXPhotosDetailsUIViewController *)self scrollViewController];

    if (scrollViewController)
    {
      scrollViewController2 = [(PXPhotosDetailsUIViewController *)self scrollViewController];
      [scrollViewController2 presentedContentSize];
      v3 = v7;
      v4 = v8;

      if (PXSizeIsEmpty())
      {
        view = [(PUPhotosDetailsViewController *)self view];
        [(PUPhotosDetailsViewController *)self contentBoundsInCoordinateSpace:view];
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

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  if ([(PXPhotosDetailsUIViewController *)self isEmpty])
  {
    px_containerized_defaultConfiguration = [MEMORY[0x1E69DC8C8] px_containerized_defaultConfiguration];
    v5 = PULocalizedString(@"PUPhotosDetailsViewControllerContentUnavailableTitle");
    [px_containerized_defaultConfiguration setText:v5];

    v6 = [px_containerized_defaultConfiguration updatedConfigurationForState:stateCopy];
    [(PUPhotosDetailsViewController *)self _setContentUnavailableConfiguration:v6];
  }

  else
  {
    [(PUPhotosDetailsViewController *)self _setContentUnavailableConfiguration:0];
  }
}

- (void)setEmpty:(BOOL)empty
{
  v4.receiver = self;
  v4.super_class = PUPhotosDetailsViewController;
  [(PXPhotosDetailsUIViewController *)&v4 setEmpty:empty];
  [(PUPhotosDetailsViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_updatePhototypeSupport
{
  context = [(PXPhotosDetailsUIViewController *)self context];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PUPhotosDetailsViewController__updatePhototypeSupport__block_invoke;
  v4[3] = &unk_1E7B7CD48;
  v4[4] = self;
  [context performChanges:v4];
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
  selfCopy = self;
  if (selfCopy)
  {
    v3 = selfCopy;
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

      parentViewController = [(PUPhotosDetailsViewController *)v4 parentViewController];
      v6 = parentViewController;
      if (parentViewController)
      {
        presentingViewController = parentViewController;
      }

      else
      {
        presentingViewController = [(PUPhotosDetailsViewController *)v4 presentingViewController];
      }

      v3 = presentingViewController;

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

- (void)_presentViewController:(id)controller
{
  v13 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  _oneUpViewController = [(PUPhotosDetailsViewController *)self _oneUpViewController];
  if (_oneUpViewController)
  {
    if ([controllerCopy modalPresentationStyle])
    {
      v6 = 0;
    }

    else
    {
      defaultFreezer = [MEMORY[0x1E69C3BF8] defaultFreezer];
      v6 = [defaultFreezer freezeContentOfViewController:_oneUpViewController timeout:1.0];

      [_oneUpViewController hideAccessoryView];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__PUPhotosDetailsViewController__presentViewController___block_invoke;
    v9[3] = &unk_1E7B80DD0;
    v10 = v6;
    v7 = v6;
    [_oneUpViewController presentViewController:controllerCopy animated:1 completion:v9];
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = controllerCopy;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "can't present %@ because 1-up view controller is missing", buf, 0xCu);
    }
  }
}

- (void)_configurePresentViewController
{
  context = [(PXPhotosDetailsUIViewController *)self context];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PUPhotosDetailsViewController__configurePresentViewController__block_invoke;
  v4[3] = &unk_1E7B7CD48;
  v4[4] = self;
  [context performChanges:v4];
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
  assetViewModel = [(PUPhotosDetailsViewController *)self assetViewModel];
  shazamEventInfo = [assetViewModel shazamEventInfo];

  context = [(PXPhotosDetailsUIViewController *)self context];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PUPhotosDetailsViewController__configureShazamEventInfo__block_invoke;
  v7[3] = &unk_1E7B7CD48;
  v8 = shazamEventInfo;
  v6 = shazamEventInfo;
  [context performChanges:v7];
}

- (void)_configureVisualSearchTopResultItem
{
  assetViewModel = [(PUPhotosDetailsViewController *)self assetViewModel];
  visualImageAnalysis = [assetViewModel visualImageAnalysis];
  resultItems = [visualImageAnalysis resultItems];
  firstObject = [resultItems firstObject];

  if (firstObject)
  {
    v7 = objc_alloc(MEMORY[0x1E69C38C0]);
    glyphName = [firstObject glyphName];
    displayLabel = [firstObject displayLabel];
    displayMessage = [firstObject displayMessage];
    v11 = [v7 initWithGlyphName:glyphName visualDomain:displayLabel displayMessage:displayMessage];
  }

  else
  {
    v11 = 0;
  }

  context = [(PXPhotosDetailsUIViewController *)self context];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__PUPhotosDetailsViewController__configureVisualSearchTopResultItem__block_invoke;
  v14[3] = &unk_1E7B7CD48;
  v15 = v11;
  v13 = v11;
  [context performChanges:v14];
}

- (PUPhotosDetailsViewController)initWithContext:(id)context configuration:(id)configuration assetViewModel:(id)model
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = PUPhotosDetailsViewController;
  v10 = [(PXPhotosDetailsUIViewController *)&v14 initWithContext:context configuration:configuration];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetViewModel, model);
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

- (PUPhotosDetailsViewController)initWithContext:(id)context options:(unint64_t)options
{
  v6 = MEMORY[0x1E69C3880];
  contextCopy = context;
  v8 = objc_alloc_init(v6);
  [v8 setOptions:options];
  v9 = [(PUPhotosDetailsViewController *)self initWithContext:contextCopy configuration:v8 assetViewModel:0];

  return v9;
}

@end