@interface _UIVisualEffectBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)isTransparentFocusItem;
- (_UIVisualEffectViewBackdropCaptureGroup)captureGroup;
- (int64_t)renderMode;
- (void)_applyScaleHintAsRequested:(BOOL)a3;
- (void)applyIdentityFilterEffects;
- (void)applyRequestedFilterEffects;
- (void)removeFromCurrentCaptureGroup;
- (void)setCaptureGroup:(id)a3;
- (void)setRenderMode:(int64_t)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIVisualEffectBackdropView

- (void)applyRequestedFilterEffects
{
  v3.receiver = self;
  v3.super_class = _UIVisualEffectBackdropView;
  [(_UIVisualEffectSubview *)&v3 applyRequestedFilterEffects];
  [(_UIVisualEffectBackdropView *)self _applyScaleHintAsRequested:1];
}

- (_UIVisualEffectViewBackdropCaptureGroup)captureGroup
{
  captureGroup = self->_captureGroup;
  if (!captureGroup)
  {
    v4 = [[_UIVisualEffectViewBackdropCaptureGroup alloc] initWithBackdrop:self];
    v5 = self->_captureGroup;
    self->_captureGroup = v4;

    captureGroup = self->_captureGroup;
  }

  return captureGroup;
}

- (BOOL)isTransparentFocusItem
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 supportsViewTransparency];

  if (v4)
  {
    return [(_UIVisualEffectBackdropView *)self renderMode]!= 2;
  }

  v6.receiver = self;
  v6.super_class = _UIVisualEffectBackdropView;
  return [(UIView *)&v6 isTransparentFocusItem];
}

- (int64_t)renderMode
{
  v2 = [(_UIVisualEffectBackdropView *)self backdropLayer];
  if ([v2 isEnabled])
  {
    if ([v2 captureOnly])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIVisualEffectBackdropView;
  if ([(_UIVisualEffectSubview *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [@"scale" isEqualToString:v4];
  }

  return v5;
}

- (void)setRenderMode:(int64_t)a3
{
  v4 = [(_UIVisualEffectBackdropView *)self backdropLayer];
  [v4 setEnabled:a3 != 0];
  [v4 setCaptureOnly:a3 == 1];
}

- (void)setCaptureGroup:(id)a3
{
  v5 = a3;
  captureGroup = self->_captureGroup;
  if (captureGroup != v5)
  {
    v7 = v5;
    [(_UIVisualEffectViewBackdropCaptureGroup *)captureGroup removeBackdrop:self update:v5 == 0];
    objc_storeStrong(&self->_captureGroup, a3);
    [(_UIVisualEffectViewBackdropCaptureGroup *)self->_captureGroup addBackdrop:self update:1];
    v5 = v7;
  }
}

- (void)removeFromCurrentCaptureGroup
{
  captureGroup = self->_captureGroup;
  if (captureGroup)
  {
    [(_UIVisualEffectViewBackdropCaptureGroup *)captureGroup removeBackdrop:self update:0];
    v4 = self->_captureGroup;
    self->_captureGroup = 0;

    v5 = [(_UIVisualEffectBackdropView *)self backdropLayer];
    [v5 setGroupName:0];
  }
}

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIVisualEffectBackdropView;
  [(_UIVisualEffectSubview *)&v9 willMoveToWindow:v5];
  if (v5)
  {
    v3 = [v5 screen];
    [v3 scale];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = [(_UIVisualEffectBackdropView *)self backdropLayer];
  [v8 setRasterizationScale:v7];

  if (v5)
  {
  }
}

- (void)_applyScaleHintAsRequested:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(_UIVisualEffectSubview *)self filters];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * i) scaleHintAsRequested:v3];
        if (v9 < v11)
        {
          v9 = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v12 = 1.0;
  if (v9 != 0.0)
  {
    v12 = v9;
  }

  [(_UIVisualEffectViewBackdropCaptureGroup *)self->_captureGroup applyScaleHint:v12];
}

- (void)applyIdentityFilterEffects
{
  v3.receiver = self;
  v3.super_class = _UIVisualEffectBackdropView;
  [(_UIVisualEffectSubview *)&v3 applyIdentityFilterEffects];
  [(_UIVisualEffectBackdropView *)self _applyScaleHintAsRequested:0];
}

@end