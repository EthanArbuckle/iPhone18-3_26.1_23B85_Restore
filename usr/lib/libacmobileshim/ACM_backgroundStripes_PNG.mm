@interface ACM_backgroundStripes_PNG
- (id)image;
@end

@implementation ACM_backgroundStripes_PNG

- (id)image
{
  v2 = [MEMORY[0x29EDB8DA0] dataWithBytes:&ACM_backgroundStripes_bytes length:164];
  v3 = MEMORY[0x29EDC7AC8];

  return [v3 imageWithData:v2];
}

@end