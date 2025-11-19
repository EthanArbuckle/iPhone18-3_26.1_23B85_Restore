@interface PKRightAngleRotatingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKRightAngleRotatingView)initWithRotatedView:(id)a3;
- (void)layoutSubviews;
- (void)sizeToFit;
- (void)updateTransform;
@end

@implementation PKRightAngleRotatingView

- (PKRightAngleRotatingView)initWithRotatedView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKRightAngleRotatingView;
  v6 = [(PKRightAngleRotatingView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rotatedView, a3);
    [(PKRightAngleRotatingView *)v7 addSubview:v5];
    v7->_orientation = 0;
    [(PKRightAngleRotatingView *)v7 updateTransform];
  }

  return v7;
}

- (void)updateTransform
{
  orientation = self->_orientation;
  v4 = 0.0;
  if ((orientation - 1) <= 6)
  {
    v4 = dbl_1BE114868[orientation - 1];
  }

  memset(&v12, 0, sizeof(v12));
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&v11.a = *MEMORY[0x1E695EFD0];
  *&v11.c = v5;
  *&v11.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformRotate(&v12, &v11, v4);
  if ((orientation - 4) < 2)
  {
    [(UIView *)self->_rotatedView bounds];
    v7 = v8;
  }

  else
  {
    if ((orientation - 6) >= 2)
    {
      goto LABEL_8;
    }

    [(UIView *)self->_rotatedView bounds];
    v7 = v6;
  }

  v10 = v12;
  CGAffineTransformTranslate(&v11, &v10, v7, 0.0);
  v12 = v11;
  v10 = v11;
  CGAffineTransformScale(&v11, &v10, -1.0, 1.0);
  v12 = v11;
LABEL_8:
  *_transform = v12;
  rotatedView = self->_rotatedView;
  v11 = v12;
  [(UIView *)rotatedView setTransform:&v11];
  [(PKRightAngleRotatingView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_rotatedView sizeThatFits:vmlaq_n_f64(vmulq_n_f64(*&_transform[16], a3.height), *_transform, a3.width)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)sizeToFit
{
  [(UIView *)self->_rotatedView sizeToFit];
  [(UIView *)self->_rotatedView bounds];
  v4 = v3;
  v6 = v5;
  v7 = *_transform;
  CGAffineTransformInvert(&v8, &v7);
  [(PKRightAngleRotatingView *)self setBounds:0.0, 0.0, v6 * v8.c + v8.a * v4, v6 * v8.d + v8.b * v4];
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_rotatedView intrinsicContentSize];
  v4 = vmlaq_n_f64(vmulq_n_f64(*&_transform[16], v2), *_transform, v3);
  v5 = v4.f64[1];
  v6 = v4.f64[0];
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PKRightAngleRotatingView;
  [(PKRightAngleRotatingView *)&v10 layoutSubviews];
  [(PKRightAngleRotatingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(PKRightAngleRotatingView *)self _dimensionsAreRotated];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  [(UIView *)self->_rotatedView setBounds:0.0, 0.0, v8, v9];
  [(UIView *)self->_rotatedView setCenter:v4 * 0.5, v6 * 0.5];
}

@end