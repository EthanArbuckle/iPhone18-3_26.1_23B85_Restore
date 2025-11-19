@interface IMAVPlayerVideoViewController
- (IMAVPlayer)im_player;
- (IMAVPlayerVideoViewController)initWithPlayer:(id)a3;
- (void)mediaItemDidChange;
- (void)playbackSpeedDidChange;
@end

@implementation IMAVPlayerVideoViewController

- (IMAVPlayerVideoViewController)initWithPlayer:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3DB60] platformSupportsVideo])
  {
    v12.receiver = self;
    v12.super_class = IMAVPlayerVideoViewController;
    v5 = [(IMAVPlayerVideoViewController *)&v12 init];
    v6 = v5;
    if (v5)
    {
      [(IMAVPlayerVideoViewController *)v5 setIm_player:v4];
      [(IMAVPlayerVideoViewController *)v6 setAllowsPictureInPicturePlayback:1];
      [(IMAVPlayerVideoViewController *)v6 setUpdatesNowPlayingInfoCenter:0];
      [(IMAVPlayerVideoViewController *)v6 setCanPausePlaybackWhenExitingFullScreen:0];
      [(IMAVPlayerVideoViewController *)v6 setCanIncludePlaybackControlsWhenInline:0];
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 addObserver:v6 selector:sel_mediaItemDidChange name:@"IMMediaPlayerNotification_MediaItemDidChange" object:0];

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 addObserver:v6 selector:sel_playbackSpeedDidChange name:@"IMAVPlayerNotification_PlaybackSpeedChanged" object:0];
    }

    v9 = +[IMAVPlayer availableSpeeds];
    [(IMAVPlayerVideoViewController *)v6 setSpeeds:v9];

    self = v6;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)mediaItemDidChange
{
  v3 = [(IMAVPlayerVideoViewController *)self im_player];
  v4 = [v3 currentItem];
  v5 = [v4 isVideo];

  if ((v5 & 1) == 0)
  {

    [(IMAVPlayerVideoViewController *)self exitFullScreenWithCompletion:&__block_literal_global_4];
  }
}

- (void)playbackSpeedDidChange
{
  v3 = [(IMAVPlayerVideoViewController *)self im_player];
  v4 = [v3 playbackSpeed];

  [IMAVPlayer rateForPlaybackSpeed:v4];
  v6 = v5;
  v9 = [(IMAVPlayerVideoViewController *)self im_player];
  v7 = [v9 player];
  LODWORD(v8) = v6;
  [v7 setDefaultRate:v8];
}

- (IMAVPlayer)im_player
{
  WeakRetained = objc_loadWeakRetained(&self->_im_player);

  return WeakRetained;
}

@end