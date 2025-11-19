@interface VKCImageAnalysisTranslation
- (VKCImageAnalysisTranslation)initWithParagraphs:(id)a3;
@end

@implementation VKCImageAnalysisTranslation

- (VKCImageAnalysisTranslation)initWithParagraphs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VKCImageAnalysisTranslation;
  v6 = [(VKCImageAnalysisTranslation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paragraphs, a3);
  }

  return v7;
}

@end