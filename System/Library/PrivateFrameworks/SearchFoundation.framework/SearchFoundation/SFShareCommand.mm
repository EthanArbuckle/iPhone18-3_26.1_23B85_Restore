@interface SFShareCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShareCommand)initWithCoder:(id)coder;
- (SFShareCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFShareCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFShareCommand;
  v3 = [(SFCommand *)&v9 hash];
  shareItem = [(SFShareCommand *)self shareItem];
  v5 = [shareItem hash];
  shareItems = [(SFShareCommand *)self shareItems];
  v7 = v5 ^ [shareItems hash];

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
    if ([(SFShareCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFShareCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        shareItem = [(SFShareCommand *)self shareItem];
        shareItem2 = [(SFShareCommand *)v6 shareItem];
        if ((shareItem != 0) == (shareItem2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        shareItem3 = [(SFShareCommand *)self shareItem];
        if (shareItem3)
        {
          shareItem4 = [(SFShareCommand *)self shareItem];
          shareItem5 = [(SFShareCommand *)v6 shareItem];
          if (![shareItem4 isEqual:shareItem5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = shareItem5;
        }

        shareItems = [(SFShareCommand *)self shareItems];
        shareItems2 = [(SFShareCommand *)v6 shareItems];
        v14 = shareItems2;
        if ((shareItems != 0) == (shareItems2 == 0))
        {

          v11 = 0;
        }

        else
        {
          shareItems3 = [(SFShareCommand *)self shareItems];
          if (shareItems3)
          {
            v16 = shareItems3;
            shareItems4 = [(SFShareCommand *)self shareItems];
            [(SFShareCommand *)v6 shareItems];
            v17 = v20 = shareItem4;
            v11 = [shareItems4 isEqual:v17];

            shareItem4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        shareItem5 = v21;
        if (!shareItem3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_21:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFShareCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  shareItem = [(SFShareCommand *)self shareItem];
  v6 = [shareItem copy];
  [v4 setShareItem:v6];

  shareItems = [(SFShareCommand *)self shareItems];
  v8 = [shareItems copy];
  [v4 setShareItems:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShareCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBShareCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShareCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBShareCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFShareCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFShareCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFShareCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shareItem = [(SFCommand *)v8 shareItem];
    [(SFShareCommand *)v5 setShareItem:shareItem];

    shareItems = [(SFCommand *)v8 shareItems];
    [(SFShareCommand *)v5 setShareItems:shareItems];

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

- (SFShareCommand)initWithProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v25.receiver = self;
  v25.super_class = SFShareCommand;
  v5 = [(SFShareCommand *)&v25 init];
  if (v5)
  {
    shareItem = [protobufCopy shareItem];

    if (shareItem)
    {
      v7 = [SFShareItem alloc];
      shareItem2 = [protobufCopy shareItem];
      v9 = [(SFShareItem *)v7 initWithProtobuf:shareItem2];
      [(SFShareCommand *)v5 setShareItem:v9];
    }

    shareItems = [protobufCopy shareItems];
    if (shareItems)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    shareItems2 = [protobufCopy shareItems];
    v13 = [shareItems2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(shareItems2);
          }

          v17 = [[SFShareItem alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [shareItems2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    [(SFShareCommand *)v5 setShareItems:v11];
    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end