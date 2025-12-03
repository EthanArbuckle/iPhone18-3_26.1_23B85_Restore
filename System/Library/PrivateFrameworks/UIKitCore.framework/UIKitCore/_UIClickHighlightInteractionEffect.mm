@interface _UIClickHighlightInteractionEffect
+ (id)effectWithPreview:(id)preview continuingFromPreview:(id)fromPreview;
- (UITargetedPreview)targetedPreviewForEffectContinuation;
- (_UIClickHighlightInteractionEffect)initWithTargetedPreview:(id)preview continuingFromPreview:(id)fromPreview;
- (void)_completeHighlightEffect;
- (void)_createHighlightPlatter;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
@end

@implementation _UIClickHighlightInteractionEffect

+ (id)effectWithPreview:(id)preview continuingFromPreview:(id)fromPreview
{
  fromPreviewCopy = fromPreview;
  previewCopy = preview;
  v7 = [[_UIClickHighlightInteractionEffect alloc] initWithTargetedPreview:previewCopy continuingFromPreview:fromPreviewCopy];

  return v7;
}

- (_UIClickHighlightInteractionEffect)initWithTargetedPreview:(id)preview continuingFromPreview:(id)fromPreview
{
  previewCopy = preview;
  fromPreviewCopy = fromPreview;
  v14.receiver = self;
  v14.super_class = _UIClickHighlightInteractionEffect;
  v9 = [(_UIClickHighlightInteractionEffect *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(_UIClickHighlightInteractionEffect *)v9 setContinuationPreview:fromPreviewCopy];
    objc_storeStrong(&v10->_targetedPreview, preview);
    parameters = [previewCopy parameters];
    v12 = [parameters _previewMode] != 1;

    v10->_phase = v12;
    [(_UIClickHighlightInteractionEffect *)v10 _createHighlightPlatter];
  }

  return v10;
}

- (UITargetedPreview)targetedPreviewForEffectContinuation
{
  highlightPlatter = [(_UIClickHighlightInteractionEffect *)self highlightPlatter];
  anchorView = [highlightPlatter anchorView];

  window = [anchorView window];

  if (window)
  {
    targetedPreview = [(_UIClickHighlightInteractionEffect *)self targetedPreview];
    target = [targetedPreview target];

    layer = [anchorView layer];
    presentationLayer = [layer presentationLayer];
    v10 = presentationLayer;
    if (presentationLayer)
    {
      layer2 = presentationLayer;
    }

    else
    {
      layer2 = [anchorView layer];
    }

    v13 = layer2;

    memset(&v26, 0, sizeof(v26));
    if (v13)
    {
      [v13 transform];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    CATransform3DGetAffineTransform(&v26, &v25);
    [anchorView center];
    v15 = v14;
    v17 = v16;
    v18 = [UIPreviewTarget alloc];
    container = [target container];
    *&v25.m11 = *&v26.a;
    *&v25.m13 = *&v26.c;
    *&v25.m21 = *&v26.tx;
    v20 = [(UIPreviewTarget *)v18 initWithContainer:container center:&v25 transform:v15, v17];

    targetedPreview2 = [(_UIClickHighlightInteractionEffect *)self targetedPreview];
    v12 = [targetedPreview2 retargetedPreviewWithTarget:v20];
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (os_variant_has_internal_diagnostics())
      {
        v24 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v25.m11) = 0;
          _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Presenting while the highlight platter isn't in a window. If you see this, please file a bug against UIKit | Context Menu with reproduction steps.", &v25, 2u);
        }
      }

      else
      {
        v23 = *(__UILogGetCategoryCachedImpl("Assert", &targetedPreviewForEffectContinuation___s_category) + 8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v25.m11) = 0;
          _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Presenting while the highlight platter isn't in a window. If you see this, please file a bug against UIKit | Context Menu with reproduction steps.", &v25, 2u);
        }
      }
    }

    v12 = 0;
  }

  return v12;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  contextCopy = context;
  ended = [contextCopy ended];
  self->_isActive = ended ^ 1;
  if (((ended ^ 1) & 1) == 0 && !+[UIView areAnimationsEnabled])
  {
    [(_UIClickHighlightInteractionEffect *)self _completeHighlightEffect];
    goto LABEL_10;
  }

  [contextCopy progress];
  v8 = v7;
  if (v7 >= 1.0)
  {
    v9 = 2;
    goto LABEL_7;
  }

  if (v7 >= 0.1)
  {
    v9 = 1;
LABEL_7:
    self->_phase = v9;
  }

  highlightPlatter = [(_UIClickHighlightInteractionEffect *)self highlightPlatter];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71___UIClickHighlightInteractionEffect_interaction_didChangeWithContext___block_invoke;
  aBlock[3] = &unk_1E7107CE8;
  aBlock[4] = self;
  v20 = highlightPlatter;
  v22 = v8;
  v21 = contextCopy;
  v11 = highlightPlatter;
  v12 = _Block_copy(aBlock);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71___UIClickHighlightInteractionEffect_interaction_didChangeWithContext___block_invoke_2;
  v18[3] = &unk_1E70F3FD8;
  v18[4] = self;
  v13 = _Block_copy(v18);
  v14 = objc_opt_new();
  [v14 setTrackingDampingRatio:0.6 response:0.4 dampingRatioSmoothing:0.08 responseSmoothing:0.08];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71___UIClickHighlightInteractionEffect_interaction_didChangeWithContext___block_invoke_46;
  v16[3] = &unk_1E70F0F78;
  v17 = v12;
  v15 = v12;
  [UIView _animateUsingSpringBehavior:v14 tracking:1 animations:v16 completion:v13];

LABEL_10:
}

- (void)_createHighlightPlatter
{
  v3 = [_UIAnchoredClickHighlightPlatterView alloc];
  targetedPreview = [(_UIClickHighlightInteractionEffect *)self targetedPreview];
  v5 = [(_UIAnchoredClickHighlightPlatterView *)v3 initWithTargetedPreview:targetedPreview];

  [(_UIAnchoredClickHighlightPlatterView *)v5 anchorToContainer];
  [(_UIClickHighlightInteractionEffect *)self setHighlightPlatter:v5];
  continuationPreview = [(_UIClickHighlightInteractionEffect *)self continuationPreview];
  if ([continuationPreview _isVisible])
  {
    view = [continuationPreview view];
    v8 = [[_UIPortalView alloc] initWithSourceView:view];
    [(_UIPortalView *)v8 setHidesSourceView:1];
    anchorView = [(_UIAnchoredClickHighlightPlatterView *)v5 anchorView];
    [anchorView addContentView:v8];

    target = [continuationPreview target];
    v11 = target;
    if (target)
    {
      [target transform];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    anchorView2 = [(_UIAnchoredClickHighlightPlatterView *)v5 anchorView];
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    [anchorView2 setTransform:v15];

    anchorView3 = [(_UIAnchoredClickHighlightPlatterView *)v5 anchorView];
    [continuationPreview _transferAnimationsToView:anchorView3];
  }

  anchorView4 = [(_UIAnchoredClickHighlightPlatterView *)v5 anchorView];
  [anchorView4 addContentView:v5];
}

- (void)_completeHighlightEffect
{
  highlightPlatter = [(_UIClickHighlightInteractionEffect *)self highlightPlatter];
  [highlightPlatter deAnchor];

  [(_UIClickHighlightInteractionEffect *)self setHighlightPlatter:0];
  completionBlock = [(_UIClickHighlightInteractionEffect *)self completionBlock];
  [(_UIClickHighlightInteractionEffect *)self setCompletionBlock:0];
  v4 = completionBlock;
  if (completionBlock)
  {
    (*(completionBlock + 16))(completionBlock, self);
    v4 = completionBlock;
  }
}

@end