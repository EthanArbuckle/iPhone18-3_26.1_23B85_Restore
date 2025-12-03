@interface _UIAnchoredClickHighlightPlatterView
- (_UIAnchoredClickHighlightPlatterView)initWithTargetedPreview:(id)preview;
- (_UIMorphingView)anchorView;
- (void)anchorToContainer;
- (void)deAnchor;
@end

@implementation _UIAnchoredClickHighlightPlatterView

- (_UIAnchoredClickHighlightPlatterView)initWithTargetedPreview:(id)preview
{
  v23.receiver = self;
  v23.super_class = _UIAnchoredClickHighlightPlatterView;
  v3 = [(_UIHighlightPlatterView *)&v23 initWithTargetedPreview:preview];
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
          cGColor = [v7 CGColor];
          portalView = [(_UIHighlightPlatterView *)v3 portalView];
          layer = [portalView layer];
          [layer setBorderColor:cGColor];

          portalView2 = [(_UIHighlightPlatterView *)v3 portalView];
          layer2 = [portalView2 layer];
          [layer2 setBorderWidth:1.0];

          v13 = +[UIColor redColor];
          cGColor2 = [v13 CGColor];
          layer3 = [(UIView *)v3 layer];
          [layer3 setBorderColor:cGColor2];

          layer4 = [(UIView *)v3 layer];
          [layer4 setBorderWidth:1.0];

          v17 = +[UIColor blueColor];
          cGColor3 = [v17 CGColor];
          anchorView = [(_UIAnchoredClickHighlightPlatterView *)v3 anchorView];
          layer5 = [anchorView layer];
          [layer5 setBorderColor:cGColor3];

          anchorView2 = [(_UIAnchoredClickHighlightPlatterView *)v3 anchorView];
          layer6 = [anchorView2 layer];
          [layer6 setBorderWidth:1.0];
        }
      }
    }
  }

  return v3;
}

- (void)anchorToContainer
{
  v47[1] = *MEMORY[0x1E69E9840];
  targetedPreview = [(_UIHighlightPlatterView *)self targetedPreview];
  target = [targetedPreview target];
  v5 = objc_opt_new();
  [v5 setUserInteractionEnabled:0];
  [v5 setUseOpacityPairFilter:1];
  [(_UIAnchoredClickHighlightPlatterView *)self setAnchorView:v5];
  view = [targetedPreview view];
  container = [target container];
  [container addSubview:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = container;
    _verticalScrollIndicator = [v8 _verticalScrollIndicator];
    [v8 bringSubviewToFront:_verticalScrollIndicator];

    _horizontalScrollIndicator = [v8 _horizontalScrollIndicator];
    [v8 bringSubviewToFront:_horizontalScrollIndicator];
  }

  [target center];
  [v5 setCenter:?];
  if ([targetedPreview _hasCustomTarget])
  {
    if ([targetedPreview _sourceViewIsInViewHierarchy])
    {
      container3 = view;
      [target center];
      v13 = v12;
      v15 = v14;
      container2 = [target container];
      [container3 convertPoint:container2 fromView:{v13, v15}];
      v18 = v17;
      v20 = v19;
LABEL_8:

      goto LABEL_11;
    }

    container3 = [target container];
    [target center];
    v18 = v28;
    v20 = v29;
  }

  else
  {
    container3 = view;
    parameters = [targetedPreview parameters];
    visiblePath = [parameters visiblePath];

    if (visiblePath)
    {
      container2 = [targetedPreview parameters];
      visiblePath2 = [container2 visiblePath];
      [visiblePath2 bounds];
      v18 = v25 + v24 * 0.5;
      v20 = v27 + v26 * 0.5;

      goto LABEL_8;
    }

    [container3 bounds];
    v18 = v31 + v30 * 0.5;
    v20 = v33 + v32 * 0.5;
  }

LABEL_11:
  overridePositionTrackingView = [targetedPreview overridePositionTrackingView];
  if (overridePositionTrackingView)
  {
    [container3 convertPoint:overridePositionTrackingView toView:{v18, v20}];
    v18 = v35;
    v20 = v36;
    v37 = overridePositionTrackingView;

    container3 = v37;
  }

  v38 = objc_opt_new();
  layer = [container3 layer];
  [v38 setSourceLayer:layer];

  [v38 setKeyPath:@"position"];
  [v38 setDuration:INFINITY];
  v40 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18, v20}];
  v47[0] = v40;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  [v38 setSourcePoints:v41];

  layer2 = [v5 layer];
  [layer2 addAnimation:v38 forKey:@"_UIClickHighlightMatchMoveAnimation"];

  if (target)
  {
    [target transform];
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
  anchorView = [(_UIAnchoredClickHighlightPlatterView *)self anchorView];
  [anchorView removeFromSuperview];
}

- (_UIMorphingView)anchorView
{
  WeakRetained = objc_loadWeakRetained(&self->_anchorView);

  return WeakRetained;
}

@end