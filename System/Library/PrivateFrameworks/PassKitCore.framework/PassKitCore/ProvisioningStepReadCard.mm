@interface ProvisioningStepReadCard
- (_TtC11PassKitCore24ProvisioningStepReadCard)init;
- (void)tapToProvisionReader:(id)reader didUpdateWithEvent:(int64_t)event;
@end

@implementation ProvisioningStepReadCard

- (_TtC11PassKitCore24ProvisioningStepReadCard)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tapToProvisionReader:(id)reader didUpdateWithEvent:(int64_t)event
{
  readerCopy = reader;
  selfCopy = self;
  sub_1AD4D3DE4(event);
}

@end