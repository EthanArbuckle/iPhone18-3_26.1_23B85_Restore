@interface FieldSpecTuple
+ (id)tupleWithKey:(id)key eventSpec:(id)spec;
@end

@implementation FieldSpecTuple

+ (id)tupleWithKey:(id)key eventSpec:(id)spec
{
  keyCopy = key;
  specCopy = spec;
  v7 = objc_alloc_init(FieldSpecTuple);
  fieldSpec = v7->_fieldSpec;
  v7->_fieldSpec = specCopy;
  v9 = specCopy;

  key = v7->_key;
  v7->_key = keyCopy;

  return v7;
}

@end