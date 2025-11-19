@interface RBPLEvent
- (RBPLEvent)initWithevent:(unint64_t)a3 identity:(id)a4 assertionCount:(int)a5 pid:(int)a6;
@end

@implementation RBPLEvent

- (RBPLEvent)initWithevent:(unint64_t)a3 identity:(id)a4 assertionCount:(int)a5 pid:(int)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = RBPLEvent;
  v12 = [(RBPLEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_event = a3;
    objc_storeStrong(&v12->_identity, a4);
    v13->_assertionCount = a5;
    v13->_pid = a6;
  }

  return v13;
}

@end