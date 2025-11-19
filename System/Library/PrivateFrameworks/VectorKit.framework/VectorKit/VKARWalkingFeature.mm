@interface VKARWalkingFeature
- (BOOL)isEqual:(id)a3;
- (VKARWalkingFeature)initWithType:(int64_t)a3 intraFeaturePriority:(unint64_t)a4;
@end

@implementation VKARWalkingFeature

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
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

- (VKARWalkingFeature)initWithType:(int64_t)a3 intraFeaturePriority:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = VKARWalkingFeature;
  v6 = [(VKARWalkingFeature *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = a3;
    v6->_intraFeaturePriority = a4;
    v8 = v6;
  }

  return v7;
}

@end