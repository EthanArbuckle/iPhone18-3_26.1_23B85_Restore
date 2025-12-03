@interface PRPosterScriptStatement
+ (PRPosterScriptStatement)statementWithDeviceMotion:(uint64_t)motion duration:(_OWORD *)duration;
+ (id)renderingEnvironmentOverrideClasses;
+ (id)statementWithDuration:(double)duration;
+ (id)statementWithRenderingEnvironmentOverrides:(id)overrides duration:(double)duration;
+ (id)statementWithRenderingEvent:(id)event duration:(double)duration;
+ (id)statementWithSignificantEvent:(unint64_t)event significantEventsCounter:(unint64_t)counter duration:(double)duration;
- (NSString)description;
- (PRPosterScriptStatement)init;
- (PRPosterScriptStatement)initWithBSXPCCoder:(id)coder;
- (PRPosterScriptStatement)initWithCoder:(id)coder;
- (PRPosterScriptStatement)initWithRenderingEnvironmentOverrides:(id)overrides renderingEvent:(id)event significantEvent:(unint64_t)significantEvent duration:(double)duration;
- (PRPosterTransition)transition;
- (id)copyWithZone:(_NSZone *)zone;
- (id)renderingOverridesForEnvironment:(id)environment;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterScriptStatement

+ (id)statementWithSignificantEvent:(unint64_t)event significantEventsCounter:(unint64_t)counter duration:(double)duration
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = [PRPosterScriptStatement alloc];
  v13 = @"significantEventsCounter";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:counter];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v11 = [(PRPosterScriptStatement *)v8 initWithRenderingEnvironmentOverrides:v10 renderingEvent:0 significantEvent:event duration:duration];

  return v11;
}

+ (PRPosterScriptStatement)statementWithDeviceMotion:(uint64_t)motion duration:(_OWORD *)duration
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = [PRPosterScriptStatement alloc];
  v13[0] = @"effectiveMotionEffectsMode";
  v13[1] = @"deviceMotionRotation";
  v14[0] = &unk_1F1C6BAD0;
  v7 = duration[1];
  v12[0] = *duration;
  v12[1] = v7;
  v8 = [MEMORY[0x1E69C5110] serializedRepresentationFromRotation:v12];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [(PRPosterScriptStatement *)v6 initWithRenderingEnvironmentOverrides:v9 renderingEvent:0 significantEvent:0 duration:self];

  return v10;
}

+ (id)statementWithRenderingEvent:(id)event duration:(double)duration
{
  eventCopy = event;
  v6 = [PRPosterScriptStatement alloc];
  v7 = [(PRPosterScriptStatement *)v6 initWithRenderingEnvironmentOverrides:MEMORY[0x1E695E0F8] renderingEvent:eventCopy significantEvent:0 duration:duration];

  return v7;
}

+ (id)statementWithDuration:(double)duration
{
  v4 = [PRPosterScriptStatement alloc];
  v5 = [(PRPosterScriptStatement *)v4 initWithRenderingEnvironmentOverrides:MEMORY[0x1E695E0F8] renderingEvent:0 significantEvent:0 duration:duration];

  return v5;
}

+ (id)statementWithRenderingEnvironmentOverrides:(id)overrides duration:(double)duration
{
  overridesCopy = overrides;
  v6 = [[PRPosterScriptStatement alloc] initWithRenderingEnvironmentOverrides:overridesCopy renderingEvent:0 significantEvent:0 duration:duration];

  return v6;
}

- (PRPosterScriptStatement)init
{
  [(PRPosterScriptStatement *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRPosterScriptStatement)initWithRenderingEnvironmentOverrides:(id)overrides renderingEvent:(id)event significantEvent:(unint64_t)significantEvent duration:(double)duration
{
  overridesCopy = overrides;
  eventCopy = event;
  if (!overridesCopy)
  {
    [PRPosterScriptStatement initWithRenderingEnvironmentOverrides:a2 renderingEvent:self significantEvent:? duration:?];
  }

  v18.receiver = self;
  v18.super_class = PRPosterScriptStatement;
  v13 = [(PRPosterScriptStatement *)&v18 init];
  if (v13)
  {
    v14 = [overridesCopy copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v13->_renderingEnvironmentOverrides, v16);

    v13->_duration = duration;
    v13->_significantEvent = significantEvent;
    objc_storeStrong(&v13->_renderingEvent, event);
    if (v13->_duration < 0.0)
    {
      v13->_duration = 1.0;
    }
  }

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __38__PRPosterScriptStatement_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v4 = [streamCopy appendDouble:@"duration" withName:2 decimalPrecision:self->_duration];
  v5 = [streamCopy appendObject:self->_renderingEnvironmentOverrides withName:@"renderingEnvironmentOverrides" skipIfNil:1];
  v6 = [streamCopy appendObject:self->_renderingEvent withName:@"renderingEvent" skipIfNil:1];
  significantEvent = self->_significantEvent;
  if (significantEvent)
  {
    v8 = [streamCopy appendInteger:significantEvent withName:@"significantEvent"];
  }
}

+ (id)renderingEnvironmentOverrideClasses
{
  if (renderingEnvironmentOverrideClasses_onceToken != -1)
  {
    +[PRPosterScriptStatement renderingEnvironmentOverrideClasses];
  }

  v3 = renderingEnvironmentOverrideClasses_renderingEnvironmentOverrideClasses;

  return v3;
}

void __62__PRPosterScriptStatement_renderingEnvironmentOverrideClasses__block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_self();
  v9 = v1;
  v2 = objc_opt_self();
  v10 = v2;
  v3 = objc_opt_self();
  v11 = v3;
  v4 = objc_opt_self();
  v12 = v4;
  v5 = objc_opt_self();
  v13 = v5;
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:7];
  v7 = [v0 setWithArray:{v6, v9, v10, v11, v12, v13, v14}];
  v8 = renderingEnvironmentOverrideClasses_renderingEnvironmentOverrideClasses;
  renderingEnvironmentOverrideClasses_renderingEnvironmentOverrideClasses = v7;
}

- (PRPosterTransition)transition
{
  v3 = objc_alloc_init(PRPosterTransition);
  [(PRPosterTransition *)v3 setSignificantEvent:self->_significantEvent];

  return v3;
}

- (id)renderingOverridesForEnvironment:(id)environment
{
  v14[1] = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  v5 = [kDefaultOverridesForMovies mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  [v8 addEntriesFromDictionary:self->_renderingEnvironmentOverrides];
  if (self->_significantEvent)
  {
    significantEventsCounter = [environmentCopy significantEventsCounter];
    v13 = @"significantEventsCounter";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:significantEventsCounter + 1];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v8 addEntriesFromDictionary:v11];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterScriptStatement allocWithZone:zone];
  renderingEnvironmentOverrides = self->_renderingEnvironmentOverrides;
  renderingEvent = self->_renderingEvent;
  significantEvent = self->_significantEvent;
  duration = self->_duration;

  return [(PRPosterScriptStatement *)v4 initWithRenderingEnvironmentOverrides:renderingEnvironmentOverrides renderingEvent:renderingEvent significantEvent:significantEvent duration:duration];
}

- (void)encodeWithCoder:(id)coder
{
  duration = self->_duration;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_duration" forKey:duration];
  [coderCopy encodeInteger:self->_significantEvent forKey:@"_significantEvent"];
  [coderCopy encodeObject:self->_renderingEvent forKey:@"_renderingEvent"];
  [coderCopy encodeObject:self->_renderingEnvironmentOverrides forKey:@"_renderingEnvironmentOverrides"];
}

- (PRPosterScriptStatement)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"_duration"];
  v6 = v5;
  renderingEnvironmentOverrideClasses = [objc_opt_class() renderingEnvironmentOverrideClasses];
  v8 = [coderCopy decodeObjectOfClasses:renderingEnvironmentOverrideClasses forKey:@"_renderingEnvironmentOverrides"];

  v9 = [coderCopy decodeIntegerForKey:@"_significantEvent"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_renderingEvent"];

  v11 = [(PRPosterScriptStatement *)self initWithRenderingEnvironmentOverrides:v8 renderingEvent:v10 significantEvent:v9 duration:v6];
  return v11;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"_duration" forKey:self->_duration];
  [coderCopy encodeUInt64:self->_significantEvent forKey:@"_significantEvent"];
  [coderCopy encodeObject:self->_renderingEvent forKey:@"_renderingEvent"];
  if ([(NSDictionary *)self->_renderingEnvironmentOverrides count])
  {
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_renderingEnvironmentOverrides requiringSecureCoding:1 error:0];
    if (![v5 length])
    {
      [(PRPosterScriptStatement *)a2 encodeWithBSXPCCoder:?];
    }

    [coderCopy encodeObject:v5 forKey:@"_renderingEnvironmentOverrides"];
  }
}

- (PRPosterScriptStatement)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"_duration"];
  v6 = v5;
  v7 = [coderCopy decodeUInt64ForKey:@"_significantEvent"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_renderingEvent"];
  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"_renderingEnvironmentOverrides"];

  v11 = [v10 length];
  v12 = MEMORY[0x1E695E0F8];
  if (v11)
  {
    v13 = MEMORY[0x1E696ACD0];
    renderingEnvironmentOverrideClasses = [objc_opt_class() renderingEnvironmentOverrideClasses];
    v15 = [v13 unarchivedObjectOfClasses:renderingEnvironmentOverrideClasses fromData:v10 error:0];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v12;
    }

    v12 = v17;
  }

  v18 = [(PRPosterScriptStatement *)self initWithRenderingEnvironmentOverrides:v12 renderingEvent:v8 significantEvent:v7 duration:v6];

  return v18;
}

- (void)initWithRenderingEnvironmentOverrides:(uint64_t)a1 renderingEvent:(uint64_t)a2 significantEvent:duration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRPosterScriptStatement.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"renderingEnvironmentOverrides"}];
}

- (void)encodeWithBSXPCCoder:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[renderingEnvironmentData length] > 0"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRPosterScriptStatement.m";
    v16 = 1024;
    v17 = 184;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end