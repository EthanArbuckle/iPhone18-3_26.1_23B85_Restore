@interface SFCardMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCardMetadata)initWithCoder:(id)a3;
- (SFCardMetadata)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCardMetadata

- (SFCardMetadata)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFCardMetadata;
  v5 = [(SFCardMetadata *)&v10 init];
  if (v5)
  {
    if ([v4 isServerEntity])
    {
      -[SFCardMetadata setIsServerEntity:](v5, "setIsServerEntity:", [v4 isServerEntity]);
    }

    v6 = [v4 queryToSearchAcrossAllDomains];

    if (v6)
    {
      v7 = [v4 queryToSearchAcrossAllDomains];
      [(SFCardMetadata *)v5 setQueryToSearchAcrossAllDomains:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFCardMetadata *)self isServerEntity];
  v4 = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else if ([(SFCardMetadata *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(SFCardMetadata *)self isServerEntity];
    if (v6 == [(SFCardMetadata *)v5 isServerEntity])
    {
      v8 = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
      v9 = [(SFCardMetadata *)v5 queryToSearchAcrossAllDomains];
      if ((v8 != 0) == (v9 == 0))
      {
        v7 = 0;
      }

      else
      {
        v10 = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
        if (v10)
        {
          v11 = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
          v12 = [(SFCardMetadata *)v5 queryToSearchAcrossAllDomains];
          v7 = [v11 isEqual:v12];
        }

        else
        {
          v7 = 1;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIsServerEntity:{-[SFCardMetadata isServerEntity](self, "isServerEntity")}];
  v5 = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
  v6 = [v5 copy];
  [v4 setQueryToSearchAcrossAllDomains:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCardMetadata alloc] initWithFacade:self];
  v3 = [(_SFPBCardMetadata *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCardMetadata alloc] initWithFacade:self];
  v3 = [(_SFPBCardMetadata *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCardMetadata alloc] initWithFacade:self];
  v5 = [(_SFPBCardMetadata *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCardMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCardMetadata alloc] initWithData:v5];
  v7 = [(SFCardMetadata *)self initWithProtobuf:v6];

  return v7;
}

@end