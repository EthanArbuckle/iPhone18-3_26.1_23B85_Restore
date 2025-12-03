@interface SFCopyCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFCopyCommand)initWithCoder:(id)coder;
- (SFCopyCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCopyCommand

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = SFCopyCommand;
  v3 = [(SFCommand *)&v9 hash];
  copyableItem = [(SFCopyCommand *)self copyableItem];
  v5 = [copyableItem hash];
  copyableItems = [(SFCopyCommand *)self copyableItems];
  v7 = v5 ^ [copyableItems hash];

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
    if ([(SFCopyCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = SFCopyCommand;
      if ([(SFCommand *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        copyableItem = [(SFCopyCommand *)self copyableItem];
        copyableItem2 = [(SFCopyCommand *)v6 copyableItem];
        if ((copyableItem != 0) == (copyableItem2 == 0))
        {
          v11 = 0;
LABEL_20:

          goto LABEL_21;
        }

        copyableItem3 = [(SFCopyCommand *)self copyableItem];
        if (copyableItem3)
        {
          copyableItem4 = [(SFCopyCommand *)self copyableItem];
          copyableItem5 = [(SFCopyCommand *)v6 copyableItem];
          if (![copyableItem4 isEqual:copyableItem5])
          {
            v11 = 0;
LABEL_18:

LABEL_19:
            goto LABEL_20;
          }

          v21 = copyableItem5;
        }

        copyableItems = [(SFCopyCommand *)self copyableItems];
        copyableItems2 = [(SFCopyCommand *)v6 copyableItems];
        v14 = copyableItems2;
        if ((copyableItems != 0) == (copyableItems2 == 0))
        {

          v11 = 0;
        }

        else
        {
          copyableItems3 = [(SFCopyCommand *)self copyableItems];
          if (copyableItems3)
          {
            v16 = copyableItems3;
            copyableItems4 = [(SFCopyCommand *)self copyableItems];
            [(SFCopyCommand *)v6 copyableItems];
            v17 = v20 = copyableItem4;
            v11 = [copyableItems4 isEqual:v17];

            copyableItem4 = v20;
          }

          else
          {

            v11 = 1;
          }
        }

        copyableItem5 = v21;
        if (!copyableItem3)
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
  v10.super_class = SFCopyCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  copyableItem = [(SFCopyCommand *)self copyableItem];
  v6 = [copyableItem copy];
  [v4 setCopyableItem:v6];

  copyableItems = [(SFCopyCommand *)self copyableItems];
  v8 = [copyableItems copy];
  [v4 setCopyableItems:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBCopyCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBCopyCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBCopyCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBCopyCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFCopyCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFCopyCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFCopyCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyableItem = [(SFCommand *)v8 copyableItem];
    [(SFCopyCommand *)v5 setCopyableItem:copyableItem];

    copyableItems = [(SFCommand *)v8 copyableItems];
    [(SFCopyCommand *)v5 setCopyableItems:copyableItems];

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

- (SFCopyCommand)initWithProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v25.receiver = self;
  v25.super_class = SFCopyCommand;
  v5 = [(SFCopyCommand *)&v25 init];
  if (v5)
  {
    copyableItem = [protobufCopy copyableItem];

    if (copyableItem)
    {
      v7 = [SFCopyItem alloc];
      copyableItem2 = [protobufCopy copyableItem];
      v9 = [(SFCopyItem *)v7 initWithProtobuf:copyableItem2];
      [(SFCopyCommand *)v5 setCopyableItem:v9];
    }

    copyableItems = [protobufCopy copyableItems];
    if (copyableItems)
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
    copyableItems2 = [protobufCopy copyableItems];
    v13 = [copyableItems2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(copyableItems2);
          }

          v17 = [[SFCopyItem alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [copyableItems2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    [(SFCopyCommand *)v5 setCopyableItems:v11];
    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end