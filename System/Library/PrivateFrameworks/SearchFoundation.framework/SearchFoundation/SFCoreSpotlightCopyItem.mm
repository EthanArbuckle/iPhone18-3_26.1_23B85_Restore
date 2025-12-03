@interface SFCoreSpotlightCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCoreSpotlightCopyItem)initWithCoder:(id)coder;
- (SFCoreSpotlightCopyItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCoreSpotlightCopyItem

- (SFCoreSpotlightCopyItem)initWithProtobuf:(id)protobuf
{
  v38 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v35.receiver = self;
  v35.super_class = SFCoreSpotlightCopyItem;
  v5 = [(SFCoreSpotlightCopyItem *)&v35 init];
  if (v5)
  {
    dataProviderTypeIdentifiers = [protobufCopy dataProviderTypeIdentifiers];
    if (dataProviderTypeIdentifiers)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    dataProviderTypeIdentifiers2 = [protobufCopy dataProviderTypeIdentifiers];
    v9 = [dataProviderTypeIdentifiers2 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(dataProviderTypeIdentifiers2);
          }

          if (*(*(&v31 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [dataProviderTypeIdentifiers2 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v10);
    }

    [(SFCoreSpotlightCopyItem *)v5 setDataProviderTypeIdentifiers:v7];
    fileProviderTypeIdentifiers = [protobufCopy fileProviderTypeIdentifiers];
    if (fileProviderTypeIdentifiers)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v14 = 0;
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    fileProviderTypeIdentifiers2 = [protobufCopy fileProviderTypeIdentifiers];
    v16 = [fileProviderTypeIdentifiers2 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(fileProviderTypeIdentifiers2);
          }

          if (*(*(&v27 + 1) + 8 * j))
          {
            [v14 addObject:?];
          }
        }

        v17 = [fileProviderTypeIdentifiers2 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v17);
    }

    [(SFCoreSpotlightCopyItem *)v5 setFileProviderTypeIdentifiers:v14];
    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFCoreSpotlightCopyItem *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    coreSpotlightIdentifier = [protobufCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [protobufCopy coreSpotlightIdentifier];
      [(SFCoreSpotlightCopyItem *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = SFCoreSpotlightCopyItem;
  v3 = [(SFCopyItem *)&v13 hash];
  dataProviderTypeIdentifiers = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  v5 = [dataProviderTypeIdentifiers hash];
  fileProviderTypeIdentifiers = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  v7 = v5 ^ [fileProviderTypeIdentifiers hash];
  applicationBundleIdentifier = [(SFCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  v9 = v7 ^ [applicationBundleIdentifier hash];
  coreSpotlightIdentifier = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
  v11 = v9 ^ [coreSpotlightIdentifier hash];

  return v11 ^ v3;
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
    if ([(SFCoreSpotlightCopyItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v42.receiver = self;
      v42.super_class = SFCoreSpotlightCopyItem;
      if ([(SFCopyItem *)&v42 isEqual:equalCopy])
      {
        v6 = equalCopy;
        dataProviderTypeIdentifiers = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
        dataProviderTypeIdentifiers2 = [(SFCoreSpotlightCopyItem *)v6 dataProviderTypeIdentifiers];
        if ((dataProviderTypeIdentifiers != 0) == (dataProviderTypeIdentifiers2 == 0))
        {
          v11 = 0;
LABEL_38:

          goto LABEL_39;
        }

        dataProviderTypeIdentifiers3 = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
        if (dataProviderTypeIdentifiers3)
        {
          dataProviderTypeIdentifiers4 = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
          dataProviderTypeIdentifiers5 = [(SFCoreSpotlightCopyItem *)v6 dataProviderTypeIdentifiers];
          if (![dataProviderTypeIdentifiers4 isEqual:dataProviderTypeIdentifiers5])
          {
            v11 = 0;
            goto LABEL_36;
          }

          v41 = dataProviderTypeIdentifiers4;
        }

        fileProviderTypeIdentifiers = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
        fileProviderTypeIdentifiers2 = [(SFCoreSpotlightCopyItem *)v6 fileProviderTypeIdentifiers];
        v14 = fileProviderTypeIdentifiers2;
        if ((fileProviderTypeIdentifiers != 0) == (fileProviderTypeIdentifiers2 == 0))
        {

          v11 = 0;
          goto LABEL_35;
        }

        fileProviderTypeIdentifiers3 = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
        v40 = fileProviderTypeIdentifiers3;
        if (fileProviderTypeIdentifiers3)
        {
          v16 = fileProviderTypeIdentifiers3;
          v35 = v14;
          v17 = fileProviderTypeIdentifiers;
          fileProviderTypeIdentifiers4 = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
          fileProviderTypeIdentifiers5 = [(SFCoreSpotlightCopyItem *)v6 fileProviderTypeIdentifiers];
          v38 = fileProviderTypeIdentifiers4;
          if (![fileProviderTypeIdentifiers4 isEqual:?])
          {
            v11 = 0;
            fileProviderTypeIdentifiers = v17;
            v14 = v35;
            goto LABEL_33;
          }

          v39 = dataProviderTypeIdentifiers5;
          fileProviderTypeIdentifiers = v17;
          v14 = v35;
        }

        else
        {
          v39 = dataProviderTypeIdentifiers5;
        }

        applicationBundleIdentifier = [(SFCoreSpotlightCopyItem *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFCoreSpotlightCopyItem *)v6 applicationBundleIdentifier];
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
          dataProviderTypeIdentifiers5 = v39;
          v16 = v40;
          if (!v40)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        v33 = applicationBundleIdentifier2;
        v34 = applicationBundleIdentifier;
        [(SFCoreSpotlightCopyItem *)self applicationBundleIdentifier];
        v36 = v16 = v40;
        if (!v36 || (-[SFCoreSpotlightCopyItem applicationBundleIdentifier](self, "applicationBundleIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), -[SFCoreSpotlightCopyItem applicationBundleIdentifier](v6, "applicationBundleIdentifier"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
        {
          coreSpotlightIdentifier = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
          coreSpotlightIdentifier2 = [(SFCoreSpotlightCopyItem *)v6 coreSpotlightIdentifier];
          if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
          {

            v11 = 0;
            v16 = v40;
          }

          else
          {
            v29 = coreSpotlightIdentifier;
            v30 = coreSpotlightIdentifier2;
            coreSpotlightIdentifier3 = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
            v16 = v40;
            if (coreSpotlightIdentifier3)
            {
              v28 = coreSpotlightIdentifier3;
              coreSpotlightIdentifier4 = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
              coreSpotlightIdentifier5 = [(SFCoreSpotlightCopyItem *)v6 coreSpotlightIdentifier];
              v11 = [coreSpotlightIdentifier4 isEqual:?];
            }

            else
            {

              v11 = 1;
            }
          }

          dataProviderTypeIdentifiers5 = v39;
          if (!v36)
          {
LABEL_32:

            if (!v16)
            {
LABEL_34:

LABEL_35:
              dataProviderTypeIdentifiers4 = v41;
              if (!dataProviderTypeIdentifiers3)
              {
LABEL_37:

                goto LABEL_38;
              }

LABEL_36:

              goto LABEL_37;
            }

LABEL_33:

            goto LABEL_34;
          }
        }

        else
        {
          v11 = 0;
          dataProviderTypeIdentifiers5 = v39;
        }

        goto LABEL_32;
      }
    }

    v11 = 0;
  }

LABEL_39:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = SFCoreSpotlightCopyItem;
  v4 = [(SFCopyItem *)&v14 copyWithZone:zone];
  dataProviderTypeIdentifiers = [(SFCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  v6 = [dataProviderTypeIdentifiers copy];
  [v4 setDataProviderTypeIdentifiers:v6];

  fileProviderTypeIdentifiers = [(SFCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  v8 = [fileProviderTypeIdentifiers copy];
  [v4 setFileProviderTypeIdentifiers:v8];

  applicationBundleIdentifier = [(SFCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  v10 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v10];

  coreSpotlightIdentifier = [(SFCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
  v12 = [coreSpotlightIdentifier copy];
  [v4 setCoreSpotlightIdentifier:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCoreSpotlightCopyItem alloc] initWithFacade:self];
  jsonData = [(_SFPBCoreSpotlightCopyItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCoreSpotlightCopyItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCoreSpotlightCopyItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCoreSpotlightCopyItem alloc] initWithFacade:self];
  data = [(_SFPBCoreSpotlightCopyItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCoreSpotlightCopyItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCoreSpotlightCopyItem alloc] initWithData:v5];
  v7 = [(SFCoreSpotlightCopyItem *)self initWithProtobuf:v6];

  return v7;
}

@end