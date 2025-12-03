@interface _SFPBCoreSpotlightCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCoreSpotlightCopyItem)initWithDictionary:(id)dictionary;
- (_SFPBCoreSpotlightCopyItem)initWithFacade:(id)facade;
- (_SFPBCoreSpotlightCopyItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDataProviderTypeIdentifiers:(id)identifiers;
- (void)addFileProviderTypeIdentifiers:(id)identifiers;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setCoreSpotlightIdentifier:(id)identifier;
- (void)setDataProviderTypeIdentifiers:(id)identifiers;
- (void)setFileProviderTypeIdentifiers:(id)identifiers;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCoreSpotlightCopyItem

- (_SFPBCoreSpotlightCopyItem)initWithFacade:(id)facade
{
  v37 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBCoreSpotlightCopyItem *)self init];
  if (v5)
  {
    dataProviderTypeIdentifiers = [facadeCopy dataProviderTypeIdentifiers];
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
    dataProviderTypeIdentifiers2 = [facadeCopy dataProviderTypeIdentifiers];
    v9 = [dataProviderTypeIdentifiers2 countByEnumeratingWithState:&v31 objects:v36 count:16];
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

        v10 = [dataProviderTypeIdentifiers2 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    [(_SFPBCoreSpotlightCopyItem *)v5 setDataProviderTypeIdentifiers:v7];
    fileProviderTypeIdentifiers = [facadeCopy fileProviderTypeIdentifiers];
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
    fileProviderTypeIdentifiers2 = [facadeCopy fileProviderTypeIdentifiers];
    v16 = [fileProviderTypeIdentifiers2 countByEnumeratingWithState:&v27 objects:v35 count:16];
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

        v17 = [fileProviderTypeIdentifiers2 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v17);
    }

    [(_SFPBCoreSpotlightCopyItem *)v5 setFileProviderTypeIdentifiers:v14];
    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBCoreSpotlightCopyItem *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    coreSpotlightIdentifier = [facadeCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [facadeCopy coreSpotlightIdentifier];
      [(_SFPBCoreSpotlightCopyItem *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCoreSpotlightCopyItem)initWithDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = _SFPBCoreSpotlightCopyItem;
  v5 = [(_SFPBCoreSpotlightCopyItem *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dataProviderTypeIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v34;
        do
        {
          v11 = 0;
          do
          {
            if (*v34 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v33 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(_SFPBCoreSpotlightCopyItem *)v5 addDataProviderTypeIdentifiers:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"fileProviderTypeIdentifiers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          v19 = 0;
          do
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(_SFPBCoreSpotlightCopyItem *)v5 addFileProviderTypeIdentifiers:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v17);
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:{@"applicationBundleIdentifier", v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBCoreSpotlightCopyItem *)v5 setApplicationBundleIdentifier:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(_SFPBCoreSpotlightCopyItem *)v5 setCoreSpotlightIdentifier:v25];
    }

    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCoreSpotlightCopyItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCoreSpotlightCopyItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCoreSpotlightCopyItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
    v5 = [applicationBundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_coreSpotlightIdentifier)
  {
    coreSpotlightIdentifier = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
    v7 = [coreSpotlightIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_dataProviderTypeIdentifiers)
  {
    dataProviderTypeIdentifiers = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
    v9 = [dataProviderTypeIdentifiers copy];
    [dictionary setObject:v9 forKeyedSubscript:@"dataProviderTypeIdentifiers"];
  }

  if (self->_fileProviderTypeIdentifiers)
  {
    fileProviderTypeIdentifiers = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
    v11 = [fileProviderTypeIdentifiers copy];
    [dictionary setObject:v11 forKeyedSubscript:@"fileProviderTypeIdentifiers"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_dataProviderTypeIdentifiers hash];
  v4 = [(NSArray *)self->_fileProviderTypeIdentifiers hash]^ v3;
  v5 = [(NSString *)self->_applicationBundleIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_coreSpotlightIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  dataProviderTypeIdentifiers = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  dataProviderTypeIdentifiers2 = [equalCopy dataProviderTypeIdentifiers];
  if ((dataProviderTypeIdentifiers != 0) == (dataProviderTypeIdentifiers2 == 0))
  {
    goto LABEL_21;
  }

  dataProviderTypeIdentifiers3 = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  if (dataProviderTypeIdentifiers3)
  {
    v8 = dataProviderTypeIdentifiers3;
    dataProviderTypeIdentifiers4 = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
    dataProviderTypeIdentifiers5 = [equalCopy dataProviderTypeIdentifiers];
    v11 = [dataProviderTypeIdentifiers4 isEqual:dataProviderTypeIdentifiers5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  dataProviderTypeIdentifiers = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  dataProviderTypeIdentifiers2 = [equalCopy fileProviderTypeIdentifiers];
  if ((dataProviderTypeIdentifiers != 0) == (dataProviderTypeIdentifiers2 == 0))
  {
    goto LABEL_21;
  }

  fileProviderTypeIdentifiers = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  if (fileProviderTypeIdentifiers)
  {
    v13 = fileProviderTypeIdentifiers;
    fileProviderTypeIdentifiers2 = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
    fileProviderTypeIdentifiers3 = [equalCopy fileProviderTypeIdentifiers];
    v16 = [fileProviderTypeIdentifiers2 isEqual:fileProviderTypeIdentifiers3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  dataProviderTypeIdentifiers = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  dataProviderTypeIdentifiers2 = [equalCopy applicationBundleIdentifier];
  if ((dataProviderTypeIdentifiers != 0) == (dataProviderTypeIdentifiers2 == 0))
  {
    goto LABEL_21;
  }

  applicationBundleIdentifier = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    v18 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
    applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
    v21 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  dataProviderTypeIdentifiers = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
  dataProviderTypeIdentifiers2 = [equalCopy coreSpotlightIdentifier];
  if ((dataProviderTypeIdentifiers != 0) != (dataProviderTypeIdentifiers2 == 0))
  {
    coreSpotlightIdentifier = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
    if (!coreSpotlightIdentifier)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = coreSpotlightIdentifier;
    coreSpotlightIdentifier2 = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
    coreSpotlightIdentifier3 = [equalCopy coreSpotlightIdentifier];
    v26 = [coreSpotlightIdentifier2 isEqual:coreSpotlightIdentifier3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  dataProviderTypeIdentifiers = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [dataProviderTypeIdentifiers countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(dataProviderTypeIdentifiers);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [dataProviderTypeIdentifiers countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  fileProviderTypeIdentifiers = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [fileProviderTypeIdentifiers countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(fileProviderTypeIdentifiers);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [fileProviderTypeIdentifiers countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  applicationBundleIdentifier = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  coreSpotlightIdentifier = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setCoreSpotlightIdentifier:(id)identifier
{
  v4 = [identifier copy];
  coreSpotlightIdentifier = self->_coreSpotlightIdentifier;
  self->_coreSpotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addFileProviderTypeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  fileProviderTypeIdentifiers = self->_fileProviderTypeIdentifiers;
  v8 = identifiersCopy;
  if (!fileProviderTypeIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_fileProviderTypeIdentifiers;
    self->_fileProviderTypeIdentifiers = array;

    identifiersCopy = v8;
    fileProviderTypeIdentifiers = self->_fileProviderTypeIdentifiers;
  }

  [(NSArray *)fileProviderTypeIdentifiers addObject:identifiersCopy];
}

- (void)setFileProviderTypeIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  fileProviderTypeIdentifiers = self->_fileProviderTypeIdentifiers;
  self->_fileProviderTypeIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addDataProviderTypeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dataProviderTypeIdentifiers = self->_dataProviderTypeIdentifiers;
  v8 = identifiersCopy;
  if (!dataProviderTypeIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_dataProviderTypeIdentifiers;
    self->_dataProviderTypeIdentifiers = array;

    identifiersCopy = v8;
    dataProviderTypeIdentifiers = self->_dataProviderTypeIdentifiers;
  }

  [(NSArray *)dataProviderTypeIdentifiers addObject:identifiersCopy];
}

- (void)setDataProviderTypeIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  dataProviderTypeIdentifiers = self->_dataProviderTypeIdentifiers;
  self->_dataProviderTypeIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

@end