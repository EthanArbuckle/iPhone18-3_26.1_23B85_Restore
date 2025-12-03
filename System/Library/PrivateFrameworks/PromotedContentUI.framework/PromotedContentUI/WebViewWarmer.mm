@interface WebViewWarmer
- (_TtC17PromotedContentUIP33_F33E7C2993C44F3307C22CD11BA85E0E13WebViewWarmer)init;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation WebViewWarmer

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17PromotedContentUIP33_F33E7C2993C44F3307C22CD11BA85E0E13WebViewWarmer_finished);
  if (v4)
  {
    selfCopy = self;
    v6 = sub_1C19A2D24(v4);
    v4(v6);

    sub_1C19A504C(v4);
  }
}

- (_TtC17PromotedContentUIP33_F33E7C2993C44F3307C22CD11BA85E0E13WebViewWarmer)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC17PromotedContentUIP33_F33E7C2993C44F3307C22CD11BA85E0E13WebViewWarmer_finished);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(WebViewWarmer *)&v6 init];
}

@end