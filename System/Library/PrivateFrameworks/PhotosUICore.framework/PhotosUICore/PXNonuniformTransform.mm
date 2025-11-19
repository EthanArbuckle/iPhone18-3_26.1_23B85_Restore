@interface PXNonuniformTransform
+ (id)horizontallyDominantTransformWithSourceRect:(CGRect)a3 targetRect:(CGRect)a4 coordinateSpace:(id)a5 minimumScale:(double)a6 maximumScale:(double)a7;
+ (id)identityTransform;
- (CGAffineTransform)affineTransformForRect:(SEL)a3 inCoordinateSpace:(CGRect)a4;
- (PXNonuniformTransform)init;
- (double)_adjustedZoomScale:(double)result;
- (id)inverseTransform;
@end

@implementation PXNonuniformTransform

- (id)inverseTransform
{
  v3 = objc_alloc_init(PXNonuniformTransform);
  origin = self->_targetRect.origin;
  v3->_sourceRect.size = self->_targetRect.size;
  v3->_sourceRect.origin = origin;
  size = self->_sourceRect.size;
  v3->_targetRect.origin = self->_sourceRect.origin;
  v3->_targetRect.size = size;
  objc_storeStrong(&v3->_coordinateSpace, self->_coordinateSpace);
  v3->_minimumScale = 1.0 / self->_maximumScale;
  v3->_maximumScale = 1.0 / self->_minimumScale;

  return v3;
}

- (double)_adjustedZoomScale:(double)result
{
  if (self->_minimumScale > result)
  {
    result = self->_minimumScale;
  }

  if (result >= self->_maximumScale)
  {
    return self->_maximumScale;
  }

  return result;
}

- (CGAffineTransform)affineTransformForRect:(SEL)a3 inCoordinateSpace:(CGRect)a4
{
  v6 = MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
  if (*&self[1].d)
  {
    v8 = a5;
    PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  }

  return self;
}

- (PXNonuniformTransform)init
{
  v8.receiver = self;
  v8.super_class = PXNonuniformTransform;
  result = [(PXNonuniformTransform *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_minimumScale = _Q0;
  }

  return result;
}

+ (id)horizontallyDominantTransformWithSourceRect:(CGRect)a3 targetRect:(CGRect)a4 coordinateSpace:(id)a5 minimumScale:(double)a6 maximumScale:(double)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v14 = a5;
  v15 = objc_alloc_init(PXNonuniformTransform);
  v15->_sourceRect.origin.x = v13;
  v15->_sourceRect.origin.y = v12;
  v15->_sourceRect.size.width = v11;
  v15->_sourceRect.size.height = v10;
  v15->_targetRect.origin.x = x;
  v15->_targetRect.origin.y = y;
  v15->_targetRect.size.width = width;
  v15->_targetRect.size.height = height;
  coordinateSpace = v15->_coordinateSpace;
  v15->_coordinateSpace = v14;

  v15->_minimumScale = a6;
  v15->_maximumScale = a7;

  return v15;
}

+ (id)identityTransform
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXNonuniformTransform_identityTransform__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (identityTransform_onceToken != -1)
  {
    dispatch_once(&identityTransform_onceToken, block);
  }

  v2 = identityTransform_identityTransform;

  return v2;
}

void __42__PXNonuniformTransform_identityTransform__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = identityTransform_identityTransform;
  identityTransform_identityTransform = v1;
}

@end