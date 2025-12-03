@interface PCMediaRemoteDisplayContext
- (BOOL)isEqual:(id)equal;
- (PCMediaRemoteDisplayContext)initWithCoder:(id)coder;
- (id)userActivityInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCMediaRemoteDisplayContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v21.receiver = self;
    v21.super_class = PCMediaRemoteDisplayContext;
    if (![(PCDisplayContext *)&v21 isEqual:v5])
    {
LABEL_12:
      v12 = 0;
LABEL_19:

      goto LABEL_20;
    }

    mediaRemoteID = self->_mediaRemoteID;
    mediaRemoteID = [v5 mediaRemoteID];
    v8 = mediaRemoteID;
    v9 = mediaRemoteID;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if ((v8 != 0) == (v9 == 0))
      {
        goto LABEL_17;
      }

      v11 = [(NSString *)v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    proxDeviceState = self->_proxDeviceState;
    proxDeviceState = [v5 proxDeviceState];
    v8 = proxDeviceState;
    v15 = proxDeviceState;
    v10 = v15;
    if (v8 == v15)
    {
    }

    else
    {
      if ((v8 != 0) == (v15 == 0))
      {
        goto LABEL_17;
      }

      v16 = [(NSString *)v8 isEqual:v15];

      if (!v16)
      {
        goto LABEL_12;
      }
    }

    selectedDeviceState = self->_selectedDeviceState;
    selectedDeviceState = [v5 selectedDeviceState];
    v8 = selectedDeviceState;
    v19 = selectedDeviceState;
    v10 = v19;
    if (v8 == v19)
    {
      v12 = 1;
      goto LABEL_18;
    }

    if ((v8 != 0) != (v19 == 0))
    {
      v12 = [(NSString *)v8 isEqual:v19];
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = PCMediaRemoteDisplayContext;
  [(PCDisplayContext *)&v6 encodeWithCoder:coderCopy];
  mediaRemoteID = self->_mediaRemoteID;
  if (mediaRemoteID)
  {
    [coderCopy encodeObject:mediaRemoteID forKey:@"mrID"];
  }
}

- (id)userActivityInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  proxDeviceState = [(PCMediaRemoteDisplayContext *)self proxDeviceState];
  v5 = proxDeviceState;
  if (proxDeviceState)
  {
    playbackState = [proxDeviceState playbackState];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:playbackState];
    [v3 setObject:v7 forKey:@"playbackState"];

    playbackQueue = [v5 playbackQueue];
    v9 = playbackQueue;
    if (playbackQueue)
    {
      v10 = [playbackQueue contentItemWithOffset:0];
      v11 = v10;
      if (v10)
      {
        artwork = [v10 artwork];
        v13 = artwork;
        if (artwork)
        {
          imageData = [artwork imageData];
          [v3 setObject:imageData forKey:@"artworkKey"];
        }

        metadata = [v11 metadata];
        userInfo = [metadata userInfo];

        if (userInfo)
        {
          [v3 setObject:userInfo forKey:@"metadataKey"];
        }
      }
    }

    playerPath = [v5 playerPath];
    client = [playerPath client];
    bundleIdentifier = [client bundleIdentifier];

    if (bundleIdentifier)
    {
      [v3 setObject:bundleIdentifier forKey:@"bundleIdentifierKey"];
    }

    v20 = [v3 copy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (PCMediaRemoteDisplayContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PCMediaRemoteDisplayContext;
  v5 = [(PCDisplayContext *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

@end