@interface ACM_AppleLogo_2x_PNG
- (id)image;
@end

@implementation ACM_AppleLogo_2x_PNG

- (id)image
{
  v2 = [MEMORY[0x29EDB8DA0] dataWithBytes:&ACM_AppleLogo_2x_bytes length:1121];
  v3 = MEMORY[0x29EDC7AC8];

  return [v3 imageWithData:v2];
}

@end