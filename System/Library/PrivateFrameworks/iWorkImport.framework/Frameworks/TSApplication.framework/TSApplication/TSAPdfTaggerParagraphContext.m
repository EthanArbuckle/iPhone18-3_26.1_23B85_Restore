@interface TSAPdfTaggerParagraphContext
- (TSAPdfTaggerParagraphContext)initWithStateOfTagger:(id)a3 needsSpans:(BOOL)a4;
@end

@implementation TSAPdfTaggerParagraphContext

- (TSAPdfTaggerParagraphContext)initWithStateOfTagger:(id)a3 needsSpans:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = TSAPdfTaggerParagraphContext;
  result = [(TSAPdfTaggerContext *)&v6 initWithStateOfTagger:a3];
  if (result)
  {
    result->_needsSpans = a4;
  }

  return result;
}

@end