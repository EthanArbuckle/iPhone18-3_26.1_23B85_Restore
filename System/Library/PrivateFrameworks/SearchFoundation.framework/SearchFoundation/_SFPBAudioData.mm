@interface _SFPBAudioData
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAudioData)initWithDictionary:(id)dictionary;
- (_SFPBAudioData)initWithFacade:(id)facade;
- (_SFPBAudioData)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setAudioBuffer:(id)buffer;
- (void)setFormatID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAudioData

- (_SFPBAudioData)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBAudioData *)self init];
  if (v5)
  {
    audioBuffer = [facadeCopy audioBuffer];

    if (audioBuffer)
    {
      audioBuffer2 = [facadeCopy audioBuffer];
      [(_SFPBAudioData *)v5 setAudioBuffer:audioBuffer2];
    }

    formatID = [facadeCopy formatID];

    if (formatID)
    {
      formatID2 = [facadeCopy formatID];
      [(_SFPBAudioData *)v5 setFormatID:formatID2];
    }

    formatFlags = [facadeCopy formatFlags];

    if (formatFlags)
    {
      formatFlags2 = [facadeCopy formatFlags];
      -[_SFPBAudioData setFormatFlags:](v5, "setFormatFlags:", [formatFlags2 intValue]);
    }

    if ([facadeCopy hasSampleRate])
    {
      [facadeCopy sampleRate];
      [(_SFPBAudioData *)v5 setSampleRate:?];
    }

    bitsPerChannel = [facadeCopy bitsPerChannel];

    if (bitsPerChannel)
    {
      bitsPerChannel2 = [facadeCopy bitsPerChannel];
      -[_SFPBAudioData setBitsPerChannel:](v5, "setBitsPerChannel:", [bitsPerChannel2 intValue]);
    }

    bytesPerFrame = [facadeCopy bytesPerFrame];

    if (bytesPerFrame)
    {
      bytesPerFrame2 = [facadeCopy bytesPerFrame];
      -[_SFPBAudioData setBytesPerFrame:](v5, "setBytesPerFrame:", [bytesPerFrame2 intValue]);
    }

    channelsPerFrame = [facadeCopy channelsPerFrame];

    if (channelsPerFrame)
    {
      channelsPerFrame2 = [facadeCopy channelsPerFrame];
      -[_SFPBAudioData setChannelsPerFrame:](v5, "setChannelsPerFrame:", [channelsPerFrame2 intValue]);
    }

    bytesPerPacket = [facadeCopy bytesPerPacket];

    if (bytesPerPacket)
    {
      bytesPerPacket2 = [facadeCopy bytesPerPacket];
      -[_SFPBAudioData setBytesPerPacket:](v5, "setBytesPerPacket:", [bytesPerPacket2 intValue]);
    }

    framesPerPacket = [facadeCopy framesPerPacket];

    if (framesPerPacket)
    {
      framesPerPacket2 = [facadeCopy framesPerPacket];
      -[_SFPBAudioData setFramesPerPacket:](v5, "setFramesPerPacket:", [framesPerPacket2 intValue]);
    }

    reserved = [facadeCopy reserved];

    if (reserved)
    {
      reserved2 = [facadeCopy reserved];
      -[_SFPBAudioData setReserved:](v5, "setReserved:", [reserved2 intValue]);
    }

    v24 = v5;
  }

  return v5;
}

- (_SFPBAudioData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = _SFPBAudioData;
  v5 = [(_SFPBAudioData *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioBuffer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBAudioData *)v5 setAudioBuffer:v7];
    }

    v21 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"formatID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBAudioData *)v5 setFormatID:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"formatFlags"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setFormatFlags:](v5, "setFormatFlags:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"sampleRate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(_SFPBAudioData *)v5 setSampleRate:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"bitsPerChannel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setBitsPerChannel:](v5, "setBitsPerChannel:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"bytesPerFrame"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setBytesPerFrame:](v5, "setBytesPerFrame:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"channelsPerFrame"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setChannelsPerFrame:](v5, "setChannelsPerFrame:", [v14 intValue]);
    }

    v20 = v10;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"bytesPerPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setBytesPerPacket:](v5, "setBytesPerPacket:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"framesPerPacket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setFramesPerPacket:](v5, "setFramesPerPacket:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"reserved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioData setReserved:](v5, "setReserved:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBAudioData)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAudioData *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAudioData *)self dictionaryRepresentation];
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
  if (self->_audioBuffer)
  {
    audioBuffer = [(_SFPBAudioData *)self audioBuffer];
    v5 = [audioBuffer base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"audioBuffer"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioBuffer"];
    }
  }

  if (self->_bitsPerChannel)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData bitsPerChannel](self, "bitsPerChannel")}];
    [dictionary setObject:v7 forKeyedSubscript:@"bitsPerChannel"];
  }

  if (self->_bytesPerFrame)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData bytesPerFrame](self, "bytesPerFrame")}];
    [dictionary setObject:v8 forKeyedSubscript:@"bytesPerFrame"];
  }

  if (self->_bytesPerPacket)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData bytesPerPacket](self, "bytesPerPacket")}];
    [dictionary setObject:v9 forKeyedSubscript:@"bytesPerPacket"];
  }

  if (self->_channelsPerFrame)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData channelsPerFrame](self, "channelsPerFrame")}];
    [dictionary setObject:v10 forKeyedSubscript:@"channelsPerFrame"];
  }

  if (self->_formatFlags)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData formatFlags](self, "formatFlags")}];
    [dictionary setObject:v11 forKeyedSubscript:@"formatFlags"];
  }

  if (self->_formatID)
  {
    formatID = [(_SFPBAudioData *)self formatID];
    v13 = [formatID copy];
    [dictionary setObject:v13 forKeyedSubscript:@"formatID"];
  }

  if (self->_framesPerPacket)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData framesPerPacket](self, "framesPerPacket")}];
    [dictionary setObject:v14 forKeyedSubscript:@"framesPerPacket"];
  }

  if (self->_reserved)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBAudioData reserved](self, "reserved")}];
    [dictionary setObject:v15 forKeyedSubscript:@"reserved"];
  }

  if (self->_sampleRate != 0.0)
  {
    v16 = MEMORY[0x1E696AD98];
    [(_SFPBAudioData *)self sampleRate];
    v17 = [v16 numberWithDouble:?];
    [dictionary setObject:v17 forKeyedSubscript:@"sampleRate"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  audioBuffer = [(_SFPBAudioData *)self audioBuffer];
  audioBuffer2 = [equalCopy audioBuffer];
  if ((audioBuffer != 0) == (audioBuffer2 == 0))
  {
    goto LABEL_11;
  }

  audioBuffer3 = [(_SFPBAudioData *)self audioBuffer];
  if (audioBuffer3)
  {
    v8 = audioBuffer3;
    audioBuffer4 = [(_SFPBAudioData *)self audioBuffer];
    audioBuffer5 = [equalCopy audioBuffer];
    v11 = [audioBuffer4 isEqual:audioBuffer5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  audioBuffer = [(_SFPBAudioData *)self formatID];
  audioBuffer2 = [equalCopy formatID];
  if ((audioBuffer != 0) == (audioBuffer2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  formatID = [(_SFPBAudioData *)self formatID];
  if (formatID)
  {
    v13 = formatID;
    formatID2 = [(_SFPBAudioData *)self formatID];
    formatID3 = [equalCopy formatID];
    v16 = [formatID2 isEqual:formatID3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  formatFlags = self->_formatFlags;
  if (formatFlags == [equalCopy formatFlags])
  {
    sampleRate = self->_sampleRate;
    [equalCopy sampleRate];
    if (sampleRate == v21)
    {
      bitsPerChannel = self->_bitsPerChannel;
      if (bitsPerChannel == [equalCopy bitsPerChannel])
      {
        bytesPerFrame = self->_bytesPerFrame;
        if (bytesPerFrame == [equalCopy bytesPerFrame])
        {
          channelsPerFrame = self->_channelsPerFrame;
          if (channelsPerFrame == [equalCopy channelsPerFrame])
          {
            bytesPerPacket = self->_bytesPerPacket;
            if (bytesPerPacket == [equalCopy bytesPerPacket])
            {
              framesPerPacket = self->_framesPerPacket;
              if (framesPerPacket == [equalCopy framesPerPacket])
              {
                reserved = self->_reserved;
                v17 = reserved == [equalCopy reserved];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  audioBuffer = [(_SFPBAudioData *)self audioBuffer];
  if (audioBuffer)
  {
    PBDataWriterWriteDataField();
  }

  formatID = [(_SFPBAudioData *)self formatID];
  if (formatID)
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

  reserved = [(_SFPBAudioData *)self reserved];
  v8 = toCopy;
  if (reserved)
  {
    PBDataWriterWriteInt32Field();
    v8 = toCopy;
  }
}

- (void)setFormatID:(id)d
{
  v4 = [d copy];
  formatID = self->_formatID;
  self->_formatID = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAudioBuffer:(id)buffer
{
  v4 = [buffer copy];
  audioBuffer = self->_audioBuffer;
  self->_audioBuffer = v4;

  MEMORY[0x1EEE66BB8]();
}

@end