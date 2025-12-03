@interface SFCardMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCardMetadata)initWithCoder:(id)coder;
- (SFCardMetadata)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCardMetadata

- (SFCardMetadata)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFCardMetadata;
  v5 = [(SFCardMetadata *)&v10 init];
  if (v5)
  {
    if ([protobufCopy isServerEntity])
    {
      -[SFCardMetadata setIsServerEntity:](v5, "setIsServerEntity:", [protobufCopy isServerEntity]);
    }

    queryToSearchAcrossAllDomains = [protobufCopy queryToSearchAcrossAllDomains];

    if (queryToSearchAcrossAllDomains)
    {
      queryToSearchAcrossAllDomains2 = [protobufCopy queryToSearchAcrossAllDomains];
      [(SFCardMetadata *)v5 setQueryToSearchAcrossAllDomains:queryToSearchAcrossAllDomains2];
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  isServerEntity = [(SFCardMetadata *)self isServerEntity];
  queryToSearchAcrossAllDomains = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
  v5 = [queryToSearchAcrossAllDomains hash];

  return v5 ^ isServerEntity;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if ([(SFCardMetadata *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    isServerEntity = [(SFCardMetadata *)self isServerEntity];
    if (isServerEntity == [(SFCardMetadata *)v5 isServerEntity])
    {
      queryToSearchAcrossAllDomains = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
      queryToSearchAcrossAllDomains2 = [(SFCardMetadata *)v5 queryToSearchAcrossAllDomains];
      if ((queryToSearchAcrossAllDomains != 0) == (queryToSearchAcrossAllDomains2 == 0))
      {
        v7 = 0;
      }

      else
      {
        queryToSearchAcrossAllDomains3 = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
        if (queryToSearchAcrossAllDomains3)
        {
          queryToSearchAcrossAllDomains4 = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
          queryToSearchAcrossAllDomains5 = [(SFCardMetadata *)v5 queryToSearchAcrossAllDomains];
          v7 = [queryToSearchAcrossAllDomains4 isEqual:queryToSearchAcrossAllDomains5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIsServerEntity:{-[SFCardMetadata isServerEntity](self, "isServerEntity")}];
  queryToSearchAcrossAllDomains = [(SFCardMetadata *)self queryToSearchAcrossAllDomains];
  v6 = [queryToSearchAcrossAllDomains copy];
  [v4 setQueryToSearchAcrossAllDomains:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCardMetadata alloc] initWithFacade:self];
  jsonData = [(_SFPBCardMetadata *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCardMetadata alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCardMetadata *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCardMetadata alloc] initWithFacade:self];
  data = [(_SFPBCardMetadata *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCardMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCardMetadata alloc] initWithData:v5];
  v7 = [(SFCardMetadata *)self initWithProtobuf:v6];

  return v7;
}

@end