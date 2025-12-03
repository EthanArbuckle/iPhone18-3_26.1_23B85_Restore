@interface RWIProtocolDebuggerAssertPauseReason
- (NSString)message;
- (void)setMessage:(id)message;
@end

@implementation RWIProtocolDebuggerAssertPauseReason

- (void)setMessage:(id)message
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerAssertPauseReason;
  [(RWIProtocolJSONObject *)&v3 setString:message forKey:@"message"];
}

- (NSString)message
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDebuggerAssertPauseReason;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"message"];

  return v2;
}

@end