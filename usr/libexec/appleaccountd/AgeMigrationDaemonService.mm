@interface AgeMigrationDaemonService
- (void)clearAgeMigrationFollowUpWithCompletion:(id)completion;
- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion;
- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion;
- (void)displayMisconfiguredAgePromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion;
- (void)saveUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context action:(int)action completion:(id)completion;
@end

@implementation AgeMigrationDaemonService

- (void)clearAgeMigrationFollowUpWithCompletion:(id)completion
{
  v5 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
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

- (void)displayMisconfiguredAgePromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
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
  contextCopy = context;

  sub_10016483C(0, 0, v10, &unk_10033E7D0, v15);
}

- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
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
  contextCopy = context;

  sub_10016483C(0, 0, v10, &unk_10033E7A8, v15);
}

- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = context;
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
  contextCopy = context;

  sub_10016483C(0, 0, v10, &unk_10033E788, v15);
}

- (void)saveUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context action:(int)action completion:(id)completion
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = context;
  *(v14 + 24) = action;
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
  contextCopy = context;

  sub_10016483C(0, 0, v12, &unk_10033F2F0, v17);
}

@end