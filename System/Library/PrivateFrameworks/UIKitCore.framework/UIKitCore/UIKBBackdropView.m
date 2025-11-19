@interface UIKBBackdropView
- (UIKBBackdropView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)_generateCornerContentsImage:(unint64_t)a3;
- (void)_applyGlassBackground:(BOOL)a3;
- (void)_applyGlassBackgroundToSubview:(id)a3;
- (void)_setRenderConfig:(id)a3;
- (void)_updateCornerRadiiIfNecessaryWithTopRadius:(double)a3 useDeviceCorners:(BOOL)a4;
- (void)setImageForCorners:(id)a3;
- (void)transitionToStyle:(int64_t)a3 isSplit:(BOOL)a4;
- (void)updateCorners:(unint64_t)a3;
- (void)updateCornersWithCornerRadii:(CACornerRadii *)a3;
@end

@implementation UIKBBackdropView

- (void)_updateCornerRadiiIfNecessaryWithTopRadius:(double)a3 useDeviceCorners:(BOOL)a4
{
  v6 = self;
  sub_188DA52B8(a4, a3);
}

- (void)_applyGlassBackground:(BOOL)a3
{
  v4 = self;
  sub_188EAA448(a3);
}

- (void)_applyGlassBackgroundToSubview:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188EAA6FC(a3);
}

- (UIKBBackdropView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = +[UIKBRenderConfig backdropStyleForStyle:quality:](UIKBRenderConfig, "backdropStyleForStyle:quality:", a4, +[UIKBRenderFactory _graphicsQuality]);
  v19.receiver = self;
  v19.super_class = UIKBBackdropView;
  v10 = [(UIVisualEffectView *)&v19 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(UIVisualEffectView *)v10 _setGroupName:@"UIKBBackdropGroupName"];
    v12 = *MEMORY[0x1E69795C8];
    v13 = [(UIVisualEffectView *)v11 _captureGroup];
    [v13 setGroupNamespace:v12];

    v14 = [(UIView *)v11 _inheritedRenderConfig];
    v15 = _UIKBEffectsForStyle(v9, v14);
    [(UIVisualEffectView *)v11 setBackgroundEffects:v15];

    v16 = +[UIColor systemBackgroundColor];
    v17 = [v16 colorWithAlphaComponent:0.1];
    [(UIView *)v11 setBackgroundColor:v17];
  }

  return v11;
}

- (void)transitionToStyle:(int64_t)a3 isSplit:(BOOL)a4
{
  if (a3 != 3908)
  {
    goto LABEL_5;
  }

  v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v8 = [v7 preferencesActions];
  if (![v8 colorAdaptiveKeyboardBackdropEnabled] || _AXSEnhanceBackgroundContrastEnabled())
  {

    goto LABEL_5;
  }

  v10 = _AXDarkenSystemColors();

  if (v10)
  {
LABEL_5:
    if (!a4)
    {
      v12 = [(UIView *)self _inheritedRenderConfig];
      v9 = _UIKBEffectsForStyle(a3, v12);
      [(UIVisualEffectView *)self setBackgroundEffects:v9];
    }

    return;
  }

  v11 = [(UIKBBackdropView *)self isAssistantBackground];

  [(UIKBBackdropView *)self _applyGlassBackground:v11];
}

- (id)_generateCornerContentsImage:(unint64_t)a3
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
  v14 = a3;
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

- (void)updateCorners:(unint64_t)a3
{
  v3 = a3;
  v7 = [(UIKBBackdropView *)self _generateCornerContentsImage:?];
  v5 = [_UIVisualEffectViewCornerMask imageCornerMaskWithImage:v7 radius:UIKBCornerRadius()];
  v6 = [v5 cornerMaskAppliedToCorners:v3 & 0xF];
  [(UIVisualEffectView *)self _setCornerMask:v6];
}

- (void)updateCornersWithCornerRadii:(CACornerRadii *)a3
{
  maxXMaxY = a3->maxXMaxY;
  v7[0] = a3->minXMaxY;
  v7[1] = maxXMaxY;
  minXMinY = a3->minXMinY;
  v7[2] = a3->maxXMinY;
  v7[3] = minXMinY;
  v6 = [_UIVisualEffectViewCornerMask cornerMaskWithCornerRadii:v7 continuous:1];
  [(UIVisualEffectView *)self _setCornerMask:v6];
}

- (void)setImageForCorners:(id)a3
{
  v5 = a3;
  if (self->_imageForCorners != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_imageForCorners, a3);
    imageForCorners = self->_imageForCorners;
    [(UIVisualEffectView *)self _cornerRadius];
    v7 = [_UIVisualEffectViewCornerMask imageCornerMaskWithImage:imageForCorners radius:?];
    v8 = [v7 cornerMaskEffectingEdges:1];
    [(UIVisualEffectView *)self _setCornerMask:v8];

    v5 = v9;
  }
}

- (void)_setRenderConfig:(id)a3
{
  v4 = [a3 backdropStyle];

  [(UIKBBackdropView *)self transitionToStyle:v4];
}

@end