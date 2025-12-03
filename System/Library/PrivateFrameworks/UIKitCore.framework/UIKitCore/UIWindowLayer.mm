@interface UIWindowLayer
- (id)actionForKey:(id)key;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setTransform:(CATransform3D *)transform;
@end

@implementation UIWindowLayer

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = UIWindowLayer;
  [(UIWindowLayer *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setBounds:(CGRect)bounds
{
  v3.receiver = self;
  v3.super_class = UIWindowLayer;
  [(UIWindowLayer *)&v3 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
}

- (void)setTransform:(CATransform3D *)transform
{
  v8.receiver = self;
  v8.super_class = UIWindowLayer;
  v3 = *&transform->m33;
  v7[4] = *&transform->m31;
  v7[5] = v3;
  v4 = *&transform->m43;
  v7[6] = *&transform->m41;
  v7[7] = v4;
  v5 = *&transform->m13;
  v7[0] = *&transform->m11;
  v7[1] = v5;
  v6 = *&transform->m23;
  v7[2] = *&transform->m21;
  v7[3] = v6;
  [(UIWindowLayer *)&v8 setTransform:v7];
}

- (id)actionForKey:(id)key
{
  keyCopy = key;
  window = self->_window;
  if (!window)
  {
    if (!_CASupportsAnimationForKey(keyCopy))
    {
      goto LABEL_6;
    }

    window = self->_window;
  }

  if ([(UIView *)window _shouldAnimatePropertyWithKey:keyCopy])
  {
    v6 = [UIView _defaultUIViewActionForLayer:self forKey:keyCopy];
    goto LABEL_7;
  }

LABEL_6:
  v6 = 0;
LABEL_7:

  return v6;
}

@end