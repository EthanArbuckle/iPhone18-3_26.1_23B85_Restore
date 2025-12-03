@interface PUTileController
- (BOOL)shouldAvoidInPlaceSnapshottedFadeOut;
- (BOOL)shouldSuppressAnimatedUpdates;
- (CGRect)visibleRect;
- (CGSize)expectedPresentationSize;
- (NSMutableArray)reasonsToSuppressAnimatedUpdates;
- (PUTileController)init;
- (PUTileController)initWithReuseIdentifier:(id)identifier;
- (PUTileLayoutInfo)presentationLayoutInfo;
- (PUTilingView)tilingView;
- (id)description;
- (id)freeze;
- (void)addToTilingView:(id)view;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)didEndAnimation:(int64_t)animation;
- (void)notifyWhenReadyForDisplayWithTimeOut:(double)out completionHandler:(id)handler;
- (void)prepareForReuse;
- (void)removeAllAnimations;
- (void)reuseIfApplicable;
- (void)setActive:(BOOL)active;
- (void)setAnimationCount:(int64_t)count;
- (void)setExpectedPresentationSize:(CGSize)size;
- (void)setIsViewControllerTransitioning:(BOOL)transitioning;
- (void)setLayoutInfo:(id)info;
- (void)startSuppressingAnimatedUpdatesWithReason:(id)reason;
- (void)stopSuppressingAnimatedUpdatesWithReason:(id)reason;
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
  reasonsToSuppressAnimatedUpdates = [(PUTileController *)self reasonsToSuppressAnimatedUpdates];
  v3 = [reasonsToSuppressAnimatedUpdates count] != 0;

  return v3;
}

- (void)stopSuppressingAnimatedUpdatesWithReason:(id)reason
{
  reasonCopy = reason;
  reasonsToSuppressAnimatedUpdates = [(PUTileController *)self reasonsToSuppressAnimatedUpdates];
  [reasonsToSuppressAnimatedUpdates removeObject:reasonCopy];
}

- (void)startSuppressingAnimatedUpdatesWithReason:(id)reason
{
  reasonCopy = reason;
  [(PUTileController *)self removeAllAnimations];
  reasonsToSuppressAnimatedUpdates = [(PUTileController *)self reasonsToSuppressAnimatedUpdates];
  [reasonsToSuppressAnimatedUpdates addObject:reasonCopy];
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
  layoutInfo = [(PUTileController *)self layoutInfo];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  indexPath = [layoutInfo indexPath];
  pu_shortDescription = [indexPath pu_shortDescription];
  v8 = [v4 stringWithFormat:@"<%@ %p indexPath: %@>", v5, self, pu_shortDescription];;

  return v8;
}

- (void)notifyWhenReadyForDisplayWithTimeOut:(double)out completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy)
  {
    v6 = handlerCopy;
    px_dispatch_on_main_queue();
  }
}

- (void)setExpectedPresentationSize:(CGSize)size
{
  if (size.width != self->_expectedPresentationSize.width || size.height != self->_expectedPresentationSize.height)
  {
    self->_expectedPresentationSize = size;
    [(PUTileController *)self expectedPresentationSizeDidChange];
  }
}

- (void)setIsViewControllerTransitioning:(BOOL)transitioning
{
  if (self->_isViewControllerTransitioning != transitioning)
  {
    self->_isViewControllerTransitioning = transitioning;
    [(PUTileController *)self isViewControllerTransitioningDidChange];
  }
}

- (void)setLayoutInfo:(id)info
{
  infoCopy = info;
  layoutInfo = self->_layoutInfo;
  if (layoutInfo != infoCopy)
  {
    v8 = infoCopy;
    v7 = layoutInfo;
    objc_storeStrong(&self->_layoutInfo, info);
    if ([(PUTileController *)self wantsVisibleRectChanges]&& ![(PUTileLayoutInfo *)v8 isGeometryEqualToLayoutInfo:v7])
    {
      [(PUTileController *)self didChangeVisibleRect];
    }

    infoCopy = v8;
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
  tilingView = [(PUTileController *)self tilingView];
  if (tilingView && ![(PUTileController *)self isReusable]&& ![(PUTileController *)self isActive]&& ![(PUTileController *)self isAnimating]&& ![(PUTileController *)self isDetached])
  {
    [tilingView enqueueTileControllerForReuse:self];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(PUTileController *)self didChangeActive];
  }
}

- (void)setAnimationCount:(int64_t)count
{
  animationCount = self->_animationCount;
  if (animationCount != count)
  {
    self->_animationCount = count;
    if ((count == 0) == (animationCount != 0))
    {
      [(PUTileController *)self didChangeAnimating];
    }
  }
}

- (void)didEndAnimation:(int64_t)animation
{
  [(PUTileController *)self setAnimationCount:[(PUTileController *)self animationCount]- 1];
  if ([(PUTileController *)self animationCount]< 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:105 description:@"unbalanced animations"];
  }

  [(PUTileController *)self reuseIfApplicable];
  if (![(PUTileController *)self isAnimating])
  {
    tilingView = [(PUTileController *)self tilingView];
    [tilingView tileControllerDidEndAnimating:self];
  }
}

- (CGRect)visibleRect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:92 description:@"must be implemented by concrete subclass"];

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

- (void)applyLayoutInfo:(id)info
{
  if ([(PUTileController *)self isDetached]&& [(PUTileController *)self wantsVisibleRectChanges])
  {

    [(PUTileController *)self didChangeVisibleRect];
  }
}

- (void)removeAllAnimations
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:79 description:@"must be implemented by concrete subclass"];
}

- (id)freeze
{
  presentationLayoutInfo = [(PUTileController *)self presentationLayoutInfo];
  [(PUTileController *)self removeAllAnimations];
  [(PUTileController *)self applyLayoutInfo:presentationLayoutInfo];
  [(PUTileController *)self setLayoutInfo:presentationLayoutInfo];

  return presentationLayoutInfo;
}

- (PUTileLayoutInfo)presentationLayoutInfo
{
  layoutInfo = [(PUTileController *)self layoutInfo];
  if (!layoutInfo)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:62 description:@"missing layout info"];
  }

  return layoutInfo;
}

- (void)prepareForReuse
{
  if (![(PUTileController *)self isReusable])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:53 description:@"unexpected reusable state"];
  }

  [(PUTileController *)self setReusable:0];
  [(PUTileController *)self setLayoutInfo:0];
  reasonsToSuppressAnimatedUpdates = [(PUTileController *)self reasonsToSuppressAnimatedUpdates];
  [reasonsToSuppressAnimatedUpdates removeAllObjects];

  [(PUTileController *)self removeAllAnimations];
}

- (void)becomeReusable
{
  if ([(PUTileController *)self isReusable])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:47 description:@"unexpected reusable state"];
  }

  [(PUTileController *)self setReusable:1];
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);

  [(PUTileController *)self setExpectedPresentationSize:v4, v5];
}

- (void)addToTilingView:(id)view
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:43 description:@"must be implemented by concrete subclass"];
}

- (PUTileController)initWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PUTileController;
  v5 = [(PUTileController *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    *(v5 + 56) = *MEMORY[0x1E695F060];
  }

  return v5;
}

- (PUTileController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTileController.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PUTileController init]"}];

  abort();
}

@end