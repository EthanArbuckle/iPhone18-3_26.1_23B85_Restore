@interface FKSpendingSummaryDataProvider
- (FKSpendingSummaryDataProvider)init;
- (FKSpendingSummaryDataProvider)initWithAccountIdentifier:(id)a3;
- (NSUUID)accountID;
- (void)startAndCacheCurrentlySelectedSpendingSummaryWithCompletion:(id)a3;
@end

@implementation FKSpendingSummaryDataProvider

- (FKSpendingSummaryDataProvider)initWithAccountIdentifier:(id)a3
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23 - v15;
  sub_1BE04AFC4();
  v17 = *(v5 + 16);
  v17(v12, v16, v4);
  v18 = objc_allocWithZone(ObjectType);
  v17(v8, v12, v4);
  type metadata accessor for FinanceKitSpendingSummaryDataProvider(0);
  swift_allocObject();
  sub_1BD9FD7C4(v8);
  *&v18[OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider] = v19;
  v23.receiver = v18;
  v23.super_class = ObjectType;
  v20 = [(FKSpendingSummaryDataProvider *)&v23 init];
  v21 = *(v5 + 8);
  v21(v16, v4);
  v21(v12, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v20;
}

- (NSUUID)accountID
{
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, *(&self->super.isa + OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider) + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v3, v6);
  v9 = sub_1BE04AF94();
  (*(v4 + 8))(v8, v3);

  return v9;
}

- (void)startAndCacheCurrentlySelectedSpendingSummaryWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1BE0528D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BE0CEFF0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BE107FA0;
  v13[5] = v12;
  v14 = self;
  sub_1BD992D04(0, 0, v8, &unk_1BE0C7F30, v13);
}

- (FKSpendingSummaryDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end