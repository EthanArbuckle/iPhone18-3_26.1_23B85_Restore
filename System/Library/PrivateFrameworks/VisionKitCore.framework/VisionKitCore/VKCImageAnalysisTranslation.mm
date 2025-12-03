@interface VKCImageAnalysisTranslation
- (VKCImageAnalysisTranslation)initWithParagraphs:(id)paragraphs;
@end

@implementation VKCImageAnalysisTranslation

- (VKCImageAnalysisTranslation)initWithParagraphs:(id)paragraphs
{
  paragraphsCopy = paragraphs;
  v9.receiver = self;
  v9.super_class = VKCImageAnalysisTranslation;
  v6 = [(VKCImageAnalysisTranslation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paragraphs, paragraphs);
  }

  return v7;
}

@end