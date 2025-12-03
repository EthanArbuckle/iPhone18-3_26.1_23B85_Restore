@interface VKCTranslatedParagraph
- (VKCTranslatedParagraph)initWithText:(id)text quad:(id)quad isPassthrough:(BOOL)passthrough;
@end

@implementation VKCTranslatedParagraph

- (VKCTranslatedParagraph)initWithText:(id)text quad:(id)quad isPassthrough:(BOOL)passthrough
{
  textCopy = text;
  quadCopy = quad;
  v14.receiver = self;
  v14.super_class = VKCTranslatedParagraph;
  v11 = [(VKCTranslatedParagraph *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, text);
    objc_storeStrong(&v12->_quad, quad);
    v12->_isPassthrough = passthrough;
  }

  return v12;
}

@end