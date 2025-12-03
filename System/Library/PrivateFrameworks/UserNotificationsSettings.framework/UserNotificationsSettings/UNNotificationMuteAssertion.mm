@interface UNNotificationMuteAssertion
- (UNNotificationMuteAssertion)initWithCoder:(id)coder;
- (id)_init;
@end

@implementation UNNotificationMuteAssertion

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UNNotificationMuteAssertion;
  return [(UNNotificationMuteAssertion *)&v3 init];
}

- (UNNotificationMuteAssertion)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = UNNotificationMuteAssertion;
  return [(UNNotificationMuteAssertion *)&v4 init];
}

@end