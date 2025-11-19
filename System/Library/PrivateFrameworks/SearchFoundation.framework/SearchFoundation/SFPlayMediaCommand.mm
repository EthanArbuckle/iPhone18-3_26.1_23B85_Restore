@interface SFPlayMediaCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPlayMediaCommand)initWithCoder:(id)a3;
- (SFPlayMediaCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPlayMediaCommand

- (SFPlayMediaCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFPlayMediaCommand;
  v5 = [(SFPlayMediaCommand *)&v16 init];
  if (v5)
  {
    v6 = [v4 mediaMetadata];

    if (v6)
    {
      v7 = [SFMediaMetadata alloc];
      v8 = [v4 mediaMetadata];
      v9 = [(SFMediaMetadata *)v7 initWithProtobuf:v8];
      [(SFPlayMediaCommand *)v5 setMediaMetadata:v9];
    }

    if ([v4 playbackLocation])
    {
      -[SFPlayMediaCommand setPlaybackLocation:](v5, "setPlaybackLocation:", [v4 playbackLocation]);
    }

    if ([v4 shouldPause])
    {
      -[SFPlayMediaCommand setShouldPause:](v5, "setShouldPause:", [v4 shouldPause]);
    }

    v10 = [v4 audioData];

    if (v10)
    {
      v11 = [SFAudioData alloc];
      v12 = [v4 audioData];
      v13 = [(SFAudioData *)v11 initWithProtobuf:v12];
      [(SFPlayMediaCommand *)v5 setAudioData:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = SFPlayMediaCommand;
  v3 = [(SFCommand *)&v11 hash];
  v4 = [(SFPlayMediaCommand *)self mediaMetadata];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFPlayMediaCommand *)self playbackLocation];
  v7 = v6 ^ [(SFPlayMediaCommand *)self shouldPause];
  v8 = [(SFPlayMediaCommand *)self audioData];
  v9 = v7 ^ [v8 hash];

  return v9 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFPlayMediaCommand *)v6 isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = SFPlayMediaCommand;
      if ([(SFCommand *)&v23 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFPlayMediaCommand *)self mediaMetadata];
        v9 = [(SFPlayMediaCommand *)v7 mediaMetadata];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_21:

          goto LABEL_22;
        }

        v10 = [(SFPlayMediaCommand *)self mediaMetadata];
        if (!v10 || (-[SFPlayMediaCommand mediaMetadata](self, "mediaMetadata"), v3 = objc_claimAutoreleasedReturnValue(), -[SFPlayMediaCommand mediaMetadata](v7, "mediaMetadata"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFPlayMediaCommand *)self playbackLocation];
          if (v12 == [(SFPlayMediaCommand *)v7 playbackLocation])
          {
            v13 = [(SFPlayMediaCommand *)self shouldPause];
            if (v13 == [(SFPlayMediaCommand *)v7 shouldPause])
            {
              v14 = [(SFPlayMediaCommand *)self audioData];
              v15 = [(SFPlayMediaCommand *)v7 audioData];
              if ((v14 != 0) != (v15 == 0))
              {
                v21 = v14;
                v22 = v15;
                v16 = [(SFPlayMediaCommand *)self audioData];
                if (v16)
                {
                  v20 = v16;
                  v17 = [(SFPlayMediaCommand *)self audioData];
                  v18 = [(SFPlayMediaCommand *)v7 audioData];
                  v11 = [v17 isEqual:v18];

                  if (!v10)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {

                  v11 = 1;
                  if (!v10)
                  {
                    goto LABEL_20;
                  }
                }

                goto LABEL_19;
              }
            }
          }

          v11 = 0;
          if (!v10)
          {
LABEL_20:

            goto LABEL_21;
          }
        }

        else
        {
          v11 = 0;
        }

LABEL_19:

        goto LABEL_20;
      }
    }

    v11 = 0;
  }

LABEL_22:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = SFPlayMediaCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:a3];
  v5 = [(SFPlayMediaCommand *)self mediaMetadata];
  v6 = [v5 copy];
  [v4 setMediaMetadata:v6];

  [v4 setPlaybackLocation:{-[SFPlayMediaCommand playbackLocation](self, "playbackLocation")}];
  [v4 setShouldPause:{-[SFPlayMediaCommand shouldPause](self, "shouldPause")}];
  v7 = [(SFPlayMediaCommand *)self audioData];
  v8 = [v7 copy];
  [v4 setAudioData:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPlayMediaCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPlayMediaCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPlayMediaCommand alloc] initWithFacade:self];
  v3 = [(_SFPBPlayMediaCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFPlayMediaCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFPlayMediaCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFPlayMediaCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 mediaMetadata];
    [(SFPlayMediaCommand *)v5 setMediaMetadata:v9];

    [(SFPlayMediaCommand *)v5 setPlaybackLocation:[(SFCommand *)v8 playbackLocation]];
    [(SFPlayMediaCommand *)v5 setShouldPause:[(SFCommand *)v8 shouldPause]];
    v10 = [(SFCommand *)v8 audioData];
    [(SFPlayMediaCommand *)v5 setAudioData:v10];

    v11 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v11];

    v12 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v12];

    v13 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v13];

    v14 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v14];
  }

  return v5;
}

@end