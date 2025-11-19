@interface LegacyProfilesAdapter
- (_TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter)init;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)a3;
- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)a3 replaceKey:(RMStoreDeclarationKey *)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)beginProcessingConfigurationsForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)endProcessingConfigurations:(BOOL)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)a3 scope:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation LegacyProfilesAdapter

- (_TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter)init
{
  swift_getObjectType();
  v2 = type metadata accessor for LegacyProfilesAdapter();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter_profilesController] = 0;
  *&v3[OBJC_IVAR____TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter_installedProfileIdentifierByDeclarationKey] = 0;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(LegacyProfilesAdapter *)&v6 init];
  swift_deallocPartialClassInstance();
  return v4;
}

- (id)configurationClasses
{
  sub_1000012FC(&qword_1000106C0, &qword_100009040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100008FF0;
  *(v2 + 32) = sub_1000079D8(0, &qword_1000106C8, RMModelLegacyProfileDeclaration_ptr);
  sub_1000012FC(&qword_100010698, &qword_100009000);
  v3.super.isa = sub_10000869C().super.isa;

  return v3.super.isa;
}

- (void)beginProcessingConfigurationsForScope:(int64_t)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_1000012FC(&qword_100010758, &qword_1000090C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000086CC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100009180;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100009188;
  v14[5] = v13;
  v15 = self;
  sub_100003A10(0, 0, v9, &unk_100009190, v14);
}

- (void)endProcessingConfigurations:(BOOL)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_1000012FC(&qword_100010758, &qword_1000090C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1000086CC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100009160;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100009168;
  v16[5] = v15;
  v17 = self;
  sub_100003A10(0, 0, v11, &unk_100009170, v16);
}

- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_1000012FC(&qword_100010758, &qword_1000090C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000086CC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100009140;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100009148;
  v14[5] = v13;
  v15 = self;
  sub_100003A10(0, 0, v9, &unk_100009150, v14);
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)a3 replaceKey:(RMStoreDeclarationKey *)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v11 = (*(*(sub_1000012FC(&qword_100010758, &qword_1000090C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1000086CC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100009120;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100009128;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = self;
  sub_100003A10(0, 0, v13, &unk_100009130, v18);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_1000012FC(&qword_100010758, &qword_1000090C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1000086CC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000090D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000090E8;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_100003A10(0, 0, v11, &unk_1000090F8, v16);
}

- (id)declarationKeyForConfiguration:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC24LegacyProfilesSubscriber21LegacyProfilesAdapter_profilesController);
  if (v3)
  {
    v4 = self;
    v5 = a3;
    v6 = v4;
    v7 = v3;
    v8 = [v5 store];
    v9 = [v5 declaration];
    v10 = [v7 declarationKeyForStore:v8 declaration:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return self;
}

@end