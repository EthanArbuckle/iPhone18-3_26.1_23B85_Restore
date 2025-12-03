@interface PasscodeSettingsAdapter
- (_TtC26PasscodeSettingsSubscriber23PasscodeSettingsAdapter)init;
- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
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

- (id)declarationKeyForConfiguration:(id)configuration
{
  v4 = objc_opt_self();
  v5 = qword_100014848;
  configurationCopy = configuration;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_10000AA7C();
  v8 = [v4 newDeclarationKeyWithSubscriberIdentifier:v7 reference:configurationCopy];

  return v8;
}

- (id)allDeclarationKeysForScope:(int64_t)scope error:(id *)error
{
  sub_1000042C0();
  sub_100005FF4(0, &unk_100014BF0, RMStoreDeclarationKey_ptr);
  sub_10000603C();
  v4.super.isa = sub_10000AB6C().super.isa;

  return v4.super.isa;
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  v11 = (*(*(sub_1000014B8(&qword_100014908, &qword_10000B678) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = key;
  v15[4] = scope;
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
  configurationCopy = configuration;
  keyCopy = key;
  selfCopy = self;
  sub_100008414(0, 0, v13, &unk_10000B6D8, v18);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  v9 = (*(*(sub_1000014B8(&qword_100014908, &qword_10000B678) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = key;
  v13[3] = scope;
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
  keyCopy = key;
  selfCopy = self;
  sub_100008414(0, 0, v11, &unk_10000B6B8, v16);
}

- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  v9 = (*(*(sub_1000014B8(&qword_100014908, &qword_10000B678) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = scope;
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
  configurationCopy = configuration;
  selfCopy = self;
  sub_100008414(0, 0, v11, &unk_10000B698, v16);
}

- (_TtC26PasscodeSettingsSubscriber23PasscodeSettingsAdapter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PasscodeSettingsAdapter();
  return [(PasscodeSettingsAdapter *)&v3 init];
}

@end