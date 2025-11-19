@interface MPAnimationKeyframeVector
+ (id)keyframeVectorWithVector:(id)a3 atTime:(double)a4;
+ (id)keyframeVectorWithVector:(id)a3 atTime:(double)a4 offsetType:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initKeyframeVectorWithVector:(id)a3 atTime:(double)a4 offsetType:(unint64_t)a5;
- (void)dealloc;
- (void)setVector:(id)a3;
@end

@implementation MPAnimationKeyframeVector

+ (id)keyframeVectorWithVector:(id)a3 atTime:(double)a4
{
  v4 = [[a1 alloc] initKeyframeVectorWithVector:a3 atTime:0 offsetType:a4];

  return v4;
}

+ (id)keyframeVectorWithVector:(id)a3 atTime:(double)a4 offsetType:(unint64_t)a5
{
  v5 = [[a1 alloc] initKeyframeVectorWithVector:a3 atTime:a5 offsetType:a4];

  return v5;
}

- (id)initKeyframeVectorWithVector:(id)a3 atTime:(double)a4 offsetType:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = MPAnimationKeyframeVector;
  v8 = [(MPAnimationKeyframe *)&v10 init];
  if (v8)
  {
    v8->_vector = a3;
    v8->super._time = a4;
    v8->super._offsetType = a5;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MPAnimationKeyframeVector;
  v4 = [(MPAnimationKeyframe *)&v7 copyWithZone:a3];
  v5 = [(MPVector *)self->_vector copy];
  [v4 setVector:v5];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPAnimationKeyframeVector;
  [(MPAnimationKeyframe *)&v3 dealloc];
}

- (id)description
{
  v3 = [NSString stringWithFormat:@"============================== KeyframeVector ==================================\n"];
  [(MPAnimationKeyframe *)self time];
  v5 = [[[(NSString *)v3 stringByAppendingFormat:@"\t                          Time: %f\n" stringByAppendingFormat:"stringByAppendingFormat:" stringByAppendingFormat:[(MPAnimationKeyframe *)self offsetType]], "stringByAppendingFormat:", @"\t                        Vector: %@\n", [(MPVector *)[(MPAnimationKeyframeVector *)self vector] string]];
  if (self->super._keyframe)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [(NSString *)v5 stringByAppendingFormat:@"\t               Has MCKayeframe: %@\n", v6];
}

- (void)setVector:(id)a3
{
  vector = self->_vector;
  if (vector)
  {
  }

  self->_vector = a3;
  if (self->super._keyframe)
  {
    v11 = 0uLL;
    v12 = 0;
    if (a3)
    {
      [a3 vector];
    }

    [(MPAnimationPath *)self->super._parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(MPAnimationPath *)self->super._parentPath animatedParent];
      v9 = v11;
      v10 = v12;
      v7 = [v6 convertMPAttributeToMCAttribute:MCVectorToString(&v9) withKey:{-[MPAnimationPath animatedKey](self->super._parentPath, "animatedKey")}];
      MCStringToVector(v7, &v9);
      v11 = v9;
      v12 = v10;
    }

    keyframe = self->super._keyframe;
    v9 = v11;
    v10 = v12;
    [(MCAnimationKeyframe *)keyframe setVector:&v9];
  }
}

@end