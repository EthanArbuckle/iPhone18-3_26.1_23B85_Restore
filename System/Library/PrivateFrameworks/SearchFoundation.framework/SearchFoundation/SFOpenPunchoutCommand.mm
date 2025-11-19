@interface SFOpenPunchoutCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFOpenPunchoutCommand)initWithCoder:(id)a3;
- (SFOpenPunchoutCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFOpenPunchoutCommand

- (SFOpenPunchoutCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFOpenPunchoutCommand;
  v5 = [(SFOpenPunchoutCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 punchout];

    if (v6)
    {
      v7 = [SFPunchout alloc];
      v8 = [v4 punchout];
      v9 = [(SFPunchout *)v7 initWithProtobuf:v8];
      [(SFOpenPunchoutCommand *)v5 setPunchout:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFOpenPunchoutCommand;
  v3 = [(SFCommand *)&v7 hash];
  v4 = [(SFOpenPunchoutCommand *)self punchout];
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

  else if ([(SFOpenPunchoutCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFOpenPunchoutCommand, [(SFCommand *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFOpenPunchoutCommand *)self punchout];
    v7 = [(SFOpenPunchoutCommand *)v5 punchout];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFOpenPunchoutCommand *)self punchout];
      if (v8)
      {
        v9 = [(SFOpenPunchoutCommand *)self punchout];
        v10 = [(SFOpenPunchoutCommand *)v5 punchout];
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
  v8.super_class = SFOpenPunchoutCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFOpenPunchoutCommand *)self punchout];
  v6 = [v5 copy];
  [v4 setPunchout:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBOpenPunchoutCommand alloc] initWithFacade:self];
  v3 = [(_SFPBOpenPunchoutCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBOpenPunchoutCommand alloc] initWithFacade:self];
  v3 = [(_SFPBOpenPunchoutCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFOpenPunchoutCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFOpenPunchoutCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFOpenPunchoutCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 punchout];
    [(SFOpenPunchoutCommand *)v5 setPunchout:v9];

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

@end