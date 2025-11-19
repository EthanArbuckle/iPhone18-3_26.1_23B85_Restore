@interface SFCloudChannelsRequestItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCloudChannelsRequestItem)initWithCoder:(id)a3;
- (SFCloudChannelsRequestItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCloudChannelsRequestItem

- (SFCloudChannelsRequestItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFCloudChannelsRequestItem;
  v5 = [(SFCloudChannelsRequestItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 channelIdentifier];

    if (v6)
    {
      v7 = [v4 channelIdentifier];
      [(SFCloudChannelsRequestItem *)v5 setChannelIdentifier:v7];
    }

    v8 = [v4 pushTopic];

    if (v8)
    {
      v9 = [v4 pushTopic];
      [(SFCloudChannelsRequestItem *)v5 setPushTopic:v9];
    }

    v10 = [v4 subscribedEntityIdentifier];

    if (v10)
    {
      v11 = [v4 subscribedEntityIdentifier];
      [(SFCloudChannelsRequestItem *)v5 setSubscribedEntityIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFCloudChannelsRequestItem *)self channelIdentifier];
  v4 = [v3 hash];
  v5 = [(SFCloudChannelsRequestItem *)self pushTopic];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFCloudChannelsRequestItem *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFCloudChannelsRequestItem *)self channelIdentifier];
      v8 = [(SFCloudChannelsRequestItem *)v6 channelIdentifier];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(SFCloudChannelsRequestItem *)self channelIdentifier];
      if (v9)
      {
        v3 = [(SFCloudChannelsRequestItem *)self channelIdentifier];
        v10 = [(SFCloudChannelsRequestItem *)v6 channelIdentifier];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(SFCloudChannelsRequestItem *)self pushTopic];
      v13 = [(SFCloudChannelsRequestItem *)v6 pushTopic];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(SFCloudChannelsRequestItem *)self pushTopic];
      if (v15)
      {
        v25 = v12;
        v16 = [(SFCloudChannelsRequestItem *)self pushTopic];
        v27 = [(SFCloudChannelsRequestItem *)v6 pushTopic];
        v28 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v12 = v25;
          goto LABEL_25;
        }

        v29 = v15;
        v30 = v3;
        v12 = v25;
      }

      else
      {
        v29 = 0;
        v30 = v3;
      }

      v17 = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
      v18 = [(SFCloudChannelsRequestItem *)v6 subscribedEntityIdentifier];
      if ((v17 != 0) == (v18 == 0))
      {

        v11 = 0;
        v15 = v29;
        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = v17;
        v26 = v18;
        v19 = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
          v20 = [(SFCloudChannelsRequestItem *)v6 subscribedEntityIdentifier];
          v11 = [v22 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      v10 = v31;
      if (!v9)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFCloudChannelsRequestItem *)self channelIdentifier];
  v6 = [v5 copy];
  [v4 setChannelIdentifier:v6];

  v7 = [(SFCloudChannelsRequestItem *)self pushTopic];
  v8 = [v7 copy];
  [v4 setPushTopic:v8];

  v9 = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
  v10 = [v9 copy];
  [v4 setSubscribedEntityIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCloudChannelsRequestItem alloc] initWithFacade:self];
  v3 = [(_SFPBCloudChannelsRequestItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCloudChannelsRequestItem alloc] initWithFacade:self];
  v3 = [(_SFPBCloudChannelsRequestItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCloudChannelsRequestItem alloc] initWithFacade:self];
  v5 = [(_SFPBCloudChannelsRequestItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCloudChannelsRequestItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCloudChannelsRequestItem alloc] initWithData:v5];
  v7 = [(SFCloudChannelsRequestItem *)self initWithProtobuf:v6];

  return v7;
}

@end