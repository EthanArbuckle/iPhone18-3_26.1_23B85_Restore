@interface BRCLRUDictionaryNode
- (BRCLRUDictionaryNode)initWithKey:(id)a3 object:(id)a4;
- (BRCLRUDictionaryNode)next;
- (BRCLRUDictionaryNode)prev;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BRCLRUDictionaryNode

- (BRCLRUDictionaryNode)initWithKey:(id)a3 object:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BRCLRUDictionaryNode;
  v9 = [(BRCLRUDictionaryNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_object, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
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