@interface SMCatalogStore
- (SMCatalogStore)init;
- (void)catalogResetSyncWithCompletion:(id)a3;
- (void)handleCatalogResetSyncNotificationWithNotification:(id)a3;
- (void)queryCatalogWorkoutDetail:(id)a3 completion:(id)a4;
- (void)queryFeaturedCatalogLockupsWithCompletion:(id)a3;
@end

@implementation SMCatalogStore

- (void)queryFeaturedCatalogLockupsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  CatalogStore.queryFeaturedCatalogLockups(completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> (), v5);
}

- (void)queryCatalogWorkoutDetail:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  CatalogStore.queryCatalogWorkoutDetail(_:completion:)(v6, v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned CatalogWorkoutDetailBridge?, @unowned NSError?) -> (), v9);
}

- (void)catalogResetSyncWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = self;
  CatalogStore.requestCatalogResetSync()(v8);
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  *(v12 + 24) = v10;

  v13 = Promise.operation.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = closure #1 in CatalogStore.catalogResetSync(completion:)partial apply;
  *(v14 + 24) = v12;

  v13(closure #1 in Promise.resolve(_:)specialized partial apply, v14);

  (*(v6 + 8))(v8, v5);
}

- (void)handleCatalogResetSyncNotificationWithNotification:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  CatalogStore.requestCatalogResetSync()(v7);
  v13 = Promise.operation.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = specialized closure #1 in CatalogStore.catalogResetSync(completion:);
  *(v14 + 24) = 0;
  v13(closure #1 in Promise.resolve(_:)specialized partial apply, v14);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

- (SMCatalogStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end