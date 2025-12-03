@interface MOContextDimension
- (BOOL)isEqual:(id)equal;
- (MOContextDimension)initWithCoder:(id)coder;
- (MOContextDimension)initWithName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextDimension

- (MOContextDimension)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = MOContextDimension;
  v6 = [(MOContextDimension *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_queries forKey:@"queries"];
}

- (MOContextDimension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [(MOContextDimension *)self initWithName:v5];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"queries"];
    queries = v6->_queries;
    v6->_queries = v10;
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"name, %@, queries, %@", self->_name, self->_queries];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = [v5 isMemberOfClass:objc_opt_class()];
    name = self->_name;
    name = [v5 name];

    LOBYTE(name) = [(NSString *)name isEqual:name];
    v9 = v6 & name;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextDimension alloc];
  name = [(MOContextDimension *)self name];
  v6 = [(MOContextDimension *)v4 initWithName:name];

  queries = [(MOContextDimension *)self queries];
  [(MOContextDimension *)v6 setQueries:queries];

  return v6;
}

@end