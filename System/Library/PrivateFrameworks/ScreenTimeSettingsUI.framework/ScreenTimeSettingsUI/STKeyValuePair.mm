@interface STKeyValuePair
- (STKeyValuePair)initWithKey:(id)key value:(id)value;
@end

@implementation STKeyValuePair

- (STKeyValuePair)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = STKeyValuePair;
  v8 = [(STKeyValuePair *)&v13 init];
  key = v8->_key;
  v8->_key = keyCopy;
  v10 = keyCopy;

  value = v8->_value;
  v8->_value = valueCopy;

  return v8;
}

@end