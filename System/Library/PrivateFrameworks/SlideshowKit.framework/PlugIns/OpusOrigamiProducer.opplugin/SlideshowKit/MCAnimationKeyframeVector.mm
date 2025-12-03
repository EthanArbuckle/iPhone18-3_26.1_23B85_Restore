@interface MCAnimationKeyframeVector
+ (id)keyframeWithVector:(id *)vector atTime:(double)time offsetKind:(int)kind;
- (MCAnimationKeyframeVector)initWithImprint:(id)imprint;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)setVector:(id *)vector;
@end

@implementation MCAnimationKeyframeVector

+ (id)keyframeWithVector:(id *)vector atTime:(double)time offsetKind:(int)kind
{
  v5 = *&kind;
  v8 = objc_alloc_init(MCAnimationKeyframeVector);
  [(MCAnimationKeyframe *)v8 setTimeOffset:time];
  [(MCAnimationKeyframe *)v8 setTimeOffsetKind:v5];
  v10 = *vector;
  [(MCAnimationKeyframeVector *)v8 setVector:&v10];
  return v8;
}

- (MCAnimationKeyframeVector)initWithImprint:(id)imprint
{
  v9.receiver = self;
  v9.super_class = MCAnimationKeyframeVector;
  v4 = [(MCAnimationKeyframe *)&v9 initWithImprint:?];
  if (v4)
  {
    v5 = [objc_msgSend(imprint objectForKey:{@"length", "unsignedCharValue"}];
    v4->mVector.length = v5;
    if (v5)
    {
      v6 = 0;
      do
      {
        [objc_msgSend(imprint objectForKey:{objc_msgSend(@"v0", "stringByAppendingFormat:", @"%d", v6)), "floatValue"}];
        v4->mVector.v[v6++] = v7;
      }

      while (v6 < v4->mVector.length);
    }
  }

  return v4;
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCAnimationKeyframeVector;
  imprint = [(MCAnimationKeyframe *)&v7 imprint];
  [imprint setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKey:{"numberWithUnsignedChar:", self->mVector.length), @"length"}];
  if (self->mVector.length)
  {
    v5 = 0;
    do
    {
      *&v4 = self->mVector.v[v5];
      [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v4), objc_msgSend(@"v0", "stringByAppendingFormat:", @"%d", v5++)}];
    }

    while (v5 < self->mVector.length);
  }

  return imprint;
}

- (void)setVector:(id *)vector
{
  [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
  v5 = *&vector->var0;
  self->mVector.v[3] = vector->var1[3];
  *&self->mVector.length = v5;
  mAnimationPath = self->super.mAnimationPath;

  [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v6.receiver = self;
  v6.super_class = MCAnimationKeyframeVector;
  [(MCAnimationKeyframe *)&v6 _copySelfToSnapshot:?];
  v5 = self->mVector.v[3];
  *(snapshot + 40) = *&self->mVector.length;
  *(snapshot + 14) = v5;
}

@end