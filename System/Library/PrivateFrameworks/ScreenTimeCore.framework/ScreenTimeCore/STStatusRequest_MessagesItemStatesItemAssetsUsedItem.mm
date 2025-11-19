@interface STStatusRequest_MessagesItemStatesItemAssetsUsedItem
+ (NSSet)allowedKeys;
+ (id)buildRequiredOnlyWithAssetIdentifier:(id)a3 withServerHash:(id)a4;
+ (id)buildWithAssetIdentifier:(id)a3 withServerHash:(id)a4;
- (BOOL)loadPayload:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayload;
@end

@implementation STStatusRequest_MessagesItemStatesItemAssetsUsedItem

+ (NSSet)allowedKeys
{
  v5[0] = @"AssetIdentifier";
  v5[1] = @"ServerHash";
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

+ (id)buildWithAssetIdentifier:(id)a3 withServerHash:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setAssetIdentifier:v6];

  [v7 setServerHash:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithAssetIdentifier:(id)a3 withServerHash:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setAssetIdentifier:v6];

  [v7 setServerHash:v5];

  return v7;
}

- (BOOL)loadPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 allKeys];
  v8 = [NSMutableSet setWithArray:v7];

  v9 = +[STStatusRequest_MessagesItemStatesItemAssetsUsedItem allowedKeys];
  [v8 minusSet:v9];

  if ([v8 count])
  {
    if (!a4)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v21 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"Unexpected payload keys: %@", v8];
    v22 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *a4 = [NSError errorWithDomain:@"error" code:1 userInfo:v11];

    v12 = 0;
  }

  else
  {
    v20 = 0;
    v13 = [(STStatusRequest_MessagesItemStatesItemAssetsUsedItem *)self loadStringFromDictionary:v6 withKey:@"AssetIdentifier" isRequired:1 defaultValue:0 error:&v20];
    v10 = v20;
    assetIdentifier = self->_assetIdentifier;
    self->_assetIdentifier = v13;

    if (!v10)
    {
      v19 = 0;
      v15 = [(STStatusRequest_MessagesItemStatesItemAssetsUsedItem *)self loadStringFromDictionary:v6 withKey:@"ServerHash" isRequired:1 defaultValue:0 error:&v19];
      v10 = v19;
      serverHash = self->_serverHash;
      self->_serverHash = v15;
    }

    v12 = v10 == 0;
    if (a4 && v10)
    {
      v17 = v10;
      v12 = 0;
      *a4 = v10;
    }
  }

LABEL_11:
  return v12;
}

- (id)serializePayload
{
  v3 = +[NSMutableDictionary dictionary];
  [(STStatusRequest_MessagesItemStatesItemAssetsUsedItem *)self serializeStringIntoDictionary:v3 withKey:@"AssetIdentifier" withValue:self->_assetIdentifier isRequired:1 defaultValue:0];
  [(STStatusRequest_MessagesItemStatesItemAssetsUsedItem *)self serializeStringIntoDictionary:v3 withKey:@"ServerHash" withValue:self->_serverHash isRequired:1 defaultValue:0];
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = STStatusRequest_MessagesItemStatesItemAssetsUsedItem;
  v4 = [(STStatusRequest_MessagesItemStatesItemAssetsUsedItem *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_assetIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_serverHash copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end