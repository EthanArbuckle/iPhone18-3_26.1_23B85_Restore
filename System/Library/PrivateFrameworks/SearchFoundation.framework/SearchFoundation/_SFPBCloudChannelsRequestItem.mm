@interface _SFPBCloudChannelsRequestItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCloudChannelsRequestItem)initWithDictionary:(id)dictionary;
- (_SFPBCloudChannelsRequestItem)initWithFacade:(id)facade;
- (_SFPBCloudChannelsRequestItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setChannelIdentifier:(id)identifier;
- (void)setPushTopic:(id)topic;
- (void)setSubscribedEntityIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCloudChannelsRequestItem

- (_SFPBCloudChannelsRequestItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBCloudChannelsRequestItem *)self init];
  if (v5)
  {
    channelIdentifier = [facadeCopy channelIdentifier];

    if (channelIdentifier)
    {
      channelIdentifier2 = [facadeCopy channelIdentifier];
      [(_SFPBCloudChannelsRequestItem *)v5 setChannelIdentifier:channelIdentifier2];
    }

    pushTopic = [facadeCopy pushTopic];

    if (pushTopic)
    {
      pushTopic2 = [facadeCopy pushTopic];
      [(_SFPBCloudChannelsRequestItem *)v5 setPushTopic:pushTopic2];
    }

    subscribedEntityIdentifier = [facadeCopy subscribedEntityIdentifier];

    if (subscribedEntityIdentifier)
    {
      subscribedEntityIdentifier2 = [facadeCopy subscribedEntityIdentifier];
      [(_SFPBCloudChannelsRequestItem *)v5 setSubscribedEntityIdentifier:subscribedEntityIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCloudChannelsRequestItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBCloudChannelsRequestItem;
  v5 = [(_SFPBCloudChannelsRequestItem *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"channelIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCloudChannelsRequestItem *)v5 setChannelIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pushTopic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBCloudChannelsRequestItem *)v5 setPushTopic:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subscribedEntityIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBCloudChannelsRequestItem *)v5 setSubscribedEntityIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCloudChannelsRequestItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCloudChannelsRequestItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCloudChannelsRequestItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_channelIdentifier)
  {
    channelIdentifier = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
    v5 = [channelIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"channelIdentifier"];
  }

  if (self->_pushTopic)
  {
    pushTopic = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
    v7 = [pushTopic copy];
    [dictionary setObject:v7 forKeyedSubscript:@"pushTopic"];
  }

  if (self->_subscribedEntityIdentifier)
  {
    subscribedEntityIdentifier = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
    v9 = [subscribedEntityIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"subscribedEntityIdentifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_channelIdentifier hash];
  v4 = [(NSString *)self->_pushTopic hash]^ v3;
  return v4 ^ [(NSString *)self->_subscribedEntityIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  channelIdentifier = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
  channelIdentifier2 = [equalCopy channelIdentifier];
  if ((channelIdentifier != 0) == (channelIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  channelIdentifier3 = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
  if (channelIdentifier3)
  {
    v8 = channelIdentifier3;
    channelIdentifier4 = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
    channelIdentifier5 = [equalCopy channelIdentifier];
    v11 = [channelIdentifier4 isEqual:channelIdentifier5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  channelIdentifier = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
  channelIdentifier2 = [equalCopy pushTopic];
  if ((channelIdentifier != 0) == (channelIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  pushTopic = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
  if (pushTopic)
  {
    v13 = pushTopic;
    pushTopic2 = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
    pushTopic3 = [equalCopy pushTopic];
    v16 = [pushTopic2 isEqual:pushTopic3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  channelIdentifier = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
  channelIdentifier2 = [equalCopy subscribedEntityIdentifier];
  if ((channelIdentifier != 0) != (channelIdentifier2 == 0))
  {
    subscribedEntityIdentifier = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
    if (!subscribedEntityIdentifier)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = subscribedEntityIdentifier;
    subscribedEntityIdentifier2 = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
    subscribedEntityIdentifier3 = [equalCopy subscribedEntityIdentifier];
    v21 = [subscribedEntityIdentifier2 isEqual:subscribedEntityIdentifier3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  channelIdentifier = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
  if (channelIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  pushTopic = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
  if (pushTopic)
  {
    PBDataWriterWriteStringField();
  }

  subscribedEntityIdentifier = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
  if (subscribedEntityIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setSubscribedEntityIdentifier:(id)identifier
{
  v4 = [identifier copy];
  subscribedEntityIdentifier = self->_subscribedEntityIdentifier;
  self->_subscribedEntityIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPushTopic:(id)topic
{
  v4 = [topic copy];
  pushTopic = self->_pushTopic;
  self->_pushTopic = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setChannelIdentifier:(id)identifier
{
  v4 = [identifier copy];
  channelIdentifier = self->_channelIdentifier;
  self->_channelIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end