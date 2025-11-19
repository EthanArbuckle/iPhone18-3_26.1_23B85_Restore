@interface PaginatedMediaController
- (AVPlayerViewController)avPlayerViewController;
- (BOOL)allowsExternalPlayback;
- (BOOL)allowsPictureInPicturePlayback;
- (BOOL)allowsVideoCellularUsage;
- (BOOL)animateImageChange;
- (BOOL)autoPlayInSharePlay;
- (BOOL)clearPreviousImageBeforeLoading;
- (BOOL)forceAutoPlay;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)interruptsOtherAppAudio;
- (BOOL)isAutomaticPlaybackStart;
- (BOOL)isForeground;
- (BOOL)isHapticsEnabled;
- (BOOL)isMuted;
- (BOOL)isPlaybackEnabled;
- (BOOL)isPreloadPlaybackEnabled;
- (BOOL)isVideoFrameFallbackEnabled;
- (BOOL)keepVideoGravityUnchangedByVideoControlsVisibility;
- (BOOL)pageControlTimerProgress:(id)a3 shouldAdvanceToPage:(int64_t)a4;
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
- (_TtC8VideosUI24PaginatedMediaController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)playbackStartDelay;
- (double)videoAudioRampDuration;
- (id)notificationObject;
- (id)surrenderCurrentPlayer;
- (unint64_t)imageContentMode;
- (unint64_t)imageSwappingAnimationType;
- (unint64_t)mediaInfoIndex;
- (unint64_t)state;
- (void)adoptAVPlayerViewController:(id)a3 player:(id)a4;
- (void)appendMediaInfos:(id)a3;
- (void)handlePageControlChanged;
- (void)mediaControllerTapped:(id)a3;
- (void)pause;
- (void)play;
- (void)removeMediaInfoAtIndex:(unint64_t)a3;
- (void)replay;
- (void)setAllowsExternalPlayback:(BOOL)a3;
- (void)setAllowsPictureInPicturePlayback:(BOOL)a3;
- (void)setAllowsVideoCellularUsage:(BOOL)a3;
- (void)setAnimateImageChange:(BOOL)a3;
- (void)setAutoPlayInSharePlay:(BOOL)a3;
- (void)setAutomaticPlaybackStart:(BOOL)a3;
- (void)setAvPlayerViewController:(id)a3;
- (void)setClearPreviousImageBeforeLoading:(BOOL)a3;
- (void)setControlsVisible:(BOOL)a3;
- (void)setForceAutoPlay:(BOOL)a3;
- (void)setHapticsEnabled:(BOOL)a3;
- (void)setImageContentMode:(unint64_t)a3;
- (void)setImageSwappingAnimationType:(unint64_t)a3;
- (void)setInterruptsOtherAppAudio:(BOOL)a3;
- (void)setKeepVideoGravityUnchangedByVideoControlsVisibility:(BOOL)a3;
- (void)setLegibleContentInsets:(UIEdgeInsets)a3;
- (void)setMediaInfo:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)setMediaInfoIndex:(unint64_t)a3;
- (void)setMediaInfos:(id)a3;
- (void)setMediaInfos:(id)a3 animated:(BOOL)a4;
- (void)setMuted:(BOOL)a3;
- (void)setPlaybackEnabled:(BOOL)a3;
- (void)setPlaybackStartDelay:(double)a3;
- (void)setPlayer:(id)a3;
- (void)setPrefersAudioOverPictureInPicture:(BOOL)a3;
- (void)setPrefetchesVideoFrame:(BOOL)a3;
- (void)setPreloadPlaybackEnabled:(BOOL)a3;
- (void)setRecordPausedMediaEventAsStop:(BOOL)a3;
- (void)setShowAlertOnPlaybackFail:(BOOL)a3;
- (void)setShowsPlaybackControlsInForeground:(BOOL)a3;
- (void)setShowsVideoControls:(BOOL)a3;
- (void)setStopPlayerWhenExitingFullScreen:(BOOL)a3;
- (void)setStopPlayerWhenViewDisappears:(BOOL)a3;
- (void)setStopWhenAnotherMediaControllerStarts:(BOOL)a3;
- (void)setStopsPlaybackWhenInactive:(BOOL)a3;
- (void)setUpdatesNowPlayingInfoCenter:(BOOL)a3;
- (void)setVideoAudioRampDuration:(double)a3;
- (void)setVideoFrameFallbackEnabled:(BOOL)a3;
- (void)setVideoGravity:(id)a3;
- (void)stop;
- (void)transitionToForeground:(BOOL)a3 animated:(BOOL)a4;
- (void)transitionToForeground:(BOOL)a3 withPlaybackControls:(BOOL)a4 animated:(BOOL)a5;
- (void)transitionToFullScreenAnimated:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)vui_viewDidLayoutSubviews;
- (void)vui_viewDidLoad;
- (void)vui_viewWillAppear:(BOOL)a3;
- (void)vui_viewWillDisappear:(BOOL)a3;
@end

@implementation PaginatedMediaController

- (void)vui_viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C49448();
}

- (void)vui_viewWillDisappear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3C4C0E0();
}

- (void)vui_viewWillAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3C4C5CC();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C4C7C4();
}

- (void)mediaControllerTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C4CAB4();
}

- (void)vui_viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C4CB90();
}

- (void)transitionToFullScreenAnimated:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C4CCD0(v4);
}

- (void)transitionToForeground:(BOOL)a3 animated:(BOOL)a4
{
  v4 = self;
  OUTLINED_FUNCTION_178_0();
  sub_1E3C4CD30();
}

- (void)transitionToForeground:(BOOL)a3 withPlaybackControls:(BOOL)a4 animated:(BOOL)a5
{
  v5 = self;
  j__OUTLINED_FUNCTION_45_40();
}

- (void)setControlsVisible:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C4D450(v4);
}

- (_TtC8VideosUI24PaginatedMediaController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E3C50F68();
}

- (TVPPlayer)player
{
  v2 = self;
  v3 = sub_1E3C51004();

  return v3;
}

- (void)setPlayer:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51094(v6);
}

- (AVPlayerViewController)avPlayerViewController
{
  v2 = self;
  v3 = sub_1E3C511D0();

  return v3;
}

- (void)setAvPlayerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3C51260();
}

- (unint64_t)state
{
  v2 = self;
  v3 = sub_1E3C512E0();

  return v3;
}

- (NSArray)mediaInfos
{
  v2 = self;
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
    v2 = 0;
  }

  return v2;
}

- (void)setMediaInfos:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_1E3280A90(0, &qword_1EE23B350);
    OUTLINED_FUNCTION_20_2();
    v3 = sub_1E42062B4();
  }

  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3C51420(v3);
}

- (VUIMediaInfo)currentMediaInfo
{
  v2 = self;
  v3 = sub_1E3C4ACD4();

  return v3;
}

- (unint64_t)mediaInfoIndex
{
  v2 = self;
  v3 = sub_1E3C465D8();

  return v3;
}

- (void)setMediaInfoIndex:(unint64_t)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51590(v4);
}

- (BOOL)isPlaybackEnabled
{
  v2 = self;
  v3 = sub_1E3C515D0();

  return v3 & 1;
}

- (void)setPlaybackEnabled:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3C51644();
}

- (BOOL)forceAutoPlay
{
  v2 = self;
  v3 = sub_1E3C51DF4();

  return v3 & 1;
}

- (void)setForceAutoPlay:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51E68(v4);
}

- (BOOL)autoPlayInSharePlay
{
  v2 = self;
  v3 = sub_1E3C51EB4();

  return v3 & 1;
}

- (void)setAutoPlayInSharePlay:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51F28(v4);
}

- (BOOL)prefetchesVideoFrame
{
  v2 = self;
  v3 = sub_1E3C51F74();

  return v3 & 1;
}

- (void)setPrefetchesVideoFrame:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C51FE8(v4);
}

- (double)videoAudioRampDuration
{
  v2 = self;
  sub_1E3C5203C();
  v4 = v3;

  return v4;
}

- (void)setVideoAudioRampDuration:(double)a3
{
  v3 = self;
  sub_1E3C520AC();
}

- (BOOL)recordPausedMediaEventAsStop
{
  v2 = self;
  v3 = sub_1E3C520F8();

  return v3 & 1;
}

- (void)setRecordPausedMediaEventAsStop:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C5216C(v4);
}

- (BOOL)isVideoFrameFallbackEnabled
{
  v2 = self;
  v3 = sub_1E3C521B8();

  return v3 & 1;
}

- (void)setVideoFrameFallbackEnabled:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C5222C(v4);
}

- (BOOL)allowsExternalPlayback
{
  v2 = self;
  v3 = sub_1E3C52278();

  return v3 & 1;
}

- (void)setAllowsExternalPlayback:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C522EC(v4);
}

- (BOOL)showAlertOnPlaybackFail
{
  v2 = self;
  v3 = sub_1E3C52338();

  return v3 & 1;
}

- (void)setShowAlertOnPlaybackFail:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C523AC(v4);
}

- (BOOL)stopsPlaybackWhenInactive
{
  v2 = self;
  v3 = sub_1E3C523F8();

  return v3 & 1;
}

- (void)setStopsPlaybackWhenInactive:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C5246C(v4);
}

- (BOOL)updatesNowPlayingInfoCenter
{
  v2 = self;
  v3 = sub_1E3C524B8();

  return v3 & 1;
}

- (void)setUpdatesNowPlayingInfoCenter:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C5252C(v4);
}

- (BOOL)isForeground
{
  v2 = self;
  v3 = sub_1E3C52774();

  return v3 & 1;
}

- (BOOL)shouldStopPlayerWhenViewDisappears
{
  v2 = self;
  v3 = sub_1E3C527D4();

  return v3 & 1;
}

- (void)setStopPlayerWhenViewDisappears:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52848(v4);
}

- (BOOL)shouldStopPlayerWhenExitingFullScreen
{
  v2 = self;
  v3 = sub_1E3C52894();

  return v3 & 1;
}

- (void)setStopPlayerWhenExitingFullScreen:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52908(v4);
}

- (BOOL)clearPreviousImageBeforeLoading
{
  v2 = self;
  v3 = sub_1E3C5299C();

  return v3 & 1;
}

- (void)setClearPreviousImageBeforeLoading:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52A10(v4);
}

- (double)playbackStartDelay
{
  v2 = self;
  sub_1E3C52A64();
  v4 = v3;

  return v4;
}

- (void)setPlaybackStartDelay:(double)a3
{
  v3 = self;
  sub_1E3C52AD4();
}

- (BOOL)animateImageChange
{
  v2 = self;
  v3 = sub_1E3C52B20();

  return v3 & 1;
}

- (void)setAnimateImageChange:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52B94(v4);
}

- (unint64_t)imageContentMode
{
  v2 = self;
  v3 = sub_1E3C52BE0();

  return v3;
}

- (void)setImageContentMode:(unint64_t)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52C40(v4);
}

- (unint64_t)imageSwappingAnimationType
{
  v2 = self;
  v3 = sub_1E3C52C90();

  return v3;
}

- (void)setImageSwappingAnimationType:(unint64_t)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52CF0(v4);
}

- (BOOL)isPreloadPlaybackEnabled
{
  v2 = self;
  v3 = sub_1E3C52D40();

  return v3 & 1;
}

- (void)setPreloadPlaybackEnabled:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52DB4(v4);
}

- (BOOL)isHapticsEnabled
{
  v2 = self;
  v3 = sub_1E3C52E00();

  return v3 & 1;
}

- (void)setHapticsEnabled:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52E74(v4);
}

- (BOOL)allowsVideoCellularUsage
{
  v2 = self;
  v3 = sub_1E3C52EC0();

  return v3 & 1;
}

- (void)setAllowsVideoCellularUsage:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52F34(v4);
}

- (BOOL)isMuted
{
  v2 = self;
  v3 = sub_1E3C52F80();

  return v3 & 1;
}

- (void)setMuted:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C52FF4(v4);
}

- (BOOL)prefersAudioOverPictureInPicture
{
  v2 = self;
  v3 = sub_1E3C53084();

  return v3 & 1;
}

- (void)setPrefersAudioOverPictureInPicture:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C530F8(v4);
}

- (BOOL)interruptsOtherAppAudio
{
  v2 = self;
  v3 = sub_1E3C53144();

  return v3 & 1;
}

- (void)setInterruptsOtherAppAudio:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C531B8(v4);
}

- (BOOL)showsPlaybackControlsInForeground
{
  v2 = self;
  v3 = sub_1E3C532B0();

  return v3 & 1;
}

- (void)setShowsPlaybackControlsInForeground:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53324(v4);
}

- (BOOL)allowsPictureInPicturePlayback
{
  v2 = self;
  v3 = sub_1E3C53370();

  return v3 & 1;
}

- (void)setAllowsPictureInPicturePlayback:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C533E4(v4);
}

- (UIEdgeInsets)legibleContentInsets
{
  v2 = self;
  sub_1E3C53440();
  OUTLINED_FUNCTION_3();

  v3 = OUTLINED_FUNCTION_6();
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setLegibleContentInsets:(UIEdgeInsets)a3
{
  v3 = self;
  sub_1E3C534D0();
}

- (BOOL)keepVideoGravityUnchangedByVideoControlsVisibility
{
  v2 = self;
  v3 = sub_1E3C5351C();

  return v3 & 1;
}

- (void)setKeepVideoGravityUnchangedByVideoControlsVisibility:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53590(v4);
}

- (NSString)videoGravity
{
  v2 = self;
  v3 = sub_1E3C53604();

  return v3;
}

- (void)setVideoGravity:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3C5369C();
}

- (BOOL)isAutomaticPlaybackStart
{
  v2 = self;
  v3 = sub_1E3C5371C();

  return v3 & 1;
}

- (void)setAutomaticPlaybackStart:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53790(v4);
}

- (BOOL)shouldStopWhenAnotherMediaControllerStarts
{
  v2 = self;
  v3 = sub_1E3C537DC();

  return v3 & 1;
}

- (void)setStopWhenAnotherMediaControllerStarts:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53850(v4);
}

- (void)appendMediaInfos:(id)a3
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062B4();
  v4 = self;
  OUTLINED_FUNCTION_50();
  sub_1E3C4F960();
}

- (void)removeMediaInfoAtIndex:(unint64_t)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C538D4(v4);
}

- (void)setMediaInfos:(id)a3 animated:(BOOL)a4
{
  sub_1E3280A90(0, &qword_1EE23B350);
  OUTLINED_FUNCTION_20_2();
  sub_1E42062B4();
  v6 = self;
  OUTLINED_FUNCTION_31_4();
  sub_1E3C53938();
}

- (void)setMediaInfo:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_1E3C5067C(v8, a4, a5);
}

- (id)notificationObject
{
  v2 = sub_1E3C53ACC();

  return v2;
}

- (void)play
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C53B10();
}

- (void)replay
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C53B90();
}

- (void)pause
{
  v2 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3C53C54(&selRef_pause);
}

- (void)stop
{
  v2 = self;
  OUTLINED_FUNCTION_37_3();
  sub_1E3C53C54(&selRef_stop);
}

- (void)setShowsVideoControls:(BOOL)a3
{
  v3 = self;
  v4 = OUTLINED_FUNCTION_10_0();
  sub_1E3C53CE8(v4);
}

- (id)surrenderCurrentPlayer
{
  v2 = self;
  v3 = sub_1E3C54420();

  return v3;
}

- (void)adoptAVPlayerViewController:(id)a3 player:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  OUTLINED_FUNCTION_178_0();
  v9 = OUTLINED_FUNCTION_13_8();
  sub_1E3C544A4(v9, v10);
}

- (void)handlePageControlChanged
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3C5691C();
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1E3C58360(v8, v7);
  v10 = v9;

  return v10 & 1;
}

- (BOOL)pageControlTimerProgress:(id)a3 shouldAdvanceToPage:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_1E3C58674();

  return 0;
}

@end