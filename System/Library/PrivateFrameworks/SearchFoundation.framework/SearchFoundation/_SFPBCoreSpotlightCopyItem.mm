@interface _SFPBCoreSpotlightCopyItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCoreSpotlightCopyItem)initWithDictionary:(id)a3;
- (_SFPBCoreSpotlightCopyItem)initWithFacade:(id)a3;
- (_SFPBCoreSpotlightCopyItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDataProviderTypeIdentifiers:(id)a3;
- (void)addFileProviderTypeIdentifiers:(id)a3;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)setCoreSpotlightIdentifier:(id)a3;
- (void)setDataProviderTypeIdentifiers:(id)a3;
- (void)setFileProviderTypeIdentifiers:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCoreSpotlightCopyItem

- (_SFPBCoreSpotlightCopyItem)initWithFacade:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCoreSpotlightCopyItem *)self init];
  if (v5)
  {
    v6 = [v4 dataProviderTypeIdentifiers];
    if (v6)
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
    v8 = [v4 dataProviderTypeIdentifiers];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(v8);
          }

          if (*(*(&v31 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    [(_SFPBCoreSpotlightCopyItem *)v5 setDataProviderTypeIdentifiers:v7];
    v13 = [v4 fileProviderTypeIdentifiers];
    if (v13)
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
    v15 = [v4 fileProviderTypeIdentifiers];
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(v15);
          }

          if (*(*(&v27 + 1) + 8 * j))
          {
            [v14 addObject:?];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v17);
    }

    [(_SFPBCoreSpotlightCopyItem *)v5 setFileProviderTypeIdentifiers:v14];
    v20 = [v4 applicationBundleIdentifier];

    if (v20)
    {
      v21 = [v4 applicationBundleIdentifier];
      [(_SFPBCoreSpotlightCopyItem *)v5 setApplicationBundleIdentifier:v21];
    }

    v22 = [v4 coreSpotlightIdentifier];

    if (v22)
    {
      v23 = [v4 coreSpotlightIdentifier];
      [(_SFPBCoreSpotlightCopyItem *)v5 setCoreSpotlightIdentifier:v23];
    }

    v24 = v5;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCoreSpotlightCopyItem)initWithDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = _SFPBCoreSpotlightCopyItem;
  v5 = [(_SFPBCoreSpotlightCopyItem *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dataProviderTypeIdentifiers"];
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

    v14 = [v4 objectForKeyedSubscript:@"fileProviderTypeIdentifiers"];
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

    v22 = [v4 objectForKeyedSubscript:{@"applicationBundleIdentifier", v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBCoreSpotlightCopyItem *)v5 setApplicationBundleIdentifier:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"coreSpotlightIdentifier"];
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

- (_SFPBCoreSpotlightCopyItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCoreSpotlightCopyItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCoreSpotlightCopyItem *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_applicationBundleIdentifier)
  {
    v4 = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_coreSpotlightIdentifier)
  {
    v6 = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_dataProviderTypeIdentifiers)
  {
    v8 = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"dataProviderTypeIdentifiers"];
  }

  if (self->_fileProviderTypeIdentifiers)
  {
    v10 = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"fileProviderTypeIdentifiers"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_dataProviderTypeIdentifiers hash];
  v4 = [(NSArray *)self->_fileProviderTypeIdentifiers hash]^ v3;
  v5 = [(NSString *)self->_applicationBundleIdentifier hash];
  return v4 ^ v5 ^ [(NSString *)self->_coreSpotlightIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  v6 = [v4 dataProviderTypeIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
    v10 = [v4 dataProviderTypeIdentifiers];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  v6 = [v4 fileProviderTypeIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
    v15 = [v4 fileProviderTypeIdentifiers];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
    v20 = [v4 applicationBundleIdentifier];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
  v6 = [v4 coreSpotlightIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
    v25 = [v4 coreSpotlightIdentifier];
    v26 = [v24 isEqual:v25];

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

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCoreSpotlightCopyItem *)self dataProviderTypeIdentifiers];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBCoreSpotlightCopyItem *)self fileProviderTypeIdentifiers];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  v17 = [(_SFPBCoreSpotlightCopyItem *)self applicationBundleIdentifier];
  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = [(_SFPBCoreSpotlightCopyItem *)self coreSpotlightIdentifier];
  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setCoreSpotlightIdentifier:(id)a3
{
  v4 = [a3 copy];
  coreSpotlightIdentifier = self->_coreSpotlightIdentifier;
  self->_coreSpotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  applicationBundleIdentifier = self->_applicationBundleIdentifier;
  self->_applicationBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addFileProviderTypeIdentifiers:(id)a3
{
  v4 = a3;
  fileProviderTypeIdentifiers = self->_fileProviderTypeIdentifiers;
  v8 = v4;
  if (!fileProviderTypeIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_fileProviderTypeIdentifiers;
    self->_fileProviderTypeIdentifiers = v6;

    v4 = v8;
    fileProviderTypeIdentifiers = self->_fileProviderTypeIdentifiers;
  }

  [(NSArray *)fileProviderTypeIdentifiers addObject:v4];
}

- (void)setFileProviderTypeIdentifiers:(id)a3
{
  v4 = [a3 copy];
  fileProviderTypeIdentifiers = self->_fileProviderTypeIdentifiers;
  self->_fileProviderTypeIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addDataProviderTypeIdentifiers:(id)a3
{
  v4 = a3;
  dataProviderTypeIdentifiers = self->_dataProviderTypeIdentifiers;
  v8 = v4;
  if (!dataProviderTypeIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_dataProviderTypeIdentifiers;
    self->_dataProviderTypeIdentifiers = v6;

    v4 = v8;
    dataProviderTypeIdentifiers = self->_dataProviderTypeIdentifiers;
  }

  [(NSArray *)dataProviderTypeIdentifiers addObject:v4];
}

- (void)setDataProviderTypeIdentifiers:(id)a3
{
  v4 = [a3 copy];
  dataProviderTypeIdentifiers = self->_dataProviderTypeIdentifiers;
  self->_dataProviderTypeIdentifiers = v4;

  MEMORY[0x1EEE66BB8]();
}

@end