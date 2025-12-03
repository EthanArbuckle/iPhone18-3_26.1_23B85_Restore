@interface MCAnimationKeyframe
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (MCAnimationKeyframe)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)setPostControl:(float)control;
- (void)setPreControl:(float)control;
- (void)setTimeOffset:(double)offset;
- (void)setTimeOffsetKind:(int)kind;
@end

@implementation MCAnimationKeyframe

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"timing"])
  {
    return [NSSet setWithObjects:@"timeOffset", @"timeOffsetKind", @"timeOffsetArgument", @"preControl", @"postControl", 0];
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MCAnimationKeyframe;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", key);
}

- (MCAnimationKeyframe)initWithImprint:(id)imprint
{
  v13.receiver = self;
  v13.super_class = MCAnimationKeyframe;
  v4 = [(MCObjectLight *)&v13 initWithImprint:?];
  if (v4)
  {
    v5 = [imprint objectForKey:@"timeOffset"];
    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v6 = 0.0;
    }

    v4->mTimeOffset = v6;
    v4->mTimeOffsetKind = [objc_msgSend(imprint objectForKey:{@"timeOffsetKind", "intValue"}];
    v7 = [imprint objectForKey:@"preControl"];
    v8 = 0.0;
    v9 = 0.0;
    if (v7)
    {
      [v7 floatValue];
    }

    v4->mPreControl = v9;
    v10 = [imprint objectForKey:@"postControl"];
    if (v10)
    {
      [v10 floatValue];
      v8 = v11;
    }

    v4->mPostControl = v8;
  }

  return v4;
}

- (id)imprint
{
  v5.receiver = self;
  v5.super_class = MCAnimationKeyframe;
  imprint = [(MCObjectLight *)&v5 imprint];
  if (self->mTimeOffset != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"timeOffset"}];
  }

  [imprint setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->mTimeOffsetKind), @"timeOffsetKind"}];
  if (self->mPreControl != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"preControl"}];
  }

  if (self->mPostControl != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"postControl"}];
  }

  return imprint;
}

- (void)setTimeOffset:(double)offset
{
  if (self->mTimeOffset != offset)
  {
    [(MCAnimationPathKeyframed *)self->mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mTimeOffset = offset;
    mAnimationPath = self->mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setTimeOffsetKind:(int)kind
{
  if (self->mTimeOffsetKind != kind)
  {
    [(MCAnimationPathKeyframed *)self->mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mTimeOffsetKind = kind;
    mAnimationPath = self->mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setPreControl:(float)control
{
  if (self->mPreControl != control)
  {
    [(MCAnimationPathKeyframed *)self->mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mPreControl = control;
    mAnimationPath = self->mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setPostControl:(float)control
{
  if (self->mPostControl != control)
  {
    [(MCAnimationPathKeyframed *)self->mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mPostControl = control;
    mAnimationPath = self->mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (id)description
{
  timeOffsetKind = [(MCAnimationKeyframe *)self timeOffsetKind];
  [(MCAnimationKeyframe *)self timeOffset];
  v5 = v4;
  [(MCAnimationKeyframe *)self preControl];
  v7 = v6;
  [(MCAnimationKeyframe *)self postControl];
  return [NSString stringWithFormat:@"MCAnimationKeyframe: self=%p, timeOffsetKind=%d, timeOffset=%.3f, pretangent=%.3f, posttangent=%.3f", self, timeOffsetKind, v5, *&v7, v8];
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  objc_sync_enter(self);
  *(snapshot + 4) = *&self->mTimeOffset;
  *(snapshot + 5) = self->mTimeOffsetKind;
  *(snapshot + 6) = LODWORD(self->mPreControl);
  *(snapshot + 7) = LODWORD(self->mPostControl);
  *(snapshot + 16) = 1;

  objc_sync_exit(self);
}

@end