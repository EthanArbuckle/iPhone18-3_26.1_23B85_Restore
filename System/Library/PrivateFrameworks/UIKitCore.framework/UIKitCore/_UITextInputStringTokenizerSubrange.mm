@interface _UITextInputStringTokenizerSubrange
+ (id)subrangeWithSubstring:(id)a3 basePosition:(id)a4;
- (_NSRange)relevantRange;
@end

@implementation _UITextInputStringTokenizerSubrange

- (_NSRange)relevantRange
{
  length = self->_relevantRange.length;
  location = self->_relevantRange.location;
  result.length = length;
  result.location = location;
  return result;
}

+ (id)subrangeWithSubstring:(id)a3 basePosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v9 = v8[1];
  v8[1] = v6;
  v10 = v6;

  v11 = v8[2];
  v8[2] = v7;

  *(v8 + 2) = xmmword_18A678470;

  return v8;
}

@end