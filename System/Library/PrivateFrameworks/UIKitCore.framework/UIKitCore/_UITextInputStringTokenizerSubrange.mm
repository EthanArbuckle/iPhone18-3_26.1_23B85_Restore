@interface _UITextInputStringTokenizerSubrange
+ (id)subrangeWithSubstring:(id)substring basePosition:(id)position;
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

+ (id)subrangeWithSubstring:(id)substring basePosition:(id)position
{
  substringCopy = substring;
  positionCopy = position;
  v8 = objc_alloc_init(self);
  v9 = v8[1];
  v8[1] = substringCopy;
  v10 = substringCopy;

  v11 = v8[2];
  v8[2] = positionCopy;

  *(v8 + 2) = xmmword_18A678470;

  return v8;
}

@end