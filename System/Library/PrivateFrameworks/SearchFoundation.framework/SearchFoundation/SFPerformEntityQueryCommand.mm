@interface SFPerformEntityQueryCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPerformEntityQueryCommand)initWithCoder:(id)a3;
- (SFPerformEntityQueryCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPerformEntityQueryCommand

- (SFPerformEntityQueryCommand)initWithProtobuf:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v59.receiver = self;
  v59.super_class = SFPerformEntityQueryCommand;
  v5 = [(SFPerformEntityQueryCommand *)&v59 init];
  if (v5)
  {
    v6 = [v4 searchString];

    if (v6)
    {
      v7 = [v4 searchString];
      [(SFPerformEntityQueryCommand *)v5 setSearchString:v7];
    }

    v8 = [v4 tokenString];

    if (v8)
    {
      v9 = [v4 tokenString];
      [(SFPerformEntityQueryCommand *)v5 setTokenString:v9];
    }

    v10 = [v4 symbolImage];

    if (v10)
    {
      v11 = [SFSymbolImage alloc];
      v12 = [v4 symbolImage];
      v13 = [(SFSymbolImage *)v11 initWithProtobuf:v12];
      [(SFPerformEntityQueryCommand *)v5 setSymbolImage:v13];
    }

    if ([v4 entityType])
    {
      -[SFPerformEntityQueryCommand setEntityType:](v5, "setEntityType:", [v4 entityType]);
    }

    v14 = [v4 entityIdentifier];

    if (v14)
    {
      v15 = [v4 entityIdentifier];
      [(SFPerformEntityQueryCommand *)v5 setEntityIdentifier:v15];
    }

    v16 = [v4 entityBackgroundColor];

    if (v16)
    {
      v17 = [SFColor alloc];
      v18 = [v4 entityBackgroundColor];
      v19 = [(SFColor *)v17 initWithProtobuf:v18];
      [(SFPerformEntityQueryCommand *)v5 setEntityBackgroundColor:v19];
    }

    v20 = [v4 metadata];

    if (v20)
    {
      v21 = [SFDrillDownMetadata alloc];
      v22 = [v4 metadata];
      v23 = [(SFDrillDownMetadata *)v21 initWithProtobuf:v22];
      [(SFPerformEntityQueryCommand *)v5 setMetadata:v23];
    }

    v24 = [v4 drilldownMetadata];

    if (v24)
    {
      v25 = [SFDrillDownMetadata alloc];
      v26 = [v4 drilldownMetadata];
      v27 = [(SFDrillDownMetadata *)v25 initWithProtobuf:v26];
      [(SFPerformEntityQueryCommand *)v5 setDrilldownMetadata:v27];
    }

    v28 = [v4 tokenImage];

    if (v28)
    {
      v29 = [SFImage alloc];
      v30 = [v4 tokenImage];
      v31 = [(SFImage *)v29 initWithProtobuf:v30];
      [(SFPerformEntityQueryCommand *)v5 setTokenImage:v31];
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
    v35 = [v34 countByEnumeratingWithState:&v55 objects:v61 count:16];
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

        v36 = [v34 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v36);
    }

    [(SFPerformEntityQueryCommand *)v5 setFilterQueries:v33];
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
    v42 = [v41 countByEnumeratingWithState:&v51 objects:v60 count:16];
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

        v43 = [v41 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v43);
    }

    [(SFPerformEntityQueryCommand *)v5 setEnabledDomains:v40];
    v46 = [v4 bundleIdentifier];

    if (v46)
    {
      v47 = [v4 bundleIdentifier];
      [(SFPerformEntityQueryCommand *)v5 setBundleIdentifier:v47];
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
  v27 = [(SFPerformEntityQueryCommand *)self searchString];
  v4 = [v27 hash];
  v26 = [(SFPerformEntityQueryCommand *)self tokenString];
  v5 = v4 ^ [v26 hash];
  v25 = [(SFPerformEntityQueryCommand *)self symbolImage];
  v6 = v5 ^ [v25 hash];
  v7 = v6 ^ [(SFPerformEntityQueryCommand *)self entityType];
  v8 = [(SFPerformEntityQueryCommand *)self entityIdentifier];
  v9 = v7 ^ [v8 hash] ^ v3;
  v10 = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
  v11 = [v10 hash];
  v12 = [(SFPerformEntityQueryCommand *)self metadata];
  v13 = v11 ^ [v12 hash];
  v14 = [(SFPerformEntityQueryCommand *)self drilldownMetadata];
  v15 = v13 ^ [v14 hash];
  v16 = [(SFPerformEntityQueryCommand *)self tokenImage];
  v17 = v15 ^ [v16 hash];
  v18 = [(SFPerformEntityQueryCommand *)self filterQueries];
  v19 = v17 ^ [v18 hash];
  v20 = [(SFPerformEntityQueryCommand *)self enabledDomains];
  v21 = v9 ^ v19 ^ [v20 hash];
  v22 = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
  v23 = [v22 hash];

  return v21 ^ v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
    goto LABEL_79;
  }

  if (![(SFPerformEntityQueryCommand *)v4 isMemberOfClass:objc_opt_class()]|| (v119.receiver = self, v119.super_class = SFPerformEntityQueryCommand, ![(SFCommand *)&v119 isEqual:v4]))
  {
    v19 = 0;
    goto LABEL_79;
  }

  v5 = v4;
  v114 = [(SFPerformEntityQueryCommand *)self searchString];
  v113 = [(SFPerformEntityQueryCommand *)v5 searchString];
  v111 = v113 == 0;
  v112 = v114 != 0;
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

  v7 = [(SFPerformEntityQueryCommand *)self searchString];
  v8 = v7 != 0;
  v109 = v7;
  if (v7)
  {
    v9 = [(SFPerformEntityQueryCommand *)self searchString];
    v104 = [(SFPerformEntityQueryCommand *)v5 searchString];
    v105 = v9;
    if (![v9 isEqual:?])
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

  v107 = [(SFPerformEntityQueryCommand *)self tokenString];
  v106 = [(SFPerformEntityQueryCommand *)v5 tokenString];
  *&v110[16] = v8;
  if ((v107 != 0) == (v106 == 0))
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

  v20 = [(SFPerformEntityQueryCommand *)self tokenString];
  v21 = v20 != 0;
  v103 = v20;
  if (v20)
  {
    v22 = [(SFPerformEntityQueryCommand *)self tokenString];
    v99 = [(SFPerformEntityQueryCommand *)v5 tokenString];
    v100 = v22;
    if (![v22 isEqual:?])
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

  v102 = [(SFPerformEntityQueryCommand *)self symbolImage];
  v101 = [(SFPerformEntityQueryCommand *)v5 symbolImage];
  if ((v102 != 0) == (v101 == 0))
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

  v35 = [(SFPerformEntityQueryCommand *)self symbolImage];
  v36 = v35 != 0;
  v98 = v35;
  if (v35)
  {
    v37 = [(SFPerformEntityQueryCommand *)self symbolImage];
    v96 = [(SFPerformEntityQueryCommand *)v5 symbolImage];
    v97 = v37;
    if (![v37 isEqual:?])
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
  v38 = [(SFPerformEntityQueryCommand *)self entityType];
  if (v38 != [(SFPerformEntityQueryCommand *)v5 entityType])
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

  v95 = [(SFPerformEntityQueryCommand *)self entityIdentifier];
  v94 = [(SFPerformEntityQueryCommand *)v5 entityIdentifier];
  if ((v95 != 0) == (v94 == 0))
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

  v39 = [(SFPerformEntityQueryCommand *)self entityIdentifier];
  v40 = v39 != 0;
  v93 = v39;
  if (v39)
  {
    v41 = [(SFPerformEntityQueryCommand *)self entityIdentifier];
    v89 = [(SFPerformEntityQueryCommand *)v5 entityIdentifier];
    v90 = v41;
    if (![v41 isEqual:?])
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

  v92 = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
  v91 = [(SFPerformEntityQueryCommand *)v5 entityBackgroundColor];
  if ((v92 != 0) == (v91 == 0))
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

  v42 = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
  v43 = v42 != 0;
  v88 = v42;
  if (v42)
  {
    v44 = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
    v84 = [(SFPerformEntityQueryCommand *)v5 entityBackgroundColor];
    v85 = v44;
    if (![v44 isEqual:?])
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

  v87 = [(SFPerformEntityQueryCommand *)self metadata];
  v86 = [(SFPerformEntityQueryCommand *)v5 metadata];
  if ((v87 != 0) == (v86 == 0))
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
    v45 = [(SFPerformEntityQueryCommand *)self metadata];
    HIDWORD(v118[1]) = v45 != 0;
    v83 = v45;
    if (!v45 || (-[SFPerformEntityQueryCommand metadata](self, "metadata"), v46 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand metadata](v5, "metadata"), v79 = objc_claimAutoreleasedReturnValue(), v80 = v46, [v46 isEqual:?]))
    {
      v82 = [(SFPerformEntityQueryCommand *)self drilldownMetadata];
      v81 = [(SFPerformEntityQueryCommand *)v5 drilldownMetadata];
      if ((v82 != 0) == (v81 == 0))
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
        v47 = [(SFPerformEntityQueryCommand *)self drilldownMetadata];
        DWORD2(v118[1]) = v47 != 0;
        v78 = v47;
        if (!v47 || (-[SFPerformEntityQueryCommand drilldownMetadata](self, "drilldownMetadata"), v48 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand drilldownMetadata](v5, "drilldownMetadata"), v74 = objc_claimAutoreleasedReturnValue(), v75 = v48, [v48 isEqual:?]))
        {
          v77 = [(SFPerformEntityQueryCommand *)self tokenImage];
          v76 = [(SFPerformEntityQueryCommand *)v5 tokenImage];
          if ((v77 != 0) == (v76 == 0))
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
            v49 = [(SFPerformEntityQueryCommand *)self tokenImage];
            DWORD1(v118[1]) = v49 != 0;
            v73 = v49;
            if (!v49 || (-[SFPerformEntityQueryCommand tokenImage](self, "tokenImage"), v50 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand tokenImage](v5, "tokenImage"), v69 = objc_claimAutoreleasedReturnValue(), v70 = v50, [v50 isEqual:?]))
            {
              v72 = [(SFPerformEntityQueryCommand *)self filterQueries];
              v71 = [(SFPerformEntityQueryCommand *)v5 filterQueries];
              if ((v72 != 0) == (v71 == 0))
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
                v51 = [(SFPerformEntityQueryCommand *)self filterQueries];
                LODWORD(v118[1]) = v51 != 0;
                v68 = v51;
                if (!v51 || (-[SFPerformEntityQueryCommand filterQueries](self, "filterQueries"), v52 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand filterQueries](v5, "filterQueries"), v64 = objc_claimAutoreleasedReturnValue(), v65 = v52, [v52 isEqual:?]))
                {
                  v67 = [(SFPerformEntityQueryCommand *)self enabledDomains];
                  v66 = [(SFPerformEntityQueryCommand *)v5 enabledDomains];
                  if ((v67 != 0) == (v66 == 0))
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
                    v53 = [(SFPerformEntityQueryCommand *)self enabledDomains];
                    HIDWORD(v118[0]) = v53 != 0;
                    v63 = v53;
                    if (!v53 || (-[SFPerformEntityQueryCommand enabledDomains](self, "enabledDomains"), v54 = objc_claimAutoreleasedReturnValue(), -[SFPerformEntityQueryCommand enabledDomains](v5, "enabledDomains"), v59 = objc_claimAutoreleasedReturnValue(), v60 = v54, [v54 isEqual:?]))
                    {
                      v62 = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
                      v61 = [(SFPerformEntityQueryCommand *)v5 bundleIdentifier];
                      if ((v62 != 0) == (v61 == 0))
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
                        v58 = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
                        if (v58)
                        {
                          v55 = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
                          v56 = [(SFPerformEntityQueryCommand *)v5 bundleIdentifier];
                          v57 = v55;
                          v19 = [v55 isEqual:v56];
                          v6 = v56;
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
                          v58 = 0;
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
    v108 = v4;
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
    v4 = v108;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v28.receiver = self;
  v28.super_class = SFPerformEntityQueryCommand;
  v4 = [(SFCommand *)&v28 copyWithZone:a3];
  v5 = [(SFPerformEntityQueryCommand *)self searchString];
  v6 = [v5 copy];
  [v4 setSearchString:v6];

  v7 = [(SFPerformEntityQueryCommand *)self tokenString];
  v8 = [v7 copy];
  [v4 setTokenString:v8];

  v9 = [(SFPerformEntityQueryCommand *)self symbolImage];
  v10 = [v9 copy];
  [v4 setSymbolImage:v10];

  [v4 setEntityType:{-[SFPerformEntityQueryCommand entityType](self, "entityType")}];
  v11 = [(SFPerformEntityQueryCommand *)self entityIdentifier];
  v12 = [v11 copy];
  [v4 setEntityIdentifier:v12];

  v13 = [(SFPerformEntityQueryCommand *)self entityBackgroundColor];
  v14 = [v13 copy];
  [v4 setEntityBackgroundColor:v14];

  v15 = [(SFPerformEntityQueryCommand *)self metadata];
  v16 = [v15 copy];
  [v4 setMetadata:v16];

  v17 = [(SFPerformEntityQueryCommand *)self drilldownMetadata];
  v18 = [v17 copy];
  [v4 setDrilldownMetadata:v18];

  v19 = [(SFPerformEntityQueryCommand *)self tokenImage];
  v20 = [v19 copy];
  [v4 setTokenImage:v20];

  v21 = [(SFPerformEntityQueryCommand *)self filterQueries];
  v22 = [v21 copy];
  [v4 setFilterQueries:v22];

  v23 = [(SFPerformEntityQueryCommand *)self enabledDomains];
  v24 = [v23 copy];
  [v4 setEnabledDomains:v24];

  v25 = [(SFPerformEntityQueryCommand *)self bundleIdentifier];
  v26 = [v25 copy];
  [v4 setBundleIdentifier:v26];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPerformEntityQueryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformEntityQueryCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPerformEntityQueryCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPerformEntityQueryCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFPerformEntityQueryCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFPerformEntityQueryCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFPerformEntityQueryCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 searchString];
    [(SFPerformEntityQueryCommand *)v5 setSearchString:v9];

    v10 = [(SFCommand *)v8 tokenString];
    [(SFPerformEntityQueryCommand *)v5 setTokenString:v10];

    v11 = [(SFCommand *)v8 symbolImage];
    [(SFPerformEntityQueryCommand *)v5 setSymbolImage:v11];

    [(SFPerformEntityQueryCommand *)v5 setEntityType:[(SFCommand *)v8 entityType]];
    v12 = [(SFCommand *)v8 entityIdentifier];
    [(SFPerformEntityQueryCommand *)v5 setEntityIdentifier:v12];

    v13 = [(SFCommand *)v8 entityBackgroundColor];
    [(SFPerformEntityQueryCommand *)v5 setEntityBackgroundColor:v13];

    v14 = [(SFCommand *)v8 metadata];
    [(SFPerformEntityQueryCommand *)v5 setMetadata:v14];

    v15 = [(SFCommand *)v8 drilldownMetadata];
    [(SFPerformEntityQueryCommand *)v5 setDrilldownMetadata:v15];

    v16 = [(SFCommand *)v8 tokenImage];
    [(SFPerformEntityQueryCommand *)v5 setTokenImage:v16];

    v17 = [(SFCommand *)v8 filterQueries];
    [(SFPerformEntityQueryCommand *)v5 setFilterQueries:v17];

    v18 = [(SFCommand *)v8 enabledDomains];
    [(SFPerformEntityQueryCommand *)v5 setEnabledDomains:v18];

    v19 = [(SFCommand *)v8 bundleIdentifier];
    [(SFPerformEntityQueryCommand *)v5 setBundleIdentifier:v19];

    v20 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v20];

    v21 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v21];

    v22 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v22];

    v23 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v23];
  }

  return v5;
}

@end