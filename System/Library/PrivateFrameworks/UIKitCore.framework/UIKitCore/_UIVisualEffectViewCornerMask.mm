@interface _UIVisualEffectViewCornerMask
+ (_UIVisualEffectViewCornerMask)cornerMaskWithCornerRadii:(CACornerRadii *)radii continuous:(BOOL)continuous;
+ (_UIVisualEffectViewCornerMask)cornerMaskWithRadius:(double)radius continuous:(BOOL)continuous cornerMask:(unint64_t)mask;
+ (id)imageCornerMaskWithImage:(id)image radius:(double)radius;
+ (void)_applyZeroMaskToLayer:(id)layer;
- (BOOL)isEqual:(id)equal;
- (_UIVisualEffectViewCornerMask)init;
- (id)_clone;
- (id)cornerMaskAppliedToCorners:(unint64_t)corners;
- (id)cornerMaskEffectingEdges:(BOOL)edges;
- (void)_applyToLayer:(id)layer;
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

+ (_UIVisualEffectViewCornerMask)cornerMaskWithRadius:(double)radius continuous:(BOOL)continuous cornerMask:(unint64_t)mask
{
  if (radius <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    maskCopy = mask;
    v9 = objc_alloc_init(self);
    v9[16] = radius;
    *(v9 + 120) = continuous;
    *(v9 + 6) = maskCopy & 0xF;
  }

  return v9;
}

+ (_UIVisualEffectViewCornerMask)cornerMaskWithCornerRadii:(CACornerRadii *)radii continuous:(BOOL)continuous
{
  if (CACornerRadiiEqualToRadii())
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(self);
    v7[122] = 1;
    maxXMinY = radii->maxXMinY;
    minXMinY = radii->minXMinY;
    maxXMaxY = radii->maxXMaxY;
    *(v7 + 56) = radii->minXMaxY;
    *(v7 + 104) = minXMinY;
    *(v7 + 88) = maxXMinY;
    *(v7 + 72) = maxXMaxY;
    v7[120] = continuous;
    *(v7 + 6) = 15;
  }

  return v7;
}

+ (id)imageCornerMaskWithImage:(id)image radius:(double)radius
{
  imageCopy = image;
  v8 = imageCopy;
  if (radius <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    images = [imageCopy images];

    if (images)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:150 description:@"Cannot use an animated image"];
    }

    [v8 size];
    v12 = v11;
    v13 = v10;
    if (v11 <= 0.0 || v10 <= 0.0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIVisualEffectView.m" lineNumber:152 description:@"Can't mask with an empty image"];
    }

    v14 = objc_alloc_init(self);
    v14[16] = radius;
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

- (id)cornerMaskAppliedToCorners:(unint64_t)corners
{
  v3 = corners & 0xF;
  if (v3 == self->_appliedCorners)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(_UIVisualEffectViewCornerMask *)self _clone];
    selfCopy->_appliedCorners = v3;
  }

  return selfCopy;
}

- (id)cornerMaskEffectingEdges:(BOOL)edges
{
  if (self->_effectsEdges == edges)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(_UIVisualEffectViewCornerMask *)self _clone];
    selfCopy->_effectsEdges = edges;
  }

  return selfCopy;
}

- (void)_applyToLayer:(id)layer
{
  if (self->_useCornerRadii)
  {
    maxXMaxY = self->_cornerRadii.maxXMaxY;
    minXMaxY = self->_cornerRadii.minXMaxY;
    v13 = maxXMaxY;
    minXMinY = self->_cornerRadii.minXMinY;
    maxXMinY = self->_cornerRadii.maxXMinY;
    v15 = minXMinY;
    layerCopy = layer;
    [layerCopy setCornerRadii:&minXMaxY];
    v8 = MEMORY[0x1E69796E8];
    if (!self->_continuous)
    {
      v8 = MEMORY[0x1E69796E0];
    }

    [layerCopy setCornerCurve:{*v8, minXMaxY, v13, maxXMinY, v15}];
  }

  else
  {
    radius = self->_radius;
    layerCopy2 = layer;
    [layerCopy2 setCornerRadius:radius];
    v11 = MEMORY[0x1E69796E8];
    if (!self->_continuous)
    {
      v11 = MEMORY[0x1E69796E0];
    }

    [layerCopy2 setCornerCurve:*v11];
    [layerCopy2 setCornerContentsMasksEdges:self->_effectsEdges];
    [layerCopy2 setMaskedCorners:self->_appliedCorners];
    [layerCopy2 setCornerContents:{-[UIImage CGImage](self->_image, "CGImage")}];
    [layerCopy2 setCornerContentsCenter:{self->_imageCenter.origin.x, self->_imageCenter.origin.y, self->_imageCenter.size.width, self->_imageCenter.size.height}];
  }
}

+ (void)_applyZeroMaskToLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy setCornerRadius:0.0];
  [layerCopy setCornerCurve:*MEMORY[0x1E69796E0]];
  [layerCopy setCornerContentsMasksEdges:0];
  [layerCopy setMaskedCorners:15];
  [layerCopy setCornerContents:0];
  [layerCopy setCornerContentsCenter:{0.5, 0.5, 0.0, 0.0}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (self == equalCopy)
      {
        v9 = 1;
        goto LABEL_16;
      }

      v5 = equalCopy;
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