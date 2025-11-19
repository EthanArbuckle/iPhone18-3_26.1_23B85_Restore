@interface UIImage(SBFEXIFConveniences)
- (uint64_t)sbf_EXIFOrientation;
@end

@implementation UIImage(SBFEXIFConveniences)

- (uint64_t)sbf_EXIFOrientation
{
  v1 = [a1 imageOrientation];

  return MEMORY[0x1EEE4E0F0](v1);
}

@end