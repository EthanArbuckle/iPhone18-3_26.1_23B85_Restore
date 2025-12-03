@interface SAUISayIt(SiriUIFoundationAdditions)
- (uint64_t)sruif_ignoresMuteSwitch;
- (void)sruif_setIgnoresMuteSwitch:()SiriUIFoundationAdditions;
@end

@implementation SAUISayIt(SiriUIFoundationAdditions)

- (void)sruif_setIgnoresMuteSwitch:()SiriUIFoundationAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setProperty:v2 forKey:@"SiriUISAUISayItIgnoresMuteSwitch"];
}

- (uint64_t)sruif_ignoresMuteSwitch
{
  v1 = [self propertyForKey:@"SiriUISAUISayItIgnoresMuteSwitch"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end