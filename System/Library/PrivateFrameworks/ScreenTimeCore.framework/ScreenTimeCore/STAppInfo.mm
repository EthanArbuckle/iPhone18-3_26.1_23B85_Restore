@interface STAppInfo
- (id)description;
@end

@implementation STAppInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  bundleIdentifier = [(STAppInfo *)self bundleIdentifier];
  displayName = [(STAppInfo *)self displayName];
  developerName = [(STAppInfo *)self developerName];
  adamID = [(STAppInfo *)self adamID];
  distributorID = [(STAppInfo *)self distributorID];
  v9 = [v3 stringWithFormat:@"<%p ID: %@ Name: %@ Developer: %@, AdamID: %llu, DistributorID: %@>", self, bundleIdentifier, displayName, developerName, adamID, distributorID];

  return v9;
}

@end