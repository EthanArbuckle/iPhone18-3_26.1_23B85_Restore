@interface TSAPdfTaggerLineFragmentContext
- (TSAPdfTaggerLineFragmentContext)initWithStateOfTagger:(id)tagger lineFragmentCharRange:(_NSRange)range;
- (_NSRange)lineFragmentCharRange;
@end

@implementation TSAPdfTaggerLineFragmentContext

- (TSAPdfTaggerLineFragmentContext)initWithStateOfTagger:(id)tagger lineFragmentCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7.receiver = self;
  v7.super_class = TSAPdfTaggerLineFragmentContext;
  result = [(TSAPdfTaggerContext *)&v7 initWithStateOfTagger:tagger];
  if (result)
  {
    result->_lineFragmentCharRange.location = location;
    result->_lineFragmentCharRange.length = length;
  }

  return result;
}

- (_NSRange)lineFragmentCharRange
{
  p_lineFragmentCharRange = &self->_lineFragmentCharRange;
  location = self->_lineFragmentCharRange.location;
  length = p_lineFragmentCharRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end