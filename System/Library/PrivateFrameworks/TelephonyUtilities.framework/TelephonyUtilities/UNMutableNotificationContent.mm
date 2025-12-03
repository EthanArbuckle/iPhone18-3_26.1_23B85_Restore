@interface UNMutableNotificationContent
- (void)setNotificationProviderIdentifier:(id)identifier;
@end

@implementation UNMutableNotificationContent

- (void)setNotificationProviderIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1002E222C(v4, v6);
}

@end