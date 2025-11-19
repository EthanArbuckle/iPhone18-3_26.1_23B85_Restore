@interface _SFPBPerformEntityQueryCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPerformEntityQueryCommand)initWithDictionary:(id)a3;
- (_SFPBPerformEntityQueryCommand)initWithFacade:(id)a3;
- (_SFPBPerformEntityQueryCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (int)enabledDomainsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addFilterQueries:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setEnabledDomains:(id)a3;
- (void)setEntityIdentifier:(id)a3;
- (void)setFilterQueries:(id)a3;
- (void)setSearchString:(id)a3;
- (void)setTokenString:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPerformEntityQueryCommand

- (_SFPBPerformEntityQueryCommand)initWithFacade:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBPerformEntityQueryCommand *)self init];
  if (v5)
  {
    v6 = [v4 searchString];

    if (v6)
    {
      v7 = [v4 searchString];
      [(_SFPBPerformEntityQueryCommand *)v5 setSearchString:v7];
    }

    v8 = [v4 tokenString];

    if (v8)
    {
      v9 = [v4 tokenString];
      [(_SFPBPerformEntityQueryCommand *)v5 setTokenString:v9];
    }

    v10 = [v4 symbolImage];

    if (v10)
    {
      v11 = [_SFPBSymbolImage alloc];
      v12 = [v4 symbolImage];
      v13 = [(_SFPBSymbolImage *)v11 initWithFacade:v12];
      [(_SFPBPerformEntityQueryCommand *)v5 setSymbolImage:v13];
    }

    if ([v4 hasEntityType])
    {
      -[_SFPBPerformEntityQueryCommand setEntityType:](v5, "setEntityType:", [v4 entityType]);
    }

    v14 = [v4 entityIdentifier];

    if (v14)
    {
      v15 = [v4 entityIdentifier];
      [(_SFPBPerformEntityQueryCommand *)v5 setEntityIdentifier:v15];
    }

    v16 = [v4 entityBackgroundColor];

    if (v16)
    {
      v17 = [_SFPBColor alloc];
      v18 = [v4 entityBackgroundColor];
      v19 = [(_SFPBColor *)v17 initWithFacade:v18];
      [(_SFPBPerformEntityQueryCommand *)v5 setEntityBackgroundColor:v19];
    }

    v20 = [v4 metadata];

    if (v20)
    {
      v21 = [_SFPBDrillDownMetadata alloc];
      v22 = [v4 metadata];
      v23 = [(_SFPBDrillDownMetadata *)v21 initWithFacade:v22];
      [(_SFPBPerformEntityQueryCommand *)v5 setMetadata:v23];
    }

    v24 = [v4 drilldownMetadata];

    if (v24)
    {
      v25 = [_SFPBDrillDownMetadata alloc];
      v26 = [v4 drilldownMetadata];
      v27 = [(_SFPBDrillDownMetadata *)v25 initWithFacade:v26];
      [(_SFPBPerformEntityQueryCommand *)v5 setDrilldownMetadata:v27];
    }

    v28 = [v4 tokenImage];

    if (v28)
    {
      v29 = [_SFPBImage alloc];
      v30 = [v4 tokenImage];
      v31 = [(_SFPBImage *)v29 initWithFacade:v30];
      [(_SFPBPerformEntityQueryCommand *)v5 setTokenImage:v31];
    }

    v32 = [v4 filterQueries];
    if (v32)
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
    v34 = [v4 filterQueries];
    v35 = [v34 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
            objc_enumerationMutation(v34);
          }

          if (*(*(&v55 + 1) + 8 * i))
          {
            [v33 addObject:?];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v36);
    }

    [(_SFPBPerformEntityQueryCommand *)v5 setFilterQueries:v33];
    v39 = [v4 enabledDomains];
    if (v39)
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
    v41 = [v4 enabledDomains];
    v42 = [v41 countByEnumeratingWithState:&v51 objects:v59 count:16];
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
            objc_enumerationMutation(v41);
          }

          if (*(*(&v51 + 1) + 8 * j))
          {
            [v40 addObject:?];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v43);
    }

    [(_SFPBPerformEntityQueryCommand *)v5 setEnabledDomains:v40];
    v46 = [v4 bundleIdentifier];

    if (v46)
    {
      v47 = [v4 bundleIdentifier];
      [(_SFPBPerformEntityQueryCommand *)v5 setBundleIdentifier:v47];
    }

    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBPerformEntityQueryCommand)initWithDictionary:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v62.receiver = self;
  v62.super_class = _SFPBPerformEntityQueryCommand;
  v5 = [(_SFPBPerformEntityQueryCommand *)&v62 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"searchString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBPerformEntityQueryCommand *)v5 setSearchString:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"tokenString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBPerformEntityQueryCommand *)v5 setTokenString:v9];
    }

    v48 = v8;
    v10 = [v4 objectForKeyedSubscript:@"symbolImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBSymbolImage alloc] initWithDictionary:v10];
      [(_SFPBPerformEntityQueryCommand *)v5 setSymbolImage:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"entityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformEntityQueryCommand setEntityType:](v5, "setEntityType:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"entityIdentifier"];
    objc_opt_class();
    v53 = v13;
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(_SFPBPerformEntityQueryCommand *)v5 setEntityIdentifier:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"entityBackgroundColor"];
    objc_opt_class();
    v52 = v15;
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBColor alloc] initWithDictionary:v15];
      [(_SFPBPerformEntityQueryCommand *)v5 setEntityBackgroundColor:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    v51 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBDrillDownMetadata alloc] initWithDictionary:v17];
      [(_SFPBPerformEntityQueryCommand *)v5 setMetadata:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"drilldownMetadata"];
    objc_opt_class();
    v50 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBDrillDownMetadata alloc] initWithDictionary:v19];
      [(_SFPBPerformEntityQueryCommand *)v5 setDrilldownMetadata:v20];
    }

    v46 = v12;
    v47 = v10;
    v21 = [v4 objectForKeyedSubscript:@"tokenImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[_SFPBImage alloc] initWithDictionary:v21];
      [(_SFPBPerformEntityQueryCommand *)v5 setTokenImage:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"filterQueries"];
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

    v32 = [v4 objectForKeyedSubscript:@"enabledDomains"];
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

    v39 = [v4 objectForKeyedSubscript:{@"bundleIdentifier", v44}];
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

- (_SFPBPerformEntityQueryCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPerformEntityQueryCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPerformEntityQueryCommand *)self dictionaryRepresentation];
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
  if (self->_bundleIdentifier)
  {
    v4 = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_drilldownMetadata)
  {
    v6 = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"drilldownMetadata"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"drilldownMetadata"];
    }
  }

  if ([(NSArray *)self->_enabledDomains count])
  {
    v9 = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"enabledDomains"];
  }

  if (self->_entityBackgroundColor)
  {
    v11 = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"entityBackgroundColor"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"entityBackgroundColor"];
    }
  }

  if (self->_entityIdentifier)
  {
    v14 = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"entityIdentifier"];
  }

  if (self->_entityType)
  {
    v16 = [(_SFPBPerformEntityQueryCommand *)self entityType];
    if (v16 >= 9)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    else
    {
      v17 = off_1E7ACE500[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"entityType"];
  }

  if (self->_filterQueries)
  {
    v18 = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"filterQueries"];
  }

  if (self->_metadata)
  {
    v20 = [(_SFPBPerformEntityQueryCommand *)self metadata];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"metadata"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"metadata"];
    }
  }

  if (self->_searchString)
  {
    v23 = [(_SFPBPerformEntityQueryCommand *)self searchString];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"searchString"];
  }

  if (self->_symbolImage)
  {
    v25 = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"symbolImage"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"symbolImage"];
    }
  }

  if (self->_tokenImage)
  {
    v28 = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"tokenImage"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"tokenImage"];
    }
  }

  if (self->_tokenString)
  {
    v31 = [(_SFPBPerformEntityQueryCommand *)self tokenString];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"tokenString"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self searchString];
  v6 = [v4 searchString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v7 = [(_SFPBPerformEntityQueryCommand *)self searchString];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPerformEntityQueryCommand *)self searchString];
    v10 = [v4 searchString];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self tokenString];
  v6 = [v4 tokenString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v12 = [(_SFPBPerformEntityQueryCommand *)self tokenString];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBPerformEntityQueryCommand *)self tokenString];
    v15 = [v4 tokenString];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
  v6 = [v4 symbolImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v17 = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
    v20 = [v4 symbolImage];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  entityType = self->_entityType;
  if (entityType != [v4 entityType])
  {
    goto LABEL_58;
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
  v6 = [v4 entityIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v23 = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
    v26 = [v4 entityIdentifier];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
  v6 = [v4 entityBackgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v28 = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
    v31 = [v4 entityBackgroundColor];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self metadata];
  v6 = [v4 metadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v33 = [(_SFPBPerformEntityQueryCommand *)self metadata];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBPerformEntityQueryCommand *)self metadata];
    v36 = [v4 metadata];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
  v6 = [v4 drilldownMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v38 = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
  if (v38)
  {
    v39 = v38;
    v40 = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
    v41 = [v4 drilldownMetadata];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
  v6 = [v4 tokenImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v43 = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
  if (v43)
  {
    v44 = v43;
    v45 = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
    v46 = [v4 tokenImage];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
  v6 = [v4 filterQueries];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v48 = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
  if (v48)
  {
    v49 = v48;
    v50 = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
    v51 = [v4 filterQueries];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
  v6 = [v4 enabledDomains];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v53 = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
  if (v53)
  {
    v54 = v53;
    v55 = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
    v56 = [v4 enabledDomains];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_57:

    goto LABEL_58;
  }

  v58 = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
  if (!v58)
  {

LABEL_61:
    v63 = 1;
    goto LABEL_59;
  }

  v59 = v58;
  v60 = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
  v61 = [v4 bundleIdentifier];
  v62 = [v60 isEqual:v61];

  if (v62)
  {
    goto LABEL_61;
  }

LABEL_58:
  v63 = 0;
LABEL_59:

  return v63;
}

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBPerformEntityQueryCommand *)self searchString];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(_SFPBPerformEntityQueryCommand *)self tokenString];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBPerformEntityQueryCommand *)self symbolImage];
  if (v7)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBPerformEntityQueryCommand *)self entityType])
  {
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_SFPBPerformEntityQueryCommand *)self entityIdentifier];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  v9 = [(_SFPBPerformEntityQueryCommand *)self entityBackgroundColor];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBPerformEntityQueryCommand *)self metadata];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBPerformEntityQueryCommand *)self drilldownMetadata];
  if (v11)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_SFPBPerformEntityQueryCommand *)self tokenImage];
  if (v12)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_SFPBPerformEntityQueryCommand *)self filterQueries];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * v17);
        PBDataWriterWriteStringField();
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v15);
  }

  v19 = [(_SFPBPerformEntityQueryCommand *)self enabledDomains];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v19);
        }

        [*(*(&v26 + 1) + 8 * v23) intValue];
        PBDataWriterWriteInt32Field();
        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v21);
  }

  v24 = [(_SFPBPerformEntityQueryCommand *)self bundleIdentifier];
  if (v24)
  {
    PBDataWriterWriteStringField();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (int)enabledDomainsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_enabledDomains objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)setEnabledDomains:(id)a3
{
  v4 = [a3 copy];
  enabledDomains = self->_enabledDomains;
  self->_enabledDomains = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addFilterQueries:(id)a3
{
  v4 = a3;
  filterQueries = self->_filterQueries;
  v8 = v4;
  if (!filterQueries)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_filterQueries;
    self->_filterQueries = v6;

    v4 = v8;
    filterQueries = self->_filterQueries;
  }

  [(NSArray *)filterQueries addObject:v4];
}

- (void)setFilterQueries:(id)a3
{
  v4 = [a3 copy];
  filterQueries = self->_filterQueries;
  self->_filterQueries = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setEntityIdentifier:(id)a3
{
  v4 = [a3 copy];
  entityIdentifier = self->_entityIdentifier;
  self->_entityIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTokenString:(id)a3
{
  v4 = [a3 copy];
  tokenString = self->_tokenString;
  self->_tokenString = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSearchString:(id)a3
{
  v4 = [a3 copy];
  searchString = self->_searchString;
  self->_searchString = v4;

  MEMORY[0x1EEE66BB8]();
}

@end