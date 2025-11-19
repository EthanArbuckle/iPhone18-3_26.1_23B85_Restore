@interface _SFPBPlayMediaCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPlayMediaCommand)initWithDictionary:(id)a3;
- (_SFPBPlayMediaCommand)initWithFacade:(id)a3;
- (_SFPBPlayMediaCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPlayMediaCommand

- (_SFPBPlayMediaCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPlayMediaCommand *)self init];
  if (v5)
  {
    v6 = [v4 mediaMetadata];

    if (v6)
    {
      v7 = [_SFPBMediaMetadata alloc];
      v8 = [v4 mediaMetadata];
      v9 = [(_SFPBMediaMetadata *)v7 initWithFacade:v8];
      [(_SFPBPlayMediaCommand *)v5 setMediaMetadata:v9];
    }

    if ([v4 hasPlaybackLocation])
    {
      -[_SFPBPlayMediaCommand setPlaybackLocation:](v5, "setPlaybackLocation:", [v4 playbackLocation]);
    }

    if ([v4 hasShouldPause])
    {
      -[_SFPBPlayMediaCommand setShouldPause:](v5, "setShouldPause:", [v4 shouldPause]);
    }

    v10 = [v4 audioData];

    if (v10)
    {
      v11 = [_SFPBAudioData alloc];
      v12 = [v4 audioData];
      v13 = [(_SFPBAudioData *)v11 initWithFacade:v12];
      [(_SFPBPlayMediaCommand *)v5 setAudioData:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBPlayMediaCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _SFPBPlayMediaCommand;
  v5 = [(_SFPBPlayMediaCommand *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mediaMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBMediaMetadata alloc] initWithDictionary:v6];
      [(_SFPBPlayMediaCommand *)v5 setMediaMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"playbackLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPlayMediaCommand setPlaybackLocation:](v5, "setPlaybackLocation:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"shouldPause"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPlayMediaCommand setShouldPause:](v5, "setShouldPause:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"audioData"];
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

- (_SFPBPlayMediaCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPlayMediaCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPlayMediaCommand *)self dictionaryRepresentation];
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
  if (self->_audioData)
  {
    v4 = [(_SFPBPlayMediaCommand *)self audioData];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"audioData"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"audioData"];
    }
  }

  if (self->_mediaMetadata)
  {
    v7 = [(_SFPBPlayMediaCommand *)self mediaMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"mediaMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"mediaMetadata"];
    }
  }

  if (self->_playbackLocation)
  {
    v10 = [(_SFPBPlayMediaCommand *)self playbackLocation];
    if (v10 >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E7ACE560[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"playbackLocation"];
  }

  if (self->_shouldPause)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPlayMediaCommand shouldPause](self, "shouldPause")}];
    [v3 setObject:v12 forKeyedSubscript:@"shouldPause"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = [(_SFPBPlayMediaCommand *)self mediaMetadata];
  v6 = [v4 mediaMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_13;
  }

  v7 = [(_SFPBPlayMediaCommand *)self mediaMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPlayMediaCommand *)self mediaMetadata];
    v10 = [v4 mediaMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  playbackLocation = self->_playbackLocation;
  if (playbackLocation != [v4 playbackLocation])
  {
    goto LABEL_14;
  }

  shouldPause = self->_shouldPause;
  if (shouldPause != [v4 shouldPause])
  {
    goto LABEL_14;
  }

  v5 = [(_SFPBPlayMediaCommand *)self audioData];
  v6 = [v4 audioData];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(_SFPBPlayMediaCommand *)self audioData];
    if (!v14)
    {

LABEL_17:
      v19 = 1;
      goto LABEL_15;
    }

    v15 = v14;
    v16 = [(_SFPBPlayMediaCommand *)self audioData];
    v17 = [v4 audioData];
    v18 = [v16 isEqual:v17];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(_SFPBPlayMediaCommand *)self mediaMetadata];
  if (v4)
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

  v5 = [(_SFPBPlayMediaCommand *)self audioData];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end