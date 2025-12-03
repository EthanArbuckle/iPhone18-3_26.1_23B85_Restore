@interface FTMomentsController
- (OS_dispatch_queue)queue;
- (void)connectionInvalidated;
- (void)endRequestWithTransactionID:(id)d reply:(id)reply;
- (void)prewarmAudioClientWithCompletion:(id)completion;
- (void)registerStreamToken:(int64_t)token requesterID:(id)d remoteIDSDestinations:(id)destinations remoteMomentsAvailable:(BOOL)available reply:(id)reply;
- (void)registerXPCClientWithReply:(id)reply;
- (void)resetVideoMessagingWithSessionUUID:(id)d completionHandler:(id)handler;
- (void)sendVideoMessageWithRequest:(id)request completion:(id)completion;
- (void)setClientObject:(id)object;
- (void)setQueue:(id)queue;
- (void)setup;
- (void)startRecordingMessageWithMediaType:(int)type completion:(id)completion;
- (void)startRequestWithMediaType:(int)type forStreamToken:(int64_t)token requesteeID:(id)d destinationID:(id)iD reply:(id)reply;
- (void)unregisterStreamToken:(int64_t)token reply:(id)reply;
@end

@implementation FTMomentsController

- (OS_dispatch_queue)queue
{
  v2 = sub_100012D24();

  return v2;
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  sub_100012D90(queueCopy);
}

- (void)setup
{
  selfCopy = self;
  sub_1000131AC();
}

- (void)setClientObject:(id)object
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100013350(object);
  swift_unknownObjectRelease();
}

- (void)connectionInvalidated
{
  selfCopy = self;
  sub_1000139A0();
}

- (void)registerXPCClientWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1000297CC(&unk_10003F7E0, v5);
}

- (void)registerStreamToken:(int64_t)token requesterID:(id)d remoteIDSDestinations:(id)destinations remoteMomentsAvailable:(BOOL)available reply:(id)reply
{
  v10 = _Block_copy(reply);
  if (d)
  {
    sub_10003986C();
    if (!destinations)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (destinations)
  {
LABEL_3:
    sub_10003980C();
  }

LABEL_4:
  *(swift_allocObject() + 16) = v10;
  selfCopy = self;
  sub_100014824();
}

- (void)unregisterStreamToken:(int64_t)token reply:(id)reply
{
  v5 = _Block_copy(reply);
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1000152D4();
}

- (void)startRequestWithMediaType:(int)type forStreamToken:(int64_t)token requesteeID:(id)d destinationID:(id)iD reply:(id)reply
{
  v10 = _Block_copy(reply);
  if (d)
  {
    sub_10003986C();
    if (!iD)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (iD)
  {
LABEL_3:
    sub_10003986C();
  }

LABEL_5:
  *(swift_allocObject() + 16) = v10;
  selfCopy = self;
  sub_100015B74();
}

- (void)endRequestWithTransactionID:(id)d reply:(id)reply
{
  v5 = _Block_copy(reply);
  sub_10003986C();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1000169CC();
}

- (void)prewarmAudioClientWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10001711C(sub_10001B3DC, v5);
}

- (void)startRecordingMessageWithMediaType:(int)type completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_10001752C(type, selfCopy, v6);
  _Block_release(v6);
}

- (void)sendVideoMessageWithRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_100018978(requestCopy, sub_10001B3DC, v7);
}

- (void)resetVideoMessagingWithSessionUUID:(id)d completionHandler:(id)handler
{
  v7 = sub_10000BEC0(&unk_100059160, &unk_10003F780);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = _Block_copy(handler);
  if (d)
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
  selfCopy = self;
  sub_100019734(v10, selfCopy, v11);
  _Block_release(v11);

  sub_100019CD4(v10, &unk_100059160, &unk_10003F780);
}

@end