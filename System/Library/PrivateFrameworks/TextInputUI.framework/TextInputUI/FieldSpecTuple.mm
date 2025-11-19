@interface FieldSpecTuple
+ (id)tupleWithKey:(id)a3 eventSpec:(id)a4;
@end

@implementation FieldSpecTuple

+ (id)tupleWithKey:(id)a3 eventSpec:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(FieldSpecTuple);
  fieldSpec = v7->_fieldSpec;
  v7->_fieldSpec = v6;
  v9 = v6;

  key = v7->_key;
  v7->_key = v5;

  return v7;
}

@end