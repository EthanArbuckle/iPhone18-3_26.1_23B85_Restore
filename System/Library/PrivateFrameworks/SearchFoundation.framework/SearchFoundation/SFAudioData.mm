@interface SFAudioData
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAudioData)initWithCoder:(id)coder;
- (SFAudioData)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAudioData

- (unint64_t)hash
{
  audioBuffer = [(SFAudioData *)self audioBuffer];
  v3 = [audioBuffer hash];
  formatID = [(SFAudioData *)self formatID];
  v22 = [formatID hash] ^ v3;
  formatFlags = [(SFAudioData *)self formatFlags];
  v21 = [formatFlags hash];
  [(SFAudioData *)self sampleRate];
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  *v5.i64 = round(v4);
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v23 = (*vbslq_s8(vnegq_f64(v7), v6, v5).i64 * 2654435760.0) + vcvtd_n_u64_f64(v4 - *v5.i64, 0x40uLL);
  bitsPerChannel = [(SFAudioData *)self bitsPerChannel];
  v20 = [bitsPerChannel hash];
  bytesPerFrame = [(SFAudioData *)self bytesPerFrame];
  v10 = [bytesPerFrame hash];
  channelsPerFrame = [(SFAudioData *)self channelsPerFrame];
  v12 = [channelsPerFrame hash];
  bytesPerPacket = [(SFAudioData *)self bytesPerPacket];
  v14 = [bytesPerPacket hash];
  framesPerPacket = [(SFAudioData *)self framesPerPacket];
  v16 = [framesPerPacket hash];
  reserved = [(SFAudioData *)self reserved];
  v18 = v22 ^ v21 ^ v20 ^ v10 ^ v12 ^ v14 ^ v16 ^ [reserved hash];

  return v18 ^ v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFAudioData *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      audioBuffer = [(SFAudioData *)self audioBuffer];
      audioBuffer2 = [(SFAudioData *)v5 audioBuffer];
      if ((audioBuffer != 0) == (audioBuffer2 == 0))
      {
        v11 = 0;
LABEL_52:

        goto LABEL_53;
      }

      audioBuffer3 = [(SFAudioData *)self audioBuffer];
      if (audioBuffer3)
      {
        audioBuffer4 = [(SFAudioData *)self audioBuffer];
        audioBuffer5 = [(SFAudioData *)v5 audioBuffer];
        if (![audioBuffer4 isEqual:audioBuffer5])
        {
          v11 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v83 = audioBuffer5;
        v84 = audioBuffer4;
      }

      formatID = [(SFAudioData *)self formatID];
      formatID2 = [(SFAudioData *)v5 formatID];
      if ((formatID != 0) == (formatID2 == 0))
      {
        goto LABEL_48;
      }

      formatID3 = [(SFAudioData *)self formatID];
      if (formatID3)
      {
        formatID4 = [(SFAudioData *)self formatID];
        formatID5 = [(SFAudioData *)v5 formatID];
        v81 = formatID4;
        if (![formatID4 isEqual:formatID5])
        {
LABEL_46:

LABEL_47:
          goto LABEL_48;
        }
      }

      v82 = formatID3;
      formatFlags = [(SFAudioData *)self formatFlags];
      formatFlags2 = [(SFAudioData *)v5 formatFlags];
      if ((formatFlags != 0) == (formatFlags2 == 0))
      {

        if (!formatID3)
        {
LABEL_48:

          v11 = 0;
          if (!audioBuffer3)
          {
LABEL_51:

            goto LABEL_52;
          }

          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v77 = formatFlags;
      v78 = formatFlags2;
      formatFlags3 = [(SFAudioData *)self formatFlags];
      if (formatFlags3)
      {
        formatFlags4 = [(SFAudioData *)self formatFlags];
        formatFlags5 = [(SFAudioData *)v5 formatFlags];
        v76 = formatFlags4;
        v20 = formatFlags4;
        formatFlags = formatFlags5;
        if (![v20 isEqual:formatFlags5])
        {
          goto LABEL_27;
        }
      }

      [(SFAudioData *)self sampleRate];
      v22 = v21;
      [(SFAudioData *)v5 sampleRate];
      if (vabdd_f64(v22, v23) >= 2.22044605e-16)
      {
        if (!formatFlags3)
        {
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      v75 = formatFlags;
      bitsPerChannel = [(SFAudioData *)self bitsPerChannel];
      bitsPerChannel2 = [(SFAudioData *)v5 bitsPerChannel];
      if ((bitsPerChannel != 0) == (bitsPerChannel2 == 0))
      {

        goto LABEL_44;
      }

      v72 = bitsPerChannel2;
      v73 = bitsPerChannel;
      bitsPerChannel3 = [(SFAudioData *)self bitsPerChannel];
      if (bitsPerChannel3)
      {
        bitsPerChannel4 = [(SFAudioData *)self bitsPerChannel];
        bitsPerChannel5 = [(SFAudioData *)v5 bitsPerChannel];
        v71 = bitsPerChannel4;
        if (![bitsPerChannel4 isEqual:bitsPerChannel5])
        {
          goto LABEL_42;
        }
      }

      bytesPerFrame = [(SFAudioData *)self bytesPerFrame];
      bytesPerFrame2 = [(SFAudioData *)v5 bytesPerFrame];
      if ((bytesPerFrame != 0) == (bytesPerFrame2 == 0))
      {

        goto LABEL_41;
      }

      v68 = bytesPerFrame;
      v69 = bytesPerFrame2;
      bytesPerFrame3 = [(SFAudioData *)self bytesPerFrame];
      if (bytesPerFrame3)
      {
        bytesPerFrame4 = [(SFAudioData *)self bytesPerFrame];
        bytesPerFrame5 = [(SFAudioData *)v5 bytesPerFrame];
        v66 = bytesPerFrame4;
        if (![bytesPerFrame4 isEqual:?])
        {
LABEL_39:

LABEL_40:
LABEL_41:
          formatID3 = v82;
          if (!bitsPerChannel3)
          {
LABEL_43:

LABEL_44:
            formatFlags = v75;
            if (!formatFlags3)
            {
LABEL_45:

              if (!formatID3)
              {
                goto LABEL_48;
              }

              goto LABEL_46;
            }

LABEL_27:

            goto LABEL_45;
          }

LABEL_42:

          goto LABEL_43;
        }
      }

      v67 = bytesPerFrame3;
      channelsPerFrame = [(SFAudioData *)self channelsPerFrame];
      channelsPerFrame2 = [(SFAudioData *)v5 channelsPerFrame];
      if ((channelsPerFrame != 0) == (channelsPerFrame2 == 0))
      {

        bytesPerFrame3 = v67;
        if (!v67)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v63 = channelsPerFrame2;
      channelsPerFrame3 = [(SFAudioData *)self channelsPerFrame];
      if (channelsPerFrame3)
      {
        channelsPerFrame4 = [(SFAudioData *)self channelsPerFrame];
        channelsPerFrame5 = [(SFAudioData *)v5 channelsPerFrame];
        v61 = channelsPerFrame4;
        v34 = channelsPerFrame4;
        v35 = v67;
        if (![v34 isEqual:?])
        {
          goto LABEL_60;
        }
      }

      v62 = channelsPerFrame;
      bytesPerPacket = [(SFAudioData *)self bytesPerPacket];
      bytesPerPacket2 = [(SFAudioData *)v5 bytesPerPacket];
      if ((bytesPerPacket != 0) == (bytesPerPacket2 == 0))
      {

        v35 = v67;
        channelsPerFrame = v62;
        if (!channelsPerFrame3)
        {
          v42 = bitsPerChannel3;
LABEL_61:

          if (v35)
          {
          }

          formatID3 = v82;
          if (v42)
          {
          }

          if (formatFlags3)
          {
          }

          if (!v82)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

LABEL_60:
        v42 = bitsPerChannel3;

        goto LABEL_61;
      }

      v58 = bytesPerPacket2;
      v59 = bytesPerPacket;
      bytesPerPacket3 = [(SFAudioData *)self bytesPerPacket];
      if (bytesPerPacket3)
      {
        bytesPerPacket4 = [(SFAudioData *)self bytesPerPacket];
        bytesPerPacket5 = [(SFAudioData *)v5 bytesPerPacket];
        v55 = bytesPerPacket4;
        if (![bytesPerPacket4 isEqual:?])
        {
          v11 = 0;
          v40 = channelsPerFrame3;
          v41 = bytesPerPacket3;
LABEL_84:

LABEL_85:
          if (v40)
          {
          }

          if (v67)
          {
          }

          if (bitsPerChannel3)
          {
          }

          if (formatFlags3)
          {
          }

          if (v82)
          {
          }

          if (!audioBuffer3)
          {
            goto LABEL_51;
          }

LABEL_49:
          audioBuffer5 = v83;
          audioBuffer4 = v84;
          goto LABEL_50;
        }
      }

      framesPerPacket = [(SFAudioData *)self framesPerPacket];
      framesPerPacket2 = [(SFAudioData *)v5 framesPerPacket];
      if ((framesPerPacket != 0) == (framesPerPacket2 == 0))
      {

        v11 = 0;
        goto LABEL_83;
      }

      framesPerPacket3 = [(SFAudioData *)self framesPerPacket];
      if (!framesPerPacket3 || (-[SFAudioData framesPerPacket](self, "framesPerPacket"), v44 = objc_claimAutoreleasedReturnValue(), -[SFAudioData framesPerPacket](v5, "framesPerPacket"), v49 = objc_claimAutoreleasedReturnValue(), v50 = v44, [v44 isEqual:?]))
      {
        reserved = [(SFAudioData *)self reserved];
        reserved2 = [(SFAudioData *)v5 reserved];
        if ((reserved != 0) == (reserved2 == 0))
        {

          v11 = 0;
        }

        else
        {
          reserved3 = [(SFAudioData *)self reserved];
          if (reserved3)
          {
            v46 = reserved3;
            reserved4 = [(SFAudioData *)self reserved];
            reserved5 = [(SFAudioData *)v5 reserved];
            v11 = [reserved4 isEqual:reserved5];
          }

          else
          {

            v11 = 1;
          }
        }

        if (!framesPerPacket3)
        {
          goto LABEL_82;
        }
      }

      else
      {
        v11 = 0;
      }

LABEL_82:
LABEL_83:
      v40 = channelsPerFrame3;
      v41 = bytesPerPacket3;
      if (!bytesPerPacket3)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    v11 = 0;
  }

LABEL_53:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  audioBuffer = [(SFAudioData *)self audioBuffer];
  v6 = [audioBuffer copy];
  [v4 setAudioBuffer:v6];

  formatID = [(SFAudioData *)self formatID];
  v8 = [formatID copy];
  [v4 setFormatID:v8];

  formatFlags = [(SFAudioData *)self formatFlags];
  v10 = [formatFlags copy];
  [v4 setFormatFlags:v10];

  [(SFAudioData *)self sampleRate];
  [v4 setSampleRate:?];
  bitsPerChannel = [(SFAudioData *)self bitsPerChannel];
  v12 = [bitsPerChannel copy];
  [v4 setBitsPerChannel:v12];

  bytesPerFrame = [(SFAudioData *)self bytesPerFrame];
  v14 = [bytesPerFrame copy];
  [v4 setBytesPerFrame:v14];

  channelsPerFrame = [(SFAudioData *)self channelsPerFrame];
  v16 = [channelsPerFrame copy];
  [v4 setChannelsPerFrame:v16];

  bytesPerPacket = [(SFAudioData *)self bytesPerPacket];
  v18 = [bytesPerPacket copy];
  [v4 setBytesPerPacket:v18];

  framesPerPacket = [(SFAudioData *)self framesPerPacket];
  v20 = [framesPerPacket copy];
  [v4 setFramesPerPacket:v20];

  reserved = [(SFAudioData *)self reserved];
  v22 = [reserved copy];
  [v4 setReserved:v22];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAudioData alloc] initWithFacade:self];
  jsonData = [(_SFPBAudioData *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAudioData alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBAudioData *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBAudioData alloc] initWithFacade:self];
  data = [(_SFPBAudioData *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFAudioData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAudioData alloc] initWithData:v5];
  v7 = [(SFAudioData *)self initWithProtobuf:v6];

  return v7;
}

- (SFAudioData)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = SFAudioData;
  v5 = [(SFAudioData *)&v20 init];
  if (v5)
  {
    audioBuffer = [protobufCopy audioBuffer];

    if (audioBuffer)
    {
      audioBuffer2 = [protobufCopy audioBuffer];
      [(SFAudioData *)v5 setAudioBuffer:audioBuffer2];
    }

    formatID = [protobufCopy formatID];

    if (formatID)
    {
      formatID2 = [protobufCopy formatID];
      [(SFAudioData *)v5 setFormatID:formatID2];
    }

    if ([protobufCopy formatFlags])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "formatFlags")}];
      [(SFAudioData *)v5 setFormatFlags:v10];
    }

    [protobufCopy sampleRate];
    if (v11 != 0.0)
    {
      [protobufCopy sampleRate];
      [(SFAudioData *)v5 setSampleRate:?];
    }

    if ([protobufCopy bitsPerChannel])
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "bitsPerChannel")}];
      [(SFAudioData *)v5 setBitsPerChannel:v12];
    }

    if ([protobufCopy bytesPerFrame])
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "bytesPerFrame")}];
      [(SFAudioData *)v5 setBytesPerFrame:v13];
    }

    if ([protobufCopy channelsPerFrame])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "channelsPerFrame")}];
      [(SFAudioData *)v5 setChannelsPerFrame:v14];
    }

    if ([protobufCopy bytesPerPacket])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "bytesPerPacket")}];
      [(SFAudioData *)v5 setBytesPerPacket:v15];
    }

    if ([protobufCopy framesPerPacket])
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "framesPerPacket")}];
      [(SFAudioData *)v5 setFramesPerPacket:v16];
    }

    if ([protobufCopy reserved])
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "reserved")}];
      [(SFAudioData *)v5 setReserved:v17];
    }

    v18 = v5;
  }

  return v5;
}

@end