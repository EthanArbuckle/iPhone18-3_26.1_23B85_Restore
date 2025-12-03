@interface _SFPBCoreSpotlightButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCoreSpotlightButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBCoreSpotlightButtonItem)initWithFacade:(id)facade;
- (_SFPBCoreSpotlightButtonItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addActionItemTypes:(id)types;
- (void)setActionItemTypes:(id)types;
- (void)setApplicationBundleIdentifier:(id)identifier;
- (void)setCoreSpotlightIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCoreSpotlightButtonItem

- (_SFPBCoreSpotlightButtonItem)initWithFacade:(id)facade
{
  v25 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBCoreSpotlightButtonItem *)self init];
  if (v5)
  {
    actionItemTypes = [facadeCopy actionItemTypes];
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
    actionItemTypes2 = [facadeCopy actionItemTypes];
    v9 = [actionItemTypes2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

        v10 = [actionItemTypes2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [(_SFPBCoreSpotlightButtonItem *)v5 setActionItemTypes:v7];
    applicationBundleIdentifier = [facadeCopy applicationBundleIdentifier];

    if (applicationBundleIdentifier)
    {
      applicationBundleIdentifier2 = [facadeCopy applicationBundleIdentifier];
      [(_SFPBCoreSpotlightButtonItem *)v5 setApplicationBundleIdentifier:applicationBundleIdentifier2];
    }

    coreSpotlightIdentifier = [facadeCopy coreSpotlightIdentifier];

    if (coreSpotlightIdentifier)
    {
      coreSpotlightIdentifier2 = [facadeCopy coreSpotlightIdentifier];
      [(_SFPBCoreSpotlightButtonItem *)v5 setCoreSpotlightIdentifier:coreSpotlightIdentifier2];
    }

    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBCoreSpotlightButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    v17 = v5;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCoreSpotlightButtonItem)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = _SFPBCoreSpotlightButtonItem;
  v5 = [(_SFPBCoreSpotlightButtonItem *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionItemTypes"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:{@"applicationBundleIdentifier", v22}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBCoreSpotlightButtonItem *)v5 setApplicationBundleIdentifier:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"coreSpotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBCoreSpotlightButtonItem *)v5 setCoreSpotlightIdentifier:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
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

- (_SFPBCoreSpotlightButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCoreSpotlightButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCoreSpotlightButtonItem *)self dictionaryRepresentation];
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
  if (self->_actionItemTypes)
  {
    actionItemTypes = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
    v5 = [actionItemTypes copy];
    [dictionary setObject:v5 forKeyedSubscript:@"actionItemTypes"];
  }

  if (self->_applicationBundleIdentifier)
  {
    applicationBundleIdentifier = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
    v7 = [applicationBundleIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"applicationBundleIdentifier"];
  }

  if (self->_coreSpotlightIdentifier)
  {
    coreSpotlightIdentifier = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
    v9 = [coreSpotlightIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"coreSpotlightIdentifier"];
  }

  if (self->_uniqueId)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBCoreSpotlightButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v10 forKeyedSubscript:@"uniqueId"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_actionItemTypes hash];
  v4 = [(NSString *)self->_applicationBundleIdentifier hash];
  return v4 ^ v3 ^ [(NSString *)self->_coreSpotlightIdentifier hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  actionItemTypes = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
  actionItemTypes2 = [equalCopy actionItemTypes];
  if ((actionItemTypes != 0) == (actionItemTypes2 == 0))
  {
    goto LABEL_16;
  }

  actionItemTypes3 = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
  if (actionItemTypes3)
  {
    v8 = actionItemTypes3;
    actionItemTypes4 = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
    actionItemTypes5 = [equalCopy actionItemTypes];
    v11 = [actionItemTypes4 isEqual:actionItemTypes5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  actionItemTypes = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  actionItemTypes2 = [equalCopy applicationBundleIdentifier];
  if ((actionItemTypes != 0) == (actionItemTypes2 == 0))
  {
    goto LABEL_16;
  }

  applicationBundleIdentifier = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    v13 = applicationBundleIdentifier;
    applicationBundleIdentifier2 = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
    applicationBundleIdentifier3 = [equalCopy applicationBundleIdentifier];
    v16 = [applicationBundleIdentifier2 isEqual:applicationBundleIdentifier3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  actionItemTypes = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
  actionItemTypes2 = [equalCopy coreSpotlightIdentifier];
  if ((actionItemTypes != 0) != (actionItemTypes2 == 0))
  {
    coreSpotlightIdentifier = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
    if (!coreSpotlightIdentifier)
    {

LABEL_20:
      uniqueId = self->_uniqueId;
      v22 = uniqueId == [equalCopy uniqueId];
      goto LABEL_18;
    }

    v18 = coreSpotlightIdentifier;
    coreSpotlightIdentifier2 = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
    coreSpotlightIdentifier3 = [equalCopy coreSpotlightIdentifier];
    v21 = [coreSpotlightIdentifier2 isEqual:coreSpotlightIdentifier3];

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

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  actionItemTypes = [(_SFPBCoreSpotlightButtonItem *)self actionItemTypes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [actionItemTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(actionItemTypes);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [actionItemTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  applicationBundleIdentifier = [(_SFPBCoreSpotlightButtonItem *)self applicationBundleIdentifier];
  if (applicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  coreSpotlightIdentifier = [(_SFPBCoreSpotlightButtonItem *)self coreSpotlightIdentifier];
  if (coreSpotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCoreSpotlightButtonItem *)self uniqueId])
  {
    PBDataWriterWriteUint64Field();
  }

  v13 = *MEMORY[0x1E69E9840];
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

- (void)addActionItemTypes:(id)types
{
  typesCopy = types;
  actionItemTypes = self->_actionItemTypes;
  v8 = typesCopy;
  if (!actionItemTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionItemTypes;
    self->_actionItemTypes = array;

    typesCopy = v8;
    actionItemTypes = self->_actionItemTypes;
  }

  [(NSArray *)actionItemTypes addObject:typesCopy];
}

- (void)setActionItemTypes:(id)types
{
  v4 = [types copy];
  actionItemTypes = self->_actionItemTypes;
  self->_actionItemTypes = v4;

  MEMORY[0x1EEE66BB8]();
}

@end