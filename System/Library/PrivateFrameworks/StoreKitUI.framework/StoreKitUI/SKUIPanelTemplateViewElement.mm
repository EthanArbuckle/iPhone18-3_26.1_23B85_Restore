@interface SKUIPanelTemplateViewElement
- (SKUIImageViewElement)backgroundImageElement;
@end

@implementation SKUIPanelTemplateViewElement

- (SKUIImageViewElement)backgroundImageElement
{
  v2 = [(SKUIViewElement *)self firstChildForElementType:7];
  v3 = [v2 firstChildForElementType:49];

  return v3;
}

@end