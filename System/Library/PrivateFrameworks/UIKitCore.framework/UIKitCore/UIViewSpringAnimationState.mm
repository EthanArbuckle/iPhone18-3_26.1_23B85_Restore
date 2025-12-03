@interface UIViewSpringAnimationState
+ (id)defaultSpringAnimationForKey:(id)key mass:(double)mass stiffness:(double)stiffness damping:(double)damping velocity:(double)velocity allowsOverdamping:(BOOL)overdamping;
- (id)_defaultAnimationForKey:(id)key;
- (id)animationForLayer:(id)layer forKey:(id)key forView:(id)view;
- (void)generateSpringPropertiesForDuration:(double)duration damping:(double)damping velocity:(double)velocity;
- (void)generateSpringPropertiesForPerceptualDuration:(double)duration bounce:(double)bounce velocity:(double)velocity;
- (void)setupWithDuration:(double)duration delay:(double)delay view:(id)view options:(unint64_t)options factory:(id)factory parentState:(id)state start:(id)start completion:(id)self0;
@end

@implementation UIViewSpringAnimationState

- (void)generateSpringPropertiesForDuration:(double)duration damping:(double)damping velocity:(double)velocity
{
  self->_mass = 1.0;
  self->_velocity = velocity;
  parametersOfSpringAnimation(&self->_stiffness, &self->_damping, 0, duration, damping, self->_mass, velocity, 0.001);
}

- (void)generateSpringPropertiesForPerceptualDuration:(double)duration bounce:(double)bounce velocity:(double)velocity
{
  self->_mass = 1.0;
  self->_velocity = velocity;
  self->_allowsOverdamping = 1;
  v7 = 0.0;
  [UISpringTimingParameters _convertBounce:&v7 toDampingRatio:bounce];
  [UISpringTimingParameters _convertDampingRatio:&self->_mass response:&self->_stiffness toMass:&self->_damping stiffness:v7 damping:duration];
}

- (id)animationForLayer:(id)layer forKey:(id)key forView:(id)view
{
  layerCopy = layer;
  keyCopy = key;
  viewCopy = view;
  v11 = viewCopy;
  if (viewCopy && (*(viewCopy + 91) & 2) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [(UIViewSpringAnimationState *)self _defaultAnimationForKey:keyCopy];
    if ([(UIViewAnimationState *)self _shouldStartFromCurrentStateForLayer:layerCopy key:keyCopy forView:v11])
    {
      presentationLayer = [layerCopy presentationLayer];
      v14 = [presentationLayer valueForKeyPath:keyCopy];
      [v12 setFromValue:v14];
    }

    else
    {
      presentationLayer = [layerCopy valueForKeyPath:keyCopy];
      [v12 setFromValue:presentationLayer];
    }

    [(UIViewAnimationState *)self configureAnimation:v12 forLayer:layerCopy forKey:keyCopy];
    [(UIViewAnimationState *)self setAnimationAttributes:v12 skipDelegateAssignment:0 customCurve:0];
  }

  return v12;
}

+ (id)defaultSpringAnimationForKey:(id)key mass:(double)mass stiffness:(double)stiffness damping:(double)damping velocity:(double)velocity allowsOverdamping:(BOOL)overdamping
{
  overdampingCopy = overdamping;
  keyCopy = key;
  v14 = UIAnimationDragCoefficient();
  v15 = [MEMORY[0x1E69794A8] animationWithKeyPath:keyCopy];

  [v15 setMass:mass];
  [v15 setStiffness:stiffness];
  [v15 setDamping:damping];
  [v15 setVelocity:velocity];
  [v15 setAllowsOverdamping:overdampingCopy];
  if (v14 > 1.0)
  {
    *&v16 = 1.0 / v14;
    [v15 setSpeed:v16];
  }

  return v15;
}

- (void)setupWithDuration:(double)duration delay:(double)delay view:(id)view options:(unint64_t)options factory:(id)factory parentState:(id)state start:(id)start completion:(id)self0
{
  v10.receiver = self;
  v10.super_class = UIViewSpringAnimationState;
  [(UIViewAnimationState *)&v10 setupWithDuration:view delay:options & 0xFFFFFFFFFFF8FFFFLL | 0x30000 view:factory options:state factory:start parentState:completion start:duration completion:delay];
}

- (id)_defaultAnimationForKey:(id)key
{
  keyCopy = key;
  v5 = [objc_opt_class() defaultSpringAnimationForKey:keyCopy mass:self->_allowsOverdamping stiffness:self->_mass damping:self->_stiffness velocity:self->_damping allowsOverdamping:self->_velocity];

  return v5;
}

@end