@interface TICompositionMapItem
+ (id)itemWithKey:(id)a3 value:(id)a4;
- (TICompositionMapItem)initWithKey:(id)a3 value:(id)a4;
@end

@implementation TICompositionMapItem

- (TICompositionMapItem)initWithKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TICompositionMapItem;
  v8 = [(TICompositionMapItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    key = v8->_key;
    v8->_key = v9;

    v11 = [v7 copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

+ (id)itemWithKey:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithKey:v7 value:v6];

  return v8;
}

@end