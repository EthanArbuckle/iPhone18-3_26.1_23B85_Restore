@interface WCAFetchKeyValuesResponse
- (WCAFetchKeyValuesResponse)initWithCoder:(id)coder;
- (WCAFetchKeyValuesResponse)initWithKeyValues:(id)values;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCAFetchKeyValuesResponse

- (WCAFetchKeyValuesResponse)initWithKeyValues:(id)values
{
  v7.receiver = self;
  v7.super_class = WCAFetchKeyValuesResponse;
  valuesCopy = values;
  v4 = [(WCAFetchKeyValuesResponse *)&v7 init];
  v5 = [valuesCopy copy];

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WCAFetchKeyValuesResponse;
  coderCopy = coder;
  [(WCAFetchResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_keyValues forKey:{@"_keyValues", v5.receiver, v5.super_class}];
}

- (WCAFetchKeyValuesResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WCAFetchKeyValuesResponse;
  v5 = [(WCAFetchResponse *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_keyValues"];
    keyValues = v5->_keyValues;
    v5->_keyValues = v10;
  }

  return v5;
}

@end