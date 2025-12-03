@interface UIApplication(WFApplicationContextProvider)
- (id)notificationNameForApplicationStateEvent:()WFApplicationContextProvider applicationContext:;
- (uint64_t)userInterfaceStyle;
@end

@implementation UIApplication(WFApplicationContextProvider)

- (uint64_t)userInterfaceStyle
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    return 2;
  }

  else
  {
    return userInterfaceStyle == 1;
  }
}

- (id)notificationNameForApplicationStateEvent:()WFApplicationContextProvider applicationContext:
{
  if (a3 <= 3)
  {
    self = **(&unk_279EE7F18 + a3);
  }

  return self;
}

@end