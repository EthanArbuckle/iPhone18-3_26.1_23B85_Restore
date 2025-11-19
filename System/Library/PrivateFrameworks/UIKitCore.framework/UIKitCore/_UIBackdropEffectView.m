@interface _UIBackdropEffectView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_UIBackdropEffectView)init;
- (id)valueForUndefinedKey:(id)a3;
- (void)setContentScaleFactor:(double)a3;
- (void)setZoom:(double)a3;
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
    v4 = [(_UIBackdropEffectView *)v3 backdropLayer];
    [v4 setEnabled:1];

    v5 = v3;
  }

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.gaussianBlur.inputQuality") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.colorSaturate.inputAmount") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.colorMatrix.inputColorMatrix") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"enabled") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"meshTransform"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UIBackdropEffectView;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  NSLog(&cfstr_WarningCalling.isa, v4);
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = &unk_1EFE2F470;
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"filters.gaussianBlur.inputQuality"])
  {
    v5 = @"default";
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"filters.colorSaturate.inputAmount"])
  {
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
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
    if ([v4 isEqualToString:@"enabled"])
    {
LABEL_6:
      v5 = &unk_1EFE2F488;
      goto LABEL_12;
    }

    v8.receiver = self;
    v8.super_class = _UIBackdropEffectView;
    v6 = [(_UIBackdropEffectView *)&v8 valueForUndefinedKey:v4];
  }

  v5 = v6;
LABEL_12:

  return v5;
}

- (void)setZoom:(double)a3
{
  if (self->_zoom != a3)
  {
    v5 = MeshTransformForZoom(a3);
    v6 = [(_UIBackdropEffectView *)self backdropLayer];
    [v6 setMeshTransform:v5];

    self->_zoom = a3;
  }
}

- (void)setContentScaleFactor:(double)a3
{
  v5.receiver = self;
  v5.super_class = _UIBackdropEffectView;
  [(UIView *)&v5 setContentScaleFactor:a3];
  v4 = [(UIView *)self layer];
  [v4 setRasterizationScale:1.0];
}

@end