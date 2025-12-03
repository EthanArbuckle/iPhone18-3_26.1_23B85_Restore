@interface _SFPBPlayMediaCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPlayMediaCommand)initWithDictionary:(id)dictionary;
- (_SFPBPlayMediaCommand)initWithFacade:(id)facade;
- (_SFPBPlayMediaCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPlayMediaCommand

- (_SFPBPlayMediaCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPlayMediaCommand *)self init];
  if (v5)
  {
    mediaMetadata = [facadeCopy mediaMetadata];

    if (mediaMetadata)
    {
      v7 = [_SFPBMediaMetadata alloc];
      mediaMetadata2 = [facadeCopy mediaMetadata];
      v9 = [(_SFPBMediaMetadata *)v7 initWithFacade:mediaMetadata2];
      [(_SFPBPlayMediaCommand *)v5 setMediaMetadata:v9];
    }

    if ([facadeCopy hasPlaybackLocation])
    {
      -[_SFPBPlayMediaCommand setPlaybackLocation:](v5, "setPlaybackLocation:", [facadeCopy playbackLocation]);
    }

    if ([facadeCopy hasShouldPause])
    {
      -[_SFPBPlayMediaCommand setShouldPause:](v5, "setShouldPause:", [facadeCopy shouldPause]);
    }

    audioData = [facadeCopy audioData];

    if (audioData)
    {
      v11 = [_SFPBAudioData alloc];
      audioData2 = [facadeCopy audioData];
      v13 = [(_SFPBAudioData *)v11 initWithFacade:audioData2];
      [(_SFPBPlayMediaCommand *)v5 setAudioData:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBPlayMediaCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBPlayMediaCommand;
  v5 = [(_SFPBPlayMediaCommand *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mediaMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBMediaMetadata alloc] initWithDictionary:v6];
      [(_SFPBPlayMediaCommand *)v5 setMediaMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"playbackLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPlayMediaCommand setPlaybackLocation:](v5, "setPlaybackLocation:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"shouldPause"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPlayMediaCommand setShouldPause:](v5, "setShouldPause:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBAudioData alloc] initWithDictionary:v10];
      [(_SFPBPlayMediaCommand *)v5 setAudioData:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBPlayMediaCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPlayMediaCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPlayMediaCommand *)self dictionaryRepresentation];
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
  if (self->_audioData)
  {
    audioData = [(_SFPBPlayMediaCommand *)self audioData];
    dictionaryRepresentation = [audioData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioData"];
    }
  }

  if (self->_mediaMetadata)
  {
    mediaMetadata = [(_SFPBPlayMediaCommand *)self mediaMetadata];
    dictionaryRepresentation2 = [mediaMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"mediaMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"mediaMetadata"];
    }
  }

  if (self->_playbackLocation)
  {
    playbackLocation = [(_SFPBPlayMediaCommand *)self playbackLocation];
    if (playbackLocation >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", playbackLocation];
    }

    else
    {
      v11 = off_1E7ACE560[playbackLocation];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"playbackLocation"];
  }

  if (self->_shouldPause)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPlayMediaCommand shouldPause](self, "shouldPause")}];
    [dictionary setObject:v12 forKeyedSubscript:@"shouldPause"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBMediaMetadata *)self->_mediaMetadata hash];
  if (self->_shouldPause)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v4 = 2654435761 * self->_playbackLocation;
  return v4 ^ v3 ^ v5 ^ [(_SFPBAudioData *)self->_audioData hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  mediaMetadata = [(_SFPBPlayMediaCommand *)self mediaMetadata];
  mediaMetadata2 = [equalCopy mediaMetadata];
  if ((mediaMetadata != 0) == (mediaMetadata2 == 0))
  {
    goto LABEL_13;
  }

  mediaMetadata3 = [(_SFPBPlayMediaCommand *)self mediaMetadata];
  if (mediaMetadata3)
  {
    v8 = mediaMetadata3;
    mediaMetadata4 = [(_SFPBPlayMediaCommand *)self mediaMetadata];
    mediaMetadata5 = [equalCopy mediaMetadata];
    v11 = [mediaMetadata4 isEqual:mediaMetadata5];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  playbackLocation = self->_playbackLocation;
  if (playbackLocation != [equalCopy playbackLocation])
  {
    goto LABEL_14;
  }

  shouldPause = self->_shouldPause;
  if (shouldPause != [equalCopy shouldPause])
  {
    goto LABEL_14;
  }

  mediaMetadata = [(_SFPBPlayMediaCommand *)self audioData];
  mediaMetadata2 = [equalCopy audioData];
  if ((mediaMetadata != 0) != (mediaMetadata2 == 0))
  {
    audioData = [(_SFPBPlayMediaCommand *)self audioData];
    if (!audioData)
    {

LABEL_17:
      v19 = 1;
      goto LABEL_15;
    }

    v15 = audioData;
    audioData2 = [(_SFPBPlayMediaCommand *)self audioData];
    audioData3 = [equalCopy audioData];
    v18 = [audioData2 isEqual:audioData3];

    if (v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_13:
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  mediaMetadata = [(_SFPBPlayMediaCommand *)self mediaMetadata];
  if (mediaMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBPlayMediaCommand *)self playbackLocation])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPlayMediaCommand *)self shouldPause])
  {
    PBDataWriterWriteBOOLField();
  }

  audioData = [(_SFPBPlayMediaCommand *)self audioData];
  if (audioData)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end