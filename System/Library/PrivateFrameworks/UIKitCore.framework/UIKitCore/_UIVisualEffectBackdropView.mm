@interface _UIVisualEffectBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)isTransparentFocusItem;
- (_UIVisualEffectViewBackdropCaptureGroup)captureGroup;
- (int64_t)renderMode;
- (void)_applyScaleHintAsRequested:(BOOL)requested;
- (void)applyIdentityFilterEffects;
- (void)applyRequestedFilterEffects;
- (void)removeFromCurrentCaptureGroup;
- (void)setCaptureGroup:(id)group;
- (void)setRenderMode:(int64_t)mode;
- (void)willMoveToWindow:(id)window;
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
  _focusBehavior = [(UIView *)self _focusBehavior];
  supportsViewTransparency = [_focusBehavior supportsViewTransparency];

  if (supportsViewTransparency)
  {
    return [(_UIVisualEffectBackdropView *)self renderMode]!= 2;
  }

  v6.receiver = self;
  v6.super_class = _UIVisualEffectBackdropView;
  return [(UIView *)&v6 isTransparentFocusItem];
}

- (int64_t)renderMode
{
  backdropLayer = [(_UIVisualEffectBackdropView *)self backdropLayer];
  if ([backdropLayer isEnabled])
  {
    if ([backdropLayer captureOnly])
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _UIVisualEffectBackdropView;
  if ([(_UIVisualEffectSubview *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [@"scale" isEqualToString:keyCopy];
  }

  return v5;
}

- (void)setRenderMode:(int64_t)mode
{
  backdropLayer = [(_UIVisualEffectBackdropView *)self backdropLayer];
  [backdropLayer setEnabled:mode != 0];
  [backdropLayer setCaptureOnly:mode == 1];
}

- (void)setCaptureGroup:(id)group
{
  groupCopy = group;
  captureGroup = self->_captureGroup;
  if (captureGroup != groupCopy)
  {
    v7 = groupCopy;
    [(_UIVisualEffectViewBackdropCaptureGroup *)captureGroup removeBackdrop:self update:groupCopy == 0];
    objc_storeStrong(&self->_captureGroup, group);
    [(_UIVisualEffectViewBackdropCaptureGroup *)self->_captureGroup addBackdrop:self update:1];
    groupCopy = v7;
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

    backdropLayer = [(_UIVisualEffectBackdropView *)self backdropLayer];
    [backdropLayer setGroupName:0];
  }
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = _UIVisualEffectBackdropView;
  [(_UIVisualEffectSubview *)&v9 willMoveToWindow:windowCopy];
  if (windowCopy)
  {
    screen = [windowCopy screen];
    [screen scale];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  backdropLayer = [(_UIVisualEffectBackdropView *)self backdropLayer];
  [backdropLayer setRasterizationScale:v7];

  if (windowCopy)
  {
  }
}

- (void)_applyScaleHintAsRequested:(BOOL)requested
{
  requestedCopy = requested;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  filters = [(_UIVisualEffectSubview *)self filters];
  v6 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(filters);
        }

        [*(*(&v13 + 1) + 8 * i) scaleHintAsRequested:requestedCopy];
        if (v9 < v11)
        {
          v9 = v11;
        }
      }

      v7 = [filters countByEnumeratingWithState:&v13 objects:v17 count:16];
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