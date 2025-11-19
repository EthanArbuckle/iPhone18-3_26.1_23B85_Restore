@interface RCPDiscreteGestureSpec
+ (id)rotationZ:(double)a3;
+ (id)scaleZ:(double)a3;
+ (id)translation:(CGPoint)a3;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation RCPDiscreteGestureSpec

+ (id)rotationZ:(double)a3
{
  v4 = objc_alloc_init(a1);
  *(v4 + 8) = 1;
  v4[4] = a3;

  return v4;
}

+ (id)scaleZ:(double)a3
{
  v4 = objc_alloc_init(a1);
  *(v4 + 9) = 1;
  v4[4] = a3;

  return v4;
}

+ (id)translation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = objc_alloc_init(a1);
  *(v5 + 10) = 1;
  v5[2] = x;
  v5[3] = y;

  return v5;
}

- (unint64_t)hash
{
  isTranslation = self->_isTranslation;
  if (self->_isRotation)
  {
    isTranslation |= 2uLL;
  }

  if (self->_isScale)
  {
    return isTranslation | 4;
  }

  else
  {
    return isTranslation;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RCPDiscreteGestureSpec;
    if ([(RCPDiscreteGestureSpec *)&v8 isEqual:v4])
    {
      v5 = v4;
      v6 = v5->_isRotation == self->_isRotation && v5->_isTranslation == self->_isTranslation && v5->_isScale == self->_isScale && v5->_x == self->_x && v5->_y == self->_y && v5->_z == self->_z;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end