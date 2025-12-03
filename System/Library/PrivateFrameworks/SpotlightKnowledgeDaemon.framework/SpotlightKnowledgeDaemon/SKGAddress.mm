@interface SKGAddress
- (BOOL)isEqual:(id)equal;
- (NSArray)synonyms;
- (id)description;
- (unint64_t)hash;
- (void)addComponent:(id)component;
@end

@implementation SKGAddress

- (void)addComponent:(id)component
{
  componentCopy = component;
  components = self->_components;
  v9 = componentCopy;
  if (!components)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_components;
    self->_components = v6;

    componentCopy = v9;
    components = self->_components;
  }

  if (([(NSMutableArray *)components containsObject:componentCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_components addObject:v9];
    [(SKGEntity *)self score];
    [(SKGEntity *)self setScore:v8 + 1.0];
  }
}

- (NSArray)synonyms
{
  if (self->_components)
  {
    return self->_components;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    address = [(SKGAddress *)self address];
    address2 = [v5 address];
    if ([address isEqualToString:address2])
    {
      v10.receiver = self;
      v10.super_class = SKGAddress;
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
  address = [(SKGAddress *)self address];
  lowercaseString = [address lowercaseString];
  v4 = [lowercaseString hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  address = [(SKGAddress *)self address];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f>", v4, address, v6];

  return v7;
}

@end