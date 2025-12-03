@interface WebAdNavigationCoordinator
- (_TtC17PromotedContentUI26WebAdNavigationCoordinator)init;
- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change;
- (void)_webView:(id)view webContentProcessDidTerminateWithReason:(int64_t)reason;
@end

@implementation WebAdNavigationCoordinator

- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change
{
  viewCopy = view;
  selfCopy = self;
  sub_1C19B4AC4(view, change);
}

- (void)_webView:(id)view webContentProcessDidTerminateWithReason:(int64_t)reason
{
  viewCopy = view;
  selfCopy = self;
  sub_1C19B4EDC(view, reason);
}

- (_TtC17PromotedContentUI26WebAdNavigationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end