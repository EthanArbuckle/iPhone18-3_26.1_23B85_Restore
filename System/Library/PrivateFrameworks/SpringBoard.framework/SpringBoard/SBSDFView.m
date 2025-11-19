@interface SBSDFView
- (id)layer;
@end

@implementation SBSDFView

- (id)layer
{
  v4.receiver = self;
  v4.super_class = SBSDFView;
  v2 = [(SBSDFView *)&v4 layer];

  return v2;
}

@end