@interface _SBSDFView
- (id)layer;
@end

@implementation _SBSDFView

- (id)layer
{
  v4.receiver = self;
  v4.super_class = _SBSDFView;
  layer = [(_SBSDFView *)&v4 layer];

  return layer;
}

@end