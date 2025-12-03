@interface VUIPlaybackReporterSession
+ (id)transitionReasonForMediaControllerStartReason:(id)reason autoStart:(id)start;
+ (id)transitionReasonForMediaControllerStopReason:(id)reason autoStop:(id)stop;
+ (id)transitionTypeForMediaControllerAutoTransition:(id)transition;
- (TVPPlayback)player;
- (VUIPlaybackReporterSession)initWithPlayer:(id)player context:(id)context;
- (id)consumeMetadataForKey:(id)key;
- (id)consumeStartReason;
- (id)consumeStartType;
- (id)consumeStopReason;
- (id)consumeStopType;
- (id)description;
- (id)metadataForKey:(id)key;
- (void)setMetadata:(id)metadata forKey:(id)key;
@end

@implementation VUIPlaybackReporterSession

- (id)consumeStopType
{
  v2 = *MEMORY[0x1E69AB820];
  v3 = [(VUIPlaybackReporterSession *)self consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyStopType"];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (id)consumeStopReason
{
  v2 = *MEMORY[0x1E69AB7F8];
  v3 = [(VUIPlaybackReporterSession *)self consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason"];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (id)consumeStartType
{
  v2 = *MEMORY[0x1E69AB820];
  v3 = [(VUIPlaybackReporterSession *)self consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyStartType"];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

- (id)consumeStartReason
{
  v2 = *MEMORY[0x1E69AB798];
  v3 = [(VUIPlaybackReporterSession *)self consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason"];
  v4 = v3;
  if (v3)
  {
    v2 = v3;
  }

  v5 = v2;

  return v2;
}

+ (id)transitionTypeForMediaControllerAutoTransition:(id)transition
{
  transitionCopy = transition;
  v4 = *MEMORY[0x1E69AB820];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [transitionCopy BOOLValue];
    v6 = MEMORY[0x1E69AB810];
    if (!bOOLValue)
    {
      v6 = MEMORY[0x1E69AB818];
    }

    v7 = *v6;

    v4 = v7;
  }

  return v4;
}

+ (id)transitionReasonForMediaControllerStartReason:(id)reason autoStart:(id)start
{
  v21 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  startCopy = start;
  v7 = *MEMORY[0x1E69AB798];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  integerValue = [reasonCopy integerValue];
  v9 = 0;
  if (integerValue > 7)
  {
    if (integerValue <= 9)
    {
      if (integerValue == 8)
      {
        v10 = *MEMORY[0x1E69AB768];

        v9 = @"Multiview";
      }

      else
      {
        v10 = *MEMORY[0x1E69AB760];

        v9 = @"CatchUpToLive";
      }

      goto LABEL_24;
    }

    switch(integerValue)
    {
      case 10:
        v10 = *MEMORY[0x1E69AB770];

        v9 = @"PlayOther";
        goto LABEL_24;
      case 11:
        v10 = *MEMORY[0x1E69AB768];

        v9 = @"ClipsPlaylist";
        goto LABEL_24;
      case 12:
        v10 = *MEMORY[0x1E69AB760];

        v9 = @"LivePostPlayBinge";
        goto LABEL_24;
    }
  }

  else if (integerValue <= 1)
  {
    if (integerValue)
    {
      if (integerValue == 1)
      {
        v10 = *MEMORY[0x1E69AB758];

        v9 = @"BackgroundTrailer";
        goto LABEL_24;
      }
    }

    else
    {
      v9 = @"Unknown";
    }
  }

  else
  {
    switch(integerValue)
    {
      case 2:
        v10 = *MEMORY[0x1E69AB768];

        v9 = @"UpNext";
        goto LABEL_24;
      case 3:
        v10 = *MEMORY[0x1E69AB760];

        v9 = @"PostPlay";
        goto LABEL_24;
      case 4:
        v10 = *MEMORY[0x1E69AB768];

        v9 = @"ProductPage";
LABEL_24:
        v7 = v10;
        break;
    }
  }

  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = reasonCopy;
    v19 = 2112;
    v20 = startCopy;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterSession (VPAF) -  Resolved start reason:[%@]. _reason:%@(%@) _autoStart:%@", &v13, 0x2Au);
  }

LABEL_28:

  return v7;
}

+ (id)transitionReasonForMediaControllerStopReason:(id)reason autoStop:(id)stop
{
  v21 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  stopCopy = stop;
  v7 = *MEMORY[0x1E69AB798];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  integerValue = [reasonCopy integerValue];
  v9 = 0;
  if (integerValue <= 2)
  {
    if (integerValue)
    {
      if (integerValue == 1)
      {
        v10 = *MEMORY[0x1E69AB7D0];

        v9 = @"AnotherPlaybackStarted";
        goto LABEL_17;
      }

      if (integerValue == 2)
      {
        v10 = *MEMORY[0x1E69AB7C0];

        v9 = @"PostPlayBinge";
LABEL_17:
        v7 = v10;
      }
    }

    else
    {
      v9 = @"Unknown";
    }
  }

  else
  {
    if (integerValue <= 4)
    {
      if (integerValue == 3)
      {
        v10 = *MEMORY[0x1E69AB7A8];

        v9 = @"PostPlayNonBinge";
      }

      else
      {
        v10 = *MEMORY[0x1E69AB7B8];

        v9 = @"TimedOutWhilePaused";
      }

      goto LABEL_17;
    }

    if (integerValue == 5)
    {
      v10 = *MEMORY[0x1E69AB7C0];

      v9 = @"CatchUpToLive";
      goto LABEL_17;
    }

    if (integerValue == 6)
    {
      v10 = *MEMORY[0x1E69AB7C0];

      v9 = @"LivePostPlayBinge";
      goto LABEL_17;
    }
  }

  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = reasonCopy;
    v19 = 2112;
    v20 = stopCopy;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterSession (VPAF) -  Resolved stop reason:[%@] _reason:%@(%@) _autoStop:%@", &v13, 0x2Au);
  }

LABEL_21:

  return v7;
}

- (VUIPlaybackReporterSession)initWithPlayer:(id)player context:(id)context
{
  playerCopy = player;
  contextCopy = context;
  currentMediaItem = [playerCopy currentMediaItem];

  if (currentMediaItem)
  {
    v18.receiver = self;
    v18.super_class = VUIPlaybackReporterSession;
    v9 = [(VUIPlaybackReporterSession *)&v18 init];
    if (v9)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v12 = [uUIDString substringToIndex:7];
      UUID = v9->_UUID;
      v9->_UUID = v12;

      objc_storeWeak(&v9->_player, playerCopy);
      objc_storeStrong(&v9->_context, context);
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      metadata = v9->_metadata;
      v9->_metadata = v14;

      v9->_metadataLock._os_unfair_lock_opaque = 0;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = VUIPlaybackReporterSession;
  v4 = [(VUIPlaybackReporterSession *)&v9 description];
  player = [(VUIPlaybackReporterSession *)self player];
  [(VUIPlaybackReporterSession *)self reportingEnabled];
  v6 = VUIBoolLogString();
  v7 = [v3 stringWithFormat:@"%@ %@ Enabled:%@", v4, player, v6];

  return v7;
}

- (id)metadataForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_metadataLock);
  v5 = [(NSMutableDictionary *)self->_metadata objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_metadataLock);

  return v5;
}

- (void)setMetadata:(id)metadata forKey:(id)key
{
  metadataCopy = metadata;
  keyCopy = key;
  if (keyCopy)
  {
    os_unfair_lock_lock(&self->_metadataLock);
    metadata = self->_metadata;
    if (metadataCopy)
    {
      [(NSMutableDictionary *)metadata setObject:metadataCopy forKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)metadata removeObjectForKey:keyCopy];
    }

    os_unfair_lock_unlock(&self->_metadataLock);
  }
}

- (id)consumeMetadataForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_metadataLock);
  v5 = [(NSMutableDictionary *)self->_metadata objectForKey:keyCopy];
  [(NSMutableDictionary *)self->_metadata removeObjectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_metadataLock);

  return v5;
}

- (TVPPlayback)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end