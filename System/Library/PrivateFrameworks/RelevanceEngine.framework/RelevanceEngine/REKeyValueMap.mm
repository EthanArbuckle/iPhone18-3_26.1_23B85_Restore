@interface REKeyValueMap
- (REKeyValueMap)initWithCapacity:(unint64_t)capacity;
- (void)addKey:(id)key withValue:(id)value;
- (void)removeKey:(id)key;
@end

@implementation REKeyValueMap

- (REKeyValueMap)initWithCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = REKeyValueMap;
  v4 = [(REKeyValueMap *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:capacity];
    keyMap = v4->_keyMap;
    v4->_keyMap = v5;

    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:capacity];
    valueMap = v4->_valueMap;
    v4->_valueMap = v7;
  }

  return v4;
}

- (void)addKey:(id)key withValue:(id)value
{
  keyMap = self->_keyMap;
  valueCopy = value;
  keyCopy = key;
  [(NSMapTable *)keyMap setObject:valueCopy forKey:keyCopy];
  [(NSMapTable *)self->_valueMap setObject:keyCopy forKey:valueCopy];
}

- (void)removeKey:(id)key
{
  keyMap = self->_keyMap;
  keyCopy = key;
  v6 = [(NSMapTable *)keyMap objectForKey:keyCopy];
  [(NSMapTable *)self->_valueMap removeObjectForKey:v6];
  [(NSMapTable *)self->_keyMap removeObjectForKey:keyCopy];
}

@end