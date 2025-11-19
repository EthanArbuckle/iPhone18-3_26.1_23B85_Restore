@interface Dispatcher
- (_TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher)init;
- (_TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher)initWithOptions:(id)a3 delegate:(id)a4;
- (int64_t)extractionMemoryFootprint;
- (void)finishStreamWithCompletionBlock:(id)a3;
- (void)prepareForExtractionToPath:(NSString *)a3 withCompletionBlock:(id)a4;
- (void)supplyBytes:(NSData *)a3 withCompletionBlock:(id)a4;
- (void)suspendStreamWithCompletionBlock:(id)a3;
- (void)terminateStreamWithError:(NSError *)a3 completionBlock:(id)a4;
@end

@implementation Dispatcher

- (int64_t)extractionMemoryFootprint
{
  v2 = self;
  v3 = sub_1428();

  return v3;
}

- (_TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher)initWithOptions:(id)a3 delegate:(id)a4
{
  if (a3)
  {
    v4 = sub_14E18();
  }

  else
  {
    v4 = 0;
  }

  swift_unknownObjectRetain();
  v5 = sub_8B28(v4);
  swift_unknownObjectRelease();
  return v5;
}

- (void)prepareForExtractionToPath:(NSString *)a3 withCompletionBlock:(id)a4
{
  v7 = sub_75AC(&qword_20A08, &qword_15A20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_14F08();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_15AF0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_15AF8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_11540(0, 0, v10, &unk_15B00, v15);
}

- (void)supplyBytes:(NSData *)a3 withCompletionBlock:(id)a4
{
  v7 = sub_75AC(&qword_20A08, &qword_15A20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_14F08();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_15AC8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_15AD0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_11540(0, 0, v10, &unk_15AD8, v15);
}

- (void)suspendStreamWithCompletionBlock:(id)a3
{
  v5 = sub_75AC(&qword_20A08, &qword_15A20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_14F08();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_15AA0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_15AA8;
  v13[5] = v12;
  v14 = self;
  sub_11540(0, 0, v8, &unk_15AB0, v13);
}

- (void)finishStreamWithCompletionBlock:(id)a3
{
  v5 = sub_75AC(&qword_20A08, &qword_15A20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_14F08();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_15A78;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_15A80;
  v13[5] = v12;
  v14 = self;
  sub_11540(0, 0, v8, &unk_15A88, v13);
}

- (void)terminateStreamWithError:(NSError *)a3 completionBlock:(id)a4
{
  v7 = sub_75AC(&qword_20A08, &qword_15A20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_14F08();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_15A30;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_15D30;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_11540(0, 0, v10, &unk_15A40, v15);
}

- (_TtC41ManagedBackgroundAssetsProcessingPipeline10Dispatcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end