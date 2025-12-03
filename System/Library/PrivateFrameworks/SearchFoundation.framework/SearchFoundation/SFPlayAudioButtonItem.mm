@interface SFPlayAudioButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPlayAudioButtonItem)initWithCoder:(id)coder;
- (SFPlayAudioButtonItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPlayAudioButtonItem

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = SFPlayAudioButtonItem;
  v3 = [(SFButtonItem *)&v12 hash];
  mediaMetadata = [(SFPlayAudioButtonItem *)self mediaMetadata];
  v5 = [mediaMetadata hash];
  toggleButtonConfiguration = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
  v7 = v5 ^ [toggleButtonConfiguration hash];
  audioData = [(SFPlayAudioButtonItem *)self audioData];
  v9 = v7 ^ [audioData hash];
  v10 = v9 ^ [(SFButtonItem *)self uniqueId];

  return v10 ^ v3;
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
    if ([(SFPlayAudioButtonItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v34.receiver = self;
      v34.super_class = SFPlayAudioButtonItem;
      if ([(SFButtonItem *)&v34 isEqual:equalCopy])
      {
        v6 = equalCopy;
        mediaMetadata = [(SFPlayAudioButtonItem *)self mediaMetadata];
        mediaMetadata2 = [(SFPlayAudioButtonItem *)v6 mediaMetadata];
        if ((mediaMetadata != 0) == (mediaMetadata2 == 0))
        {
          v11 = 0;
LABEL_34:

          goto LABEL_35;
        }

        mediaMetadata3 = [(SFPlayAudioButtonItem *)self mediaMetadata];
        if (mediaMetadata3)
        {
          mediaMetadata4 = [(SFPlayAudioButtonItem *)self mediaMetadata];
          mediaMetadata5 = [(SFPlayAudioButtonItem *)v6 mediaMetadata];
          if (![mediaMetadata4 isEqual:mediaMetadata5])
          {
            v11 = 0;
            goto LABEL_32;
          }

          v33 = mediaMetadata4;
        }

        toggleButtonConfiguration = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
        toggleButtonConfiguration2 = [(SFPlayAudioButtonItem *)v6 toggleButtonConfiguration];
        v14 = toggleButtonConfiguration2;
        if ((toggleButtonConfiguration != 0) == (toggleButtonConfiguration2 == 0))
        {

          v11 = 0;
          goto LABEL_31;
        }

        toggleButtonConfiguration3 = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
        if (toggleButtonConfiguration3)
        {
          v27 = toggleButtonConfiguration;
          toggleButtonConfiguration4 = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
          toggleButtonConfiguration5 = [(SFPlayAudioButtonItem *)v6 toggleButtonConfiguration];
          v30 = toggleButtonConfiguration4;
          if (![toggleButtonConfiguration4 isEqual:?])
          {
            v11 = 0;
            toggleButtonConfiguration = v27;
            goto LABEL_29;
          }

          v31 = toggleButtonConfiguration3;
          v32 = mediaMetadata5;
          toggleButtonConfiguration = v27;
        }

        else
        {
          v31 = 0;
          v32 = mediaMetadata5;
        }

        audioData = [(SFPlayAudioButtonItem *)self audioData];
        audioData2 = [(SFPlayAudioButtonItem *)v6 audioData];
        if ((audioData != 0) == (audioData2 == 0))
        {

          v11 = 0;
          toggleButtonConfiguration3 = v31;
          mediaMetadata5 = v32;
          if (!v31)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        v25 = audioData2;
        v26 = audioData;
        [(SFPlayAudioButtonItem *)self audioData];
        v28 = toggleButtonConfiguration3 = v31;
        if (v28)
        {
          audioData3 = [(SFPlayAudioButtonItem *)self audioData];
          audioData4 = [(SFPlayAudioButtonItem *)v6 audioData];
          v24 = audioData3;
          v20 = [audioData3 isEqual:?];
          mediaMetadata5 = v32;
          if (!v20)
          {
            v11 = 0;
LABEL_27:

LABEL_28:
            if (!v31)
            {
LABEL_30:

LABEL_31:
              mediaMetadata4 = v33;
              if (!mediaMetadata3)
              {
LABEL_33:

                goto LABEL_34;
              }

LABEL_32:

              goto LABEL_33;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        else
        {
          mediaMetadata5 = v32;
        }

        uniqueId = [(SFButtonItem *)self uniqueId];
        v11 = uniqueId == [(SFButtonItem *)v6 uniqueId];
        if (!v28)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v11 = 0;
  }

LABEL_35:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFPlayAudioButtonItem;
  v4 = [(SFButtonItem *)&v12 copyWithZone:zone];
  mediaMetadata = [(SFPlayAudioButtonItem *)self mediaMetadata];
  v6 = [mediaMetadata copy];
  [v4 setMediaMetadata:v6];

  toggleButtonConfiguration = [(SFPlayAudioButtonItem *)self toggleButtonConfiguration];
  v8 = [toggleButtonConfiguration copy];
  [v4 setToggleButtonConfiguration:v8];

  audioData = [(SFPlayAudioButtonItem *)self audioData];
  v10 = [audioData copy];
  [v4 setAudioData:v10];

  [v4 setUniqueId:{-[SFButtonItem uniqueId](self, "uniqueId")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPlayAudioButtonItem alloc] initWithFacade:self];
  jsonData = [(_SFPBPlayAudioButtonItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPlayAudioButtonItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPlayAudioButtonItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPlayAudioButtonItem alloc] initWithFacade:self];
  data = [(_SFPBPlayAudioButtonItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPlayAudioButtonItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPlayAudioButtonItem alloc] initWithData:v5];
  v7 = [(SFPlayAudioButtonItem *)self initWithProtobuf:v6];

  return v7;
}

- (SFPlayAudioButtonItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v20.receiver = self;
  v20.super_class = SFPlayAudioButtonItem;
  v5 = [(SFPlayAudioButtonItem *)&v20 init];
  if (v5)
  {
    mediaMetadata = [protobufCopy mediaMetadata];

    if (mediaMetadata)
    {
      v7 = [SFMediaMetadata alloc];
      mediaMetadata2 = [protobufCopy mediaMetadata];
      v9 = [(SFMediaMetadata *)v7 initWithProtobuf:mediaMetadata2];
      [(SFPlayAudioButtonItem *)v5 setMediaMetadata:v9];
    }

    toggleButtonConfiguration = [protobufCopy toggleButtonConfiguration];

    if (toggleButtonConfiguration)
    {
      v11 = [SFToggleButtonConfiguration alloc];
      toggleButtonConfiguration2 = [protobufCopy toggleButtonConfiguration];
      v13 = [(SFToggleButtonConfiguration *)v11 initWithProtobuf:toggleButtonConfiguration2];
      [(SFPlayAudioButtonItem *)v5 setToggleButtonConfiguration:v13];
    }

    audioData = [protobufCopy audioData];

    if (audioData)
    {
      v15 = [SFAudioData alloc];
      audioData2 = [protobufCopy audioData];
      v17 = [(SFAudioData *)v15 initWithProtobuf:audioData2];
      [(SFPlayAudioButtonItem *)v5 setAudioData:v17];
    }

    if ([protobufCopy uniqueId])
    {
      -[SFButtonItem setUniqueId:](v5, "setUniqueId:", [protobufCopy uniqueId]);
    }

    v18 = v5;
  }

  return v5;
}

@end