@interface BRCLRUDictionaryNode
- (BRCLRUDictionaryNode)initWithKey:(id)key object:(id)object;
- (BRCLRUDictionaryNode)next;
- (BRCLRUDictionaryNode)prev;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BRCLRUDictionaryNode

- (BRCLRUDictionaryNode)initWithKey:(id)key object:(id)object
{
  keyCopy = key;
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = BRCLRUDictionaryNode;
  v9 = [(BRCLRUDictionaryNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_object, object);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BRCLRUDictionaryNode alloc];
  key = self->_key;
  object = self->_object;

  return [(BRCLRUDictionaryNode *)v4 initWithKey:key object:object];
}

- (BRCLRUDictionaryNode)next
{
  WeakRetained = objc_loadWeakRetained(&self->_next);

  return WeakRetained;
}

- (BRCLRUDictionaryNode)prev
{
  WeakRetained = objc_loadWeakRetained(&self->_prev);

  return WeakRetained;
}

@end