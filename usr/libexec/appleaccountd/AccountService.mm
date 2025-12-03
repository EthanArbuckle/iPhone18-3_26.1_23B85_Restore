@interface AccountService
- (void)updatePropertiesForAppleAccount:(id)account options:(id)options completion:(id)completion;
@end

@implementation AccountService

- (void)updatePropertiesForAppleAccount:(id)account options:(id)options completion:(id)completion
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  if (options)
  {
    options = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = *sub_1000080F8(self->accountUpdatePerformer, *&self->accountUpdatePerformer[24]);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  v18[5] = sub_1000080F0;
  v18[6] = v14;
  v18[7] = account;
  v18[8] = options;

  accountCopy = account;

  sub_1000BCD5C(0, 0, v12, &unk_10033E5B0, v18);
}

@end