@interface RMAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAsset:(id)asset;
- (RMAsset)initWithCoder:(id)coder;
- (RMAsset)initWithType:(id)type identifier:(id)identifier serverToken:(id)token content:(id)content channel:(id)channel;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMAsset

- (RMAsset)initWithType:(id)type identifier:(id)identifier serverToken:(id)token content:(id)content channel:(id)channel
{
  typeCopy = type;
  identifierCopy = identifier;
  tokenCopy = token;
  contentCopy = content;
  channelCopy = channel;
  v27.receiver = self;
  v27.super_class = RMAsset;
  v17 = [(RMAsset *)&v27 init];
  if (v17)
  {
    v18 = [typeCopy copy];
    type = v17->_type;
    v17->_type = v18;

    v20 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v20;

    v22 = [tokenCopy copy];
    serverToken = v17->_serverToken;
    v17->_serverToken = v22;

    v24 = [contentCopy copy];
    content = v17->_content;
    v17->_content = v24;

    objc_storeStrong(&v17->_channel, channel);
  }

  return v17;
}

- (RMAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverToken"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channel"];

  v10 = [(RMAsset *)self initWithType:v5 identifier:v6 serverToken:v7 content:v8 channel:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(RMAsset *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  identifier = [(RMAsset *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  serverToken = [(RMAsset *)self serverToken];
  [coderCopy encodeObject:serverToken forKey:@"serverToken"];

  content = [(RMAsset *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  channel = [(RMAsset *)self channel];
  [coderCopy encodeObject:channel forKey:@"channel"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMAsset *)self isEqualToAsset:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(RMAsset *)self hash];
  if (v5 == [assetCopy hash])
  {
    identifier = [(RMAsset *)self identifier];
    identifier2 = [assetCopy identifier];
    if ([identifier isEqualToString:identifier2])
    {
      serverToken = [(RMAsset *)self serverToken];
      serverToken2 = [assetCopy serverToken];
      if ([serverToken isEqualToString:serverToken2])
      {
        type = [(RMAsset *)self type];
        type2 = [assetCopy type];
        if ([type isEqualToString:type2])
        {
          channel = [(RMAsset *)self channel];
          channel2 = [assetCopy channel];
          if ([channel isEqualToChannel:channel2])
          {
            content = [(RMAsset *)self content];
            [assetCopy content];
            v14 = v18 = channel;
            v15 = [content isEqualToData:v14];

            channel = v18;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  identifier = [(RMAsset *)self identifier];
  v4 = [identifier hash];
  serverToken = [(RMAsset *)self serverToken];
  v6 = [serverToken hash] ^ v4;
  content = [(RMAsset *)self content];
  v8 = [content hash];
  channel = [(RMAsset *)self channel];
  v10 = v6 ^ v8 ^ [channel hash];
  type = [(RMAsset *)self type];
  v12 = [type hash];

  return v10 ^ v12;
}

@end