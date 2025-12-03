@interface ConcreteAXUIClient
- (_TtC16ScreenSharingKit18ConcreteAXUIClient)init;
- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
@end

@implementation ConcreteAXUIClient

- (_TtC16ScreenSharingKit18ConcreteAXUIClient)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_serviceName);
  *v3 = 0xD000000000000020;
  v3[1] = 0x8000000264B5CE30;
  *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_screenSharingClient) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit18ConcreteAXUIClient_interruptionHandler);
  v5 = type metadata accessor for ConcreteAXUIClient();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(ConcreteAXUIClient *)&v7 init];
}

- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier
{
  mainAccessQueue = [objc_opt_self() mainAccessQueue];

  return mainAccessQueue;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  sub_264AB16FC(client);
}

@end