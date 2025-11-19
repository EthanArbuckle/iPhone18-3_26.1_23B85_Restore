@interface PresenceSubscription
+ (id)predicateForChannelIdentifier:(id)a3;
+ (id)predicateForPresenceIdentifier:(id)a3;
@end

@implementation PresenceSubscription

+ (id)predicateForChannelIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[PresenceSubscription channelIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForPresenceIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[PresenceSubscription presenceIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

@end