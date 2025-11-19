@interface DOMCSSFontFaceRule
- (DOMCSSStyleDeclaration)style;
@end

@implementation DOMCSSFontFaceRule

- (DOMCSSStyleDeclaration)style
{
  WebCore::JSMainThreadNullState::JSMainThreadNullState(v7);
  v3 = WebCore::CSSFontFaceRule::style(self->super.super._internal);
  v4 = kit(v3);
  WebCore::JSMainThreadNullState::~JSMainThreadNullState(v7, v5);
  return v4;
}

@end