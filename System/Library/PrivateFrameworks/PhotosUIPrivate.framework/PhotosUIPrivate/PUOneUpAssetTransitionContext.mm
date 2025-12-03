@interface PUOneUpAssetTransitionContext
+ (id)oneUpAssetTransitionContextWithContainerView:(id)view fromView:(id)fromView snapshotView:(id)snapshotView transitionInfo:(id)info;
+ (id)oneUpAssetTransitionContextWithContainerView:(id)view fromView:(id)fromView snapshotView:(id)snapshotView transitionInfo:(id)info trailingAssetTransitionInfo:(id)transitionInfo leadingAssetTransitionInfo:(id)assetTransitionInfo;
- (id)oneUpTransitionContextWithAnimationBlock:(id)block;
- (id)oneUpTransitionContextWithContextShouldHideBackground:(BOOL)background;
- (id)oneUpTransitionContextWithContextWithContainerView:(id)view;
@end

@implementation PUOneUpAssetTransitionContext

- (id)oneUpTransitionContextWithAnimationBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v5 _setContainerView:self->_containerView];
  [(PUOneUpAssetTransitionContext *)v5 _setFromView:self->_fromView];
  [(PUOneUpAssetTransitionContext *)v5 _setSnapshotView:self->_snapshotView];
  [(PUOneUpAssetTransitionContext *)v5 _setTransitionInfo:self->_transitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setTrailingAssetTransitionInfo:self->_trailingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setLeadingAssetTransitionInfo:self->_leadingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setAnimationBlock:blockCopy];

  [(PUOneUpAssetTransitionContext *)v5 _setShouldHideBackground:self->_shouldHideBackground];
  [(PUOneUpAssetTransitionContext *)v5 setExecutedAction:self->_executedAction];

  return v5;
}

- (id)oneUpTransitionContextWithContextShouldHideBackground:(BOOL)background
{
  backgroundCopy = background;
  v5 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v5 _setContainerView:self->_containerView];
  [(PUOneUpAssetTransitionContext *)v5 _setFromView:self->_fromView];
  [(PUOneUpAssetTransitionContext *)v5 _setSnapshotView:self->_snapshotView];
  [(PUOneUpAssetTransitionContext *)v5 _setTransitionInfo:self->_transitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setTrailingAssetTransitionInfo:self->_trailingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setLeadingAssetTransitionInfo:self->_leadingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setShouldHideBackground:backgroundCopy];
  [(PUOneUpAssetTransitionContext *)v5 setExecutedAction:self->_executedAction];

  return v5;
}

- (id)oneUpTransitionContextWithContextWithContainerView:(id)view
{
  viewCopy = view;
  v5 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v5 _setContainerView:viewCopy];

  [(PUOneUpAssetTransitionContext *)v5 _setFromView:self->_fromView];
  [(PUOneUpAssetTransitionContext *)v5 _setSnapshotView:self->_snapshotView];
  [(PUOneUpAssetTransitionContext *)v5 _setTransitionInfo:self->_transitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setTrailingAssetTransitionInfo:self->_trailingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setLeadingAssetTransitionInfo:self->_leadingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setShouldHideBackground:self->_shouldHideBackground];
  [(PUOneUpAssetTransitionContext *)v5 setExecutedAction:self->_executedAction];

  return v5;
}

+ (id)oneUpAssetTransitionContextWithContainerView:(id)view fromView:(id)fromView snapshotView:(id)snapshotView transitionInfo:(id)info trailingAssetTransitionInfo:(id)transitionInfo leadingAssetTransitionInfo:(id)assetTransitionInfo
{
  assetTransitionInfoCopy = assetTransitionInfo;
  transitionInfoCopy = transitionInfo;
  infoCopy = info;
  snapshotViewCopy = snapshotView;
  fromViewCopy = fromView;
  viewCopy = view;
  v19 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v19 _setContainerView:viewCopy];

  [(PUOneUpAssetTransitionContext *)v19 _setFromView:fromViewCopy];
  [(PUOneUpAssetTransitionContext *)v19 _setSnapshotView:snapshotViewCopy];

  [(PUOneUpAssetTransitionContext *)v19 _setTransitionInfo:infoCopy];
  [(PUOneUpAssetTransitionContext *)v19 _setTrailingAssetTransitionInfo:transitionInfoCopy];

  [(PUOneUpAssetTransitionContext *)v19 _setLeadingAssetTransitionInfo:assetTransitionInfoCopy];

  return v19;
}

+ (id)oneUpAssetTransitionContextWithContainerView:(id)view fromView:(id)fromView snapshotView:(id)snapshotView transitionInfo:(id)info
{
  infoCopy = info;
  snapshotViewCopy = snapshotView;
  fromViewCopy = fromView;
  viewCopy = view;
  v13 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v13 _setContainerView:viewCopy];

  [(PUOneUpAssetTransitionContext *)v13 _setFromView:fromViewCopy];
  [(PUOneUpAssetTransitionContext *)v13 _setSnapshotView:snapshotViewCopy];

  [(PUOneUpAssetTransitionContext *)v13 _setTransitionInfo:infoCopy];

  return v13;
}

@end