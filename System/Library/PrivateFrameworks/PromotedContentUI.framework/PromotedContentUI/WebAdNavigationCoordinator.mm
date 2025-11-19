@interface WebAdNavigationCoordinator
- (_TtC17PromotedContentUI26WebAdNavigationCoordinator)init;
- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4;
- (void)_webView:(id)a3 webContentProcessDidTerminateWithReason:(int64_t)a4;
@end

@implementation WebAdNavigationCoordinator

- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_1C19B4AC4(a3, a4);
}

- (void)_webView:(id)a3 webContentProcessDidTerminateWithReason:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_1C19B4EDC(a3, a4);
}

- (_TtC17PromotedContentUI26WebAdNavigationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end