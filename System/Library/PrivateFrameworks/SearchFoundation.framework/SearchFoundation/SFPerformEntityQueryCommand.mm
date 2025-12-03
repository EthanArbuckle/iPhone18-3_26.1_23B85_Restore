@interface SFPerformEntityQueryCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformEntityQueryCommand)initWithCoder:(id)coder;
- (SFPerformEntityQueryCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPerformEntityQueryCommand

- (SFPerformEntityQueryCommand)initWithProtobuf:(id)protobuf
{
  v62 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v59.receiver = self;
  v59.super_class = SFPerformEntityQueryCommand;
  v5 = [(SFPerformEntityQueryCommand *)&v59 init];
  if (v5)
  {
    searchString = [protobufCopy searchString];

    if (searchString)
    {
      searchString2 = [protobufCopy searchString];
      [(SFPerformEntityQueryCommand *)v5 setSearchString:searchString2];
    }

    tokenString = [protobufCopy tokenString];

    if (tokenString)
    {
      tokenString2 = [protobufCopy tokenString];
      [(SFPerformEntityQueryCommand *)v5 setTokenString:tokenString2];
    }

    symbolImage = [protobufCopy symbolImage];

    if (symbolImage)
    {
      v11 = [SFSymbolImage alloc];
      symbolImage2 = [protobufCopy symbolImage];
      v13 = [(SFSymbolImage *)v11 initWithProtobuf:symbolImage2];
      [(SFPerformEntityQueryCommand *)v5 setSymbolImage:v13];
    }

    if ([protobufCopy entityType])
    {
      -[SFPerformEntityQueryCommand setEntityType:](v5, "setEntityType:", [protobufCopy entityType]);
    }

    entityIdentifier = [protobufCopy entityIdentifier];

    if (entityIdentifier)
    {
      entityIdentifier2 = [protobufCopy entityIdentifier];
      [(SFPerformEntityQueryCommand *)v5 setEntityIdentifier:entityIdentifier2];
    }

    entityBackgroundColor = [protobufCopy entityBackgroundColor];

    if (entityBackgroundColor)
    {
      v17 = [SFColor alloc];
      entityBackgroundColor2 = [protobufCopy entityBackgroundColor];
      v19 = [(SFColor *)v17 initWithProtobuf:entityBackgroundColor2];
      [(SFPerformEntityQueryCommand *)v5 setEntityBackgroundColor:v19];
    }

    metadata = [protobufCopy metadata];

    if (metadata)
    {
      v21 = [SFDrillDownMetadata alloc];
      metadata2 = [protobufCopy metadata];
      v23 = [(SFDrillDownMetadata *)v21 initWithProtobuf:metadata2];
      [(SFPerformEntityQueryCommand *)v5 setMetadata:v23];
    }

    drilldownMetadata = [protobufCopy drilldownMetadata];

    if (drilldownMetadata)
    {
      v25 = [SFDrillDownMetadata alloc];
      drilldownMetadata2 = [protobufCopy drilldownMetadata];
      v27 = [(SFDrillDownMetadata *)v25 initWithProtobuf:drilldownMetadata2];
      [(SFPerformEntityQueryCommand *)v5 setDrilldownMetadata:v27];
    }

    tokenImage = [protobufCopy tokenImage];

    if (tokenImage)
    {
      v29 = [SFImage alloc];
      tokenImage2 = [protobufCopy tokenImage];
      v31 = [(SFImage *)v29 initWithProtobuf:tokenImage2];
      [(SFPerformEntityQueryCommand *)v5 setTokenImage:v31];
    }

    filterQueries = [protobufCopy filterQueries];
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
    filterQueries2 = [protobufCopy filterQueries];
    v35 = [filterQueries2 countByEnumeratingWithState:&v55 objects:v61 count:16];
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

        v36 = [filterQueries2 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v36);
    }

    [(SFPerformEntityQueryCommand *)v5 setFilterQueries:v33];
    enabledDomains = [protobufCopy enabledDomains];
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
    enabledDomains2 = [protobufCopy enabledDomains];
    v42 = [enabledDomains2 countByEnumeratingWithState:&v51 objects:v60 count:16];
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

        v43 = [enabledDomains2 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v43);
    }

    [(SFPerformEntityQueryCommand *)v5 setEnabledDomains:v40];
    bundleIdentifier = [protobufCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [protobufCopy bundleIdentifier];
      [(SFPerformEntityQueryCommand *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v28.receiver = self;
  v28.super_class = SFPerformEntityQueryCommand;
  v3 = [(SFCommand *)&v28 hash];
  searchString = [(SFPerformEntityQueryCommand *)self searchString];
  v4 = [searchString hash];
  tokenString = [(SFPerformEntityQueryCommand *)self tokenString];
  v5 = v4 ^ [tokenString hash];
  symbolImage = [(SFPerformEntityQueryCommand *)self symbolImage];
  v6 = v5 ^ [symbolImage hash];
  v7 = v6 ^ [(SFPerformEntityQueryCommand *)self entityType];
  entityIdentifier = [(SFPerformEntityQueryCommand *)self entityIdentifier];
  v9 = v7 ^ [entityIdentifier hash] ^ v3;
  entityBackgroundColor = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
  v11 = [entityBackgroundColor hash];
  metadata = [(SFPerformEntityQueryCommand *)self metadata];
  v13 = v11 ^ [metadata hash];
  drilldownMetadata = [(SFPerformEntityQueryCommand *)self drilldownMetadata];
  v15 = v13 ^ [drilldownMetadata hash];
  tokenImage = [(SFPerformEntityQueryCommand *)self tokenImage];
  v17 = v15 ^ [tokenImage hash];
  filterQueries = [(SFPerformEntityQueryCommand *)self filterQueries];
  v19 = v17 ^ [filterQueries hash];
  enabledDomains = [(SFPerformEntityQueryCommand *)self enabledDomains];
  v21 = v9 ^ v19 ^ [enabledDomains hash];
  bundleIdentifier = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
  v23 = [bundleIdentifier hash];

  return v21 ^ v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
    goto LABEL_79;
  }

  if (![(SFPerformEntityQueryCommand *)equalCopy isMemberOfClass:objc_opt_class()]|| (v119.receiver = self, v119.super_class = SFPerformEntityQueryCommand, ![(SFCommand *)&v119 isEqual:equalCopy]))
  {
    v19 = 0;
    goto LABEL_79;
  }

  v5 = equalCopy;
  searchString = [(SFPerformEntityQueryCommand *)self searchString];
  searchString2 = [(SFPerformEntityQueryCommand *)v5 searchString];
  v111 = searchString2 == 0;
  v112 = searchString != 0;
  if (v112 == v111)
  {
    memset(v118, 0, sizeof(v118));
    v10 = 0;
    memset(v110, 0, sizeof(v110));
    v116 = 0;
    v11 = 0;
    v115 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v117, 0, sizeof(v117));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  searchString3 = [(SFPerformEntityQueryCommand *)self searchString];
  v8 = searchString3 != 0;
  v109 = searchString3;
  if (searchString3)
  {
    searchString4 = [(SFPerformEntityQueryCommand *)self searchString];
    searchString5 = [(SFPerformEntityQueryCommand *)v5 searchString];
    v105 = searchString4;
    if (![searchString4 isEqual:?])
    {
      memset(v118, 0, sizeof(v118));
      *v110 = 0uLL;
      v10 = 0;
      v116 = 0;
      v11 = 0;
      v115 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      memset(v117, 0, sizeof(v117));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&v110[16] = 1;
      goto LABEL_16;
    }
  }

  tokenString = [(SFPerformEntityQueryCommand *)self tokenString];
  tokenString2 = [(SFPerformEntityQueryCommand *)v5 tokenString];
  *&v110[16] = v8;
  if ((tokenString != 0) == (tokenString2 == 0))
  {
    *&v118[0] = 0;
    *&v110[8] = 0;
    *v110 = 0;
    v10 = 0;
    v116 = 0;
    v11 = 0;
    *(&v118[1] + 1) = 0;
    v115 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    memset(v117, 0, sizeof(v117));
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(v118 + 8) = 1uLL;
    goto LABEL_16;
  }

  tokenString3 = [(SFPerformEntityQueryCommand *)self tokenString];
  v21 = tokenString3 != 0;
  v103 = tokenString3;
  if (tokenString3)
  {
    tokenString4 = [(SFPerformEntityQueryCommand *)self tokenString];
    tokenString5 = [(SFPerformEntityQueryCommand *)v5 tokenString];
    v100 = tokenString4;
    if (![tokenString4 isEqual:?])
    {
      *&v110[4] = 0;
      v10 = 0;
      *v110 = 0;
      v116 = 0;
      v11 = 0;
      v118[1] = 0uLL;
      v115 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      memset(v117, 0, sizeof(v117));
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *(&v118[0] + 1) = 1;
      *&v118[0] = 0x100000000;
      *&v110[12] = 1;
      goto LABEL_16;
    }

    *&v110[12] = v21;
  }

  else
  {
    *&v110[12] = 0;
  }

  symbolImage = [(SFPerformEntityQueryCommand *)self symbolImage];
  symbolImage2 = [(SFPerformEntityQueryCommand *)v5 symbolImage];
  if ((symbolImage != 0) == (symbolImage2 == 0))
  {
    *&v117[8] = 0;
    *&v110[4] = 0;
    v10 = 0;
    *v117 = 0;
    *v110 = 0;
    v116 = 0;
    v11 = 0;
    v118[1] = 0uLL;
    v115 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(&v118[0] + 1) = 1;
    *&v118[0] = 0x100000000;
    *&v117[16] = 1;
    goto LABEL_16;
  }

  symbolImage3 = [(SFPerformEntityQueryCommand *)self symbolImage];
  v36 = symbolImage3 != 0;
  v98 = symbolImage3;
  if (symbolImage3)
  {
    symbolImage4 = [(SFPerformEntityQueryCommand *)self symbolImage];
    symbolImage5 = [(SFPerformEntityQueryCommand *)v5 symbolImage];
    v97 = symbolImage4;
    if (![symbolImage4 isEqual:?])
    {
      *&v117[4] = 0;
      *v110 = 0;
      v10 = 0;
      v116 = 0;
      v11 = 0;
      v118[1] = 0uLL;
      v115 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *v117 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *(&v118[0] + 1) = 1;
      *&v118[0] = 0x100000000;
      *&v117[12] = 0x100000001;
      *&v110[8] = 1;
      goto LABEL_16;
    }
  }

  *&v110[8] = v36;
  entityType = [(SFPerformEntityQueryCommand *)self entityType];
  if (entityType != [(SFPerformEntityQueryCommand *)v5 entityType])
  {
    *&v117[4] = 0;
    *v110 = 0;
    v10 = 0;
    v116 = 0;
    v11 = 0;
    v118[1] = 0uLL;
    v115 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    *v117 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(&v118[0] + 1) = 1;
    *&v118[0] = 0x100000000;
    *&v117[12] = 0x100000001;
    goto LABEL_16;
  }

  entityIdentifier = [(SFPerformEntityQueryCommand *)self entityIdentifier];
  entityIdentifier2 = [(SFPerformEntityQueryCommand *)v5 entityIdentifier];
  if ((entityIdentifier != 0) == (entityIdentifier2 == 0))
  {
    *v110 = 0;
    v10 = 0;
    *v117 = 0;
    v116 = 0;
    v11 = 0;
    v118[1] = 0uLL;
    v115 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(&v118[0] + 1) = 1;
    *&v118[0] = 0x100000000;
    *&v117[12] = 0x100000001;
    *&v117[8] = 1;
    goto LABEL_16;
  }

  entityIdentifier3 = [(SFPerformEntityQueryCommand *)self entityIdentifier];
  v40 = entityIdentifier3 != 0;
  v93 = entityIdentifier3;
  if (entityIdentifier3)
  {
    entityIdentifier4 = [(SFPerformEntityQueryCommand *)self entityIdentifier];
    entityIdentifier5 = [(SFPerformEntityQueryCommand *)v5 entityIdentifier];
    v90 = entityIdentifier4;
    if (![entityIdentifier4 isEqual:?])
    {
      v10 = 0;
      *v117 = 0;
      *v110 = 0x100000000;
      v116 = 0;
      v11 = 0;
      v118[1] = 0uLL;
      v115 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *(&v118[0] + 1) = 1;
      *&v118[0] = 0x100000001;
      *&v117[12] = 0x100000001;
      *&v117[8] = 1;
      goto LABEL_16;
    }

    *&v110[4] = v40;
  }

  else
  {
    *&v110[4] = 0;
  }

  entityBackgroundColor = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
  entityBackgroundColor2 = [(SFPerformEntityQueryCommand *)v5 entityBackgroundColor];
  if ((entityBackgroundColor != 0) == (entityBackgroundColor2 == 0))
  {
    *v117 = 0;
    *v110 = 0;
    v116 = 0;
    v11 = 0;
    v118[1] = 0uLL;
    v115 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    *(&v118[0] + 1) = 1;
    *&v118[0] = 0x100000001;
    *&v117[12] = 0x100000001;
    *&v117[8] = 1;
    v10 = 1;
    goto LABEL_16;
  }

  entityBackgroundColor3 = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
  v43 = entityBackgroundColor3 != 0;
  v88 = entityBackgroundColor3;
  if (entityBackgroundColor3)
  {
    entityBackgroundColor4 = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
    entityBackgroundColor5 = [(SFPerformEntityQueryCommand *)v5 entityBackgroundColor];
    v85 = entityBackgroundColor4;
    if (![entityBackgroundColor4 isEqual:?])
    {
      v116 = 0;
      v11 = 0;
      v115 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      DWORD2(v118[0]) = 1;
      memset(v118 + 12, 0, 20);
      *&v118[0] = 0x100000001;
      *&v117[12] = 0x100000001;
      *&v117[8] = 1;
      v10 = 1;
      *v117 = 0x100000000;
      *v110 = 1;
      goto LABEL_16;
    }

    *v110 = v43;
  }

  else
  {
    *v110 = 0;
  }

  metadata = [(SFPerformEntityQueryCommand *)self metadata];
  metadata2 = [(SFPerformEntityQueryCommand *)v5 metadata];
  if ((metadata != 0) == (metadata2 == 0))
  {
    v11 = 0;
    v115 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    DWORD2(v118[0]) = 1;
    memset(v118 + 12, 0, 20);
    *&v118[0] = 0x100000001;
    *&v117[12] = 0x100000001;
    *&v117[8] = 1;
    v10 = 1;
    *v117 = 0x100000000;
    v116 = 0x100000000;
  }

  else
  {
    metadata3 = [(SFPerformEntityQueryCommand *)self metadata];
    HIDWORD(v118[1]) = metadata3 != 0;
    v83 = metadata3;
    if (!metadata3 || (-[SFPerformEntityQueryCommand metadata](self, "metadata"), v46 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand metadata](v5, "metadata"), v79 = objc_claimAutoreleasedReturnValue(), v80 = v46, [v46 isEqual:?]))
    {
      drilldownMetadata = [(SFPerformEntityQueryCommand *)self drilldownMetadata];
      drilldownMetadata2 = [(SFPerformEntityQueryCommand *)v5 drilldownMetadata];
      if ((drilldownMetadata != 0) == (drilldownMetadata2 == 0))
      {
        v12 = 0;
        *(&v118[1] + 4) = 0;
        v115 = 0x100000000;
        v13 = 0;
        v14 = 0;
        *(v118 + 12) = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        DWORD2(v118[0]) = 1;
        *&v117[12] = 0x100000001;
        *&v117[8] = 1;
        *&v118[0] = 0x100000001;
        v10 = 1;
        *v117 = 0x100000000;
        v116 = 0x100000000;
        v11 = 1;
      }

      else
      {
        drilldownMetadata3 = [(SFPerformEntityQueryCommand *)self drilldownMetadata];
        DWORD2(v118[1]) = drilldownMetadata3 != 0;
        v78 = drilldownMetadata3;
        if (!drilldownMetadata3 || (-[SFPerformEntityQueryCommand drilldownMetadata](self, "drilldownMetadata"), v48 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand drilldownMetadata](v5, "drilldownMetadata"), v74 = objc_claimAutoreleasedReturnValue(), v75 = v48, [v48 isEqual:?]))
        {
          tokenImage = [(SFPerformEntityQueryCommand *)self tokenImage];
          tokenImage2 = [(SFPerformEntityQueryCommand *)v5 tokenImage];
          if ((tokenImage != 0) == (tokenImage2 == 0))
          {
            v13 = 0;
            *&v118[1] = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(&v118[0] + 1) = 1;
            *&v118[0] = 0x100000001;
            *&v117[12] = 0x100000001;
            *&v117[8] = 1;
            v10 = 1;
            *v117 = 0x100000000;
            v116 = 0x100000000;
            v11 = 1;
            v12 = 1;
            v115 = 0x100000001;
          }

          else
          {
            tokenImage3 = [(SFPerformEntityQueryCommand *)self tokenImage];
            DWORD1(v118[1]) = tokenImage3 != 0;
            v73 = tokenImage3;
            if (!tokenImage3 || (-[SFPerformEntityQueryCommand tokenImage](self, "tokenImage"), v50 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand tokenImage](v5, "tokenImage"), v69 = objc_claimAutoreleasedReturnValue(), v70 = v50, [v50 isEqual:?]))
            {
              filterQueries = [(SFPerformEntityQueryCommand *)self filterQueries];
              filterQueries2 = [(SFPerformEntityQueryCommand *)v5 filterQueries];
              if ((filterQueries != 0) == (filterQueries2 == 0))
              {
                v14 = 0;
                *(v118 + 12) = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                DWORD2(v118[0]) = 1;
                *&v117[12] = 0x100000001;
                *&v117[8] = 1;
                *&v118[0] = 0x100000001;
                v10 = 1;
                *v117 = 0x100000000;
                v11 = 1;
                v115 = 0x100000001;
                v12 = 1;
                v13 = 1;
                v116 = 0x100000001;
              }

              else
              {
                filterQueries3 = [(SFPerformEntityQueryCommand *)self filterQueries];
                LODWORD(v118[1]) = filterQueries3 != 0;
                v68 = filterQueries3;
                if (!filterQueries3 || (-[SFPerformEntityQueryCommand filterQueries](self, "filterQueries"), v52 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand filterQueries](v5, "filterQueries"), v64 = objc_claimAutoreleasedReturnValue(), v65 = v52, [v52 isEqual:?]))
                {
                  enabledDomains = [(SFPerformEntityQueryCommand *)self enabledDomains];
                  enabledDomains2 = [(SFPerformEntityQueryCommand *)v5 enabledDomains];
                  if ((enabledDomains != 0) == (enabledDomains2 == 0))
                  {
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    *(&v118[0] + 1) = 1;
                    *&v118[0] = 0x100000001;
                    *&v117[12] = 0x100000001;
                    *&v117[8] = 1;
                    v10 = 1;
                    v116 = 0x100000001;
                    v11 = 1;
                    v115 = 0x100000001;
                    v12 = 1;
                    v13 = 1;
                    v14 = 1;
                    *v117 = 0x100000001;
                  }

                  else
                  {
                    enabledDomains3 = [(SFPerformEntityQueryCommand *)self enabledDomains];
                    HIDWORD(v118[0]) = enabledDomains3 != 0;
                    v63 = enabledDomains3;
                    if (!enabledDomains3 || (-[SFPerformEntityQueryCommand enabledDomains](self, "enabledDomains"), v54 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand enabledDomains](v5, "enabledDomains"), v59 = objc_claimAutoreleasedReturnValue(), v60 = v54, [v54 isEqual:?]))
                    {
                      bundleIdentifier = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
                      bundleIdentifier2 = [(SFPerformEntityQueryCommand *)v5 bundleIdentifier];
                      if ((bundleIdentifier != 0) == (bundleIdentifier2 == 0))
                      {
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        DWORD2(v118[0]) = 1;
                        *&v117[12] = 0x100000001;
                        *&v117[8] = 1;
                        *&v118[0] = 0x100000001;
                        v10 = 1;
                        v116 = 0x100000001;
                        v11 = 1;
                        v115 = 0x100000001;
                        v12 = 1;
                        v13 = 1;
                        v14 = 1;
                        *v117 = 0x100000001;
                        v15 = 1;
                        v16 = 1;
                      }

                      else
                      {
                        bundleIdentifier3 = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
                        if (bundleIdentifier3)
                        {
                          bundleIdentifier4 = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
                          bundleIdentifier5 = [(SFPerformEntityQueryCommand *)v5 bundleIdentifier];
                          v57 = bundleIdentifier4;
                          v19 = [bundleIdentifier4 isEqual:bundleIdentifier5];
                          v6 = bundleIdentifier5;
                          v18 = 1;
                          DWORD2(v118[0]) = 1;
                          *&v117[12] = 0x100000001;
                          *&v117[8] = 1;
                          *&v118[0] = 0x100000001;
                          v10 = 1;
                          v116 = 0x100000001;
                          v11 = 1;
                          v115 = 0x100000001;
                          v12 = 1;
                          v13 = 1;
                          v14 = 1;
                          *v117 = 0x100000001;
                          v15 = 1;
                          v16 = 1;
                          v17 = 1;
                        }

                        else
                        {
                          bundleIdentifier3 = 0;
                          v18 = 0;
                          DWORD2(v118[0]) = 1;
                          *&v117[12] = 0x100000001;
                          *&v117[8] = 1;
                          *&v118[0] = 0x100000001;
                          v10 = 1;
                          v116 = 0x100000001;
                          v11 = 1;
                          v115 = 0x100000001;
                          v12 = 1;
                          v13 = 1;
                          v14 = 1;
                          *v117 = 0x100000001;
                          v15 = 1;
                          v16 = 1;
                          v17 = 1;
                          v19 = 1;
                        }
                      }
                    }

                    else
                    {
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      *(&v118[0] + 1) = 0x100000001;
                      *&v117[12] = 0x100000001;
                      *&v117[8] = 1;
                      *&v118[0] = 0x100000001;
                      v10 = 1;
                      v116 = 0x100000001;
                      v11 = 1;
                      v115 = 0x100000001;
                      v12 = 1;
                      v13 = 1;
                      v14 = 1;
                      *v117 = 0x100000001;
                      v15 = 1;
                    }
                  }
                }

                else
                {
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  *(&v118[0] + 1) = 1;
                  *&v118[0] = 0x100000001;
                  *&v117[12] = 0x100000001;
                  *&v117[8] = 1;
                  v10 = 1;
                  *v117 = 0x100000000;
                  v116 = 0x100000001;
                  v11 = 1;
                  v115 = 0x100000001;
                  v12 = 1;
                  v13 = 1;
                  v14 = 1;
                  LODWORD(v118[1]) = 1;
                }
              }
            }

            else
            {
              v14 = 0;
              *(v118 + 12) = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              DWORD2(v118[0]) = 1;
              *&v117[12] = 0x100000001;
              *&v117[8] = 1;
              *&v118[0] = 0x100000001;
              v10 = 1;
              *v117 = 0x100000000;
              v116 = 0x100000000;
              v11 = 1;
              v115 = 0x100000001;
              v12 = 1;
              v13 = 1;
              DWORD1(v118[1]) = 1;
            }
          }
        }

        else
        {
          v115 = 0x100000000;
          v13 = 0;
          *&v118[1] = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(&v118[0] + 1) = 1;
          *&v118[0] = 0x100000001;
          *&v117[12] = 0x100000001;
          *&v117[8] = 1;
          v10 = 1;
          *v117 = 0x100000000;
          v116 = 0x100000000;
          v11 = 1;
          v12 = 1;
          DWORD2(v118[1]) = 1;
        }
      }
    }

    else
    {
      v115 = 0;
      v12 = 0;
      *(&v118[1] + 4) = 0;
      v13 = 0;
      v14 = 0;
      *(v118 + 12) = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *(v118 + 4) = 0x100000001;
      *&v117[12] = 0x100000001;
      *&v117[8] = 1;
      LODWORD(v118[0]) = 1;
      v10 = 1;
      *v117 = 0x100000000;
      v116 = 0x100000000;
      v11 = 1;
      HIDWORD(v118[1]) = 1;
    }
  }

LABEL_16:
  if (v18)
  {
    v108 = equalCopy;
    v23 = v19;
    v24 = v13;
    v25 = v14;
    v26 = v5;
    v27 = v12;
    v28 = v10;
    v29 = v16;
    v30 = v15;
    v31 = v11;
    v32 = v17;

    v33 = v32;
    v11 = v31;
    v15 = v30;
    v16 = v29;
    v10 = v28;
    v12 = v27;
    v5 = v26;
    v14 = v25;
    v13 = v24;
    v19 = v23;
    equalCopy = v108;
    if (!v33)
    {
      goto LABEL_18;
    }

LABEL_81:

    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17)
  {
    goto LABEL_81;
  }

LABEL_18:
  if (v16)
  {
LABEL_19:
  }

LABEL_20:
  if (HIDWORD(v118[0]))
  {
  }

  if (v15)
  {
  }

  if (*v117)
  {
  }

  if (LODWORD(v118[1]))
  {
  }

  if (v14)
  {
  }

  if (v116)
  {
  }

  if (DWORD1(v118[1]))
  {
  }

  if (v13)
  {
  }

  if (v115)
  {
  }

  if (DWORD2(v118[1]))
  {
  }

  if (v12)
  {
  }

  if (HIDWORD(v115))
  {
  }

  if (HIDWORD(v118[1]))
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v116))
  {
  }

  if (*v110)
  {
  }

  if (*&v117[4])
  {
  }

  if (v10)
  {
  }

  if (*&v110[4])
  {
  }

  if (LODWORD(v118[0]))
  {
  }

  if (*&v117[8])
  {
  }

  if (*&v110[8])
  {
  }

  if (*&v117[12])
  {
  }

  if (*&v117[16])
  {
  }

  if (*&v110[12])
  {
  }

  if (DWORD1(v118[0]))
  {
  }

  if (DWORD2(v118[0]))
  {
  }

  if (*&v110[16])
  {
  }

  if (v112 != v111)
  {
  }

LABEL_79:
  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28.receiver = self;
  v28.super_class = SFPerformEntityQueryCommand;
  v4 = [(SFCommand *)&v28 copyWithZone:zone];
  searchString = [(SFPerformEntityQueryCommand *)self searchString];
  v6 = [searchString copy];
  [v4 setSearchString:v6];

  tokenString = [(SFPerformEntityQueryCommand *)self tokenString];
  v8 = [tokenString copy];
  [v4 setTokenString:v8];

  symbolImage = [(SFPerformEntityQueryCommand *)self symbolImage];
  v10 = [symbolImage copy];
  [v4 setSymbolImage:v10];

  [v4 setEntityType:{-[SFPerformEntityQueryCommand entityType](self, "entityType")}];
  entityIdentifier = [(SFPerformEntityQueryCommand *)self entityIdentifier];
  v12 = [entityIdentifier copy];
  [v4 setEntityIdentifier:v12];

  entityBackgroundColor = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
  v14 = [entityBackgroundColor copy];
  [v4 setEntityBackgroundColor:v14];

  metadata = [(SFPerformEntityQueryCommand *)self metadata];
  v16 = [metadata copy];
  [v4 setMetadata:v16];

  drilldownMetadata = [(SFPerformEntityQueryCommand *)self drilldownMetadata];
  v18 = [drilldownMetadata copy];
  [v4 setDrilldownMetadata:v18];

  tokenImage = [(SFPerformEntityQueryCommand *)self tokenImage];
  v20 = [tokenImage copy];
  [v4 setTokenImage:v20];

  filterQueries = [(SFPerformEntityQueryCommand *)self filterQueries];
  v22 = [filterQueries copy];
  [v4 setFilterQueries:v22];

  enabledDomains = [(SFPerformEntityQueryCommand *)self enabledDomains];
  v24 = [enabledDomains copy];
  [v4 setEnabledDomains:v24];

  bundleIdentifier = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
  v26 = [bundleIdentifier copy];
  [v4 setBundleIdentifier:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformEntityQueryCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBPerformEntityQueryCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformEntityQueryCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPerformEntityQueryCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFPerformEntityQueryCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFPerformEntityQueryCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFPerformEntityQueryCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    searchString = [(SFCommand *)v8 searchString];
    [(SFPerformEntityQueryCommand *)v5 setSearchString:searchString];

    tokenString = [(SFCommand *)v8 tokenString];
    [(SFPerformEntityQueryCommand *)v5 setTokenString:tokenString];

    symbolImage = [(SFCommand *)v8 symbolImage];
    [(SFPerformEntityQueryCommand *)v5 setSymbolImage:symbolImage];

    [(SFPerformEntityQueryCommand *)v5 setEntityType:[(SFCommand *)v8 entityType]];
    entityIdentifier = [(SFCommand *)v8 entityIdentifier];
    [(SFPerformEntityQueryCommand *)v5 setEntityIdentifier:entityIdentifier];

    entityBackgroundColor = [(SFCommand *)v8 entityBackgroundColor];
    [(SFPerformEntityQueryCommand *)v5 setEntityBackgroundColor:entityBackgroundColor];

    metadata = [(SFCommand *)v8 metadata];
    [(SFPerformEntityQueryCommand *)v5 setMetadata:metadata];

    drilldownMetadata = [(SFCommand *)v8 drilldownMetadata];
    [(SFPerformEntityQueryCommand *)v5 setDrilldownMetadata:drilldownMetadata];

    tokenImage = [(SFCommand *)v8 tokenImage];
    [(SFPerformEntityQueryCommand *)v5 setTokenImage:tokenImage];

    filterQueries = [(SFCommand *)v8 filterQueries];
    [(SFPerformEntityQueryCommand *)v5 setFilterQueries:filterQueries];

    enabledDomains = [(SFCommand *)v8 enabledDomains];
    [(SFPerformEntityQueryCommand *)v5 setEnabledDomains:enabledDomains];

    bundleIdentifier = [(SFCommand *)v8 bundleIdentifier];
    [(SFPerformEntityQueryCommand *)v5 setBundleIdentifier:bundleIdentifier];

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

@end