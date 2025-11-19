@interface ManagedAppsAdapter
- (_TtC21ManagedAppsSubscriber18ManagedAppsAdapter)init;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)a3;
- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)applyConfiguration:(RMSubscribedConfigurationReference *)a3 replaceKey:(RMStoreDeclarationKey *)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)removeDeclarationKey:(RMStoreDeclarationKey *)a3 scope:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation ManagedAppsAdapter

- (_TtC21ManagedAppsSubscriber18ManagedAppsAdapter)init
{
  v3 = type metadata accessor for MACAPIImpl();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = (self + OBJC_IVAR____TtC21ManagedAppsSubscriber18ManagedAppsAdapter_macapi);
  v5[3] = v3;
  v5[4] = &protocol witness table for MACAPIImpl;
  *v5 = v4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedAppsAdapter();
  return [(ManagedAppsAdapter *)&v7 init];
}

- (id)configurationClasses
{
  sub_100001658(&qword_100020C90, &unk_100017AD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100017AC0;
  *(v2 + 32) = sub_10000EE34(0, &unk_100020D20, RMModelAppManagedDeclaration_ptr);
  sub_100001658(&qword_100020AB0, &qword_100017F00);
  v3.super.isa = sub_100016F20().super.isa;

  return v3.super.isa;
}

- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_100001658(&qword_100020CC8, &qword_100017E28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_100016FA0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017EE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017EE8;
  v14[5] = v13;
  v15 = self;
  sub_10000FD6C(0, 0, v9, &unk_100017EF0, v14);
}

- (void)applyConfiguration:(RMSubscribedConfigurationReference *)a3 replaceKey:(RMStoreDeclarationKey *)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v11 = (*(*(sub_100001658(&qword_100020CC8, &qword_100017E28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_100016FA0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100017E98;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100017EA0;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = self;
  sub_10000FD6C(0, 0, v13, &unk_100017EA8, v18);
}

- (void)removeDeclarationKey:(RMStoreDeclarationKey *)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_100001658(&qword_100020CC8, &qword_100017E28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_100016FA0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100017E78;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100017E80;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_10000FD6C(0, 0, v11, &unk_100017E88, v16);
}

- (id)declarationKeyForConfiguration:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = sub_100016DF0();
  v7 = [v4 newDeclarationKeyWithSubscriberIdentifier:v6 reference:v5];

  return v7;
}

- (void)configurationUIForConfiguration:(RMSubscribedConfigurationReference *)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v9 = (*(*(sub_100001658(&qword_100020CC8, &qword_100017E28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_100016FA0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100017E38;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100017E40;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_10000FD6C(0, 0, v11, &unk_100017E48, v16);
}

@end