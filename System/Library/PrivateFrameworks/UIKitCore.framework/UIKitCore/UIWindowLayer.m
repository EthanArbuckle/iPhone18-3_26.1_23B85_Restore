@interface UIWindowLayer
- (id)actionForKey:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setTransform:(CATransform3D *)a3;
@end

@implementation UIWindowLayer

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = UIWindowLayer;
  [(UIWindowLayer *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setBounds:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = UIWindowLayer;
  [(UIWindowLayer *)&v3 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setTransform:(CATransform3D *)a3
{
  v8.receiver = self;
  v8.super_class = UIWindowLayer;
  v3 = *&a3->m33;
  v7[4] = *&a3->m31;
  v7[5] = v3;
  v4 = *&a3->m43;
  v7[6] = *&a3->m41;
  v7[7] = v4;
  v5 = *&a3->m13;
  v7[0] = *&a3->m11;
  v7[1] = v5;
  v6 = *&a3->m23;
  v7[2] = *&a3->m21;
  v7[3] = v6;
  [(UIWindowLayer *)&v8 setTransform:v7];
}

- (id)actionForKey:(id)a3
{
  v4 = a3;
  window = self->_window;
  if (!window)
  {
    if (!_CASupportsAnimationForKey(v4))
    {
      goto LABEL_6;
    }

    window = self->_window;
  }

  if ([(UIView *)window _shouldAnimatePropertyWithKey:v4])
  {
    v6 = [UIView _defaultUIViewActionForLayer:self forKey:v4];
    goto LABEL_7;
  }

LABEL_6:
  v6 = 0;
LABEL_7:

  return v6;
}

@end