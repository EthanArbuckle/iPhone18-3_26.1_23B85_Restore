@interface _SFPBPlayAudioButtonItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPlayAudioButtonItem)initWithDictionary:(id)a3;
- (_SFPBPlayAudioButtonItem)initWithFacade:(id)a3;
- (_SFPBPlayAudioButtonItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPlayAudioButtonItem

- (_SFPBPlayAudioButtonItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPlayAudioButtonItem *)self init];
  if (v5)
  {
    v6 = [v4 mediaMetadata];

    if (v6)
    {
      v7 = [_SFPBMediaMetadata alloc];
      v8 = [v4 mediaMetadata];
      v9 = [(_SFPBMediaMetadata *)v7 initWithFacade:v8];
      [(_SFPBPlayAudioButtonItem *)v5 setMediaMetadata:v9];
    }

    v10 = [v4 toggleButtonConfiguration];

    if (v10)
    {
      v11 = [_SFPBToggleButtonConfiguration alloc];
      v12 = [v4 toggleButtonConfiguration];
      v13 = [(_SFPBToggleButtonConfiguration *)v11 initWithFacade:v12];
      [(_SFPBPlayAudioButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    v14 = [v4 audioData];

    if (v14)
    {
      v15 = [_SFPBAudioData alloc];
      v16 = [v4 audioData];
      v17 = [(_SFPBAudioData *)v15 initWithFacade:v16];
      [(_SFPBPlayAudioButtonItem *)v5 setAudioData:v17];
    }

    if ([v4 hasUniqueId])
    {
      -[_SFPBPlayAudioButtonItem setUniqueId:](v5, "setUniqueId:", [v4 uniqueId]);
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBPlayAudioButtonItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _SFPBPlayAudioButtonItem;
  v5 = [(_SFPBPlayAudioButtonItem *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mediaMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBMediaMetadata alloc] initWithDictionary:v6];
      [(_SFPBPlayAudioButtonItem *)v5 setMediaMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"toggleButtonConfiguration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBToggleButtonConfiguration alloc] initWithDictionary:v8];
      [(_SFPBPlayAudioButtonItem *)v5 setToggleButtonConfiguration:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"audioData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBAudioData alloc] initWithDictionary:v10];
      [(_SFPBPlayAudioButtonItem *)v5 setAudioData:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPlayAudioButtonItem setUniqueId:](v5, "setUniqueId:", [v12 unsignedLongLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBPlayAudioButtonItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPlayAudioButtonItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPlayAudioButtonItem *)self dictionaryRepresentation];
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
    v4 = [(_SFPBPlayAudioButtonItem *)self audioData];
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
    v7 = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
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

  if (self->_toggleButtonConfiguration)
  {
    v10 = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"toggleButtonConfiguration"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"toggleButtonConfiguration"];
    }
  }

  if (self->_uniqueId)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBPlayAudioButtonItem uniqueId](self, "uniqueId")}];
    [v3 setObject:v13 forKeyedSubscript:@"uniqueId"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBMediaMetadata *)self->_mediaMetadata hash];
  v4 = [(_SFPBToggleButtonConfiguration *)self->_toggleButtonConfiguration hash];
  return v4 ^ v3 ^ [(_SFPBAudioData *)self->_audioData hash]^ (2654435761u * self->_uniqueId);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
  v6 = [v4 mediaMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
    v10 = [v4 mediaMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
  v6 = [v4 toggleButtonConfiguration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
    v15 = [v4 toggleButtonConfiguration];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBPlayAudioButtonItem *)self audioData];
  v6 = [v4 audioData];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_SFPBPlayAudioButtonItem *)self audioData];
    if (!v17)
    {

LABEL_20:
      uniqueId = self->_uniqueId;
      v22 = uniqueId == [v4 uniqueId];
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_SFPBPlayAudioButtonItem *)self audioData];
    v20 = [v4 audioData];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_SFPBPlayAudioButtonItem *)self mediaMetadata];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBPlayAudioButtonItem *)self toggleButtonConfiguration];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBPlayAudioButtonItem *)self audioData];
  if (v6)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_SFPBPlayAudioButtonItem *)self uniqueId];
  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteUint64Field();
    v8 = v9;
  }
}

@end