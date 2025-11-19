@interface SSDeleteCoreSpotlightItemsCommand
- (BOOL)isEqual:(id)a3;
- (SSDeleteCoreSpotlightItemsCommand)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSDeleteCoreSpotlightItemsCommand

- (SSDeleteCoreSpotlightItemsCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSDeleteCoreSpotlightItemsCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [objc_alloc(MEMORY[0x1E69CA5E8]) initWithData:v6];
  v8 = [objc_alloc(MEMORY[0x1E69C9F88]) initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 domainIdentifiers];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setDomainIdentifiers:v9];

    v10 = [v8 itemIdentifiers];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setItemIdentifiers:v10];

    v11 = [v8 commandDetail];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setCommandDetail:v11];

    v12 = [v8 normalizedTopic];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setNormalizedTopic:v12];

    v13 = [v8 backendData];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setBackendData:v13];

    v14 = [v8 commandReference];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setCommandReference:v14];

    v15 = [v8 filesToDelete];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setFilesToDelete:v15];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SSDeleteCoreSpotlightItemsCommand;
  [(SSDeleteCoreSpotlightItemsCommand *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SSDeleteCoreSpotlightItemsCommand;
  v4 = [(SSDeleteCoreSpotlightItemsCommand *)&v12 copyWithZone:a3];
  v5 = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
  v6 = [v5 copy];
  [v4 setDomainIdentifiers:v6];

  v7 = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
  v8 = [v7 copy];
  [v4 setItemIdentifiers:v8];

  v9 = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
  v10 = [v9 copy];
  [v4 setFilesToDelete:v10];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SSDeleteCoreSpotlightItemsCommand *)v5 isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SSDeleteCoreSpotlightItemsCommand;
      if ([(SSDeleteCoreSpotlightItemsCommand *)&v32 isEqual:v5])
      {
        v6 = v5;
        v7 = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
        v8 = [(SSDeleteCoreSpotlightItemsCommand *)v6 domainIdentifiers];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        v9 = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
        if (v9)
        {
          v3 = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
          v10 = [(SSDeleteCoreSpotlightItemsCommand *)v6 domainIdentifiers];
          if (![v3 isEqual:v10])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = v10;
        }

        v12 = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
        v13 = [(SSDeleteCoreSpotlightItemsCommand *)v6 itemIdentifiers];
        v14 = v13;
        if ((v12 != 0) == (v13 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        v15 = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
        if (v15)
        {
          v25 = v12;
          v16 = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
          v27 = [(SSDeleteCoreSpotlightItemsCommand *)v6 itemIdentifiers];
          v28 = v16;
          if (![v16 isEqual:?])
          {
            v11 = 0;
            v12 = v25;
            goto LABEL_26;
          }

          v29 = v15;
          v30 = v3;
          v12 = v25;
        }

        else
        {
          v29 = 0;
          v30 = v3;
        }

        v17 = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
        v18 = [(SSDeleteCoreSpotlightItemsCommand *)v6 filesToDelete];
        if ((v17 != 0) == (v18 == 0))
        {

          v11 = 0;
          v15 = v29;
          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = v17;
          v26 = v18;
          v19 = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
          v15 = v29;
          if (v19)
          {
            v23 = v19;
            v22 = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
            v20 = [(SSDeleteCoreSpotlightItemsCommand *)v6 filesToDelete];
            v11 = [v22 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          v3 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        v10 = v31;
        if (!v9)
        {
LABEL_30:

          goto LABEL_31;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v11 = 0;
  }

LABEL_32:

  return v11;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SSDeleteCoreSpotlightItemsCommand;
  v3 = [(SSDeleteCoreSpotlightItemsCommand *)&v11 hash];
  v4 = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
  v5 = [v4 hash];
  v6 = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
  v7 = v5 ^ [v6 hash];
  v8 = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v3;
}

@end