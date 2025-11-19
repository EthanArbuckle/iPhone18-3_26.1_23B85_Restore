@interface AccessCompatibilityService
- (void)request:(_TtC14ScreenTimeCore13AccessRequest *)a3 completionHandler:(id)a4;
- (void)respondTo:(_TtC14ScreenTimeCore6UserID *)a3 with:(_TtC14ScreenTimeCore14AccessResponse *)a4 for:(_TtC14ScreenTimeCore13AccessRequest *)a5 completionHandler:(id)a6;
@end

@implementation AccessCompatibilityService

- (void)request:(_TtC14ScreenTimeCore13AccessRequest *)a3 completionHandler:(id)a4
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001435A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001435B0;
  v15[5] = v14;
  v16 = a3;

  sub_10010D4C0(0, 0, v10, &unk_1001435B8, v15);
}

- (void)respondTo:(_TtC14ScreenTimeCore6UserID *)a3 with:(_TtC14ScreenTimeCore14AccessResponse *)a4 for:(_TtC14ScreenTimeCore13AccessRequest *)a5 completionHandler:(id)a6
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100143598;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100140550;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;

  sub_10010D4C0(0, 0, v14, &unk_100140230, v19);
}

@end