@interface SpatialPhoto.MetalUIView
- (CGRect)bounds;
- (CGRect)frame;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)didMoveToWindow;
- (void)drawInMTKView:(id)a3;
- (void)layoutSubviews;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
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

- (void)setFrame:(CGRect)a3
{
  v3 = self;
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

- (void)setBounds:(CGRect)a3
{
  v3 = self;
  sub_25E6BD94C();
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_25E6BD9C0();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_25E6BDA80();
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_25E6BDD90();
}

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  sub_25E6BFFA4(width, height);
}

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25E6C0280();
}

@end