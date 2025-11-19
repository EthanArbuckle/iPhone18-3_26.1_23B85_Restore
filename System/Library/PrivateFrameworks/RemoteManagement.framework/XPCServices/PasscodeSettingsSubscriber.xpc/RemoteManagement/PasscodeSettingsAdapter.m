@interface PasscodeSettingsAdapter
- (_TtC26PasscodeSettingsSubscriber23PasscodeSettingsAdapter)init;
- (id)allDeclarationKeysForScope:(int64_t)a3 error:(id *)a4;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)a3;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)a3 replaceKey:(RMStoreDeclarationKey *)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)a3 scope:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation PasscodeSettingsAdapter

- (id)configurationClasses
{
  sub_1000014B8(&qword_100014870, &qword_10000B600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10000B5C0;
  *(v2 + 32) = sub_100005FF4(0, &qword_100014878, RMModelPasscodeSettingsDeclaration_ptr);
  sub_1000014B8(&qword_100014858, &qword_10000B6E0);
  v3.super.isa = sub_10000AB0C().super.isa;

  return v3.super.isa;
}

- (id)declarationKeyForConfiguration:(id)a3
{
  v4 = objc_opt_self();
  v5 = qword_100014848;
  v6 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_10000AA7C();
  v8 = [v4 newDeclarationKeyWithSubscriberIdentifier:v7 reference:v6];

  return v8;
}

- (id)allDeclarationKeysForScope:(int64_t)a3 error:(id *)a4
{
  sub_1000042C0();
  sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
  sub_10000603C();
  v4.super.isa = sub_10000AB6C().super.isa;

  return v4.super.isa;
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)a3 replaceKey:(RMStoreDeclarationKey *)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v11 = (*(*(sub_1000014B8(&qword_100014908, &qword_10000B678) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_10000AB5C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10000B6C8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10000B6D0;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = self;
  sub_100008414(0, 0, v13, &unk_10000B6D8, v18);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_1000014B8(&qword_100014908, &qword_10000B678) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10000AB5C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000B6A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000B6B0;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_100008414(0, 0, v11, &unk_10000B6B8, v16);
}

- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_1000014B8(&qword_100014908, &qword_10000B678) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10000AB5C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000B688;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000B690;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_100008414(0, 0, v11, &unk_10000B698, v16);
}

- (_TtC26PasscodeSettingsSubscriber23PasscodeSettingsAdapter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PasscodeSettingsAdapter();
  return [(PasscodeSettingsAdapter *)&v3 init];
}

@end