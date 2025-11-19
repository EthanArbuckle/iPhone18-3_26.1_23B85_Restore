@interface SKGFlight
- (BOOL)isEqual:(id)a3;
- (NSArray)components;
- (id)description;
- (unint64_t)hash;
- (void)addComponent:(id)a3;
@end

@implementation SKGFlight

- (void)addComponent:(id)a3
{
  v4 = a3;
  components = self->_components;
  v8 = v4;
  if (!components)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_components;
    self->_components = v6;

    v4 = v8;
    components = self->_components;
  }

  [(NSMutableSet *)components addObject:v4];
}

- (NSArray)components
{
  components = self->_components;
  if (components)
  {
    v4 = [(NSMutableSet *)components allObjects];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKGFlight *)self flight];
    v7 = [v5 flight];
    if ([v6 isEqualToString:v7])
    {
      v10.receiver = self;
      v10.super_class = SKGFlight;
      v8 = [(SKGEntity *)&v10 isEqual:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(SKGFlight *)self components];
  v3 = [v2 componentsJoinedByString:&stru_2846CE8D8];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKGFlight *)self flight];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f", v4, v5, v6];

  return v7;
}

@end