@interface BaseTTRManager
- (_TtC17SpotlightUIShared14BaseTTRManager)init;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5;
@end

@implementation BaseTTRManager

- (_TtC17SpotlightUIShared14BaseTTRManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_invalidated) = 0;
  v3 = self + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_queryID;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_command) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_notifiedCommand) = 0;
  v4 = OBJC_IVAR____TtC17SpotlightUIShared14BaseTTRManager_notificationMinInterval;
  sub_26B9A29F8();
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseTTRManager();
  return [(BaseTTRManager *)&v7 init];
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_26B9AC824();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26B9B67E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_26B9B67F8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_26B905410(0, 0, v12, &unk_26B9B6808, v17);
}

@end