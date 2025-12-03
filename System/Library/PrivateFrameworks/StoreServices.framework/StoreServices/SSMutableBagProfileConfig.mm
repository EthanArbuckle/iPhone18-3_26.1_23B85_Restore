@interface SSMutableBagProfileConfig
- (SSMutableBagProfileConfig)init;
- (id)bagKeysDictionary;
- (void)registerBagKey:(id)key valueType:(unint64_t)type defaultValue:(id)value;
@end

@implementation SSMutableBagProfileConfig

- (SSMutableBagProfileConfig)init
{
  v6.receiver = self;
  v6.super_class = SSMutableBagProfileConfig;
  v2 = [(SSBagProfileConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableBagKeysDictionary = v2->_mutableBagKeysDictionary;
    v2->_mutableBagKeysDictionary = v3;
  }

  return v2;
}

- (id)bagKeysDictionary
{
  mutableBagKeysDictionary = [(SSMutableBagProfileConfig *)self mutableBagKeysDictionary];
  v3 = [mutableBagKeysDictionary copy];

  return v3;
}

- (void)registerBagKey:(id)key valueType:(unint64_t)type defaultValue:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v11 = [[SSBagKey alloc] initWithStringRepresentation:keyCopy valueType:type defaultValue:valueCopy];

  mutableBagKeysDictionary = [(SSMutableBagProfileConfig *)self mutableBagKeysDictionary];
  [mutableBagKeysDictionary setObject:v11 forKeyedSubscript:keyCopy];
}

@end