@interface SPQUParseTokenArgument
- (SPQUParseTokenArgument)initWithLabel:(id)label token:(id)token tokenRange:(id)range;
- (id)getEncodedData;
@end

@implementation SPQUParseTokenArgument

- (SPQUParseTokenArgument)initWithLabel:(id)label token:(id)token tokenRange:(id)range
{
  labelCopy = label;
  tokenCopy = token;
  rangeCopy = range;
  v15.receiver = self;
  v15.super_class = SPQUParseTokenArgument;
  v12 = [(SPQUParseTokenArgument *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_token, token);
    objc_storeStrong(&v13->_tokenLabel, label);
    objc_storeStrong(&v13->_tokenRange, range);
  }

  return v13;
}

- (id)getEncodedData
{
  v3 = objc_opt_new();
  [v3 setValue:self->_token forKey:@"text"];
  [v3 setValue:self->_tokenLabel forKey:@"textLabel"];
  [v3 setValue:self->_tokenRange forKey:@"textRange"];

  return v3;
}

@end