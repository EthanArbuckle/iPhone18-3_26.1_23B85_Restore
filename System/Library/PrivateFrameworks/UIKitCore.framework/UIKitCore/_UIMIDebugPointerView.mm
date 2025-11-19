@interface _UIMIDebugPointerView
- (_UIMIDebugPointerView)initWithFrame:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
@end

@implementation _UIMIDebugPointerView

- (_UIMIDebugPointerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v8 = [(UIView *)v7 layer];
    [v8 setAllowsEdgeAntialiasing:1];

    v9 = [(UIView *)v7 layer];
    [v9 setBorderWidth:1.0];

    v10 = +[UIColor redColor];
    v11 = [v10 CGColor];
    v12 = [(UIView *)v7 layer];
    [v12 setBorderColor:v11];

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
    v16 = [(UIView *)v7->_actualPointer layer];
    [v16 setAllowsEdgeAntialiasing:1];

    v17 = +[UIColor systemBlueColor];
    v18 = [v17 CGColor];
    v19 = [(UIView *)v7->_actualPointer layer];
    [v19 setBorderColor:v18];

    v20 = [(UIView *)v7->_actualPointer layer];
    [v20 setBorderWidth:1.0];

    [(UIView *)v7 addSubview:v7->_actualPointer];
  }

  return v7;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(UIView *)self->_actualPointer setFrame:a3.origin.x, a3.origin.y];
  [(UIView *)self bounds];
  v8 = height == v7 && width == v6;
  actualPointer = self->_actualPointer;
  v10 = MEMORY[0x1E69796E0];
  if (!v8)
  {
    v10 = MEMORY[0x1E69796E8];
  }

  v11 = *v10;
  v12 = [(UIView *)actualPointer layer];
  [v12 setCornerCurve:v11];
}

@end