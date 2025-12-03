@interface SFPlayMediaCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPlayMediaCommand)initWithCoder:(id)coder;
- (SFPlayMediaCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPlayMediaCommand

- (SFPlayMediaCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFPlayMediaCommand;
  v5 = [(SFPlayMediaCommand *)&v16 init];
  if (v5)
  {
    mediaMetadata = [protobufCopy mediaMetadata];

    if (mediaMetadata)
    {
      v7 = [SFMediaMetadata alloc];
      mediaMetadata2 = [protobufCopy mediaMetadata];
      v9 = [(SFMediaMetadata *)v7 initWithProtobuf:mediaMetadata2];
      [(SFPlayMediaCommand *)v5 setMediaMetadata:v9];
    }

    if ([protobufCopy playbackLocation])
    {
      -[SFPlayMediaCommand setPlaybackLocation:](v5, "setPlaybackLocation:", [protobufCopy playbackLocation]);
    }

    if ([protobufCopy shouldPause])
    {
      -[SFPlayMediaCommand setShouldPause:](v5, "setShouldPause:", [protobufCopy shouldPause]);
    }

    audioData = [protobufCopy audioData];

    if (audioData)
    {
      v11 = [SFAudioData alloc];
      audioData2 = [protobufCopy audioData];
      v13 = [(SFAudioData *)v11 initWithProtobuf:audioData2];
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
  mediaMetadata = [(SFPlayMediaCommand *)self mediaMetadata];
  v5 = [mediaMetadata hash];
  v6 = v5 ^ [(SFPlayMediaCommand *)self playbackLocation];
  v7 = v6 ^ [(SFPlayMediaCommand *)self shouldPause];
  audioData = [(SFPlayMediaCommand *)self audioData];
  v9 = v7 ^ [audioData hash];

  return v9 ^ v3;
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
    if ([(SFPlayMediaCommand *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v23.receiver = self;
      v23.super_class = SFPlayMediaCommand;
      if ([(SFCommand *)&v23 isEqual:equalCopy])
      {
        v7 = equalCopy;
        mediaMetadata = [(SFPlayMediaCommand *)self mediaMetadata];
        mediaMetadata2 = [(SFPlayMediaCommand *)v7 mediaMetadata];
        if ((mediaMetadata != 0) == (mediaMetadata2 == 0))
        {
          v11 = 0;
LABEL_21:

          goto LABEL_22;
        }

        mediaMetadata3 = [(SFPlayMediaCommand *)self mediaMetadata];
        if (!mediaMetadata3 || (-[SFPlayMediaCommand mediaMetadata](self, "mediaMetadata"), v3 = objc_claimAutoreleasedReturnValue(), -[SFPlayMediaCommand mediaMetadata](v7, "mediaMetadata"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          playbackLocation = [(SFPlayMediaCommand *)self playbackLocation];
          if (playbackLocation == [(SFPlayMediaCommand *)v7 playbackLocation])
          {
            shouldPause = [(SFPlayMediaCommand *)self shouldPause];
            if (shouldPause == [(SFPlayMediaCommand *)v7 shouldPause])
            {
              audioData = [(SFPlayMediaCommand *)self audioData];
              audioData2 = [(SFPlayMediaCommand *)v7 audioData];
              if ((audioData != 0) != (audioData2 == 0))
              {
                v21 = audioData;
                v22 = audioData2;
                audioData3 = [(SFPlayMediaCommand *)self audioData];
                if (audioData3)
                {
                  v20 = audioData3;
                  audioData4 = [(SFPlayMediaCommand *)self audioData];
                  audioData5 = [(SFPlayMediaCommand *)v7 audioData];
                  v11 = [audioData4 isEqual:audioData5];

                  if (!mediaMetadata3)
                  {
                    goto LABEL_20;
                  }
                }

                else
                {

                  v11 = 1;
                  if (!mediaMetadata3)
                  {
                    goto LABEL_20;
                  }
                }

                goto LABEL_19;
              }
            }
          }

          v11 = 0;
          if (!mediaMetadata3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SFPlayMediaCommand;
  v4 = [(SFCommand *)&v10 copyWithZone:zone];
  mediaMetadata = [(SFPlayMediaCommand *)self mediaMetadata];
  v6 = [mediaMetadata copy];
  [v4 setMediaMetadata:v6];

  [v4 setPlaybackLocation:{-[SFPlayMediaCommand playbackLocation](self, "playbackLocation")}];
  [v4 setShouldPause:{-[SFPlayMediaCommand shouldPause](self, "shouldPause")}];
  audioData = [(SFPlayMediaCommand *)self audioData];
  v8 = [audioData copy];
  [v4 setAudioData:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPlayMediaCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBPlayMediaCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPlayMediaCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPlayMediaCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFPlayMediaCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFPlayMediaCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFPlayMediaCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mediaMetadata = [(SFCommand *)v8 mediaMetadata];
    [(SFPlayMediaCommand *)v5 setMediaMetadata:mediaMetadata];

    [(SFPlayMediaCommand *)v5 setPlaybackLocation:[(SFCommand *)v8 playbackLocation]];
    [(SFPlayMediaCommand *)v5 setShouldPause:[(SFCommand *)v8 shouldPause]];
    audioData = [(SFCommand *)v8 audioData];
    [(SFPlayMediaCommand *)v5 setAudioData:audioData];

    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

@end