@interface SFRequestProductPageCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRequestProductPageCommand)initWithCoder:(id)coder;
- (SFRequestProductPageCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRequestProductPageCommand

- (SFRequestProductPageCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFRequestProductPageCommand;
  v5 = [(SFRequestProductPageCommand *)&v10 init];
  if (v5)
  {
    distributorBundleIdentifier = [protobufCopy distributorBundleIdentifier];

    if (distributorBundleIdentifier)
    {
      distributorBundleIdentifier2 = [protobufCopy distributorBundleIdentifier];
      [(SFRequestProductPageCommand *)v5 setDistributorBundleIdentifier:distributorBundleIdentifier2];
    }

    if ([protobufCopy itemIdentifier])
    {
      -[SFRequestProductPageCommand setItemIdentifier:](v5, "setItemIdentifier:", [protobufCopy itemIdentifier]);
    }

    if ([protobufCopy versionIdentifier])
    {
      -[SFRequestProductPageCommand setVersionIdentifier:](v5, "setVersionIdentifier:", [protobufCopy versionIdentifier]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFRequestProductPageCommand;
  v3 = [(SFCommand *)&v9 hash];
  distributorBundleIdentifier = [(SFRequestProductPageCommand *)self distributorBundleIdentifier];
  v5 = [distributorBundleIdentifier hash];
  v6 = v5 ^ [(SFRequestProductPageCommand *)self itemIdentifier];
  v7 = v6 ^ [(SFRequestProductPageCommand *)self versionIdentifier];

  return v7 ^ v3;
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
    if ([(SFRequestProductPageCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v15.receiver = self;
      v15.super_class = SFRequestProductPageCommand;
      if ([(SFCommand *)&v15 isEqual:equalCopy])
      {
        v7 = equalCopy;
        distributorBundleIdentifier = [(SFRequestProductPageCommand *)self distributorBundleIdentifier];
        distributorBundleIdentifier2 = [(SFRequestProductPageCommand *)v7 distributorBundleIdentifier];
        if ((distributorBundleIdentifier != 0) == (distributorBundleIdentifier2 == 0))
        {
          v11 = 0;
LABEL_17:

          goto LABEL_18;
        }

        distributorBundleIdentifier3 = [(SFRequestProductPageCommand *)self distributorBundleIdentifier];
        if (!distributorBundleIdentifier3 || (-[SFRequestProductPageCommand distributorBundleIdentifier](self, "distributorBundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SFRequestProductPageCommand distributorBundleIdentifier](v7, "distributorBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          itemIdentifier = [(SFRequestProductPageCommand *)self itemIdentifier];
          if (itemIdentifier == [(SFRequestProductPageCommand *)v7 itemIdentifier])
          {
            versionIdentifier = [(SFRequestProductPageCommand *)self versionIdentifier];
            v11 = versionIdentifier == [(SFRequestProductPageCommand *)v7 versionIdentifier];
            if (!distributorBundleIdentifier3)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v11 = 0;
            if (!distributorBundleIdentifier3)
            {
LABEL_16:

              goto LABEL_17;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFRequestProductPageCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  distributorBundleIdentifier = [(SFRequestProductPageCommand *)self distributorBundleIdentifier];
  v6 = [distributorBundleIdentifier copy];
  [v4 setDistributorBundleIdentifier:v6];

  [v4 setItemIdentifier:{-[SFRequestProductPageCommand itemIdentifier](self, "itemIdentifier")}];
  [v4 setVersionIdentifier:{-[SFRequestProductPageCommand versionIdentifier](self, "versionIdentifier")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRequestProductPageCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBRequestProductPageCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRequestProductPageCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRequestProductPageCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFRequestProductPageCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFRequestProductPageCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFRequestProductPageCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    distributorBundleIdentifier = [(SFCommand *)v8 distributorBundleIdentifier];
    [(SFRequestProductPageCommand *)v5 setDistributorBundleIdentifier:distributorBundleIdentifier];

    [(SFRequestProductPageCommand *)v5 setItemIdentifier:[(SFCommand *)v8 itemIdentifier]];
    [(SFRequestProductPageCommand *)v5 setVersionIdentifier:[(SFCommand *)v8 versionIdentifier]];
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