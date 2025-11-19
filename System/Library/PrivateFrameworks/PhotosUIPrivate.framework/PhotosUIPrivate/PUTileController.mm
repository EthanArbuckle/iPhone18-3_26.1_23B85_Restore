@interface PUTileController
- (BOOL)shouldAvoidInPlaceSnapshottedFadeOut;
- (BOOL)shouldSuppressAnimatedUpdates;
- (CGRect)visibleRect;
- (CGSize)expectedPresentationSize;
- (NSMutableArray)reasonsToSuppressAnimatedUpdates;
- (PUTileController)init;
- (PUTileController)initWithReuseIdentifier:(id)a3;
- (PUTileLayoutInfo)presentationLayoutInfo;
- (PUTilingView)tilingView;
- (id)description;
- (id)freeze;
- (void)addToTilingView:(id)a3;
- (void)applyLayoutInfo:(id)a3;
- (void)becomeReusable;
- (void)didEndAnimation:(int64_t)a3;
- (void)notifyWhenReadyForDisplayWithTimeOut:(double)a3 completionHandler:(id)a4;
- (void)prepareForReuse;
- (void)removeAllAnimations;
- (void)reuseIfApplicable;
- (void)setActive:(BOOL)a3;
- (void)setAnimationCount:(int64_t)a3;
- (void)setExpectedPresentationSize:(CGSize)a3;
- (void)setIsViewControllerTransitioning:(BOOL)a3;
- (void)setLayoutInfo:(id)a3;
- (void)startSuppressingAnimatedUpdatesWithReason:(id)a3;
- (void)stopSuppressingAnimatedUpdatesWithReason:(id)a3;
@end

@implementation PUTileController

- (PUTilingView)tilingView
{
  WeakRetained = objc_loadWeakRetained(&self->_tilingView);

  return WeakRetained;
}

- (CGSize)expectedPresentationSize
{
  width = self->_expectedPresentationSize.width;
  height = self->_expectedPresentationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)shouldSuppressAnimatedUpdates
{
  v2 = [(PUTileController *)self reasonsToSuppressAnimatedUpdates];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)stopSuppressingAnimatedUpdatesWithReason:(id)a3
{
  v4 = a3;
  v5 = [(PUTileController *)self reasonsToSuppressAnimatedUpdates];
  [v5 removeObject:v4];
}

- (void)startSuppressingAnimatedUpdatesWithReason:(id)a3
{
  v4 = a3;
  [(PUTileController *)self removeAllAnimations];
  v5 = [(PUTileController *)self reasonsToSuppressAnimatedUpdates];
  [v5 addObject:v4];
}

- (NSMutableArray)reasonsToSuppressAnimatedUpdates
{
  reasonsToSuppressAnimatedUpdates = self->_reasonsToSuppressAnimatedUpdates;
  if (!reasonsToSuppressAnimatedUpdates)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_reasonsToSuppressAnimatedUpdates;
    self->_reasonsToSuppressAnimatedUpdates = v4;

    reasonsToSuppressAnimatedUpdates = self->_reasonsToSuppressAnimatedUpdates;
  }

  return reasonsToSuppressAnimatedUpdates;
}

- (id)description
{
  v3 = [(PUTileController *)self layoutInfo];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v3 indexPath];
  v7 = [v6 pu_shortDescription];
  v8 = [v4 stringWithFormat:@"<%@ %p indexPath: %@>", v5, self, v7];;

  return v8;
}

- (void)notifyWhenReadyForDisplayWithTimeOut:(double)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    px_dispatch_on_main_queue();
  }
}

- (void)setExpectedPresentationSize:(CGSize)a3
{
  if (a3.width != self->_expectedPresentationSize.width || a3.height != self->_expectedPresentationSize.height)
  {
    self->_expectedPresentationSize = a3;
    [(PUTileController *)self expectedPresentationSizeDidChange];
  }
}

- (void)setIsViewControllerTransitioning:(BOOL)a3
{
  if (self->_isViewControllerTransitioning != a3)
  {
    self->_isViewControllerTransitioning = a3;
    [(PUTileController *)self isViewControllerTransitioningDidChange];
  }
}

- (void)setLayoutInfo:(id)a3
{
  v5 = a3;
  layoutInfo = self->_layoutInfo;
  if (layoutInfo != v5)
  {
    v8 = v5;
    v7 = layoutInfo;
    objc_storeStrong(&self->_layoutInfo, a3);
    if ([(PUTileController *)self wantsVisibleRectChanges]&& ![(PUTileLayoutInfo *)v8 isGeometryEqualToLayoutInfo:v7])
    {
      [(PUTileController *)self didChangeVisibleRect];
    }

    v5 = v8;
  }
}

- (BOOL)shouldAvoidInPlaceSnapshottedFadeOut
{
  if ([(PUTileController *)self isAnimating])
  {
    return 1;
  }

  return [(PUTileController *)self isDetached];
}

- (void)reuseIfApplicable
{
  v3 = [(PUTileController *)self tilingView];
  if (v3 && ![(PUTileController *)self isReusable]&& ![(PUTileController *)self isActive]&& ![(PUTileController *)self isAnimating]&& ![(PUTileController *)self isDetached])
  {
    [v3 enqueueTileControllerForReuse:self];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(PUTileController *)self didChangeActive];
  }
}

- (void)setAnimationCount:(int64_t)a3
{
  animationCount = self->_animationCount;
  if (animationCount != a3)
  {
    self->_animationCount = a3;
    if ((a3 == 0) == (animationCount != 0))
    {
      [(PUTileController *)self didChangeAnimating];
    }
  }
}

- (void)didEndAnimation:(int64_t)a3
{
  [(PUTileController *)self setAnimationCount:[(PUTileController *)self animationCount]- 1];
  if ([(PUTileController *)self animationCount]< 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:105 description:@"unbalanced animations"];
  }

  [(PUTileController *)self reuseIfApplicable];
  if (![(PUTileController *)self isAnimating])
  {
    v6 = [(PUTileController *)self tilingView];
    [v6 tileControllerDidEndAnimating:self];
  }
}

- (CGRect)visibleRect
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:92 description:@"must be implemented by concrete subclass"];

  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)applyLayoutInfo:(id)a3
{
  if ([(PUTileController *)self isDetached]&& [(PUTileController *)self wantsVisibleRectChanges])
  {

    [(PUTileController *)self didChangeVisibleRect];
  }
}

- (void)removeAllAnimations
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:79 description:@"must be implemented by concrete subclass"];
}

- (id)freeze
{
  v3 = [(PUTileController *)self presentationLayoutInfo];
  [(PUTileController *)self removeAllAnimations];
  [(PUTileController *)self applyLayoutInfo:v3];
  [(PUTileController *)self setLayoutInfo:v3];

  return v3;
}

- (PUTileLayoutInfo)presentationLayoutInfo
{
  v4 = [(PUTileController *)self layoutInfo];
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:62 description:@"missing layout info"];
  }

  return v4;
}

- (void)prepareForReuse
{
  if (![(PUTileController *)self isReusable])
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:53 description:@"unexpected reusable state"];
  }

  [(PUTileController *)self setReusable:0];
  [(PUTileController *)self setLayoutInfo:0];
  v4 = [(PUTileController *)self reasonsToSuppressAnimatedUpdates];
  [v4 removeAllObjects];

  [(PUTileController *)self removeAllAnimations];
}

- (void)becomeReusable
{
  if ([(PUTileController *)self isReusable])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:47 description:@"unexpected reusable state"];
  }

  [(PUTileController *)self setReusable:1];
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);

  [(PUTileController *)self setExpectedPresentationSize:v4, v5];
}

- (void)addToTilingView:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:43 description:@"must be implemented by concrete subclass"];
}

- (PUTileController)initWithReuseIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PUTileController;
  v5 = [(PUTileController *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    *(v5 + 56) = *MEMORY[0x1E695F060];
  }

  return v5;
}

- (PUTileController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PUTileController init]"}];

  abort();
}

@end