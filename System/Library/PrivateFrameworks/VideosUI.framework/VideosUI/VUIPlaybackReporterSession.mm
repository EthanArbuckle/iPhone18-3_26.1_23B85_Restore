@interface VUIPlaybackReporterSession
+ (id)transitionReasonForMediaControllerStartReason:(id)a3 autoStart:(id)a4;
+ (id)transitionReasonForMediaControllerStopReason:(id)a3 autoStop:(id)a4;
+ (id)transitionTypeForMediaControllerAutoTransition:(id)a3;
- (TVPPlayback)player;
- (VUIPlaybackReporterSession)initWithPlayer:(id)a3 context:(id)a4;
- (id)consumeMetadataForKey:(id)a3;
- (id)consumeStartReason;
- (id)consumeStartType;
- (id)consumeStopReason;
- (id)consumeStopType;
- (id)description;
- (id)metadataForKey:(id)a3;
- (void)setMetadata:(id)a3 forKey:(id)a4;
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

+ (id)transitionTypeForMediaControllerAutoTransition:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E69AB820];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 BOOLValue];
    v6 = MEMORY[0x1E69AB810];
    if (!v5)
    {
      v6 = MEMORY[0x1E69AB818];
    }

    v7 = *v6;

    v4 = v7;
  }

  return v4;
}

+ (id)transitionReasonForMediaControllerStartReason:(id)a3 autoStart:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E69AB798];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  v8 = [v5 integerValue];
  v9 = 0;
  if (v8 > 7)
  {
    if (v8 <= 9)
    {
      if (v8 == 8)
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

    switch(v8)
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

  else if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
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
    switch(v8)
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
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterSession (VPAF) -  Resolved start reason:[%@]. _reason:%@(%@) _autoStart:%@", &v13, 0x2Au);
  }

LABEL_28:

  return v7;
}

+ (id)transitionReasonForMediaControllerStopReason:(id)a3 autoStop:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E69AB798];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = [v5 integerValue];
  v9 = 0;
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v10 = *MEMORY[0x1E69AB7D0];

        v9 = @"AnotherPlaybackStarted";
        goto LABEL_17;
      }

      if (v8 == 2)
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
    if (v8 <= 4)
    {
      if (v8 == 3)
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

    if (v8 == 5)
    {
      v10 = *MEMORY[0x1E69AB7C0];

      v9 = @"CatchUpToLive";
      goto LABEL_17;
    }

    if (v8 == 6)
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
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterSession (VPAF) -  Resolved stop reason:[%@] _reason:%@(%@) _autoStop:%@", &v13, 0x2Au);
  }

LABEL_21:

  return v7;
}

- (VUIPlaybackReporterSession)initWithPlayer:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 currentMediaItem];

  if (v8)
  {
    v18.receiver = self;
    v18.super_class = VUIPlaybackReporterSession;
    v9 = [(VUIPlaybackReporterSession *)&v18 init];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = [v10 UUIDString];
      v12 = [v11 substringToIndex:7];
      UUID = v9->_UUID;
      v9->_UUID = v12;

      objc_storeWeak(&v9->_player, v6);
      objc_storeStrong(&v9->_context, a4);
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      metadata = v9->_metadata;
      v9->_metadata = v14;

      v9->_metadataLock._os_unfair_lock_opaque = 0;
    }

    self = v9;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = VUIPlaybackReporterSession;
  v4 = [(VUIPlaybackReporterSession *)&v9 description];
  v5 = [(VUIPlaybackReporterSession *)self player];
  [(VUIPlaybackReporterSession *)self reportingEnabled];
  v6 = VUIBoolLogString();
  v7 = [v3 stringWithFormat:@"%@ %@ Enabled:%@", v4, v5, v6];

  return v7;
}

- (id)metadataForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_metadataLock);
  v5 = [(NSMutableDictionary *)self->_metadata objectForKey:v4];

  os_unfair_lock_unlock(&self->_metadataLock);

  return v5;
}

- (void)setMetadata:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    os_unfair_lock_lock(&self->_metadataLock);
    metadata = self->_metadata;
    if (v8)
    {
      [(NSMutableDictionary *)metadata setObject:v8 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)metadata removeObjectForKey:v6];
    }

    os_unfair_lock_unlock(&self->_metadataLock);
  }
}

- (id)consumeMetadataForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_metadataLock);
  v5 = [(NSMutableDictionary *)self->_metadata objectForKey:v4];
  [(NSMutableDictionary *)self->_metadata removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_metadataLock);

  return v5;
}

- (TVPPlayback)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end