@interface CACTextInsertionSpecifier
- (_NSRange)insertedRange;
@end

@implementation CACTextInsertionSpecifier

- (_NSRange)insertedRange
{
  objc_copyStruct(v4, &self->_insertedRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end