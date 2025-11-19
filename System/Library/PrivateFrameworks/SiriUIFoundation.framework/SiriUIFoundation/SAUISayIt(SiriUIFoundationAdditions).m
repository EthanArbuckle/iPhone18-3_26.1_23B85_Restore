@interface SAUISayIt(SiriUIFoundationAdditions)
- (uint64_t)sruif_ignoresMuteSwitch;
- (void)sruif_setIgnoresMuteSwitch:()SiriUIFoundationAdditions;
@end

@implementation SAUISayIt(SiriUIFoundationAdditions)

- (void)sruif_setIgnoresMuteSwitch:()SiriUIFoundationAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setProperty:v2 forKey:@"SiriUISAUISayItIgnoresMuteSwitch"];
}

- (uint64_t)sruif_ignoresMuteSwitch
{
  v1 = [a1 propertyForKey:@"SiriUISAUISayItIgnoresMuteSwitch"];
  v2 = [v1 BOOLValue];

  return v2;
}

@end