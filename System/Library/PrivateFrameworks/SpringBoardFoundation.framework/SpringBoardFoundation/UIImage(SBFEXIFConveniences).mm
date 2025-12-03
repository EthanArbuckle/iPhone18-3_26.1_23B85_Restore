@interface UIImage(SBFEXIFConveniences)
- (uint64_t)sbf_EXIFOrientation;
@end

@implementation UIImage(SBFEXIFConveniences)

- (uint64_t)sbf_EXIFOrientation
{
  imageOrientation = [self imageOrientation];

  return MEMORY[0x1EEE4E0F0](imageOrientation);
}

@end