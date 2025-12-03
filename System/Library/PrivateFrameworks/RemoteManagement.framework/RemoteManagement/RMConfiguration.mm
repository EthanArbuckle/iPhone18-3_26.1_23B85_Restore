@interface RMConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (RMConfiguration)initWithCoder:(id)coder;
- (RMConfiguration)initWithType:(id)type identifier:(id)identifier serverToken:(id)token content:(id)content channel:(id)channel assetByIdentifier:(id)byIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMConfiguration

- (RMConfiguration)initWithType:(id)type identifier:(id)identifier serverToken:(id)token content:(id)content channel:(id)channel assetByIdentifier:(id)byIdentifier
{
  typeCopy = type;
  identifierCopy = identifier;
  tokenCopy = token;
  contentCopy = content;
  channelCopy = channel;
  byIdentifierCopy = byIdentifier;
  v32.receiver = self;
  v32.super_class = RMConfiguration;
  v20 = [(RMConfiguration *)&v32 init];
  if (v20)
  {
    v21 = [typeCopy copy];
    type = v20->_type;
    v20->_type = v21;

    v23 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v23;

    v25 = [tokenCopy copy];
    serverToken = v20->_serverToken;
    v20->_serverToken = v25;

    v27 = [contentCopy copy];
    content = v20->_content;
    v20->_content = v27;

    objc_storeStrong(&v20->_channel, channel);
    v29 = [byIdentifierCopy copy];
    assetByIdentifier = v20->_assetByIdentifier;
    v20->_assetByIdentifier = v29;
  }

  return v20;
}

- (RMConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverToken"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channel"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"assetByIdentifier"];

  v15 = [(RMConfiguration *)self initWithType:v5 identifier:v6 serverToken:v7 content:v8 channel:v9 assetByIdentifier:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(RMConfiguration *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  identifier = [(RMConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  serverToken = [(RMConfiguration *)self serverToken];
  [coderCopy encodeObject:serverToken forKey:@"serverToken"];

  content = [(RMConfiguration *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  channel = [(RMConfiguration *)self channel];
  [coderCopy encodeObject:channel forKey:@"channel"];

  assetByIdentifier = [(RMConfiguration *)self assetByIdentifier];
  [coderCopy encodeObject:assetByIdentifier forKey:@"assetByIdentifier"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMConfiguration *)self isEqualToConfiguration:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(RMConfiguration *)self hash];
  if (v5 == [configurationCopy hash])
  {
    identifier = [(RMConfiguration *)self identifier];
    identifier2 = [configurationCopy identifier];
    if ([identifier isEqualToString:identifier2])
    {
      serverToken = [(RMConfiguration *)self serverToken];
      serverToken2 = [configurationCopy serverToken];
      if ([serverToken isEqualToString:serverToken2])
      {
        type = [(RMConfiguration *)self type];
        type2 = [configurationCopy type];
        if ([type isEqualToString:type2])
        {
          channel = [(RMConfiguration *)self channel];
          channel2 = [configurationCopy channel];
          if ([channel isEqualToChannel:channel2])
          {
            v29 = channel;
            content = [(RMConfiguration *)self content];
            [configurationCopy content];
            v28 = v30 = content;
            if ([content isEqualToData:?])
            {
              assetByIdentifier = [(RMConfiguration *)self assetByIdentifier];
              assetByIdentifier2 = [configurationCopy assetByIdentifier];
              v16 = assetByIdentifier;
              v17 = assetByIdentifier2;
              v18 = v17;
              v19 = v16;
              v20 = v16 == v17;
              channel = v29;
              v27 = v19;
              if (v20)
              {
                v21 = 1;
              }

              else
              {
                v21 = 0;
                if (v19 && v17)
                {
                  v22 = v17;
                  v23 = [v19 isEqual:v17];
                  v18 = v22;
                  v21 = v23;
                }
              }

              v26 = v18;
            }

            else
            {
              v21 = 0;
              channel = v29;
            }
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  identifier = [(RMConfiguration *)self identifier];
  v4 = [identifier hash];
  serverToken = [(RMConfiguration *)self serverToken];
  v6 = [serverToken hash] ^ v4;
  content = [(RMConfiguration *)self content];
  v8 = [content hash];
  channel = [(RMConfiguration *)self channel];
  v10 = v6 ^ v8 ^ [channel hash];
  type = [(RMConfiguration *)self type];
  v12 = [type hash];
  assetByIdentifier = [(RMConfiguration *)self assetByIdentifier];
  v14 = v12 ^ [assetByIdentifier hash];

  return v10 ^ v14;
}

@end