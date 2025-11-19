@interface _SFPBMediaMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMediaMetadata)initWithDictionary:(id)a3;
- (_SFPBMediaMetadata)initWithFacade:(id)a3;
- (_SFPBMediaMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBundleIdentifiersToExclude:(id)a3;
- (void)addMediaPunchouts:(id)a3;
- (void)setAlbumName:(id)a3;
- (void)setArtistName:(id)a3;
- (void)setBundleIdentifiersToExclude:(id)a3;
- (void)setDisambiguationTitle:(id)a3;
- (void)setMediaIdentifier:(id)a3;
- (void)setMediaName:(id)a3;
- (void)setMediaPunchouts:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMediaMetadata

- (_SFPBMediaMetadata)initWithFacade:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMediaMetadata *)self init];
  if (v5)
  {
    v6 = [v4 mediaName];

    if (v6)
    {
      v7 = [v4 mediaName];
      [(_SFPBMediaMetadata *)v5 setMediaName:v7];
    }

    if ([v4 hasMediaType])
    {
      -[_SFPBMediaMetadata setMediaType:](v5, "setMediaType:", [v4 mediaType]);
    }

    v8 = [v4 artistName];

    if (v8)
    {
      v9 = [v4 artistName];
      [(_SFPBMediaMetadata *)v5 setArtistName:v9];
    }

    v10 = [v4 albumName];

    if (v10)
    {
      v11 = [v4 albumName];
      [(_SFPBMediaMetadata *)v5 setAlbumName:v11];
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
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
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

          v19 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v38 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v16);
    }

    [(_SFPBMediaMetadata *)v5 setMediaPunchouts:v13];
    v20 = [v4 bundleIdentifiersToExclude];
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
    v22 = [v4 bundleIdentifiersToExclude];
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
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

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }

    [(_SFPBMediaMetadata *)v5 setBundleIdentifiersToExcludes:v21];
    v27 = [v4 disambiguationTitle];

    if (v27)
    {
      v28 = [v4 disambiguationTitle];
      [(_SFPBMediaMetadata *)v5 setDisambiguationTitle:v28];
    }

    v29 = [v4 mediaIdentifier];

    if (v29)
    {
      v30 = [v4 mediaIdentifier];
      [(_SFPBMediaMetadata *)v5 setMediaIdentifier:v30];
    }

    v31 = v5;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMediaMetadata)initWithDictionary:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = _SFPBMediaMetadata;
  v5 = [(_SFPBMediaMetadata *)&v50 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mediaName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMediaMetadata *)v5 setMediaName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"mediaType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaMetadata setMediaType:](v5, "setMediaType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"artistName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(_SFPBMediaMetadata *)v5 setArtistName:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"albumName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(_SFPBMediaMetadata *)v5 setAlbumName:v12];
    }

    v38 = v11;
    v13 = [v4 objectForKeyedSubscript:@"mediaPunchouts"];
    objc_opt_class();
    v41 = v13;
    v39 = v9;
    v40 = v8;
    if (objc_opt_isKindOfClass())
    {
      v36 = v6;
      v37 = v4;
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

      v4 = v37;
      v8 = v40;
    }

    v21 = [v4 objectForKeyedSubscript:{@"bundleIdentifiersToExclude", v36, v37}];
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

    v29 = [v4 objectForKeyedSubscript:@"disambiguationTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBMediaMetadata *)v5 setDisambiguationTitle:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"mediaIdentifier"];
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

- (_SFPBMediaMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMediaMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMediaMetadata *)self dictionaryRepresentation];
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
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_albumName)
  {
    v4 = [(_SFPBMediaMetadata *)self albumName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"albumName"];
  }

  if (self->_artistName)
  {
    v6 = [(_SFPBMediaMetadata *)self artistName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"artistName"];
  }

  if (self->_bundleIdentifiersToExcludes)
  {
    v8 = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"bundleIdentifiersToExclude"];
  }

  if (self->_disambiguationTitle)
  {
    v10 = [(_SFPBMediaMetadata *)self disambiguationTitle];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"disambiguationTitle"];
  }

  if (self->_mediaIdentifier)
  {
    v12 = [(_SFPBMediaMetadata *)self mediaIdentifier];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"mediaIdentifier"];
  }

  if (self->_mediaName)
  {
    v14 = [(_SFPBMediaMetadata *)self mediaName];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"mediaName"];
  }

  if ([(NSArray *)self->_mediaPunchouts count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
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

          v22 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          if (v22)
          {
            [v16 addObject:v22];
          }

          else
          {
            v23 = [MEMORY[0x1E695DFB0] null];
            [v16 addObject:v23];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"mediaPunchouts"];
  }

  if (self->_mediaType)
  {
    v24 = [(_SFPBMediaMetadata *)self mediaType];
    v25 = @"0";
    switch(v24)
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
        if (v24 == 100)
        {
          v25 = @"100";
        }

        else
        {
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v24];
        }

        break;
    }

    [v3 setObject:v25 forKeyedSubscript:@"mediaType"];
  }

  v26 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = [(_SFPBMediaMetadata *)self mediaName];
  v6 = [v4 mediaName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v7 = [(_SFPBMediaMetadata *)self mediaName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMediaMetadata *)self mediaName];
    v10 = [v4 mediaName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  mediaType = self->_mediaType;
  if (mediaType != [v4 mediaType])
  {
    goto LABEL_38;
  }

  v5 = [(_SFPBMediaMetadata *)self artistName];
  v6 = [v4 artistName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v13 = [(_SFPBMediaMetadata *)self artistName];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBMediaMetadata *)self artistName];
    v16 = [v4 artistName];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaMetadata *)self albumName];
  v6 = [v4 albumName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v18 = [(_SFPBMediaMetadata *)self albumName];
  if (v18)
  {
    v19 = v18;
    v20 = [(_SFPBMediaMetadata *)self albumName];
    v21 = [v4 albumName];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaMetadata *)self mediaPunchouts];
  v6 = [v4 mediaPunchouts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v23 = [(_SFPBMediaMetadata *)self mediaPunchouts];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBMediaMetadata *)self mediaPunchouts];
    v26 = [v4 mediaPunchouts];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
  v6 = [v4 bundleIdentifiersToExcludes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v28 = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
    v31 = [v4 bundleIdentifiersToExcludes];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaMetadata *)self disambiguationTitle];
  v6 = [v4 disambiguationTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_37;
  }

  v33 = [(_SFPBMediaMetadata *)self disambiguationTitle];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBMediaMetadata *)self disambiguationTitle];
    v36 = [v4 disambiguationTitle];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaMetadata *)self mediaIdentifier];
  v6 = [v4 mediaIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_37:

    goto LABEL_38;
  }

  v38 = [(_SFPBMediaMetadata *)self mediaIdentifier];
  if (!v38)
  {

LABEL_41:
    v43 = 1;
    goto LABEL_39;
  }

  v39 = v38;
  v40 = [(_SFPBMediaMetadata *)self mediaIdentifier];
  v41 = [v4 mediaIdentifier];
  v42 = [v40 isEqual:v41];

  if (v42)
  {
    goto LABEL_41;
  }

LABEL_38:
  v43 = 0;
LABEL_39:

  return v43;
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMediaMetadata *)self mediaName];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaMetadata *)self mediaType])
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_SFPBMediaMetadata *)self artistName];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBMediaMetadata *)self albumName];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBMediaMetadata *)self mediaPunchouts];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v14 = [(_SFPBMediaMetadata *)self bundleIdentifiersToExcludes];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * v18);
        PBDataWriterWriteStringField();
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = [(_SFPBMediaMetadata *)self disambiguationTitle];
  if (v20)
  {
    PBDataWriterWriteStringField();
  }

  v21 = [(_SFPBMediaMetadata *)self mediaIdentifier];
  if (v21)
  {
    PBDataWriterWriteStringField();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setMediaIdentifier:(id)a3
{
  v4 = [a3 copy];
  mediaIdentifier = self->_mediaIdentifier;
  self->_mediaIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDisambiguationTitle:(id)a3
{
  v4 = [a3 copy];
  disambiguationTitle = self->_disambiguationTitle;
  self->_disambiguationTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addBundleIdentifiersToExclude:(id)a3
{
  v4 = a3;
  bundleIdentifiersToExcludes = self->_bundleIdentifiersToExcludes;
  v8 = v4;
  if (!bundleIdentifiersToExcludes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_bundleIdentifiersToExcludes;
    self->_bundleIdentifiersToExcludes = v6;

    v4 = v8;
    bundleIdentifiersToExcludes = self->_bundleIdentifiersToExcludes;
  }

  [(NSArray *)bundleIdentifiersToExcludes addObject:v4];
}

- (void)setBundleIdentifiersToExclude:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifiersToExcludes = self->_bundleIdentifiersToExcludes;
  self->_bundleIdentifiersToExcludes = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addMediaPunchouts:(id)a3
{
  v4 = a3;
  mediaPunchouts = self->_mediaPunchouts;
  v8 = v4;
  if (!mediaPunchouts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_mediaPunchouts;
    self->_mediaPunchouts = v6;

    v4 = v8;
    mediaPunchouts = self->_mediaPunchouts;
  }

  [(NSArray *)mediaPunchouts addObject:v4];
}

- (void)setMediaPunchouts:(id)a3
{
  v4 = [a3 copy];
  mediaPunchouts = self->_mediaPunchouts;
  self->_mediaPunchouts = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAlbumName:(id)a3
{
  v4 = [a3 copy];
  albumName = self->_albumName;
  self->_albumName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setArtistName:(id)a3
{
  v4 = [a3 copy];
  artistName = self->_artistName;
  self->_artistName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMediaName:(id)a3
{
  v4 = [a3 copy];
  mediaName = self->_mediaName;
  self->_mediaName = v4;

  MEMORY[0x1EEE66BB8]();
}

@end