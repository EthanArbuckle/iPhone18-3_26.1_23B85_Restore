@interface STAppInfo
- (id)description;
@end

@implementation STAppInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(STAppInfo *)self bundleIdentifier];
  v5 = [(STAppInfo *)self displayName];
  v6 = [(STAppInfo *)self developerName];
  v7 = [(STAppInfo *)self adamID];
  v8 = [(STAppInfo *)self distributorID];
  v9 = [v3 stringWithFormat:@"<%p ID: %@ Name: %@ Developer: %@, AdamID: %llu, DistributorID: %@>", self, v4, v5, v6, v7, v8];

  return v9;
}

@end