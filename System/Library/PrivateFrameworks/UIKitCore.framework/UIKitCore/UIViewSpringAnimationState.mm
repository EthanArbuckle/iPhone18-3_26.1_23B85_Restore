@interface UIViewSpringAnimationState
+ (id)defaultSpringAnimationForKey:(id)a3 mass:(double)a4 stiffness:(double)a5 damping:(double)a6 velocity:(double)a7 allowsOverdamping:(BOOL)a8;
- (id)_defaultAnimationForKey:(id)a3;
- (id)animationForLayer:(id)a3 forKey:(id)a4 forView:(id)a5;
- (void)generateSpringPropertiesForDuration:(double)a3 damping:(double)a4 velocity:(double)a5;
- (void)generateSpringPropertiesForPerceptualDuration:(double)a3 bounce:(double)a4 velocity:(double)a5;
- (void)setupWithDuration:(double)a3 delay:(double)a4 view:(id)a5 options:(unint64_t)a6 factory:(id)a7 parentState:(id)a8 start:(id)a9 completion:(id)a10;
@end

@implementation UIViewSpringAnimationState

- (void)generateSpringPropertiesForDuration:(double)a3 damping:(double)a4 velocity:(double)a5
{
  self->_mass = 1.0;
  self->_velocity = a5;
  parametersOfSpringAnimation(&self->_stiffness, &self->_damping, 0, a3, a4, self->_mass, a5, 0.001);
}

- (void)generateSpringPropertiesForPerceptualDuration:(double)a3 bounce:(double)a4 velocity:(double)a5
{
  self->_mass = 1.0;
  self->_velocity = a5;
  self->_allowsOverdamping = 1;
  v7 = 0.0;
  [UISpringTimingParameters _convertBounce:&v7 toDampingRatio:a4];
  [UISpringTimingParameters _convertDampingRatio:&self->_mass response:&self->_stiffness toMass:&self->_damping stiffness:v7 damping:a3];
}

- (id)animationForLayer:(id)a3 forKey:(id)a4 forView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10 && (*(v10 + 91) & 2) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(UIViewSpringAnimationState *)self _defaultAnimationForKey:v9];
    if ([(UIViewAnimationState *)self _shouldStartFromCurrentStateForLayer:v8 key:v9 forView:v11])
    {
      v13 = [v8 presentationLayer];
      v14 = [v13 valueForKeyPath:v9];
      [v12 setFromValue:v14];
    }

    else
    {
      v13 = [v8 valueForKeyPath:v9];
      [v12 setFromValue:v13];
    }

    [(UIViewAnimationState *)self configureAnimation:v12 forLayer:v8 forKey:v9];
    [(UIViewAnimationState *)self setAnimationAttributes:v12 skipDelegateAssignment:0 customCurve:0];
  }

  return v12;
}

+ (id)defaultSpringAnimationForKey:(id)a3 mass:(double)a4 stiffness:(double)a5 damping:(double)a6 velocity:(double)a7 allowsOverdamping:(BOOL)a8
{
  v8 = a8;
  v13 = a3;
  v14 = UIAnimationDragCoefficient();
  v15 = [MEMORY[0x1E69794A8] animationWithKeyPath:v13];

  [v15 setMass:a4];
  [v15 setStiffness:a5];
  [v15 setDamping:a6];
  [v15 setVelocity:a7];
  [v15 setAllowsOverdamping:v8];
  if (v14 > 1.0)
  {
    *&v16 = 1.0 / v14;
    [v15 setSpeed:v16];
  }

  return v15;
}

- (void)setupWithDuration:(double)a3 delay:(double)a4 view:(id)a5 options:(unint64_t)a6 factory:(id)a7 parentState:(id)a8 start:(id)a9 completion:(id)a10
{
  v10.receiver = self;
  v10.super_class = UIViewSpringAnimationState;
  [(UIViewAnimationState *)&v10 setupWithDuration:a5 delay:a6 & 0xFFFFFFFFFFF8FFFFLL | 0x30000 view:a7 options:a8 factory:a9 parentState:a10 start:a3 completion:a4];
}

- (id)_defaultAnimationForKey:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultSpringAnimationForKey:v4 mass:self->_allowsOverdamping stiffness:self->_mass damping:self->_stiffness velocity:self->_damping allowsOverdamping:self->_velocity];

  return v5;
}

@end