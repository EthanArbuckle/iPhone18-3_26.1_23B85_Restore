@interface IMMutableBagKeySet
- (IMMutableBagKeySet)init;
- (void)addBagKey:(id)a3 valueType:(unint64_t)a4 defaultValue:(id)a5;
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

- (void)addBagKey:(id)a3 valueType:(unint64_t)a4 defaultValue:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    [(NSMutableDictionary *)self->_defaultValueMap setObject:v9 forKeyedSubscript:v8];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)self->_valueTypeMap setObject:v10 forKeyedSubscript:v8];

  v11.receiver = self;
  v11.super_class = IMMutableBagKeySet;
  [(AMSMutableBagKeySet *)&v11 addBagKey:v8 valueType:a4 defaultValue:v9];
}

@end