@interface TICompositionMapItem
+ (id)itemWithKey:(id)key value:(id)value;
- (TICompositionMapItem)initWithKey:(id)key value:(id)value;
@end

@implementation TICompositionMapItem

- (TICompositionMapItem)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = TICompositionMapItem;
  v8 = [(TICompositionMapItem *)&v14 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    key = v8->_key;
    v8->_key = v9;

    v11 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

+ (id)itemWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v8 = [[self alloc] initWithKey:keyCopy value:valueCopy];

  return v8;
}

@end