@interface _PKRemoteNetworkPaymentLoadingViewInterface
- (UIViewController)primaryViewController;
- (_PKRemoteNetworkPaymentLoadingViewInterface)init;
- (_PKRemoteNetworkPaymentLoadingViewInterface)initWithConfiguration:(id)a3 host:(id)a4;
- (void)didAppear;
@end

@implementation _PKRemoteNetworkPaymentLoadingViewInterface

- (_PKRemoteNetworkPaymentLoadingViewInterface)initWithConfiguration:(id)a3 host:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = sub_1BD9607AC(v5, a4);

  swift_unknownObjectRelease();
  return v6;
}

- (UIViewController)primaryViewController
{
  v2 = self;
  v3 = sub_1BD95DAEC();

  return v3;
}

- (void)didAppear
{
  v2 = self;
  sub_1BD95DC94();
}

- (_PKRemoteNetworkPaymentLoadingViewInterface)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end