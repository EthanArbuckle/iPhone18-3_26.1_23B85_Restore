@interface PUIDPointerShapeFilterBackgroundView
- (CGRect)currentShapeFrame;
- (PUIDPointerShapeFilterBackgroundView)initWithShapeFrame:(CGRect)frame;
@end

@implementation PUIDPointerShapeFilterBackgroundView

- (PUIDPointerShapeFilterBackgroundView)initWithShapeFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15.receiver = self;
  v15.super_class = PUIDPointerShapeFilterBackgroundView;
  v7 = [(PUIDPointerShapeFilterBackgroundView *)&v15 init];
  if (v7)
  {
    v8 = objc_alloc_init(PUIDPointerShapeBackdropView);
    shapeMorphingBackdropView = v7->_shapeMorphingBackdropView;
    v7->_shapeMorphingBackdropView = v8;

    [(PUIDPointerShapeBackdropView *)v7->_shapeMorphingBackdropView setFrame:x, y, width, height];
    backdropLayer = [(PUIDPointerShapeBackdropView *)v7->_shapeMorphingBackdropView backdropLayer];
    [backdropLayer setAllowsInPlaceFiltering:1];

    v11 = [CAFilter filterWithType:kCAFilterColorMatrix];
    [v11 setName:@"colorMatrix"];
    layer = [(PUIDPointerShapeBackdropView *)v7->_shapeMorphingBackdropView layer];
    v16 = v11;
    v13 = [NSArray arrayWithObjects:&v16 count:1];
    [layer setFilters:v13];

    [(PUIDPointerShapeFilterBackgroundView *)v7 addSubview:v7->_shapeMorphingBackdropView];
  }

  return v7;
}

- (CGRect)currentShapeFrame
{
  [(PUIDPointerShapeBackdropView *)self->_shapeMorphingBackdropView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end