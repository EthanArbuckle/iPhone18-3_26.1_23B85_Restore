@interface RENamedImage(REUIImage)
- (id)image;
@end

@implementation RENamedImage(REUIImage)

- (id)image
{
  v2 = MEMORY[0x277D755B8];
  name = [self name];
  bundle = [self bundle];
  v5 = [v2 imageNamed:name inBundle:bundle compatibleWithTraitCollection:0];

  return v5;
}

@end