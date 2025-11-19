@interface STAgeMigrationTipViewControllerFactory
+ (id)createAgeMigrationTipWithAgeOfMajority:(int64_t)a3 userFirstName:(id)a4 actionBlock:(id)a5 dismissBlock:(id)a6;
- (STAgeMigrationTipViewControllerFactory)init;
@end

@implementation STAgeMigrationTipViewControllerFactory

+ (id)createAgeMigrationTipWithAgeOfMajority:(int64_t)a3 userFirstName:(id)a4 actionBlock:(id)a5 dismissBlock:(id)a6
{
  v8 = _Block_copy(a5);
  v9 = _Block_copy(a6);
  v10 = sub_264E25108();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  Name11actionBlock07dismissR0So06UIViewH0CSi_SSyycyyctFZ_0 = _s16ScreenTimeUICore36AgeMigrationTipViewControllerFactoryC06createdeF013ageOfMajority13userFirstName11actionBlock07dismissR0So06UIViewH0CSi_SSyycyyctFZ_0(a3, v10, v12, sub_264DBD73C, v13, sub_264DBD7F8, v14);

  return Name11actionBlock07dismissR0So06UIViewH0CSi_SSyycyyctFZ_0;
}

- (STAgeMigrationTipViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AgeMigrationTipViewControllerFactory();
  return [(STAgeMigrationTipViewControllerFactory *)&v3 init];
}

@end