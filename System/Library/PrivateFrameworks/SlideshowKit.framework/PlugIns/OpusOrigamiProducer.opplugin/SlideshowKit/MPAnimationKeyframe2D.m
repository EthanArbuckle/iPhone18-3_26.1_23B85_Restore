@interface MPAnimationKeyframe2D
+ (id)keyframe2DWithPoint:(CGPoint)a3 atTime:(double)a4;
+ (id)keyframe2DWithPoint:(CGPoint)a3 atTime:(double)a4 offsetType:(unint64_t)a5;
- (CGPoint)point;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initKeyframe2DWithPoint:(CGPoint)a3 atTime:(double)a4 offsetType:(unint64_t)a5;
- (void)setPoint:(CGPoint)a3;
@end

@implementation MPAnimationKeyframe2D

+ (id)keyframe2DWithPoint:(CGPoint)a3 atTime:(double)a4
{
  v4 = [[a1 alloc] initKeyframe2DWithPoint:0 atTime:a3.x offsetType:{a3.y, a4}];

  return v4;
}

+ (id)keyframe2DWithPoint:(CGPoint)a3 atTime:(double)a4 offsetType:(unint64_t)a5
{
  v5 = [[a1 alloc] initKeyframe2DWithPoint:a5 atTime:a3.x offsetType:{a3.y, a4}];

  return v5;
}

- (id)initKeyframe2DWithPoint:(CGPoint)a3 atTime:(double)a4 offsetType:(unint64_t)a5
{
  y = a3.y;
  x = a3.x;
  v10.receiver = self;
  v10.super_class = MPAnimationKeyframe2D;
  result = [(MPAnimationKeyframe *)&v10 init];
  if (result)
  {
    *(result + 8) = x;
    *(result + 9) = y;
    *(result + 4) = a4;
    *(result + 5) = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPAnimationKeyframe2D;
  v4 = [(MPAnimationKeyframe *)&v6 copyWithZone:a3];
  [v4 setPoint:{self->_point.x, self->_point.y}];
  return v4;
}

- (id)description
{
  v3 = [NSString stringWithFormat:@"================================ Keyframe2D ====================================\n"];
  [(MPAnimationKeyframe *)self time];
  v5 = [[(NSString *)v3 stringByAppendingFormat:@"\t                          Time: %f\n" stringByAppendingFormat:"stringByAppendingFormat:", @"\t                        Offset: %f\n", [(MPAnimationKeyframe *)self offsetType]];
  [(MPAnimationKeyframe2D *)self point];
  v6 = [(NSString *)v5 stringByAppendingFormat:@"\t                         Point: %@\n", NSStringFromCGPoint(v9)];
  if (self->super._keyframe)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  return [(NSString *)v6 stringByAppendingFormat:@"\t               Has MCKayeframe: %@\n", v7];
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setPoint:(CGPoint)a3
{
  self->_point = a3;
  if (self->super._keyframe)
  {
    y = a3.y;
    x = a3.x;
    [(MPAnimationPath *)self->super._parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MPAnimationPath *)self->super._parentPath animatedParent];
      v12.x = x;
      v12.y = y;
      v7 = [v6 convertMPAttributeToMCAttribute:NSStringFromCGPoint(v12) withKey:{-[MPAnimationPath animatedKey](self->super._parentPath, "animatedKey")}];
      v8 = CGPointFromString(v7);
      x = v8.x;
      y = v8.y;
    }

    [(MCAnimationKeyframe *)self->super._keyframe setPoint:x, y];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [v10 duplicateAnimationPaths];
    }
  }
}

@end