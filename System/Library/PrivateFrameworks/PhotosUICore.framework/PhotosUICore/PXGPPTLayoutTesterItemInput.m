@interface PXGPPTLayoutTesterItemInput
+ (id)createItemInputsForCount:(int64_t)a3;
- (CGAffineTransform)transform;
- (CGPoint)positionOffset;
- (CGRect)acceptableCropRect;
- (CGRect)preferredCropRect;
- (CGSize)size;
@end

@implementation PXGPPTLayoutTesterItemInput

- (CGPoint)positionOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (CGRect)acceptableCropRect
{
  x = self->_acceptableCropRect.origin.x;
  y = self->_acceptableCropRect.origin.y;
  width = self->_acceptableCropRect.size.width;
  height = self->_acceptableCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)preferredCropRect
{
  x = self->_preferredCropRect.origin.x;
  y = self->_preferredCropRect.origin.y;
  width = self->_preferredCropRect.size.width;
  height = self->_preferredCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)createItemInputsForCount:(int64_t)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
  v5 = time(0);
  srand48(v5);
  if (v3 >= 1)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v13 = _Q0;
    v14 = vdupq_n_s64(0x4069000000000000uLL);
    do
    {
      v11 = objc_alloc_init(PXGPPTLayoutTesterItemInput);
      v11->_size = v14;
      v11->_weight = drand48();
      v11->_preferredCropRect.origin.x = 0.0;
      v11->_preferredCropRect.origin.y = 0.0;
      v11->_preferredCropRect.size = v13;
      v11->_acceptableCropRect.origin.x = 0.0;
      v11->_acceptableCropRect.origin.y = 0.0;
      v11->_acceptableCropRect.size = v13;
      [v4 addObject:v11];

      --v3;
    }

    while (v3);
  }

  return v4;
}

@end