@interface WLKFeature
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFeature:(id)feature;
- (id)description;
- (id)jsonRepresentation;
- (int64_t)compare:(id)compare;
@end

@implementation WLKFeature

- (id)jsonRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 wlk_setObjectUnlessNil:self->_name forKey:@"name"];
  [v3 wlk_setObjectUnlessNil:self->_domain forKey:@"domain"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_enabled];
  [v3 setObject:v4 forKey:@"enabled"];

  v5 = [v3 copy];

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  name = [(WLKFeature *)self name];
  name2 = [compareCopy name];

  v7 = [name compare:name2];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKFeature *)self isEqualToFeature:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToFeature:(id)feature
{
  featureCopy = feature;
  v5 = featureCopy;
  if (featureCopy)
  {
    name = self->_name;
    name = [featureCopy name];
    if ([(NSString *)name isEqual:name])
    {
      domain = self->_domain;
      domain = [v5 domain];
      if ([(NSString *)domain isEqual:domain])
      {
        enabled = self->_enabled;
        v11 = enabled == [v5 enabled];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WLKFeature;
  v4 = [(WLKFeature *)&v8 description];
  jsonRepresentation = [(WLKFeature *)self jsonRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, jsonRepresentation];

  return v6;
}

@end