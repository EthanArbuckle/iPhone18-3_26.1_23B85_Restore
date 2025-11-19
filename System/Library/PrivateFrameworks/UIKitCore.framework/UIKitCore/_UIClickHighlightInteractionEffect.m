@interface _UIClickHighlightInteractionEffect
+ (id)effectWithPreview:(id)a3 continuingFromPreview:(id)a4;
- (UITargetedPreview)targetedPreviewForEffectContinuation;
- (_UIClickHighlightInteractionEffect)initWithTargetedPreview:(id)a3 continuingFromPreview:(id)a4;
- (void)_completeHighlightEffect;
- (void)_createHighlightPlatter;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
@end

@implementation _UIClickHighlightInteractionEffect

+ (id)effectWithPreview:(id)a3 continuingFromPreview:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_UIClickHighlightInteractionEffect alloc] initWithTargetedPreview:v6 continuingFromPreview:v5];

  return v7;
}

- (_UIClickHighlightInteractionEffect)initWithTargetedPreview:(id)a3 continuingFromPreview:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _UIClickHighlightInteractionEffect;
  v9 = [(_UIClickHighlightInteractionEffect *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(_UIClickHighlightInteractionEffect *)v9 setContinuationPreview:v8];
    objc_storeStrong(&v10->_targetedPreview, a3);
    v11 = [v7 parameters];
    v12 = [v11 _previewMode] != 1;

    v10->_phase = v12;
    [(_UIClickHighlightInteractionEffect *)v10 _createHighlightPlatter];
  }

  return v10;
}

- (UITargetedPreview)targetedPreviewForEffectContinuation
{
  v3 = [(_UIClickHighlightInteractionEffect *)self highlightPlatter];
  v4 = [v3 anchorView];

  v5 = [v4 window];

  if (v5)
  {
    v6 = [(_UIClickHighlightInteractionEffect *)self targetedPreview];
    v7 = [v6 target];

    v8 = [v4 layer];
    v9 = [v8 presentationLayer];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v4 layer];
    }

    v13 = v11;

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
    [v4 center];
    v15 = v14;
    v17 = v16;
    v18 = [UIPreviewTarget alloc];
    v19 = [v7 container];
    *&v25.m11 = *&v26.a;
    *&v25.m13 = *&v26.c;
    *&v25.m21 = *&v26.tx;
    v20 = [(UIPreviewTarget *)v18 initWithContainer:v19 center:&v25 transform:v15, v17];

    v21 = [(_UIClickHighlightInteractionEffect *)self targetedPreview];
    v12 = [v21 retargetedPreviewWithTarget:v20];
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

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v5 = a4;
  v6 = [v5 ended];
  self->_isActive = v6 ^ 1;
  if (((v6 ^ 1) & 1) == 0 && !+[UIView areAnimationsEnabled])
  {
    [(_UIClickHighlightInteractionEffect *)self _completeHighlightEffect];
    goto LABEL_10;
  }

  [v5 progress];
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

  v10 = [(_UIClickHighlightInteractionEffect *)self highlightPlatter];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71___UIClickHighlightInteractionEffect_interaction_didChangeWithContext___block_invoke;
  aBlock[3] = &unk_1E7107CE8;
  aBlock[4] = self;
  v20 = v10;
  v22 = v8;
  v21 = v5;
  v11 = v10;
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
  v4 = [(_UIClickHighlightInteractionEffect *)self targetedPreview];
  v5 = [(_UIAnchoredClickHighlightPlatterView *)v3 initWithTargetedPreview:v4];

  [(_UIAnchoredClickHighlightPlatterView *)v5 anchorToContainer];
  [(_UIClickHighlightInteractionEffect *)self setHighlightPlatter:v5];
  v6 = [(_UIClickHighlightInteractionEffect *)self continuationPreview];
  if ([v6 _isVisible])
  {
    v7 = [v6 view];
    v8 = [[_UIPortalView alloc] initWithSourceView:v7];
    [(_UIPortalView *)v8 setHidesSourceView:1];
    v9 = [(_UIAnchoredClickHighlightPlatterView *)v5 anchorView];
    [v9 addContentView:v8];

    v10 = [v6 target];
    v11 = v10;
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    v12 = [(_UIAnchoredClickHighlightPlatterView *)v5 anchorView];
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    [v12 setTransform:v15];

    v13 = [(_UIAnchoredClickHighlightPlatterView *)v5 anchorView];
    [v6 _transferAnimationsToView:v13];
  }

  v14 = [(_UIAnchoredClickHighlightPlatterView *)v5 anchorView];
  [v14 addContentView:v5];
}

- (void)_completeHighlightEffect
{
  v3 = [(_UIClickHighlightInteractionEffect *)self highlightPlatter];
  [v3 deAnchor];

  [(_UIClickHighlightInteractionEffect *)self setHighlightPlatter:0];
  v5 = [(_UIClickHighlightInteractionEffect *)self completionBlock];
  [(_UIClickHighlightInteractionEffect *)self setCompletionBlock:0];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, self);
    v4 = v5;
  }
}

@end