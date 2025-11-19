@interface _PMTOTPMigrationController
- (NSArray)totpGenerators;
- (UIViewController)viewController;
- (_TtC17PasswordManagerUI26_PMTOTPMigrationController)init;
- (_TtC17PasswordManagerUI26_PMTOTPMigrationController)initWithMigrationURL:(id)a3 delegate:(id)a4;
- (_TtP17PasswordManagerUI34_PMTOTPMigrationControllerDelegate_)delegate;
- (int64_t)numberOfCodes;
- (void)addGenerator:(WBSTOTPGenerator *)a3 toSavedAccount:(WBSSavedAccount *)a4 completionHandler:(id)a5;
- (void)setViewController:(id)a3;
@end

@implementation _PMTOTPMigrationController

- (UIViewController)viewController
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setViewController:(id)a3
{
  v5 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtP17PasswordManagerUI34_PMTOTPMigrationControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC17PasswordManagerUI26_PMTOTPMigrationController)initWithMigrationURL:(id)a3 delegate:(id)a4
{
  v5 = sub_21CB80BE4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80B94();
  swift_unknownObjectRetain();
  return _PMTOTPMigrationController.init(migrationURL:delegate:)(v8, a4);
}

- (void)addGenerator:(WBSTOTPGenerator *)a3 toSavedAccount:(WBSSavedAccount *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21CBA0DB0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21CBA0DB8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_21C963EF4(0, 0, v12, &unk_21CBA0DC0, v17);
}

- (int64_t)numberOfCodes
{
  v3 = *(self + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_totpMigrationModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_21CB81DB4();

  v5 = *(v7 + 16);

  return v5;
}

- (NSArray)totpGenerators
{
  v2 = self;
  sub_21C7B0628();

  sub_21C7B1B18();
  v3 = sub_21CB85814();

  return v3;
}

- (_TtC17PasswordManagerUI26_PMTOTPMigrationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end