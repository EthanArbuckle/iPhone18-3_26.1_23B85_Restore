@interface STStatusRequest_MessagesItemStatesItemAssetsUsedItem
+ (NSSet)allowedKeys;
+ (id)buildRequiredOnlyWithAssetIdentifier:(id)identifier withServerHash:(id)hash;
+ (id)buildWithAssetIdentifier:(id)identifier withServerHash:(id)hash;
- (BOOL)loadPayload:(id)payload error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
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

+ (id)buildWithAssetIdentifier:(id)identifier withServerHash:(id)hash
{
  hashCopy = hash;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  [v7 setAssetIdentifier:identifierCopy];

  [v7 setServerHash:hashCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithAssetIdentifier:(id)identifier withServerHash:(id)hash
{
  hashCopy = hash;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  [v7 setAssetIdentifier:identifierCopy];

  [v7 setServerHash:hashCopy];

  return v7;
}

- (BOOL)loadPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  allKeys = [payloadCopy allKeys];
  v8 = [NSMutableSet setWithArray:allKeys];

  v9 = +[STStatusRequest_MessagesItemStatesItemAssetsUsedItem allowedKeys];
  [v8 minusSet:v9];

  if ([v8 count])
  {
    if (!error)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v21 = NSLocalizedDescriptionKey;
    v10 = [NSString stringWithFormat:@"Unexpected payload keys: %@", v8];
    v22 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *error = [NSError errorWithDomain:@"error" code:1 userInfo:v11];

    v12 = 0;
  }

  else
  {
    v20 = 0;
    v13 = [(STStatusRequest_MessagesItemStatesItemAssetsUsedItem *)self loadStringFromDictionary:payloadCopy withKey:@"AssetIdentifier" isRequired:1 defaultValue:0 error:&v20];
    v10 = v20;
    assetIdentifier = self->_assetIdentifier;
    self->_assetIdentifier = v13;

    if (!v10)
    {
      v19 = 0;
      v15 = [(STStatusRequest_MessagesItemStatesItemAssetsUsedItem *)self loadStringFromDictionary:payloadCopy withKey:@"ServerHash" isRequired:1 defaultValue:0 error:&v19];
      v10 = v19;
      serverHash = self->_serverHash;
      self->_serverHash = v15;
    }

    v12 = v10 == 0;
    if (error && v10)
    {
      v17 = v10;
      v12 = 0;
      *error = v10;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = STStatusRequest_MessagesItemStatesItemAssetsUsedItem;
  v4 = [(STStatusRequest_MessagesItemStatesItemAssetsUsedItem *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_assetIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_serverHash copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end