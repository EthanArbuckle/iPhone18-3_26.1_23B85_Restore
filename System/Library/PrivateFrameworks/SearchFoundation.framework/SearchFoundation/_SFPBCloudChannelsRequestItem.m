@interface _SFPBCloudChannelsRequestItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCloudChannelsRequestItem)initWithDictionary:(id)a3;
- (_SFPBCloudChannelsRequestItem)initWithFacade:(id)a3;
- (_SFPBCloudChannelsRequestItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setChannelIdentifier:(id)a3;
- (void)setPushTopic:(id)a3;
- (void)setSubscribedEntityIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCloudChannelsRequestItem

- (_SFPBCloudChannelsRequestItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBCloudChannelsRequestItem *)self init];
  if (v5)
  {
    v6 = [v4 channelIdentifier];

    if (v6)
    {
      v7 = [v4 channelIdentifier];
      [(_SFPBCloudChannelsRequestItem *)v5 setChannelIdentifier:v7];
    }

    v8 = [v4 pushTopic];

    if (v8)
    {
      v9 = [v4 pushTopic];
      [(_SFPBCloudChannelsRequestItem *)v5 setPushTopic:v9];
    }

    v10 = [v4 subscribedEntityIdentifier];

    if (v10)
    {
      v11 = [v4 subscribedEntityIdentifier];
      [(_SFPBCloudChannelsRequestItem *)v5 setSubscribedEntityIdentifier:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBCloudChannelsRequestItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBCloudChannelsRequestItem;
  v5 = [(_SFPBCloudChannelsRequestItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"channelIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBCloudChannelsRequestItem *)v5 setChannelIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"pushTopic"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBCloudChannelsRequestItem *)v5 setPushTopic:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"subscribedEntityIdentifier"];
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

- (_SFPBCloudChannelsRequestItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCloudChannelsRequestItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCloudChannelsRequestItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_channelIdentifier)
  {
    v4 = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"channelIdentifier"];
  }

  if (self->_pushTopic)
  {
    v6 = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"pushTopic"];
  }

  if (self->_subscribedEntityIdentifier)
  {
    v8 = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"subscribedEntityIdentifier"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_channelIdentifier hash];
  v4 = [(NSString *)self->_pushTopic hash]^ v3;
  return v4 ^ [(NSString *)self->_subscribedEntityIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
  v6 = [v4 channelIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
    v10 = [v4 channelIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
  v6 = [v4 pushTopic];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
    v15 = [v4 pushTopic];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
  v6 = [v4 subscribedEntityIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
    v20 = [v4 subscribedEntityIdentifier];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBCloudChannelsRequestItem *)self channelIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBCloudChannelsRequestItem *)self pushTopic];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBCloudChannelsRequestItem *)self subscribedEntityIdentifier];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setSubscribedEntityIdentifier:(id)a3
{
  v4 = [a3 copy];
  subscribedEntityIdentifier = self->_subscribedEntityIdentifier;
  self->_subscribedEntityIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPushTopic:(id)a3
{
  v4 = [a3 copy];
  pushTopic = self->_pushTopic;
  self->_pushTopic = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setChannelIdentifier:(id)a3
{
  v4 = [a3 copy];
  channelIdentifier = self->_channelIdentifier;
  self->_channelIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end