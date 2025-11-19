@interface WCAFetchKeyValuesRequest
- (WCAFetchKeyValuesRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCAFetchKeyValuesRequest

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  [v6 appendFormat:@"keys: %@", self->_keys];
  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WCAFetchKeyValuesRequest;
  v4 = a3;
  [(WCAFetchRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_keys forKey:{@"_keys", v5.receiver, v5.super_class}];
}

- (WCAFetchKeyValuesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WCAFetchKeyValuesRequest;
  v5 = [(WCAFetchRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_keys"];
    keys = v5->_keys;
    v5->_keys = v9;
  }

  return v5;
}

@end