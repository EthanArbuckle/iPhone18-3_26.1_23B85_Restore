@interface UISpringTimingParameters
+ (void)_convertBounce:(double)bounce toDampingRatio:(double *)ratio;
+ (void)_convertDampingRatio:(double)ratio response:(double)response toMass:(double *)mass stiffness:(double *)stiffness damping:(double *)damping;
+ (void)_convertMass:(double)mass stiffness:(double)stiffness damping:(double)damping toDampingRatio:(double *)ratio response:(double *)response;
- (BOOL)isEqual:(id)equal;
- (CGVector)initialVelocity;
- (UISpringTimingParameters)init;
- (UISpringTimingParameters)initWithCoder:(NSCoder *)coder;
- (UISpringTimingParameters)initWithDampingRatio:(CGFloat)ratio initialVelocity:(CGVector)velocity;
- (UISpringTimingParameters)initWithDampingRatio:(double)ratio response:(double)response initialVelocity:(CGVector)velocity;
- (UISpringTimingParameters)initWithDuration:(NSTimeInterval)duration bounce:(CGFloat)bounce initialVelocity:(CGVector)velocity;
- (UISpringTimingParameters)initWithMass:(CGFloat)mass stiffness:(CGFloat)stiffness damping:(CGFloat)damping initialVelocity:(CGVector)velocity;
- (UISpringTimingParameters)initWithParameters:(id)parameters initialVelocity:(CGVector)velocity;
- (UISpringTimingParameters)initWithVelocity:(CGVector)velocity;
- (double)settlingDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISpringTimingParameters

- (double)settlingDuration
{
  v3 = 0.0;
  if (![(UISpringTimingParameters *)self implicitDuration])
  {
    return v3;
  }

  [(UISpringTimingParameters *)self initialVelocity];
  v5 = v4;
  [(UISpringTimingParameters *)self initialVelocity];
  v7 = v6;
  [(UISpringTimingParameters *)self mass];
  v9 = v8;
  [(UISpringTimingParameters *)self stiffness];
  v11 = v10;
  [(UISpringTimingParameters *)self damping];
  v13 = v12;
  objc_opt_self();
  _durationOfSpringAnimation(v9, v11, v13, v7);
  v3 = v14;
  if (v5 == v7)
  {
    return v3;
  }

  [(UISpringTimingParameters *)self mass];
  v16 = v15;
  [(UISpringTimingParameters *)self stiffness];
  v18 = v17;
  [(UISpringTimingParameters *)self damping];
  v20 = v19;
  objc_opt_self();
  _durationOfSpringAnimation(v16, v18, v20, v5);
  return fmax(v3, v21);
}

- (UISpringTimingParameters)init
{
  v10.receiver = self;
  v10.super_class = UISpringTimingParameters;
  v2 = [(UISpringTimingParameters *)&v10 init];
  v2->_implicitDuration = 1;
  _UILoadDefaultSpringParameters();
  v3 = _UIViewDefaultSpringStiffness;
  *&v2->_mass = _UIViewDefaultSpringMass;
  *&v2->_stiffness = v3;
  *&v2->_damping = _UIViewDefaultSpringDamping;
  v2->_initialVelocity.dx = 0.0;
  v2->_initialVelocity.dy = 0.0;
  [(UISpringTimingParameters *)v2 mass];
  v5 = v4;
  [(UISpringTimingParameters *)v2 stiffness];
  v7 = v6;
  [(UISpringTimingParameters *)v2 damping];
  [UISpringTimingParameters _convertMass:&v2->_dampingRatio stiffness:0 damping:v5 toDampingRatio:v7 response:v8];
  return v2;
}

- (CGVector)initialVelocity
{
  dx = self->_initialVelocity.dx;
  dy = self->_initialVelocity.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (id)description
{
  implicitDuration = [(UISpringTimingParameters *)self implicitDuration];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (implicitDuration)
  {
    [(UISpringTimingParameters *)self mass];
    v8 = v7;
    [(UISpringTimingParameters *)self stiffness];
    v10 = v9;
    [(UISpringTimingParameters *)self damping];
    v12 = v11;
    [(UISpringTimingParameters *)self initialVelocity];
    v14 = v13;
    [(UISpringTimingParameters *)self initialVelocity];
    [v4 stringWithFormat:@"<%@ (%p) mass=%.3f, stiffness=%.3f, damping=%.3f, velocity=(%.3f, %.3f)>", v6, self, v8, v10, v12, v14, v15];
  }

  else
  {
    [(UISpringTimingParameters *)self dampingRatio];
    v17 = v16;
    [(UISpringTimingParameters *)self initialVelocity];
    v19 = v18;
    [(UISpringTimingParameters *)self initialVelocity];
    [v4 stringWithFormat:@"<%@ (%p) dampingRatio=%.3f, velocity=(%.3f, %.3f)>", v6, self, v17, v19, v20, v23, v24];
  }
  v21 = ;

  return v21;
}

- (UISpringTimingParameters)initWithMass:(CGFloat)mass stiffness:(CGFloat)stiffness damping:(CGFloat)damping initialVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  v13.receiver = self;
  v13.super_class = UISpringTimingParameters;
  v11 = [(UISpringTimingParameters *)&v13 init];
  v11->_implicitDuration = 1;
  [(UISpringTimingParameters *)v11 setMass:mass];
  [(UISpringTimingParameters *)v11 setStiffness:stiffness];
  [(UISpringTimingParameters *)v11 setDamping:damping];
  v11->_initialVelocity.dx = dx;
  v11->_initialVelocity.dy = dy;
  [UISpringTimingParameters _convertMass:&v11->_dampingRatio stiffness:0 damping:mass toDampingRatio:stiffness response:damping];
  return v11;
}

- (UISpringTimingParameters)initWithVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  v13.receiver = self;
  v13.super_class = UISpringTimingParameters;
  v5 = [(UISpringTimingParameters *)&v13 init];
  v5->_implicitDuration = 1;
  _UILoadDefaultSpringParameters();
  v6 = _UIViewDefaultSpringStiffness;
  *&v5->_mass = _UIViewDefaultSpringMass;
  *&v5->_stiffness = v6;
  *&v5->_damping = _UIViewDefaultSpringDamping;
  v5->_initialVelocity.dx = dx;
  v5->_initialVelocity.dy = dy;
  [(UISpringTimingParameters *)v5 mass];
  v8 = v7;
  [(UISpringTimingParameters *)v5 stiffness];
  v10 = v9;
  [(UISpringTimingParameters *)v5 damping];
  [UISpringTimingParameters _convertMass:&v5->_dampingRatio stiffness:0 damping:v8 toDampingRatio:v10 response:v11];
  return v5;
}

- (UISpringTimingParameters)initWithDampingRatio:(CGFloat)ratio initialVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  v8.receiver = self;
  v8.super_class = UISpringTimingParameters;
  result = [(UISpringTimingParameters *)&v8 init];
  result->_implicitDuration = 0;
  result->_dampingRatio = ratio;
  result->_initialVelocity.dx = dx;
  result->_initialVelocity.dy = dy;
  result->_mass = 1.0;
  return result;
}

- (UISpringTimingParameters)initWithDampingRatio:(double)ratio response:(double)response initialVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  [UISpringTimingParameters _convertDampingRatio:&v11 response:&v10 toMass:&v9 stiffness:ratio damping:response];
  return [(UISpringTimingParameters *)self initWithMass:v11 stiffness:v10 damping:v9 initialVelocity:dx, dy];
}

- (UISpringTimingParameters)initWithDuration:(NSTimeInterval)duration bounce:(CGFloat)bounce initialVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  v12.receiver = self;
  v12.super_class = UISpringTimingParameters;
  v9 = [(UISpringTimingParameters *)&v12 init];
  v11 = 0.0;
  [UISpringTimingParameters _convertBounce:&v11 toDampingRatio:bounce];
  [UISpringTimingParameters _convertDampingRatio:&v9->_mass response:&v9->_stiffness toMass:&v9->_damping stiffness:v11 damping:duration];
  v9->_implicitDuration = 1;
  v9->_initialVelocity.dx = dx;
  v9->_initialVelocity.dy = dy;
  return v9;
}

- (UISpringTimingParameters)initWithParameters:(id)parameters initialVelocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  parametersCopy = parameters;
  [parametersCopy _dampingRatio];
  v9 = v8;
  [parametersCopy _response];
  v11 = v10;

  return [(UISpringTimingParameters *)self initWithDampingRatio:v9 response:v11 initialVelocity:dx, dy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  implicitDuration = [(UISpringTimingParameters *)self implicitDuration];
  v6 = [objc_opt_class() allocWithZone:zone];
  if (implicitDuration)
  {
    [(UISpringTimingParameters *)self mass];
    v8 = v7;
    [(UISpringTimingParameters *)self stiffness];
    v10 = v9;
    [(UISpringTimingParameters *)self damping];
    v12 = v11;
    [(UISpringTimingParameters *)self initialVelocity];

    return [v6 initWithMass:v8 stiffness:v10 damping:v12 initialVelocity:{v13, v14}];
  }

  else
  {
    [(UISpringTimingParameters *)self dampingRatio];
    v17 = v16;
    [(UISpringTimingParameters *)self initialVelocity];

    return [v6 initWithDampingRatio:v17 initialVelocity:{v18, v19}];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([(UISpringTimingParameters *)self implicitDuration])
    {
      [(UISpringTimingParameters *)self mass];
      v7 = v6;
      [v5 mass];
      if (v7 != v8)
      {
        goto LABEL_11;
      }

      [(UISpringTimingParameters *)self stiffness];
      v10 = v9;
      [v5 stiffness];
      if (v10 != v11)
      {
        goto LABEL_11;
      }

      [(UISpringTimingParameters *)self damping];
      v13 = v12;
      [v5 damping];
    }

    else
    {
      [(UISpringTimingParameters *)self dampingRatio];
      v13 = v16;
      [v5 dampingRatio];
    }

    if (v13 == v14)
    {
      [(UISpringTimingParameters *)self initialVelocity];
      v18 = v17;
      [v5 initialVelocity];
      if (v18 == v19)
      {
        [(UISpringTimingParameters *)self initialVelocity];
        v21 = v20;
        [v5 initialVelocity];
        v15 = v21 == v22;
LABEL_12:

        goto LABEL_13;
      }
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[UISpringTimingParameters implicitDuration](self forKey:{"implicitDuration"), @"implicitDuration"}];
  if ([(UISpringTimingParameters *)self implicitDuration])
  {
    [(UISpringTimingParameters *)self mass];
    [coderCopy encodeDouble:@"mass" forKey:?];
    [(UISpringTimingParameters *)self stiffness];
    [coderCopy encodeDouble:@"stiffness" forKey:?];
    [(UISpringTimingParameters *)self damping];
    v4 = @"damping";
  }

  else
  {
    [(UISpringTimingParameters *)self dampingRatio];
    v4 = @"dampingRatio";
  }

  [coderCopy encodeDouble:v4 forKey:?];
  [(UISpringTimingParameters *)self initialVelocity];
  [coderCopy encodeCGVector:@"velocity" forKey:?];
}

- (UISpringTimingParameters)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  if ([(NSCoder *)v4 allowsKeyedCoding])
  {
    v17.receiver = self;
    v17.super_class = UISpringTimingParameters;
    v5 = [(UISpringTimingParameters *)&v17 init];
    if (v5)
    {
      v6 = [(NSCoder *)v4 decodeBoolForKey:@"implicitDuration"];
      v5->_implicitDuration = v6;
      if (v6)
      {
        [(NSCoder *)v4 decodeDoubleForKey:@"mass"];
        [(UISpringTimingParameters *)v5 setMass:?];
        [(NSCoder *)v4 decodeDoubleForKey:@"stiffness"];
        [(UISpringTimingParameters *)v5 setStiffness:?];
        [(NSCoder *)v4 decodeDoubleForKey:@"damping"];
        [(UISpringTimingParameters *)v5 setDamping:?];
        [(UISpringTimingParameters *)v5 mass];
        v8 = v7;
        [(UISpringTimingParameters *)v5 stiffness];
        v10 = v9;
        [(UISpringTimingParameters *)v5 damping];
        [UISpringTimingParameters _convertMass:&v5->_dampingRatio stiffness:0 damping:v8 toDampingRatio:v10 response:v11];
      }

      else
      {
        [(NSCoder *)v4 decodeDoubleForKey:@"dampingRatio"];
        v5->_dampingRatio = v13;
      }

      [(NSCoder *)v4 decodeCGVectorForKey:@"velocity"];
      v5->_initialVelocity.dx = v14;
      v5->_initialVelocity.dy = v15;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"%@ only supports keyed coding.", objc_opt_class()}];
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)_convertDampingRatio:(double)ratio response:(double)response toMass:(double *)mass stiffness:(double *)stiffness damping:(double *)damping
{
  v7 = 6.28318531 / response;
  if (mass)
  {
    *mass = 1.0;
  }

  v8 = v7 * v7;
  if (stiffness)
  {
    *stiffness = v8;
  }

  if (damping)
  {
    v9 = sqrt(v8);
    *damping = (v9 + v9) * ratio;
  }
}

+ (void)_convertMass:(double)mass stiffness:(double)stiffness damping:(double)damping toDampingRatio:(double *)ratio response:(double *)response
{
  if (ratio)
  {
    v7 = sqrt(mass * stiffness);
    *ratio = damping / (v7 + v7);
  }

  if (response)
  {
    *response = 6.28318531 / sqrt(stiffness / mass);
  }
}

+ (void)_convertBounce:(double)bounce toDampingRatio:(double *)ratio
{
  if (ratio)
  {
    if (bounce >= 0.0)
    {
      v4 = 1.0 - bounce;
    }

    else
    {
      v4 = 1.0 / (bounce + 1.0);
    }

    *ratio = v4;
  }
}

@end