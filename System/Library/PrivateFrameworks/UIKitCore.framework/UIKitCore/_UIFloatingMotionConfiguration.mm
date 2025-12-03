@interface _UIFloatingMotionConfiguration
+ (id)configurationWithLargeTranslationOnAxis:(unint64_t)axis;
+ (id)configurationWithRotation:(CGPoint)rotation;
+ (id)configurationWithRotationOnAxis:(unint64_t)axis;
+ (id)configurationWithTranslation:(CGPoint)translation;
+ (id)configurationWithTranslationOnAxis:(unint64_t)axis;
- (BOOL)isEqual:(id)equal;
- (CGPoint)rotation;
- (CGPoint)translation;
- (id)_initWithTranslation:(CGPoint)translation rotation:(CGPoint)rotation;
@end

@implementation _UIFloatingMotionConfiguration

+ (id)configurationWithRotationOnAxis:(unint64_t)axis
{
  if ((axis & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v3 = 0.04;
  }

  else
  {
    v3 = 0.0;
  }

  if ((axis & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = 0.04;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [self alloc];
  v6 = [v5 _initWithTranslation:*MEMORY[0x1E695EFF8] rotation:{*(MEMORY[0x1E695EFF8] + 8), v3, v4}];

  return v6;
}

+ (id)configurationWithTranslationOnAxis:(unint64_t)axis
{
  if ((axis & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v3 = 4.0;
  }

  else
  {
    v3 = 0.0;
  }

  if ((axis & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = 4.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [self alloc];
  v6 = [v5 _initWithTranslation:v3 rotation:{v4, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  return v6;
}

+ (id)configurationWithLargeTranslationOnAxis:(unint64_t)axis
{
  if ((axis & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 0.0;
  }

  if ((axis & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [self alloc];
  v6 = [v5 _initWithTranslation:v3 rotation:{v4, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  return v6;
}

+ (id)configurationWithRotation:(CGPoint)rotation
{
  y = rotation.y;
  x = rotation.x;
  v5 = [self alloc];
  v6 = [v5 _initWithTranslation:*MEMORY[0x1E695EFF8] rotation:{*(MEMORY[0x1E695EFF8] + 8), x, y}];

  return v6;
}

+ (id)configurationWithTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  v5 = [self alloc];
  v6 = [v5 _initWithTranslation:x rotation:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  return v6;
}

- (id)_initWithTranslation:(CGPoint)translation rotation:(CGPoint)rotation
{
  y = rotation.y;
  x = rotation.x;
  v6 = translation.y;
  v7 = translation.x;
  v9.receiver = self;
  v9.super_class = _UIFloatingMotionConfiguration;
  result = [(_UIFloatingMotionConfiguration *)&v9 init];
  if (result)
  {
    *(result + 3) = v7;
    *(result + 4) = v6;
    *(result + 1) = x;
    *(result + 2) = y;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (([(_UIFloatingMotionConfiguration *)equalCopy translation], self->_translation.x == v6) ? (v7 = self->_translation.y == v5) : (v7 = 0), v7))
    {
      [(_UIFloatingMotionConfiguration *)equalCopy rotation];
      v8 = self->_rotation.y == v10 && self->_rotation.x == v9;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (CGPoint)rotation
{
  x = self->_rotation.x;
  y = self->_rotation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end