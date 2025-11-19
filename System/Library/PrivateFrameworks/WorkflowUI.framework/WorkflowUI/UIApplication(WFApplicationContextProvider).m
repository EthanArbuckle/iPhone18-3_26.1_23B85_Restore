@interface UIApplication(WFApplicationContextProvider)
- (id)notificationNameForApplicationStateEvent:()WFApplicationContextProvider applicationContext:;
- (uint64_t)userInterfaceStyle;
@end

@implementation UIApplication(WFApplicationContextProvider)

- (uint64_t)userInterfaceStyle
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (id)notificationNameForApplicationStateEvent:()WFApplicationContextProvider applicationContext:
{
  if (a3 <= 3)
  {
    a1 = **(&unk_279EE7F18 + a3);
  }

  return a1;
}

@end