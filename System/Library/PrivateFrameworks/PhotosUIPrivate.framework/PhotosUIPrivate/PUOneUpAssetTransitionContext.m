@interface PUOneUpAssetTransitionContext
+ (id)oneUpAssetTransitionContextWithContainerView:(id)a3 fromView:(id)a4 snapshotView:(id)a5 transitionInfo:(id)a6;
+ (id)oneUpAssetTransitionContextWithContainerView:(id)a3 fromView:(id)a4 snapshotView:(id)a5 transitionInfo:(id)a6 trailingAssetTransitionInfo:(id)a7 leadingAssetTransitionInfo:(id)a8;
- (id)oneUpTransitionContextWithAnimationBlock:(id)a3;
- (id)oneUpTransitionContextWithContextShouldHideBackground:(BOOL)a3;
- (id)oneUpTransitionContextWithContextWithContainerView:(id)a3;
@end

@implementation PUOneUpAssetTransitionContext

- (id)oneUpTransitionContextWithAnimationBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v5 _setContainerView:self->_containerView];
  [(PUOneUpAssetTransitionContext *)v5 _setFromView:self->_fromView];
  [(PUOneUpAssetTransitionContext *)v5 _setSnapshotView:self->_snapshotView];
  [(PUOneUpAssetTransitionContext *)v5 _setTransitionInfo:self->_transitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setTrailingAssetTransitionInfo:self->_trailingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setLeadingAssetTransitionInfo:self->_leadingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setAnimationBlock:v4];

  [(PUOneUpAssetTransitionContext *)v5 _setShouldHideBackground:self->_shouldHideBackground];
  [(PUOneUpAssetTransitionContext *)v5 setExecutedAction:self->_executedAction];

  return v5;
}

- (id)oneUpTransitionContextWithContextShouldHideBackground:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v5 _setContainerView:self->_containerView];
  [(PUOneUpAssetTransitionContext *)v5 _setFromView:self->_fromView];
  [(PUOneUpAssetTransitionContext *)v5 _setSnapshotView:self->_snapshotView];
  [(PUOneUpAssetTransitionContext *)v5 _setTransitionInfo:self->_transitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setTrailingAssetTransitionInfo:self->_trailingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setLeadingAssetTransitionInfo:self->_leadingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setShouldHideBackground:v3];
  [(PUOneUpAssetTransitionContext *)v5 setExecutedAction:self->_executedAction];

  return v5;
}

- (id)oneUpTransitionContextWithContextWithContainerView:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v5 _setContainerView:v4];

  [(PUOneUpAssetTransitionContext *)v5 _setFromView:self->_fromView];
  [(PUOneUpAssetTransitionContext *)v5 _setSnapshotView:self->_snapshotView];
  [(PUOneUpAssetTransitionContext *)v5 _setTransitionInfo:self->_transitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setTrailingAssetTransitionInfo:self->_trailingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setLeadingAssetTransitionInfo:self->_leadingAssetTransitionInfo];
  [(PUOneUpAssetTransitionContext *)v5 _setShouldHideBackground:self->_shouldHideBackground];
  [(PUOneUpAssetTransitionContext *)v5 setExecutedAction:self->_executedAction];

  return v5;
}

+ (id)oneUpAssetTransitionContextWithContainerView:(id)a3 fromView:(id)a4 snapshotView:(id)a5 transitionInfo:(id)a6 trailingAssetTransitionInfo:(id)a7 leadingAssetTransitionInfo:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v19 _setContainerView:v18];

  [(PUOneUpAssetTransitionContext *)v19 _setFromView:v17];
  [(PUOneUpAssetTransitionContext *)v19 _setSnapshotView:v16];

  [(PUOneUpAssetTransitionContext *)v19 _setTransitionInfo:v15];
  [(PUOneUpAssetTransitionContext *)v19 _setTrailingAssetTransitionInfo:v14];

  [(PUOneUpAssetTransitionContext *)v19 _setLeadingAssetTransitionInfo:v13];

  return v19;
}

+ (id)oneUpAssetTransitionContextWithContainerView:(id)a3 fromView:(id)a4 snapshotView:(id)a5 transitionInfo:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(PUOneUpAssetTransitionContext);
  [(PUOneUpAssetTransitionContext *)v13 _setContainerView:v12];

  [(PUOneUpAssetTransitionContext *)v13 _setFromView:v11];
  [(PUOneUpAssetTransitionContext *)v13 _setSnapshotView:v10];

  [(PUOneUpAssetTransitionContext *)v13 _setTransitionInfo:v9];

  return v13;
}

@end