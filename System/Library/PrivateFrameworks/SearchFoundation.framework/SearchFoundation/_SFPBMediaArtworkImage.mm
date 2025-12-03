@interface _SFPBMediaArtworkImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMediaArtworkImage)initWithDictionary:(id)dictionary;
- (_SFPBMediaArtworkImage)initWithFacade:(id)facade;
- (_SFPBMediaArtworkImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setPersistentID:(id)d;
- (void)setSpotlightIdentifier:(id)identifier;
- (void)setUniversalLibraryID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMediaArtworkImage

- (_SFPBMediaArtworkImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBMediaArtworkImage *)self init];
  if (v5)
  {
    persistentID = [facadeCopy persistentID];

    if (persistentID)
    {
      persistentID2 = [facadeCopy persistentID];
      [(_SFPBMediaArtworkImage *)v5 setPersistentID:persistentID2];
    }

    spotlightIdentifier = [facadeCopy spotlightIdentifier];

    if (spotlightIdentifier)
    {
      spotlightIdentifier2 = [facadeCopy spotlightIdentifier];
      [(_SFPBMediaArtworkImage *)v5 setSpotlightIdentifier:spotlightIdentifier2];
    }

    if ([facadeCopy hasMediaEntityType])
    {
      -[_SFPBMediaArtworkImage setMediaEntityType:](v5, "setMediaEntityType:", [facadeCopy mediaEntityType]);
    }

    universalLibraryID = [facadeCopy universalLibraryID];

    if (universalLibraryID)
    {
      universalLibraryID2 = [facadeCopy universalLibraryID];
      [(_SFPBMediaArtworkImage *)v5 setUniversalLibraryID:universalLibraryID2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBMediaArtworkImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBMediaArtworkImage;
  v5 = [(_SFPBMediaArtworkImage *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"persistentID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMediaArtworkImage *)v5 setPersistentID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"spotlightIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBMediaArtworkImage *)v5 setSpotlightIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"mediaEntityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMediaArtworkImage setMediaEntityType:](v5, "setMediaEntityType:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"universalLibraryID"];
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

- (_SFPBMediaArtworkImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMediaArtworkImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMediaArtworkImage *)self dictionaryRepresentation];
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
  if (self->_mediaEntityType)
  {
    mediaEntityType = [(_SFPBMediaArtworkImage *)self mediaEntityType];
    if (mediaEntityType >= 7)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mediaEntityType];
    }

    else
    {
      v5 = off_1E7ACE4C8[mediaEntityType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"mediaEntityType"];
  }

  if (self->_persistentID)
  {
    persistentID = [(_SFPBMediaArtworkImage *)self persistentID];
    v7 = [persistentID copy];
    [dictionary setObject:v7 forKeyedSubscript:@"persistentID"];
  }

  if (self->_spotlightIdentifier)
  {
    spotlightIdentifier = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
    v9 = [spotlightIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"spotlightIdentifier"];
  }

  if (self->_universalLibraryID)
  {
    universalLibraryID = [(_SFPBMediaArtworkImage *)self universalLibraryID];
    v11 = [universalLibraryID copy];
    [dictionary setObject:v11 forKeyedSubscript:@"universalLibraryID"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_persistentID hash];
  v4 = [(NSString *)self->_spotlightIdentifier hash];
  v5 = 2654435761 * self->_mediaEntityType;
  return v4 ^ v3 ^ [(NSString *)self->_universalLibraryID hash]^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  persistentID = [(_SFPBMediaArtworkImage *)self persistentID];
  persistentID2 = [equalCopy persistentID];
  if ((persistentID != 0) == (persistentID2 == 0))
  {
    goto LABEL_17;
  }

  persistentID3 = [(_SFPBMediaArtworkImage *)self persistentID];
  if (persistentID3)
  {
    v8 = persistentID3;
    persistentID4 = [(_SFPBMediaArtworkImage *)self persistentID];
    persistentID5 = [equalCopy persistentID];
    v11 = [persistentID4 isEqual:persistentID5];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  persistentID = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
  persistentID2 = [equalCopy spotlightIdentifier];
  if ((persistentID != 0) == (persistentID2 == 0))
  {
    goto LABEL_17;
  }

  spotlightIdentifier = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
  if (spotlightIdentifier)
  {
    v13 = spotlightIdentifier;
    spotlightIdentifier2 = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
    spotlightIdentifier3 = [equalCopy spotlightIdentifier];
    v16 = [spotlightIdentifier2 isEqual:spotlightIdentifier3];

    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  mediaEntityType = self->_mediaEntityType;
  if (mediaEntityType != [equalCopy mediaEntityType])
  {
    goto LABEL_18;
  }

  persistentID = [(_SFPBMediaArtworkImage *)self universalLibraryID];
  persistentID2 = [equalCopy universalLibraryID];
  if ((persistentID != 0) == (persistentID2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  universalLibraryID = [(_SFPBMediaArtworkImage *)self universalLibraryID];
  if (!universalLibraryID)
  {

LABEL_21:
    v23 = 1;
    goto LABEL_19;
  }

  v19 = universalLibraryID;
  universalLibraryID2 = [(_SFPBMediaArtworkImage *)self universalLibraryID];
  universalLibraryID3 = [equalCopy universalLibraryID];
  v22 = [universalLibraryID2 isEqual:universalLibraryID3];

  if (v22)
  {
    goto LABEL_21;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  persistentID = [(_SFPBMediaArtworkImage *)self persistentID];
  if (persistentID)
  {
    PBDataWriterWriteStringField();
  }

  spotlightIdentifier = [(_SFPBMediaArtworkImage *)self spotlightIdentifier];
  if (spotlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMediaArtworkImage *)self mediaEntityType])
  {
    PBDataWriterWriteInt32Field();
  }

  universalLibraryID = [(_SFPBMediaArtworkImage *)self universalLibraryID];
  if (universalLibraryID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setUniversalLibraryID:(id)d
{
  v4 = [d copy];
  universalLibraryID = self->_universalLibraryID;
  self->_universalLibraryID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSpotlightIdentifier:(id)identifier
{
  v4 = [identifier copy];
  spotlightIdentifier = self->_spotlightIdentifier;
  self->_spotlightIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersistentID:(id)d
{
  v4 = [d copy];
  persistentID = self->_persistentID;
  self->_persistentID = v4;

  MEMORY[0x1EEE66BB8]();
}

@end