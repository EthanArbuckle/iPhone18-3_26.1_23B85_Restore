@interface MessageStoreWrapper
- (void)fetchVoicemailWithIdentifier:(NSString *)identifier completion:(id)completion;
- (void)fetchVoicemailsMatching:(id)matching completion:;
- (void)markRead:(id)read;
@end

@implementation MessageStoreWrapper

- (void)fetchVoicemailsMatching:(id)matching completion:
{
  v4 = v3;
  v7 = (*(*(sub_100029394(&qword_100057960, &qword_100038F18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(matching);
  v11 = _Block_copy(v4);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100031078();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100038F98;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100038FA0;
  v15[5] = v14;

  sub_10002D774(0, 0, v9, &unk_100038FA8, v15);
}

- (void)fetchVoicemailWithIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = (*(*(sub_100029394(&qword_100057960, &qword_100038F18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_100031078();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100038F78;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100038F80;
  v14[5] = v13;
  identifierCopy = identifier;

  sub_10002D774(0, 0, v9, &unk_100038F88, v14);
}

- (void)markRead:(id)read
{
  swift_unknownObjectRetain();

  sub_1000277E8(read);
  swift_unknownObjectRelease();
}

@end