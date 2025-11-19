@interface SFOpenWebClipCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenWebClipCommand)initWithCoder:(id)a3;
- (SFOpenWebClipCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFOpenWebClipCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFOpenWebClipCommand;
  v3 = [(SFCommand *)&v7 hash];
  v4 = [(SFOpenWebClipCommand *)self clipIdentifier];
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

  else if ([(SFOpenWebClipCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFOpenWebClipCommand, [(SFCommand *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFOpenWebClipCommand *)self clipIdentifier];
    v7 = [(SFOpenWebClipCommand *)v5 clipIdentifier];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFOpenWebClipCommand *)self clipIdentifier];
      if (v8)
      {
        v9 = [(SFOpenWebClipCommand *)self clipIdentifier];
        v10 = [(SFOpenWebClipCommand *)v5 clipIdentifier];
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
  v8.super_class = SFOpenWebClipCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFOpenWebClipCommand *)self clipIdentifier];
  v6 = [v5 copy];
  [v4 setClipIdentifier:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenWebClipCommand alloc] initWithFacade:self];
  v3 = [(_SFPBOpenWebClipCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenWebClipCommand alloc] initWithFacade:self];
  v3 = [(_SFPBOpenWebClipCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFOpenWebClipCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFOpenWebClipCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFOpenWebClipCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 clipIdentifier];
    [(SFOpenWebClipCommand *)v5 setClipIdentifier:v9];

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

- (SFOpenWebClipCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFOpenWebClipCommand;
  v5 = [(SFOpenWebClipCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 clipIdentifier];

    if (v6)
    {
      v7 = [v4 clipIdentifier];
      [(SFOpenWebClipCommand *)v5 setClipIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

@end