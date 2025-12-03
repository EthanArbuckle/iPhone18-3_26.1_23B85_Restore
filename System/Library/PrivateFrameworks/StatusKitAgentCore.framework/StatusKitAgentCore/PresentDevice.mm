@interface PresentDevice
+ (id)predicateForChannel:(id)channel;
+ (id)predicateForChannelIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier;
@end

@implementation PresentDevice

+ (id)predicateForChannel:(id)channel
{
  v3 = MEMORY[0x277CCAC30];
  channelCopy = channel;
  v5 = +[PresentDevice channelIdentifierKeyPath];
  channelCopy = [v3 predicateWithFormat:@"%K == %@", v5, channelCopy];

  return channelCopy;
}

+ (id)predicateForChannelIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier
{
  v5 = MEMORY[0x277CCAC30];
  deviceIdentifierCopy = deviceIdentifier;
  identifierCopy = identifier;
  v8 = +[PresentDevice channelIdentifierKeyPath];
  v9 = +[PresentDevice deviceIdentifierKeyPath];
  deviceIdentifierCopy = [v5 predicateWithFormat:@"%K == %@ && %K == %@", v8, identifierCopy, v9, deviceIdentifierCopy];

  return deviceIdentifierCopy;
}

@end