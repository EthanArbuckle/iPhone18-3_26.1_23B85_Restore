@interface SpatialPhoto.MetalUIView
- (CGRect)bounds;
- (CGRect)frame;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)didMoveToWindow;
- (void)drawInMTKView:(id)view;
- (void)layoutSubviews;
- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation SpatialPhoto.MetalUIView

- (CGRect)frame
{
  v2 = sub_25E6BD830(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  selfCopy = self;
  sub_25E6BD94C();
}

- (CGRect)bounds
{
  v2 = sub_25E6BD830(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  selfCopy = self;
  sub_25E6BD94C();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_25E6BD9C0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_25E6BDA80();
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  viewCopy = view;
  selfCopy = self;
  sub_25E6BDD90();
}

- (void)mtkView:(id)view drawableSizeWillChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  viewCopy = view;
  selfCopy = self;
  sub_25E6BFFA4(width, height);
}

- (void)drawInMTKView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_25E6C0280();
}

@end