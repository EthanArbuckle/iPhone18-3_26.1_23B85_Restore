@interface SFMediaMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFMediaMetadata)initWithCoder:(id)coder;
- (SFMediaMetadata)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFMediaMetadata

- (SFMediaMetadata)initWithProtobuf:(id)protobuf
{
  v45 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v42.receiver = self;
  v42.super_class = SFMediaMetadata;
  v5 = [(SFMediaMetadata *)&v42 init];
  if (v5)
  {
    mediaName = [protobufCopy mediaName];

    if (mediaName)
    {
      mediaName2 = [protobufCopy mediaName];
      [(SFMediaMetadata *)v5 setMediaName:mediaName2];
    }

    if ([protobufCopy mediaType])
    {
      -[SFMediaMetadata setMediaType:](v5, "setMediaType:", [protobufCopy mediaType]);
    }

    artistName = [protobufCopy artistName];

    if (artistName)
    {
      artistName2 = [protobufCopy artistName];
      [(SFMediaMetadata *)v5 setArtistName:artistName2];
    }

    albumName = [protobufCopy albumName];

    if (albumName)
    {
      albumName2 = [protobufCopy albumName];
      [(SFMediaMetadata *)v5 setAlbumName:albumName2];
    }

    mediaPunchouts = [protobufCopy mediaPunchouts];
    if (mediaPunchouts)
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
    mediaPunchouts2 = [protobufCopy mediaPunchouts];
    v15 = [mediaPunchouts2 countByEnumeratingWithState:&v38 objects:v44 count:16];
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
            objc_enumerationMutation(mediaPunchouts2);
          }

          v19 = [[SFPunchout alloc] initWithProtobuf:*(*(&v38 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [mediaPunchouts2 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v16);
    }

    [(SFMediaMetadata *)v5 setMediaPunchouts:v13];
    bundleIdentifiersToExcludes = [protobufCopy bundleIdentifiersToExcludes];
    if (bundleIdentifiersToExcludes)
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
    bundleIdentifiersToExcludes2 = [protobufCopy bundleIdentifiersToExcludes];
    v23 = [bundleIdentifiersToExcludes2 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
            objc_enumerationMutation(bundleIdentifiersToExcludes2);
          }

          if (*(*(&v34 + 1) + 8 * j))
          {
            [v21 addObject:?];
          }
        }

        v24 = [bundleIdentifiersToExcludes2 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v24);
    }

    [(SFMediaMetadata *)v5 setBundleIdentifiersToExclude:v21];
    disambiguationTitle = [protobufCopy disambiguationTitle];

    if (disambiguationTitle)
    {
      disambiguationTitle2 = [protobufCopy disambiguationTitle];
      [(SFMediaMetadata *)v5 setDisambiguationTitle:disambiguationTitle2];
    }

    mediaIdentifier = [protobufCopy mediaIdentifier];

    if (mediaIdentifier)
    {
      mediaIdentifier2 = [protobufCopy mediaIdentifier];
      [(SFMediaMetadata *)v5 setMediaIdentifier:mediaIdentifier2];
    }

    v31 = v5;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  mediaName = [(SFMediaMetadata *)self mediaName];
  v4 = [mediaName hash];
  v5 = v4 ^ [(SFMediaMetadata *)self mediaType];
  artistName = [(SFMediaMetadata *)self artistName];
  v7 = [artistName hash];
  albumName = [(SFMediaMetadata *)self albumName];
  v9 = v5 ^ v7 ^ [albumName hash];
  mediaPunchouts = [(SFMediaMetadata *)self mediaPunchouts];
  v11 = [mediaPunchouts hash];
  bundleIdentifiersToExclude = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
  v13 = v11 ^ [bundleIdentifiersToExclude hash];
  disambiguationTitle = [(SFMediaMetadata *)self disambiguationTitle];
  v15 = v9 ^ v13 ^ [disambiguationTitle hash];
  mediaIdentifier = [(SFMediaMetadata *)self mediaIdentifier];
  v17 = [mediaIdentifier hash];

  return v15 ^ v17;
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
    if ([(SFMediaMetadata *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      mediaName = [(SFMediaMetadata *)self mediaName];
      mediaName2 = [(SFMediaMetadata *)v6 mediaName];
      if ((mediaName != 0) == (mediaName2 == 0))
      {
        v11 = 0;
LABEL_47:

        goto LABEL_48;
      }

      mediaName3 = [(SFMediaMetadata *)self mediaName];
      if (mediaName3)
      {
        mediaName4 = [(SFMediaMetadata *)self mediaName];
        mediaName5 = [(SFMediaMetadata *)v6 mediaName];
        v76 = mediaName4;
        if (![mediaName4 isEqual:?])
        {
          v11 = 0;
          goto LABEL_45;
        }
      }

      mediaType = [(SFMediaMetadata *)self mediaType];
      if (mediaType == [(SFMediaMetadata *)v6 mediaType])
      {
        artistName = [(SFMediaMetadata *)self artistName];
        artistName2 = [(SFMediaMetadata *)v6 artistName];
        if ((artistName != 0) == (artistName2 == 0))
        {
LABEL_42:

          goto LABEL_43;
        }

        v74 = artistName2;
        artistName3 = [(SFMediaMetadata *)self artistName];
        v73 = artistName3;
        if (artistName3)
        {
          v16 = artistName3;
          artistName4 = [(SFMediaMetadata *)self artistName];
          artistName5 = [(SFMediaMetadata *)v6 artistName];
          if (([artistName4 isEqual:artistName5] & 1) == 0)
          {

LABEL_43:
            goto LABEL_44;
          }

          v71 = mediaName3;
          v72 = artistName;
          v18 = v76;
          artistName = artistName4;
        }

        else
        {
          v71 = mediaName3;
          v72 = artistName;
          v18 = v76;
        }

        v76 = v18;
        albumName = [(SFMediaMetadata *)self albumName];
        albumName2 = [(SFMediaMetadata *)v6 albumName];
        v21 = v73;
        mediaName3 = v71;
        if ((albumName != 0) == (albumName2 == 0))
        {
LABEL_39:

          if (v21)
          {
          }

          artistName = v72;
          artistName2 = v74;
          goto LABEL_42;
        }

        v69 = albumName2;
        albumName3 = [(SFMediaMetadata *)self albumName];
        v70 = artistName5;
        if (!albumName3)
        {
          v67 = albumName;
          v25 = artistName;
          v26 = v73;
          goto LABEL_22;
        }

        v22 = albumName;
        albumName4 = [(SFMediaMetadata *)self albumName];
        albumName5 = [(SFMediaMetadata *)v6 albumName];
        if ([albumName4 isEqual:albumName5])
        {
          v64 = albumName5;
          v65 = albumName4;
          v67 = v22;
          v25 = artistName;
          v26 = v73;
LABEL_22:
          v66 = v25;
          mediaPunchouts = [(SFMediaMetadata *)self mediaPunchouts];
          mediaPunchouts2 = [(SFMediaMetadata *)v6 mediaPunchouts];
          v21 = v26;
          artistName5 = v70;
          albumName = v67;
          if ((mediaPunchouts != 0) != (mediaPunchouts2 == 0))
          {
            v63 = mediaPunchouts2;
            mediaPunchouts3 = [(SFMediaMetadata *)self mediaPunchouts];
            if (mediaPunchouts3)
            {
              mediaPunchouts4 = [(SFMediaMetadata *)self mediaPunchouts];
              mediaPunchouts5 = [(SFMediaMetadata *)v6 mediaPunchouts];
              v61 = mediaPunchouts4;
              if (![mediaPunchouts4 isEqual:?])
              {
                v11 = 0;
                v30 = v72;
                v31 = mediaPunchouts3;
LABEL_65:

LABEL_66:
                if (albumName3)
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

            bundleIdentifiersToExclude = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
            bundleIdentifiersToExclude2 = [(SFMediaMetadata *)v6 bundleIdentifiersToExclude];
            if ((bundleIdentifiersToExclude != 0) != (bundleIdentifiersToExclude2 == 0))
            {
              v59 = bundleIdentifiersToExclude2;
              bundleIdentifiersToExclude3 = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
              v58 = mediaPunchouts;
              if (bundleIdentifiersToExclude3)
              {
                bundleIdentifiersToExclude4 = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
                bundleIdentifiersToExclude5 = [(SFMediaMetadata *)v6 bundleIdentifiersToExclude];
                v56 = bundleIdentifiersToExclude4;
                if (![bundleIdentifiersToExclude4 isEqual:?])
                {
                  v11 = 0;
                  v21 = v73;
                  goto LABEL_63;
                }

                v57 = bundleIdentifiersToExclude;
              }

              else
              {
                v57 = bundleIdentifiersToExclude;
              }

              disambiguationTitle = [(SFMediaMetadata *)self disambiguationTitle];
              disambiguationTitle2 = [(SFMediaMetadata *)v6 disambiguationTitle];
              if ((disambiguationTitle != 0) != (disambiguationTitle2 == 0))
              {
                v53 = disambiguationTitle2;
                [(SFMediaMetadata *)self disambiguationTitle];
                v52 = v54 = bundleIdentifiersToExclude3;
                if (!v52 || (-[SFMediaMetadata disambiguationTitle](self, "disambiguationTitle"), v39 = objc_claimAutoreleasedReturnValue(), -[SFMediaMetadata disambiguationTitle](v6, "disambiguationTitle"), v50 = objc_claimAutoreleasedReturnValue(), v51 = v39, [v39 isEqual:?]))
                {
                  mediaIdentifier = [(SFMediaMetadata *)self mediaIdentifier];
                  mediaIdentifier2 = [(SFMediaMetadata *)v6 mediaIdentifier];
                  if ((mediaIdentifier != 0) == (mediaIdentifier2 == 0))
                  {

                    v11 = 0;
                    v21 = v73;
                    v40 = disambiguationTitle;
                    bundleIdentifiersToExclude = v57;
                    v41 = v52;
                    if (!v52)
                    {
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                    v48 = mediaIdentifier2;
                    mediaIdentifier3 = [(SFMediaMetadata *)self mediaIdentifier];
                    v21 = v73;
                    v49 = disambiguationTitle;
                    if (mediaIdentifier3)
                    {
                      v45 = mediaIdentifier3;
                      mediaIdentifier4 = [(SFMediaMetadata *)self mediaIdentifier];
                      mediaIdentifier5 = [(SFMediaMetadata *)v6 mediaIdentifier];
                      v11 = [mediaIdentifier4 isEqual:mediaIdentifier5];
                    }

                    else
                    {

                      v11 = 1;
                    }

                    bundleIdentifiersToExclude = v57;
                    v41 = v52;
                    v40 = v49;
                    if (!v52)
                    {
LABEL_62:

                      bundleIdentifiersToExclude3 = v54;
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
                  v40 = disambiguationTitle;
                  bundleIdentifiersToExclude = v57;
                  v41 = v52;
                }

                goto LABEL_62;
              }

              v11 = 0;
              v21 = v73;
              bundleIdentifiersToExclude = v57;
              if (!bundleIdentifiersToExclude3)
              {
LABEL_64:

                v31 = mediaPunchouts3;
                v30 = v72;
                mediaPunchouts = v58;
                if (!mediaPunchouts3)
                {
                  goto LABEL_66;
                }

                goto LABEL_65;
              }

LABEL_63:

              goto LABEL_64;
            }

            if (mediaPunchouts3)
            {
            }

            v21 = v73;
            mediaPunchouts2 = v63;
            artistName5 = v70;
          }

          if (albumName3)
          {
          }

          albumName2 = v69;
          artistName = v66;
          goto LABEL_39;
        }

        if (v73)
        {
        }
      }

LABEL_44:
      v11 = 0;
      if (!mediaName3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  mediaName = [(SFMediaMetadata *)self mediaName];
  v6 = [mediaName copy];
  [v4 setMediaName:v6];

  [v4 setMediaType:{-[SFMediaMetadata mediaType](self, "mediaType")}];
  artistName = [(SFMediaMetadata *)self artistName];
  v8 = [artistName copy];
  [v4 setArtistName:v8];

  albumName = [(SFMediaMetadata *)self albumName];
  v10 = [albumName copy];
  [v4 setAlbumName:v10];

  mediaPunchouts = [(SFMediaMetadata *)self mediaPunchouts];
  v12 = [mediaPunchouts copy];
  [v4 setMediaPunchouts:v12];

  bundleIdentifiersToExclude = [(SFMediaMetadata *)self bundleIdentifiersToExclude];
  v14 = [bundleIdentifiersToExclude copy];
  [v4 setBundleIdentifiersToExclude:v14];

  disambiguationTitle = [(SFMediaMetadata *)self disambiguationTitle];
  v16 = [disambiguationTitle copy];
  [v4 setDisambiguationTitle:v16];

  mediaIdentifier = [(SFMediaMetadata *)self mediaIdentifier];
  v18 = [mediaIdentifier copy];
  [v4 setMediaIdentifier:v18];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBMediaMetadata alloc] initWithFacade:self];
  jsonData = [(_SFPBMediaMetadata *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBMediaMetadata alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBMediaMetadata *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBMediaMetadata alloc] initWithFacade:self];
  data = [(_SFPBMediaMetadata *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFMediaMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBMediaMetadata alloc] initWithData:v5];
  v7 = [(SFMediaMetadata *)self initWithProtobuf:v6];

  return v7;
}

@end