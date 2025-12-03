@interface VIReducePersonOverTriggerAnnotation
- (BOOL)isEqual:(id)equal;
- (VIReducePersonOverTriggerAnnotation)initWithRegionsItems:(id)items;
@end

@implementation VIReducePersonOverTriggerAnnotation

- (VIReducePersonOverTriggerAnnotation)initWithRegionsItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = VIReducePersonOverTriggerAnnotation;
  v5 = [(VIReducePersonOverTriggerAnnotation *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    regions = v5->_regions;
    v5->_regions = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = equalCopy;
  }

  else
  {
    v11 = 0;
  }

  regions = self->_regions;
  regions = [v11 regions];
  LOBYTE(regions) = VIObjectIsEqual(regions, regions);

  return regions;
}

@end