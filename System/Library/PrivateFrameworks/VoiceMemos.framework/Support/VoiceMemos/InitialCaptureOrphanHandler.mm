@interface InitialCaptureOrphanHandler
+ (void)handleOrphanedInitalCapturesWithCompletionHandler:(id)handler;
- (_TtC10voicememod27InitialCaptureOrphanHandler)init;
@end

@implementation InitialCaptureOrphanHandler

- (_TtC10voicememod27InitialCaptureOrphanHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InitialCaptureOrphanHandler();
  return [(InitialCaptureOrphanHandler *)&v3 init];
}

+ (void)handleOrphanedInitalCapturesWithCompletionHandler:(id)handler
{
  v5 = (*(*(sub_100024720(&qword_10005CB50, &qword_10003F510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10003F520;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10003F7C0;
  v12[5] = v11;
  sub_10002AE20(0, 0, v7, &unk_10003F530, v12);
}

@end