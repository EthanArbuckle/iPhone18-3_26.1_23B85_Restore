@interface MTMaterialView(Reuse)
- (uint64_t)prepareForReuse;
@end

@implementation MTMaterialView(Reuse)

- (uint64_t)prepareForReuse
{
  [self setWeighting:1.0];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [self setTransform:v4];
  [self setAlpha:1.0];
  return [self setHidden:0];
}

@end