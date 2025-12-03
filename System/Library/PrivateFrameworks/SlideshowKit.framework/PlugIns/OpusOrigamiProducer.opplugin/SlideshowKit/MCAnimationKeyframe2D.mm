@interface MCAnimationKeyframe2D
+ (id)keyframeWithPoint:(CGPoint)point atTime:(double)time offsetKind:(int)kind;
- (CGPoint)c1;
- (CGPoint)c2;
- (CGPoint)point;
- (MCAnimationKeyframe2D)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)setC1:(CGPoint)c1;
- (void)setC2:(CGPoint)c2;
- (void)setPoint:(CGPoint)point;
@end

@implementation MCAnimationKeyframe2D

+ (id)keyframeWithPoint:(CGPoint)point atTime:(double)time offsetKind:(int)kind
{
  v5 = *&kind;
  y = point.y;
  x = point.x;
  v9 = objc_alloc_init(MCAnimationKeyframe2D);
  [(MCAnimationKeyframe *)v9 setTimeOffset:time];
  [(MCAnimationKeyframe *)v9 setTimeOffsetKind:v5];
  [(MCAnimationKeyframe2D *)v9 setC2:x, y];
  [(MCAnimationKeyframe2D *)v9 setC1:x, y];
  [(MCAnimationKeyframe2D *)v9 setPoint:x, y];

  return v9;
}

- (MCAnimationKeyframe2D)initWithImprint:(id)imprint
{
  v24.receiver = self;
  v24.super_class = MCAnimationKeyframe2D;
  v4 = [(MCAnimationKeyframe *)&v24 initWithImprint:?];
  if (v4)
  {
    v5 = [imprint objectForKey:@"pointX"];
    v6 = 0.0;
    v7 = 0.0;
    if (v5)
    {
      [v5 floatValue];
      v7 = v8;
    }

    v4->mPoint.x = v7;
    v9 = [imprint objectForKey:@"pointY"];
    if (v9)
    {
      [v9 floatValue];
      v6 = v10;
    }

    v4->mPoint.y = v6;
    v11 = [imprint objectForKey:@"c1X"];
    v12 = 0.0;
    v13 = 0.0;
    if (v11)
    {
      [v11 floatValue];
      v13 = v14;
    }

    v4->mC1.x = v13;
    v15 = [imprint objectForKey:@"c1Y"];
    if (v15)
    {
      [v15 floatValue];
      v12 = v16;
    }

    v4->mC1.y = v12;
    v17 = [imprint objectForKey:@"c2X"];
    v18 = 0.0;
    v19 = 0.0;
    if (v17)
    {
      [v17 floatValue];
      v19 = v20;
    }

    v4->mC2.x = v19;
    v21 = [imprint objectForKey:@"c2Y"];
    if (v21)
    {
      [v21 floatValue];
      v18 = v22;
    }

    v4->mC2.y = v18;
  }

  return v4;
}

- (id)imprint
{
  v12.receiver = self;
  v12.super_class = MCAnimationKeyframe2D;
  imprint = [(MCAnimationKeyframe *)&v12 imprint];
  x = self->mPoint.x;
  if (x != 0.0)
  {
    *&x = x;
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", x), @"pointX"}];
  }

  y = self->mPoint.y;
  if (y != 0.0)
  {
    *&y = y;
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", y), @"pointY"}];
  }

  v6 = self->mC1.x;
  if (v6 != 0.0)
  {
    *&v6 = v6;
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"c1X"}];
  }

  v7 = self->mC1.y;
  if (v7 != 0.0)
  {
    *&v7 = v7;
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v7), @"c1Y"}];
  }

  p_mC2 = &self->mC2;
  v9 = p_mC2->x;
  if (p_mC2->x != 0.0)
  {
    *&v9 = v9;
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v9), @"c2X"}];
  }

  v10 = p_mC2->y;
  if (v10 != 0.0)
  {
    *&v10 = v10;
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v10), @"c2Y"}];
  }

  return imprint;
}

- (void)setPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  p_mPoint = &self->mPoint;
  if (point.x != self->mPoint.x || point.y != self->mPoint.y)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    p_mPoint->x = x;
    p_mPoint->y = y;
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setC1:(CGPoint)c1
{
  y = c1.y;
  x = c1.x;
  p_mC1 = &self->mC1;
  if (c1.x != self->mC1.x || c1.y != self->mC1.y)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    p_mC1->x = x;
    p_mC1->y = y;
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (void)setC2:(CGPoint)c2
{
  y = c2.y;
  x = c2.x;
  p_mC2 = &self->mC2;
  if (c2.x != self->mC2.x || c2.y != self->mC2.y)
  {
    [(MCAnimationPathKeyframed *)self->super.mAnimationPath willChangeValueForKey:@"keyframes"];
    p_mC2->x = x;
    p_mC2->y = y;
    mAnimationPath = self->super.mAnimationPath;

    [(MCAnimationPathKeyframed *)mAnimationPath didChangeValueForKey:@"keyframes"];
  }
}

- (id)description
{
  x = self->mPoint.x;
  y = self->mPoint.y;
  [(MCAnimationKeyframe *)self timeOffset];
  return [NSString stringWithFormat:@"(%f, %f) at %f (c1=(%f, %f), c2=(%f, %f))", *&x, *&y, v5, *&self->mC1.x, *&self->mC1.y, *&self->mC2.x, *&self->mC2.y];
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v5.receiver = self;
  v5.super_class = MCAnimationKeyframe2D;
  [(MCAnimationKeyframe *)&v5 _copySelfToSnapshot:?];
  *(snapshot + 40) = self->mPoint;
  *(snapshot + 56) = self->mC1;
  *(snapshot + 72) = self->mC2;
}

- (CGPoint)point
{
  x = self->mPoint.x;
  y = self->mPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)c1
{
  x = self->mC1.x;
  y = self->mC1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)c2
{
  x = self->mC2.x;
  y = self->mC2.y;
  result.y = y;
  result.x = x;
  return result;
}

@end