@interface VKCTranslatedParagraph
- (VKCTranslatedParagraph)initWithText:(id)a3 quad:(id)a4 isPassthrough:(BOOL)a5;
@end

@implementation VKCTranslatedParagraph

- (VKCTranslatedParagraph)initWithText:(id)a3 quad:(id)a4 isPassthrough:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = VKCTranslatedParagraph;
  v11 = [(VKCTranslatedParagraph *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, a3);
    objc_storeStrong(&v12->_quad, a4);
    v12->_isPassthrough = a5;
  }

  return v12;
}

@end