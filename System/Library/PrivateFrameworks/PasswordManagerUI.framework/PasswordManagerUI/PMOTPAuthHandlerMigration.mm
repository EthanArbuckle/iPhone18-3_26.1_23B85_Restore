@interface PMOTPAuthHandlerMigration
- (BOOL)migrateDefaultOTPAuthHandlerWithURL:(id)l;
- (PMOTPAuthHandlerMigration)init;
@end

@implementation PMOTPAuthHandlerMigration

- (BOOL)migrateDefaultOTPAuthHandlerWithURL:(id)l
{
  v3 = sub_21CB80BE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80B94();
  v8 = sub_21C7A3C8C(v7);
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

- (PMOTPAuthHandlerMigration)init
{
  v3.receiver = self;
  v3.super_class = PMOTPAuthHandlerMigration;
  return [(PMOTPAuthHandlerMigration *)&v3 init];
}

@end