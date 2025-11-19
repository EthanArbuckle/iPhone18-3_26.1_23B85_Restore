@interface SpotlightDaemonClient
- (_TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient)init;
- (void)searchableItemsDidUpdate:(id)a3;
@end

@implementation SpotlightDaemonClient

- (void)searchableItemsDidUpdate:(id)a3
{
  sub_1DA7AF3EC(0, &qword_1EE114DD0, 0x1E6964E80);
  v4 = sub_1DA940BE4();
  v5 = self;
  sub_1DA88362C(v4);
}

- (_TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC21UserNotificationsCoreP33_2EBB79DBAE553364D10B28CEFE20CBF021SpotlightDaemonClient_handler);
  v4 = type metadata accessor for SpotlightDaemonClient();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(SpotlightDaemonClient *)&v6 init];
}

@end