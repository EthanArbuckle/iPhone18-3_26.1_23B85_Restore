@interface PresentDevice
+ (id)predicateForChannel:(id)a3;
+ (id)predicateForChannelIdentifier:(id)a3 deviceIdentifier:(id)a4;
@end

@implementation PresentDevice

+ (id)predicateForChannel:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[PresentDevice channelIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K == %@", v5, v4];

  return v6;
}

+ (id)predicateForChannelIdentifier:(id)a3 deviceIdentifier:(id)a4
{
  v5 = MEMORY[0x277CCAC30];
  v6 = a4;
  v7 = a3;
  v8 = +[PresentDevice channelIdentifierKeyPath];
  v9 = +[PresentDevice deviceIdentifierKeyPath];
  v10 = [v5 predicateWithFormat:@"%K == %@ && %K == %@", v8, v7, v9, v6];

  return v10;
}

@end