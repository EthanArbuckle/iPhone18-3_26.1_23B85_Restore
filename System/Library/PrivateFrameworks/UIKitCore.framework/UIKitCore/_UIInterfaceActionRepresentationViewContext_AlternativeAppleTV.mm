@interface _UIInterfaceActionRepresentationViewContext_AlternativeAppleTV
- (CATransform3D)_enlargedTransformForSize:(SEL)size pressed:(CGSize)pressed;
@end

@implementation _UIInterfaceActionRepresentationViewContext_AlternativeAppleTV

- (CATransform3D)_enlargedTransformForSize:(SEL)size pressed:(CGSize)pressed
{
  if (pressed.width != *MEMORY[0x1E695F060] || pressed.height != *(MEMORY[0x1E695F060] + 8))
  {
    return CATransform3DMakeScale(retstr, 0.95, 0.95, 1.0);
  }

  v6 = MEMORY[0x1E69792E8];
  v7 = *(MEMORY[0x1E69792E8] + 80);
  *&retstr->m31 = *(MEMORY[0x1E69792E8] + 64);
  *&retstr->m33 = v7;
  v8 = v6[7];
  *&retstr->m41 = v6[6];
  *&retstr->m43 = v8;
  v9 = v6[1];
  *&retstr->m11 = *v6;
  *&retstr->m13 = v9;
  v10 = v6[3];
  *&retstr->m21 = v6[2];
  *&retstr->m23 = v10;
  return self;
}

@end