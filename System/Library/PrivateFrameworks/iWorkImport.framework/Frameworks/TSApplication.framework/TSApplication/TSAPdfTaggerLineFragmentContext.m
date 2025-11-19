@interface TSAPdfTaggerLineFragmentContext
- (TSAPdfTaggerLineFragmentContext)initWithStateOfTagger:(id)a3 lineFragmentCharRange:(_NSRange)a4;
- (_NSRange)lineFragmentCharRange;
@end

@implementation TSAPdfTaggerLineFragmentContext

- (TSAPdfTaggerLineFragmentContext)initWithStateOfTagger:(id)a3 lineFragmentCharRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7.receiver = self;
  v7.super_class = TSAPdfTaggerLineFragmentContext;
  result = [(TSAPdfTaggerContext *)&v7 initWithStateOfTagger:a3];
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