@interface TILRUDictionaryNode
- (TILRUDictionaryNode)initWithKey:(id)a3 object:(id)a4;
@end

@implementation TILRUDictionaryNode

- (TILRUDictionaryNode)initWithKey:(id)a3 object:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TILRUDictionaryNode;
  v9 = [(TILRUDictionaryNode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_object, a4);
  }

  return v10;
}

@end