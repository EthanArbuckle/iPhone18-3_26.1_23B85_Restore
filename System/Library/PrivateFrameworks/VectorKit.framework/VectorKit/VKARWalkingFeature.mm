@interface VKARWalkingFeature
- (BOOL)isEqual:(id)equal;
- (VKARWalkingFeature)initWithType:(int64_t)type intraFeaturePriority:(unint64_t)priority;
@end

@implementation VKARWalkingFeature

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      type = self->_type;
      if (type == [(VKARWalkingFeature *)v7 type])
      {
        intraFeaturePriority = self->_intraFeaturePriority;
        v6 = intraFeaturePriority == [(VKARWalkingFeature *)v7 intraFeaturePriority];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (VKARWalkingFeature)initWithType:(int64_t)type intraFeaturePriority:(unint64_t)priority
{
  v10.receiver = self;
  v10.super_class = VKARWalkingFeature;
  v6 = [(VKARWalkingFeature *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = type;
    v6->_intraFeaturePriority = priority;
    v8 = v6;
  }

  return v7;
}

@end