@interface _SFPBMediaArtworkImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMediaArtworkImage)initWithDictionary:(id)a3;
- (_SFPBMediaArtworkImage)initWithFacade:(id)a3;
- (_SFPBMediaArtworkImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setPersistentID:(id)a3;
- (void)setSpotlightIdentifier:(id)a3;
- (void)setUniversalLibraryID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMediaArtworkImage

- (_SFPBMediaArtworkImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBMediaArtworkImage *)self init];
  if (v5)
  {
    v6 = [v4 persistentID];

    if (v6)
    {
      v7 = [v4 persistentID];
      [(_SFPBMediaArtworkImage *)v5 setPersistentID:v7];
    }

    v8 = [v4 spotlightIdentifier];

    if (v8)
    {
      v9 = [v4 spotlightIdentifier];
      [(_SFPBMediaArtworkImage *)v5 setSpotlightIdentifier:v9];
    }

    if ([v4 hasMediaEntityType])
    {
      -[_SFPBMediaArtworkImage setMediaEntityType:](v5, "setMediaEntityType:", [v4 mediaEntityType]);
    }

    v10 = [v4 universalLibraryID];

    if (v10)
    {
      v11 = [v4 universalLibraryID];
      [(_SFPBMediaArtworkImage *)v5 setUniversalLibraryID:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBMediaArtworkImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFPBMediaArtworkImage;
  v5 = [(_SFPBMediaArtworkImage *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"persistentID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMediaArtworkImage *)v5 setPersistentID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"spotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBMediaArtworkImage *)v5 setSpotlightIdentifier:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"mediaEntityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaArtworkImage setMediaEntityType:](v5, "setMediaEntityType:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"universalLibraryID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(_SFPBMediaArtworkImage *)v5 setUniversalLibraryID:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBMediaArtworkImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMediaArtworkImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMediaArtworkImage *)self dictionaryRepresentation];
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
  if (self->_mediaEntityType)
  {
    v4 = [(_SFPBMediaArtworkImage *)self mediaEntityType];
    if (v4 >= 7)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE4C8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"mediaEntityType"];
  }

  if (self->_persistentID)
  {
    v6 = [(_SFPBMediaArtworkImage *)self persistentID];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"persistentID"];
  }

  if (self->_spotlightIdentifier)
  {
    v8 = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"spotlightIdentifier"];
  }

  if (self->_universalLibraryID)
  {
    v10 = [(_SFPBMediaArtworkImage *)self universalLibraryID];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"universalLibraryID"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_persistentID hash];
  v4 = [(NSString *)self->_spotlightIdentifier hash];
  v5 = 2654435761 * self->_mediaEntityType;
  return v4 ^ v3 ^ [(NSString *)self->_universalLibraryID hash]^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = [(_SFPBMediaArtworkImage *)self persistentID];
  v6 = [v4 persistentID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_17;
  }

  v7 = [(_SFPBMediaArtworkImage *)self persistentID];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMediaArtworkImage *)self persistentID];
    v10 = [v4 persistentID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
  v6 = [v4 spotlightIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_17;
  }

  v12 = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
    v15 = [v4 spotlightIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  mediaEntityType = self->_mediaEntityType;
  if (mediaEntityType != [v4 mediaEntityType])
  {
    goto LABEL_18;
  }

  v5 = [(_SFPBMediaArtworkImage *)self universalLibraryID];
  v6 = [v4 universalLibraryID];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v18 = [(_SFPBMediaArtworkImage *)self universalLibraryID];
  if (!v18)
  {

LABEL_21:
    v23 = 1;
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [(_SFPBMediaArtworkImage *)self universalLibraryID];
  v21 = [v4 universalLibraryID];
  v22 = [v20 isEqual:v21];

  if (v22)
  {
    goto LABEL_21;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_SFPBMediaArtworkImage *)self persistentID];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaArtworkImage *)self mediaEntityType])
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_SFPBMediaArtworkImage *)self universalLibraryID];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setUniversalLibraryID:(id)a3
{
  v4 = [a3 copy];
  universalLibraryID = self->_universalLibraryID;
  self->_universalLibraryID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSpotlightIdentifier:(id)a3
{
  v4 = [a3 copy];
  spotlightIdentifier = self->_spotlightIdentifier;
  self->_spotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersistentID:(id)a3
{
  v4 = [a3 copy];
  persistentID = self->_persistentID;
  self->_persistentID = v4;

  MEMORY[0x1EEE66BB8]();
}

@end