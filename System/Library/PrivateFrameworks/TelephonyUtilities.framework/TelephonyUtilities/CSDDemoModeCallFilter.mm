@interface CSDDemoModeCallFilter
- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from;
@end

@implementation CSDDemoModeCallFilter

- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from
{
  callCopy = call;
  fromCopy = from;
  selfCopy = self;
  v9 = sub_1003C5FC8(callCopy);

  return v9 & 1;
}

@end