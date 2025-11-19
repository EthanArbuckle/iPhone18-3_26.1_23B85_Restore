@interface REFileImage(REUIImage)
- (id)image;
@end

@implementation REFileImage(REUIImage)

- (id)image
{
  v1 = MEMORY[0x277D755B8];
  v2 = [a1 path];
  v3 = [v1 imageWithContentsOfFile:v2];

  return v3;
}

@end