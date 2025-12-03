@interface SKGFlight
- (BOOL)isEqual:(id)equal;
- (NSArray)components;
- (id)description;
- (unint64_t)hash;
- (void)addComponent:(id)component;
@end

@implementation SKGFlight

- (void)addComponent:(id)component
{
  componentCopy = component;
  components = self->_components;
  v8 = componentCopy;
  if (!components)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_components;
    self->_components = v6;

    componentCopy = v8;
    components = self->_components;
  }

  [(NSMutableSet *)components addObject:componentCopy];
}

- (NSArray)components
{
  components = self->_components;
  if (components)
  {
    allObjects = [(NSMutableSet *)components allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  return allObjects;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    flight = [(SKGFlight *)self flight];
    flight2 = [v5 flight];
    if ([flight isEqualToString:flight2])
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
  components = [(SKGFlight *)self components];
  v3 = [components componentsJoinedByString:&stru_2846CE8D8];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  flight = [(SKGFlight *)self flight];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f", v4, flight, v6];

  return v7;
}

@end