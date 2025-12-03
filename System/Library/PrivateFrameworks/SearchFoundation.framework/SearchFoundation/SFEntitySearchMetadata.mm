@interface SFEntitySearchMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFEntitySearchMetadata)initWithCoder:(id)coder;
- (SFEntitySearchMetadata)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFEntitySearchMetadata

- (unint64_t)hash
{
  entitySearchQuery = [(SFEntitySearchMetadata *)self entitySearchQuery];
  v4 = [entitySearchQuery hash];
  tokenQuery = [(SFEntitySearchMetadata *)self tokenQuery];
  v6 = [tokenQuery hash] ^ v4;
  entityIdentifier = [(SFEntitySearchMetadata *)self entityIdentifier];
  v8 = [entityIdentifier hash];
  viewConfigName = [(SFEntitySearchMetadata *)self viewConfigName];
  v10 = v8 ^ [viewConfigName hash];

  return v6 ^ v10;
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
    if ([(SFEntitySearchMetadata *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      entitySearchQuery = [(SFEntitySearchMetadata *)self entitySearchQuery];
      entitySearchQuery2 = [(SFEntitySearchMetadata *)v6 entitySearchQuery];
      if ((entitySearchQuery != 0) == (entitySearchQuery2 == 0))
      {
        v11 = 0;
LABEL_37:

        goto LABEL_38;
      }

      entitySearchQuery3 = [(SFEntitySearchMetadata *)self entitySearchQuery];
      if (entitySearchQuery3)
      {
        entitySearchQuery4 = [(SFEntitySearchMetadata *)self entitySearchQuery];
        entitySearchQuery5 = [(SFEntitySearchMetadata *)v6 entitySearchQuery];
        if (![entitySearchQuery4 isEqual:entitySearchQuery5])
        {
          v11 = 0;
          goto LABEL_35;
        }

        v41 = entitySearchQuery4;
      }

      tokenQuery = [(SFEntitySearchMetadata *)self tokenQuery];
      tokenQuery2 = [(SFEntitySearchMetadata *)v6 tokenQuery];
      v14 = tokenQuery2;
      if ((tokenQuery != 0) == (tokenQuery2 == 0))
      {

        v11 = 0;
        goto LABEL_34;
      }

      tokenQuery3 = [(SFEntitySearchMetadata *)self tokenQuery];
      v40 = tokenQuery3;
      if (tokenQuery3)
      {
        v16 = tokenQuery3;
        v35 = v14;
        v17 = tokenQuery;
        tokenQuery4 = [(SFEntitySearchMetadata *)self tokenQuery];
        tokenQuery5 = [(SFEntitySearchMetadata *)v6 tokenQuery];
        v38 = tokenQuery4;
        if (![tokenQuery4 isEqual:?])
        {
          v11 = 0;
          tokenQuery = v17;
          v14 = v35;
          goto LABEL_32;
        }

        v39 = entitySearchQuery5;
        tokenQuery = v17;
        v14 = v35;
      }

      else
      {
        v39 = entitySearchQuery5;
      }

      entityIdentifier = [(SFEntitySearchMetadata *)self entityIdentifier];
      entityIdentifier2 = [(SFEntitySearchMetadata *)v6 entityIdentifier];
      if ((entityIdentifier != 0) == (entityIdentifier2 == 0))
      {

        v11 = 0;
        entitySearchQuery5 = v39;
        v16 = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v33 = entityIdentifier2;
      v34 = entityIdentifier;
      [(SFEntitySearchMetadata *)self entityIdentifier];
      v36 = v16 = v40;
      if (!v36 || (-[SFEntitySearchMetadata entityIdentifier](self, "entityIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), -[SFEntitySearchMetadata entityIdentifier](v6, "entityIdentifier"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
      {
        viewConfigName = [(SFEntitySearchMetadata *)self viewConfigName];
        viewConfigName2 = [(SFEntitySearchMetadata *)v6 viewConfigName];
        if ((viewConfigName != 0) == (viewConfigName2 == 0))
        {

          v11 = 0;
          v16 = v40;
        }

        else
        {
          v29 = viewConfigName;
          v30 = viewConfigName2;
          viewConfigName3 = [(SFEntitySearchMetadata *)self viewConfigName];
          v16 = v40;
          if (viewConfigName3)
          {
            v28 = viewConfigName3;
            viewConfigName4 = [(SFEntitySearchMetadata *)self viewConfigName];
            viewConfigName5 = [(SFEntitySearchMetadata *)v6 viewConfigName];
            v11 = [viewConfigName4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }
        }

        entitySearchQuery5 = v39;
        if (!v36)
        {
LABEL_31:

          if (!v16)
          {
LABEL_33:

LABEL_34:
            entitySearchQuery4 = v41;
            if (!entitySearchQuery3)
            {
LABEL_36:

              goto LABEL_37;
            }

LABEL_35:

            goto LABEL_36;
          }

LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        v11 = 0;
        entitySearchQuery5 = v39;
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  entitySearchQuery = [(SFEntitySearchMetadata *)self entitySearchQuery];
  v6 = [entitySearchQuery copy];
  [v4 setEntitySearchQuery:v6];

  tokenQuery = [(SFEntitySearchMetadata *)self tokenQuery];
  v8 = [tokenQuery copy];
  [v4 setTokenQuery:v8];

  entityIdentifier = [(SFEntitySearchMetadata *)self entityIdentifier];
  v10 = [entityIdentifier copy];
  [v4 setEntityIdentifier:v10];

  viewConfigName = [(SFEntitySearchMetadata *)self viewConfigName];
  v12 = [viewConfigName copy];
  [v4 setViewConfigName:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBEntitySearchMetadata alloc] initWithFacade:self];
  jsonData = [(_SFPBEntitySearchMetadata *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBEntitySearchMetadata alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBEntitySearchMetadata *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBEntitySearchMetadata alloc] initWithFacade:self];
  data = [(_SFPBEntitySearchMetadata *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFEntitySearchMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBEntitySearchMetadata alloc] initWithData:v5];
  v7 = [(SFEntitySearchMetadata *)self initWithProtobuf:v6];

  return v7;
}

- (SFEntitySearchMetadata)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFEntitySearchMetadata;
  v5 = [(SFEntitySearchMetadata *)&v16 init];
  if (v5)
  {
    entitySearchQuery = [protobufCopy entitySearchQuery];

    if (entitySearchQuery)
    {
      entitySearchQuery2 = [protobufCopy entitySearchQuery];
      [(SFEntitySearchMetadata *)v5 setEntitySearchQuery:entitySearchQuery2];
    }

    tokenQuery = [protobufCopy tokenQuery];

    if (tokenQuery)
    {
      tokenQuery2 = [protobufCopy tokenQuery];
      [(SFEntitySearchMetadata *)v5 setTokenQuery:tokenQuery2];
    }

    entityIdentifier = [protobufCopy entityIdentifier];

    if (entityIdentifier)
    {
      entityIdentifier2 = [protobufCopy entityIdentifier];
      [(SFEntitySearchMetadata *)v5 setEntityIdentifier:entityIdentifier2];
    }

    viewConfigName = [protobufCopy viewConfigName];

    if (viewConfigName)
    {
      viewConfigName2 = [protobufCopy viewConfigName];
      [(SFEntitySearchMetadata *)v5 setViewConfigName:viewConfigName2];
    }

    v14 = v5;
  }

  return v5;
}

@end