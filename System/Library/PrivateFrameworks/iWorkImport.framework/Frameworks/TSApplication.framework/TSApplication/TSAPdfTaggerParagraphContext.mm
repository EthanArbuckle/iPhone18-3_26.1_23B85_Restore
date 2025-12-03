@interface TSAPdfTaggerParagraphContext
- (TSAPdfTaggerParagraphContext)initWithStateOfTagger:(id)tagger needsSpans:(BOOL)spans;
@end

@implementation TSAPdfTaggerParagraphContext

- (TSAPdfTaggerParagraphContext)initWithStateOfTagger:(id)tagger needsSpans:(BOOL)spans
{
  v6.receiver = self;
  v6.super_class = TSAPdfTaggerParagraphContext;
  result = [(TSAPdfTaggerContext *)&v6 initWithStateOfTagger:tagger];
  if (result)
  {
    result->_needsSpans = spans;
  }

  return result;
}

@end