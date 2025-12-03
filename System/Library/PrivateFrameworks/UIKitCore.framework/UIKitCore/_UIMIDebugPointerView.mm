@interface _UIMIDebugPointerView
- (_UIMIDebugPointerView)initWithFrame:(CGRect)frame;
- (void)setBounds:(CGRect)bounds;
@end

@implementation _UIMIDebugPointerView

- (_UIMIDebugPointerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22.receiver = self;
  v22.super_class = _UIMIDebugPointerView;
  v7 = [(UIView *)&v22 initWithFrame:?];
  if (v7)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    [(UIView *)v7 _setCornerRadius:CGRectGetHeight(v23) * 0.5];
    layer = [(UIView *)v7 layer];
    [layer setAllowsEdgeAntialiasing:1];

    layer2 = [(UIView *)v7 layer];
    [layer2 setBorderWidth:1.0];

    v10 = +[UIColor redColor];
    cGColor = [v10 CGColor];
    layer3 = [(UIView *)v7 layer];
    [layer3 setBorderColor:cGColor];

    [(UIView *)v7 setClipsToBounds:0];
    v13 = [UIView alloc];
    [(UIView *)v7 bounds];
    v14 = [(UIView *)v13 initWithFrame:?];
    actualPointer = v7->_actualPointer;
    v7->_actualPointer = v14;

    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    [(UIView *)v7->_actualPointer _setCornerRadius:CGRectGetHeight(v24) * 0.5];
    layer4 = [(UIView *)v7->_actualPointer layer];
    [layer4 setAllowsEdgeAntialiasing:1];

    v17 = +[UIColor systemBlueColor];
    cGColor2 = [v17 CGColor];
    layer5 = [(UIView *)v7->_actualPointer layer];
    [layer5 setBorderColor:cGColor2];

    layer6 = [(UIView *)v7->_actualPointer layer];
    [layer6 setBorderWidth:1.0];

    [(UIView *)v7 addSubview:v7->_actualPointer];
  }

  return v7;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  [(UIView *)self->_actualPointer setFrame:bounds.origin.x, bounds.origin.y];
  [(UIView *)self bounds];
  v8 = height == v7 && width == v6;
  actualPointer = self->_actualPointer;
  v10 = MEMORY[0x1E69796E0];
  if (!v8)
  {
    v10 = MEMORY[0x1E69796E8];
  }

  v11 = *v10;
  layer = [(UIView *)actualPointer layer];
  [layer setCornerCurve:v11];
}

@end