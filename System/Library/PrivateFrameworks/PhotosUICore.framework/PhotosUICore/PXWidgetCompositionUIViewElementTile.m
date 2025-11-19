@interface PXWidgetCompositionUIViewElementTile
- (PXBasicTileAnimationOptions)animationOptions;
- (PXWidgetCompositionUIViewElementTile)initWithWidget:(id)a3;
- (id)_willAnimateTileToGeometry:(PXTileGeometry *)a3 withOptions:(id)a4;
- (id)containerViewControllerForWidget:(id)a3;
- (void)_didCompleteTileAnimationWithContext:(id)a3;
- (void)_embedContentView;
- (void)animateAlongsideTransition:(id)a3 completion:(id)a4;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
@end

@implementation PXWidgetCompositionUIViewElementTile

- (void)animateAlongsideTransition:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PXWidgetCompositionUIViewElementTile *)self _currentTransitionContext];
  if (!v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionUIViewElementTile.m" lineNumber:169 description:@"missing transition context"];
  }

  if (v7)
  {
    v10 = [v9 alongsideAnimation];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__PXWidgetCompositionUIViewElementTile_animateAlongsideTransition_completion___block_invoke;
    v18[3] = &unk_1E77425C8;
    v19 = v10;
    v20 = v7;
    v11 = v10;
    [v9 setAlongsideAnimation:v18];
  }

  if (v8)
  {
    v12 = [v9 alongsideAnimationCompletion];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__PXWidgetCompositionUIViewElementTile_animateAlongsideTransition_completion___block_invoke_2;
    v15[3] = &unk_1E77425C8;
    v16 = v12;
    v17 = v8;
    v13 = v12;
    [v9 setAlongsideAnimationCompletion:v15];
  }
}

uint64_t __78__PXWidgetCompositionUIViewElementTile_animateAlongsideTransition_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __78__PXWidgetCompositionUIViewElementTile_animateAlongsideTransition_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (PXBasicTileAnimationOptions)animationOptions
{
  v4 = [(PXWidgetCompositionUIViewElementTile *)self _currentTransitionContext];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionUIViewElementTile.m" lineNumber:161 description:@"missing transition context"];
  }

  v5 = [v4 animationOptions];

  return v5;
}

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  [(PXWidgetCompositionUIViewElementTile *)self _embedContentView:a3];
  v7 = [(PXWidgetCompositionUIViewElementTile *)self _currentTransitionContext];
  v5 = [v7 alongsideAnimation];

  if (v5)
  {
    v6 = [v7 alongsideAnimation];
    v6[2]();
  }
}

- (void)_didCompleteTileAnimationWithContext:(id)a3
{
  v5 = a3;
  v3 = [v5 alongsideAnimationCompletion];

  if (v3)
  {
    v4 = [v5 alongsideAnimationCompletion];
    v4[2]();
  }
}

- (id)_willAnimateTileToGeometry:(PXTileGeometry *)a3 withOptions:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(_PXWidgetCompositionUIViewElementTileTransitionContext);
  [(_PXWidgetCompositionUIViewElementTileTransitionContext *)v7 setAnimationOptions:v6];

  [(PXWidgetCompositionUIViewElementTile *)self _setCurrentTransitionContext:v7];
  v8 = [(PXWidgetCompositionUIViewElementTile *)self widget];
  v9 = objc_getAssociatedObject(v8, PXWidgetDidLoadContentViewAssociationKey);
  v10 = [v9 BOOLValue];

  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = [v8 contentView];
    [v11 bounds];
    if (a3->size.width != v13 || a3->size.height != v12)
    {
      [v8 contentViewWillTransitionToSize:self withTransitionCoordinator:?];
    }
  }

  return v7;
}

- (id)containerViewControllerForWidget:(id)a3
{
  v3 = a3;
  v4 = [v3 widgetDelegate];
  v5 = [v4 widgetViewControllerHostingWidget:v3];

  v6 = v5;
  return v5;
}

- (void)_embedContentView
{
  if (![(PXWidgetCompositionUIViewElementTile *)self _didEmbedContentView])
  {
    object = [(PXWidgetCompositionUIViewElementTile *)self widget];
    v3 = [object contentView];
    objc_setAssociatedObject(object, PXWidgetDidLoadContentViewAssociationKey, MEMORY[0x1E695E118], 1);
    v4 = [(PXWidgetCompositionUIViewElementTile *)self _containerView];
    [v4 bounds];
    [v3 setFrame:?];
    [v3 setAutoresizingMask:18];
    [(PXWidgetCompositionUIViewElementTile *)self addWidgetAsChild:object];
    [v4 addSubview:v3];
    [(PXWidgetCompositionUIViewElementTile *)self _setDidEmbedContentView:1];
    [(PXWidgetCompositionUIViewElementTile *)self didMoveWidgetToParent:object];
  }
}

- (PXWidgetCompositionUIViewElementTile)initWithWidget:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXWidgetCompositionUIViewElementTile;
  v6 = [(PXWidgetCompositionUIViewElementTile *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widget, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v7->__containerView;
    v7->__containerView = v8;
  }

  return v7;
}

@end