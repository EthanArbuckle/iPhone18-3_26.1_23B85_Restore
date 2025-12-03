@interface RMAssetPayloadReference
- (id)reportDetails;
@end

@implementation RMAssetPayloadReference

- (id)reportDetails
{
  v14[0] = @"asset";
  asset = [(RMAssetPayloadReference *)self asset];
  identifier = [asset identifier];
  v5 = identifier;
  if (identifier)
  {
    v6 = identifier;
  }

  else
  {
    v6 = @"(not present)";
  }

  v15[0] = v6;
  v14[1] = @"configuration";
  configuration = [(RMAssetPayloadReference *)self configuration];
  identifier2 = [configuration identifier];
  v9 = identifier2;
  if (identifier2)
  {
    v10 = identifier2;
  }

  else
  {
    v10 = @"(not present)";
  }

  v15[1] = v10;
  v14[2] = @"assetIdentifier";
  assetIdentifier = [(RMAssetPayloadReference *)self assetIdentifier];
  v15[2] = assetIdentifier;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end