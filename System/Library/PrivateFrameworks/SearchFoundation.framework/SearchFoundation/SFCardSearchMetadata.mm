@interface SFCardSearchMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCardSearchMetadata)initWithCoder:(id)coder;
- (SFCardSearchMetadata)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCardSearchMetadata

- (unint64_t)hash
{
  isServerEntity = [(SFCardSearchMetadata *)self isServerEntity];
  searchQuery = [(SFCardSearchMetadata *)self searchQuery];
  v5 = [searchQuery hash];
  viewConfigName = [(SFCardSearchMetadata *)self viewConfigName];
  v7 = v5 ^ [viewConfigName hash] ^ isServerEntity;
  isFederatedDomainSearch = [(SFCardSearchMetadata *)self isFederatedDomainSearch];

  return v7 ^ isFederatedDomainSearch;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    if ([(SFCardSearchMetadata *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      isServerEntity = [(SFCardSearchMetadata *)self isServerEntity];
      if (isServerEntity != [(SFCardSearchMetadata *)v6 isServerEntity])
      {
        LOBYTE(v8) = 0;
LABEL_27:

        goto LABEL_28;
      }

      searchQuery = [(SFCardSearchMetadata *)self searchQuery];
      searchQuery2 = [(SFCardSearchMetadata *)v6 searchQuery];
      if ((searchQuery != 0) == (searchQuery2 == 0))
      {
        LOBYTE(v8) = 0;
LABEL_26:

        goto LABEL_27;
      }

      searchQuery3 = [(SFCardSearchMetadata *)self searchQuery];
      if (searchQuery3)
      {
        searchQuery4 = [(SFCardSearchMetadata *)self searchQuery];
        searchQuery5 = [(SFCardSearchMetadata *)v6 searchQuery];
        if (![searchQuery4 isEqual:searchQuery5])
        {
          LOBYTE(v8) = 0;
          goto LABEL_24;
        }

        v23 = searchQuery4;
      }

      viewConfigName = [(SFCardSearchMetadata *)self viewConfigName];
      viewConfigName2 = [(SFCardSearchMetadata *)v6 viewConfigName];
      v15 = viewConfigName2;
      if ((viewConfigName != 0) == (viewConfigName2 == 0))
      {

        LOBYTE(v8) = 0;
        goto LABEL_23;
      }

      viewConfigName3 = [(SFCardSearchMetadata *)self viewConfigName];
      if (viewConfigName3)
      {
        v20 = searchQuery5;
        viewConfigName4 = [(SFCardSearchMetadata *)self viewConfigName];
        viewConfigName5 = [(SFCardSearchMetadata *)v6 viewConfigName];
        v22 = viewConfigName4;
        if (![viewConfigName4 isEqual:?])
        {
          LOBYTE(v8) = 0;
          searchQuery5 = v20;
LABEL_21:

LABEL_22:
LABEL_23:
          searchQuery4 = v23;
          if (!searchQuery3)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }

        searchQuery5 = v20;
      }

      isFederatedDomainSearch = [(SFCardSearchMetadata *)self isFederatedDomainSearch];
      v8 = isFederatedDomainSearch ^ [(SFCardSearchMetadata *)v6 isFederatedDomainSearch]^ 1;
      if (!viewConfigName3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIsServerEntity:{-[SFCardSearchMetadata isServerEntity](self, "isServerEntity")}];
  searchQuery = [(SFCardSearchMetadata *)self searchQuery];
  v6 = [searchQuery copy];
  [v4 setSearchQuery:v6];

  viewConfigName = [(SFCardSearchMetadata *)self viewConfigName];
  v8 = [viewConfigName copy];
  [v4 setViewConfigName:v8];

  [v4 setIsFederatedDomainSearch:{-[SFCardSearchMetadata isFederatedDomainSearch](self, "isFederatedDomainSearch")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCardSearchMetadata alloc] initWithFacade:self];
  jsonData = [(_SFPBCardSearchMetadata *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCardSearchMetadata alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCardSearchMetadata *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCardSearchMetadata alloc] initWithFacade:self];
  data = [(_SFPBCardSearchMetadata *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCardSearchMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCardSearchMetadata alloc] initWithData:v5];
  v7 = [(SFCardSearchMetadata *)self initWithProtobuf:v6];

  return v7;
}

- (SFCardSearchMetadata)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFCardSearchMetadata;
  v5 = [(SFCardSearchMetadata *)&v12 init];
  if (v5)
  {
    if ([protobufCopy isServerEntity])
    {
      -[SFCardSearchMetadata setIsServerEntity:](v5, "setIsServerEntity:", [protobufCopy isServerEntity]);
    }

    searchQuery = [protobufCopy searchQuery];

    if (searchQuery)
    {
      searchQuery2 = [protobufCopy searchQuery];
      [(SFCardSearchMetadata *)v5 setSearchQuery:searchQuery2];
    }

    viewConfigName = [protobufCopy viewConfigName];

    if (viewConfigName)
    {
      viewConfigName2 = [protobufCopy viewConfigName];
      [(SFCardSearchMetadata *)v5 setViewConfigName:viewConfigName2];
    }

    if ([protobufCopy isFederatedDomainSearch])
    {
      -[SFCardSearchMetadata setIsFederatedDomainSearch:](v5, "setIsFederatedDomainSearch:", [protobufCopy isFederatedDomainSearch]);
    }

    v10 = v5;
  }

  return v5;
}

@end