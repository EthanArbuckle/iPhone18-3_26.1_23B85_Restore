@interface SFCloudChannelsRequestItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCloudChannelsRequestItem)initWithCoder:(id)coder;
- (SFCloudChannelsRequestItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCloudChannelsRequestItem

- (SFCloudChannelsRequestItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFCloudChannelsRequestItem;
  v5 = [(SFCloudChannelsRequestItem *)&v14 init];
  if (v5)
  {
    channelIdentifier = [protobufCopy channelIdentifier];

    if (channelIdentifier)
    {
      channelIdentifier2 = [protobufCopy channelIdentifier];
      [(SFCloudChannelsRequestItem *)v5 setChannelIdentifier:channelIdentifier2];
    }

    pushTopic = [protobufCopy pushTopic];

    if (pushTopic)
    {
      pushTopic2 = [protobufCopy pushTopic];
      [(SFCloudChannelsRequestItem *)v5 setPushTopic:pushTopic2];
    }

    subscribedEntityIdentifier = [protobufCopy subscribedEntityIdentifier];

    if (subscribedEntityIdentifier)
    {
      subscribedEntityIdentifier2 = [protobufCopy subscribedEntityIdentifier];
      [(SFCloudChannelsRequestItem *)v5 setSubscribedEntityIdentifier:subscribedEntityIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  channelIdentifier = [(SFCloudChannelsRequestItem *)self channelIdentifier];
  v4 = [channelIdentifier hash];
  pushTopic = [(SFCloudChannelsRequestItem *)self pushTopic];
  v6 = [pushTopic hash] ^ v4;
  subscribedEntityIdentifier = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
  v8 = [subscribedEntityIdentifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFCloudChannelsRequestItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      channelIdentifier = [(SFCloudChannelsRequestItem *)self channelIdentifier];
      channelIdentifier2 = [(SFCloudChannelsRequestItem *)v6 channelIdentifier];
      if ((channelIdentifier != 0) == (channelIdentifier2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      channelIdentifier3 = [(SFCloudChannelsRequestItem *)self channelIdentifier];
      if (channelIdentifier3)
      {
        channelIdentifier4 = [(SFCloudChannelsRequestItem *)self channelIdentifier];
        channelIdentifier5 = [(SFCloudChannelsRequestItem *)v6 channelIdentifier];
        if (![channelIdentifier4 isEqual:channelIdentifier5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = channelIdentifier5;
      }

      pushTopic = [(SFCloudChannelsRequestItem *)self pushTopic];
      pushTopic2 = [(SFCloudChannelsRequestItem *)v6 pushTopic];
      v14 = pushTopic2;
      if ((pushTopic != 0) == (pushTopic2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      pushTopic3 = [(SFCloudChannelsRequestItem *)self pushTopic];
      if (pushTopic3)
      {
        v25 = pushTopic;
        pushTopic4 = [(SFCloudChannelsRequestItem *)self pushTopic];
        pushTopic5 = [(SFCloudChannelsRequestItem *)v6 pushTopic];
        v28 = pushTopic4;
        if (![pushTopic4 isEqual:?])
        {
          v11 = 0;
          pushTopic = v25;
          goto LABEL_25;
        }

        v29 = pushTopic3;
        v30 = channelIdentifier4;
        pushTopic = v25;
      }

      else
      {
        v29 = 0;
        v30 = channelIdentifier4;
      }

      subscribedEntityIdentifier = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
      subscribedEntityIdentifier2 = [(SFCloudChannelsRequestItem *)v6 subscribedEntityIdentifier];
      if ((subscribedEntityIdentifier != 0) == (subscribedEntityIdentifier2 == 0))
      {

        v11 = 0;
        pushTopic3 = v29;
        channelIdentifier4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = subscribedEntityIdentifier;
        v26 = subscribedEntityIdentifier2;
        subscribedEntityIdentifier3 = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
        pushTopic3 = v29;
        if (subscribedEntityIdentifier3)
        {
          v23 = subscribedEntityIdentifier3;
          subscribedEntityIdentifier4 = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
          subscribedEntityIdentifier5 = [(SFCloudChannelsRequestItem *)v6 subscribedEntityIdentifier];
          v11 = [subscribedEntityIdentifier4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        channelIdentifier4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      channelIdentifier5 = v31;
      if (!channelIdentifier3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  channelIdentifier = [(SFCloudChannelsRequestItem *)self channelIdentifier];
  v6 = [channelIdentifier copy];
  [v4 setChannelIdentifier:v6];

  pushTopic = [(SFCloudChannelsRequestItem *)self pushTopic];
  v8 = [pushTopic copy];
  [v4 setPushTopic:v8];

  subscribedEntityIdentifier = [(SFCloudChannelsRequestItem *)self subscribedEntityIdentifier];
  v10 = [subscribedEntityIdentifier copy];
  [v4 setSubscribedEntityIdentifier:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCloudChannelsRequestItem alloc] initWithFacade:self];
  jsonData = [(_SFPBCloudChannelsRequestItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCloudChannelsRequestItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCloudChannelsRequestItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCloudChannelsRequestItem alloc] initWithFacade:self];
  data = [(_SFPBCloudChannelsRequestItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCloudChannelsRequestItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCloudChannelsRequestItem alloc] initWithData:v5];
  v7 = [(SFCloudChannelsRequestItem *)self initWithProtobuf:v6];

  return v7;
}

@end