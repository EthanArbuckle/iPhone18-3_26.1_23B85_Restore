@interface ACM_greyButton_iPad_PNG
- (id)image;
@end

@implementation ACM_greyButton_iPad_PNG

- (id)image
{
  v2 = [MEMORY[0x29EDB8DA0] dataWithBytes:&ACM_greyButton_iPad_bytes length:742];
  v3 = MEMORY[0x29EDC7AC8];

  return [v3 imageWithData:v2];
}

@end