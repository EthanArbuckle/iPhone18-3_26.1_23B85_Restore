@interface MCAnimationKeyframe
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (MCAnimationKeyframe)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)setPostControl:(float)a3;
- (void)setPreControl:(float)a3;
- (void)setTimeOffset:(double)a3;
- (void)setTimeOffsetKind:(int)a3;
@end

@implementation MCAnimationKeyframe

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"timing"])
  {
    return [NSSet setWithObjects:@"timeOffset", @"timeOffsetKind", @"timeOffsetArgument", @"preControl", @"postControl", 0];
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MCAnimationKeyframe;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", a3);
}

- (MCAnimationKeyframe)initWithImprint:(id)a3
{
  v13.receiver = self;
  v13.super_class = MCAnimationKeyframe;
  v4 = [(MCObjectLight *)&v13 initWithImprint:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"timeOffset"];
    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v6 = 0.0;
    }

    v4->mTimeOffset = v6;
    v4->mTimeOffsetKind = [objc_msgSend(a3 objectForKey:{@"timeOffsetKind", "intValue"}];
    v7 = [a3 objectForKey:@"preControl"];
    v8 = 0.0;
    v9 = 0.0;
    if (v7)
    {
      [v7 floatValue];
    }

    v4->mPreControl = v9;
    v10 = [a3 objectForKey:@"postControl"];
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
  v3 = [(MCObjectLight *)&v5 imprint];
  if (self->mTimeOffset != 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"timeOffset"}];
  }

  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->mTimeOffsetKind), @"timeOffsetKind"}];
  if (self->mPreControl != 0.0)
  {
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"preControl"}];
  }

  if (self->mPostControl != 0.0)
  {
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:"), @"postControl"}];
  }

  return v3;
}

- (void)setTimeOffset:(double)a3
{
  if (self->mTimeOffset != a3)
  {
    [(MCAnimationPathKeyframed *)self->mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mTimeOffset = a3;
    mAnimationPath = self->mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setTimeOffsetKind:(int)a3
{
  if (self->mTimeOffsetKind != a3)
  {
    [(MCAnimationPathKeyframed *)self->mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mTimeOffsetKind = a3;
    mAnimationPath = self->mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setPreControl:(float)a3
{
  if (self->mPreControl != a3)
  {
    [(MCAnimationPathKeyframed *)self->mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mPreControl = a3;
    mAnimationPath = self->mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setPostControl:(float)a3
{
  if (self->mPostControl != a3)
  {
    [(MCAnimationPathKeyframed *)self->mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mPostControl = a3;
    mAnimationPath = self->mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (id)description
{
  v3 = [(MCAnimationKeyframe *)self timeOffsetKind];
  [(MCAnimationKeyframe *)self timeOffset];
  v5 = v4;
  [(MCAnimationKeyframe *)self preControl];
  v7 = v6;
  [(MCAnimationKeyframe *)self postControl];
  return [NSString stringWithFormat:@"MCAnimationKeyframe: self=%p, timeOffsetKind=%d, timeOffset=%.3f, pretangent=%.3f, posttangent=%.3f", self, v3, v5, *&v7, v8];
}

- (void)_copySelfToSnapshot:(id)a3
{
  objc_sync_enter(self);
  *(a3 + 4) = *&self->mTimeOffset;
  *(a3 + 5) = self->mTimeOffsetKind;
  *(a3 + 6) = LODWORD(self->mPreControl);
  *(a3 + 7) = LODWORD(self->mPostControl);
  *(a3 + 16) = 1;

  objc_sync_exit(self);
}

@end