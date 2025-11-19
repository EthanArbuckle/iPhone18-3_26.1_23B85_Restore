@interface _SFPBCoreSpotlightButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCoreSpotlightButtonItem)initWithDictionary:(id)a3;
- (_SFPBCoreSpotlightButtonItem)initWithFacade:(id)a3;
- (_SFPBCoreSpotlightButtonItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActionItemTypes:(id)a3;
- (void)setActionItemTypes:(id)a3;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)setCoreSpotlightIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCoreSpotlightButtonItem

- (_SFPBCoreSpotlightButtonItem)initWithFacade:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCoreSpotlightButtonItem *)self init];
  if (v5)
  {
    v6 = [v4 actionItemTypes];
    if (v6)
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
    v8 = [v4 actionItemTypes];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v8);
          }

          if (*(*(&v20 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [(_SFPBCoreSpotlightButtonItem *)v5 setActionItemTypes:v7];
    v13 = [v4 applicationBundleIdentifier];

    if (v13)
    {
      v14 = [v4 applicationBundleIdentifier];
      [(_SFPBCoreSpotlightButtonItem *)v5 setApplicationBundleIdentifier:v14];
    }

    v15 = [v4 coreSpotlightIdentifier];

    if (v15)
    {
      v16 = [v4 coreSpotlightIdentifier];
      [(_SFPBCoreSpotlightButtonItem *)v5 setCoreSpotlightIdentifier:v16];
    }

    if ([v4 hasUniqueId])
    {
      -[_SFPBCoreSpotlightButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCoreSpotlightButtonItem)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _SFPBCoreSpotlightButtonItem;
  v5 = [(_SFPBCoreSpotlightButtonItem *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionItemTypes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          v11 = 0;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v22 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(_SFPBCoreSpotlightButtonItem *)v5 addActionItemTypes:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:{@"applicationBundleIdentifier", v22}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBCoreSpotlightButtonItem *)v5 setApplicationBundleIdentifier:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBCoreSpotlightButtonItem *)v5 setCoreSpotlightIdentifier:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCoreSpotlightButtonItem setUniqueId:](v5, "setUniqueId:", [v18 unsignedLongLongValue]);
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCoreSpotlightButtonItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCoreSpotlightButtonItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCoreSpotlightButtonItem *)self dictionaryRepresentation];
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
  if (self->_actionItemTypes)
  {
    v4 = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"actionItemTypes"];
  }

  if (self->_applicationBundleIdentifier)
  {
    v6 = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_coreSpotlightIdentifier)
  {
    v8 = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_uniqueId)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCoreSpotlightButtonItem uniqueId](self, "uniqueId")}];
    [v3 setObject:v10 forKeyedSubscript:@"uniqueId"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_actionItemTypes hash];
  v4 = [(NSString *)self->_applicationBundleIdentifier hash];
  return v4 ^ v3 ^ [(NSString *)self->_coreSpotlightIdentifier hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
  v6 = [v4 actionItemTypes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
    v10 = [v4 actionItemTypes];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  v6 = [v4 applicationBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
    v15 = [v4 applicationBundleIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
  v6 = [v4 coreSpotlightIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
    if (!v17)
    {

LABEL_20:
      uniqueId = self->_uniqueId;
      v22 = uniqueId == [v4 uniqueId];
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
    v20 = [v4 coreSpotlightIdentifier];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCoreSpotlightButtonItem *)self uniqueId])
  {
    PBDataWriterWriteUint64Field();
  }

  v13 = *MEMORY[0x1E69E9840];
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

- (void)addActionItemTypes:(id)a3
{
  v4 = a3;
  actionItemTypes = self->_actionItemTypes;
  v8 = v4;
  if (!actionItemTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionItemTypes;
    self->_actionItemTypes = v6;

    v4 = v8;
    actionItemTypes = self->_actionItemTypes;
  }

  [(NSArray *)actionItemTypes addObject:v4];
}

- (void)setActionItemTypes:(id)a3
{
  v4 = [a3 copy];
  actionItemTypes = self->_actionItemTypes;
  self->_actionItemTypes = v4;

  MEMORY[0x1EEE66BB8]();
}

@end