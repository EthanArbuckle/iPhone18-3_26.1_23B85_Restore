@interface PCMediaRemoteDisplayContext
- (BOOL)isEqual:(id)a3;
- (PCMediaRemoteDisplayContext)initWithCoder:(id)a3;
- (id)userActivityInfo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCMediaRemoteDisplayContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v7 = [v5 mediaRemoteID];
    v8 = mediaRemoteID;
    v9 = v7;
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
    v14 = [v5 proxDeviceState];
    v8 = proxDeviceState;
    v15 = v14;
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
    v18 = [v5 selectedDeviceState];
    v8 = selectedDeviceState;
    v19 = v18;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PCMediaRemoteDisplayContext;
  [(PCDisplayContext *)&v6 encodeWithCoder:v4];
  mediaRemoteID = self->_mediaRemoteID;
  if (mediaRemoteID)
  {
    [v4 encodeObject:mediaRemoteID forKey:@"mrID"];
  }
}

- (id)userActivityInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(PCMediaRemoteDisplayContext *)self proxDeviceState];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 playbackState];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    [v3 setObject:v7 forKey:@"playbackState"];

    v8 = [v5 playbackQueue];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 contentItemWithOffset:0];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 artwork];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 imageData];
          [v3 setObject:v14 forKey:@"artworkKey"];
        }

        v15 = [v11 metadata];
        v16 = [v15 userInfo];

        if (v16)
        {
          [v3 setObject:v16 forKey:@"metadataKey"];
        }
      }
    }

    v17 = [v5 playerPath];
    v18 = [v17 client];
    v19 = [v18 bundleIdentifier];

    if (v19)
    {
      [v3 setObject:v19 forKey:@"bundleIdentifierKey"];
    }

    v20 = [v3 copy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (PCMediaRemoteDisplayContext)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PCMediaRemoteDisplayContext;
  v5 = [(PCDisplayContext *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

@end