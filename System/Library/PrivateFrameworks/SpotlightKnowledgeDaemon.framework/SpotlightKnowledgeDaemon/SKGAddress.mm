@interface SKGAddress
- (BOOL)isEqual:(id)a3;
- (NSArray)synonyms;
- (id)description;
- (unint64_t)hash;
- (void)addComponent:(id)a3;
@end

@implementation SKGAddress

- (void)addComponent:(id)a3
{
  v4 = a3;
  components = self->_components;
  v9 = v4;
  if (!components)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_components;
    self->_components = v6;

    v4 = v9;
    components = self->_components;
  }

  if (([(NSMutableArray *)components containsObject:v4]& 1) == 0)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKGAddress *)self address];
    v7 = [v5 address];
    if ([v6 isEqualToString:v7])
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
  v2 = [(SKGAddress *)self address];
  v3 = [v2 lowercaseString];
  v4 = [v3 hash];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKGAddress *)self address];
  [(SKGEntity *)self score];
  v7 = [v3 stringWithFormat:@"<%@: %@ %f>", v4, v5, v6];

  return v7;
}

@end