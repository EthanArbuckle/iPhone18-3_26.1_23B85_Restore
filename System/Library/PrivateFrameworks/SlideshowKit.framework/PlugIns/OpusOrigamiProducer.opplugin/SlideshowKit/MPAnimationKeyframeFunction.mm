@interface MPAnimationKeyframeFunction
+ (id)keyframeFunctionWithFunction:(id)function atTime:(double)time offsetType:(unint64_t)type withDuration:(double)duration;
+ (id)keyframeFunctionWithFunction:(id)function atTime:(double)time withDuration:(double)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initKeyframeFunctionWithFunction:(id)function atTime:(double)time offsetType:(unint64_t)type withDuration:(double)duration;
- (void)dealloc;
- (void)setDuration:(double)duration;
- (void)setFunction:(id)function;
- (void)setFunctionParameters:(id)parameters;
- (void)setFunctionTimeFactor:(double)factor;
- (void)setFunctionTimeOffset:(double)offset;
- (void)setInnerEaseInControl:(double)control;
- (void)setInnerEaseOutControl:(double)control;
@end

@implementation MPAnimationKeyframeFunction

+ (id)keyframeFunctionWithFunction:(id)function atTime:(double)time withDuration:(double)duration
{
  v5 = [[self alloc] initKeyframeFunctionWithFunction:function atTime:0 offsetType:time withDuration:duration];

  return v5;
}

+ (id)keyframeFunctionWithFunction:(id)function atTime:(double)time offsetType:(unint64_t)type withDuration:(double)duration
{
  v6 = [[self alloc] initKeyframeFunctionWithFunction:function atTime:type offsetType:time withDuration:duration];

  return v6;
}

- (id)initKeyframeFunctionWithFunction:(id)function atTime:(double)time offsetType:(unint64_t)type withDuration:(double)duration
{
  v13.receiver = self;
  v13.super_class = MPAnimationKeyframeFunction;
  v10 = [(MPAnimationKeyframe *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_duration = duration;
    v10->_function = function;
    v11->_functionTimeOffset = 0.0;
    v11->_functionTimeFactor = 1.0;
    v11->_innerEaseInControl = 0.0;
    v11->_innerEaseOutControl = 0.0;
    v11->super._time = time;
    v11->super._offsetType = type;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPAnimationKeyframeFunction;
  v4 = [(MPAnimationKeyframe *)&v6 copyWithZone:zone];
  [v4 setFunction:self->_function];
  [v4 setFunctionParameters:{-[NSDictionary copy](self->_functionParameters, "copy")}];
  [v4 setDuration:self->_duration];
  [v4 setFunctionTimeOffset:self->_functionTimeOffset];
  [v4 setFunctionTimeFactor:self->_functionTimeFactor];
  [v4 setInnerEaseInControl:self->_innerEaseInControl];
  [v4 setInnerEaseOutControl:self->_innerEaseOutControl];
  return v4;
}

- (void)dealloc
{
  self->_function = 0;

  self->_functionParameters = 0;
  v3.receiver = self;
  v3.super_class = MPAnimationKeyframeFunction;
  [(MPAnimationKeyframe *)&v3 dealloc];
}

- (id)description
{
  v3 = [NSString stringWithFormat:@"================================ Keyframe1D ====================================\n"];
  [(MPAnimationKeyframe *)self time];
  v5 = [[(NSString *)v3 stringByAppendingFormat:@"\t                          Time: %f\n" stringByAppendingFormat:"stringByAppendingFormat:", @"\t                        Offset: %f\n", [(MPAnimationKeyframe *)self offsetType]];
  if (self->super._keyframe)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [(NSString *)v5 stringByAppendingFormat:@"\t               Has MCKeyframe: %@\n", v6];
}

- (void)setDuration:(double)duration
{
  self->_duration = duration;
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    [(MCAnimationKeyframe *)keyframe setDuration:?];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [animatedParent duplicateAnimationPaths];
    }
  }
}

- (void)setFunctionTimeOffset:(double)offset
{
  self->_functionTimeOffset = offset;
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    [(MCAnimationKeyframe *)keyframe setFunctionTimeOffset:?];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [animatedParent duplicateAnimationPaths];
    }
  }
}

- (void)setFunctionTimeFactor:(double)factor
{
  self->_functionTimeFactor = factor;
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    [(MCAnimationKeyframe *)keyframe setFunctionTimeFactor:?];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [animatedParent duplicateAnimationPaths];
    }
  }
}

- (void)setInnerEaseInControl:(double)control
{
  self->_innerEaseInControl = control;
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    *&control = control;
    [(MCAnimationKeyframe *)keyframe setInnerEaseInControl:control];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [animatedParent duplicateAnimationPaths];
    }
  }
}

- (void)setInnerEaseOutControl:(double)control
{
  self->_innerEaseOutControl = control;
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    *&control = control;
    [(MCAnimationKeyframe *)keyframe setInnerEaseOutControl:control];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [animatedParent duplicateAnimationPaths];
    }
  }
}

- (void)setFunction:(id)function
{
  function = self->_function;
  if (function)
  {

    self->_function = 0;
  }

  self->_function = [function copy];
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    [(MCAnimationKeyframe *)keyframe setFunction:function];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [animatedParent duplicateAnimationPaths];
    }
  }
}

- (void)setFunctionParameters:(id)parameters
{
  functionParameters = self->_functionParameters;
  if (functionParameters)
  {

    self->_functionParameters = 0;
  }

  self->_functionParameters = [parameters copy];
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    [(MCAnimationKeyframe *)keyframe setFunctionParameters:parameters];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [animatedParent duplicateAnimationPaths];
    }
  }
}

@end