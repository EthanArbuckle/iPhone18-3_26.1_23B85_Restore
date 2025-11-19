@interface SFStoreButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFStoreButtonItem)initWithCoder:(id)a3;
- (SFStoreButtonItem)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFStoreButtonItem

- (SFStoreButtonItem)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFStoreButtonItem;
  v5 = [(SFStoreButtonItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [v4 identifier];
      [(SFStoreButtonItem *)v5 setIdentifier:v7];
    }

    if ([v4 shouldOpenAppAfterInstallCompletes])
    {
      -[SFStoreButtonItem setShouldOpenAppAfterInstallCompletes:](v5, "setShouldOpenAppAfterInstallCompletes:", [v4 shouldOpenAppAfterInstallCompletes]);
    }

    if ([v4 identifierType])
    {
      -[SFStoreButtonItem setIdentifierType:](v5, "setIdentifierType:", [v4 identifierType]);
    }

    if ([v4 uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
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
  v4 = [(SFStoreButtonItem *)self identifier];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFStoreButtonItem *)self shouldOpenAppAfterInstallCompletes];
  v7 = v6 ^ [(SFStoreButtonItem *)self identifierType];
  v8 = v7 ^ [(SFButtonItem *)self uniqueId];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFStoreButtonItem *)v6 isMemberOfClass:objc_opt_class()])
    {
      v17.receiver = self;
      v17.super_class = SFStoreButtonItem;
      if ([(SFButtonItem *)&v17 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFStoreButtonItem *)self identifier];
        v9 = [(SFStoreButtonItem *)v7 identifier];
        if ((v8 != 0) == (v9 == 0))
        {
          v12 = 0;
LABEL_18:

          goto LABEL_19;
        }

        v10 = [(SFStoreButtonItem *)self identifier];
        if (!v10 || (-[SFStoreButtonItem identifier](self, "identifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SFStoreButtonItem identifier](v7, "identifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v13 = [(SFStoreButtonItem *)self shouldOpenAppAfterInstallCompletes];
          if (v13 == [(SFStoreButtonItem *)v7 shouldOpenAppAfterInstallCompletes]&& (v14 = [(SFStoreButtonItem *)self identifierType], v14 == [(SFStoreButtonItem *)v7 identifierType]))
          {
            v15 = [(SFButtonItem *)self uniqueId];
            v11 = v15 == [(SFButtonItem *)v7 uniqueId];
            v12 = v11;
            if (!v10)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v11 = 0;
            v12 = 0;
            if (!v10)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFStoreButtonItem;
  v4 = [(SFButtonItem *)&v8 copyWithZone:a3];
  v5 = [(SFStoreButtonItem *)self identifier];
  v6 = [v5 copy];
  [v4 setIdentifier:v6];

  [v4 setShouldOpenAppAfterInstallCompletes:{-[SFStoreButtonItem shouldOpenAppAfterInstallCompletes](self, "shouldOpenAppAfterInstallCompletes")}];
  [v4 setIdentifierType:{-[SFStoreButtonItem identifierType](self, "identifierType")}];
  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBStoreButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBStoreButtonItem *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBStoreButtonItem alloc] initWithFacade:self];
  v3 = [(_SFPBStoreButtonItem *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBStoreButtonItem alloc] initWithFacade:self];
  v5 = [(_SFPBStoreButtonItem *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFStoreButtonItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBStoreButtonItem alloc] initWithData:v5];
  v7 = [(SFStoreButtonItem *)self initWithProtobuf:v6];

  return v7;
}

@end