@interface ExtragalacticPosterUpdating
- (_TtC19ExtragalacticPoster27ExtragalacticPosterUpdating)init;
- (void)updateConfiguration:(PRPosterConfiguration *)a3 withSessionInfo:(PRUpdatingSessionInfo *)a4 completion:(id)a5;
- (void)updateDescriptors:(NSDictionary *)a3 withSessionInfo:(PRUpdatingSessionInfo *)a4 completion:(id)a5;
@end

@implementation ExtragalacticPosterUpdating

- (_TtC19ExtragalacticPoster27ExtragalacticPosterUpdating)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExtragalacticPosterUpdating();
  return [(ExtragalacticPosterUpdating *)&v3 init];
}

- (void)updateDescriptors:(NSDictionary *)a3 withSessionInfo:(PRUpdatingSessionInfo *)a4 completion:(id)a5
{
  v9 = sub_100002504(&qword_1000234E8, &qword_100016170);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1000139C8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000161C8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000161D0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10000A330(0, 0, v12, &unk_1000161D8, v17);
}

- (void)updateConfiguration:(PRPosterConfiguration *)a3 withSessionInfo:(PRUpdatingSessionInfo *)a4 completion:(id)a5
{
  v9 = sub_100002504(&qword_1000234E8, &qword_100016170);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1000139C8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100016180;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100016190;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10000A330(0, 0, v12, &unk_1000161A0, v17);
}

@end