@interface SFSearchWebCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSearchWebCommand)initWithCoder:(id)coder;
- (SFSearchWebCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSearchWebCommand

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFSearchWebCommand;
  v3 = [(SFCommand *)&v7 hash];
  searchString = [(SFSearchWebCommand *)self searchString];
  v5 = [searchString hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFSearchWebCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFSearchWebCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    searchString = [(SFSearchWebCommand *)self searchString];
    searchString2 = [(SFSearchWebCommand *)v5 searchString];
    if ((searchString != 0) == (searchString2 == 0))
    {
      v11 = 0;
    }

    else
    {
      searchString3 = [(SFSearchWebCommand *)self searchString];
      if (searchString3)
      {
        searchString4 = [(SFSearchWebCommand *)self searchString];
        searchString5 = [(SFSearchWebCommand *)v5 searchString];
        v11 = [searchString4 isEqual:searchString5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFSearchWebCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  searchString = [(SFSearchWebCommand *)self searchString];
  v6 = [searchString copy];
  [v4 setSearchString:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSearchWebCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBSearchWebCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSearchWebCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSearchWebCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFSearchWebCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFSearchWebCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFSearchWebCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    searchString = [(SFCommand *)v8 searchString];
    [(SFSearchWebCommand *)v5 setSearchString:searchString];

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

- (SFSearchWebCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFSearchWebCommand;
  v5 = [(SFSearchWebCommand *)&v10 init];
  if (v5)
  {
    searchString = [protobufCopy searchString];

    if (searchString)
    {
      searchString2 = [protobufCopy searchString];
      [(SFSearchWebCommand *)v5 setSearchString:searchString2];
    }

    v8 = v5;
  }

  return v5;
}

@end