@interface CSDOwnNumberCallFilter
- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from;
@end

@implementation CSDOwnNumberCallFilter

- (BOOL)shouldFilterIncomingCall:(id)call from:(id)from
{
  callCopy = call;
  fromCopy = from;
  selfCopy = self;
  v9 = sub_10042A224(callCopy);

  return v9 & 1;
}

@end