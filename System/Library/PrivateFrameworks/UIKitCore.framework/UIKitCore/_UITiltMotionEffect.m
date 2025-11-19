@interface _UITiltMotionEffect
- (_UITiltMotionEffect)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setRotatingSphereRadius:(double)a3;
@end

@implementation _UITiltMotionEffect

- (id)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3.horizontal * self->_maximumHorizontalTiltAngle;
  v5 = -(a3.vertical * self->_maximumVerticalTiltAngle);
  memset(&v13, 0, sizeof(v13));
  CATransform3DMakeTranslation(&v13, 0.0, 0.0, self->_rotatingSphereRadius);
  v11 = v13;
  CATransform3DRotate(&v12, &v11, v4, 0.0, 1.0, 0.0);
  *&v13.m31 = *&v12.m31;
  *&v13.m33 = *&v12.m33;
  *&v13.m41 = *&v12.m41;
  *&v13.m43 = *&v12.m43;
  *&v13.m11 = *&v12.m11;
  *&v13.m13 = *&v12.m13;
  *&v13.m21 = *&v12.m21;
  *&v13.m23 = *&v12.m23;
  v6 = __sincos_stret(v4);
  v11 = v13;
  CATransform3DRotate(&v12, &v11, v5, v6.__cosval, 0.0, v6.__sinval);
  *&v13.m31 = *&v12.m31;
  *&v13.m33 = *&v12.m33;
  *&v13.m41 = *&v12.m41;
  *&v13.m43 = *&v12.m43;
  *&v13.m11 = *&v12.m11;
  *&v13.m13 = *&v12.m13;
  rotatingSphereRadius = self->_rotatingSphereRadius;
  *&v13.m21 = *&v12.m21;
  *&v13.m23 = *&v12.m23;
  v11 = v12;
  CATransform3DTranslate(&v12, &v11, 0.0, 0.0, -rotatingSphereRadius);
  v13 = v12;
  v14 = @"layer.transform";
  v8 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v12];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  return v9;
}

- (_UITiltMotionEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UITiltMotionEffect;
  v5 = [(UIMotionEffect *)&v11 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeFloatForKey:@"_maximumHorizontalTiltAngle"];
    v5->_maximumHorizontalTiltAngle = v6;
    [v4 decodeFloatForKey:@"_maximumVerticalTiltAngle"];
    v5->_maximumVerticalTiltAngle = v7;
    [v4 decodeFloatForKey:@"_rotatingSphereRadius"];
    v5->_rotatingSphereRadius = v8;
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UITiltMotionEffect;
  v4 = a3;
  [(UIMotionEffect *)&v8 encodeWithCoder:v4];
  maximumHorizontalTiltAngle = self->_maximumHorizontalTiltAngle;
  *&maximumHorizontalTiltAngle = maximumHorizontalTiltAngle;
  [v4 encodeFloat:@"_maximumHorizontalTiltAngle" forKey:{maximumHorizontalTiltAngle, v8.receiver, v8.super_class}];
  maximumVerticalTiltAngle = self->_maximumVerticalTiltAngle;
  *&maximumVerticalTiltAngle = maximumVerticalTiltAngle;
  [v4 encodeFloat:@"_maximumVerticalTiltAngle" forKey:maximumVerticalTiltAngle];
  rotatingSphereRadius = self->_rotatingSphereRadius;
  *&rotatingSphereRadius = rotatingSphereRadius;
  [v4 encodeFloat:@"_rotatingSphereRadius" forKey:rotatingSphereRadius];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UITiltMotionEffect;
  result = [(UIMotionEffect *)&v5 copyWithZone:a3];
  *(result + 3) = *&self->_maximumHorizontalTiltAngle;
  *(result + 4) = *&self->_maximumVerticalTiltAngle;
  *(result + 5) = *&self->_rotatingSphereRadius;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p maximumTiltAngle=(%f, %f) rotatingSphereRadius=%f>", v5, self, *&self->_maximumHorizontalTiltAngle, *&self->_maximumVerticalTiltAngle, *&self->_rotatingSphereRadius];

  return v6;
}

- (void)setRotatingSphereRadius:(double)a3
{
  if (a3 < 0.0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"-[%@ rotatingSphereRadius] must be non-negative (%f provided)", v8, *&a3}];
  }

  self->_rotatingSphereRadius = a3;
}

@end