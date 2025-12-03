@interface MPAnimationKeyframe1D
+ (id)keyframe1DWithScalar:(double)scalar atTime:(double)time;
+ (id)keyframe1DWithScalar:(double)scalar atTime:(double)time offsetType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initKeyframe1DWithScalar:(double)scalar atTime:(double)time offsetType:(unint64_t)type;
- (void)setScalar:(double)scalar;
@end

@implementation MPAnimationKeyframe1D

+ (id)keyframe1DWithScalar:(double)scalar atTime:(double)time
{
  v4 = [[self alloc] initKeyframe1DWithScalar:0 atTime:scalar offsetType:time];

  return v4;
}

+ (id)keyframe1DWithScalar:(double)scalar atTime:(double)time offsetType:(unint64_t)type
{
  v5 = [[self alloc] initKeyframe1DWithScalar:type atTime:scalar offsetType:time];

  return v5;
}

- (id)initKeyframe1DWithScalar:(double)scalar atTime:(double)time offsetType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = MPAnimationKeyframe1D;
  result = [(MPAnimationKeyframe *)&v9 init];
  if (result)
  {
    *(result + 8) = scalar;
    *(result + 4) = time;
    *(result + 5) = type;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPAnimationKeyframe1D;
  v4 = [(MPAnimationKeyframe *)&v6 copyWithZone:zone];
  [v4 setScalar:self->_scalar];
  return v4;
}

- (id)description
{
  v3 = [NSString stringWithFormat:@"================================ Keyframe1D ====================================\n"];
  [(MPAnimationKeyframe *)self time];
  v5 = [[(NSString *)v3 stringByAppendingFormat:@"\t                          Time: %f\n" stringByAppendingFormat:"stringByAppendingFormat:", @"\t                        Offset: %f\n", [(MPAnimationKeyframe *)self offsetType]];
  [(MPAnimationKeyframe1D *)self scalar];
  v7 = [(NSString *)v5 stringByAppendingFormat:@"\t                        Scalar: %f\n", v6];
  if (self->super._keyframe)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  return [(NSString *)v7 stringByAppendingFormat:@"\t               Has MCKayeframe: %@\n", v8];
}

- (void)setScalar:(double)scalar
{
  self->_scalar = scalar;
  if (self->super._keyframe)
  {
    scalarCopy = scalar;
    [(MPAnimationPath *)self->super._parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];
      *&v7 = scalarCopy;
      [objc_msgSend(animatedParent convertMPAttributeToMCAttribute:+[NSNumber numberWithFloat:](NSNumber withKey:{"numberWithFloat:", v7), -[MPAnimationPath animatedKey](self->super._parentPath, "animatedKey")), "floatValue"}];
      scalarCopy = *&v5;
    }

    *&v5 = scalarCopy;
    [(MCAnimationKeyframe *)self->super._keyframe setValue:v5];
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