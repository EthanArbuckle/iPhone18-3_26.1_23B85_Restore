@interface SFUpdateSearchQueryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFUpdateSearchQueryCommand)initWithCoder:(id)coder;
- (SFUpdateSearchQueryCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFUpdateSearchQueryCommand

- (SFUpdateSearchQueryCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFUpdateSearchQueryCommand;
  v5 = [(SFUpdateSearchQueryCommand *)&v10 init];
  if (v5)
  {
    searchString = [protobufCopy searchString];

    if (searchString)
    {
      searchString2 = [protobufCopy searchString];
      [(SFUpdateSearchQueryCommand *)v5 setSearchString:searchString2];
    }

    if ([protobufCopy querySource])
    {
      -[SFUpdateSearchQueryCommand setQuerySource:](v5, "setQuerySource:", [protobufCopy querySource]);
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
  searchString = [(SFUpdateSearchQueryCommand *)self searchString];
  v5 = [searchString hash];
  v6 = v5 ^ [(SFUpdateSearchQueryCommand *)self querySource];

  return v6 ^ v3;
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
    if ([(SFUpdateSearchQueryCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFUpdateSearchQueryCommand;
      if ([(SFCommand *)&v14 isEqual:equalCopy])
      {
        v7 = equalCopy;
        searchString = [(SFUpdateSearchQueryCommand *)self searchString];
        searchString2 = [(SFUpdateSearchQueryCommand *)v7 searchString];
        if ((searchString != 0) == (searchString2 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        searchString3 = [(SFUpdateSearchQueryCommand *)self searchString];
        if (!searchString3 || (-[SFUpdateSearchQueryCommand searchString](self, "searchString"), v3 = objc_claimAutoreleasedReturnValue(), -[SFUpdateSearchQueryCommand searchString](v7, "searchString"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          querySource = [(SFUpdateSearchQueryCommand *)self querySource];
          v11 = querySource == [(SFUpdateSearchQueryCommand *)v7 querySource];
          if (!searchString3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFUpdateSearchQueryCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  searchString = [(SFUpdateSearchQueryCommand *)self searchString];
  v6 = [searchString copy];
  [v4 setSearchString:v6];

  [v4 setQuerySource:{-[SFUpdateSearchQueryCommand querySource](self, "querySource")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBUpdateSearchQueryCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBUpdateSearchQueryCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBUpdateSearchQueryCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBUpdateSearchQueryCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFUpdateSearchQueryCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFUpdateSearchQueryCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFUpdateSearchQueryCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    searchString = [(SFCommand *)v8 searchString];
    [(SFUpdateSearchQueryCommand *)v5 setSearchString:searchString];

    [(SFUpdateSearchQueryCommand *)v5 setQuerySource:[(SFCommand *)v8 querySource]];
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