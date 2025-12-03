@interface _SFPBPlayAudioButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPlayAudioButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBPlayAudioButtonItem)initWithFacade:(id)facade;
- (_SFPBPlayAudioButtonItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPlayAudioButtonItem

- (_SFPBPlayAudioButtonItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPlayAudioButtonItem *)self init];
  if (v5)
  {
    mediaMetadata = [facadeCopy mediaMetadata];

    if (mediaMetadata)
    {
      v7 = [_SFPBMediaMetadata alloc];
      mediaMetadata2 = [facadeCopy mediaMetadata];
      v9 = [(_SFPBMediaMetadata *)v7 initWithFacade:mediaMetadata2];
      [(_SFPBPlayAudioButtonItem *)v5 setMediaMetadata:v9];
    }

    toggleButtonConfiguration = [facadeCopy toggleButtonConfiguration];

    if (toggleButtonConfiguration)
    {
      v11 = [_SFPBToggleButtonConfiguration alloc];
      toggleButtonConfiguration2 = [facadeCopy toggleButtonConfiguration];
      v13 = [(_SFPBToggleButtonConfiguration *)v11 initWithFacade:toggleButtonConfiguration2];
      [(_SFPBPlayAudioButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    audioData = [facadeCopy audioData];

    if (audioData)
    {
      v15 = [_SFPBAudioData alloc];
      audioData2 = [facadeCopy audioData];
      v17 = [(_SFPBAudioData *)v15 initWithFacade:audioData2];
      [(_SFPBPlayAudioButtonItem *)v5 setAudioData:v17];
    }

    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBPlayAudioButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBPlayAudioButtonItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBPlayAudioButtonItem;
  v5 = [(_SFPBPlayAudioButtonItem *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mediaMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBMediaMetadata alloc] initWithDictionary:v6];
      [(_SFPBPlayAudioButtonItem *)v5 setMediaMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"toggleButtonConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBToggleButtonConfiguration alloc] initWithDictionary:v8];
      [(_SFPBPlayAudioButtonItem *)v5 setToggleButtonConfiguration:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBAudioData alloc] initWithDictionary:v10];
      [(_SFPBPlayAudioButtonItem *)v5 setAudioData:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPlayAudioButtonItem setUniqueId:](v5, "setUniqueId:", [v12 unsignedLongLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBPlayAudioButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPlayAudioButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPlayAudioButtonItem *)self dictionaryRepresentation];
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
    audioData = [(_SFPBPlayAudioButtonItem *)self audioData];
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
    mediaMetadata = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
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

  if (self->_toggleButtonConfiguration)
  {
    toggleButtonConfiguration = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
    dictionaryRepresentation3 = [toggleButtonConfiguration dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"toggleButtonConfiguration"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"toggleButtonConfiguration"];
    }
  }

  if (self->_uniqueId)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBPlayAudioButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v13 forKeyedSubscript:@"uniqueId"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBMediaMetadata *)self->_mediaMetadata hash];
  v4 = [(_SFPBToggleButtonConfiguration *)self->_toggleButtonConfiguration hash];
  return v4 ^ v3 ^ [(_SFPBAudioData *)self->_audioData hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  mediaMetadata = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
  mediaMetadata2 = [equalCopy mediaMetadata];
  if ((mediaMetadata != 0) == (mediaMetadata2 == 0))
  {
    goto LABEL_16;
  }

  mediaMetadata3 = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
  if (mediaMetadata3)
  {
    v8 = mediaMetadata3;
    mediaMetadata4 = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
    mediaMetadata5 = [equalCopy mediaMetadata];
    v11 = [mediaMetadata4 isEqual:mediaMetadata5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  mediaMetadata = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
  mediaMetadata2 = [equalCopy toggleButtonConfiguration];
  if ((mediaMetadata != 0) == (mediaMetadata2 == 0))
  {
    goto LABEL_16;
  }

  toggleButtonConfiguration = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
  if (toggleButtonConfiguration)
  {
    v13 = toggleButtonConfiguration;
    toggleButtonConfiguration2 = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
    toggleButtonConfiguration3 = [equalCopy toggleButtonConfiguration];
    v16 = [toggleButtonConfiguration2 isEqual:toggleButtonConfiguration3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  mediaMetadata = [(_SFPBPlayAudioButtonItem *)self audioData];
  mediaMetadata2 = [equalCopy audioData];
  if ((mediaMetadata != 0) != (mediaMetadata2 == 0))
  {
    audioData = [(_SFPBPlayAudioButtonItem *)self audioData];
    if (!audioData)
    {

LABEL_20:
      uniqueId = self->_uniqueId;
      v22 = uniqueId == [equalCopy uniqueId];
      goto LABEL_18;
    }

    v18 = audioData;
    audioData2 = [(_SFPBPlayAudioButtonItem *)self audioData];
    audioData3 = [equalCopy audioData];
    v21 = [audioData2 isEqual:audioData3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  mediaMetadata = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
  if (mediaMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  toggleButtonConfiguration = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
  if (toggleButtonConfiguration)
  {
    PBDataWriterWriteSubmessage();
  }

  audioData = [(_SFPBPlayAudioButtonItem *)self audioData];
  if (audioData)
  {
    PBDataWriterWriteSubmessage();
  }

  uniqueId = [(_SFPBPlayAudioButtonItem *)self uniqueId];
  v8 = toCopy;
  if (uniqueId)
  {
    PBDataWriterWriteUint64Field();
    v8 = toCopy;
  }
}

@end