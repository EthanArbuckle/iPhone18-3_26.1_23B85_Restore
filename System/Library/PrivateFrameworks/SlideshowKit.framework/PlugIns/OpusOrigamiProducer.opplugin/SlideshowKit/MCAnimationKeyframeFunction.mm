@interface MCAnimationKeyframeFunction
+ (id)keyframeWithFunction:(id)function atTime:(double)time offsetKind:(int)kind forDuration:(double)duration;
- (MCAnimationKeyframeFunction)init;
- (MCAnimationKeyframeFunction)initWithImprint:(id)imprint;
- (NSDictionary)functionParameters;
- (NSString)function;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
- (void)setDuration:(double)duration;
- (void)setFunction:(id)function;
- (void)setFunctionParameters:(id)parameters;
- (void)setFunctionTimeFactor:(double)factor;
- (void)setFunctionTimeOffset:(double)offset;
- (void)setInnerEaseInControl:(float)control;
- (void)setInnerEaseOutControl:(float)control;
@end

@implementation MCAnimationKeyframeFunction

+ (id)keyframeWithFunction:(id)function atTime:(double)time offsetKind:(int)kind forDuration:(double)duration
{
  v7 = *&kind;
  v10 = objc_alloc_init(MCAnimationKeyframeFunction);
  [(MCAnimationKeyframe *)v10 setTimeOffset:time];
  [(MCAnimationKeyframe *)v10 setTimeOffsetKind:v7];
  [(MCAnimationKeyframeFunction *)v10 setDuration:duration];
  [(MCAnimationKeyframeFunction *)v10 setFunction:function];

  return v10;
}

- (MCAnimationKeyframeFunction)init
{
  v3.receiver = self;
  v3.super_class = MCAnimationKeyframeFunction;
  result = [(MCAnimationKeyframeFunction *)&v3 init];
  if (result)
  {
    result->mFunctionTimeFactor = 1.0;
    result->mInnerEaseOutControl = 1.0;
  }

  return result;
}

- (MCAnimationKeyframeFunction)initWithImprint:(id)imprint
{
  v15.receiver = self;
  v15.super_class = MCAnimationKeyframeFunction;
  v4 = [(MCAnimationKeyframe *)&v15 initWithImprint:?];
  if (v4)
  {
    [objc_msgSend(imprint objectForKey:{@"duration", "doubleValue"}];
    v4->mDuration = v5;
    v4->mFunction = [imprint objectForKey:@"functionString"];
    v4->mFunctionParameters = [imprint objectForKey:@"parameters"];
    v6 = [imprint objectForKey:@"offset"];
    if (v6)
    {
      [v6 doubleValue];
    }

    else
    {
      v7 = 0.0;
    }

    v4->mFunctionTimeOffset = v7;
    v8 = [imprint objectForKey:@"factor"];
    if (v8)
    {
      [v8 doubleValue];
    }

    else
    {
      v9 = 1.0;
    }

    v4->mFunctionTimeFactor = v9;
    v10 = [imprint objectForKey:@"innerEaseInControl"];
    if (v10)
    {
      [v10 floatValue];
    }

    else
    {
      v11 = 0.0;
    }

    v4->mInnerEaseInControl = v11;
    v12 = [imprint objectForKey:@"innerEaseOutControl"];
    if (v12)
    {
      [v12 floatValue];
    }

    else
    {
      v13 = 1.0;
    }

    v4->mInnerEaseOutControl = v13;
  }

  return v4;
}

- (void)demolish
{
  self->mFunction = 0;

  self->mFunctionParameters = 0;
  v3.receiver = self;
  v3.super_class = MCAnimationKeyframeFunction;
  [(MCAnimationKeyframe *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCAnimationKeyframeFunction;
  imprint = [(MCAnimationKeyframe *)&v7 imprint];
  [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->mDuration), @"duration"}];
  mFunction = self->mFunction;
  if (mFunction)
  {
    [imprint setObject:mFunction forKey:@"functionString"];
  }

  mFunctionParameters = self->mFunctionParameters;
  if (mFunctionParameters)
  {
    [imprint setObject:mFunctionParameters forKey:@"parameters"];
  }

  if (self->mFunctionTimeOffset != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"offset"}];
  }

  if (self->mFunctionTimeFactor != 1.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"factor"}];
  }

  if (self->mInnerEaseInControl != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"innerEaseInControl"}];
  }

  if (self->mInnerEaseOutControl != 1.0)
  {
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"innerEaseOutControl"}];
  }

  return imprint;
}

- (void)setDuration:(double)duration
{
  if (self->mDuration != duration)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mDuration = duration;
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (NSString)function
{
  if ([(MCAnimationKeyframe *)self isSnapshot])
  {
    return self->mFunction;
  }

  objc_sync_enter(self);
  v3 = self->mFunction;
  objc_sync_exit(self);
  return v3;
}

- (void)setFunction:(id)function
{
  if (([function isEqualToString:self->mFunction] & 1) == 0)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    objc_sync_enter(self);

    self->mFunction = [function copy];
    objc_sync_exit(self);
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (NSDictionary)functionParameters
{
  if ([(MCAnimationKeyframe *)self isSnapshot])
  {
    return self->mFunctionParameters;
  }

  objc_sync_enter(self);
  v3 = self->mFunctionParameters;
  objc_sync_exit(self);
  return v3;
}

- (void)setFunctionParameters:(id)parameters
{
  if (([parameters isEqualToDictionary:self->mFunctionParameters] & 1) == 0)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    objc_sync_enter(self);

    self->mFunctionParameters = parameters;
    objc_sync_exit(self);
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setFunctionTimeOffset:(double)offset
{
  if (self->mFunctionTimeOffset != offset)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mFunctionTimeOffset = offset;
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setFunctionTimeFactor:(double)factor
{
  if (self->mFunctionTimeFactor != factor)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mFunctionTimeFactor = factor;
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setInnerEaseInControl:(float)control
{
  if (self->mInnerEaseInControl != control)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mInnerEaseInControl = control;
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setInnerEaseOutControl:(float)control
{
  if (self->mInnerEaseOutControl != control)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mInnerEaseOutControl = control;
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (id)description
{
  mFunction = self->mFunction;
  [(MCAnimationKeyframe *)self timeOffset];
  v5 = v4;
  [(MCAnimationKeyframe *)self timeOffset];
  return [NSString stringWithFormat:@"function '%@' from %f to %f with time mapping (%f, %f), easeIn %f and easeOut %f", mFunction, v5, v6 + self->mDuration, *&self->mFunctionTimeOffset, *&self->mFunctionTimeFactor, self->mInnerEaseInControl, self->mInnerEaseOutControl];
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = MCAnimationKeyframeFunction;
  [(MCAnimationKeyframe *)&v7 _copySelfToSnapshot:snapshot];
  *(snapshot + 6) = *&self->mDuration;
  mFunction = self->mFunction;
  if (mFunction)
  {
    *(snapshot + 7) = [(NSString *)mFunction copy];
  }

  mFunctionParameters = self->mFunctionParameters;
  if (mFunctionParameters)
  {
    *(snapshot + 8) = [(NSDictionary *)mFunctionParameters copy];
  }

  *(snapshot + 9) = *&self->mFunctionTimeOffset;
  *(snapshot + 10) = *&self->mFunctionTimeFactor;
  *(snapshot + 10) = LODWORD(self->mInnerEaseInControl);
  *(snapshot + 11) = LODWORD(self->mInnerEaseOutControl);
  objc_sync_exit(self);
}

@end