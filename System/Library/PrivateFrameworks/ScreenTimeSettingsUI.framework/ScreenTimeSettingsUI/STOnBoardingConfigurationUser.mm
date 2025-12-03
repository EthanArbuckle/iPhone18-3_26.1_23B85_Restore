@interface STOnBoardingConfigurationUser
- (NSNumber)ageBridge;
- (STOnBoardingConfigurationUser)init;
@end

@implementation STOnBoardingConfigurationUser

- (NSNumber)ageBridge
{
  if (*(self + OBJC_IVAR___STOnBoardingConfigurationUser_age + 8))
  {
    initWithInteger_ = [objc_allocWithZone(MEMORY[0x277CCABB0]) init];
  }

  else
  {
    initWithInteger_ = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  return initWithInteger_;
}

- (STOnBoardingConfigurationUser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end