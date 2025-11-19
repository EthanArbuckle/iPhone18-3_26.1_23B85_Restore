@interface MOContextDimension
- (BOOL)isEqual:(id)a3;
- (MOContextDimension)initWithCoder:(id)a3;
- (MOContextDimension)initWithName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextDimension

- (MOContextDimension)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MOContextDimension;
  v6 = [(MOContextDimension *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_queries forKey:@"queries"];
}

- (MOContextDimension)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [(MOContextDimension *)self initWithName:v5];
  if (v6)
  {
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"queries"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 isMemberOfClass:objc_opt_class()];
    name = self->_name;
    v8 = [v5 name];

    LOBYTE(name) = [(NSString *)name isEqual:v8];
    v9 = v6 & name;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextDimension alloc];
  v5 = [(MOContextDimension *)self name];
  v6 = [(MOContextDimension *)v4 initWithName:v5];

  v7 = [(MOContextDimension *)self queries];
  [(MOContextDimension *)v6 setQueries:v7];

  return v6;
}

@end