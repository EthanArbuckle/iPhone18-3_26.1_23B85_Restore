@interface SFCoreSpotlightButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCoreSpotlightButtonItem)initWithCoder:(id)coder;
- (SFCoreSpotlightButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCoreSpotlightButtonItem

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFCoreSpotlightButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  actionItemTypes = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
  v5 = [actionItemTypes hash];
  applicationBundleIdentifier = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  v7 = v5 ^ [applicationBundleIdentifier hash];
  coreSpotlightIdentifier = [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
  v9 = v7 ^ [coreSpotlightIdentifier hash];
  v10 = v9 ^ [(SFButtonItem *)self uniqueId];

  return v10 ^ v3;
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
    if ([(SFCoreSpotlightButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFCoreSpotlightButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:equalCopy])
      {
        v6 = equalCopy;
        actionItemTypes = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
        actionItemTypes2 = [(SFCoreSpotlightButtonItem *)v6 actionItemTypes];
        if ((actionItemTypes != 0) == (actionItemTypes2 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        actionItemTypes3 = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
        if (actionItemTypes3)
        {
          actionItemTypes4 = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
          actionItemTypes5 = [(SFCoreSpotlightButtonItem *)v6 actionItemTypes];
          if (![actionItemTypes4 isEqual:actionItemTypes5])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = actionItemTypes4;
        }

        applicationBundleIdentifier = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
        applicationBundleIdentifier2 = [(SFCoreSpotlightButtonItem *)v6 applicationBundleIdentifier];
        v14 = applicationBundleIdentifier2;
        if ((applicationBundleIdentifier != 0) == (applicationBundleIdentifier2 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        applicationBundleIdentifier3 = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
        if (applicationBundleIdentifier3)
        {
          v27 = applicationBundleIdentifier;
          applicationBundleIdentifier4 = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
          applicationBundleIdentifier5 = [(SFCoreSpotlightButtonItem *)v6 applicationBundleIdentifier];
          v30 = applicationBundleIdentifier4;
          if (![applicationBundleIdentifier4 isEqual:?])
          {
            v11 = 0;
            applicationBundleIdentifier = v27;
            goto LABEL_29;
          }

          v31 = applicationBundleIdentifier3;
          v32 = actionItemTypes5;
          applicationBundleIdentifier = v27;
        }

        else
        {
          v31 = 0;
          v32 = actionItemTypes5;
        }

        coreSpotlightIdentifier = [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
        coreSpotlightIdentifier2 = [(SFCoreSpotlightButtonItem *)v6 coreSpotlightIdentifier];
        if ((coreSpotlightIdentifier != 0) == (coreSpotlightIdentifier2 == 0))
        {

          v11 = 0;
          applicationBundleIdentifier3 = v31;
          actionItemTypes5 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = coreSpotlightIdentifier2;
        v26 = coreSpotlightIdentifier;
        [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
        v28 = applicationBundleIdentifier3 = v31;
        if (v28)
        {
          coreSpotlightIdentifier3 = [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
          coreSpotlightIdentifier4 = [(SFCoreSpotlightButtonItem *)v6 coreSpotlightIdentifier];
          v24 = coreSpotlightIdentifier3;
          v20 = [coreSpotlightIdentifier3 isEqual:?];
          actionItemTypes5 = v32;
          if (!v20)
          {
            v11 = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              actionItemTypes4 = v33;
              if (!actionItemTypes3)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          actionItemTypes5 = v32;
        }

        uniqueId = [(SFButtonItem *)self uniqueId];
        v11 = uniqueId == [(SFButtonItem *)v6 uniqueId];
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v11 = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFCoreSpotlightButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:zone];
  actionItemTypes = [(SFCoreSpotlightButtonItem *)self actionItemTypes];
  v6 = [actionItemTypes copy];
  [v4 setActionItemTypes:v6];

  applicationBundleIdentifier = [(SFCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  v8 = [applicationBundleIdentifier copy];
  [v4 setApplicationBundleIdentifier:v8];

  coreSpotlightIdentifier = [(SFCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
  v10 = [coreSpotlightIdentifier copy];
  [v4 setCoreSpotlightIdentifier:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCoreSpotlightButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBCoreSpotlightButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCoreSpotlightButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCoreSpotlightButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBCoreSpotlightButtonItem alloc] initWithFacade:self];
  data = [(_SFPBCoreSpotlightButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFCoreSpotlightButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBCoreSpotlightButtonItem alloc] initWithData:v5];
  v7 = [(SFCoreSpotlightButtonItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFCoreSpotlightButtonItem)initWithProtobuf:(id)protobuf
{
  v26 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = SFCoreSpotlightButtonItem;
  v5 = [(SFCoreSpotlightButtonItem *)&v24 init];
  if (v5)
  {
    actionItemTypes = [protobufCopy actionItemTypes];
    if (actionItemTypes)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    actionItemTypes2 = [protobufCopy actionItemTypes];
    v9 = [actionItemTypes2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(actionItemTypes2);
          }

          if (*(*(&v20 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [actionItemTypes2 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    [(SFCoreSpotlightButtonItem *)v5 setActionItemTypes:v7];
    applicationBundleIdentifier = [protobufCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [protobufCopy applicationBundleIdentifier];
      [(SFCoreSpotlightButtonItem *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    coreSpotlightIdentifier = [protobufCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [protobufCopy coreSpotlightIdentifier];
      [(SFCoreSpotlightButtonItem *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

@end