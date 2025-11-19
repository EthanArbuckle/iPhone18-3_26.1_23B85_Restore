@interface ProxyPlayerController
- (PKDurationSnapshot)durationSnapshot;
- (double)backwardJumpDuration;
- (double)forwardJumpDuration;
- (id)playerResponseHandler;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
- (void)jumpBackwardsWithCompletion:(id)a3;
- (void)jumpForwardsWithCompletion:(id)a3;
- (void)pauseWithCompletion:(id)a3;
- (void)playWithCompletion:(id)a3;
- (void)playWithDetailedCompletion:(id)a3;
- (void)seekToPositionWithElapsedTime:(double)a3 completion:(id)a4;
- (void)setCurrentEpisode:(id)a3;
- (void)setManifest:(id)a3 startPlayback:(BOOL)a4 detailedCompletion:(id)a5;
- (void)setPlayerResponseHandler:(id)a3;
- (void)startPlayback:(id)a3 completion:(id)a4;
@end

@implementation ProxyPlayerController

- (void)setManifest:(id)a3 startPlayback:(BOOL)a4 detailedCompletion:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = self;
  sub_25EA1352C(v10, v5, v8, v9);
  sub_25E9F30EC(v8);
}

- (void)setCurrentEpisode:(id)a3
{
  v6 = *(self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_currentEpisode);
  *(self + OBJC_IVAR____TtC11PodcastsKit21ProxyPlayerController_currentEpisode) = a3;
  v4 = a3;
  v5 = self;
  sub_25EA19474(v6);
}

- (PKDurationSnapshot)durationSnapshot
{
  v2 = self;
  v3 = sub_25EA1964C();

  return v3;
}

- (void)playWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_25EA19778(v7, v6);
  sub_25E9F30EC(v7);
}

- (void)playWithDetailedCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_25EA1984C(v7, v6);
  sub_25E9F30EC(v7);
}

- (void)pauseWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_25EA19920(v7, v6);
  sub_25E9F30EC(v7);
}

- (void)startPlayback:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
    v9 = a3;
    v10 = self;
  }

  else
  {
    v11 = a3;
    v12 = self;
    v8 = 0;
  }

  [(ProxyPlayerController *)self setManifest:a3 startPlayback:1 completion:v8];

  sub_25E9F30EC(v6);
  _Block_release(v8);
}

- (void)seekToPositionWithElapsedTime:(double)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v10 = self;
  sub_25EA19CF4(v9, v8, a3);
  sub_25E9F30EC(v9);
}

- (void)jumpForwardsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_25EA19F88(v7, v6);
  sub_25E9F30EC(v7);
}

- (void)jumpBackwardsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_25EA1A07C(v7, v6);
  sub_25E9F30EC(v7);
}

- (double)forwardJumpDuration
{
  v2 = self;
  sub_25EA1A374();
  v4 = v3;

  return v4;
}

- (double)backwardJumpDuration
{
  v2 = self;
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

- (void)setPlayerResponseHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v10 = self;
  sub_25E9F30EC(v8);
}

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_25EA1D5B0(sub_25EA1D5A0, v7);
}

@end