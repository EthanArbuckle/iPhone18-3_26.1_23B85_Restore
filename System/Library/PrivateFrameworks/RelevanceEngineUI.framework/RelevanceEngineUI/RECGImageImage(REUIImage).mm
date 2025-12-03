@interface RECGImageImage(REUIImage)
- (uint64_t)image;
@end

@implementation RECGImageImage(REUIImage)

- (uint64_t)image
{
  v2 = MEMORY[0x277D755B8];
  cGImage = [self CGImage];
  [self scale];

  return [v2 imageWithCGImage:cGImage scale:0 orientation:?];
}

@end