@interface _SFPBAudioData
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAudioData)initWithDictionary:(id)a3;
- (_SFPBAudioData)initWithFacade:(id)a3;
- (_SFPBAudioData)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAudioBuffer:(id)a3;
- (void)setFormatID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBAudioData

- (_SFPBAudioData)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBAudioData *)self init];
  if (v5)
  {
    v6 = [v4 audioBuffer];

    if (v6)
    {
      v7 = [v4 audioBuffer];
      [(_SFPBAudioData *)v5 setAudioBuffer:v7];
    }

    v8 = [v4 formatID];

    if (v8)
    {
      v9 = [v4 formatID];
      [(_SFPBAudioData *)v5 setFormatID:v9];
    }

    v10 = [v4 formatFlags];

    if (v10)
    {
      v11 = [v4 formatFlags];
      -[_SFPBAudioData setFormatFlags:](v5, "setFormatFlags:", [v11 intValue]);
    }

    if ([v4 hasSampleRate])
    {
      [v4 sampleRate];
      [(_SFPBAudioData *)v5 setSampleRate:?];
    }

    v12 = [v4 bitsPerChannel];

    if (v12)
    {
      v13 = [v4 bitsPerChannel];
      -[_SFPBAudioData setBitsPerChannel:](v5, "setBitsPerChannel:", [v13 intValue]);
    }

    v14 = [v4 bytesPerFrame];

    if (v14)
    {
      v15 = [v4 bytesPerFrame];
      -[_SFPBAudioData setBytesPerFrame:](v5, "setBytesPerFrame:", [v15 intValue]);
    }

    v16 = [v4 channelsPerFrame];

    if (v16)
    {
      v17 = [v4 channelsPerFrame];
      -[_SFPBAudioData setChannelsPerFrame:](v5, "setChannelsPerFrame:", [v17 intValue]);
    }

    v18 = [v4 bytesPerPacket];

    if (v18)
    {
      v19 = [v4 bytesPerPacket];
      -[_SFPBAudioData setBytesPerPacket:](v5, "setBytesPerPacket:", [v19 intValue]);
    }

    v20 = [v4 framesPerPacket];

    if (v20)
    {
      v21 = [v4 framesPerPacket];
      -[_SFPBAudioData setFramesPerPacket:](v5, "setFramesPerPacket:", [v21 intValue]);
    }

    v22 = [v4 reserved];

    if (v22)
    {
      v23 = [v4 reserved];
      -[_SFPBAudioData setReserved:](v5, "setReserved:", [v23 intValue]);
    }

    v24 = v5;
  }

  return v5;
}

- (_SFPBAudioData)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _SFPBAudioData;
  v5 = [(_SFPBAudioData *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioBuffer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBAudioData *)v5 setAudioBuffer:v7];
    }

    v21 = v6;
    v8 = [v4 objectForKeyedSubscript:@"formatID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBAudioData *)v5 setFormatID:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"formatFlags"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setFormatFlags:](v5, "setFormatFlags:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"sampleRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(_SFPBAudioData *)v5 setSampleRate:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"bitsPerChannel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setBitsPerChannel:](v5, "setBitsPerChannel:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"bytesPerFrame"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setBytesPerFrame:](v5, "setBytesPerFrame:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"channelsPerFrame"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setChannelsPerFrame:](v5, "setChannelsPerFrame:", [v14 intValue]);
    }

    v20 = v10;
    v15 = [v4 objectForKeyedSubscript:@"bytesPerPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setBytesPerPacket:](v5, "setBytesPerPacket:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"framesPerPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setFramesPerPacket:](v5, "setFramesPerPacket:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"reserved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setReserved:](v5, "setReserved:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBAudioData)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBAudioData *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBAudioData *)self dictionaryRepresentation];
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
  if (self->_audioBuffer)
  {
    v4 = [(_SFPBAudioData *)self audioBuffer];
    v5 = [v4 base64EncodedStringWithOptions:0];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"audioBuffer"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"audioBuffer"];
    }
  }

  if (self->_bitsPerChannel)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData bitsPerChannel](self, "bitsPerChannel")}];
    [v3 setObject:v7 forKeyedSubscript:@"bitsPerChannel"];
  }

  if (self->_bytesPerFrame)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData bytesPerFrame](self, "bytesPerFrame")}];
    [v3 setObject:v8 forKeyedSubscript:@"bytesPerFrame"];
  }

  if (self->_bytesPerPacket)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData bytesPerPacket](self, "bytesPerPacket")}];
    [v3 setObject:v9 forKeyedSubscript:@"bytesPerPacket"];
  }

  if (self->_channelsPerFrame)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData channelsPerFrame](self, "channelsPerFrame")}];
    [v3 setObject:v10 forKeyedSubscript:@"channelsPerFrame"];
  }

  if (self->_formatFlags)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData formatFlags](self, "formatFlags")}];
    [v3 setObject:v11 forKeyedSubscript:@"formatFlags"];
  }

  if (self->_formatID)
  {
    v12 = [(_SFPBAudioData *)self formatID];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"formatID"];
  }

  if (self->_framesPerPacket)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData framesPerPacket](self, "framesPerPacket")}];
    [v3 setObject:v14 forKeyedSubscript:@"framesPerPacket"];
  }

  if (self->_reserved)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData reserved](self, "reserved")}];
    [v3 setObject:v15 forKeyedSubscript:@"reserved"];
  }

  if (self->_sampleRate != 0.0)
  {
    v16 = MEMORY[0x1E696AD98];
    [(_SFPBAudioData *)self sampleRate];
    v17 = [v16 numberWithDouble:?];
    [v3 setObject:v17 forKeyedSubscript:@"sampleRate"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_audioBuffer hash];
  v4 = [(NSString *)self->_formatID hash];
  sampleRate = self->_sampleRate;
  if (sampleRate == 0.0)
  {
    v10 = 0;
  }

  else
  {
    if (sampleRate < 0.0)
    {
      sampleRate = -sampleRate;
    }

    *v5.i64 = floor(sampleRate + 0.5);
    v8 = (sampleRate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v6, v5).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v10 += v8;
      }
    }

    else
    {
      v10 -= fabs(v8);
    }
  }

  return v4 ^ v3 ^ v10 ^ (2654435761 * self->_formatFlags) ^ (2654435761 * self->_bitsPerChannel) ^ (2654435761 * self->_bytesPerFrame) ^ (2654435761 * self->_channelsPerFrame) ^ (2654435761 * self->_bytesPerPacket) ^ (2654435761 * self->_framesPerPacket) ^ (2654435761 * self->_reserved);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_SFPBAudioData *)self audioBuffer];
  v6 = [v4 audioBuffer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_SFPBAudioData *)self audioBuffer];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBAudioData *)self audioBuffer];
    v10 = [v4 audioBuffer];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAudioData *)self formatID];
  v6 = [v4 formatID];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_SFPBAudioData *)self formatID];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBAudioData *)self formatID];
    v15 = [v4 formatID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  formatFlags = self->_formatFlags;
  if (formatFlags == [v4 formatFlags])
  {
    sampleRate = self->_sampleRate;
    [v4 sampleRate];
    if (sampleRate == v21)
    {
      bitsPerChannel = self->_bitsPerChannel;
      if (bitsPerChannel == [v4 bitsPerChannel])
      {
        bytesPerFrame = self->_bytesPerFrame;
        if (bytesPerFrame == [v4 bytesPerFrame])
        {
          channelsPerFrame = self->_channelsPerFrame;
          if (channelsPerFrame == [v4 channelsPerFrame])
          {
            bytesPerPacket = self->_bytesPerPacket;
            if (bytesPerPacket == [v4 bytesPerPacket])
            {
              framesPerPacket = self->_framesPerPacket;
              if (framesPerPacket == [v4 framesPerPacket])
              {
                reserved = self->_reserved;
                v17 = reserved == [v4 reserved];
                goto LABEL_13;
              }
            }
          }
        }
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(_SFPBAudioData *)self audioBuffer];
  if (v4)
  {
    PBDataWriterWriteDataField();
  }

  v5 = [(_SFPBAudioData *)self formatID];
  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAudioData *)self formatFlags])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_SFPBAudioData *)self sampleRate];
  if (v6 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  if ([(_SFPBAudioData *)self bitsPerChannel])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBAudioData *)self bytesPerFrame])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBAudioData *)self channelsPerFrame])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBAudioData *)self bytesPerPacket])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBAudioData *)self framesPerPacket])
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(_SFPBAudioData *)self reserved];
  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteInt32Field();
    v8 = v9;
  }
}

- (void)setFormatID:(id)a3
{
  v4 = [a3 copy];
  formatID = self->_formatID;
  self->_formatID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAudioBuffer:(id)a3
{
  v4 = [a3 copy];
  audioBuffer = self->_audioBuffer;
  self->_audioBuffer = v4;

  MEMORY[0x1EEE66BB8]();
}

@end