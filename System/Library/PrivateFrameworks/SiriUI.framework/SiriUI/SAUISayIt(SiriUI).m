@interface SAUISayIt(SiriUI)
- (uint64_t)siriui_ignoresMuteSwitch;
- (void)siriui_setIgnoresMuteSwitch:()SiriUI;
@end

@implementation SAUISayIt(SiriUI)

- (void)siriui_setIgnoresMuteSwitch:()SiriUI
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setProperty:v2 forKey:@"SiriUISAUISayItIgnoresMuteSwitch"];
}

- (uint64_t)siriui_ignoresMuteSwitch
{
  v1 = [a1 propertyForKey:@"SiriUISAUISayItIgnoresMuteSwitch"];
  v2 = [v1 BOOLValue];

  return v2;
}

@end