@interface SBSDFElementView
- (id)layer;
@end

@implementation SBSDFElementView

- (id)layer
{
  v4.receiver = self;
  v4.super_class = SBSDFElementView;
  layer = [(SBSDFElementView *)&v4 layer];

  return layer;
}

@end