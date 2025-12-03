@interface SFSubscribeForUpdatesCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSubscribeForUpdatesCommand)initWithCoder:(id)coder;
- (SFSubscribeForUpdatesCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSubscribeForUpdatesCommand

- (SFSubscribeForUpdatesCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFSubscribeForUpdatesCommand;
  v5 = [(SFSubscribeForUpdatesCommand *)&v16 init];
  if (v5)
  {
    cloudChannelsRequestItem = [protobufCopy cloudChannelsRequestItem];

    if (cloudChannelsRequestItem)
    {
      v7 = [SFCloudChannelsRequestItem alloc];
      cloudChannelsRequestItem2 = [protobufCopy cloudChannelsRequestItem];
      v9 = [(SFCloudChannelsRequestItem *)v7 initWithProtobuf:cloudChannelsRequestItem2];
      [(SFSubscribeForUpdatesCommand *)v5 setCloudChannelsRequestItem:v9];
    }

    domainSubscriptionRequestItem = [protobufCopy domainSubscriptionRequestItem];

    if (domainSubscriptionRequestItem)
    {
      v11 = [SFDomainSubscriptionRequestItem alloc];
      domainSubscriptionRequestItem2 = [protobufCopy domainSubscriptionRequestItem];
      v13 = [(SFDomainSubscriptionRequestItem *)v11 initWithProtobuf:domainSubscriptionRequestItem2];
      [(SFSubscribeForUpdatesCommand *)v5 setDomainSubscriptionRequestItem:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFSubscribeForUpdatesCommand;
  v3 = [(SFCommand *)&v9 hash];
  cloudChannelsRequestItem = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
  v5 = [cloudChannelsRequestItem hash];
  domainSubscriptionRequestItem = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
  v7 = v5 ^ [domainSubscriptionRequestItem hash];

  return v7 ^ v3;
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
    if ([(SFSubscribeForUpdatesCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFSubscribeForUpdatesCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        cloudChannelsRequestItem = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
        cloudChannelsRequestItem2 = [(SFSubscribeForUpdatesCommand *)v6 cloudChannelsRequestItem];
        if ((cloudChannelsRequestItem != 0) == (cloudChannelsRequestItem2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        cloudChannelsRequestItem3 = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
        if (cloudChannelsRequestItem3)
        {
          cloudChannelsRequestItem4 = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
          cloudChannelsRequestItem5 = [(SFSubscribeForUpdatesCommand *)v6 cloudChannelsRequestItem];
          if (![cloudChannelsRequestItem4 isEqual:cloudChannelsRequestItem5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = cloudChannelsRequestItem5;
        }

        domainSubscriptionRequestItem = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
        domainSubscriptionRequestItem2 = [(SFSubscribeForUpdatesCommand *)v6 domainSubscriptionRequestItem];
        v14 = domainSubscriptionRequestItem2;
        if ((domainSubscriptionRequestItem != 0) == (domainSubscriptionRequestItem2 == 0))
        {

          v11 = 0;
        }

        else
        {
          domainSubscriptionRequestItem3 = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
          if (domainSubscriptionRequestItem3)
          {
            v16 = domainSubscriptionRequestItem3;
            domainSubscriptionRequestItem4 = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
            [(SFSubscribeForUpdatesCommand *)v6 domainSubscriptionRequestItem];
            v17 = v20 = cloudChannelsRequestItem4;
            v11 = [domainSubscriptionRequestItem4 isEqual:v17];

            cloudChannelsRequestItem4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        cloudChannelsRequestItem5 = v21;
        if (!cloudChannelsRequestItem3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFSubscribeForUpdatesCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  cloudChannelsRequestItem = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
  v6 = [cloudChannelsRequestItem copy];
  [v4 setCloudChannelsRequestItem:v6];

  domainSubscriptionRequestItem = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
  v8 = [domainSubscriptionRequestItem copy];
  [v4 setDomainSubscriptionRequestItem:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSubscribeForUpdatesCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBSubscribeForUpdatesCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSubscribeForUpdatesCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSubscribeForUpdatesCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFSubscribeForUpdatesCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFSubscribeForUpdatesCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFSubscribeForUpdatesCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cloudChannelsRequestItem = [(SFCommand *)v8 cloudChannelsRequestItem];
    [(SFSubscribeForUpdatesCommand *)v5 setCloudChannelsRequestItem:cloudChannelsRequestItem];

    domainSubscriptionRequestItem = [(SFCommand *)v8 domainSubscriptionRequestItem];
    [(SFSubscribeForUpdatesCommand *)v5 setDomainSubscriptionRequestItem:domainSubscriptionRequestItem];

    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

@end