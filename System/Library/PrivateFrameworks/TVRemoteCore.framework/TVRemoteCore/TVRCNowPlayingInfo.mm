@interface TVRCNowPlayingInfo
- (BOOL)isEqualToNowPlayingInfo:(id)info;
- (TVRCNowPlayingInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)nowPlayingInfoMergedWithNowPlayingInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCNowPlayingInfo

- (id)description
{
  v21 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  identifier = [(TVRCNowPlayingInfo *)self identifier];
  playbackRate = [(TVRCNowPlayingInfo *)self playbackRate];
  playbackState = [(TVRCNowPlayingInfo *)self playbackState];
  metadata = [(TVRCNowPlayingInfo *)self metadata];
  title = [metadata title];
  metadata2 = [(TVRCNowPlayingInfo *)self metadata];
  canonicalID = [metadata2 canonicalID];
  metadata3 = [(TVRCNowPlayingInfo *)self metadata];
  timestamp = [metadata3 timestamp];
  metadata4 = [(TVRCNowPlayingInfo *)self metadata];
  timeOffset = [metadata4 timeOffset];
  playerIdentifier = [(TVRCNowPlayingInfo *)self playerIdentifier];
  v4 = MEMORY[0x277CCABB0];
  imageData = [(TVRCNowPlayingInfo *)self imageData];
  v13 = [v4 numberWithUnsignedInteger:{objc_msgSend(imageData, "length")}];
  imageDataIsPlaceholder = [(TVRCNowPlayingInfo *)self imageDataIsPlaceholder];
  v6 = MEMORY[0x277CCABB0];
  rawTimedMetadata = [(TVRCNowPlayingInfo *)self rawTimedMetadata];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(rawTimedMetadata, "length")}];
  expectsTimedMetadata = [(TVRCNowPlayingInfo *)self expectsTimedMetadata];
  captionsEnabled = [(TVRCNowPlayingInfo *)self captionsEnabled];
  hasValidCaptionOptions = [(TVRCNowPlayingInfo *)self hasValidCaptionOptions];
  v22 = [v21 stringWithFormat:@"<%@ %p: identifier=%@ playbackRate=%@; playbackState=%@; metadata.title=%@; metadata.canonicalID=%@; timestamp=%@; timeOffset=%@; playerIdentifier=%@; imageData.length=%@; imageDataIsPlaceholder=%@; rawTimedMetadata.length=%@, expectsTimedMetadata=%@, captionsEnabled=%@, hasValidCaptionOptions=%@", v20, self, identifier, playbackRate, playbackState, title, canonicalID, timestamp, timeOffset, playerIdentifier, v13, imageDataIsPlaceholder, v8, expectsTimedMetadata, captionsEnabled, hasValidCaptionOptions];;

  return v22;
}

- (BOOL)isEqualToNowPlayingInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_36;
  }

  identifier = [(TVRCNowPlayingInfo *)self identifier];
  identifier2 = [infoCopy identifier];
  v7 = (identifier == 0) ^ (identifier2 == 0);

  if (v7)
  {
    goto LABEL_36;
  }

  playbackRate = [(TVRCNowPlayingInfo *)self playbackRate];
  playbackRate2 = [infoCopy playbackRate];
  v10 = (playbackRate == 0) ^ (playbackRate2 == 0);

  if (v10)
  {
    goto LABEL_36;
  }

  playbackState = [(TVRCNowPlayingInfo *)self playbackState];
  playbackState2 = [infoCopy playbackState];
  v13 = (playbackState == 0) ^ (playbackState2 == 0);

  if (v13)
  {
    goto LABEL_36;
  }

  playerIdentifier = [(TVRCNowPlayingInfo *)self playerIdentifier];
  playerIdentifier2 = [infoCopy playerIdentifier];
  v16 = (playerIdentifier == 0) ^ (playerIdentifier2 == 0);

  if (v16)
  {
    goto LABEL_36;
  }

  metadata = [(TVRCNowPlayingInfo *)self metadata];
  metadata2 = [infoCopy metadata];
  v19 = (metadata == 0) ^ (metadata2 == 0);

  if (v19)
  {
    goto LABEL_36;
  }

  imageData = [(TVRCNowPlayingInfo *)self imageData];
  imageData2 = [infoCopy imageData];
  v22 = (imageData == 0) ^ (imageData2 == 0);

  if (v22)
  {
    goto LABEL_36;
  }

  imageDataIsPlaceholder = [(TVRCNowPlayingInfo *)self imageDataIsPlaceholder];
  imageDataIsPlaceholder2 = [infoCopy imageDataIsPlaceholder];
  v25 = (imageDataIsPlaceholder == 0) ^ (imageDataIsPlaceholder2 == 0);

  if (v25)
  {
    goto LABEL_36;
  }

  rawTimedMetadata = [(TVRCNowPlayingInfo *)self rawTimedMetadata];
  rawTimedMetadata2 = [infoCopy rawTimedMetadata];
  v28 = (rawTimedMetadata == 0) ^ (rawTimedMetadata2 == 0);

  if (v28)
  {
    goto LABEL_36;
  }

  expectsTimedMetadata = [(TVRCNowPlayingInfo *)self expectsTimedMetadata];
  expectsTimedMetadata2 = [infoCopy expectsTimedMetadata];
  v31 = (expectsTimedMetadata == 0) ^ (expectsTimedMetadata2 == 0);

  if (v31)
  {
    goto LABEL_36;
  }

  captionsEnabled = [(TVRCNowPlayingInfo *)self captionsEnabled];
  captionsEnabled2 = [infoCopy captionsEnabled];
  v34 = (captionsEnabled == 0) ^ (captionsEnabled2 == 0);

  if (v34)
  {
    goto LABEL_36;
  }

  hasValidCaptionOptions = [(TVRCNowPlayingInfo *)self hasValidCaptionOptions];
  hasValidCaptionOptions2 = [infoCopy hasValidCaptionOptions];
  v37 = (hasValidCaptionOptions == 0) ^ (hasValidCaptionOptions2 == 0);

  if (v37)
  {
    goto LABEL_36;
  }

  identifier3 = [(TVRCNowPlayingInfo *)self identifier];
  if (identifier3)
  {
    v39 = identifier3;
    identifier4 = [(TVRCNowPlayingInfo *)self identifier];
    identifier5 = [infoCopy identifier];
    v42 = [identifier4 isEqualToString:identifier5];

    if (!v42)
    {
      goto LABEL_36;
    }
  }

  playbackRate3 = [(TVRCNowPlayingInfo *)self playbackRate];
  if (playbackRate3)
  {
    v44 = playbackRate3;
    playbackRate4 = [(TVRCNowPlayingInfo *)self playbackRate];
    playbackRate5 = [infoCopy playbackRate];
    v47 = [playbackRate4 isEqualToNumber:playbackRate5];

    if (!v47)
    {
      goto LABEL_36;
    }
  }

  playbackState3 = [(TVRCNowPlayingInfo *)self playbackState];
  if (playbackState3)
  {
    v49 = playbackState3;
    playbackState4 = [(TVRCNowPlayingInfo *)self playbackState];
    playbackState5 = [infoCopy playbackState];
    v52 = [playbackState4 isEqualToNumber:playbackState5];

    if (!v52)
    {
      goto LABEL_36;
    }
  }

  playerIdentifier3 = [(TVRCNowPlayingInfo *)self playerIdentifier];
  if (playerIdentifier3)
  {
    v54 = playerIdentifier3;
    playerIdentifier4 = [(TVRCNowPlayingInfo *)self playerIdentifier];
    playerIdentifier5 = [infoCopy playerIdentifier];
    v57 = [playerIdentifier4 isEqualToString:playerIdentifier5];

    if (!v57)
    {
      goto LABEL_36;
    }
  }

  imageDataIsPlaceholder3 = [(TVRCNowPlayingInfo *)self imageDataIsPlaceholder];
  if (imageDataIsPlaceholder3)
  {
    v59 = imageDataIsPlaceholder3;
    imageDataIsPlaceholder4 = [(TVRCNowPlayingInfo *)self imageDataIsPlaceholder];
    imageDataIsPlaceholder5 = [infoCopy imageDataIsPlaceholder];
    v62 = [imageDataIsPlaceholder4 isEqualToNumber:imageDataIsPlaceholder5];

    if (!v62)
    {
      goto LABEL_36;
    }
  }

  imageData3 = [(TVRCNowPlayingInfo *)self imageData];
  if (imageData3)
  {
    v64 = imageData3;
    imageData4 = [(TVRCNowPlayingInfo *)self imageData];
    imageData5 = [infoCopy imageData];
    v67 = [imageData4 isEqualToData:imageData5];

    if (!v67)
    {
      goto LABEL_36;
    }
  }

  metadata3 = [(TVRCNowPlayingInfo *)self metadata];
  if (metadata3)
  {
    v69 = metadata3;
    metadata4 = [(TVRCNowPlayingInfo *)self metadata];
    metadata5 = [infoCopy metadata];
    v72 = [metadata4 isEqualToNowPlayingMetadata:metadata5];

    if (!v72)
    {
      goto LABEL_36;
    }
  }

  rawTimedMetadata3 = [(TVRCNowPlayingInfo *)self rawTimedMetadata];
  if (rawTimedMetadata3)
  {
    v74 = rawTimedMetadata3;
    rawTimedMetadata4 = [(TVRCNowPlayingInfo *)self rawTimedMetadata];
    rawTimedMetadata5 = [infoCopy rawTimedMetadata];
    v77 = [rawTimedMetadata4 isEqualToData:rawTimedMetadata5];

    if (!v77)
    {
      goto LABEL_36;
    }
  }

  expectsTimedMetadata3 = [(TVRCNowPlayingInfo *)self expectsTimedMetadata];
  if (expectsTimedMetadata3)
  {
    v79 = expectsTimedMetadata3;
    expectsTimedMetadata4 = [(TVRCNowPlayingInfo *)self expectsTimedMetadata];
    expectsTimedMetadata5 = [infoCopy expectsTimedMetadata];
    v82 = [expectsTimedMetadata4 isEqualToNumber:expectsTimedMetadata5];

    if (!v82)
    {
      goto LABEL_36;
    }
  }

  captionsEnabled3 = [(TVRCNowPlayingInfo *)self captionsEnabled];
  if (!captionsEnabled3)
  {
    goto LABEL_34;
  }

  v84 = captionsEnabled3;
  captionsEnabled4 = [(TVRCNowPlayingInfo *)self captionsEnabled];
  captionsEnabled5 = [infoCopy captionsEnabled];
  v87 = [captionsEnabled4 isEqualToNumber:captionsEnabled5];

  if (!v87)
  {
LABEL_36:
    v92 = 0;
  }

  else
  {
LABEL_34:
    hasValidCaptionOptions3 = [(TVRCNowPlayingInfo *)self hasValidCaptionOptions];
    if (hasValidCaptionOptions3)
    {
      v89 = hasValidCaptionOptions3;
      hasValidCaptionOptions4 = [(TVRCNowPlayingInfo *)self hasValidCaptionOptions];
      hasValidCaptionOptions5 = [infoCopy hasValidCaptionOptions];
      v92 = [hasValidCaptionOptions4 isEqualToNumber:hasValidCaptionOptions5];
    }

    else
    {
      v92 = 1;
    }
  }

  return v92 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TVRCNowPlayingInfo);
  v5 = [(NSString *)self->_identifier copy];
  [(TVRCNowPlayingInfo *)v4 setIdentifier:v5];

  v6 = [(NSNumber *)self->_playbackRate copy];
  [(TVRCNowPlayingInfo *)v4 setPlaybackRate:v6];

  v7 = [(NSNumber *)self->_playbackState copy];
  [(TVRCNowPlayingInfo *)v4 setPlaybackState:v7];

  v8 = [(NSString *)self->_playerIdentifier copy];
  [(TVRCNowPlayingInfo *)v4 setPlayerIdentifier:v8];

  v9 = [(TVRCNowPlayingMetadata *)self->_metadata copy];
  [(TVRCNowPlayingInfo *)v4 setMetadata:v9];

  [(TVRCNowPlayingInfo *)v4 setImageData:self->_imageData];
  v10 = [(NSNumber *)self->_imageDataIsPlaceholder copy];
  [(TVRCNowPlayingInfo *)v4 setImageDataIsPlaceholder:v10];

  [(TVRCNowPlayingInfo *)v4 setRawTimedMetadata:self->_rawTimedMetadata];
  [(TVRCNowPlayingInfo *)v4 setExpectsTimedMetadata:self->_expectsTimedMetadata];
  v11 = [(NSNumber *)self->_captionsEnabled copy];
  [(TVRCNowPlayingInfo *)v4 setCaptionsEnabled:v11];

  v12 = [(NSNumber *)self->_hasValidCaptionOptions copy];
  [(TVRCNowPlayingInfo *)v4 setHasValidCaptionOptions:v12];

  return v4;
}

- (id)nowPlayingInfoMergedWithNowPlayingInfo:(id)info
{
  infoCopy = info;
  v5 = [(TVRCNowPlayingInfo *)self copy];
  identifier = [infoCopy identifier];

  if (identifier)
  {
    identifier2 = [infoCopy identifier];
    [v5 setIdentifier:identifier2];
  }

  playbackRate = [infoCopy playbackRate];

  if (playbackRate)
  {
    playbackRate2 = [infoCopy playbackRate];
    [v5 setPlaybackRate:playbackRate2];
  }

  playbackState = [infoCopy playbackState];

  if (playbackState)
  {
    playbackState2 = [infoCopy playbackState];
    [v5 setPlaybackState:playbackState2];
  }

  playerIdentifier = [infoCopy playerIdentifier];

  if (playerIdentifier)
  {
    playerIdentifier2 = [infoCopy playerIdentifier];
    [v5 setPlayerIdentifier:playerIdentifier2];
  }

  metadata = [infoCopy metadata];

  if (metadata)
  {
    metadata2 = [infoCopy metadata];
    [v5 setMetadata:metadata2];
  }

  imageData = [infoCopy imageData];

  if (imageData)
  {
    imageData2 = [infoCopy imageData];
    [v5 setImageData:imageData2];
  }

  imageDataIsPlaceholder = [infoCopy imageDataIsPlaceholder];

  if (imageDataIsPlaceholder)
  {
    imageDataIsPlaceholder2 = [infoCopy imageDataIsPlaceholder];
    [v5 setImageDataIsPlaceholder:imageDataIsPlaceholder2];
  }

  rawTimedMetadata = [infoCopy rawTimedMetadata];

  if (rawTimedMetadata)
  {
    rawTimedMetadata2 = [infoCopy rawTimedMetadata];
    [v5 setRawTimedMetadata:rawTimedMetadata2];
  }

  expectsTimedMetadata = [infoCopy expectsTimedMetadata];

  if (expectsTimedMetadata)
  {
    expectsTimedMetadata2 = [infoCopy expectsTimedMetadata];
    [v5 setExpectsTimedMetadata:expectsTimedMetadata2];
  }

  captionsEnabled = [infoCopy captionsEnabled];

  if (captionsEnabled)
  {
    captionsEnabled2 = [infoCopy captionsEnabled];
    [v5 setCaptionsEnabled:captionsEnabled2];
  }

  hasValidCaptionOptions = [infoCopy hasValidCaptionOptions];

  if (hasValidCaptionOptions)
  {
    hasValidCaptionOptions2 = [infoCopy hasValidCaptionOptions];
    [v5 setHasValidCaptionOptions:hasValidCaptionOptions2];
  }

  return v5;
}

- (TVRCNowPlayingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = TVRCNowPlayingInfo;
  v5 = [(TVRCNowPlayingInfo *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playbackRate"];
    playbackRate = v5->_playbackRate;
    v5->_playbackRate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playbackState"];
    playbackState = v5->_playbackState;
    v5->_playbackState = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playerIdentifier"];
    playerIdentifier = v5->_playerIdentifier;
    v5->_playerIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageDataIsPlaceholder"];
    imageDataIsPlaceholder = v5->_imageDataIsPlaceholder;
    v5->_imageDataIsPlaceholder = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawTimedMetadata"];
    rawTimedMetadata = v5->_rawTimedMetadata;
    v5->_rawTimedMetadata = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectsTimedMetadata"];
    expectsTimedMetadata = v5->_expectsTimedMetadata;
    v5->_expectsTimedMetadata = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"captionsEnabled"];
    captionsEnabled = v5->_captionsEnabled;
    v5->_captionsEnabled = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasValidCaptionOptions"];
    hasValidCaptionOptions = v5->_hasValidCaptionOptions;
    v5->_hasValidCaptionOptions = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_playbackRate forKey:@"playbackRate"];
  [coderCopy encodeObject:self->_playbackState forKey:@"playbackState"];
  [coderCopy encodeObject:self->_playerIdentifier forKey:@"playerIdentifier"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_imageData forKey:@"imageData"];
  [coderCopy encodeObject:self->_imageDataIsPlaceholder forKey:@"imageDataIsPlaceholder"];
  [coderCopy encodeObject:self->_rawTimedMetadata forKey:@"rawTimedMetadata"];
  [coderCopy encodeObject:self->_expectsTimedMetadata forKey:@"expectsTimedMetadata"];
  [coderCopy encodeObject:self->_captionsEnabled forKey:@"captionsEnabled"];
  [coderCopy encodeObject:self->_hasValidCaptionOptions forKey:@"hasValidCaptionOptions"];
}

@end