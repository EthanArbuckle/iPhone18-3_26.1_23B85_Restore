@interface PaginatedMediaController
- (AVPlayerViewController)avPlayerViewController;
- (BOOL)allowsExternalPlayback;
- (BOOL)allowsPictureInPicturePlayback;
- (BOOL)allowsVideoCellularUsage;
- (BOOL)animateImageChange;
- (BOOL)autoPlayInSharePlay;
- (BOOL)clearPreviousImageBeforeLoading;
- (BOOL)forceAutoPlay;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)interruptsOtherAppAudio;
- (BOOL)isAutomaticPlaybackStart;
- (BOOL)isForeground;
- (BOOL)isHapticsEnabled;
- (BOOL)isMuted;
- (BOOL)isPlaybackEnabled;
- (BOOL)isPreloadPlaybackEnabled;
- (BOOL)isVideoFrameFallbackEnabled;
- (BOOL)keepVideoGravityUnchangedByVideoControlsVisibility;
- (BOOL)pageControlTimerProgress:(id)progress shouldAdvanceToPage:(int64_t)page;
- (BOOL)prefersAudioOverPictureInPicture;
- (BOOL)prefetchesVideoFrame;
- (BOOL)recordPausedMediaEventAsStop;
- (BOOL)shouldStopPlayerWhenExitingFullScreen;
- (BOOL)shouldStopPlayerWhenViewDisappears;
- (BOOL)shouldStopWhenAnotherMediaControllerStarts;
- (BOOL)showAlertOnPlaybackFail;
- (BOOL)showsPlaybackControlsInForeground;
- (BOOL)stopsPlaybackWhenInactive;
- (BOOL)updatesNowPlayingInfoCenter;
- (NSArray)mediaInfos;
- (NSString)videoGravity;
- (TVPPlayer)player;
- (UIEdgeInsets)legibleContentInsets;
- (VUIMediaInfo)currentMediaInfo;
- (_TtC8VideosUI24PaginatedMediaController)initWithNibName:(id)name bundle:(id)bundle;
- (double)playbackStartDelay;
- (double)videoAudioRampDuration;
- (id)notificationObject;
- (id)surrenderCurrentPlayer;
- (unint64_t)imageContentMode;
- (unint64_t)imageSwappingAnimationType;
- (unint64_t)mediaInfoIndex;
- (unint64_t)state;
- (void)adoptAVPlayerViewController:(id)controller player:(id)player;
- (void)appendMediaInfos:(id)infos;
- (void)handlePageControlChanged;
- (void)mediaControllerTapped:(id)tapped;
- (void)pause;
- (void)play;
- (void)removeMediaInfoAtIndex:(unint64_t)index;
- (void)replay;
- (void)setAllowsExternalPlayback:(BOOL)playback;
- (void)setAllowsPictureInPicturePlayback:(BOOL)playback;
- (void)setAllowsVideoCellularUsage:(BOOL)usage;
- (void)setAnimateImageChange:(BOOL)change;
- (void)setAutoPlayInSharePlay:(BOOL)play;
- (void)setAutomaticPlaybackStart:(BOOL)start;
- (void)setAvPlayerViewController:(id)controller;
- (void)setClearPreviousImageBeforeLoading:(BOOL)loading;
- (void)setControlsVisible:(BOOL)visible;
- (void)setForceAutoPlay:(BOOL)play;
- (void)setHapticsEnabled:(BOOL)enabled;
- (void)setImageContentMode:(unint64_t)mode;
- (void)setImageSwappingAnimationType:(unint64_t)type;
- (void)setInterruptsOtherAppAudio:(BOOL)audio;
- (void)setKeepVideoGravityUnchangedByVideoControlsVisibility:(BOOL)visibility;
- (void)setLegibleContentInsets:(UIEdgeInsets)insets;
- (void)setMediaInfo:(id)info atIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setMediaInfoIndex:(unint64_t)index;
- (void)setMediaInfos:(id)infos;
- (void)setMediaInfos:(id)infos animated:(BOOL)animated;
- (void)setMuted:(BOOL)muted;
- (void)setPlaybackEnabled:(BOOL)enabled;
- (void)setPlaybackStartDelay:(double)delay;
- (void)setPlayer:(id)player;
- (void)setPrefersAudioOverPictureInPicture:(BOOL)picture;
- (void)setPrefetchesVideoFrame:(BOOL)frame;
- (void)setPreloadPlaybackEnabled:(BOOL)enabled;
- (void)setRecordPausedMediaEventAsStop:(BOOL)stop;
- (void)setShowAlertOnPlaybackFail:(BOOL)fail;
- (void)setShowsPlaybackControlsInForeground:(BOOL)foreground;
- (void)setShowsVideoControls:(BOOL)controls;
- (void)setStopPlayerWhenExitingFullScreen:(BOOL)screen;
- (void)setStopPlayerWhenViewDisappears:(BOOL)disappears;
- (void)setStopWhenAnotherMediaControllerStarts:(BOOL)starts;
- (void)setStopsPlaybackWhenInactive:(BOOL)inactive;
- (void)setUpdatesNowPlayingInfoCenter:(BOOL)center;
- (void)setVideoAudioRampDuration:(double)duration;
- (void)setVideoFrameFallbackEnabled:(BOOL)enabled;
- (void)setVideoGravity:(id)gravity;
- (void)stop;
- (void)transitionToForeground:(BOOL)foreground animated:(BOOL)animated;
- (void)transitionToForeground:(BOOL)foreground withPlaybackControls:(BOOL)controls animated:(BOOL)animated;
- (void)transitionToFullScreenAnimated:(BOOL)animated;
- (void)viewWillLayoutSubviews;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)appear;
- (void)vui_viewWillDisappear:(BOOL)disappear;
@end

@implementation PaginatedMediaController

- (void)vui_viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C49448();
}

- (void)vui_viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3C4C0E0();
}

- (void)vui_viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3C4C5CC();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C4C7C4();
}

- (void)mediaControllerTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C4CAB4();
}

- (void)vui_viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C4CB90();
}

- (void)transitionToFullScreenAnimated:(BOOL)animated
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C4CCD0(v4);
}

- (void)transitionToForeground:(BOOL)foreground animated:(BOOL)animated
{
  selfCopy = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E3C4CD30();
}

- (void)transitionToForeground:(BOOL)foreground withPlaybackControls:(BOOL)controls animated:(BOOL)animated
{
  selfCopy = self;
  j__OUTLINED_FUNCTION_45_40();
}

- (void)setControlsVisible:(BOOL)visible
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C4D450(v4);
}

- (_TtC8VideosUI24PaginatedMediaController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E3C50F68();
}

- (TVPPlayer)player
{
  selfCopy = self;
  v3 = sub_1E3C51004();

  return v3;
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51094(v6);
}

- (AVPlayerViewController)avPlayerViewController
{
  selfCopy = self;
  v3 = sub_1E3C511D0();

  return v3;
}

- (void)setAvPlayerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3C51260();
}

- (unint64_t)state
{
  selfCopy = self;
  v3 = sub_1E3C512E0();

  return v3;
}

- (NSArray)mediaInfos
{
  selfCopy = self;
  v3 = sub_1E3C51370();

  if (v3)
  {
    sub_1E3280A90(0, &qword_1EE23B350);
    OUTLINED_FUNCTION_19_3();
    sub_1E42062A4();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setMediaInfos:(id)infos
{
  infosCopy = infos;
  if (infos)
  {
    sub_1E3280A90(0, &qword_1EE23B350);
    OUTLINED_FUNCTION_20_2();
    infosCopy = sub_1E42062B4();
  }

  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3C51420(infosCopy);
}

- (VUIMediaInfo)currentMediaInfo
{
  selfCopy = self;
  v3 = sub_1E3C4ACD4();

  return v3;
}

- (unint64_t)mediaInfoIndex
{
  selfCopy = self;
  v3 = sub_1E3C465D8();

  return v3;
}

- (void)setMediaInfoIndex:(unint64_t)index
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51590(v4);
}

- (BOOL)isPlaybackEnabled
{
  selfCopy = self;
  v3 = sub_1E3C515D0();

  return v3 & 1;
}

- (void)setPlaybackEnabled:(BOOL)enabled
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3C51644();
}

- (BOOL)forceAutoPlay
{
  selfCopy = self;
  v3 = sub_1E3C51DF4();

  return v3 & 1;
}

- (void)setForceAutoPlay:(BOOL)play
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51E68(v4);
}

- (BOOL)autoPlayInSharePlay
{
  selfCopy = self;
  v3 = sub_1E3C51EB4();

  return v3 & 1;
}

- (void)setAutoPlayInSharePlay:(BOOL)play
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51F28(v4);
}

- (BOOL)prefetchesVideoFrame
{
  selfCopy = self;
  v3 = sub_1E3C51F74();

  return v3 & 1;
}

- (void)setPrefetchesVideoFrame:(BOOL)frame
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51FE8(v4);
}

- (double)videoAudioRampDuration
{
  selfCopy = self;
  sub_1E3C5203C();
  v4 = v3;

  return v4;
}

- (void)setVideoAudioRampDuration:(double)duration
{
  selfCopy = self;
  sub_1E3C520AC();
}

- (BOOL)recordPausedMediaEventAsStop
{
  selfCopy = self;
  v3 = sub_1E3C520F8();

  return v3 & 1;
}

- (void)setRecordPausedMediaEventAsStop:(BOOL)stop
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C5216C(v4);
}

- (BOOL)isVideoFrameFallbackEnabled
{
  selfCopy = self;
  v3 = sub_1E3C521B8();

  return v3 & 1;
}

- (void)setVideoFrameFallbackEnabled:(BOOL)enabled
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C5222C(v4);
}

- (BOOL)allowsExternalPlayback
{
  selfCopy = self;
  v3 = sub_1E3C52278();

  return v3 & 1;
}

- (void)setAllowsExternalPlayback:(BOOL)playback
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C522EC(v4);
}

- (BOOL)showAlertOnPlaybackFail
{
  selfCopy = self;
  v3 = sub_1E3C52338();

  return v3 & 1;
}

- (void)setShowAlertOnPlaybackFail:(BOOL)fail
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C523AC(v4);
}

- (BOOL)stopsPlaybackWhenInactive
{
  selfCopy = self;
  v3 = sub_1E3C523F8();

  return v3 & 1;
}

- (void)setStopsPlaybackWhenInactive:(BOOL)inactive
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C5246C(v4);
}

- (BOOL)updatesNowPlayingInfoCenter
{
  selfCopy = self;
  v3 = sub_1E3C524B8();

  return v3 & 1;
}

- (void)setUpdatesNowPlayingInfoCenter:(BOOL)center
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C5252C(v4);
}

- (BOOL)isForeground
{
  selfCopy = self;
  v3 = sub_1E3C52774();

  return v3 & 1;
}

- (BOOL)shouldStopPlayerWhenViewDisappears
{
  selfCopy = self;
  v3 = sub_1E3C527D4();

  return v3 & 1;
}

- (void)setStopPlayerWhenViewDisappears:(BOOL)disappears
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52848(v4);
}

- (BOOL)shouldStopPlayerWhenExitingFullScreen
{
  selfCopy = self;
  v3 = sub_1E3C52894();

  return v3 & 1;
}

- (void)setStopPlayerWhenExitingFullScreen:(BOOL)screen
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52908(v4);
}

- (BOOL)clearPreviousImageBeforeLoading
{
  selfCopy = self;
  v3 = sub_1E3C5299C();

  return v3 & 1;
}

- (void)setClearPreviousImageBeforeLoading:(BOOL)loading
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52A10(v4);
}

- (double)playbackStartDelay
{
  selfCopy = self;
  sub_1E3C52A64();
  v4 = v3;

  return v4;
}

- (void)setPlaybackStartDelay:(double)delay
{
  selfCopy = self;
  sub_1E3C52AD4();
}

- (BOOL)animateImageChange
{
  selfCopy = self;
  v3 = sub_1E3C52B20();

  return v3 & 1;
}

- (void)setAnimateImageChange:(BOOL)change
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52B94(v4);
}

- (unint64_t)imageContentMode
{
  selfCopy = self;
  v3 = sub_1E3C52BE0();

  return v3;
}

- (void)setImageContentMode:(unint64_t)mode
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52C40(v4);
}

- (unint64_t)imageSwappingAnimationType
{
  selfCopy = self;
  v3 = sub_1E3C52C90();

  return v3;
}

- (void)setImageSwappingAnimationType:(unint64_t)type
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52CF0(v4);
}

- (BOOL)isPreloadPlaybackEnabled
{
  selfCopy = self;
  v3 = sub_1E3C52D40();

  return v3 & 1;
}

- (void)setPreloadPlaybackEnabled:(BOOL)enabled
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52DB4(v4);
}

- (BOOL)isHapticsEnabled
{
  selfCopy = self;
  v3 = sub_1E3C52E00();

  return v3 & 1;
}

- (void)setHapticsEnabled:(BOOL)enabled
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52E74(v4);
}

- (BOOL)allowsVideoCellularUsage
{
  selfCopy = self;
  v3 = sub_1E3C52EC0();

  return v3 & 1;
}

- (void)setAllowsVideoCellularUsage:(BOOL)usage
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52F34(v4);
}

- (BOOL)isMuted
{
  selfCopy = self;
  v3 = sub_1E3C52F80();

  return v3 & 1;
}

- (void)setMuted:(BOOL)muted
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52FF4(v4);
}

- (BOOL)prefersAudioOverPictureInPicture
{
  selfCopy = self;
  v3 = sub_1E3C53084();

  return v3 & 1;
}

- (void)setPrefersAudioOverPictureInPicture:(BOOL)picture
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C530F8(v4);
}

- (BOOL)interruptsOtherAppAudio
{
  selfCopy = self;
  v3 = sub_1E3C53144();

  return v3 & 1;
}

- (void)setInterruptsOtherAppAudio:(BOOL)audio
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C531B8(v4);
}

- (BOOL)showsPlaybackControlsInForeground
{
  selfCopy = self;
  v3 = sub_1E3C532B0();

  return v3 & 1;
}

- (void)setShowsPlaybackControlsInForeground:(BOOL)foreground
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53324(v4);
}

- (BOOL)allowsPictureInPicturePlayback
{
  selfCopy = self;
  v3 = sub_1E3C53370();

  return v3 & 1;
}

- (void)setAllowsPictureInPicturePlayback:(BOOL)playback
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C533E4(v4);
}

- (UIEdgeInsets)legibleContentInsets
{
  selfCopy = self;
  sub_1E3C53440();
  OUTLINED_FUNCTION_3();

  v3 = OUTLINED_FUNCTION_6();
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setLegibleContentInsets:(UIEdgeInsets)insets
{
  selfCopy = self;
  sub_1E3C534D0();
}

- (BOOL)keepVideoGravityUnchangedByVideoControlsVisibility
{
  selfCopy = self;
  v3 = sub_1E3C5351C();

  return v3 & 1;
}

- (void)setKeepVideoGravityUnchangedByVideoControlsVisibility:(BOOL)visibility
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53590(v4);
}

- (NSString)videoGravity
{
  selfCopy = self;
  v3 = sub_1E3C53604();

  return v3;
}

- (void)setVideoGravity:(id)gravity
{
  gravityCopy = gravity;
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3C5369C();
}

- (BOOL)isAutomaticPlaybackStart
{
  selfCopy = self;
  v3 = sub_1E3C5371C();

  return v3 & 1;
}

- (void)setAutomaticPlaybackStart:(BOOL)start
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53790(v4);
}

- (BOOL)shouldStopWhenAnotherMediaControllerStarts
{
  selfCopy = self;
  v3 = sub_1E3C537DC();

  return v3 & 1;
}

- (void)setStopWhenAnotherMediaControllerStarts:(BOOL)starts
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53850(v4);
}

- (void)appendMediaInfos:(id)infos
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  selfCopy = self;
  OUTLINED_FUNCTION_50();
  sub_1E3C4F960();
}

- (void)removeMediaInfoAtIndex:(unint64_t)index
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C538D4(v4);
}

- (void)setMediaInfos:(id)infos animated:(BOOL)animated
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_20_2();
  sub_1E42062B4();
  selfCopy = self;
  OUTLINED_FUNCTION_31_4();
  sub_1E3C53938();
}

- (void)setMediaInfo:(id)info atIndex:(unint64_t)index animated:(BOOL)animated
{
  infoCopy = info;
  selfCopy = self;
  sub_1E3C5067C(infoCopy, index, animated);
}

- (id)notificationObject
{
  v2 = sub_1E3C53ACC();

  return v2;
}

- (void)play
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C53B10();
}

- (void)replay
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C53B90();
}

- (void)pause
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3C53C54(&selRef_pause);
}

- (void)stop
{
  selfCopy = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3C53C54(&selRef_stop);
}

- (void)setShowsVideoControls:(BOOL)controls
{
  selfCopy = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53CE8(v4);
}

- (id)surrenderCurrentPlayer
{
  selfCopy = self;
  v3 = sub_1E3C54420();

  return v3;
}

- (void)adoptAVPlayerViewController:(id)controller player:(id)player
{
  controllerCopy = controller;
  playerCopy = player;
  selfCopy = self;
  OUTLINED_FUNCTION_178_0();
  v9 = OUTLINED_FUNCTION_13_8();
  sub_1E3C544A4(v9, v10);
}

- (void)handlePageControlChanged
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C5691C();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  sub_1E3C58360(selfCopy, touchCopy);
  v10 = v9;

  return v10 & 1;
}

- (BOOL)pageControlTimerProgress:(id)progress shouldAdvanceToPage:(int64_t)page
{
  progressCopy = progress;
  selfCopy = self;
  sub_1E3C58674();

  return 0;
}

@end