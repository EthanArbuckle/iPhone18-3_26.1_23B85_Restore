@interface UIKBBackdropView
- (UIKBBackdropView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)_generateCornerContentsImage:(unint64_t)image;
- (void)_applyGlassBackground:(BOOL)background;
- (void)_applyGlassBackgroundToSubview:(id)subview;
- (void)_setRenderConfig:(id)config;
- (void)_updateCornerRadiiIfNecessaryWithTopRadius:(double)radius useDeviceCorners:(BOOL)corners;
- (void)setImageForCorners:(id)corners;
- (void)transitionToStyle:(int64_t)style isSplit:(BOOL)split;
- (void)updateCorners:(unint64_t)corners;
- (void)updateCornersWithCornerRadii:(CACornerRadii *)radii;
@end

@implementation UIKBBackdropView

- (void)_updateCornerRadiiIfNecessaryWithTopRadius:(double)radius useDeviceCorners:(BOOL)corners
{
  selfCopy = self;
  sub_188DA52B8(corners, radius);
}

- (void)_applyGlassBackground:(BOOL)background
{
  selfCopy = self;
  sub_188EAA448(background);
}

- (void)_applyGlassBackgroundToSubview:(id)subview
{
  subviewCopy = subview;
  selfCopy = self;
  sub_188EAA6FC(subview);
}

- (UIKBBackdropView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = +[UIKBRenderConfig backdropStyleForStyle:quality:](UIKBRenderConfig, "backdropStyleForStyle:quality:", style, +[UIKBRenderFactory _graphicsQuality]);
  v19.receiver = self;
  v19.super_class = UIKBBackdropView;
  height = [(UIVisualEffectView *)&v19 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(UIVisualEffectView *)height _setGroupName:@"UIKBBackdropGroupName"];
    v12 = *MEMORY[0x1E69795C8];
    _captureGroup = [(UIVisualEffectView *)v11 _captureGroup];
    [_captureGroup setGroupNamespace:v12];

    _inheritedRenderConfig = [(UIView *)v11 _inheritedRenderConfig];
    v15 = _UIKBEffectsForStyle(v9, _inheritedRenderConfig);
    [(UIVisualEffectView *)v11 setBackgroundEffects:v15];

    v16 = +[UIColor systemBackgroundColor];
    v17 = [v16 colorWithAlphaComponent:0.1];
    [(UIView *)v11 setBackgroundColor:v17];
  }

  return v11;
}

- (void)transitionToStyle:(int64_t)style isSplit:(BOOL)split
{
  if (style != 3908)
  {
    goto LABEL_5;
  }

  v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v7 preferencesActions];
  if (![preferencesActions colorAdaptiveKeyboardBackdropEnabled] || _AXSEnhanceBackgroundContrastEnabled())
  {

    goto LABEL_5;
  }

  v10 = _AXDarkenSystemColors();

  if (v10)
  {
LABEL_5:
    if (!split)
    {
      _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
      v9 = _UIKBEffectsForStyle(style, _inheritedRenderConfig);
      [(UIVisualEffectView *)self setBackgroundEffects:v9];
    }

    return;
  }

  isAssistantBackground = [(UIKBBackdropView *)self isAssistantBackground];

  [(UIKBBackdropView *)self _applyGlassBackground:isAssistantBackground];
}

- (id)_generateCornerContentsImage:(unint64_t)image
{
  v4 = UIKBCornerRadius();
  v10 = *MEMORY[0x1E695EFF8];
  v5 = +[UIGraphicsImageRendererFormat preferredFormat];
  [v5 setPreferredRange:0x7FFFLL];
  v6 = [[UIGraphicsImageRenderer alloc] initWithSize:v5 format:v4 + v4, v4 + v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__UIKBBackdropView__generateCornerContentsImage___block_invoke;
  v9[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
  v11 = v4 + v4;
  v12 = v4 + v4;
  v13 = v4;
  imageCopy = image;
  v7 = [(UIGraphicsImageRenderer *)v6 imageWithActions:v9];

  return v7;
}

void __49__UIKBBackdropView__generateCornerContentsImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSaveGState(v3);
  UIKBAddRoundedRect(v3, *(a1 + 72), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  CGContextClosePath(v3);
  v4 = +[UIColor blackColor];
  CGContextSetFillColorWithColor(v3, [v4 CGColor]);

  CGContextFillPath(v3);

  CGContextRestoreGState(v3);
}

- (void)updateCorners:(unint64_t)corners
{
  cornersCopy = corners;
  v7 = [(UIKBBackdropView *)self _generateCornerContentsImage:?];
  v5 = [_UIVisualEffectViewCornerMask imageCornerMaskWithImage:v7 radius:UIKBCornerRadius()];
  v6 = [v5 cornerMaskAppliedToCorners:cornersCopy & 0xF];
  [(UIVisualEffectView *)self _setCornerMask:v6];
}

- (void)updateCornersWithCornerRadii:(CACornerRadii *)radii
{
  maxXMaxY = radii->maxXMaxY;
  v7[0] = radii->minXMaxY;
  v7[1] = maxXMaxY;
  minXMinY = radii->minXMinY;
  v7[2] = radii->maxXMinY;
  v7[3] = minXMinY;
  v6 = [_UIVisualEffectViewCornerMask cornerMaskWithCornerRadii:v7 continuous:1];
  [(UIVisualEffectView *)self _setCornerMask:v6];
}

- (void)setImageForCorners:(id)corners
{
  cornersCopy = corners;
  if (self->_imageForCorners != cornersCopy)
  {
    v9 = cornersCopy;
    objc_storeStrong(&self->_imageForCorners, corners);
    imageForCorners = self->_imageForCorners;
    [(UIVisualEffectView *)self _cornerRadius];
    v7 = [_UIVisualEffectViewCornerMask imageCornerMaskWithImage:imageForCorners radius:?];
    v8 = [v7 cornerMaskEffectingEdges:1];
    [(UIVisualEffectView *)self _setCornerMask:v8];

    cornersCopy = v9;
  }
}

- (void)_setRenderConfig:(id)config
{
  backdropStyle = [config backdropStyle];

  [(UIKBBackdropView *)self transitionToStyle:backdropStyle];
}

@end