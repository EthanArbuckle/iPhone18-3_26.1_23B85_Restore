@interface _UIAnchoredClickHighlightPlatterView
- (_UIAnchoredClickHighlightPlatterView)initWithTargetedPreview:(id)a3;
- (_UIMorphingView)anchorView;
- (void)anchorToContainer;
- (void)deAnchor;
@end

@implementation _UIAnchoredClickHighlightPlatterView

- (_UIAnchoredClickHighlightPlatterView)initWithTargetedPreview:(id)a3
{
  v23.receiver = self;
  v23.super_class = _UIAnchoredClickHighlightPlatterView;
  v3 = [(_UIHighlightPlatterView *)&v23 initWithTargetedPreview:a3];
  if (v3)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v4 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v6 = _UIInternalPreference_ClickUIDebugEnabled;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_ClickUIDebugEnabled)
      {
        while (v4 >= v6)
        {
          _UIInternalPreferenceSync(v4, &_UIInternalPreference_ClickUIDebugEnabled, @"ClickUIDebugEnabled", _UIInternalPreferenceUpdateBool);
          v6 = _UIInternalPreference_ClickUIDebugEnabled;
          if (v4 == _UIInternalPreference_ClickUIDebugEnabled)
          {
            return v3;
          }
        }

        if (byte_1EA95E0FC)
        {
          v7 = +[UIColor systemOrangeColor];
          v8 = [v7 CGColor];
          v9 = [(_UIHighlightPlatterView *)v3 portalView];
          v10 = [v9 layer];
          [v10 setBorderColor:v8];

          v11 = [(_UIHighlightPlatterView *)v3 portalView];
          v12 = [v11 layer];
          [v12 setBorderWidth:1.0];

          v13 = +[UIColor redColor];
          v14 = [v13 CGColor];
          v15 = [(UIView *)v3 layer];
          [v15 setBorderColor:v14];

          v16 = [(UIView *)v3 layer];
          [v16 setBorderWidth:1.0];

          v17 = +[UIColor blueColor];
          v18 = [v17 CGColor];
          v19 = [(_UIAnchoredClickHighlightPlatterView *)v3 anchorView];
          v20 = [v19 layer];
          [v20 setBorderColor:v18];

          v21 = [(_UIAnchoredClickHighlightPlatterView *)v3 anchorView];
          v22 = [v21 layer];
          [v22 setBorderWidth:1.0];
        }
      }
    }
  }

  return v3;
}

- (void)anchorToContainer
{
  v47[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIHighlightPlatterView *)self targetedPreview];
  v4 = [v3 target];
  v5 = objc_opt_new();
  [v5 setUserInteractionEnabled:0];
  [v5 setUseOpacityPairFilter:1];
  [(_UIAnchoredClickHighlightPlatterView *)self setAnchorView:v5];
  v6 = [v3 view];
  v7 = [v4 container];
  [v7 addSubview:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 _verticalScrollIndicator];
    [v8 bringSubviewToFront:v9];

    v10 = [v8 _horizontalScrollIndicator];
    [v8 bringSubviewToFront:v10];
  }

  [v4 center];
  [v5 setCenter:?];
  if ([v3 _hasCustomTarget])
  {
    if ([v3 _sourceViewIsInViewHierarchy])
    {
      v11 = v6;
      [v4 center];
      v13 = v12;
      v15 = v14;
      v16 = [v4 container];
      [v11 convertPoint:v16 fromView:{v13, v15}];
      v18 = v17;
      v20 = v19;
LABEL_8:

      goto LABEL_11;
    }

    v11 = [v4 container];
    [v4 center];
    v18 = v28;
    v20 = v29;
  }

  else
  {
    v11 = v6;
    v21 = [v3 parameters];
    v22 = [v21 visiblePath];

    if (v22)
    {
      v16 = [v3 parameters];
      v23 = [v16 visiblePath];
      [v23 bounds];
      v18 = v25 + v24 * 0.5;
      v20 = v27 + v26 * 0.5;

      goto LABEL_8;
    }

    [v11 bounds];
    v18 = v31 + v30 * 0.5;
    v20 = v33 + v32 * 0.5;
  }

LABEL_11:
  v34 = [v3 overridePositionTrackingView];
  if (v34)
  {
    [v11 convertPoint:v34 toView:{v18, v20}];
    v18 = v35;
    v20 = v36;
    v37 = v34;

    v11 = v37;
  }

  v38 = objc_opt_new();
  v39 = [v11 layer];
  [v38 setSourceLayer:v39];

  [v38 setKeyPath:@"position"];
  [v38 setDuration:INFINITY];
  v40 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18, v20}];
  v47[0] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  [v38 setSourcePoints:v41];

  v42 = [v5 layer];
  [v42 addAnimation:v38 forKey:@"_UIClickHighlightMatchMoveAnimation"];

  if (v4)
  {
    [v4 transform];
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
  }

  v43[0] = v44;
  v43[1] = v45;
  v43[2] = v46;
  [v5 setTransform:v43];
}

- (void)deAnchor
{
  v2 = [(_UIAnchoredClickHighlightPlatterView *)self anchorView];
  [v2 removeFromSuperview];
}

- (_UIMorphingView)anchorView
{
  WeakRetained = objc_loadWeakRetained(&self->_anchorView);

  return WeakRetained;
}

@end