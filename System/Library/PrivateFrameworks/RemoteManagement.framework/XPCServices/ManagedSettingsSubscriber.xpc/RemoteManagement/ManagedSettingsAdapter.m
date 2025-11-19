@interface ManagedSettingsAdapter
- (_TtC25ManagedSettingsSubscriber22ManagedSettingsAdapter)init;
- (id)allDeclarationKeysForScope:(int64_t)a3 error:(id *)a4;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)a3;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)a3 replaceKey:(RMStoreDeclarationKey *)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)beginProcessingConfigurationsForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)endProcessingConfigurations:(BOOL)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)a3 scope:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation ManagedSettingsAdapter

- (id)configurationClasses
{
  sub_100001550(&unk_10001C940, &unk_1000121B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000121A0;
  *(v2 + 32) = sub_10000B858(0, &unk_10001CCB0, RMModelConfigurationDynamic_ptr);
  sub_100001550(&qword_10001CAD0, &qword_100012920);
  v3.super.isa = sub_10001158C().super.isa;

  return v3.super.isa;
}

- (id)declarationKeyForConfiguration:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = sub_10001147C();
  v7 = [v4 newDeclarationKeyWithSubscriberIdentifier:v6 reference:v5];

  return v7;
}

- (void)beginProcessingConfigurationsForScope:(int64_t)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_100001550(&qword_10001CAB0, &qword_100012850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000115EC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100012908;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100012910;
  v14[5] = v13;
  v15 = self;
  sub_1000068DC(0, 0, v9, &unk_100012918, v14);
}

- (void)endProcessingConfigurations:(BOOL)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_100001550(&qword_10001CAB0, &qword_100012850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1000115EC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000128E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000128F0;
  v16[5] = v15;
  v17 = self;
  sub_1000068DC(0, 0, v11, &unk_1000128F8, v16);
}

- (id)allDeclarationKeysForScope:(int64_t)a3 error:(id *)a4
{
  sub_100008A14(a3);
  sub_10000B858(0, &qword_10001CAC0, RMStoreDeclarationKey_ptr);
  sub_10000B164();
  v4.super.isa = sub_1000115FC().super.isa;

  return v4.super.isa;
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)a3 replaceKey:(RMStoreDeclarationKey *)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v11 = (*(*(sub_100001550(&qword_10001CAB0, &qword_100012850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1000115EC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000128C8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000128D0;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = self;
  sub_1000068DC(0, 0, v13, &unk_1000128D8, v18);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_100001550(&qword_10001CAB0, &qword_100012850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1000115EC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000128A8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000128B0;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1000068DC(0, 0, v11, &unk_1000128B8, v16);
}

- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_100001550(&qword_10001CAB0, &qword_100012850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1000115EC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100012860;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100012870;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_1000068DC(0, 0, v11, &unk_100012880, v16);
}

- (_TtC25ManagedSettingsSubscriber22ManagedSettingsAdapter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ManagedSettingsAdapter();
  return [(ManagedSettingsAdapter *)&v3 init];
}

@end