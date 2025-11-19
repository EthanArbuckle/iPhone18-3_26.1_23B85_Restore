@interface VIReducePersonOverTriggerAnnotation
- (BOOL)isEqual:(id)a3;
- (VIReducePersonOverTriggerAnnotation)initWithRegionsItems:(id)a3;
@end

@implementation VIReducePersonOverTriggerAnnotation

- (VIReducePersonOverTriggerAnnotation)initWithRegionsItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VIReducePersonOverTriggerAnnotation;
  v5 = [(VIReducePersonOverTriggerAnnotation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    regions = v5->_regions;
    v5->_regions = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  regions = self->_regions;
  v13 = [v11 regions];
  LOBYTE(regions) = VIObjectIsEqual(regions, v13);

  return regions;
}

@end