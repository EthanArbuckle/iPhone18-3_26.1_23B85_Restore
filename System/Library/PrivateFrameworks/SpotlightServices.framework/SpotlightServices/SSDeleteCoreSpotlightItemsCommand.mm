@interface SSDeleteCoreSpotlightItemsCommand
- (BOOL)isEqual:(id)equal;
- (SSDeleteCoreSpotlightItemsCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSDeleteCoreSpotlightItemsCommand

- (SSDeleteCoreSpotlightItemsCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSDeleteCoreSpotlightItemsCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [objc_alloc(MEMORY[0x1E69CA5E8]) initWithData:v6];
  v8 = [objc_alloc(MEMORY[0x1E69C9F88]) initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    domainIdentifiers = [v8 domainIdentifiers];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setDomainIdentifiers:domainIdentifiers];

    itemIdentifiers = [v8 itemIdentifiers];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setItemIdentifiers:itemIdentifiers];

    commandDetail = [v8 commandDetail];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [v8 normalizedTopic];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [v8 backendData];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setBackendData:backendData];

    commandReference = [v8 commandReference];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setCommandReference:commandReference];

    filesToDelete = [v8 filesToDelete];
    [(SSDeleteCoreSpotlightItemsCommand *)v5 setFilesToDelete:filesToDelete];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SSDeleteCoreSpotlightItemsCommand;
  [(SSDeleteCoreSpotlightItemsCommand *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SSDeleteCoreSpotlightItemsCommand;
  v4 = [(SSDeleteCoreSpotlightItemsCommand *)&v12 copyWithZone:zone];
  domainIdentifiers = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
  v6 = [domainIdentifiers copy];
  [v4 setDomainIdentifiers:v6];

  itemIdentifiers = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
  v8 = [itemIdentifiers copy];
  [v4 setItemIdentifiers:v8];

  filesToDelete = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
  v10 = [filesToDelete copy];
  [v4 setFilesToDelete:v10];

  return v4;
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
    if ([(SSDeleteCoreSpotlightItemsCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v32.receiver = self;
      v32.super_class = SSDeleteCoreSpotlightItemsCommand;
      if ([(SSDeleteCoreSpotlightItemsCommand *)&v32 isEqual:equalCopy])
      {
        v6 = equalCopy;
        domainIdentifiers = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
        domainIdentifiers2 = [(SSDeleteCoreSpotlightItemsCommand *)v6 domainIdentifiers];
        if ((domainIdentifiers != 0) == (domainIdentifiers2 == 0))
        {
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        domainIdentifiers3 = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
        if (domainIdentifiers3)
        {
          domainIdentifiers4 = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
          domainIdentifiers5 = [(SSDeleteCoreSpotlightItemsCommand *)v6 domainIdentifiers];
          if (![domainIdentifiers4 isEqual:domainIdentifiers5])
          {
            v11 = 0;
            goto LABEL_29;
          }

          v31 = domainIdentifiers5;
        }

        itemIdentifiers = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
        itemIdentifiers2 = [(SSDeleteCoreSpotlightItemsCommand *)v6 itemIdentifiers];
        v14 = itemIdentifiers2;
        if ((itemIdentifiers != 0) == (itemIdentifiers2 == 0))
        {

          v11 = 0;
          goto LABEL_28;
        }

        itemIdentifiers3 = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
        if (itemIdentifiers3)
        {
          v25 = itemIdentifiers;
          itemIdentifiers4 = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
          itemIdentifiers5 = [(SSDeleteCoreSpotlightItemsCommand *)v6 itemIdentifiers];
          v28 = itemIdentifiers4;
          if (![itemIdentifiers4 isEqual:?])
          {
            v11 = 0;
            itemIdentifiers = v25;
            goto LABEL_26;
          }

          v29 = itemIdentifiers3;
          v30 = domainIdentifiers4;
          itemIdentifiers = v25;
        }

        else
        {
          v29 = 0;
          v30 = domainIdentifiers4;
        }

        filesToDelete = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
        filesToDelete2 = [(SSDeleteCoreSpotlightItemsCommand *)v6 filesToDelete];
        if ((filesToDelete != 0) == (filesToDelete2 == 0))
        {

          v11 = 0;
          itemIdentifiers3 = v29;
          domainIdentifiers4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v24 = filesToDelete;
          v26 = filesToDelete2;
          filesToDelete3 = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
          itemIdentifiers3 = v29;
          if (filesToDelete3)
          {
            v23 = filesToDelete3;
            filesToDelete4 = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
            filesToDelete5 = [(SSDeleteCoreSpotlightItemsCommand *)v6 filesToDelete];
            v11 = [filesToDelete4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }

          domainIdentifiers4 = v30;
          if (!v29)
          {
            goto LABEL_27;
          }
        }

LABEL_26:

LABEL_27:
LABEL_28:
        domainIdentifiers5 = v31;
        if (!domainIdentifiers3)
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
  domainIdentifiers = [(SSDeleteCoreSpotlightItemsCommand *)self domainIdentifiers];
  v5 = [domainIdentifiers hash];
  itemIdentifiers = [(SSDeleteCoreSpotlightItemsCommand *)self itemIdentifiers];
  v7 = v5 ^ [itemIdentifiers hash];
  filesToDelete = [(SSDeleteCoreSpotlightItemsCommand *)self filesToDelete];
  v9 = v7 ^ [filesToDelete hash];

  return v9 ^ v3;
}

@end