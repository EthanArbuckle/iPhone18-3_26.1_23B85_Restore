@interface WCAFetchKeyValuesResponse
- (WCAFetchKeyValuesResponse)initWithCoder:(id)a3;
- (WCAFetchKeyValuesResponse)initWithKeyValues:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCAFetchKeyValuesResponse

- (WCAFetchKeyValuesResponse)initWithKeyValues:(id)a3
{
  v7.receiver = self;
  v7.super_class = WCAFetchKeyValuesResponse;
  v3 = a3;
  v4 = [(WCAFetchKeyValuesResponse *)&v7 init];
  v5 = [v3 copy];

  [(WCAFetchKeyValuesResponse *)v4 setKeyValues:v5];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p ", v5, self];

  [v6 appendFormat:@"key/values: %@", self->_keyValues];
  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WCAFetchKeyValuesResponse;
  v4 = a3;
  [(WCAFetchResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_keyValues forKey:{@"_keyValues", v5.receiver, v5.super_class}];
}

- (WCAFetchKeyValuesResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WCAFetchKeyValuesResponse;
  v5 = [(WCAFetchResponse *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_keyValues"];
    keyValues = v5->_keyValues;
    v5->_keyValues = v10;
  }

  return v5;
}

@end