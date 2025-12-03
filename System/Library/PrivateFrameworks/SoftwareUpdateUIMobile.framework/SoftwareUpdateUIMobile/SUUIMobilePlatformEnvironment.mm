@interface SUUIMobilePlatformEnvironment
- (void)onAutomationEnabledStateChanged:(BOOL)changed;
@end

@implementation SUUIMobilePlatformEnvironment

- (void)onAutomationEnabledStateChanged:(BOOL)changed
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_26B128B88();
  SUUIMobilePlatformEnvironment.onAutomationEnabledStateChanged(_:)(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

@end