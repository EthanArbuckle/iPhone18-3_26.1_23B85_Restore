@interface ProxyPlayerController
- (PKDurationSnapshot)durationSnapshot;
- (double)backwardJumpDuration;
- (double)forwardJumpDuration;
- (id)playerResponseHandler;
- (void)controller:(id)controller defersResponseReplacement:(id)replacement;
- (void)jumpBackwardsWithCompletion:(id)completion;
- (void)jumpForwardsWithCompletion:(id)completion;
- (void)pauseWithCompletion:(id)completion;
- (void)playWithCompletion:(id)completion;
- (void)playWithDetailedCompletion:(id)completion;
- (void)seekToPositionWithElapsedTime:(double)time completion:(id)completion;
- (void)setCurrentEpisode:(id)episode;
- (void)setManifest:(id)manifest startPlayback:(BOOL)playback detailedCompletion:(id)completion;
- (void)setPlayerResponseHandler:(id)handler;
- (void)startPlayback:(id)playback completion:(id)completion;
@end

@implementation ProxyPlayerController

- (void)setManifest:(id)manifest startPlayback:(BOOL)playback detailedCompletion:(id)completion
{
  playbackCopy = playback;
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_25EA13E04;
  }

  else
  {
    v9 = 0;
  }

  manifestCopy = manifest;
  selfCopy = self;
  sub_25EA1352C(manifestCopy, playbackCopy, v8, v9);
  sub_25E9F30EC(v8);
}

- (void)setCurrentEpisode:(id)episode
{
  v6 = *(self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_currentEpisode);
  *(self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_currentEpisode) = episode;
  episodeCopy = episode;
  selfCopy = self;
  sub_25EA19474(v6);
}

- (PKDurationSnapshot)durationSnapshot
{
  selfCopy = self;
  v3 = sub_25EA1964C();

  return v3;
}

- (void)playWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_25EA18888;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_25EA19778(v7, v6);
  sub_25E9F30EC(v7);
}

- (void)playWithDetailedCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_25EA13E04;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_25EA1984C(v7, v6);
  sub_25E9F30EC(v7);
}

- (void)pauseWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_25EA18888;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_25EA19920(v7, v6);
  sub_25E9F30EC(v7);
}

- (void)startPlayback:(id)playback completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_25EA18888;
    v13[4] = sub_25EA18888;
    v13[5] = v7;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_25EA19B68;
    v13[3] = &block_descriptor_120;
    v8 = _Block_copy(v13);
    playbackCopy = playback;
    selfCopy = self;
  }

  else
  {
    playbackCopy2 = playback;
    selfCopy2 = self;
    v8 = 0;
  }

  [(ProxyPlayerController *)self setManifest:playback startPlayback:1 completion:v8];

  sub_25E9F30EC(v6);
  _Block_release(v8);
}

- (void)seekToPositionWithElapsedTime:(double)time completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_25EA18888;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  selfCopy = self;
  sub_25EA19CF4(v9, v8, time);
  sub_25E9F30EC(v9);
}

- (void)jumpForwardsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_25EA18888;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_25EA19F88(v7, v6);
  sub_25E9F30EC(v7);
}

- (void)jumpBackwardsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_25EA187A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_25EA1A07C(v7, v6);
  sub_25E9F30EC(v7);
}

- (double)forwardJumpDuration
{
  selfCopy = self;
  sub_25EA1A374();
  v4 = v3;

  return v4;
}

- (double)backwardJumpDuration
{
  selfCopy = self;
  sub_25EA1A548();
  v4 = v3;

  return v4;
}

- (id)playerResponseHandler
{
  if (*(self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_25EA15090;
    v5[3] = &block_descriptor_102;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlayerResponseHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_25EA1DA10;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler);
  v8 = *(self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler);
  v9 = *(self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_playerResponseHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_25E9F30EC(v8);
}

- (void)controller:(id)controller defersResponseReplacement:(id)replacement
{
  v6 = _Block_copy(replacement);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  controllerCopy = controller;
  selfCopy = self;
  sub_25EA1D5B0(sub_25EA1D5A0, v7);
}

@end