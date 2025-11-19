@interface WLKFeature
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFeature:(id)a3;
- (id)description;
- (id)jsonRepresentation;
- (int64_t)compare:(id)a3;
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WLKFeature *)self name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WLKFeature *)self isEqualToFeature:v4];
  }

  return v5;
}

- (BOOL)isEqualToFeature:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    name = self->_name;
    v7 = [v4 name];
    if ([(NSString *)name isEqual:v7])
    {
      domain = self->_domain;
      v9 = [v5 domain];
      if ([(NSString *)domain isEqual:v9])
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
  v5 = [(WLKFeature *)self jsonRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end