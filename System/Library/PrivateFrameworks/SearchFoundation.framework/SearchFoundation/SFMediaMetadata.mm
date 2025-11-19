@interface SFMediaMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaMetadata)initWithCoder:(id)a3;
- (SFMediaMetadata)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFMediaMetadata

- (SFMediaMetadata)initWithProtobuf:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = SFMediaMetadata;
  v5 = [(SFMediaMetadata *)&v42 init];
  if (v5)
  {
    v6 = [v4 mediaName];

    if (v6)
    {
      v7 = [v4 mediaName];
      [(SFMediaMetadata *)v5 setMediaName:v7];
    }

    if ([v4 mediaType])
    {
      -[SFMediaMetadata setMediaType:](v5, "setMediaType:", [v4 mediaType]);
    }

    v8 = [v4 artistName];

    if (v8)
    {
      v9 = [v4 artistName];
      [(SFMediaMetadata *)v5 setArtistName:v9];
    }

    v10 = [v4 albumName];

    if (v10)
    {
      v11 = [v4 albumName];
      [(SFMediaMetadata *)v5 setAlbumName:v11];
    }

    v12 = [v4 mediaPunchouts];
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = [v4 mediaPunchouts];
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[SFPunchout alloc] initWithProtobuf:*(*(&v38 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v16);
    }

    [(SFMediaMetadata *)v5 setMediaPunchouts:v13];
    v20 = [v4 bundleIdentifiersToExcludes];
    if (v20)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v21 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = [v4 bundleIdentifiersToExcludes];
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if (*(*(&v34 + 1) + 8 * j))
          {
            [v21 addObject:?];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v24);
    }

    [(SFMediaMetadata *)v5 setBundleIdentifiersToExclude:v21];
    v27 = [v4 disambiguationTitle];

    if (v27)
    {
      v28 = [v4 disambiguationTitle];
      [(SFMediaMetadata *)v5 setDisambiguationTitle:v28];
    }

    v29 = [v4 mediaIdentifier];

    if (v29)
    {
      v30 = [v4 mediaIdentifier];
      [(SFMediaMetadata *)v5 setMediaIdentifier:v30];
    }

    v31 = v5;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFMediaMetadata *)self mediaName];
  v4 = [v3 hash];
  v5 = v4 ^ [(SFMediaMetadata *)self mediaType];
  v6 = [(SFMediaMetadata *)self artistName];
  v7 = [v6 hash];
  v8 = [(SFMediaMetadata *)self albumName];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(SFMediaMetadata *)self mediaPunchouts];
  v11 = [v10 hash];
  v12 = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
  v13 = v11 ^ [v12 hash];
  v14 = [(SFMediaMetadata *)self disambiguationTitle];
  v15 = v9 ^ v13 ^ [v14 hash];
  v16 = [(SFMediaMetadata *)self mediaIdentifier];
  v17 = [v16 hash];

  return v15 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFMediaMetadata *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFMediaMetadata *)self mediaName];
      v8 = [(SFMediaMetadata *)v6 mediaName];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_47:

        goto LABEL_48;
      }

      v9 = [(SFMediaMetadata *)self mediaName];
      if (v9)
      {
        v10 = [(SFMediaMetadata *)self mediaName];
        v75 = [(SFMediaMetadata *)v6 mediaName];
        v76 = v10;
        if (![v10 isEqual:?])
        {
          v11 = 0;
          goto LABEL_45;
        }
      }

      v12 = [(SFMediaMetadata *)self mediaType];
      if (v12 == [(SFMediaMetadata *)v6 mediaType])
      {
        v13 = [(SFMediaMetadata *)self artistName];
        v14 = [(SFMediaMetadata *)v6 artistName];
        if ((v13 != 0) == (v14 == 0))
        {
LABEL_42:

          goto LABEL_43;
        }

        v74 = v14;
        v15 = [(SFMediaMetadata *)self artistName];
        v73 = v15;
        if (v15)
        {
          v16 = v15;
          v17 = [(SFMediaMetadata *)self artistName];
          v3 = [(SFMediaMetadata *)v6 artistName];
          if (([v17 isEqual:v3] & 1) == 0)
          {

LABEL_43:
            goto LABEL_44;
          }

          v71 = v9;
          v72 = v13;
          v18 = v76;
          v13 = v17;
        }

        else
        {
          v71 = v9;
          v72 = v13;
          v18 = v76;
        }

        v76 = v18;
        v19 = [(SFMediaMetadata *)self albumName];
        v20 = [(SFMediaMetadata *)v6 albumName];
        v21 = v73;
        v9 = v71;
        if ((v19 != 0) == (v20 == 0))
        {
LABEL_39:

          if (v21)
          {
          }

          v13 = v72;
          v14 = v74;
          goto LABEL_42;
        }

        v69 = v20;
        v68 = [(SFMediaMetadata *)self albumName];
        v70 = v3;
        if (!v68)
        {
          v67 = v19;
          v25 = v13;
          v26 = v73;
          goto LABEL_22;
        }

        v22 = v19;
        v23 = [(SFMediaMetadata *)self albumName];
        v24 = [(SFMediaMetadata *)v6 albumName];
        if ([v23 isEqual:v24])
        {
          v64 = v24;
          v65 = v23;
          v67 = v22;
          v25 = v13;
          v26 = v73;
LABEL_22:
          v66 = v25;
          v27 = [(SFMediaMetadata *)self mediaPunchouts];
          v28 = [(SFMediaMetadata *)v6 mediaPunchouts];
          v21 = v26;
          v3 = v70;
          v19 = v67;
          if ((v27 != 0) != (v28 == 0))
          {
            v63 = v28;
            v62 = [(SFMediaMetadata *)self mediaPunchouts];
            if (v62)
            {
              v29 = [(SFMediaMetadata *)self mediaPunchouts];
              v60 = [(SFMediaMetadata *)v6 mediaPunchouts];
              v61 = v29;
              if (![v29 isEqual:?])
              {
                v11 = 0;
                v30 = v72;
                v31 = v62;
LABEL_65:

LABEL_66:
                if (v68)
                {
                }

                if (v21)
                {
                }

                if (!v71)
                {
                  goto LABEL_46;
                }

                goto LABEL_45;
              }
            }

            v32 = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
            v33 = [(SFMediaMetadata *)v6 bundleIdentifiersToExclude];
            if ((v32 != 0) != (v33 == 0))
            {
              v59 = v33;
              v34 = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
              v58 = v27;
              if (v34)
              {
                v35 = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
                v55 = [(SFMediaMetadata *)v6 bundleIdentifiersToExclude];
                v56 = v35;
                if (![v35 isEqual:?])
                {
                  v11 = 0;
                  v21 = v73;
                  goto LABEL_63;
                }

                v57 = v32;
              }

              else
              {
                v57 = v32;
              }

              v37 = [(SFMediaMetadata *)self disambiguationTitle];
              v38 = [(SFMediaMetadata *)v6 disambiguationTitle];
              if ((v37 != 0) != (v38 == 0))
              {
                v53 = v38;
                [(SFMediaMetadata *)self disambiguationTitle];
                v52 = v54 = v34;
                if (!v52 || (-[SFMediaMetadata disambiguationTitle](self, "disambiguationTitle"), v39 = objc_claimAutoreleasedReturnValue(), -[SFMediaMetadata disambiguationTitle](v6, "disambiguationTitle"), v50 = objc_claimAutoreleasedReturnValue(), v51 = v39, [v39 isEqual:?]))
                {
                  v42 = [(SFMediaMetadata *)self mediaIdentifier];
                  v43 = [(SFMediaMetadata *)v6 mediaIdentifier];
                  if ((v42 != 0) == (v43 == 0))
                  {

                    v11 = 0;
                    v21 = v73;
                    v40 = v37;
                    v32 = v57;
                    v41 = v52;
                    if (!v52)
                    {
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                    v48 = v43;
                    v44 = [(SFMediaMetadata *)self mediaIdentifier];
                    v21 = v73;
                    v49 = v37;
                    if (v44)
                    {
                      v45 = v44;
                      v46 = [(SFMediaMetadata *)self mediaIdentifier];
                      v47 = [(SFMediaMetadata *)v6 mediaIdentifier];
                      v11 = [v46 isEqual:v47];
                    }

                    else
                    {

                      v11 = 1;
                    }

                    v32 = v57;
                    v41 = v52;
                    v40 = v49;
                    if (!v52)
                    {
LABEL_62:

                      v34 = v54;
                      if (!v54)
                      {
                        goto LABEL_64;
                      }

                      goto LABEL_63;
                    }
                  }
                }

                else
                {
                  v11 = 0;
                  v21 = v73;
                  v40 = v37;
                  v32 = v57;
                  v41 = v52;
                }

                goto LABEL_62;
              }

              v11 = 0;
              v21 = v73;
              v32 = v57;
              if (!v34)
              {
LABEL_64:

                v31 = v62;
                v30 = v72;
                v27 = v58;
                if (!v62)
                {
                  goto LABEL_66;
                }

                goto LABEL_65;
              }

LABEL_63:

              goto LABEL_64;
            }

            if (v62)
            {
            }

            v21 = v73;
            v28 = v63;
            v3 = v70;
          }

          if (v68)
          {
          }

          v20 = v69;
          v13 = v66;
          goto LABEL_39;
        }

        if (v73)
        {
        }
      }

LABEL_44:
      v11 = 0;
      if (!v9)
      {
LABEL_46:

        goto LABEL_47;
      }

LABEL_45:

      goto LABEL_46;
    }

    v11 = 0;
  }

LABEL_48:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFMediaMetadata *)self mediaName];
  v6 = [v5 copy];
  [v4 setMediaName:v6];

  [v4 setMediaType:{-[SFMediaMetadata mediaType](self, "mediaType")}];
  v7 = [(SFMediaMetadata *)self artistName];
  v8 = [v7 copy];
  [v4 setArtistName:v8];

  v9 = [(SFMediaMetadata *)self albumName];
  v10 = [v9 copy];
  [v4 setAlbumName:v10];

  v11 = [(SFMediaMetadata *)self mediaPunchouts];
  v12 = [v11 copy];
  [v4 setMediaPunchouts:v12];

  v13 = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
  v14 = [v13 copy];
  [v4 setBundleIdentifiersToExclude:v14];

  v15 = [(SFMediaMetadata *)self disambiguationTitle];
  v16 = [v15 copy];
  [v4 setDisambiguationTitle:v16];

  v17 = [(SFMediaMetadata *)self mediaIdentifier];
  v18 = [v17 copy];
  [v4 setMediaIdentifier:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaMetadata alloc] initWithFacade:self];
  v3 = [(_SFPBMediaMetadata *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaMetadata alloc] initWithFacade:self];
  v3 = [(_SFPBMediaMetadata *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBMediaMetadata alloc] initWithFacade:self];
  v5 = [(_SFPBMediaMetadata *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFMediaMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMediaMetadata alloc] initWithData:v5];
  v7 = [(SFMediaMetadata *)self initWithProtobuf:v6];

  return v7;
}

@end