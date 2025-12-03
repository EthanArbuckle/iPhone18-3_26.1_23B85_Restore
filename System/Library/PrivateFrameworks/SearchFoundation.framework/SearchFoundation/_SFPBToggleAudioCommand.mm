@interface _SFPBToggleAudioCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBToggleAudioCommand)initWithDictionary:(id)dictionary;
- (_SFPBToggleAudioCommand)initWithFacade:(id)facade;
- (_SFPBToggleAudioCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLocalMediaIdentifier:(id)identifier;
- (void)setPersistentIdentifier:(id)identifier;
- (void)setUniversalLibraryIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBToggleAudioCommand

- (_SFPBToggleAudioCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBToggleAudioCommand *)self init];
  if (v5)
  {
    localMediaIdentifier = [facadeCopy localMediaIdentifier];

    if (localMediaIdentifier)
    {
      localMediaIdentifier2 = [facadeCopy localMediaIdentifier];
      [(_SFPBToggleAudioCommand *)v5 setLocalMediaIdentifier:localMediaIdentifier2];
    }

    persistentIdentifier = [facadeCopy persistentIdentifier];

    if (persistentIdentifier)
    {
      persistentIdentifier2 = [facadeCopy persistentIdentifier];
      [(_SFPBToggleAudioCommand *)v5 setPersistentIdentifier:persistentIdentifier2];
    }

    if ([facadeCopy hasMediaEntityType])
    {
      -[_SFPBToggleAudioCommand setMediaEntityType:](v5, "setMediaEntityType:", [facadeCopy mediaEntityType]);
    }

    universalLibraryIdentifier = [facadeCopy universalLibraryIdentifier];

    if (universalLibraryIdentifier)
    {
      universalLibraryIdentifier2 = [facadeCopy universalLibraryIdentifier];
      [(_SFPBToggleAudioCommand *)v5 setUniversalLibraryIdentifier:universalLibraryIdentifier2];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBToggleAudioCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBToggleAudioCommand;
  v5 = [(_SFPBToggleAudioCommand *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"localMediaIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBToggleAudioCommand *)v5 setLocalMediaIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"persistentIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBToggleAudioCommand *)v5 setPersistentIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"mediaEntityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBToggleAudioCommand setMediaEntityType:](v5, "setMediaEntityType:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"universalLibraryIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(_SFPBToggleAudioCommand *)v5 setUniversalLibraryIdentifier:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBToggleAudioCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBToggleAudioCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBToggleAudioCommand *)self dictionaryRepresentation];
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
  if (self->_localMediaIdentifier)
  {
    localMediaIdentifier = [(_SFPBToggleAudioCommand *)self localMediaIdentifier];
    v5 = [localMediaIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"localMediaIdentifier"];
  }

  if (self->_mediaEntityType)
  {
    mediaEntityType = [(_SFPBToggleAudioCommand *)self mediaEntityType];
    if (mediaEntityType >= 7)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", mediaEntityType];
    }

    else
    {
      v7 = off_1E7ACE4C8[mediaEntityType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"mediaEntityType"];
  }

  if (self->_persistentIdentifier)
  {
    persistentIdentifier = [(_SFPBToggleAudioCommand *)self persistentIdentifier];
    v9 = [persistentIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"persistentIdentifier"];
  }

  if (self->_universalLibraryIdentifier)
  {
    universalLibraryIdentifier = [(_SFPBToggleAudioCommand *)self universalLibraryIdentifier];
    v11 = [universalLibraryIdentifier copy];
    [dictionary setObject:v11 forKeyedSubscript:@"universalLibraryIdentifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_localMediaIdentifier hash];
  v4 = [(NSString *)self->_persistentIdentifier hash];
  v5 = 2654435761 * self->_mediaEntityType;
  return v4 ^ v3 ^ [(NSString *)self->_universalLibraryIdentifier hash]^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  localMediaIdentifier = [(_SFPBToggleAudioCommand *)self localMediaIdentifier];
  localMediaIdentifier2 = [equalCopy localMediaIdentifier];
  if ((localMediaIdentifier != 0) == (localMediaIdentifier2 == 0))
  {
    goto LABEL_17;
  }

  localMediaIdentifier3 = [(_SFPBToggleAudioCommand *)self localMediaIdentifier];
  if (localMediaIdentifier3)
  {
    v8 = localMediaIdentifier3;
    localMediaIdentifier4 = [(_SFPBToggleAudioCommand *)self localMediaIdentifier];
    localMediaIdentifier5 = [equalCopy localMediaIdentifier];
    v11 = [localMediaIdentifier4 isEqual:localMediaIdentifier5];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  localMediaIdentifier = [(_SFPBToggleAudioCommand *)self persistentIdentifier];
  localMediaIdentifier2 = [equalCopy persistentIdentifier];
  if ((localMediaIdentifier != 0) == (localMediaIdentifier2 == 0))
  {
    goto LABEL_17;
  }

  persistentIdentifier = [(_SFPBToggleAudioCommand *)self persistentIdentifier];
  if (persistentIdentifier)
  {
    v13 = persistentIdentifier;
    persistentIdentifier2 = [(_SFPBToggleAudioCommand *)self persistentIdentifier];
    persistentIdentifier3 = [equalCopy persistentIdentifier];
    v16 = [persistentIdentifier2 isEqual:persistentIdentifier3];

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

  localMediaIdentifier = [(_SFPBToggleAudioCommand *)self universalLibraryIdentifier];
  localMediaIdentifier2 = [equalCopy universalLibraryIdentifier];
  if ((localMediaIdentifier != 0) == (localMediaIdentifier2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  universalLibraryIdentifier = [(_SFPBToggleAudioCommand *)self universalLibraryIdentifier];
  if (!universalLibraryIdentifier)
  {

LABEL_21:
    v23 = 1;
    goto LABEL_19;
  }

  v19 = universalLibraryIdentifier;
  universalLibraryIdentifier2 = [(_SFPBToggleAudioCommand *)self universalLibraryIdentifier];
  universalLibraryIdentifier3 = [equalCopy universalLibraryIdentifier];
  v22 = [universalLibraryIdentifier2 isEqual:universalLibraryIdentifier3];

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
  localMediaIdentifier = [(_SFPBToggleAudioCommand *)self localMediaIdentifier];
  if (localMediaIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  persistentIdentifier = [(_SFPBToggleAudioCommand *)self persistentIdentifier];
  if (persistentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBToggleAudioCommand *)self mediaEntityType])
  {
    PBDataWriterWriteInt32Field();
  }

  universalLibraryIdentifier = [(_SFPBToggleAudioCommand *)self universalLibraryIdentifier];
  if (universalLibraryIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setUniversalLibraryIdentifier:(id)identifier
{
  v4 = [identifier copy];
  universalLibraryIdentifier = self->_universalLibraryIdentifier;
  self->_universalLibraryIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersistentIdentifier:(id)identifier
{
  v4 = [identifier copy];
  persistentIdentifier = self->_persistentIdentifier;
  self->_persistentIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setLocalMediaIdentifier:(id)identifier
{
  v4 = [identifier copy];
  localMediaIdentifier = self->_localMediaIdentifier;
  self->_localMediaIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end