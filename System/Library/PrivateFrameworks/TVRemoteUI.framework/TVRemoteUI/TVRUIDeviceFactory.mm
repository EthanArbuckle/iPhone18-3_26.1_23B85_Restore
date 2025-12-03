@interface TVRUIDeviceFactory
+ (id)deviceWithIdentifier:(id)identifier;
@end

@implementation TVRUIDeviceFactory

+ (id)deviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[TVRUICoreDevice alloc] _initWithDeviceIdentifier:identifierCopy];

  return v4;
}

@end