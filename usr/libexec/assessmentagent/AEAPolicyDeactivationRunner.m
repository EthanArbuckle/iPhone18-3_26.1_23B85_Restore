@interface AEAPolicyDeactivationRunner
- (BOOL)isFailable;
- (void)deactivateWithCompletion:(id)a3;
@end

@implementation AEAPolicyDeactivationRunner

- (BOOL)isFailable
{
  v2 = *&self->deactivation[24];
  v3 = *&self->deactivation[32];
  sub_100005A3C(self->deactivation, v2);
  v4 = *(v3 + 16);

  v5 = v4(v2, v3);

  return v5 & 1;
}

- (void)deactivateWithCompletion:(id)a3
{
  v5 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000833A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000833B0;
  v14[5] = v13;

  sub_10004EE00(0, 0, v9, &unk_1000833C0, v14);
}

@end