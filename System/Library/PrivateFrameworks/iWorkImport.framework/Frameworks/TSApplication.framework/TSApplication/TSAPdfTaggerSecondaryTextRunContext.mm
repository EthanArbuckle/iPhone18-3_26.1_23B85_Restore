@interface TSAPdfTaggerSecondaryTextRunContext
- (TSAPdfTaggerSecondaryTextRunContext)initWithStateOfTagger:(id)a3 charRange:(_NSRange)a4 baseTextRange:(_NSRange)a5;
- (_NSRange)baseTextRange;
- (_NSRange)charRange;
@end

@implementation TSAPdfTaggerSecondaryTextRunContext

- (TSAPdfTaggerSecondaryTextRunContext)initWithStateOfTagger:(id)a3 charRange:(_NSRange)a4 baseTextRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  v10.receiver = self;
  v10.super_class = TSAPdfTaggerSecondaryTextRunContext;
  result = [(TSAPdfTaggerContext *)&v10 initWithStateOfTagger:a3];
  if (result)
  {
    result->_charRange.location = v8;
    result->_charRange.length = v7;
    result->_baseTextRange.location = location;
    result->_baseTextRange.length = length;
  }

  return result;
}

- (_NSRange)charRange
{
  p_charRange = &self->_charRange;
  location = self->_charRange.location;
  length = p_charRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)baseTextRange
{
  p_baseTextRange = &self->_baseTextRange;
  location = self->_baseTextRange.location;
  length = p_baseTextRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end