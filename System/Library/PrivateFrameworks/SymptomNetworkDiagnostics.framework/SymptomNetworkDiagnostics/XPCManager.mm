@interface XPCManager
- (void)didReceiveEvent:(id)event;
- (void)didReceiveMessage:(id)message;
@end

@implementation XPCManager

- (void)didReceiveMessage:(id)message
{
  messageCopy = message;
  selfCopy = self;
  sub_22B1025B0(messageCopy);
}

- (void)didReceiveEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_22B1027A8(eventCopy);
}

@end