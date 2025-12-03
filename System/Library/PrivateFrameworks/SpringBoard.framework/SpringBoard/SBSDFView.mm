@interface SBSDFView
- (id)layer;
@end

@implementation SBSDFView

- (id)layer
{
  v4.receiver = self;
  v4.super_class = SBSDFView;
  layer = [(SBSDFView *)&v4 layer];

  return layer;
}

@end