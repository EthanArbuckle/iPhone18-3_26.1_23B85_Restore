@interface STAgeMigrationTipViewControllerFactory
+ (id)createAgeMigrationTipWithAgeOfMajority:(int64_t)majority userFirstName:(id)name actionBlock:(id)block dismissBlock:(id)dismissBlock;
- (STAgeMigrationTipViewControllerFactory)init;
@end

@implementation STAgeMigrationTipViewControllerFactory

+ (id)createAgeMigrationTipWithAgeOfMajority:(int64_t)majority userFirstName:(id)name actionBlock:(id)block dismissBlock:(id)dismissBlock
{
  v8 = _Block_copy(block);
  v9 = _Block_copy(dismissBlock);
  v10 = sub_264E25108();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  Name11actionBlock07dismissR0So06UIViewH0CSi_SSyycyyctFZ_0 = _s16ScreenTimeUICore36AgeMigrationTipViewControllerFactoryC06createdeF013ageOfMajority13userFirstName11actionBlock07dismissR0So06UIViewH0CSi_SSyycyyctFZ_0(majority, v10, v12, sub_264DBD73C, v13, sub_264DBD7F8, v14);

  return Name11actionBlock07dismissR0So06UIViewH0CSi_SSyycyyctFZ_0;
}

- (STAgeMigrationTipViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AgeMigrationTipViewControllerFactory();
  return [(STAgeMigrationTipViewControllerFactory *)&v3 init];
}

@end