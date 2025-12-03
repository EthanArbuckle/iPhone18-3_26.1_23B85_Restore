@interface PXWidgetCompositionUIViewElementTile
- (PXBasicTileAnimationOptions)animationOptions;
- (PXWidgetCompositionUIViewElementTile)initWithWidget:(id)widget;
- (id)_willAnimateTileToGeometry:(PXTileGeometry *)geometry withOptions:(id)options;
- (id)containerViewControllerForWidget:(id)widget;
- (void)_didCompleteTileAnimationWithContext:(id)context;
- (void)_embedContentView;
- (void)animateAlongsideTransition:(id)transition completion:(id)completion;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
@end

@implementation PXWidgetCompositionUIViewElementTile

- (void)animateAlongsideTransition:(id)transition completion:(id)completion
{
  transitionCopy = transition;
  completionCopy = completion;
  _currentTransitionContext = [(PXWidgetCompositionUIViewElementTile *)self _currentTransitionContext];
  if (!_currentTransitionContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionUIViewElementTile.m" lineNumber:169 description:@"missing transition context"];
  }

  if (transitionCopy)
  {
    alongsideAnimation = [_currentTransitionContext alongsideAnimation];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __78__PXWidgetCompositionUIViewElementTile_animateAlongsideTransition_completion___block_invoke;
    v18[3] = &unk_1E77425C8;
    v19 = alongsideAnimation;
    v20 = transitionCopy;
    v11 = alongsideAnimation;
    [_currentTransitionContext setAlongsideAnimation:v18];
  }

  if (completionCopy)
  {
    alongsideAnimationCompletion = [_currentTransitionContext alongsideAnimationCompletion];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__PXWidgetCompositionUIViewElementTile_animateAlongsideTransition_completion___block_invoke_2;
    v15[3] = &unk_1E77425C8;
    v16 = alongsideAnimationCompletion;
    v17 = completionCopy;
    v13 = alongsideAnimationCompletion;
    [_currentTransitionContext setAlongsideAnimationCompletion:v15];
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
  _currentTransitionContext = [(PXWidgetCompositionUIViewElementTile *)self _currentTransitionContext];
  if (!_currentTransitionContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionUIViewElementTile.m" lineNumber:161 description:@"missing transition context"];
  }

  animationOptions = [_currentTransitionContext animationOptions];

  return animationOptions;
}

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  [(PXWidgetCompositionUIViewElementTile *)self _embedContentView:geometry];
  _currentTransitionContext = [(PXWidgetCompositionUIViewElementTile *)self _currentTransitionContext];
  alongsideAnimation = [_currentTransitionContext alongsideAnimation];

  if (alongsideAnimation)
  {
    alongsideAnimation2 = [_currentTransitionContext alongsideAnimation];
    alongsideAnimation2[2]();
  }
}

- (void)_didCompleteTileAnimationWithContext:(id)context
{
  contextCopy = context;
  alongsideAnimationCompletion = [contextCopy alongsideAnimationCompletion];

  if (alongsideAnimationCompletion)
  {
    alongsideAnimationCompletion2 = [contextCopy alongsideAnimationCompletion];
    alongsideAnimationCompletion2[2]();
  }
}

- (id)_willAnimateTileToGeometry:(PXTileGeometry *)geometry withOptions:(id)options
{
  optionsCopy = options;
  v7 = objc_alloc_init(_PXWidgetCompositionUIViewElementTileTransitionContext);
  [(_PXWidgetCompositionUIViewElementTileTransitionContext *)v7 setAnimationOptions:optionsCopy];

  [(PXWidgetCompositionUIViewElementTile *)self _setCurrentTransitionContext:v7];
  widget = [(PXWidgetCompositionUIViewElementTile *)self widget];
  v9 = objc_getAssociatedObject(widget, PXWidgetDidLoadContentViewAssociationKey);
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    contentView = [widget contentView];
    [contentView bounds];
    if (geometry->size.width != v13 || geometry->size.height != v12)
    {
      [widget contentViewWillTransitionToSize:self withTransitionCoordinator:?];
    }
  }

  return v7;
}

- (id)containerViewControllerForWidget:(id)widget
{
  widgetCopy = widget;
  widgetDelegate = [widgetCopy widgetDelegate];
  v5 = [widgetDelegate widgetViewControllerHostingWidget:widgetCopy];

  v6 = v5;
  return v5;
}

- (void)_embedContentView
{
  if (![(PXWidgetCompositionUIViewElementTile *)self _didEmbedContentView])
  {
    object = [(PXWidgetCompositionUIViewElementTile *)self widget];
    contentView = [object contentView];
    objc_setAssociatedObject(object, PXWidgetDidLoadContentViewAssociationKey, MEMORY[0x1E695E118], 1);
    _containerView = [(PXWidgetCompositionUIViewElementTile *)self _containerView];
    [_containerView bounds];
    [contentView setFrame:?];
    [contentView setAutoresizingMask:18];
    [(PXWidgetCompositionUIViewElementTile *)self addWidgetAsChild:object];
    [_containerView addSubview:contentView];
    [(PXWidgetCompositionUIViewElementTile *)self _setDidEmbedContentView:1];
    [(PXWidgetCompositionUIViewElementTile *)self didMoveWidgetToParent:object];
  }
}

- (PXWidgetCompositionUIViewElementTile)initWithWidget:(id)widget
{
  widgetCopy = widget;
  v11.receiver = self;
  v11.super_class = PXWidgetCompositionUIViewElementTile;
  v6 = [(PXWidgetCompositionUIViewElementTile *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_widget, widget);
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v7->__containerView;
    v7->__containerView = v8;
  }

  return v7;
}

@end