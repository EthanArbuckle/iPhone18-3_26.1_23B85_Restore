@interface SFStoreButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFStoreButtonItem)initWithCoder:(id)coder;
- (SFStoreButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFStoreButtonItem

- (SFStoreButtonItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v10.receiver = self;
  v10.super_class = SFStoreButtonItem;
  v5 = [(SFStoreButtonItem *)&v10 init];
  if (v5)
  {
    identifier = [protobufCopy identifier];

    if (identifier)
    {
      identifier2 = [protobufCopy identifier];
      [(SFStoreButtonItem *)v5 setIdentifier:identifier2];
    }

    if ([protobufCopy shouldOpenAppAfterInstallCompletes])
    {
      -[SFStoreButtonItem setShouldOpenAppAfterInstallCompletes:](v5, "setShouldOpenAppAfterInstallCompletes:", [protobufCopy shouldOpenAppAfterInstallCompletes]);
    }

    if ([protobufCopy identifierType])
    {
      -[SFStoreButtonItem setIdentifierType:](v5, "setIdentifierType:", [protobufCopy identifierType]);
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = SFStoreButtonItem;
  v3 = [(SFButtonItem *)&v10 hash];
  identifier = [(SFStoreButtonItem *)self identifier];
  v5 = [identifier hash];
  v6 = v5 ^ [(SFStoreButtonItem *)self shouldOpenAppAfterInstallCompletes];
  v7 = v6 ^ [(SFStoreButtonItem *)self identifierType];
  v8 = v7 ^ [(SFButtonItem *)self uniqueId];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFStoreButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v17.receiver = self;
      v17.super_class = SFStoreButtonItem;
      if ([(SFButtonItem *)&v17 isEqual:equalCopy])
      {
        v7 = equalCopy;
        identifier = [(SFStoreButtonItem *)self identifier];
        identifier2 = [(SFStoreButtonItem *)v7 identifier];
        if ((identifier != 0) == (identifier2 == 0))
        {
          v12 = 0;
LABEL_18:

          goto LABEL_19;
        }

        identifier3 = [(SFStoreButtonItem *)self identifier];
        if (!identifier3 || (-[SFStoreButtonItem identifier](self, "identifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SFStoreButtonItem identifier](v7, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          shouldOpenAppAfterInstallCompletes = [(SFStoreButtonItem *)self shouldOpenAppAfterInstallCompletes];
          if (shouldOpenAppAfterInstallCompletes == [(SFStoreButtonItem *)v7 shouldOpenAppAfterInstallCompletes]&& (v14 = [(SFStoreButtonItem *)self identifierType], v14 == [(SFStoreButtonItem *)v7 identifierType]))
          {
            uniqueId = [(SFButtonItem *)self uniqueId];
            v11 = uniqueId == [(SFButtonItem *)v7 uniqueId];
            v12 = v11;
            if (!identifier3)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v11 = 0;
            v12 = 0;
            if (!identifier3)
            {
LABEL_17:

              goto LABEL_18;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        goto LABEL_17;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFStoreButtonItem;
  v4 = [(SFButtonItem *)&v8 copyWithZone:zone];
  identifier = [(SFStoreButtonItem *)self identifier];
  v6 = [identifier copy];
  [v4 setIdentifier:v6];

  [v4 setShouldOpenAppAfterInstallCompletes:{-[SFStoreButtonItem shouldOpenAppAfterInstallCompletes](self, "shouldOpenAppAfterInstallCompletes")}];
  [v4 setIdentifierType:{-[SFStoreButtonItem identifierType](self, "identifierType")}];
  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBStoreButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBStoreButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBStoreButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBStoreButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBStoreButtonItem alloc] initWithFacade:self];
  data = [(_SFPBStoreButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFStoreButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBStoreButtonItem alloc] initWithData:v5];
  v7 = [(SFStoreButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end