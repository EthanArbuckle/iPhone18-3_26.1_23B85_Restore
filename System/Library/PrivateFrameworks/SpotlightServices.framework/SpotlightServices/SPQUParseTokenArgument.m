@interface SPQUParseTokenArgument
- (SPQUParseTokenArgument)initWithLabel:(id)a3 token:(id)a4 tokenRange:(id)a5;
- (id)getEncodedData;
@end

@implementation SPQUParseTokenArgument

- (SPQUParseTokenArgument)initWithLabel:(id)a3 token:(id)a4 tokenRange:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SPQUParseTokenArgument;
  v12 = [(SPQUParseTokenArgument *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_token, a4);
    objc_storeStrong(&v13->_tokenLabel, a3);
    objc_storeStrong(&v13->_tokenRange, a5);
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