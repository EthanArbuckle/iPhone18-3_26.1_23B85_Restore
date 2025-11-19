@interface SFUpdateSearchQueryCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFUpdateSearchQueryCommand)initWithCoder:(id)a3;
- (SFUpdateSearchQueryCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFUpdateSearchQueryCommand

- (SFUpdateSearchQueryCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFUpdateSearchQueryCommand;
  v5 = [(SFUpdateSearchQueryCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 searchString];

    if (v6)
    {
      v7 = [v4 searchString];
      [(SFUpdateSearchQueryCommand *)v5 setSearchString:v7];
    }

    if ([v4 querySource])
    {
      -[SFUpdateSearchQueryCommand setQuerySource:](v5, "setQuerySource:", [v4 querySource]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFUpdateSearchQueryCommand;
  v3 = [(SFCommand *)&v8 hash];
  v4 = [(SFUpdateSearchQueryCommand *)self searchString];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFUpdateSearchQueryCommand *)self querySource];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFUpdateSearchQueryCommand *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFUpdateSearchQueryCommand;
      if ([(SFCommand *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFUpdateSearchQueryCommand *)self searchString];
        v9 = [(SFUpdateSearchQueryCommand *)v7 searchString];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(SFUpdateSearchQueryCommand *)self searchString];
        if (!v10 || (-[SFUpdateSearchQueryCommand searchString](self, "searchString"), v3 = objc_claimAutoreleasedReturnValue(), -[SFUpdateSearchQueryCommand searchString](v7, "searchString"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFUpdateSearchQueryCommand *)self querySource];
          v11 = v12 == [(SFUpdateSearchQueryCommand *)v7 querySource];
          if (!v10)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFUpdateSearchQueryCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFUpdateSearchQueryCommand *)self searchString];
  v6 = [v5 copy];
  [v4 setSearchString:v6];

  [v4 setQuerySource:{-[SFUpdateSearchQueryCommand querySource](self, "querySource")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBUpdateSearchQueryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBUpdateSearchQueryCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBUpdateSearchQueryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBUpdateSearchQueryCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFUpdateSearchQueryCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFUpdateSearchQueryCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFUpdateSearchQueryCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 searchString];
    [(SFUpdateSearchQueryCommand *)v5 setSearchString:v9];

    [(SFUpdateSearchQueryCommand *)v5 setQuerySource:[(SFCommand *)v8 querySource]];
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