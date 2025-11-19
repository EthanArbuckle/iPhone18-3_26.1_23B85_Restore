@interface PXFeedView
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handlePrimaryInteractionAtPoint:(CGPoint)a3;
- (PXFeedView)initWithCoder:(id)a3;
- (PXFeedView)initWithFrame:(CGRect)a3;
- (PXFeedView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (PXGAXResponder)axNextResponder;
- (PXGView)tungstenView;
- (PXSimpleIndexPath)indexPathClosestToIndexPath:(SEL)a3 inDirection:(PXSimpleIndexPath *)a4;
- (id)axContainingScrollViewForAXGroup:(id)a3;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (id)regionOfInterestForObjectReference:(id)a3;
- (void)_handleChangeToModifySelectionWithUserInfo:(id)a3;
- (void)_handleHover:(id)a3;
- (void)_handleHoverEventAtPoint:(CGPoint)a3;
- (void)_handleTap:(id)a3;
- (void)_installGestureRecognizers;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)beginTouchingAtPoint:(CGPoint)a3;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)scrollObjectReference:(id)a3 toScrollPosition:(unint64_t)a4;
- (void)setCurrentHoverCompletion:(id)a3;
- (void)setCurrentTouchCompletion:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)touchingUIGestureRecognizerWillBeginTouching:(id)a3;
@end

@implementation PXFeedView

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_axNextResponder);

  return WeakRetained;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedView *)self viewModel];
  [v4 addSubprovider:v5];

  v6 = [(PXFeedView *)self tungstenView];
  [v4 addSubprovider:v6];
}

- (void)touchingUIGestureRecognizerWillBeginTouching:(id)a3
{
  [a3 locationInView:self];

  [(PXFeedView *)self beginTouchingAtPoint:?];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXFeedView *)self touchingGestureRecognizer];

  if (v8 == v7)
  {
    v14 = 0;
    v10 = [v6 px_isPanGestureRecognizerOfScrollView:&v14];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v5 = [(PXFeedView *)self touchingGestureRecognizer];
  v6 = v5;
  if (v5 == v4)
  {

LABEL_5:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__PXFeedView_gestureRecognizerShouldBegin___block_invoke;
    v11[3] = &unk_1E7746FD8;
    v12 = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__PXFeedView_gestureRecognizerShouldBegin___block_invoke_2;
    v10[3] = &unk_1E7744C58;
    v10[4] = &v13;
    [(PXFeedView *)self px_enumerateDescendantSubviewsPassingTest:v11 usingBlock:v10];

    goto LABEL_6;
  }

  v7 = [(PXFeedView *)self tapGestureRecognizer];

  if (v7 == v4)
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

- (void)_handleHover:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1 || objc_msgSend(v4, "state") == 2)
  {
    [v4 locationInView:0];
    [(PXFeedView *)self _handleHoverEventAtPoint:?];
  }
}

- (void)_handleTap:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    [v4 locationInView:self];
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
  v7 = [(PXFeedView *)self viewModel];
  v8 = [v7 spec];
  v9 = [v8 wantsItemHoverEvents];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel__handleHover_];
    [(UIHoverGestureRecognizer *)v10 setDelegate:self];
    hoverGesture = self->_hoverGesture;
    self->_hoverGesture = v10;
    v12 = v10;

    [(PXFeedView *)self addGestureRecognizer:v12];
  }
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXFeedView *)self axNextResponder];
  LOBYTE(a4) = [v10 axGroup:v9 didRequestToPerformAction:a4 userInfo:v8];

  return a4;
}

- (void)_handleChangeToModifySelectionWithUserInfo:(id)a3
{
  v4 = a3;
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

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ((a4 & 2) != 0)
  {
    PXGAXGetFocusFromAndToInfosForUserInfo();
  }

  if ((a4 & 4) != 0)
  {
    PXGAXGetSelectionFromAndToInfosForUserInfo();
  }

  v10 = [(PXFeedView *)self axNextResponder];
  [v10 axGroup:v8 didChange:a4 userInfo:v9];
}

- (id)axContainingScrollViewForAXGroup:(id)a3
{
  v3 = [(PXFeedView *)self tungstenView];
  v4 = [v3 scrollViewController];
  v5 = [v4 scrollView];

  return v5;
}

- (void)_handleHoverEventAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXFeedView *)self tungstenView];
  [v6 convertPoint:0 fromView:{x, y}];
  v7 = [v6 feedHitTestResultAtPoint:1 ignoringOverlayContent:?];
  v8 = [(PXFeedView *)self viewModel];
  v9 = [v8 dataSource];

  if (v7)
  {
    [v7 dataSourceIndexPath];
    v10 = [v9 objectIDAtIndexPath:&v15];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PXFeedView *)self hoveredItemObjectID];
  if ([v10 isEqual:v11])
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v10)
  {

LABEL_8:
    [(PXFeedView *)self setHoveredItemObjectID:v10];
    v13 = [v7 hoverAction];

    if (!v13)
    {
      [(PXFeedView *)self setCurrentHoverCompletion:0];
      goto LABEL_11;
    }

    v11 = [v7 hoverAction];
    v14 = v11[2]();
    [(PXFeedView *)self setCurrentHoverCompletion:v14];

    goto LABEL_10;
  }

  v12 = [(PXFeedView *)self hoveredItemObjectID];

  if (v12)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (PXSimpleIndexPath)indexPathClosestToIndexPath:(SEL)a3 inDirection:(PXSimpleIndexPath *)a4
{
  v8 = [(PXFeedView *)self feedContentLayout];
  v9 = v8;
  if (v8)
  {
    v10 = *&a4->item;
    v12[0] = *&a4->dataSourceIdentifier;
    v12[1] = v10;
    [v8 indexPathClosestToIndexPath:v12 inDirection:a5];
  }

  else
  {
    *&retstr->dataSourceIdentifier = 0u;
    *&retstr->item = 0u;
  }

  return result;
}

- (void)beginTouchingAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v7 = [(PXFeedView *)self tungstenView];
  [v7 convertPoint:self fromView:{x, y}];
  v6 = [v7 handleTouchAtPoint:?];
  [(PXFeedView *)self setCurrentTouchCompletion:v6];
}

- (BOOL)handlePrimaryInteractionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = [(PXFeedView *)self tungstenView];
  [v6 convertPoint:v5 fromView:{x, y}];
  LOBYTE(v5) = [v6 handlePrimaryInteractionAtPoint:?];

  return v5;
}

- (void)setCurrentHoverCompletion:(id)a3
{
  v4 = a3;
  currentHoverCompletion = self->_currentHoverCompletion;
  if (currentHoverCompletion != v4)
  {
    v8 = v4;
    if (currentHoverCompletion)
    {
      currentHoverCompletion[2]();
      v4 = v8;
    }

    v6 = _Block_copy(v4);
    v7 = self->_currentHoverCompletion;
    self->_currentHoverCompletion = v6;

    v4 = v8;
  }
}

- (void)setCurrentTouchCompletion:(id)a3
{
  v4 = a3;
  currentTouchCompletion = self->_currentTouchCompletion;
  if (currentTouchCompletion != v4)
  {
    v8 = v4;
    if (currentTouchCompletion)
    {
      currentTouchCompletion[2]();
      v4 = v8;
    }

    v6 = _Block_copy(v4);
    v7 = self->_currentTouchCompletion;
    self->_currentTouchCompletion = v6;

    v4 = v8;
  }
}

- (id)itemPlacementControllerForItemReference:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedView *)self feedContentLayout];
  v6 = [v5 itemPlacementControllerForItemReference:v4];

  return v6;
}

- (void)scrollObjectReference:(id)a3 toScrollPosition:(unint64_t)a4
{
  v6 = a3;
  v10 = [(PXFeedView *)self tungstenView];
  v7 = [v10 rootLayout];
  v8 = [v7 createAnchorForScrollingSpriteForObjectReference:v6 toScrollPosition:a4 padding:{*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)}];

  v9 = [v8 autoInvalidate];
}

- (id)regionOfInterestForObjectReference:(id)a3
{
  v4 = a3;
  v5 = [(PXFeedView *)self feedContentLayout];
  v6 = [v5 spriteReferenceForObjectReference:v4];

  v7 = [(PXFeedView *)self tungstenView];
  v8 = [v7 regionOfInterestForSpriteReference:v6];

  return v8;
}

- (PXGView)tungstenView
{
  v2 = [(PXFeedView *)self tungstenViewCoordinator];
  v3 = [v2 tungstenView];

  return v3;
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_isActive = a3;
    v6 = [(PXFeedView *)self viewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __26__PXFeedView_setIsActive___block_invoke;
    v7[3] = &__block_descriptor_33_e39_v16__0___PXStoryMutableFeedViewModel__8l;
    v8 = a3;
    [v6 performChanges:v7];
  }
}

- (PXFeedView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = PXFeedView;
  v10 = [(PXFeedView *)&v27 initWithFrame:x, y, width, height];
  if (v10)
  {
    [v9 feedConfiguration];
    [objc_claimAutoreleasedReturnValue() mediaProvider];
    objc_claimAutoreleasedReturnValue();
    v11 = [[PXFeedViewModel alloc] initWithFeedViewConfiguration:v9];
    viewModel = v10->_viewModel;
    v10->_viewModel = v11;

    v13 = [v9 feedConfiguration];
    v14 = [v13 wantsEmbeddedScrollView];

    v15 = [[PXFeedContentLayout alloc] initWithViewModel:v10->_viewModel];
    feedContentLayout = v10->_feedContentLayout;
    v10->_feedContentLayout = v15;

    if (v14)
    {
      v17 = [[PXFeedViewScrollLayout alloc] initWithViewModel:v10->_viewModel displayingFeedContentLayout:v10->_feedContentLayout];
    }

    else
    {
      v17 = v10->_feedContentLayout;
    }

    v18 = v17;
    v19 = [v9 feedConfiguration];
    v20 = [v19 localizedSubtitle];

    if (v20)
    {
      v21 = [[PXFeedTitleLayout alloc] initWithViewModel:v10->_viewModel];
      titleLayout = v10->_titleLayout;
      v10->_titleLayout = v21;

      v23 = objc_alloc_init(off_1E77216C8);
      splitLayout = v10->_splitLayout;
      v10->_splitLayout = v23;

      [(PXGSplitLayout *)v10->_splitLayout setFirstSublayout:v10->_titleLayout];
      [(PXGSplitLayout *)v10->_splitLayout setSecondSublayout:v18];
      [(PXGSplitLayout *)v10->_splitLayout setObjectReferenceLookup:2];
      v10->_splitLayout;
    }

    if ((v14 & 1) == 0)
    {
      v25 = [(PXFeedViewModel *)v10->_viewModel spec];
      [v25 wantsScrollIndicators];
    }

    [(PXFeedView *)v10 bounds];
    [(PXFeedViewModel *)v10->_viewModel spec];
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

- (PXFeedView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXFeedView.m" lineNumber:58 description:{@"%s is not available as initializer", "-[PXFeedView initWithCoder:]"}];

  abort();
}

- (PXFeedView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXFeedView.m" lineNumber:54 description:{@"%s is not available as initializer", "-[PXFeedView initWithFrame:]"}];

  abort();
}

@end