@interface ACM_AppleLogo_3x_PNG
- (id)image;
@end

@implementation ACM_AppleLogo_3x_PNG

- (id)image
{
  v2 = [MEMORY[0x29EDB8DA0] dataWithBytes:&ACM_AppleLogo_3x_bytes length:2629];
  v3 = MEMORY[0x29EDC7AC8];

  return [v3 imageWithData:v2];
}

@end