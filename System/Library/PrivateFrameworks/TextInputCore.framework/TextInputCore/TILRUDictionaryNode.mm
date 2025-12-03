@interface TILRUDictionaryNode
- (TILRUDictionaryNode)initWithKey:(id)key object:(id)object;
@end

@implementation TILRUDictionaryNode

- (TILRUDictionaryNode)initWithKey:(id)key object:(id)object
{
  keyCopy = key;
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = TILRUDictionaryNode;
  v9 = [(TILRUDictionaryNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_object, object);
  }

  return v10;
}

@end