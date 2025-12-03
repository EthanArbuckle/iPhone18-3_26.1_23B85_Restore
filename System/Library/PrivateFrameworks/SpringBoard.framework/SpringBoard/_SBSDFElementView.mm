@interface _SBSDFElementView
- (id)layer;
@end

@implementation _SBSDFElementView

- (id)layer
{
  v4.receiver = self;
  v4.super_class = _SBSDFElementView;
  layer = [(_SBSDFElementView *)&v4 layer];

  return layer;
}

@end