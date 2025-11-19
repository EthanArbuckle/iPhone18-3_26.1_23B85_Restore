@interface _UIVisualEffectViewCornerMask
+ (_UIVisualEffectViewCornerMask)cornerMaskWithCornerRadii:(CACornerRadii *)a3 continuous:(BOOL)a4;
+ (_UIVisualEffectViewCornerMask)cornerMaskWithRadius:(double)a3 continuous:(BOOL)a4 cornerMask:(unint64_t)a5;
+ (id)imageCornerMaskWithImage:(id)a3 radius:(double)a4;
+ (void)_applyZeroMaskToLayer:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_UIVisualEffectViewCornerMask)init;
- (id)_clone;
- (id)cornerMaskAppliedToCorners:(unint64_t)a3;
- (id)cornerMaskEffectingEdges:(BOOL)a3;
- (void)_applyToLayer:(id)a3;
@end

@implementation _UIVisualEffectViewCornerMask

- (_UIVisualEffectViewCornerMask)init
{
  v8.receiver = self;
  v8.super_class = _UIVisualEffectViewCornerMask;
  result = [(_UIVisualEffectViewCornerMask *)&v8 init];
  if (result)
  {
    result->_imageCenter.size.height = 0.0;
    result->_appliedCorners = 15;
    __asm { FMOV            V0.2D, #0.5 }

    result->_imageCenter.origin = _Q0;
    result->_imageCenter.size.width = 0.0;
  }

  return result;
}

+ (_UIVisualEffectViewCornerMask)cornerMaskWithRadius:(double)a3 continuous:(BOOL)a4 cornerMask:(unint64_t)a5
{
  if (a3 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = a5;
    v9 = objc_alloc_init(a1);
    v9[16] = a3;
    *(v9 + 120) = a4;
    *(v9 + 6) = v6 & 0xF;
  }

  return v9;
}

+ (_UIVisualEffectViewCornerMask)cornerMaskWithCornerRadii:(CACornerRadii *)a3 continuous:(BOOL)a4
{
  if (CACornerRadiiEqualToRadii())
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(a1);
    v7[122] = 1;
    maxXMinY = a3->maxXMinY;
    minXMinY = a3->minXMinY;
    maxXMaxY = a3->maxXMaxY;
    *(v7 + 56) = a3->minXMaxY;
    *(v7 + 104) = minXMinY;
    *(v7 + 88) = maxXMinY;
    *(v7 + 72) = maxXMaxY;
    v7[120] = a4;
    *(v7 + 6) = 15;
  }

  return v7;
}

+ (id)imageCornerMaskWithImage:(id)a3 radius:(double)a4
{
  v7 = a3;
  v8 = v7;
  if (a4 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    v9 = [v7 images];

    if (v9)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:a1 file:@"UIVisualEffectView.m" lineNumber:150 description:@"Cannot use an animated image"];
    }

    [v8 size];
    v12 = v11;
    v13 = v10;
    if (v11 <= 0.0 || v10 <= 0.0)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:a1 file:@"UIVisualEffectView.m" lineNumber:152 description:@"Can't mask with an empty image"];
    }

    v14 = objc_alloc_init(a1);
    v14[16] = a4;
    *(v14 + 120) = 0;
    v15 = [v8 copy];
    v16 = *(v14 + 1);
    *(v14 + 1) = v15;

    if ([v8 _isResizable])
    {
      [v8 capInsets];
      v14[2] = v17 / v12;
      v14[3] = v18 / v13;
      v14[4] = 1.0 - (v17 + v19) / v12;
      v14[5] = 1.0 - (v18 + v20) / v13;
    }
  }

  return v14;
}

- (id)_clone
{
  v3 = objc_alloc_init(objc_opt_class());
  v3[16] = *&self->_radius;
  v4 = [(UIImage *)self->_image copy];
  v5 = v3[1];
  v3[1] = v4;

  size = self->_imageCenter.size;
  *(v3 + 1) = self->_imageCenter.origin;
  *(v3 + 2) = size;
  v3[6] = self->_appliedCorners;

  return v3;
}

- (id)cornerMaskAppliedToCorners:(unint64_t)a3
{
  v3 = a3 & 0xF;
  if (v3 == self->_appliedCorners)
  {
    v4 = self;
  }

  else
  {
    v4 = [(_UIVisualEffectViewCornerMask *)self _clone];
    v4->_appliedCorners = v3;
  }

  return v4;
}

- (id)cornerMaskEffectingEdges:(BOOL)a3
{
  if (self->_effectsEdges == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [(_UIVisualEffectViewCornerMask *)self _clone];
    v3->_effectsEdges = a3;
  }

  return v3;
}

- (void)_applyToLayer:(id)a3
{
  if (self->_useCornerRadii)
  {
    maxXMaxY = self->_cornerRadii.maxXMaxY;
    minXMaxY = self->_cornerRadii.minXMaxY;
    v13 = maxXMaxY;
    minXMinY = self->_cornerRadii.minXMinY;
    maxXMinY = self->_cornerRadii.maxXMinY;
    v15 = minXMinY;
    v7 = a3;
    [v7 setCornerRadii:&minXMaxY];
    v8 = MEMORY[0x1E69796E8];
    if (!self->_continuous)
    {
      v8 = MEMORY[0x1E69796E0];
    }

    [v7 setCornerCurve:{*v8, minXMaxY, v13, maxXMinY, v15}];
  }

  else
  {
    radius = self->_radius;
    v10 = a3;
    [v10 setCornerRadius:radius];
    v11 = MEMORY[0x1E69796E8];
    if (!self->_continuous)
    {
      v11 = MEMORY[0x1E69796E0];
    }

    [v10 setCornerCurve:*v11];
    [v10 setCornerContentsMasksEdges:self->_effectsEdges];
    [v10 setMaskedCorners:self->_appliedCorners];
    [v10 setCornerContents:{-[UIImage CGImage](self->_image, "CGImage")}];
    [v10 setCornerContentsCenter:{self->_imageCenter.origin.x, self->_imageCenter.origin.y, self->_imageCenter.size.width, self->_imageCenter.size.height}];
  }
}

+ (void)_applyZeroMaskToLayer:(id)a3
{
  v3 = a3;
  [v3 setCornerRadius:0.0];
  [v3 setCornerCurve:*MEMORY[0x1E69796E0]];
  [v3 setCornerContentsMasksEdges:0];
  [v3 setMaskedCorners:15];
  [v3 setCornerContents:0];
  [v3 setCornerContentsCenter:{0.5, 0.5, 0.0, 0.0}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self == v4)
      {
        v9 = 1;
        goto LABEL_16;
      }

      v5 = v4;
      v6 = v5;
      if (self->_radius != v5->_radius || self->_continuous != v5->_continuous || self->_appliedCorners != v5->_appliedCorners || self->_effectsEdges != v5->_effectsEdges)
      {
        goto LABEL_13;
      }

      image = self->_image;
      v8 = v6->_image;
      v9 = (image | v8) == 0;
      if (!image || !v8)
      {
        goto LABEL_14;
      }

      if ([(UIImage *)image isEqual:?])
      {
        v9 = CGRectEqualToRect(self->_imageCenter, v6->_imageCenter);
      }

      else
      {
LABEL_13:
        v9 = 0;
      }

LABEL_14:

      goto LABEL_16;
    }
  }

  v9 = 0;
LABEL_16:

  return v9;
}

@end