@interface FTMomentsController
- (OS_dispatch_queue)queue;
- (void)connectionInvalidated;
- (void)endRequestWithTransactionID:(id)a3 reply:(id)a4;
- (void)prewarmAudioClientWithCompletion:(id)a3;
- (void)registerStreamToken:(int64_t)a3 requesterID:(id)a4 remoteIDSDestinations:(id)a5 remoteMomentsAvailable:(BOOL)a6 reply:(id)a7;
- (void)registerXPCClientWithReply:(id)a3;
- (void)resetVideoMessagingWithSessionUUID:(id)a3 completionHandler:(id)a4;
- (void)sendVideoMessageWithRequest:(id)a3 completion:(id)a4;
- (void)setClientObject:(id)a3;
- (void)setQueue:(id)a3;
- (void)setup;
- (void)startRecordingMessageWithMediaType:(int)a3 completion:(id)a4;
- (void)startRequestWithMediaType:(int)a3 forStreamToken:(int64_t)a4 requesteeID:(id)a5 destinationID:(id)a6 reply:(id)a7;
- (void)unregisterStreamToken:(int64_t)a3 reply:(id)a4;
@end

@implementation FTMomentsController

- (OS_dispatch_queue)queue
{
  v2 = sub_100012D24();

  return v2;
}

- (void)setQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100012D90(v4);
}

- (void)setup
{
  v2 = self;
  sub_1000131AC();
}

- (void)setClientObject:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100013350(a3);
  swift_unknownObjectRelease();
}

- (void)connectionInvalidated
{
  v2 = self;
  sub_1000139A0();
}

- (void)registerXPCClientWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1000297CC(&unk_10003F7E0, v5);
}

- (void)registerStreamToken:(int64_t)a3 requesterID:(id)a4 remoteIDSDestinations:(id)a5 remoteMomentsAvailable:(BOOL)a6 reply:(id)a7
{
  v10 = _Block_copy(a7);
  if (a4)
  {
    sub_10003986C();
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a5)
  {
LABEL_3:
    sub_10003980C();
  }

LABEL_4:
  *(swift_allocObject() + 16) = v10;
  v11 = self;
  sub_100014824();
}

- (void)unregisterStreamToken:(int64_t)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_1000152D4();
}

- (void)startRequestWithMediaType:(int)a3 forStreamToken:(int64_t)a4 requesteeID:(id)a5 destinationID:(id)a6 reply:(id)a7
{
  v10 = _Block_copy(a7);
  if (a5)
  {
    sub_10003986C();
    if (!a6)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a6)
  {
LABEL_3:
    sub_10003986C();
  }

LABEL_5:
  *(swift_allocObject() + 16) = v10;
  v11 = self;
  sub_100015B74();
}

- (void)endRequestWithTransactionID:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  sub_10003986C();
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  sub_1000169CC();
}

- (void)prewarmAudioClientWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_10001711C(sub_10001B3DC, v5);
}

- (void)startRecordingMessageWithMediaType:(int)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_10001752C(a3, v7, v6);
  _Block_release(v6);
}

- (void)sendVideoMessageWithRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100018978(v8, sub_10001B3DC, v7);
}

- (void)resetVideoMessagingWithSessionUUID:(id)a3 completionHandler:(id)a4
{
  v7 = sub_10000BEC0(&unk_100059160, &unk_10003F780);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = _Block_copy(a4);
  if (a3)
  {
    sub_10003960C();
    v12 = sub_10003962C();
    v13 = 0;
  }

  else
  {
    v12 = sub_10003962C();
    v13 = 1;
  }

  sub_10000E998(v10, v13, 1, v12);
  _Block_copy(v11);
  v14 = self;
  sub_100019734(v10, v14, v11);
  _Block_release(v11);

  sub_100019CD4(v10, &unk_100059160, &unk_10003F780);
}

@end