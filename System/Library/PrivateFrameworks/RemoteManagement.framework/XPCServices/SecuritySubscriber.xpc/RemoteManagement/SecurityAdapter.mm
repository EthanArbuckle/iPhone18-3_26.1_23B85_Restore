@interface SecurityAdapter
- (_TtC18SecuritySubscriber15SecurityAdapter)init;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation SecurityAdapter

- (id)configurationClasses
{
  sub_100001480(&qword_100018850, &unk_10000F260);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10000F300;
  *(v2 + 32) = sub_1000097C0(0, &qword_100018858, RMModelSecurityCertificateDeclaration_ptr);
  *(v2 + 40) = sub_1000097C0(0, &qword_100018860, RMModelSecurityIdentityDeclaration_ptr);
  sub_100001480(&qword_100018910, &qword_10000F430);
  v3.super.isa = sub_10000E6A8().super.isa;

  return v3.super.isa;
}

- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler
{
  v7 = (*(*(sub_100001480(&qword_1000188F0, &qword_10000F3A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = scope;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_10000E728();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10000F418;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10000F420;
  v14[5] = v13;
  selfCopy = self;
  sub_10000AA8C(0, 0, v9, &unk_10000F428, v14);
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)configuration replaceKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  v11 = (*(*(sub_100001480(&qword_1000188F0, &qword_10000F3A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = configuration;
  v15[3] = key;
  v15[4] = scope;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_10000E728();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10000F3F8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10000F400;
  v18[5] = v17;
  configurationCopy = configuration;
  keyCopy = key;
  selfCopy = self;
  sub_10000AA8C(0, 0, v13, &unk_10000F408, v18);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)key scope:(int64_t)scope completionHandler:(id)handler
{
  v9 = (*(*(sub_100001480(&qword_1000188F0, &qword_10000F3A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = key;
  v13[3] = scope;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10000E728();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F3D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F3E0;
  v16[5] = v15;
  keyCopy = key;
  selfCopy = self;
  sub_10000AA8C(0, 0, v11, &unk_10000F3E8, v16);
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v4 = objc_opt_self();
  configurationCopy = configuration;
  v6 = sub_10000E5D8();
  v7 = [v4 newDeclarationKeyWithSubscriberIdentifier:v6 reference:configurationCopy];

  return v7;
}

- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  v9 = (*(*(sub_100001480(&qword_1000188F0, &qword_10000F3A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = configuration;
  v13[3] = scope;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10000E728();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F3B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F3C0;
  v16[5] = v15;
  configurationCopy = configuration;
  selfCopy = self;
  sub_10000AA8C(0, 0, v11, &unk_10000F3C8, v16);
}

- (_TtC18SecuritySubscriber15SecurityAdapter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SecurityAdapter();
  return [(SecurityAdapter *)&v3 init];
}

@end