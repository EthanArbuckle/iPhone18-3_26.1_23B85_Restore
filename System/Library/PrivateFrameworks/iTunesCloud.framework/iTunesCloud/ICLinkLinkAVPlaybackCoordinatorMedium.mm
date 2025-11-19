@interface ICLinkLinkAVPlaybackCoordinatorMedium
- (BOOL)isCoordinatorSuspended;
- (ICLinkLinkAVPlaybackCoordinatorMedium)initWithPlaybackCoordinator:(id)a3 liveLink:(id)a4;
- (id)localParticipantUUIDForPlaybackCoordinator:(id)a3;
- (void)_playbackCoordinatorDidIssueCommandToPlaybackObjectNotification:(id)a3;
@end

@implementation ICLinkLinkAVPlaybackCoordinatorMedium

- (id)localParticipantUUIDForPlaybackCoordinator:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(ICLiveLinkPlaybackCoordinatorMedium *)self localParticipantUUID];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "MLLM %p: localParticipantUUIDForPlaybackCoordinator localParticipantUUID=%{public}@", &v7, 0x16u);
  }

  return v4;
}

- (void)_playbackCoordinatorDidIssueCommandToPlaybackObjectNotification:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6987990]];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6987988]];
    if (([v6 isEqualToString:*MEMORY[0x1E69879B0]]& 1) != 0 || [v6 isEqualToString:*MEMORY[0x1E69879B8]])
    {
      v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6987998]];
      [v7 doubleValue];
      v9 = v8;
      v10 = [ICLiveLinkPlaybackEvent alloc];
      if (v9 > 0.0)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      v12 = [(ICLiveLinkPlaybackEvent *)v10 initWithKind:v11];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (![v6 isEqualToString:*MEMORY[0x1E69879C0]])
      {
        goto LABEL_15;
      }

      v12 = [[ICLiveLinkPlaybackEvent alloc] initWithKind:3];
      if (!v12)
      {
        goto LABEL_15;
      }
    }

    v13 = [(ICLiveLinkPlaybackCoordinatorMedium *)self liveLink];
    v14 = [v13 participantForParticipantUUID:v5];
    v15 = [ICLiveLinkEvent eventWithPlaybackEvent:v12 participant:v14];

    v16 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = 134218498;
      v18 = self;
      v19 = 2114;
      v20 = v15;
      v21 = 2114;
      v22 = v4;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_INFO, "MLLM %p: _playbackCoordinatorDidIssueCommandToPlaybackObjectNotification [produced event] event=%{public}@ userInfo=%{public}@", &v17, 0x20u);
    }

    [v13 receivedEvent:v15];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "LiveLinkMedium");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v17 = 134218242;
      v18 = self;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_INFO, "MLLM %p: _playbackCoordinatorDidIssueCommandToPlaybackObjectNotification [ignoring local event] userInfo=%{public}@", &v17, 0x16u);
    }
  }

LABEL_15:
}

- (BOOL)isCoordinatorSuspended
{
  v2 = [(AVPlayerPlaybackCoordinator *)self->_playbackCoordinator suspensionReasons];
  v3 = [v2 count] != 0;

  return v3;
}

- (ICLinkLinkAVPlaybackCoordinatorMedium)initWithPlaybackCoordinator:(id)a3 liveLink:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ICLinkLinkAVPlaybackCoordinatorMedium;
  v8 = [(ICLiveLinkPlaybackCoordinatorMedium *)&v12 initWithLiveLink:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_playbackCoordinator, a3);
    [(AVPlayerPlaybackCoordinator *)v9->_playbackCoordinator setCoordinationMediumDelegate:v9];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v9 selector:sel__playbackCoordinatorDidIssueCommandToPlaybackObjectNotification_ name:*MEMORY[0x1E69879A0] object:v7];

    [(ICLiveLinkPlaybackCoordinatorMedium *)v9 synchronizePlaybackStateForReason:@"InitialSync"];
  }

  return v9;
}

@end