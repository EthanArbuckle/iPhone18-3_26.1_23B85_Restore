@interface SFSubscribeForUpdatesCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSubscribeForUpdatesCommand)initWithCoder:(id)a3;
- (SFSubscribeForUpdatesCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSubscribeForUpdatesCommand

- (SFSubscribeForUpdatesCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFSubscribeForUpdatesCommand;
  v5 = [(SFSubscribeForUpdatesCommand *)&v16 init];
  if (v5)
  {
    v6 = [v4 cloudChannelsRequestItem];

    if (v6)
    {
      v7 = [SFCloudChannelsRequestItem alloc];
      v8 = [v4 cloudChannelsRequestItem];
      v9 = [(SFCloudChannelsRequestItem *)v7 initWithProtobuf:v8];
      [(SFSubscribeForUpdatesCommand *)v5 setCloudChannelsRequestItem:v9];
    }

    v10 = [v4 domainSubscriptionRequestItem];

    if (v10)
    {
      v11 = [SFDomainSubscriptionRequestItem alloc];
      v12 = [v4 domainSubscriptionRequestItem];
      v13 = [(SFDomainSubscriptionRequestItem *)v11 initWithProtobuf:v12];
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
  v4 = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
  v5 = [v4 hash];
  v6 = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
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
    if ([(SFSubscribeForUpdatesCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFSubscribeForUpdatesCommand;
      if ([(SFCommand *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
        v8 = [(SFSubscribeForUpdatesCommand *)v6 cloudChannelsRequestItem];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        v9 = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
        if (v9)
        {
          v3 = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
          v10 = [(SFSubscribeForUpdatesCommand *)v6 cloudChannelsRequestItem];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = v10;
        }

        v12 = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
        v13 = [(SFSubscribeForUpdatesCommand *)v6 domainSubscriptionRequestItem];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
        }

        else
        {
          v15 = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
          if (v15)
          {
            v16 = v15;
            v19 = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
            [(SFSubscribeForUpdatesCommand *)v6 domainSubscriptionRequestItem];
            v17 = v20 = v3;
            v11 = [v19 isEqual:v17];

            v3 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        v10 = v21;
        if (!v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFSubscribeForUpdatesCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:a3];
  v5 = [(SFSubscribeForUpdatesCommand *)self cloudChannelsRequestItem];
  v6 = [v5 copy];
  [v4 setCloudChannelsRequestItem:v6];

  v7 = [(SFSubscribeForUpdatesCommand *)self domainSubscriptionRequestItem];
  v8 = [v7 copy];
  [v4 setDomainSubscriptionRequestItem:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSubscribeForUpdatesCommand alloc] initWithFacade:self];
  v3 = [(_SFPBSubscribeForUpdatesCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSubscribeForUpdatesCommand alloc] initWithFacade:self];
  v3 = [(_SFPBSubscribeForUpdatesCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFSubscribeForUpdatesCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFSubscribeForUpdatesCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFSubscribeForUpdatesCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 cloudChannelsRequestItem];
    [(SFSubscribeForUpdatesCommand *)v5 setCloudChannelsRequestItem:v9];

    v10 = [(SFCommand *)v8 domainSubscriptionRequestItem];
    [(SFSubscribeForUpdatesCommand *)v5 setDomainSubscriptionRequestItem:v10];

    v11 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v11];

    v12 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v12];

    v13 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v13];

    v14 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v14];
  }

  return v5;
}

@end