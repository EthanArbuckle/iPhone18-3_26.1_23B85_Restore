@interface Channel
+ (id)predicateForChannelIdentifier:(id)a3;
+ (id)predicateForChannelTypePresence;
+ (id)predicateForChannelTypeStatus;
+ (id)predicateForCreationDateNotNil;
+ (id)predicateForPresenceIdentifier:(id)a3;
+ (id)predicateForStatusTypeIdentifier:(id)a3;
@end

@implementation Channel

+ (id)predicateForStatusTypeIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[Channel statusTypeKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForChannelTypeStatus
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[Channel channelTypeKeyPath];
  v4 = [v2 predicateWithFormat:@"%K == %@", v3, &unk_2833EBA20];

  return v4;
}

+ (id)predicateForChannelTypePresence
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[Channel channelTypeKeyPath];
  v4 = [v2 predicateWithFormat:@"%K == %@", v3, &unk_2833EBA38];

  return v4;
}

+ (id)predicateForPresenceIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[Channel presenceIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForChannelIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[Channel identifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForCreationDateNotNil
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[Channel dateChannelCreatedKeyPath];
  v4 = [v2 predicateWithFormat:@"%K != nil", v3];

  return v4;
}

@end