@interface MCAnimationKeyframeVector
+ (id)keyframeWithVector:(id *)a3 atTime:(double)a4 offsetKind:(int)a5;
- (MCAnimationKeyframeVector)initWithImprint:(id)a3;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
- (void)setVector:(id *)a3;
@end

@implementation MCAnimationKeyframeVector

+ (id)keyframeWithVector:(id *)a3 atTime:(double)a4 offsetKind:(int)a5
{
  v5 = *&a5;
  v8 = objc_alloc_init(MCAnimationKeyframeVector);
  [(MCAnimationKeyframe *)v8 setTimeOffset:a4];
  [(MCAnimationKeyframe *)v8 setTimeOffsetKind:v5];
  v10 = *a3;
  [(MCAnimationKeyframeVector *)v8 setVector:&v10];
  return v8;
}

- (MCAnimationKeyframeVector)initWithImprint:(id)a3
{
  v9.receiver = self;
  v9.super_class = MCAnimationKeyframeVector;
  v4 = [(MCAnimationKeyframe *)&v9 initWithImprint:?];
  if (v4)
  {
    v5 = [objc_msgSend(a3 objectForKey:{@"length", "unsignedCharValue"}];
    v4->mVector.length = v5;
    if (v5)
    {
      v6 = 0;
      do
      {
        [objc_msgSend(a3 objectForKey:{objc_msgSend(@"v0", "stringByAppendingFormat:", @"%d", v6)), "floatValue"}];
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
  v3 = [(MCAnimationKeyframe *)&v7 imprint];
  [v3 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKey:{"numberWithUnsignedChar:", self->mVector.length), @"length"}];
  if (self->mVector.length)
  {
    v5 = 0;
    do
    {
      *&v4 = self->mVector.v[v5];
      [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v4), objc_msgSend(@"v0", "stringByAppendingFormat:", @"%d", v5++)}];
    }

    while (v5 < self->mVector.length);
  }

  return v3;
}

- (void)setVector:(id *)a3
{
  [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
  v5 = *&a3->var0;
  self->mVector.v[3] = a3->var1[3];
  *&self->mVector.length = v5;
  mAnimationPath = self->super.mAnimationPath;

  [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
}

- (void)_copySelfToSnapshot:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCAnimationKeyframeVector;
  [(MCAnimationKeyframe *)&v6 _copySelfToSnapshot:?];
  v5 = self->mVector.v[3];
  *(a3 + 40) = *&self->mVector.length;
  *(a3 + 14) = v5;
}

@end