@interface REFileImage(REUIImage)
- (id)image;
@end

@implementation REFileImage(REUIImage)

- (id)image
{
  v1 = MEMORY[0x277D755B8];
  path = [self path];
  v3 = [v1 imageWithContentsOfFile:path];

  return v3;
}

@end