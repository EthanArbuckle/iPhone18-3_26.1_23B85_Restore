@interface PublishedLocalStatusDevice
+ (id)predicateForPublishedLocalStatusDeviceIdentifiers:(id)a3;
@end

@implementation PublishedLocalStatusDevice

+ (id)predicateForPublishedLocalStatusDeviceIdentifiers:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = +[PublishedLocalStatusDevice idsIdentifierKeyPath];
  v6 = [v3 predicateWithFormat:@"%K IN %@", v5, v4];

  return v6;
}

@end