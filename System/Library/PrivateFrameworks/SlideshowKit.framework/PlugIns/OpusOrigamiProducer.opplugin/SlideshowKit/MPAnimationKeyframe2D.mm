@interface MPAnimationKeyframe2D
+ (id)keyframe2DWithPoint:(CGPoint)point atTime:(double)time;
+ (id)keyframe2DWithPoint:(CGPoint)point atTime:(double)time offsetType:(unint64_t)type;
- (CGPoint)point;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initKeyframe2DWithPoint:(CGPoint)point atTime:(double)time offsetType:(unint64_t)type;
- (void)setPoint:(CGPoint)point;
@end

@implementation MPAnimationKeyframe2D

+ (id)keyframe2DWithPoint:(CGPoint)point atTime:(double)time
{
  v4 = [[self alloc] initKeyframe2DWithPoint:0 atTime:point.x offsetType:{point.y, time}];

  return v4;
}

+ (id)keyframe2DWithPoint:(CGPoint)point atTime:(double)time offsetType:(unint64_t)type
{
  v5 = [[self alloc] initKeyframe2DWithPoint:type atTime:point.x offsetType:{point.y, time}];

  return v5;
}

- (id)initKeyframe2DWithPoint:(CGPoint)point atTime:(double)time offsetType:(unint64_t)type
{
  y = point.y;
  x = point.x;
  v10.receiver = self;
  v10.super_class = MPAnimationKeyframe2D;
  result = [(MPAnimationKeyframe *)&v10 init];
  if (result)
  {
    *(result + 8) = x;
    *(result + 9) = y;
    *(result + 4) = time;
    *(result + 5) = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPAnimationKeyframe2D;
  v4 = [(MPAnimationKeyframe *)&v6 copyWithZone:zone];
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

- (void)setPoint:(CGPoint)point
{
  self->_point = point;
  if (self->super._keyframe)
  {
    y = point.y;
    x = point.x;
    [(MPAnimationPath *)self->super._parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];
      v12.x = x;
      v12.y = y;
      v7 = [animatedParent convertMPAttributeToMCAttribute:NSStringFromCGPoint(v12) withKey:{-[MPAnimationPath animatedKey](self->super._parentPath, "animatedKey")}];
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
      animatedParent2 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [animatedParent2 duplicateAnimationPaths];
    }
  }
}

@end