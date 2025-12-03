@interface _PKRemoteNetworkPaymentLoadingViewInterface
- (UIViewController)primaryViewController;
- (_PKRemoteNetworkPaymentLoadingViewInterface)init;
- (_PKRemoteNetworkPaymentLoadingViewInterface)initWithConfiguration:(id)configuration host:(id)host;
- (void)didAppear;
@end

@implementation _PKRemoteNetworkPaymentLoadingViewInterface

- (_PKRemoteNetworkPaymentLoadingViewInterface)initWithConfiguration:(id)configuration host:(id)host
{
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  v6 = sub_1BD9607AC(configurationCopy, host);

  swift_unknownObjectRelease();
  return v6;
}

- (UIViewController)primaryViewController
{
  selfCopy = self;
  v3 = sub_1BD95DAEC();

  return v3;
}

- (void)didAppear
{
  selfCopy = self;
  sub_1BD95DC94();
}

- (_PKRemoteNetworkPaymentLoadingViewInterface)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end