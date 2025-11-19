@interface SFAudioData
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFAudioData)initWithCoder:(id)a3;
- (SFAudioData)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAudioData

- (unint64_t)hash
{
  v26 = [(SFAudioData *)self audioBuffer];
  v3 = [v26 hash];
  v25 = [(SFAudioData *)self formatID];
  v22 = [v25 hash] ^ v3;
  v24 = [(SFAudioData *)self formatFlags];
  v21 = [v24 hash];
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
  v8 = [(SFAudioData *)self bitsPerChannel];
  v20 = [v8 hash];
  v9 = [(SFAudioData *)self bytesPerFrame];
  v10 = [v9 hash];
  v11 = [(SFAudioData *)self channelsPerFrame];
  v12 = [v11 hash];
  v13 = [(SFAudioData *)self bytesPerPacket];
  v14 = [v13 hash];
  v15 = [(SFAudioData *)self framesPerPacket];
  v16 = [v15 hash];
  v17 = [(SFAudioData *)self reserved];
  v18 = v22 ^ v21 ^ v20 ^ v10 ^ v12 ^ v14 ^ v16 ^ [v17 hash];

  return v18 ^ v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFAudioData *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(SFAudioData *)self audioBuffer];
      v7 = [(SFAudioData *)v5 audioBuffer];
      if ((v6 != 0) == (v7 == 0))
      {
        v11 = 0;
LABEL_52:

        goto LABEL_53;
      }

      v8 = [(SFAudioData *)self audioBuffer];
      if (v8)
      {
        v9 = [(SFAudioData *)self audioBuffer];
        v10 = [(SFAudioData *)v5 audioBuffer];
        if (![v9 isEqual:v10])
        {
          v11 = 0;
LABEL_50:

          goto LABEL_51;
        }

        v83 = v10;
        v84 = v9;
      }

      v12 = [(SFAudioData *)self formatID];
      v13 = [(SFAudioData *)v5 formatID];
      if ((v12 != 0) == (v13 == 0))
      {
        goto LABEL_48;
      }

      v14 = [(SFAudioData *)self formatID];
      if (v14)
      {
        v15 = [(SFAudioData *)self formatID];
        v80 = [(SFAudioData *)v5 formatID];
        v81 = v15;
        if (![v15 isEqual:v80])
        {
LABEL_46:

LABEL_47:
          goto LABEL_48;
        }
      }

      v82 = v14;
      v16 = [(SFAudioData *)self formatFlags];
      v17 = [(SFAudioData *)v5 formatFlags];
      if ((v16 != 0) == (v17 == 0))
      {

        if (!v14)
        {
LABEL_48:

          v11 = 0;
          if (!v8)
          {
LABEL_51:

            goto LABEL_52;
          }

          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v77 = v16;
      v78 = v17;
      v79 = [(SFAudioData *)self formatFlags];
      if (v79)
      {
        v18 = [(SFAudioData *)self formatFlags];
        v19 = [(SFAudioData *)v5 formatFlags];
        v76 = v18;
        v20 = v18;
        v16 = v19;
        if (![v20 isEqual:v19])
        {
          goto LABEL_27;
        }
      }

      [(SFAudioData *)self sampleRate];
      v22 = v21;
      [(SFAudioData *)v5 sampleRate];
      if (vabdd_f64(v22, v23) >= 2.22044605e-16)
      {
        if (!v79)
        {
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      v75 = v16;
      v24 = [(SFAudioData *)self bitsPerChannel];
      v25 = [(SFAudioData *)v5 bitsPerChannel];
      if ((v24 != 0) == (v25 == 0))
      {

        goto LABEL_44;
      }

      v72 = v25;
      v73 = v24;
      v74 = [(SFAudioData *)self bitsPerChannel];
      if (v74)
      {
        v26 = [(SFAudioData *)self bitsPerChannel];
        v70 = [(SFAudioData *)v5 bitsPerChannel];
        v71 = v26;
        if (![v26 isEqual:v70])
        {
          goto LABEL_42;
        }
      }

      v27 = [(SFAudioData *)self bytesPerFrame];
      v28 = [(SFAudioData *)v5 bytesPerFrame];
      if ((v27 != 0) == (v28 == 0))
      {

        goto LABEL_41;
      }

      v68 = v27;
      v69 = v28;
      v29 = [(SFAudioData *)self bytesPerFrame];
      if (v29)
      {
        v30 = [(SFAudioData *)self bytesPerFrame];
        v65 = [(SFAudioData *)v5 bytesPerFrame];
        v66 = v30;
        if (![v30 isEqual:?])
        {
LABEL_39:

LABEL_40:
LABEL_41:
          v14 = v82;
          if (!v74)
          {
LABEL_43:

LABEL_44:
            v16 = v75;
            if (!v79)
            {
LABEL_45:

              if (!v14)
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

      v67 = v29;
      v31 = [(SFAudioData *)self channelsPerFrame];
      v32 = [(SFAudioData *)v5 channelsPerFrame];
      if ((v31 != 0) == (v32 == 0))
      {

        v29 = v67;
        if (!v67)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      v63 = v32;
      v64 = [(SFAudioData *)self channelsPerFrame];
      if (v64)
      {
        v33 = [(SFAudioData *)self channelsPerFrame];
        v60 = [(SFAudioData *)v5 channelsPerFrame];
        v61 = v33;
        v34 = v33;
        v35 = v67;
        if (![v34 isEqual:?])
        {
          goto LABEL_60;
        }
      }

      v62 = v31;
      v37 = [(SFAudioData *)self bytesPerPacket];
      v38 = [(SFAudioData *)v5 bytesPerPacket];
      if ((v37 != 0) == (v38 == 0))
      {

        v35 = v67;
        v31 = v62;
        if (!v64)
        {
          v42 = v74;
LABEL_61:

          if (v35)
          {
          }

          v14 = v82;
          if (v42)
          {
          }

          if (v79)
          {
          }

          if (!v82)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

LABEL_60:
        v42 = v74;

        goto LABEL_61;
      }

      v58 = v38;
      v59 = v37;
      v57 = [(SFAudioData *)self bytesPerPacket];
      if (v57)
      {
        v39 = [(SFAudioData *)self bytesPerPacket];
        v54 = [(SFAudioData *)v5 bytesPerPacket];
        v55 = v39;
        if (![v39 isEqual:?])
        {
          v11 = 0;
          v40 = v64;
          v41 = v57;
LABEL_84:

LABEL_85:
          if (v40)
          {
          }

          if (v67)
          {
          }

          if (v74)
          {
          }

          if (v79)
          {
          }

          if (v82)
          {
          }

          if (!v8)
          {
            goto LABEL_51;
          }

LABEL_49:
          v10 = v83;
          v9 = v84;
          goto LABEL_50;
        }
      }

      v43 = [(SFAudioData *)self framesPerPacket];
      v56 = [(SFAudioData *)v5 framesPerPacket];
      if ((v43 != 0) == (v56 == 0))
      {

        v11 = 0;
        goto LABEL_83;
      }

      v53 = [(SFAudioData *)self framesPerPacket];
      if (!v53 || (-[SFAudioData framesPerPacket](self, "framesPerPacket"), v44 = objc_claimAutoreleasedReturnValue(), -[SFAudioData framesPerPacket](v5, "framesPerPacket"), v49 = objc_claimAutoreleasedReturnValue(), v50 = v44, [v44 isEqual:?]))
      {
        v52 = [(SFAudioData *)self reserved];
        v51 = [(SFAudioData *)v5 reserved];
        if ((v52 != 0) == (v51 == 0))
        {

          v11 = 0;
        }

        else
        {
          v45 = [(SFAudioData *)self reserved];
          if (v45)
          {
            v46 = v45;
            v48 = [(SFAudioData *)self reserved];
            v47 = [(SFAudioData *)v5 reserved];
            v11 = [v48 isEqual:v47];
          }

          else
          {

            v11 = 1;
          }
        }

        if (!v53)
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
      v40 = v64;
      v41 = v57;
      if (!v57)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFAudioData *)self audioBuffer];
  v6 = [v5 copy];
  [v4 setAudioBuffer:v6];

  v7 = [(SFAudioData *)self formatID];
  v8 = [v7 copy];
  [v4 setFormatID:v8];

  v9 = [(SFAudioData *)self formatFlags];
  v10 = [v9 copy];
  [v4 setFormatFlags:v10];

  [(SFAudioData *)self sampleRate];
  [v4 setSampleRate:?];
  v11 = [(SFAudioData *)self bitsPerChannel];
  v12 = [v11 copy];
  [v4 setBitsPerChannel:v12];

  v13 = [(SFAudioData *)self bytesPerFrame];
  v14 = [v13 copy];
  [v4 setBytesPerFrame:v14];

  v15 = [(SFAudioData *)self channelsPerFrame];
  v16 = [v15 copy];
  [v4 setChannelsPerFrame:v16];

  v17 = [(SFAudioData *)self bytesPerPacket];
  v18 = [v17 copy];
  [v4 setBytesPerPacket:v18];

  v19 = [(SFAudioData *)self framesPerPacket];
  v20 = [v19 copy];
  [v4 setFramesPerPacket:v20];

  v21 = [(SFAudioData *)self reserved];
  v22 = [v21 copy];
  [v4 setReserved:v22];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBAudioData alloc] initWithFacade:self];
  v3 = [(_SFPBAudioData *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBAudioData alloc] initWithFacade:self];
  v3 = [(_SFPBAudioData *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBAudioData alloc] initWithFacade:self];
  v5 = [(_SFPBAudioData *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFAudioData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBAudioData alloc] initWithData:v5];
  v7 = [(SFAudioData *)self initWithProtobuf:v6];

  return v7;
}

- (SFAudioData)initWithProtobuf:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SFAudioData;
  v5 = [(SFAudioData *)&v20 init];
  if (v5)
  {
    v6 = [v4 audioBuffer];

    if (v6)
    {
      v7 = [v4 audioBuffer];
      [(SFAudioData *)v5 setAudioBuffer:v7];
    }

    v8 = [v4 formatID];

    if (v8)
    {
      v9 = [v4 formatID];
      [(SFAudioData *)v5 setFormatID:v9];
    }

    if ([v4 formatFlags])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "formatFlags")}];
      [(SFAudioData *)v5 setFormatFlags:v10];
    }

    [v4 sampleRate];
    if (v11 != 0.0)
    {
      [v4 sampleRate];
      [(SFAudioData *)v5 setSampleRate:?];
    }

    if ([v4 bitsPerChannel])
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "bitsPerChannel")}];
      [(SFAudioData *)v5 setBitsPerChannel:v12];
    }

    if ([v4 bytesPerFrame])
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "bytesPerFrame")}];
      [(SFAudioData *)v5 setBytesPerFrame:v13];
    }

    if ([v4 channelsPerFrame])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "channelsPerFrame")}];
      [(SFAudioData *)v5 setChannelsPerFrame:v14];
    }

    if ([v4 bytesPerPacket])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "bytesPerPacket")}];
      [(SFAudioData *)v5 setBytesPerPacket:v15];
    }

    if ([v4 framesPerPacket])
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "framesPerPacket")}];
      [(SFAudioData *)v5 setFramesPerPacket:v16];
    }

    if ([v4 reserved])
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "reserved")}];
      [(SFAudioData *)v5 setReserved:v17];
    }

    v18 = v5;
  }

  return v5;
}

@end