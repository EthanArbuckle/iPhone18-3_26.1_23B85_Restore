@interface OFUITrackingPinchView
- (CGPoint)originalCenter;
- (OFUITrackingPinchView)initWithFrame:(CGRect)frame;
- (void)beginTrackingPinch:(id)pinch;
- (void)completeTrackingPinch:(id)pinch;
- (void)continueTrackingPinch:(id)pinch;
- (void)dealloc;
- (void)setContentsRect:(CGRect)rect;
- (void)setImage:(id)image;
- (void)setSize:(CGSize)size angle:(float)angle;
@end

@implementation OFUITrackingPinchView

- (OFUITrackingPinchView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v8.receiver = self;
  v8.super_class = OFUITrackingPinchView;
  v5 = [(OFViewProxy *)&v8 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    -[OFUITrackingPinchView setBackgroundColor:](v5, "setBackgroundColor:", [MEMORY[0x277D75348] colorWithWhite:0.119999997 alpha:1.0]);
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, width, height}];
    v5->_imageView = v6;
    [(UIImageView *)v6 setClipsToBounds:1];
    [(UIImageView *)v5->_imageView setContentMode:2];
    [(OFUITrackingPinchView *)v5 addSubview:v5->_imageView];
    v5->_isRotating = 0;
  }

  return v5;
}

- (void)dealloc
{
  imageView = self->_imageView;
  if (imageView)
  {

    self->_imageView = 0;
  }

  v4.receiver = self;
  v4.super_class = OFUITrackingPinchView;
  [(OFUIView *)&v4 dealloc];
}

- (void)setImage:(id)image
{
  if (image)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] colorWithWhite:0.119999997 alpha:1.0];
  }

  [(OFUITrackingPinchView *)self setBackgroundColor:clearColor];
  imageView = self->_imageView;

  [(UIImageView *)imageView setImage:image];
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layer = [(UIImageView *)self->_imageView layer];

  [layer setContentsRect:{x, y, width, height}];
}

- (void)beginTrackingPinch:(id)pinch
{
  [(OFUITrackingPinchView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [pinch locationInView:{-[OFUITrackingPinchView superview](self, "superview")}];
  self->_anchorPoint.x = (v13 - v6) / v10;
  self->_anchorPoint.y = (v14 - v8) / v12;
  [(OFUITrackingPinchView *)self center];
  self->_originalCenter.x = v15;
  self->_originalCenter.y = v16;
  [(OFUITrackingPinchView *)self frame];
  self->_originalSize.width = v17;
  self->_originalSize.height = v18;
  [pinch pinchAngle];
  self->_originalAngle = v19;
}

- (void)setSize:(CGSize)size angle:(float)angle
{
  height = size.height;
  width = size.width;
  [(OFUITrackingPinchView *)self frame];
  [(OFUITrackingPinchView *)self bounds];
  v10 = v8 == v9;
  v11 = width != height;
  if (width >= height)
  {
    v12 = width;
  }

  else
  {
    v12 = height;
  }

  v13 = v12;
  v14 = v13;
  if (v11 && v10)
  {
    v15 = v13;
  }

  else
  {
    v15 = width;
  }

  if (!v11 || !v10)
  {
    v14 = height;
  }

  angleCopy = angle;
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v23.a = *MEMORY[0x277CBF2C0];
  *&v23.c = v17;
  *&v23.tx = *(MEMORY[0x277CBF2C0] + 32);
  v18 = v14 / v9;
  v19 = v15 / v8;
  if (v8 < v9)
  {
    v19 = v18;
  }

  v20 = v19;
  CGAffineTransformMakeRotation(&v23, angleCopy);
  v21 = v23;
  CGAffineTransformScale(&v22, &v21, v20, v20);
  v23 = v22;
  [(OFUITrackingPinchView *)self setTransform:&v22];
  [(UIImageView *)self->_imageView setNeedsLayout];
  self->_currentAngle = angleCopy;
}

- (void)continueTrackingPinch:(id)pinch
{
  [pinch pinchAngle];
  v6 = v5;
  [pinch locationInView:{-[OFUITrackingPinchView superview](self, "superview")}];
  v8 = v7;
  v10 = v9;
  if (!self->_isRotating)
  {
    originalAngle = self->_originalAngle;
    if (v6 == originalAngle)
    {
      goto LABEL_5;
    }

    self->_originalAngle = v6;
    [(OFUITrackingPinchView *)self frame];
    self->_anchorPoint.x = (v8 - v12) / v13;
    self->_anchorPoint.y = (v10 - v14) / v15;
    self->_isRotating = 1;
  }

  originalAngle = v6;
LABEL_5:
  [-[OFUITrackingPinchView layer](self "layer")];
  [(OFUITrackingPinchView *)self setCenter:v8, v10];
  width = self->_originalSize.width;
  [pinch pinchScale];
  *&v17 = width * v17;
  v18 = rintf(*&v17);
  height = self->_originalSize.height;
  [pinch pinchScale];
  *&v20 = height * v20;
  v21 = rintf(*&v20);
  *&v22 = self->_originalAngle - originalAngle;

  [(OFUITrackingPinchView *)self setSize:v18 angle:v21, v22];
}

- (void)completeTrackingPinch:(id)pinch
{
  [(OFUITrackingPinchView *)self bounds];
  MidX = CGRectGetMidX(v15);
  [(OFUITrackingPinchView *)self bounds];
  [(OFUITrackingPinchView *)self convertPoint:[(OFUITrackingPinchView *)self superview] toView:MidX, CGRectGetMidY(v16)];
  v6 = v5;
  v8 = v7;
  __asm { FMOV            V0.2D, #0.5 }

  self->_anchorPoint = _Q0;
  [-[OFUITrackingPinchView layer](self "layer")];

  [(OFUITrackingPinchView *)self setCenter:v6, v8];
}

- (CGPoint)originalCenter
{
  objc_copyStruct(v4, &self->_originalCenter, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end