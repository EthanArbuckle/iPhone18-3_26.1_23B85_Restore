@interface AgeMigrationDaemonService
- (void)clearAgeMigrationFollowUpWithCompletion:(id)a3;
- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)a3 completion:(id)a4;
- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)a3 completion:(id)a4;
- (void)displayMisconfiguredAgePromptWithContext:(AAAgeMisconfiguredPromptContext *)a3 completion:(id)a4;
- (void)saveUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)a3 action:(int)a4 completion:(id)a5;
@end

@implementation AgeMigrationDaemonService

- (void)clearAgeMigrationFollowUpWithCompletion:(id)a3
{
  v5 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10033E7E0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10033E7E8;
  v13[5] = v12;

  sub_10016483C(0, 0, v8, &unk_10033E7F0, v13);
}

- (void)displayMisconfiguredAgePromptWithContext:(AAAgeMisconfiguredPromptContext *)a3 completion:(id)a4
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
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
  v14[4] = &unk_10033E7C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10033E7C8;
  v15[5] = v14;
  v16 = a3;

  sub_10016483C(0, 0, v10, &unk_10033E7D0, v15);
}

- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)a3 completion:(id)a4
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
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
  v14[4] = &unk_10033E798;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10033E7A0;
  v15[5] = v14;
  v16 = a3;

  sub_10016483C(0, 0, v10, &unk_10033E7A8, v15);
}

- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)a3 completion:(id)a4
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
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
  v14[4] = &unk_10033E778;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10033E780;
  v15[5] = v14;
  v16 = a3;

  sub_10016483C(0, 0, v10, &unk_10033E788, v15);
}

- (void)saveUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)a3 action:(int)a4 completion:(id)a5
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10033E758;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10033E760;
  v17[5] = v16;
  v18 = a3;

  sub_10016483C(0, 0, v12, &unk_10033F2F0, v17);
}

@end