@interface ExecutiveBridge
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)targetForOriginalTarget:(id)a3 connection:(id)a4 selector:(SEL)a5;
- (void)dispatchOperation:(id)a3 toTarget:(id)a4 service:(id)a5;
- (void)dumpStatusToLog:(id)a3;
- (void)shutdown:(id)a3;
- (void)startup:(id)a3;
@end

@implementation ExecutiveBridge

- (id)targetForOriginalTarget:(id)a3 connection:(id)a4 selector:(SEL)a5
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  ExecutiveBridge.target(forOriginalTarget:connection:selector:)(v17, v18);

  sub_100001C24(v17);
  v9 = v19;
  if (v19)
  {
    v10 = sub_1000034E4(v18, v19);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    __chkstk_darwin(v10, v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_100001C24(v18);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)startup:(id)a3
{
  v5 = sub_100002B1C(&qword_10000C628, &qword_100004BD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100004C48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100004C50;
  v14[5] = v13;
  v15 = self;
  sub_100002F28(0, 0, v9, &unk_100004C58, v14);
}

- (void)shutdown:(id)a3
{
  v5 = sub_100002B1C(&qword_10000C628, &qword_100004BD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100004C28;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100004C30;
  v14[5] = v13;
  v15 = self;
  sub_100002F28(0, 0, v9, &unk_100004C38, v14);
}

- (void)dumpStatusToLog:(id)a3
{
  v5 = sub_100002B1C(&qword_10000C628, &qword_100004BD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100004BE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100004BF0;
  v14[5] = v13;
  v15 = self;
  sub_100002F28(0, 0, v9, &unk_100004C00, v14);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = ExecutiveBridge.listener(_:shouldAcceptNewConnection:)(v6, v7);

  return v9;
}

- (void)dispatchOperation:(id)a3 toTarget:(id)a4 service:(id)a5
{
  v6 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _s14photoanalysisd15ExecutiveBridgeC17dispatchOperation_8toTarget7serviceySo020PHAServiceCancelableE0C_ypyptF_0(v6, v9, v8);

  sub_100001C24(v8);
  sub_100001C24(v9);
}

@end