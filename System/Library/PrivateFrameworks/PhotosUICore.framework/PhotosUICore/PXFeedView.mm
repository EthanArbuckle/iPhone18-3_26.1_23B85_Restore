@interface PXFeedView
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handlePrimaryInteractionAtPoint:(CGPoint)point;
- (PXFeedView)initWithCoder:(id)coder;
- (PXFeedView)initWithFrame:(CGRect)frame;
- (PXFeedView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (PXGAXResponder)axNextResponder;
- (PXGView)tungstenView;
- (PXSimpleIndexPath)indexPathClosestToIndexPath:(SEL)path inDirection:(PXSimpleIndexPath *)direction;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (id)regionOfInterestForObjectReference:(id)reference;
- (void)_handleChangeToModifySelectionWithUserInfo:(id)info;
- (void)_handleHover:(id)hover;
- (void)_handleHoverEventAtPoint:(CGPoint)point;
- (void)_handleTap:(id)tap;
- (void)_installGestureRecognizers;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)beginTouchingAtPoint:(CGPoint)point;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)scrollObjectReference:(id)reference toScrollPosition:(unint64_t)position;
- (void)setCurrentHoverCompletion:(id)completion;
- (void)setCurrentTouchCompletion:(id)completion;
- (void)setIsActive:(BOOL)active;
- (void)touchingUIGestureRecognizerWillBeginTouching:(id)touching;
@end

@implementation PXFeedView

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_axNextResponder);

  return WeakRetained;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  viewModel = [(PXFeedView *)self viewModel];
  [containerCopy addSubprovider:viewModel];

  tungstenView = [(PXFeedView *)self tungstenView];
  [containerCopy addSubprovider:tungstenView];
}

- (void)touchingUIGestureRecognizerWillBeginTouching:(id)touching
{
  [touching locationInView:self];

  [(PXFeedView *)self beginTouchingAtPoint:?];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  touchingGestureRecognizer = [(PXFeedView *)self touchingGestureRecognizer];

  if (touchingGestureRecognizer == recognizerCopy)
  {
    v14 = 0;
    v10 = [gestureRecognizerCopy px_isPanGestureRecognizerOfScrollView:&v14];
    v11 = v14;
    v12 = v11;
    v9 = !v10 || ([v11 px_isDecelerating] & 1) == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  touchingGestureRecognizer = [(PXFeedView *)self touchingGestureRecognizer];
  v6 = touchingGestureRecognizer;
  if (touchingGestureRecognizer == beginCopy)
  {

LABEL_5:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__PXFeedView_gestureRecognizerShouldBegin___block_invoke;
    v11[3] = &unk_1E7746FD8;
    v12 = beginCopy;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__PXFeedView_gestureRecognizerShouldBegin___block_invoke_2;
    v10[3] = &unk_1E7744C58;
    v10[4] = &v13;
    [(PXFeedView *)self px_enumerateDescendantSubviewsPassingTest:v11 usingBlock:v10];

    goto LABEL_6;
  }

  tapGestureRecognizer = [(PXFeedView *)self tapGestureRecognizer];

  if (tapGestureRecognizer == beginCopy)
  {
    goto LABEL_5;
  }

LABEL_6:
  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

BOOL __43__PXFeedView_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 alpha];
  if (v4 <= 0.0 || ([v3 isHidden] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    [v3 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [*(a1 + 32) locationInView:v3];
    v17.x = v14;
    v17.y = v15;
    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    v5 = CGRectContainsPoint(v18, v17);
  }

  return v5;
}

void __43__PXFeedView_gestureRecognizerShouldBegin___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (void)_handleHover:(id)hover
{
  hoverCopy = hover;
  if ([hoverCopy state] == 1 || objc_msgSend(hoverCopy, "state") == 2)
  {
    [hoverCopy locationInView:0];
    [(PXFeedView *)self _handleHoverEventAtPoint:?];
  }
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    [tapCopy locationInView:self];
    [(PXFeedView *)self handlePrimaryInteractionAtPoint:?];
  }
}

- (void)_installGestureRecognizers
{
  v3 = [[off_1E7721918 alloc] initWithTarget:self action:sel__handleTouch_];
  touchingGestureRecognizer = self->_touchingGestureRecognizer;
  self->_touchingGestureRecognizer = v3;

  [(PXTouchingUIGestureRecognizer *)self->_touchingGestureRecognizer setMaximumTouchMovement:*off_1E7722258];
  [(PXTouchingUIGestureRecognizer *)self->_touchingGestureRecognizer setTouchDelegate:self];
  [(PXTouchingUIGestureRecognizer *)self->_touchingGestureRecognizer setDelegate:self];
  [(PXFeedView *)self addGestureRecognizer:self->_touchingGestureRecognizer];
  v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v5;

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [(PXFeedView *)self addGestureRecognizer:self->_tapGestureRecognizer];
  viewModel = [(PXFeedView *)self viewModel];
  spec = [viewModel spec];
  wantsItemHoverEvents = [spec wantsItemHoverEvents];

  if (wantsItemHoverEvents)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel__handleHover_];
    [(UIHoverGestureRecognizer *)v10 setDelegate:self];
    hoverGesture = self->_hoverGesture;
    self->_hoverGesture = v10;
    v12 = v10;

    [(PXFeedView *)self addGestureRecognizer:v12];
  }
}

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXFeedView *)self axNextResponder];
  LOBYTE(action) = [axNextResponder axGroup:groupCopy didRequestToPerformAction:action userInfo:infoCopy];

  return action;
}

- (void)_handleChangeToModifySelectionWithUserInfo:(id)info
{
  infoCopy = info;
  [(PXFeedView *)self viewModel];
  [objc_claimAutoreleasedReturnValue() selectionManager];
  objc_claimAutoreleasedReturnValue();
  v5 = 0u;
  v6 = 0u;
  PXGAXGetToSimpleIndexPathForUserInfo();
}

uint64_t __57__PXFeedView__handleChangeToModifySelectionWithUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  if ((change & 2) != 0)
  {
    PXGAXGetFocusFromAndToInfosForUserInfo();
  }

  if ((change & 4) != 0)
  {
    PXGAXGetSelectionFromAndToInfosForUserInfo();
  }

  axNextResponder = [(PXFeedView *)self axNextResponder];
  [axNextResponder axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  tungstenView = [(PXFeedView *)self tungstenView];
  scrollViewController = [tungstenView scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (void)_handleHoverEventAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tungstenView = [(PXFeedView *)self tungstenView];
  [tungstenView convertPoint:0 fromView:{x, y}];
  v7 = [tungstenView feedHitTestResultAtPoint:1 ignoringOverlayContent:?];
  viewModel = [(PXFeedView *)self viewModel];
  dataSource = [viewModel dataSource];

  if (v7)
  {
    [v7 dataSourceIndexPath];
    v10 = [dataSource objectIDAtIndexPath:&v15];
  }

  else
  {
    v10 = 0;
  }

  hoveredItemObjectID = [(PXFeedView *)self hoveredItemObjectID];
  if ([v10 isEqual:hoveredItemObjectID])
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v10)
  {

LABEL_8:
    [(PXFeedView *)self setHoveredItemObjectID:v10];
    hoverAction = [v7 hoverAction];

    if (!hoverAction)
    {
      [(PXFeedView *)self setCurrentHoverCompletion:0];
      goto LABEL_11;
    }

    hoveredItemObjectID = [v7 hoverAction];
    v14 = hoveredItemObjectID[2]();
    [(PXFeedView *)self setCurrentHoverCompletion:v14];

    goto LABEL_10;
  }

  hoveredItemObjectID2 = [(PXFeedView *)self hoveredItemObjectID];

  if (hoveredItemObjectID2)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (PXSimpleIndexPath)indexPathClosestToIndexPath:(SEL)path inDirection:(PXSimpleIndexPath *)direction
{
  feedContentLayout = [(PXFeedView *)self feedContentLayout];
  v9 = feedContentLayout;
  if (feedContentLayout)
  {
    v10 = *&direction->item;
    v12[0] = *&direction->dataSourceIdentifier;
    v12[1] = v10;
    [feedContentLayout indexPathClosestToIndexPath:v12 inDirection:a5];
  }

  else
  {
    *&retstr->dataSourceIdentifier = 0u;
    *&retstr->item = 0u;
  }

  return result;
}

- (void)beginTouchingAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  tungstenView = [(PXFeedView *)self tungstenView];
  [tungstenView convertPoint:self fromView:{x, y}];
  v6 = [tungstenView handleTouchAtPoint:?];
  [(PXFeedView *)self setCurrentTouchCompletion:v6];
}

- (BOOL)handlePrimaryInteractionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  tungstenView = [(PXFeedView *)self tungstenView];
  [tungstenView convertPoint:selfCopy fromView:{x, y}];
  LOBYTE(selfCopy) = [tungstenView handlePrimaryInteractionAtPoint:?];

  return selfCopy;
}

- (void)setCurrentHoverCompletion:(id)completion
{
  completionCopy = completion;
  currentHoverCompletion = self->_currentHoverCompletion;
  if (currentHoverCompletion != completionCopy)
  {
    v8 = completionCopy;
    if (currentHoverCompletion)
    {
      currentHoverCompletion[2]();
      completionCopy = v8;
    }

    v6 = _Block_copy(completionCopy);
    v7 = self->_currentHoverCompletion;
    self->_currentHoverCompletion = v6;

    completionCopy = v8;
  }
}

- (void)setCurrentTouchCompletion:(id)completion
{
  completionCopy = completion;
  currentTouchCompletion = self->_currentTouchCompletion;
  if (currentTouchCompletion != completionCopy)
  {
    v8 = completionCopy;
    if (currentTouchCompletion)
    {
      currentTouchCompletion[2]();
      completionCopy = v8;
    }

    v6 = _Block_copy(completionCopy);
    v7 = self->_currentTouchCompletion;
    self->_currentTouchCompletion = v6;

    completionCopy = v8;
  }
}

- (id)itemPlacementControllerForItemReference:(id)reference
{
  referenceCopy = reference;
  feedContentLayout = [(PXFeedView *)self feedContentLayout];
  v6 = [feedContentLayout itemPlacementControllerForItemReference:referenceCopy];

  return v6;
}

- (void)scrollObjectReference:(id)reference toScrollPosition:(unint64_t)position
{
  referenceCopy = reference;
  tungstenView = [(PXFeedView *)self tungstenView];
  rootLayout = [tungstenView rootLayout];
  v8 = [rootLayout createAnchorForScrollingSpriteForObjectReference:referenceCopy toScrollPosition:position padding:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];

  autoInvalidate = [v8 autoInvalidate];
}

- (id)regionOfInterestForObjectReference:(id)reference
{
  referenceCopy = reference;
  feedContentLayout = [(PXFeedView *)self feedContentLayout];
  v6 = [feedContentLayout spriteReferenceForObjectReference:referenceCopy];

  tungstenView = [(PXFeedView *)self tungstenView];
  v8 = [tungstenView regionOfInterestForSpriteReference:v6];

  return v8;
}

- (PXGView)tungstenView
{
  tungstenViewCoordinator = [(PXFeedView *)self tungstenViewCoordinator];
  tungstenView = [tungstenViewCoordinator tungstenView];

  return tungstenView;
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    v9 = v3;
    v10 = v4;
    self->_isActive = active;
    viewModel = [(PXFeedView *)self viewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__PXFeedView_setIsActive___block_invoke;
    v7[3] = &__block_descriptor_33_e39_v16__0___PXStoryMutableFeedViewModel__8l;
    activeCopy = active;
    [viewModel performChanges:v7];
  }
}

- (PXFeedView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = PXFeedView;
  height = [(PXFeedView *)&v27 initWithFrame:x, y, width, height];
  if (height)
  {
    [configurationCopy feedConfiguration];
    [objc_claimAutoreleasedReturnValue() mediaProvider];
    objc_claimAutoreleasedReturnValue();
    v11 = [[PXFeedViewModel alloc] initWithFeedViewConfiguration:configurationCopy];
    viewModel = height->_viewModel;
    height->_viewModel = v11;

    feedConfiguration = [configurationCopy feedConfiguration];
    wantsEmbeddedScrollView = [feedConfiguration wantsEmbeddedScrollView];

    v15 = [[PXFeedContentLayout alloc] initWithViewModel:height->_viewModel];
    feedContentLayout = height->_feedContentLayout;
    height->_feedContentLayout = v15;

    if (wantsEmbeddedScrollView)
    {
      v17 = [[PXFeedViewScrollLayout alloc] initWithViewModel:height->_viewModel displayingFeedContentLayout:height->_feedContentLayout];
    }

    else
    {
      v17 = height->_feedContentLayout;
    }

    v18 = v17;
    feedConfiguration2 = [configurationCopy feedConfiguration];
    localizedSubtitle = [feedConfiguration2 localizedSubtitle];

    if (localizedSubtitle)
    {
      v21 = [[PXFeedTitleLayout alloc] initWithViewModel:height->_viewModel];
      titleLayout = height->_titleLayout;
      height->_titleLayout = v21;

      v23 = objc_alloc_init(off_1E77216C8);
      splitLayout = height->_splitLayout;
      height->_splitLayout = v23;

      [(PXGSplitLayout *)height->_splitLayout setFirstSublayout:height->_titleLayout];
      [(PXGSplitLayout *)height->_splitLayout setSecondSublayout:v18];
      [(PXGSplitLayout *)height->_splitLayout setObjectReferenceLookup:2];
      height->_splitLayout;
    }

    if ((wantsEmbeddedScrollView & 1) == 0)
    {
      spec = [(PXFeedViewModel *)height->_viewModel spec];
      [spec wantsScrollIndicators];
    }

    [(PXFeedView *)height bounds];
    [(PXFeedViewModel *)height->_viewModel spec];
    [objc_claimAutoreleasedReturnValue() viewOutsets];
    sub_1A524D1F4();
  }

  return 0;
}

void __42__PXFeedView_initWithFrame_configuration___block_invoke(uint64_t a1, void *a2)
{
  [a2 setMediaProvider:*(a1 + 32)];
  [*(*(a1 + 40) + 496) spec];
  [objc_claimAutoreleasedReturnValue() viewOutsets];
  sub_1A524D1F4();
}

- (PXFeedView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedView.m" lineNumber:58 description:{@"%s is not available as initializer", "-[PXFeedView initWithCoder:]"}];

  abort();
}

- (PXFeedView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedView.m" lineNumber:54 description:{@"%s is not available as initializer", "-[PXFeedView initWithFrame:]"}];

  abort();
}

@end