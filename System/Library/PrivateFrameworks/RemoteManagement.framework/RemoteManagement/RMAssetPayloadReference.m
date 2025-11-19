@interface RMAssetPayloadReference
- (id)reportDetails;
@end

@implementation RMAssetPayloadReference

- (id)reportDetails
{
  v14[0] = @"asset";
  v3 = [(RMAssetPayloadReference *)self asset];
  v4 = [v3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"(not present)";
  }

  v15[0] = v6;
  v14[1] = @"configuration";
  v7 = [(RMAssetPayloadReference *)self configuration];
  v8 = [v7 identifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(not present)";
  }

  v15[1] = v10;
  v14[2] = @"assetIdentifier";
  v11 = [(RMAssetPayloadReference *)self assetIdentifier];
  v15[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end