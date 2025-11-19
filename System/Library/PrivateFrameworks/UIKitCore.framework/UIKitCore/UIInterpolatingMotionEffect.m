@interface UIInterpolatingMotionEffect
- (UIInterpolatingMotionEffect)initWithCoder:(NSCoder *)coder;
- (UIInterpolatingMotionEffect)initWithKeyPath:(NSString *)keyPath type:(UIInterpolatingMotionEffectType)type;
- (id)_keyPathsAndRelativeValuesForPose:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)a3;
- (void)_setKeyPath:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIInterpolatingMotionEffect

- (UIInterpolatingMotionEffect)initWithKeyPath:(NSString *)keyPath type:(UIInterpolatingMotionEffectType)type
{
  v6 = keyPath;
  v12.receiver = self;
  v12.super_class = UIInterpolatingMotionEffect;
  v7 = [(UIMotionEffect *)&v12 init];
  if (v7)
  {
    v8 = [(NSString *)v6 copy];
    v9 = v7->_keyPath;
    v7->_keyPath = v8;

    v7->_type = type;
    v10 = v7;
  }

  return v7;
}

- (id)_keyPathsAndRelativeValuesForPose:(id)a3
{
  v4 = a3;
  [v4 viewerOffset];
  [v4 _acceleratedOutputForViewerOffset:? accelerationBoostFactor:?];
  v6 = v5;
  v8 = v7;

  return [(UIInterpolatingMotionEffect *)self keyPathsAndRelativeValuesForViewerOffset:v6, v8];
}

- (id)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  minimumRelativeValue = self->_minimumRelativeValue;
  if (minimumRelativeValue && self->_maximumRelativeValue && self->_keyPath)
  {
    type = self->_type;
    if (type)
    {
      a3.horizontal = a3.vertical;
      if (type != 1)
      {
        abort();
      }
    }

    v6 = a3.horizontal * 0.5 + 0.5;
    *&v6 = v6;
    v7 = [minimumRelativeValue CA_interpolateValue:v6 byFraction:?];
    keyPath = self->_keyPath;
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&keyPath count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UIInterpolatingMotionEffect);
  objc_storeStrong(&v4->_keyPath, self->_keyPath);
  objc_storeStrong(&v4->_minimumRelativeValue, self->_minimumRelativeValue);
  objc_storeStrong(&v4->_maximumRelativeValue, self->_maximumRelativeValue);
  v4->_type = self->_type;
  v4->_horizontalAccelerationBoostFactor = self->_horizontalAccelerationBoostFactor;
  v4->_verticalAccelerationBoostFactor = self->_verticalAccelerationBoostFactor;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  keyPath = self->_keyPath;
  v5 = a3;
  [v5 encodeObject:keyPath forKey:@"_keyPath"];
  [v5 CA_encodeObject:self->_minimumRelativeValue forKey:@"_minimumRelativeValue" conditional:0];
  [v5 CA_encodeObject:self->_maximumRelativeValue forKey:@"_maximumRelativeValue" conditional:0];
  [v5 encodeInteger:self->_type forKey:@"_type"];
  [v5 encodeDouble:@"_horizontalAccelerationBoostFactor" forKey:self->_horizontalAccelerationBoostFactor];
  [v5 encodeDouble:@"_verticalAccelerationBoostFactor" forKey:self->_verticalAccelerationBoostFactor];
}

- (UIInterpolatingMotionEffect)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v16.receiver = self;
  v16.super_class = UIInterpolatingMotionEffect;
  v5 = [(UIMotionEffect *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectForKey:@"_keyPath"];
    keyPath = v5->_keyPath;
    v5->_keyPath = v6;

    v8 = [(NSCoder *)v4 CA_decodeObjectForKey:@"_minimumRelativeValue"];
    minimumRelativeValue = v5->_minimumRelativeValue;
    v5->_minimumRelativeValue = v8;

    v10 = [(NSCoder *)v4 CA_decodeObjectForKey:@"_maximumRelativeValue"];
    maximumRelativeValue = v5->_maximumRelativeValue;
    v5->_maximumRelativeValue = v10;

    v5->_type = [(NSCoder *)v4 decodeIntegerForKey:@"_type"];
    [(NSCoder *)v4 decodeDoubleForKey:@"_horizontalAccelerationBoostFactor"];
    v5->_horizontalAccelerationBoostFactor = v12;
    [(NSCoder *)v4 decodeDoubleForKey:@"_verticalAccelerationBoostFactor"];
    v5->_verticalAccelerationBoostFactor = v13;
    v14 = v5;
  }

  return v5;
}

- (id)description
{
  type = self->_type;
  if (type >= 3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UIMotionEffect.m" lineNumber:289 description:@"Unknown motion type"];

    v4 = @"unknown";
  }

  else
  {
    v4 = *(&off_1E7119AC0 + type);
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"<%@: %p type=%@ key=%@ minimumRelativeValue=%@ maximumRelativeValue=%@>"], v9, self, v4, self->_keyPath, self->_minimumRelativeValue, self->_maximumRelativeValue);

  return v10;
}

- (void)_setKeyPath:(id)a3
{
  if (self->_keyPath != a3)
  {
    v4 = [a3 copy];
    keyPath = self->_keyPath;
    self->_keyPath = v4;
  }
}

@end