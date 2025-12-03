@interface REDataImage(REUIImage)
- (id)image;
@end

@implementation REDataImage(REUIImage)

- (id)image
{
  [self scale];
  v3 = v2;
  if (v2 < 1.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v3 = v5;
  }

  v6 = MEMORY[0x277D755B8];
  data = [self data];
  v8 = [v6 imageWithData:data scale:v3];

  return v8;
}

@end