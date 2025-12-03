@interface _SFPBMediaMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMediaMetadata)initWithDictionary:(id)dictionary;
- (_SFPBMediaMetadata)initWithFacade:(id)facade;
- (_SFPBMediaMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBundleIdentifiersToExclude:(id)exclude;
- (void)addMediaPunchouts:(id)punchouts;
- (void)setAlbumName:(id)name;
- (void)setArtistName:(id)name;
- (void)setBundleIdentifiersToExclude:(id)exclude;
- (void)setDisambiguationTitle:(id)title;
- (void)setMediaIdentifier:(id)identifier;
- (void)setMediaName:(id)name;
- (void)setMediaPunchouts:(id)punchouts;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMediaMetadata

- (_SFPBMediaMetadata)initWithFacade:(id)facade
{
  v44 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBMediaMetadata *)self init];
  if (v5)
  {
    mediaName = [facadeCopy mediaName];

    if (mediaName)
    {
      mediaName2 = [facadeCopy mediaName];
      [(_SFPBMediaMetadata *)v5 setMediaName:mediaName2];
    }

    if ([facadeCopy hasMediaType])
    {
      -[_SFPBMediaMetadata setMediaType:](v5, "setMediaType:", [facadeCopy mediaType]);
    }

    artistName = [facadeCopy artistName];

    if (artistName)
    {
      artistName2 = [facadeCopy artistName];
      [(_SFPBMediaMetadata *)v5 setArtistName:artistName2];
    }

    albumName = [facadeCopy albumName];

    if (albumName)
    {
      albumName2 = [facadeCopy albumName];
      [(_SFPBMediaMetadata *)v5 setAlbumName:albumName2];
    }

    mediaPunchouts = [facadeCopy mediaPunchouts];
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
    mediaPunchouts2 = [facadeCopy mediaPunchouts];
    v15 = [mediaPunchouts2 countByEnumeratingWithState:&v38 objects:v43 count:16];
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

          v19 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v38 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [mediaPunchouts2 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v16);
    }

    [(_SFPBMediaMetadata *)v5 setMediaPunchouts:v13];
    bundleIdentifiersToExclude = [facadeCopy bundleIdentifiersToExclude];
    if (bundleIdentifiersToExclude)
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
    bundleIdentifiersToExclude2 = [facadeCopy bundleIdentifiersToExclude];
    v23 = [bundleIdentifiersToExclude2 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            objc_enumerationMutation(bundleIdentifiersToExclude2);
          }

          if (*(*(&v34 + 1) + 8 * j))
          {
            [v21 addObject:?];
          }
        }

        v24 = [bundleIdentifiersToExclude2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }

    [(_SFPBMediaMetadata *)v5 setBundleIdentifiersToExcludes:v21];
    disambiguationTitle = [facadeCopy disambiguationTitle];

    if (disambiguationTitle)
    {
      disambiguationTitle2 = [facadeCopy disambiguationTitle];
      [(_SFPBMediaMetadata *)v5 setDisambiguationTitle:disambiguationTitle2];
    }

    mediaIdentifier = [facadeCopy mediaIdentifier];

    if (mediaIdentifier)
    {
      mediaIdentifier2 = [facadeCopy mediaIdentifier];
      [(_SFPBMediaMetadata *)v5 setMediaIdentifier:mediaIdentifier2];
    }

    v31 = v5;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaMetadata)initWithDictionary:(id)dictionary
{
  v53 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = _SFPBMediaMetadata;
  v5 = [(_SFPBMediaMetadata *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mediaName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMediaMetadata *)v5 setMediaName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaMetadata setMediaType:](v5, "setMediaType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"artistName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(_SFPBMediaMetadata *)v5 setArtistName:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"albumName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(_SFPBMediaMetadata *)v5 setAlbumName:v12];
    }

    v38 = v11;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"mediaPunchouts"];
    objc_opt_class();
    v41 = v13;
    v39 = v9;
    v40 = v8;
    if (objc_opt_isKindOfClass())
    {
      v36 = v6;
      v37 = dictionaryCopy;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v47;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v47 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[_SFPBPunchout alloc] initWithDictionary:v19];
              [(_SFPBMediaMetadata *)v5 addMediaPunchouts:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v16);
      }

      dictionaryCopy = v37;
      v8 = v40;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:{@"bundleIdentifiersToExclude", v36, v37}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v43;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v42 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [v27 copy];
              [(_SFPBMediaMetadata *)v5 addBundleIdentifiersToExclude:v28];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v24);
      }

      v9 = v39;
      v8 = v40;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBMediaMetadata *)v5 setDisambiguationTitle:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"mediaIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [v31 copy];
      [(_SFPBMediaMetadata *)v5 setMediaIdentifier:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMediaMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMediaMetadata *)self dictionaryRepresentation];
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
  v33 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_albumName)
  {
    albumName = [(_SFPBMediaMetadata *)self albumName];
    v5 = [albumName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"albumName"];
  }

  if (self->_artistName)
  {
    artistName = [(_SFPBMediaMetadata *)self artistName];
    v7 = [artistName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"artistName"];
  }

  if (self->_bundleIdentifiersToExcludes)
  {
    bundleIdentifiersToExcludes = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
    v9 = [bundleIdentifiersToExcludes copy];
    [dictionary setObject:v9 forKeyedSubscript:@"bundleIdentifiersToExclude"];
  }

  if (self->_disambiguationTitle)
  {
    disambiguationTitle = [(_SFPBMediaMetadata *)self disambiguationTitle];
    v11 = [disambiguationTitle copy];
    [dictionary setObject:v11 forKeyedSubscript:@"disambiguationTitle"];
  }

  if (self->_mediaIdentifier)
  {
    mediaIdentifier = [(_SFPBMediaMetadata *)self mediaIdentifier];
    v13 = [mediaIdentifier copy];
    [dictionary setObject:v13 forKeyedSubscript:@"mediaIdentifier"];
  }

  if (self->_mediaName)
  {
    mediaName = [(_SFPBMediaMetadata *)self mediaName];
    v15 = [mediaName copy];
    [dictionary setObject:v15 forKeyedSubscript:@"mediaName"];
  }

  if ([(NSArray *)self->_mediaPunchouts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = self->_mediaPunchouts;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array forKeyedSubscript:@"mediaPunchouts"];
  }

  if (self->_mediaType)
  {
    mediaType = [(_SFPBMediaMetadata *)self mediaType];
    v25 = @"0";
    switch(mediaType)
    {
      case 0:
        break;
      case 1:
        v25 = @"1";
        break;
      case 2:
        v25 = @"2";
        break;
      case 3:
        v25 = @"3";
        break;
      case 4:
        v25 = @"4";
        break;
      case 5:
        v25 = @"5";
        break;
      case 6:
        v25 = @"6";
        break;
      case 7:
        v25 = @"7";
        break;
      case 8:
        v25 = @"8";
        break;
      case 9:
        v25 = @"9";
        break;
      case 10:
        v25 = @"10";
        break;
      case 11:
        v25 = @"11";
        break;
      case 12:
        v25 = @"12";
        break;
      case 13:
        v25 = @"13";
        break;
      case 14:
        v25 = @"14";
        break;
      case 15:
        v25 = @"15";
        break;
      case 16:
        v25 = @"16";
        break;
      case 17:
        v25 = @"17";
        break;
      case 18:
        v25 = @"18";
        break;
      case 19:
        v25 = @"19";
        break;
      case 20:
        v25 = @"20";
        break;
      default:
        if (mediaType == 100)
        {
          v25 = @"100";
        }

        else
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mediaType];
        }

        break;
    }

    [dictionary setObject:v25 forKeyedSubscript:@"mediaType"];
  }

  v26 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_mediaName hash];
  v4 = 2654435761 * self->_mediaType;
  v5 = v3 ^ [(NSString *)self->_artistName hash];
  v6 = v5 ^ [(NSString *)self->_albumName hash];
  v7 = v6 ^ [(NSArray *)self->_mediaPunchouts hash];
  v8 = v4 ^ v7 ^ [(NSArray *)self->_bundleIdentifiersToExcludes hash];
  v9 = [(NSString *)self->_disambiguationTitle hash];
  return v8 ^ v9 ^ [(NSString *)self->_mediaIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  mediaName = [(_SFPBMediaMetadata *)self mediaName];
  mediaName2 = [equalCopy mediaName];
  if ((mediaName != 0) == (mediaName2 == 0))
  {
    goto LABEL_37;
  }

  mediaName3 = [(_SFPBMediaMetadata *)self mediaName];
  if (mediaName3)
  {
    v8 = mediaName3;
    mediaName4 = [(_SFPBMediaMetadata *)self mediaName];
    mediaName5 = [equalCopy mediaName];
    v11 = [mediaName4 isEqual:mediaName5];

    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  mediaType = self->_mediaType;
  if (mediaType != [equalCopy mediaType])
  {
    goto LABEL_38;
  }

  mediaName = [(_SFPBMediaMetadata *)self artistName];
  mediaName2 = [equalCopy artistName];
  if ((mediaName != 0) == (mediaName2 == 0))
  {
    goto LABEL_37;
  }

  artistName = [(_SFPBMediaMetadata *)self artistName];
  if (artistName)
  {
    v14 = artistName;
    artistName2 = [(_SFPBMediaMetadata *)self artistName];
    artistName3 = [equalCopy artistName];
    v17 = [artistName2 isEqual:artistName3];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  mediaName = [(_SFPBMediaMetadata *)self albumName];
  mediaName2 = [equalCopy albumName];
  if ((mediaName != 0) == (mediaName2 == 0))
  {
    goto LABEL_37;
  }

  albumName = [(_SFPBMediaMetadata *)self albumName];
  if (albumName)
  {
    v19 = albumName;
    albumName2 = [(_SFPBMediaMetadata *)self albumName];
    albumName3 = [equalCopy albumName];
    v22 = [albumName2 isEqual:albumName3];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  mediaName = [(_SFPBMediaMetadata *)self mediaPunchouts];
  mediaName2 = [equalCopy mediaPunchouts];
  if ((mediaName != 0) == (mediaName2 == 0))
  {
    goto LABEL_37;
  }

  mediaPunchouts = [(_SFPBMediaMetadata *)self mediaPunchouts];
  if (mediaPunchouts)
  {
    v24 = mediaPunchouts;
    mediaPunchouts2 = [(_SFPBMediaMetadata *)self mediaPunchouts];
    mediaPunchouts3 = [equalCopy mediaPunchouts];
    v27 = [mediaPunchouts2 isEqual:mediaPunchouts3];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  mediaName = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
  mediaName2 = [equalCopy bundleIdentifiersToExcludes];
  if ((mediaName != 0) == (mediaName2 == 0))
  {
    goto LABEL_37;
  }

  bundleIdentifiersToExcludes = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
  if (bundleIdentifiersToExcludes)
  {
    v29 = bundleIdentifiersToExcludes;
    bundleIdentifiersToExcludes2 = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
    bundleIdentifiersToExcludes3 = [equalCopy bundleIdentifiersToExcludes];
    v32 = [bundleIdentifiersToExcludes2 isEqual:bundleIdentifiersToExcludes3];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  mediaName = [(_SFPBMediaMetadata *)self disambiguationTitle];
  mediaName2 = [equalCopy disambiguationTitle];
  if ((mediaName != 0) == (mediaName2 == 0))
  {
    goto LABEL_37;
  }

  disambiguationTitle = [(_SFPBMediaMetadata *)self disambiguationTitle];
  if (disambiguationTitle)
  {
    v34 = disambiguationTitle;
    disambiguationTitle2 = [(_SFPBMediaMetadata *)self disambiguationTitle];
    disambiguationTitle3 = [equalCopy disambiguationTitle];
    v37 = [disambiguationTitle2 isEqual:disambiguationTitle3];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  mediaName = [(_SFPBMediaMetadata *)self mediaIdentifier];
  mediaName2 = [equalCopy mediaIdentifier];
  if ((mediaName != 0) == (mediaName2 == 0))
  {
LABEL_37:

    goto LABEL_38;
  }

  mediaIdentifier = [(_SFPBMediaMetadata *)self mediaIdentifier];
  if (!mediaIdentifier)
  {

LABEL_41:
    v43 = 1;
    goto LABEL_39;
  }

  v39 = mediaIdentifier;
  mediaIdentifier2 = [(_SFPBMediaMetadata *)self mediaIdentifier];
  mediaIdentifier3 = [equalCopy mediaIdentifier];
  v42 = [mediaIdentifier2 isEqual:mediaIdentifier3];

  if (v42)
  {
    goto LABEL_41;
  }

LABEL_38:
  v43 = 0;
LABEL_39:

  return v43;
}

- (void)writeTo:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  toCopy = to;
  mediaName = [(_SFPBMediaMetadata *)self mediaName];
  if (mediaName)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaMetadata *)self mediaType])
  {
    PBDataWriterWriteInt32Field();
  }

  artistName = [(_SFPBMediaMetadata *)self artistName];
  if (artistName)
  {
    PBDataWriterWriteStringField();
  }

  albumName = [(_SFPBMediaMetadata *)self albumName];
  if (albumName)
  {
    PBDataWriterWriteStringField();
  }

  mediaPunchouts = [(_SFPBMediaMetadata *)self mediaPunchouts];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [mediaPunchouts countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(mediaPunchouts);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [mediaPunchouts countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  bundleIdentifiersToExcludes = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [bundleIdentifiersToExcludes countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(bundleIdentifiersToExcludes);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        PBDataWriterWriteStringField();
        ++v18;
      }

      while (v16 != v18);
      v16 = [bundleIdentifiersToExcludes countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  disambiguationTitle = [(_SFPBMediaMetadata *)self disambiguationTitle];
  if (disambiguationTitle)
  {
    PBDataWriterWriteStringField();
  }

  mediaIdentifier = [(_SFPBMediaMetadata *)self mediaIdentifier];
  if (mediaIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setMediaIdentifier:(id)identifier
{
  v4 = [identifier copy];
  mediaIdentifier = self->_mediaIdentifier;
  self->_mediaIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisambiguationTitle:(id)title
{
  v4 = [title copy];
  disambiguationTitle = self->_disambiguationTitle;
  self->_disambiguationTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addBundleIdentifiersToExclude:(id)exclude
{
  excludeCopy = exclude;
  bundleIdentifiersToExcludes = self->_bundleIdentifiersToExcludes;
  v8 = excludeCopy;
  if (!bundleIdentifiersToExcludes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_bundleIdentifiersToExcludes;
    self->_bundleIdentifiersToExcludes = array;

    excludeCopy = v8;
    bundleIdentifiersToExcludes = self->_bundleIdentifiersToExcludes;
  }

  [(NSArray *)bundleIdentifiersToExcludes addObject:excludeCopy];
}

- (void)setBundleIdentifiersToExclude:(id)exclude
{
  v4 = [exclude copy];
  bundleIdentifiersToExcludes = self->_bundleIdentifiersToExcludes;
  self->_bundleIdentifiersToExcludes = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addMediaPunchouts:(id)punchouts
{
  punchoutsCopy = punchouts;
  mediaPunchouts = self->_mediaPunchouts;
  v8 = punchoutsCopy;
  if (!mediaPunchouts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_mediaPunchouts;
    self->_mediaPunchouts = array;

    punchoutsCopy = v8;
    mediaPunchouts = self->_mediaPunchouts;
  }

  [(NSArray *)mediaPunchouts addObject:punchoutsCopy];
}

- (void)setMediaPunchouts:(id)punchouts
{
  v4 = [punchouts copy];
  mediaPunchouts = self->_mediaPunchouts;
  self->_mediaPunchouts = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAlbumName:(id)name
{
  v4 = [name copy];
  albumName = self->_albumName;
  self->_albumName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setArtistName:(id)name
{
  v4 = [name copy];
  artistName = self->_artistName;
  self->_artistName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMediaName:(id)name
{
  v4 = [name copy];
  mediaName = self->_mediaName;
  self->_mediaName = v4;

  MEMORY[0x1EEE66BB8]();
}

@end