@interface RCExportSessionComposedAssetWriter
+ (void)createForAsset:(AVAsset *)a3 completionHandler:(id)a4;
- (_TtC10voicememod34RCExportSessionComposedAssetWriter)init;
- (void)writeCompositionWithCompletionBlock:(id)a3;
@end

@implementation RCExportSessionComposedAssetWriter

- (_TtC10voicememod34RCExportSessionComposedAssetWriter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)writeCompositionWithCompletionBlock:(id)a3
{
  v5 = sub_100024720(&qword_10005CB50, &qword_10003F510);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_10002C78C;
  v12[6] = v10;
  v13 = self;
  sub_10002C968(0, 0, v8, &unk_10003F980, v12);
}

+ (void)createForAsset:(AVAsset *)a3 completionHandler:(id)a4
{
  v7 = sub_100024720(&qword_10005CB50, &qword_10003F510);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10003F908;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10003F7C0;
  v15[5] = v14;
  v16 = a3;
  sub_10002AE20(0, 0, v10, &unk_10003F530, v15);
}

@end