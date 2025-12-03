@interface NSSet(WiFiKitUI)
- (id)adhocNetworks;
- (id)infrastructureNetworks;
- (id)instantHotspotNetworks;
- (id)knownNetworks;
- (id)popularNetworks;
- (id)unconfiguredNetworks;
@end

@implementation NSSet(WiFiKitUI)

- (id)instantHotspotNetworks
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isInstantHotspot == YES"];
  v3 = [self filteredSetUsingPredicate:v2];

  return v3;
}

- (id)infrastructureNetworks
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isInstantHotspot == NO && isAdhoc == NO && isUnconfiguredAccessory == NO && isPopular == NO && isKnown == NO"];
  v3 = [self filteredSetUsingPredicate:v2];

  return v3;
}

- (id)adhocNetworks
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isAdhoc == YES"];
  v3 = [self filteredSetUsingPredicate:v2];

  return v3;
}

- (id)unconfiguredNetworks
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isUnconfiguredAccessory == YES"];
  v3 = [self filteredSetUsingPredicate:v2];

  return v3;
}

- (id)popularNetworks
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isKnown == NO && isInstantHotspot == NO && isAdhoc == NO && isUnconfiguredAccessory == NO && isPopular == YES"];
  v3 = [self filteredSetUsingPredicate:v2];

  return v3;
}

- (id)knownNetworks
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isKnown == YES || isInstantHotspot == YES"];
  v3 = [self filteredSetUsingPredicate:v2];

  return v3;
}

@end