@interface SFCardSearchMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCardSearchMetadata)initWithCoder:(id)a3;
- (SFCardSearchMetadata)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCardSearchMetadata

- (unint64_t)hash
{
  v3 = [(SFCardSearchMetadata *)self isServerEntity];
  v4 = [(SFCardSearchMetadata *)self searchQuery];
  v5 = [v4 hash];
  v6 = [(SFCardSearchMetadata *)self viewConfigName];
  v7 = v5 ^ [v6 hash] ^ v3;
  v8 = [(SFCardSearchMetadata *)self isFederatedDomainSearch];

  return v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    if ([(SFCardSearchMetadata *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFCardSearchMetadata *)self isServerEntity];
      if (v7 != [(SFCardSearchMetadata *)v6 isServerEntity])
      {
        LOBYTE(v8) = 0;
LABEL_27:

        goto LABEL_28;
      }

      v9 = [(SFCardSearchMetadata *)self searchQuery];
      v10 = [(SFCardSearchMetadata *)v6 searchQuery];
      if ((v9 != 0) == (v10 == 0))
      {
        LOBYTE(v8) = 0;
LABEL_26:

        goto LABEL_27;
      }

      v11 = [(SFCardSearchMetadata *)self searchQuery];
      if (v11)
      {
        v12 = [(SFCardSearchMetadata *)self searchQuery];
        v3 = [(SFCardSearchMetadata *)v6 searchQuery];
        if (![v12 isEqual:v3])
        {
          LOBYTE(v8) = 0;
          goto LABEL_24;
        }

        v23 = v12;
      }

      v13 = [(SFCardSearchMetadata *)self viewConfigName];
      v14 = [(SFCardSearchMetadata *)v6 viewConfigName];
      v15 = v14;
      if ((v13 != 0) == (v14 == 0))
      {

        LOBYTE(v8) = 0;
        goto LABEL_23;
      }

      v16 = [(SFCardSearchMetadata *)self viewConfigName];
      if (v16)
      {
        v20 = v3;
        v17 = [(SFCardSearchMetadata *)self viewConfigName];
        v21 = [(SFCardSearchMetadata *)v6 viewConfigName];
        v22 = v17;
        if (![v17 isEqual:?])
        {
          LOBYTE(v8) = 0;
          v3 = v20;
LABEL_21:

LABEL_22:
LABEL_23:
          v12 = v23;
          if (!v11)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }

        v3 = v20;
      }

      v18 = [(SFCardSearchMetadata *)self isFederatedDomainSearch];
      v8 = v18 ^ [(SFCardSearchMetadata *)v6 isFederatedDomainSearch]^ 1;
      if (!v16)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    LOBYTE(v8) = 0;
  }

LABEL_28:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIsServerEntity:{-[SFCardSearchMetadata isServerEntity](self, "isServerEntity")}];
  v5 = [(SFCardSearchMetadata *)self searchQuery];
  v6 = [v5 copy];
  [v4 setSearchQuery:v6];

  v7 = [(SFCardSearchMetadata *)self viewConfigName];
  v8 = [v7 copy];
  [v4 setViewConfigName:v8];

  [v4 setIsFederatedDomainSearch:{-[SFCardSearchMetadata isFederatedDomainSearch](self, "isFederatedDomainSearch")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCardSearchMetadata alloc] initWithFacade:self];
  v3 = [(_SFPBCardSearchMetadata *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCardSearchMetadata alloc] initWithFacade:self];
  v3 = [(_SFPBCardSearchMetadata *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBCardSearchMetadata alloc] initWithFacade:self];
  v5 = [(_SFPBCardSearchMetadata *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFCardSearchMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCardSearchMetadata alloc] initWithData:v5];
  v7 = [(SFCardSearchMetadata *)self initWithProtobuf:v6];

  return v7;
}

- (SFCardSearchMetadata)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFCardSearchMetadata;
  v5 = [(SFCardSearchMetadata *)&v12 init];
  if (v5)
  {
    if ([v4 isServerEntity])
    {
      -[SFCardSearchMetadata setIsServerEntity:](v5, "setIsServerEntity:", [v4 isServerEntity]);
    }

    v6 = [v4 searchQuery];

    if (v6)
    {
      v7 = [v4 searchQuery];
      [(SFCardSearchMetadata *)v5 setSearchQuery:v7];
    }

    v8 = [v4 viewConfigName];

    if (v8)
    {
      v9 = [v4 viewConfigName];
      [(SFCardSearchMetadata *)v5 setViewConfigName:v9];
    }

    if ([v4 isFederatedDomainSearch])
    {
      -[SFCardSearchMetadata setIsFederatedDomainSearch:](v5, "setIsFederatedDomainSearch:", [v4 isFederatedDomainSearch]);
    }

    v10 = v5;
  }

  return v5;
}

@end