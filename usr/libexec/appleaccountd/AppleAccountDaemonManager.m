@interface AppleAccountDaemonManager
- (void)cacheLoginResponse:(AALoginAccountResponse *)a3 forAccount:(ACAccount *)a4 completion:(id)a5;
- (void)configureExportedInterface:(id)a3;
- (void)fetchCachedLoginResponseForAccount:(ACAccount *)a3 completion:(id)a4;
- (void)handleAppleAccountDeleteForAccount:(id)a3 completion:(id)a4;
- (void)removeChildOrTeenConnectFollowUpWithCompletion:(id)a3;
- (void)removeProtoAccountWithCompletion:(id)a3;
- (void)startAppleIDAvailabilityHealthCheckWithCompletion:(id)a3;
- (void)urlConfigurationWithCompletion:(id)a3;
@end

@implementation AppleAccountDaemonManager

- (void)configureExportedInterface:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100152054();
}

- (void)handleAppleAccountDeleteForAccount:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1001521EC(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)cacheLoginResponse:(AALoginAccountResponse *)a3 forAccount:(ACAccount *)a4 completion:(id)a5
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100343780;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100343788;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10016483C(0, 0, v12, &unk_100343790, v17);
}

- (void)fetchCachedLoginResponseForAccount:(ACAccount *)a3 completion:(id)a4
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
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
  v14[4] = &unk_100343758;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100343760;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10016483C(0, 0, v10, &unk_100343768, v15);
}

- (void)urlConfigurationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100150B04(sub_100152FB0, v5);
}

- (void)removeProtoAccountWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100152560(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)removeChildOrTeenConnectFollowUpWithCompletion:(id)a3
{
  v5 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
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
  v12[5] = sub_100008DD4;
  v12[6] = v10;
  v13 = self;
  sub_1000BCD5C(0, 0, v8, &unk_100343748, v12);
}

- (void)startAppleIDAvailabilityHealthCheckWithCompletion:(id)a3
{
  v5 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100343730;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10033E760;
  v13[5] = v12;
  v14 = self;
  sub_10016483C(0, 0, v8, &unk_10033F2F0, v13);
}

@end