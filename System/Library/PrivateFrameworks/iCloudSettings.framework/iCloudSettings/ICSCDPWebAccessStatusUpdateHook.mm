@interface ICSCDPWebAccessStatusUpdateHook
- (id)changeControllerForAction:(id)action;
@end

@implementation ICSCDPWebAccessStatusUpdateHook

- (id)changeControllerForAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"webaccess:enable"])
  {
    v4 = 1;
LABEL_5:
    v5 = [MEMORY[0x277CFDAF8] controllerWithTargetWebAccessStatus:v4];
    goto LABEL_7;
  }

  if ([actionCopy isEqualToString:@"webaccess:disable"])
  {
    v4 = 2;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end