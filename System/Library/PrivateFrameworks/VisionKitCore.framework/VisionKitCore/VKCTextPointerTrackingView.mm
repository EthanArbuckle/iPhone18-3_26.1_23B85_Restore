@interface VKCTextPointerTrackingView
- (VKCTextPointerTrackingView)initWithQuad:(id)quad;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
@end

@implementation VKCTextPointerTrackingView

- (VKCTextPointerTrackingView)initWithQuad:(id)quad
{
  quadCopy = quad;
  v6 = quadCopy;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  if (quadCopy)
  {
    [quadCopy rotationTransformAndBoundingBox:&v20];
    v8 = *(&v20 + 1);
    v7 = *&v20;
    v10 = *(&v21 + 1);
    v9 = *&v21;
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
  }

  v16.receiver = self;
  v16.super_class = VKCTextPointerTrackingView;
  v11 = [(VKCTextPointerTrackingView *)&v16 initWithFrame:v7, v8, v9, v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_quad, quad);
    v15[0] = v17;
    v15[1] = v18;
    v15[2] = v19;
    [(VKCTextPointerTrackingView *)v12 setTransform:v15];
    v13 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v12];
    [(VKCTextPointerTrackingView *)v12 addInteraction:v13];
  }

  return v12;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  superview = [(VKCTextPointerTrackingView *)self superview];
  [regionCopy rect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [superview convertRect:0 toView:{v8, v10, v12, v14}];
  v16 = v15;

  v17 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{v16 * 0.9 * -0.5, 3.0, v16 * 0.9, 1.5}];
  v18 = [MEMORY[0x1E69DCDC8] shapeWithPath:v17];
  v19 = [MEMORY[0x1E69DCDD0] styleWithShape:v18 constrainedAxes:0];

  return v19;
}

@end