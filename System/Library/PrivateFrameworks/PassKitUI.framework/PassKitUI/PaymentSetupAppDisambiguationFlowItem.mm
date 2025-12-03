@interface PaymentSetupAppDisambiguationFlowItem
- (_TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem)init;
- (void)bankAppDisambiguationViewControllerDidManualEntry:(id)entry;
- (void)bankAppDisambiguationViewControllerDidSelectApp:(id)app;
@end

@implementation PaymentSetupAppDisambiguationFlowItem

- (_TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bankAppDisambiguationViewControllerDidSelectApp:(id)app
{
  appCopy = app;
  selfCopy = self;
  sub_1BD54E548();
}

- (void)bankAppDisambiguationViewControllerDidManualEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_1BD54E670();
}

@end