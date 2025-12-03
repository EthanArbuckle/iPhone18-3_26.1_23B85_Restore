@interface _SFPBSubscribeForUpdatesCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSubscribeForUpdatesCommand)initWithDictionary:(id)dictionary;
- (_SFPBSubscribeForUpdatesCommand)initWithFacade:(id)facade;
- (_SFPBSubscribeForUpdatesCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSubscribeForUpdatesCommand

- (_SFPBSubscribeForUpdatesCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSubscribeForUpdatesCommand *)self init];
  if (v5)
  {
    cloudChannelsRequestItem = [facadeCopy cloudChannelsRequestItem];

    if (cloudChannelsRequestItem)
    {
      v7 = [_SFPBCloudChannelsRequestItem alloc];
      cloudChannelsRequestItem2 = [facadeCopy cloudChannelsRequestItem];
      v9 = [(_SFPBCloudChannelsRequestItem *)v7 initWithFacade:cloudChannelsRequestItem2];
      [(_SFPBSubscribeForUpdatesCommand *)v5 setCloudChannelsRequestItem:v9];
    }

    domainSubscriptionRequestItem = [facadeCopy domainSubscriptionRequestItem];

    if (domainSubscriptionRequestItem)
    {
      v11 = [_SFPBDomainSubscriptionRequestItem alloc];
      domainSubscriptionRequestItem2 = [facadeCopy domainSubscriptionRequestItem];
      v13 = [(_SFPBDomainSubscriptionRequestItem *)v11 initWithFacade:domainSubscriptionRequestItem2];
      [(_SFPBSubscribeForUpdatesCommand *)v5 setDomainSubscriptionRequestItem:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBSubscribeForUpdatesCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBSubscribeForUpdatesCommand;
  v5 = [(_SFPBSubscribeForUpdatesCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cloudChannelsRequestItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCloudChannelsRequestItem alloc] initWithDictionary:v6];
      [(_SFPBSubscribeForUpdatesCommand *)v5 setCloudChannelsRequestItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"domainSubscriptionRequestItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBDomainSubscriptionRequestItem alloc] initWithDictionary:v8];
      [(_SFPBSubscribeForUpdatesCommand *)v5 setDomainSubscriptionRequestItem:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBSubscribeForUpdatesCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSubscribeForUpdatesCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSubscribeForUpdatesCommand *)self dictionaryRepresentation];
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
  if (self->_cloudChannelsRequestItem)
  {
    cloudChannelsRequestItem = [(_SFPBSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
    dictionaryRepresentation = [cloudChannelsRequestItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cloudChannelsRequestItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cloudChannelsRequestItem"];
    }
  }

  if (self->_domainSubscriptionRequestItem)
  {
    domainSubscriptionRequestItem = [(_SFPBSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
    dictionaryRepresentation2 = [domainSubscriptionRequestItem dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"domainSubscriptionRequestItem"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"domainSubscriptionRequestItem"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  cloudChannelsRequestItem = [(_SFPBSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
  cloudChannelsRequestItem2 = [equalCopy cloudChannelsRequestItem];
  if ((cloudChannelsRequestItem != 0) == (cloudChannelsRequestItem2 == 0))
  {
    goto LABEL_11;
  }

  cloudChannelsRequestItem3 = [(_SFPBSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
  if (cloudChannelsRequestItem3)
  {
    v8 = cloudChannelsRequestItem3;
    cloudChannelsRequestItem4 = [(_SFPBSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
    cloudChannelsRequestItem5 = [equalCopy cloudChannelsRequestItem];
    v11 = [cloudChannelsRequestItem4 isEqual:cloudChannelsRequestItem5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  cloudChannelsRequestItem = [(_SFPBSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
  cloudChannelsRequestItem2 = [equalCopy domainSubscriptionRequestItem];
  if ((cloudChannelsRequestItem != 0) != (cloudChannelsRequestItem2 == 0))
  {
    domainSubscriptionRequestItem = [(_SFPBSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
    if (!domainSubscriptionRequestItem)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = domainSubscriptionRequestItem;
    domainSubscriptionRequestItem2 = [(_SFPBSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
    domainSubscriptionRequestItem3 = [equalCopy domainSubscriptionRequestItem];
    v16 = [domainSubscriptionRequestItem2 isEqual:domainSubscriptionRequestItem3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  cloudChannelsRequestItem = [(_SFPBSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
  if (cloudChannelsRequestItem)
  {
    PBDataWriterWriteSubmessage();
  }

  domainSubscriptionRequestItem = [(_SFPBSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
  if (domainSubscriptionRequestItem)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end