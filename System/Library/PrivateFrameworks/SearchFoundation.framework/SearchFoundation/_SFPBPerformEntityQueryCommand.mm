@interface _SFPBPerformEntityQueryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPerformEntityQueryCommand)initWithDictionary:(id)dictionary;
- (_SFPBPerformEntityQueryCommand)initWithFacade:(id)facade;
- (_SFPBPerformEntityQueryCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (int)enabledDomainsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addFilterQueries:(id)queries;
- (void)setBundleIdentifier:(id)identifier;
- (void)setEnabledDomains:(id)domains;
- (void)setEntityIdentifier:(id)identifier;
- (void)setFilterQueries:(id)queries;
- (void)setSearchString:(id)string;
- (void)setTokenString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPerformEntityQueryCommand

- (_SFPBPerformEntityQueryCommand)initWithFacade:(id)facade
{
  v61 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBPerformEntityQueryCommand *)self init];
  if (v5)
  {
    searchString = [facadeCopy searchString];

    if (searchString)
    {
      searchString2 = [facadeCopy searchString];
      [(_SFPBPerformEntityQueryCommand *)v5 setSearchString:searchString2];
    }

    tokenString = [facadeCopy tokenString];

    if (tokenString)
    {
      tokenString2 = [facadeCopy tokenString];
      [(_SFPBPerformEntityQueryCommand *)v5 setTokenString:tokenString2];
    }

    symbolImage = [facadeCopy symbolImage];

    if (symbolImage)
    {
      v11 = [_SFPBSymbolImage alloc];
      symbolImage2 = [facadeCopy symbolImage];
      v13 = [(_SFPBSymbolImage *)v11 initWithFacade:symbolImage2];
      [(_SFPBPerformEntityQueryCommand *)v5 setSymbolImage:v13];
    }

    if ([facadeCopy hasEntityType])
    {
      -[_SFPBPerformEntityQueryCommand setEntityType:](v5, "setEntityType:", [facadeCopy entityType]);
    }

    entityIdentifier = [facadeCopy entityIdentifier];

    if (entityIdentifier)
    {
      entityIdentifier2 = [facadeCopy entityIdentifier];
      [(_SFPBPerformEntityQueryCommand *)v5 setEntityIdentifier:entityIdentifier2];
    }

    entityBackgroundColor = [facadeCopy entityBackgroundColor];

    if (entityBackgroundColor)
    {
      v17 = [_SFPBColor alloc];
      entityBackgroundColor2 = [facadeCopy entityBackgroundColor];
      v19 = [(_SFPBColor *)v17 initWithFacade:entityBackgroundColor2];
      [(_SFPBPerformEntityQueryCommand *)v5 setEntityBackgroundColor:v19];
    }

    metadata = [facadeCopy metadata];

    if (metadata)
    {
      v21 = [_SFPBDrillDownMetadata alloc];
      metadata2 = [facadeCopy metadata];
      v23 = [(_SFPBDrillDownMetadata *)v21 initWithFacade:metadata2];
      [(_SFPBPerformEntityQueryCommand *)v5 setMetadata:v23];
    }

    drilldownMetadata = [facadeCopy drilldownMetadata];

    if (drilldownMetadata)
    {
      v25 = [_SFPBDrillDownMetadata alloc];
      drilldownMetadata2 = [facadeCopy drilldownMetadata];
      v27 = [(_SFPBDrillDownMetadata *)v25 initWithFacade:drilldownMetadata2];
      [(_SFPBPerformEntityQueryCommand *)v5 setDrilldownMetadata:v27];
    }

    tokenImage = [facadeCopy tokenImage];

    if (tokenImage)
    {
      v29 = [_SFPBImage alloc];
      tokenImage2 = [facadeCopy tokenImage];
      v31 = [(_SFPBImage *)v29 initWithFacade:tokenImage2];
      [(_SFPBPerformEntityQueryCommand *)v5 setTokenImage:v31];
    }

    filterQueries = [facadeCopy filterQueries];
    if (filterQueries)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    filterQueries2 = [facadeCopy filterQueries];
    v35 = [filterQueries2 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v56;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v56 != v37)
          {
            objc_enumerationMutation(filterQueries2);
          }

          if (*(*(&v55 + 1) + 8 * i))
          {
            [v33 addObject:?];
          }
        }

        v36 = [filterQueries2 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v36);
    }

    [(_SFPBPerformEntityQueryCommand *)v5 setFilterQueries:v33];
    enabledDomains = [facadeCopy enabledDomains];
    if (enabledDomains)
    {
      v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v40 = 0;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    enabledDomains2 = [facadeCopy enabledDomains];
    v42 = [enabledDomains2 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v52;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v52 != v44)
          {
            objc_enumerationMutation(enabledDomains2);
          }

          if (*(*(&v51 + 1) + 8 * j))
          {
            [v40 addObject:?];
          }
        }

        v43 = [enabledDomains2 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v43);
    }

    [(_SFPBPerformEntityQueryCommand *)v5 setEnabledDomains:v40];
    bundleIdentifier = [facadeCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [facadeCopy bundleIdentifier];
      [(_SFPBPerformEntityQueryCommand *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPerformEntityQueryCommand)initWithDictionary:(id)dictionary
{
  v65 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v62.receiver = self;
  v62.super_class = _SFPBPerformEntityQueryCommand;
  v5 = [(_SFPBPerformEntityQueryCommand *)&v62 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPerformEntityQueryCommand *)v5 setSearchString:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"tokenString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPerformEntityQueryCommand *)v5 setTokenString:v9];
    }

    v48 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"symbolImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBSymbolImage alloc] initWithDictionary:v10];
      [(_SFPBPerformEntityQueryCommand *)v5 setSymbolImage:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"entityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformEntityQueryCommand setEntityType:](v5, "setEntityType:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"entityIdentifier"];
    objc_opt_class();
    v53 = v13;
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(_SFPBPerformEntityQueryCommand *)v5 setEntityIdentifier:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"entityBackgroundColor"];
    objc_opt_class();
    v52 = v15;
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBColor alloc] initWithDictionary:v15];
      [(_SFPBPerformEntityQueryCommand *)v5 setEntityBackgroundColor:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    v51 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBDrillDownMetadata alloc] initWithDictionary:v17];
      [(_SFPBPerformEntityQueryCommand *)v5 setMetadata:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"drilldownMetadata"];
    objc_opt_class();
    v50 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBDrillDownMetadata alloc] initWithDictionary:v19];
      [(_SFPBPerformEntityQueryCommand *)v5 setDrilldownMetadata:v20];
    }

    v46 = v12;
    v47 = v10;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"tokenImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBImage alloc] initWithDictionary:v21];
      [(_SFPBPerformEntityQueryCommand *)v5 setTokenImage:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"filterQueries"];
    objc_opt_class();
    v49 = v23;
    v45 = v21;
    if (objc_opt_isKindOfClass())
    {
      v24 = v6;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v25 = v49;
      v26 = [v25 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v59;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v59 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v58 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = [v30 copy];
              [(_SFPBPerformEntityQueryCommand *)v5 addFilterQueries:v31];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v27);
      }

      v6 = v24;
      v21 = v45;
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"enabledDomains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v6;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v33 = v32;
      v34 = [v33 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v55;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v55 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v54 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[_SFPBPerformEntityQueryCommand addEnabledDomains:](v5, "addEnabledDomains:", [v38 intValue]);
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v35);
      }

      v6 = v44;
      v21 = v45;
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:{@"bundleIdentifier", v44}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [v39 copy];
      [(_SFPBPerformEntityQueryCommand *)v5 setBundleIdentifier:v40];
    }

    v41 = v5;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPerformEntityQueryCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPerformEntityQueryCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPerformEntityQueryCommand *)self dictionaryRepresentation];
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
  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
    v5 = [bundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_drilldownMetadata)
  {
    drilldownMetadata = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
    dictionaryRepresentation = [drilldownMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"drilldownMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"drilldownMetadata"];
    }
  }

  if ([(NSArray *)self->_enabledDomains count])
  {
    enabledDomains = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
    v10 = [enabledDomains copy];
    [dictionary setObject:v10 forKeyedSubscript:@"enabledDomains"];
  }

  if (self->_entityBackgroundColor)
  {
    entityBackgroundColor = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
    dictionaryRepresentation2 = [entityBackgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entityBackgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"entityBackgroundColor"];
    }
  }

  if (self->_entityIdentifier)
  {
    entityIdentifier = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
    v15 = [entityIdentifier copy];
    [dictionary setObject:v15 forKeyedSubscript:@"entityIdentifier"];
  }

  if (self->_entityType)
  {
    entityType = [(_SFPBPerformEntityQueryCommand *)self entityType];
    if (entityType >= 9)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entityType];
    }

    else
    {
      v17 = off_1E7ACE500[entityType];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"entityType"];
  }

  if (self->_filterQueries)
  {
    filterQueries = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
    v19 = [filterQueries copy];
    [dictionary setObject:v19 forKeyedSubscript:@"filterQueries"];
  }

  if (self->_metadata)
  {
    metadata = [(_SFPBPerformEntityQueryCommand *)self metadata];
    dictionaryRepresentation3 = [metadata dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"metadata"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"metadata"];
    }
  }

  if (self->_searchString)
  {
    searchString = [(_SFPBPerformEntityQueryCommand *)self searchString];
    v24 = [searchString copy];
    [dictionary setObject:v24 forKeyedSubscript:@"searchString"];
  }

  if (self->_symbolImage)
  {
    symbolImage = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
    dictionaryRepresentation4 = [symbolImage dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"symbolImage"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"symbolImage"];
    }
  }

  if (self->_tokenImage)
  {
    tokenImage = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
    dictionaryRepresentation5 = [tokenImage dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"tokenImage"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"tokenImage"];
    }
  }

  if (self->_tokenString)
  {
    tokenString = [(_SFPBPerformEntityQueryCommand *)self tokenString];
    v32 = [tokenString copy];
    [dictionary setObject:v32 forKeyedSubscript:@"tokenString"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_searchString hash];
  v4 = [(NSString *)self->_tokenString hash];
  v5 = [(_SFPBSymbolImage *)self->_symbolImage hash];
  v6 = 2654435761 * self->_entityType;
  v7 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_entityIdentifier hash];
  v8 = v7 ^ [(_SFPBColor *)self->_entityBackgroundColor hash]^ v6;
  v9 = [(_SFPBDrillDownMetadata *)self->_metadata hash];
  v10 = v9 ^ [(_SFPBDrillDownMetadata *)self->_drilldownMetadata hash];
  v11 = v10 ^ [(_SFPBImage *)self->_tokenImage hash];
  v12 = v11 ^ [(NSArray *)self->_filterQueries hash];
  v13 = v12 ^ [(NSArray *)self->_enabledDomains hash];
  return v8 ^ v13 ^ [(NSString *)self->_bundleIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self searchString];
  searchString2 = [equalCopy searchString];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  searchString3 = [(_SFPBPerformEntityQueryCommand *)self searchString];
  if (searchString3)
  {
    v8 = searchString3;
    searchString4 = [(_SFPBPerformEntityQueryCommand *)self searchString];
    searchString5 = [equalCopy searchString];
    v11 = [searchString4 isEqual:searchString5];

    if (!v11)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self tokenString];
  searchString2 = [equalCopy tokenString];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  tokenString = [(_SFPBPerformEntityQueryCommand *)self tokenString];
  if (tokenString)
  {
    v13 = tokenString;
    tokenString2 = [(_SFPBPerformEntityQueryCommand *)self tokenString];
    tokenString3 = [equalCopy tokenString];
    v16 = [tokenString2 isEqual:tokenString3];

    if (!v16)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
  searchString2 = [equalCopy symbolImage];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  symbolImage = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
  if (symbolImage)
  {
    v18 = symbolImage;
    symbolImage2 = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
    symbolImage3 = [equalCopy symbolImage];
    v21 = [symbolImage2 isEqual:symbolImage3];

    if (!v21)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  entityType = self->_entityType;
  if (entityType != [equalCopy entityType])
  {
    goto LABEL_58;
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
  searchString2 = [equalCopy entityIdentifier];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  entityIdentifier = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
  if (entityIdentifier)
  {
    v24 = entityIdentifier;
    entityIdentifier2 = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
    entityIdentifier3 = [equalCopy entityIdentifier];
    v27 = [entityIdentifier2 isEqual:entityIdentifier3];

    if (!v27)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
  searchString2 = [equalCopy entityBackgroundColor];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  entityBackgroundColor = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
  if (entityBackgroundColor)
  {
    v29 = entityBackgroundColor;
    entityBackgroundColor2 = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
    entityBackgroundColor3 = [equalCopy entityBackgroundColor];
    v32 = [entityBackgroundColor2 isEqual:entityBackgroundColor3];

    if (!v32)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self metadata];
  searchString2 = [equalCopy metadata];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  metadata = [(_SFPBPerformEntityQueryCommand *)self metadata];
  if (metadata)
  {
    v34 = metadata;
    metadata2 = [(_SFPBPerformEntityQueryCommand *)self metadata];
    metadata3 = [equalCopy metadata];
    v37 = [metadata2 isEqual:metadata3];

    if (!v37)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
  searchString2 = [equalCopy drilldownMetadata];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  drilldownMetadata = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
  if (drilldownMetadata)
  {
    v39 = drilldownMetadata;
    drilldownMetadata2 = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
    drilldownMetadata3 = [equalCopy drilldownMetadata];
    v42 = [drilldownMetadata2 isEqual:drilldownMetadata3];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
  searchString2 = [equalCopy tokenImage];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  tokenImage = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
  if (tokenImage)
  {
    v44 = tokenImage;
    tokenImage2 = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
    tokenImage3 = [equalCopy tokenImage];
    v47 = [tokenImage2 isEqual:tokenImage3];

    if (!v47)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
  searchString2 = [equalCopy filterQueries];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  filterQueries = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
  if (filterQueries)
  {
    v49 = filterQueries;
    filterQueries2 = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
    filterQueries3 = [equalCopy filterQueries];
    v52 = [filterQueries2 isEqual:filterQueries3];

    if (!v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
  searchString2 = [equalCopy enabledDomains];
  if ((searchString != 0) == (searchString2 == 0))
  {
    goto LABEL_57;
  }

  enabledDomains = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
  if (enabledDomains)
  {
    v54 = enabledDomains;
    enabledDomains2 = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
    enabledDomains3 = [equalCopy enabledDomains];
    v57 = [enabledDomains2 isEqual:enabledDomains3];

    if (!v57)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  searchString = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
  searchString2 = [equalCopy bundleIdentifier];
  if ((searchString != 0) == (searchString2 == 0))
  {
LABEL_57:

    goto LABEL_58;
  }

  bundleIdentifier = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
  if (!bundleIdentifier)
  {

LABEL_61:
    v63 = 1;
    goto LABEL_59;
  }

  v59 = bundleIdentifier;
  bundleIdentifier2 = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
  bundleIdentifier3 = [equalCopy bundleIdentifier];
  v62 = [bundleIdentifier2 isEqual:bundleIdentifier3];

  if (v62)
  {
    goto LABEL_61;
  }

LABEL_58:
  v63 = 0;
LABEL_59:

  return v63;
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  searchString = [(_SFPBPerformEntityQueryCommand *)self searchString];
  if (searchString)
  {
    PBDataWriterWriteStringField();
  }

  tokenString = [(_SFPBPerformEntityQueryCommand *)self tokenString];
  if (tokenString)
  {
    PBDataWriterWriteStringField();
  }

  symbolImage = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
  if (symbolImage)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBPerformEntityQueryCommand *)self entityType])
  {
    PBDataWriterWriteInt32Field();
  }

  entityIdentifier = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
  if (entityIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  entityBackgroundColor = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
  if (entityBackgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  metadata = [(_SFPBPerformEntityQueryCommand *)self metadata];
  if (metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  drilldownMetadata = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
  if (drilldownMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  tokenImage = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
  if (tokenImage)
  {
    PBDataWriterWriteSubmessage();
  }

  filterQueries = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = [filterQueries countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(filterQueries);
        }

        v18 = *(*(&v30 + 1) + 8 * v17);
        PBDataWriterWriteStringField();
        ++v17;
      }

      while (v15 != v17);
      v15 = [filterQueries countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v15);
  }

  enabledDomains = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [enabledDomains countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(enabledDomains);
        }

        [*(*(&v26 + 1) + 8 * v23) intValue];
        PBDataWriterWriteInt32Field();
        ++v23;
      }

      while (v21 != v23);
      v21 = [enabledDomains countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v21);
  }

  bundleIdentifier = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (int)enabledDomainsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_enabledDomains objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)setEnabledDomains:(id)domains
{
  v4 = [domains copy];
  enabledDomains = self->_enabledDomains;
  self->_enabledDomains = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addFilterQueries:(id)queries
{
  queriesCopy = queries;
  filterQueries = self->_filterQueries;
  v8 = queriesCopy;
  if (!filterQueries)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_filterQueries;
    self->_filterQueries = array;

    queriesCopy = v8;
    filterQueries = self->_filterQueries;
  }

  [(NSArray *)filterQueries addObject:queriesCopy];
}

- (void)setFilterQueries:(id)queries
{
  v4 = [queries copy];
  filterQueries = self->_filterQueries;
  self->_filterQueries = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEntityIdentifier:(id)identifier
{
  v4 = [identifier copy];
  entityIdentifier = self->_entityIdentifier;
  self->_entityIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTokenString:(id)string
{
  v4 = [string copy];
  tokenString = self->_tokenString;
  self->_tokenString = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSearchString:(id)string
{
  v4 = [string copy];
  searchString = self->_searchString;
  self->_searchString = v4;

  MEMORY[0x1EEE66BB8]();
}

@end