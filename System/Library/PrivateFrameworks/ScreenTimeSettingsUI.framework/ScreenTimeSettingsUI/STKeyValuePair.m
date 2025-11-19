@interface STKeyValuePair
- (STKeyValuePair)initWithKey:(id)a3 value:(id)a4;
@end

@implementation STKeyValuePair

- (STKeyValuePair)initWithKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = STKeyValuePair;
  v8 = [(STKeyValuePair *)&v13 init];
  key = v8->_key;
  v8->_key = v6;
  v10 = v6;

  value = v8->_value;
  v8->_value = v7;

  return v8;
}

@end