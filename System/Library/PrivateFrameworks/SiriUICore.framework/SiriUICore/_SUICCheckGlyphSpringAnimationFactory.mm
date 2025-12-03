@interface _SUICCheckGlyphSpringAnimationFactory
+ (double)defaultDuration;
+ (id)springAnimationWithKeyPath:(id)path velocity:(double)velocity;
- (_SUICCheckGlyphSpringAnimationFactory)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping velocity:(double)velocity;
- (_SUICCheckGlyphSpringAnimationFactory)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping velocity:(double)velocity timing:(id)timing;
- (_SUICCheckGlyphSpringAnimationFactory)initWithVelocity:(double)velocity;
- (id)_springAnimationWithKeyPath:(id)path;
- (id)springAnimationWithKeyPath:(id)path;
- (void)_updateDurationIfNecessary;
- (void)dealloc;
- (void)setDamping:(double)damping;
- (void)setMass:(double)mass;
- (void)setStiffness:(double)stiffness;
- (void)setVelocity:(double)velocity;
@end

@implementation _SUICCheckGlyphSpringAnimationFactory

+ (double)defaultDuration
{
  if (_SUICInitializeStaticVariables_onceToken != -1)
  {
    _SUICSpringAnimationSolveForInput_cold_1();
  }

  return *&_SUICDefaultSpringAnimationDuration;
}

+ (id)springAnimationWithKeyPath:(id)path velocity:(double)velocity
{
  pathCopy = path;
  if (_SUICInitializeStaticVariables_onceToken != -1)
  {
    _SUICSpringAnimationSolveForInput_cold_1();
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v6 = _SUICDefaultSpringAnimationFactoryQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___SUICCheckGlyphSpringAnimationFactory_springAnimationWithKeyPath_velocity___block_invoke;
  block[3] = &unk_1E81E7AE0;
  velocityCopy = velocity;
  v11 = pathCopy;
  v12 = &v14;
  v7 = pathCopy;
  dispatch_sync(v6, block);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (_SUICCheckGlyphSpringAnimationFactory)initWithVelocity:(double)velocity
{
  defaultTimingFunction = [objc_opt_class() defaultTimingFunction];
  v6 = [(_SUICCheckGlyphSpringAnimationFactory *)self initWithVelocity:defaultTimingFunction timing:velocity];

  return v6;
}

- (_SUICCheckGlyphSpringAnimationFactory)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping velocity:(double)velocity
{
  defaultTimingFunction = [objc_opt_class() defaultTimingFunction];
  v12 = [(_SUICCheckGlyphSpringAnimationFactory *)self initWithMass:defaultTimingFunction stiffness:mass damping:stiffness velocity:damping timing:velocity];

  return v12;
}

- (_SUICCheckGlyphSpringAnimationFactory)initWithMass:(double)mass stiffness:(double)stiffness damping:(double)damping velocity:(double)velocity timing:(id)timing
{
  timingCopy = timing;
  v17.receiver = self;
  v17.super_class = _SUICCheckGlyphSpringAnimationFactory;
  v14 = [(_SUICCheckGlyphSpringAnimationFactory *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_mass = mass;
    v14->_stiffness = stiffness;
    v14->_damping = damping;
    v14->_velocity = velocity;
    objc_storeStrong(&v14->_timing, timing);
    v15->_needsDurationUpdate = 1;
  }

  return v15;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _SUICCheckGlyphSpringAnimationFactory;
  [(_SUICCheckGlyphSpringAnimationFactory *)&v2 dealloc];
}

- (id)springAnimationWithKeyPath:(id)path
{
  v3 = [(_SUICCheckGlyphSpringAnimationFactory *)self _springAnimationWithKeyPath:path];
  [v3 setAdditive:1];

  return v3;
}

- (id)_springAnimationWithKeyPath:(id)path
{
  v4 = [MEMORY[0x1E69794A8] animationWithKeyPath:path];
  [v4 setMass:self->_mass];
  [v4 setStiffness:self->_stiffness];
  [v4 setDamping:self->_damping];
  [v4 setVelocity:self->_velocity];
  [v4 setTimingFunction:self->_timing];
  [v4 setFillMode:*MEMORY[0x1E69797E0]];
  [v4 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  [(_SUICCheckGlyphSpringAnimationFactory *)self duration];
  [v4 setDuration:?];

  return v4;
}

- (void)_updateDurationIfNecessary
{
  if (self->_needsDurationUpdate)
  {
    self->_needsDurationUpdate = 0;
    v5 = [(_SUICCheckGlyphSpringAnimationFactory *)self _springAnimationWithKeyPath:0];
    [v5 durationForEpsilon:0.001];
    self->_duration = v4;
  }
}

- (void)setMass:(double)mass
{
  if (self->_mass != mass)
  {
    self->_mass = mass;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setStiffness:(double)stiffness
{
  if (self->_stiffness != stiffness)
  {
    self->_stiffness = stiffness;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setDamping:(double)damping
{
  if (self->_damping != damping)
  {
    self->_damping = damping;
    self->_needsDurationUpdate = 1;
  }
}

- (void)setVelocity:(double)velocity
{
  if (self->_velocity != velocity)
  {
    self->_velocity = velocity;
    self->_needsDurationUpdate = 1;
  }
}

@end