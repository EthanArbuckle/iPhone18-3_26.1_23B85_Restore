@interface MTExtensionPlaybackController
+ (_MRSystemAppPlaybackQueue)playbackQueueForIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info;
@end

@implementation MTExtensionPlaybackController

uint64_t __166__MTExtensionPlaybackController_setQueueWithPlaybackRequestIdentifier_startPlayback_assetInfo_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_completion___block_invoke(uint64_t a1, int a2, int a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, (a3 | a2) == 0);
  }

  return result;
}

void __171__MTExtensionPlaybackController__setPlaybackQueueWithIdentifier_startPlayback_assetInfo_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_playerID_mrCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = _MTLogCategoryPlayback();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      v12 = a2;
      _os_log_impl(&dword_25E9F0000, v5, OS_LOG_TYPE_ERROR, "Failed to set playback queue: MediaRemote command failed with MRSendCommandError: %ld", &v11, 0xCu);
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, 2, a2);
    }
  }

  else
  {
    v7 = [a3 firstObject];
    v8 = [v7 unsignedIntValue];
    if (v8)
    {
      v9 = _MTLogCategoryPlayback();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 134217984;
        v12 = v8;
        _os_log_impl(&dword_25E9F0000, v9, OS_LOG_TYPE_ERROR, "Failed to set playback queue: MediaRemote command failed with MRMediaRemoteCommandHandlerStatus: %ld", &v11, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (_MRSystemAppPlaybackQueue)playbackQueueForIdentifier:(id)identifier startPlayback:(BOOL)playback assetInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  identifierCopy = identifier;
  v7 = MEMORY[0x277CBEA60];
  identifierCopy2 = identifier;
  [v7 arrayWithObjects:&identifierCopy count:1];

  v9 = *MEMORY[0x277CBECE8];
  v10 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();
  MRSystemAppPlaybackQueueSetTracklistShuffleMode();
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  if ([infoCopy length])
  {
    MRSystemAppPlaybackQueueSetSiriAssetInfo();
    v11 = kSetPlaybackQueueSiriFeatureName;
  }

  else
  {
    v11 = &kSetPlaybackQueueControlCenterFeatureName;
  }

  v12 = *v11;
  MRSystemAppPlaybackQueueSetFeatureName();

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

@end