@interface MPAnimationKeyframe1D
+ (id)keyframe1DWithScalar:(double)a3 atTime:(double)a4;
+ (id)keyframe1DWithScalar:(double)a3 atTime:(double)a4 offsetType:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initKeyframe1DWithScalar:(double)a3 atTime:(double)a4 offsetType:(unint64_t)a5;
- (void)setScalar:(double)a3;
@end

@implementation MPAnimationKeyframe1D

+ (id)keyframe1DWithScalar:(double)a3 atTime:(double)a4
{
  v4 = [[a1 alloc] initKeyframe1DWithScalar:0 atTime:a3 offsetType:a4];

  return v4;
}

+ (id)keyframe1DWithScalar:(double)a3 atTime:(double)a4 offsetType:(unint64_t)a5
{
  v5 = [[a1 alloc] initKeyframe1DWithScalar:a5 atTime:a3 offsetType:a4];

  return v5;
}

- (id)initKeyframe1DWithScalar:(double)a3 atTime:(double)a4 offsetType:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = MPAnimationKeyframe1D;
  result = [(MPAnimationKeyframe *)&v9 init];
  if (result)
  {
    *(result + 8) = a3;
    *(result + 4) = a4;
    *(result + 5) = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPAnimationKeyframe1D;
  v4 = [(MPAnimationKeyframe *)&v6 copyWithZone:a3];
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

- (void)setScalar:(double)a3
{
  self->_scalar = a3;
  if (self->super._keyframe)
  {
    v4 = a3;
    [(MPAnimationPath *)self->super._parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MPAnimationPath *)self->super._parentPath animatedParent];
      *&v7 = v4;
      [objc_msgSend(v6 convertMPAttributeToMCAttribute:+[NSNumber numberWithFloat:](NSNumber withKey:{"numberWithFloat:", v7), -[MPAnimationPath animatedKey](self->super._parentPath, "animatedKey")), "floatValue"}];
      v4 = *&v5;
    }

    *&v5 = v4;
    [(MCAnimationKeyframe *)self->super._keyframe setValue:v5];
  }

  parentPath = self->super._parentPath;
  if (parentPath)
  {
    [(MPAnimationPath *)parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(MPAnimationPath *)self->super._parentPath animatedParent];

      [v9 duplicateAnimationPaths];
    }
  }
}

@end