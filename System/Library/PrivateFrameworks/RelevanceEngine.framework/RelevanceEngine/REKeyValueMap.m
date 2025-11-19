@interface REKeyValueMap
- (REKeyValueMap)initWithCapacity:(unint64_t)a3;
- (void)addKey:(id)a3 withValue:(id)a4;
- (void)removeKey:(id)a3;
@end

@implementation REKeyValueMap

- (REKeyValueMap)initWithCapacity:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = REKeyValueMap;
  v4 = [(REKeyValueMap *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:a3];
    keyMap = v4->_keyMap;
    v4->_keyMap = v5;

    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:a3];
    valueMap = v4->_valueMap;
    v4->_valueMap = v7;
  }

  return v4;
}

- (void)addKey:(id)a3 withValue:(id)a4
{
  keyMap = self->_keyMap;
  v7 = a4;
  v8 = a3;
  [(NSMapTable *)keyMap setObject:v7 forKey:v8];
  [(NSMapTable *)self->_valueMap setObject:v8 forKey:v7];
}

- (void)removeKey:(id)a3
{
  keyMap = self->_keyMap;
  v5 = a3;
  v6 = [(NSMapTable *)keyMap objectForKey:v5];
  [(NSMapTable *)self->_valueMap removeObjectForKey:v6];
  [(NSMapTable *)self->_keyMap removeObjectForKey:v5];
}

@end