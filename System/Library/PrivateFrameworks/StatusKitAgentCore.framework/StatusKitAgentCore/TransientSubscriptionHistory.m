@interface TransientSubscriptionHistory
+ (id)predicateForChannelIdentifier:(id)a3;
+ (id)predicateForLastSubscriptionDate:(id)a3;
@end

@implementation TransientSubscriptionHistory

+ (id)predicateForLastSubscriptionDate:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[TransientSubscriptionHistory lastSubscriptionDateKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForChannelIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[TransientSubscriptionHistory channelIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

@end