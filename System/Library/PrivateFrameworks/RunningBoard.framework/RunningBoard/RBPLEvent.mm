@interface RBPLEvent
- (RBPLEvent)initWithevent:(unint64_t)withevent identity:(id)identity assertionCount:(int)count pid:(int)pid;
@end

@implementation RBPLEvent

- (RBPLEvent)initWithevent:(unint64_t)withevent identity:(id)identity assertionCount:(int)count pid:(int)pid
{
  identityCopy = identity;
  v15.receiver = self;
  v15.super_class = RBPLEvent;
  v12 = [(RBPLEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_event = withevent;
    objc_storeStrong(&v12->_identity, identity);
    v13->_assertionCount = count;
    v13->_pid = pid;
  }

  return v13;
}

@end