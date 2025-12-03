@interface PublishedLocalStatusDevice
+ (id)predicateForPublishedLocalStatusDeviceIdentifiers:(id)identifiers;
@end

@implementation PublishedLocalStatusDevice

+ (id)predicateForPublishedLocalStatusDeviceIdentifiers:(id)identifiers
{
  v3 = MEMORY[0x277CCAC30];
  identifiersCopy = identifiers;
  v5 = +[PublishedLocalStatusDevice idsIdentifierKeyPath];
  identifiersCopy = [v3 predicateWithFormat:@"%K IN %@", v5, identifiersCopy];

  return identifiersCopy;
}

@end