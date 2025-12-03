@interface IdentityDaemonService
- (void)fetchIdentityFor:(ACAccount *)for completionHandler:(id)handler;
@end

@implementation IdentityDaemonService

- (void)fetchIdentityFor:(ACAccount *)for completionHandler:(id)handler
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1003442C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10033E760;
  v15[5] = v14;
  forCopy = for;

  sub_10016483C(0, 0, v10, &unk_10033F2F0, v15);
}

@end