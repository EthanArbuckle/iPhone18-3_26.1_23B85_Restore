@interface IMAVPlayerVideoViewController
- (IMAVPlayer)im_player;
- (IMAVPlayerVideoViewController)initWithPlayer:(id)player;
- (void)mediaItemDidChange;
- (void)playbackSpeedDidChange;
@end

@implementation IMAVPlayerVideoViewController

- (IMAVPlayerVideoViewController)initWithPlayer:(id)player
{
  playerCopy = player;
  if ([MEMORY[0x277D3DB60] platformSupportsVideo])
  {
    v12.receiver = self;
    v12.super_class = IMAVPlayerVideoViewController;
    v5 = [(IMAVPlayerVideoViewController *)&v12 init];
    v6 = v5;
    if (v5)
    {
      [(IMAVPlayerVideoViewController *)v5 setIm_player:playerCopy];
      [(IMAVPlayerVideoViewController *)v6 setAllowsPictureInPicturePlayback:1];
      [(IMAVPlayerVideoViewController *)v6 setUpdatesNowPlayingInfoCenter:0];
      [(IMAVPlayerVideoViewController *)v6 setCanPausePlaybackWhenExitingFullScreen:0];
      [(IMAVPlayerVideoViewController *)v6 setCanIncludePlaybackControlsWhenInline:0];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v6 selector:sel_mediaItemDidChange name:@"IMMediaPlayerNotification_MediaItemDidChange" object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v6 selector:sel_playbackSpeedDidChange name:@"IMAVPlayerNotification_PlaybackSpeedChanged" object:0];
    }

    v9 = +[IMAVPlayer availableSpeeds];
    [(IMAVPlayerVideoViewController *)v6 setSpeeds:v9];

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)mediaItemDidChange
{
  im_player = [(IMAVPlayerVideoViewController *)self im_player];
  currentItem = [im_player currentItem];
  isVideo = [currentItem isVideo];

  if ((isVideo & 1) == 0)
  {

    [(IMAVPlayerVideoViewController *)self exitFullScreenWithCompletion:&__block_literal_global_4];
  }
}

- (void)playbackSpeedDidChange
{
  im_player = [(IMAVPlayerVideoViewController *)self im_player];
  playbackSpeed = [im_player playbackSpeed];

  [IMAVPlayer rateForPlaybackSpeed:playbackSpeed];
  v6 = v5;
  im_player2 = [(IMAVPlayerVideoViewController *)self im_player];
  player = [im_player2 player];
  LODWORD(v8) = v6;
  [player setDefaultRate:v8];
}

- (IMAVPlayer)im_player
{
  WeakRetained = objc_loadWeakRetained(&self->_im_player);

  return WeakRetained;
}

@end