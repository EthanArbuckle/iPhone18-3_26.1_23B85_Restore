@interface MCAnimationKeyframe1D
+ (id)keyframeWithScalar:(float)scalar atTime:(double)time offsetKind:(int)kind;
- (MCAnimationKeyframe1D)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)setValue:(float)value;
@end

@implementation MCAnimationKeyframe1D

+ (id)keyframeWithScalar:(float)scalar atTime:(double)time offsetKind:(int)kind
{
  v5 = *&kind;
  v8 = objc_alloc_init(MCAnimationKeyframe1D);
  [(MCAnimationKeyframe *)v8 setTimeOffset:time];
  [(MCAnimationKeyframe *)v8 setTimeOffsetKind:v5];
  *&v9 = scalar;
  [(MCAnimationKeyframe1D *)v8 setValue:v9];

  return v8;
}

- (MCAnimationKeyframe1D)initWithImprint:(id)imprint
{
  v7.receiver = self;
  v7.super_class = MCAnimationKeyframe1D;
  v4 = [(MCAnimationKeyframe *)&v7 initWithImprint:?];
  if (v4)
  {
    [objc_msgSend(imprint objectForKey:{@"value", "floatValue"}];
    v4->mValue = v5;
  }

  return v4;
}

- (id)imprint
{
  v6.receiver = self;
  v6.super_class = MCAnimationKeyframe1D;
  imprint = [(MCAnimationKeyframe *)&v6 imprint];
  *&v4 = self->mValue;
  [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v4), @"value"}];
  return imprint;
}

- (void)setValue:(float)value
{
  if (self->mValue != value)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    self->mValue = value;
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (id)description
{
  mValue = self->mValue;
  [(MCAnimationKeyframe *)self timeOffset];
  return [NSString stringWithFormat:@"%f at %f", *&mValue, v3];
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v5.receiver = self;
  v5.super_class = MCAnimationKeyframe1D;
  [(MCAnimationKeyframe *)&v5 _copySelfToSnapshot:?];
  *(snapshot + 10) = LODWORD(self->mValue);
}

@end