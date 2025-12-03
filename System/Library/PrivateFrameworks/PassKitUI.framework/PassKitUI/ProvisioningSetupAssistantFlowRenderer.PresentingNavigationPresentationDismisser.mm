@interface ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser
- (_TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser)init;
- (void)dealloc;
- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated;
@end

@implementation ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser

- (void)dealloc
{
  selfCopy = self;
  sub_1BD225F98(0);
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser();
  [(ProvisioningSetupAssistantFlowRenderer.PresentingNavigationPresentationDismisser *)&v3 dealloc];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController operation:(int64_t)operation animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_1BD226600(controllerCopy);
}

- (_TtCC9PassKitUI38ProvisioningSetupAssistantFlowRendererP33_BD58C50EE9B37DCA7685D75FAEB7158241PresentingNavigationPresentationDismisser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end