@interface REDataImage(REUIImage)
- (id)image;
@end

@implementation REDataImage(REUIImage)

- (id)image
{
  [a1 scale];
  v3 = v2;
  if (v2 < 1.0)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 scale];
    v3 = v5;
  }

  v6 = MEMORY[0x277D755B8];
  v7 = [a1 data];
  v8 = [v6 imageWithData:v7 scale:v3];

  return v8;
}

@end