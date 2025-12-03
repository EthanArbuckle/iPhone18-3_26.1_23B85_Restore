@interface MPAnimationKeyframeVector
+ (id)keyframeVectorWithVector:(id)vector atTime:(double)time;
+ (id)keyframeVectorWithVector:(id)vector atTime:(double)time offsetType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initKeyframeVectorWithVector:(id)vector atTime:(double)time offsetType:(unint64_t)type;
- (void)dealloc;
- (void)setVector:(id)vector;
@end

@implementation MPAnimationKeyframeVector

+ (id)keyframeVectorWithVector:(id)vector atTime:(double)time
{
  v4 = [[self alloc] initKeyframeVectorWithVector:vector atTime:0 offsetType:time];

  return v4;
}

+ (id)keyframeVectorWithVector:(id)vector atTime:(double)time offsetType:(unint64_t)type
{
  v5 = [[self alloc] initKeyframeVectorWithVector:vector atTime:type offsetType:time];

  return v5;
}

- (id)initKeyframeVectorWithVector:(id)vector atTime:(double)time offsetType:(unint64_t)type
{
  v10.receiver = self;
  v10.super_class = MPAnimationKeyframeVector;
  v8 = [(MPAnimationKeyframe *)&v10 init];
  if (v8)
  {
    v8->_vector = vector;
    v8->super._time = time;
    v8->super._offsetType = type;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MPAnimationKeyframeVector;
  v4 = [(MPAnimationKeyframe *)&v7 copyWithZone:zone];
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

- (void)setVector:(id)vector
{
  vector = self->_vector;
  if (vector)
  {
  }

  self->_vector = vector;
  if (self->super._keyframe)
  {
    v11 = 0uLL;
    v12 = 0;
    if (vector)
    {
      [vector vector];
    }

    [(MPAnimationPath *)self->super._parentPath animatedParent];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      animatedParent = [(MPAnimationPath *)self->super._parentPath animatedParent];
      v9 = v11;
      v10 = v12;
      v7 = [animatedParent convertMPAttributeToMCAttribute:MCVectorToString(&v9) withKey:{-[MPAnimationPath animatedKey](self->super._parentPath, "animatedKey")}];
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