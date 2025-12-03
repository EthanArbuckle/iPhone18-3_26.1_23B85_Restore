@interface RCPDiscreteGestureSpec
+ (id)rotationZ:(double)z;
+ (id)scaleZ:(double)z;
+ (id)translation:(CGPoint)translation;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation RCPDiscreteGestureSpec

+ (id)rotationZ:(double)z
{
  v4 = objc_alloc_init(self);
  *(v4 + 8) = 1;
  v4[4] = z;

  return v4;
}

+ (id)scaleZ:(double)z
{
  v4 = objc_alloc_init(self);
  *(v4 + 9) = 1;
  v4[4] = z;

  return v4;
}

+ (id)translation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  v5 = objc_alloc_init(self);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = RCPDiscreteGestureSpec;
    if ([(RCPDiscreteGestureSpec *)&v8 isEqual:equalCopy])
    {
      v5 = equalCopy;
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