@interface PLCropOverlayCropView
- (CGRect)cropRect;
- (PLCropOverlayCropView)initWithFrame:(CGRect)a3;
- (void)_removeCropViews;
- (void)_updateCropRectIfNeeded;
- (void)dealloc;
- (void)setAlpha:(double)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation PLCropOverlayCropView

- (void)_removeCropViews
{
  if (self->_cropRectView)
  {
    [(UIView *)self->_aboveCropView removeFromSuperview];

    self->_aboveCropView = 0;
    [(UIView *)self->_cropRectView removeFromSuperview];

    self->_cropRectView = 0;
    [(UIView *)self->_belowCropView removeFromSuperview];

    self->_belowCropView = 0;
  }
}

- (void)_updateCropRectIfNeeded
{
  [(PLCropOverlayCropView *)self alpha];
  v4 = v3;
  [(PLCropOverlayCropView *)self cropRect];
  if (v4 <= 0.0 || (v9 = v5, v10 = v6, v11 = v7, v12 = v8, CGRectIsEmpty(*&v5)))
  {

    [(PLCropOverlayCropView *)self _removeCropViews];
  }

  else
  {
    if (!self->_cropRectView)
    {
      v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      v14 = objc_alloc_init(MEMORY[0x277D75D18]);
      self->_aboveCropView = v14;
      [(UIView *)v14 setBackgroundColor:v13];
      [(PLCropOverlayCropView *)self addSubview:self->_aboveCropView];
      self->_cropRectView = objc_alloc_init(MEMORY[0x277D75D18]);
      -[UIView setBackgroundColor:](self->_cropRectView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
      -[CALayer setBorderColor:](-[UIView layer](self->_cropRectView, "layer"), "setBorderColor:", [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:1.0 alpha:{0.5), "CGColor"}]);
      [(CALayer *)[(UIView *)self->_cropRectView layer] setBorderWidth:1.0];
      [(PLCropOverlayCropView *)self addSubview:self->_cropRectView];
      v15 = objc_alloc_init(MEMORY[0x277D75D18]);
      self->_belowCropView = v15;
      [(UIView *)v15 setBackgroundColor:v13];
      [(PLCropOverlayCropView *)self addSubview:self->_belowCropView];
    }

    [(PLCropOverlayCropView *)self bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v28.origin.x = v9;
    v28.origin.y = v10;
    v28.size.width = v11;
    v28.size.height = v12;
    [(UIView *)self->_aboveCropView setFrame:v17, v19, v21, CGRectGetMinY(v28)];
    [(UIView *)self->_cropRectView setFrame:v9, v10, v11, v12];
    v29.origin.x = v9;
    v29.origin.y = v10;
    v29.size.width = v11;
    v29.size.height = v12;
    MaxY = CGRectGetMaxY(v29);
    v30.origin.x = v9;
    v30.origin.y = v10;
    v30.size.width = v11;
    v30.size.height = v12;
    v25 = CGRectGetMaxY(v30);
    belowCropView = self->_belowCropView;

    [(UIView *)belowCropView setFrame:v17, MaxY, v21, v23 - v25];
  }
}

- (void)setAlpha:(double)a3
{
  v4.receiver = self;
  v4.super_class = PLCropOverlayCropView;
  [(PLCropOverlayCropView *)&v4 setAlpha:a3];
  [(PLCropOverlayCropView *)self _updateCropRectIfNeeded];
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PLCropOverlayCropView *)self frame];
  if (width != v9 || height != v8)
  {
    [(PLCropOverlayCropView *)self _updateCropRectIfNeeded];
  }

  v11.receiver = self;
  v11.super_class = PLCropOverlayCropView;
  [(PLCropOverlayCropView *)&v11 setFrame:x, y, width, height];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLCropOverlayCropView;
  [(PLCropOverlayCropView *)&v3 dealloc];
}

- (PLCropOverlayCropView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PLCropOverlayCropView;
  v3 = [(PLCropOverlayCropView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLCropOverlayCropView *)v3 setCropRect:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  }

  return v4;
}

@end