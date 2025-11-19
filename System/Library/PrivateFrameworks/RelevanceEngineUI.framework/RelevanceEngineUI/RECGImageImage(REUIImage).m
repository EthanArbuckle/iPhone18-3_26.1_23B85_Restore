@interface RECGImageImage(REUIImage)
- (uint64_t)image;
@end

@implementation RECGImageImage(REUIImage)

- (uint64_t)image
{
  v2 = MEMORY[0x277D755B8];
  v3 = [a1 CGImage];
  [a1 scale];

  return [v2 imageWithCGImage:v3 scale:0 orientation:?];
}

@end