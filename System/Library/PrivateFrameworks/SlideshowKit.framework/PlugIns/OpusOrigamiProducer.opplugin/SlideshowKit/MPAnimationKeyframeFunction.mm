@interface MPAnimationKeyframeFunction
+ (id)keyframeFunctionWithFunction:(id)a3 atTime:(double)a4 offsetType:(unint64_t)a5 withDuration:(double)a6;
+ (id)keyframeFunctionWithFunction:(id)a3 atTime:(double)a4 withDuration:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initKeyframeFunctionWithFunction:(id)a3 atTime:(double)a4 offsetType:(unint64_t)a5 withDuration:(double)a6;
- (void)dealloc;
- (void)setDuration:(double)a3;
- (void)setFunction:(id)a3;
- (void)setFunctionParameters:(id)a3;
- (void)setFunctionTimeFactor:(double)a3;
- (void)setFunctionTimeOffset:(double)a3;
- (void)setInnerEaseInControl:(double)a3;
- (void)setInnerEaseOutControl:(double)a3;
@end

@implementation MPAnimationKeyframeFunction

+ (id)keyframeFunctionWithFunction:(id)a3 atTime:(double)a4 withDuration:(double)a5
{
  v5 = [[a1 alloc] initKeyframeFunctionWithFunction:a3 atTime:0 offsetType:a4 withDuration:a5];

  return v5;
}

+ (id)keyframeFunctionWithFunction:(id)a3 atTime:(double)a4 offsetType:(unint64_t)a5 withDuration:(double)a6
{
  v6 = [[a1 alloc] initKeyframeFunctionWithFunction:a3 atTime:a5 offsetType:a4 withDuration:a6];

  return v6;
}

- (id)initKeyframeFunctionWithFunction:(id)a3 atTime:(double)a4 offsetType:(unint64_t)a5 withDuration:(double)a6
{
  v13.receiver = self;
  v13.super_class = MPAnimationKeyframeFunction;
  v10 = [(MPAnimationKeyframe *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_duration = a6;
    v10->_function = a3;
    v11->_functionTimeOffset = 0.0;
    v11->_functionTimeFactor = 1.0;
    v11->_innerEaseInControl = 0.0;
    v11->_innerEaseOutControl = 0.0;
    v11->super._time = a4;
    v11->super._offsetType = a5;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPAnimationKeyframeFunction;
  v4 = [(MPAnimationKeyframe *)&v6 copyWithZone:a3];
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

- (void)setDuration:(double)a3
{
  self->_duration = a3;
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
      v6 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [v6 duplicateAnimationPaths];
    }
  }
}

- (void)setFunctionTimeOffset:(double)a3
{
  self->_functionTimeOffset = a3;
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
      v6 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [v6 duplicateAnimationPaths];
    }
  }
}

- (void)setFunctionTimeFactor:(double)a3
{
  self->_functionTimeFactor = a3;
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
      v6 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [v6 duplicateAnimationPaths];
    }
  }
}

- (void)setInnerEaseInControl:(double)a3
{
  self->_innerEaseInControl = a3;
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    *&a3 = a3;
    [(MCAnimationKeyframe *)keyframe setInnerEaseInControl:a3];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [v6 duplicateAnimationPaths];
    }
  }
}

- (void)setInnerEaseOutControl:(double)a3
{
  self->_innerEaseOutControl = a3;
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    *&a3 = a3;
    [(MCAnimationKeyframe *)keyframe setInnerEaseOutControl:a3];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [v6 duplicateAnimationPaths];
    }
  }
}

- (void)setFunction:(id)a3
{
  function = self->_function;
  if (function)
  {

    self->_function = 0;
  }

  self->_function = [a3 copy];
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    [(MCAnimationKeyframe *)keyframe setFunction:a3];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [v8 duplicateAnimationPaths];
    }
  }
}

- (void)setFunctionParameters:(id)a3
{
  functionParameters = self->_functionParameters;
  if (functionParameters)
  {

    self->_functionParameters = 0;
  }

  self->_functionParameters = [a3 copy];
  keyframe = self->super._keyframe;
  if (keyframe)
  {
    [(MCAnimationKeyframe *)keyframe setFunctionParameters:a3];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [v8 duplicateAnimationPaths];
    }
  }
}

@end