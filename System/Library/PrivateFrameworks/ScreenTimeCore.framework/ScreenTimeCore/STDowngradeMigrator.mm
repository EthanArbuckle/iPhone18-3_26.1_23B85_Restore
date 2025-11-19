@interface STDowngradeMigrator
- (STDowngradeMigrator)init;
- (void)triggerMigrationWithPersistenceController:(id)a3 andRequestManager:(id)a4 outError:(id *)a5;
@end

@implementation STDowngradeMigrator

- (void)triggerMigrationWithPersistenceController:(id)a3 andRequestManager:(id)a4 outError:(id *)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = self;
  sub_1000B457C(a3, v8);
  swift_unknownObjectRelease();
}

- (STDowngradeMigrator)init
{
  v2 = (&self->super.isa + OBJC_IVAR___STDowngradeMigrator_defaultStoreName);
  *v2 = 0x746C7561666544;
  v2[1] = 0xE700000000000000;
  v3 = self + OBJC_IVAR___STDowngradeMigrator_restricitonsStoreName;
  strcpy(self + OBJC_IVAR___STDowngradeMigrator_restricitonsStoreName, "restrictions");
  v3[13] = 0;
  *(v3 + 7) = -5120;
  v4 = (&self->super.isa + OBJC_IVAR___STDowngradeMigrator_shareAcrossDevicesStoreName);
  *v4 = 0xD000000000000012;
  v4[1] = 0x800000010014CEF0;
  v5 = (&self->super.isa + OBJC_IVAR___STDowngradeMigrator_userSafetyStoreName);
  *v5 = 0x6566615372657355;
  v5[1] = 0xEF65726F74537974;
  v7.receiver = self;
  v7.super_class = STDowngradeMigrator;
  return [(STDowngradeMigrator *)&v7 init];
}

@end