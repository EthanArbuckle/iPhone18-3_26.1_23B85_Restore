@interface SFPerformContactQueryCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformContactQueryCommand)initWithCoder:(id)a3;
- (SFPerformContactQueryCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPerformContactQueryCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFPerformContactQueryCommand;
  v3 = [(SFCommand *)&v7 hash];
  v4 = [(SFPerformContactQueryCommand *)self contactIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFPerformContactQueryCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFPerformContactQueryCommand, [(SFCommand *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFPerformContactQueryCommand *)self contactIdentifier];
    v7 = [(SFPerformContactQueryCommand *)v5 contactIdentifier];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFPerformContactQueryCommand *)self contactIdentifier];
      if (v8)
      {
        v9 = [(SFPerformContactQueryCommand *)self contactIdentifier];
        v10 = [(SFPerformContactQueryCommand *)v5 contactIdentifier];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFPerformContactQueryCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFPerformContactQueryCommand *)self contactIdentifier];
  v6 = [v5 copy];
  [v4 setContactIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformContactQueryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformContactQueryCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformContactQueryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformContactQueryCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFPerformContactQueryCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFPerformContactQueryCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFPerformContactQueryCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 contactIdentifier];
    [(SFPerformContactQueryCommand *)v5 setContactIdentifier:v9];

    v10 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v10];

    v11 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v11];

    v12 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v12];

    v13 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v13];
  }

  return v5;
}

- (SFPerformContactQueryCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFPerformContactQueryCommand;
  v5 = [(SFPerformContactQueryCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 contactIdentifier];

    if (v6)
    {
      v7 = [v4 contactIdentifier];
      [(SFPerformContactQueryCommand *)v5 setContactIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

@end