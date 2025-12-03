@interface TSAPdfTaggerPrimaryTextRunContext
- (TSAPdfTaggerPrimaryTextRunContext)initWithStateOfTagger:(id)tagger charRange:(_NSRange)range;
- (_NSRange)charRange;
@end

@implementation TSAPdfTaggerPrimaryTextRunContext

- (TSAPdfTaggerPrimaryTextRunContext)initWithStateOfTagger:(id)tagger charRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7.receiver = self;
  v7.super_class = TSAPdfTaggerPrimaryTextRunContext;
  result = [(TSAPdfTaggerContext *)&v7 initWithStateOfTagger:tagger];
  if (result)
  {
    result->_charRange.location = location;
    result->_charRange.length = length;
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

@end