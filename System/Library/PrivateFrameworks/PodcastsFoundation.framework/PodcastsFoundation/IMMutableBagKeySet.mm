@interface IMMutableBagKeySet
- (IMMutableBagKeySet)init;
- (void)addBagKey:(id)key valueType:(unint64_t)type defaultValue:(id)value;
@end

@implementation IMMutableBagKeySet

- (IMMutableBagKeySet)init
{
  v8.receiver = self;
  v8.super_class = IMMutableBagKeySet;
  v2 = [(AMSBagKeySet *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    defaultValueMap = v2->_defaultValueMap;
    v2->_defaultValueMap = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    valueTypeMap = v2->_valueTypeMap;
    v2->_valueTypeMap = v5;
  }

  return v2;
}

- (void)addBagKey:(id)key valueType:(unint64_t)type defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  if (valueCopy)
  {
    [(NSMutableDictionary *)self->_defaultValueMap setObject:valueCopy forKeyedSubscript:keyCopy];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [(NSMutableDictionary *)self->_valueTypeMap setObject:v10 forKeyedSubscript:keyCopy];

  v11.receiver = self;
  v11.super_class = IMMutableBagKeySet;
  [(AMSMutableBagKeySet *)&v11 addBagKey:keyCopy valueType:type defaultValue:valueCopy];
}

@end