@interface _UIBackdropEffectView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_UIBackdropEffectView)init;
- (id)valueForUndefinedKey:(id)key;
- (void)setContentScaleFactor:(double)factor;
- (void)setZoom:(double)zoom;
@end

@implementation _UIBackdropEffectView

- (_UIBackdropEffectView)init
{
  v7.receiver = self;
  v7.super_class = _UIBackdropEffectView;
  v2 = [(UIView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 setAutoresizingMask:18];
    [(UIView *)v3 setOpaque:0];
    [(UIView *)v3 setUserInteractionEnabled:0];
    backdropLayer = [(_UIBackdropEffectView *)v3 backdropLayer];
    [backdropLayer setEnabled:1];

    v5 = v3;
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"filters.gaussianBlur.inputQuality") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"filters.colorSaturate.inputAmount") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"filters.colorMatrix.inputColorMatrix") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"enabled") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"meshTransform"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIBackdropEffectView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  NSLog(&cfstr_WarningCalling.isa, keyCopy);
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = &unk_1EFE2F470;
    goto LABEL_12;
  }

  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputQuality"])
  {
    v5 = @"default";
    goto LABEL_12;
  }

  if ([keyCopy isEqualToString:@"filters.colorSaturate.inputAmount"])
  {
    goto LABEL_6;
  }

  if ([keyCopy isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v9 = 1065353216;
    v11 = 0;
    v10 = 0;
    v12 = 0x3F80000000000000;
    v14 = 0;
    v13 = 0;
    v15 = 0x3F80000000000000;
    v17 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 1065353216;
    v6 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v9];
  }

  else
  {
    if ([keyCopy isEqualToString:@"enabled"])
    {
LABEL_6:
      v5 = &unk_1EFE2F488;
      goto LABEL_12;
    }

    v8.receiver = self;
    v8.super_class = _UIBackdropEffectView;
    v6 = [(_UIBackdropEffectView *)&v8 valueForUndefinedKey:keyCopy];
  }

  v5 = v6;
LABEL_12:

  return v5;
}

- (void)setZoom:(double)zoom
{
  if (self->_zoom != zoom)
  {
    v5 = MeshTransformForZoom(zoom);
    backdropLayer = [(_UIBackdropEffectView *)self backdropLayer];
    [backdropLayer setMeshTransform:v5];

    self->_zoom = zoom;
  }
}

- (void)setContentScaleFactor:(double)factor
{
  v5.receiver = self;
  v5.super_class = _UIBackdropEffectView;
  [(UIView *)&v5 setContentScaleFactor:factor];
  layer = [(UIView *)self layer];
  [layer setRasterizationScale:1.0];
}

@end