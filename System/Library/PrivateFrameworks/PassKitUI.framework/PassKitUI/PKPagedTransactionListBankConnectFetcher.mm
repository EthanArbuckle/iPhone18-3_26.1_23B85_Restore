@interface PKPagedTransactionListBankConnectFetcher
- (_TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher)init;
- (void)accountExternalIDsWithCompletionHandler:(id)a3;
- (void)countTransactionsWithCompletionHandler:(id)a3;
- (void)fetchTransactionsWithLimit:(int64_t)a3 before:(_TtC9PassKitUI26PKTransactionsPageBoundary *)a4 completionHandler:(id)a5;
@end

@implementation PKPagedTransactionListBankConnectFetcher

- (void)accountExternalIDsWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1BE0DF840;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BE0DF848;
  v13[5] = v12;
  v14 = self;
  sub_1BD992D04(0, 0, v8, &unk_1BE0DF850, v13);
}

- (void)countTransactionsWithCompletionHandler:(id)a3
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
  v12[4] = &unk_1BE0DF820;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BE0DF828;
  v13[5] = v12;
  v14 = self;
  sub_1BD992D04(0, 0, v8, &unk_1BE0DF830, v13);
}

- (void)fetchTransactionsWithLimit:(int64_t)a3 before:(_TtC9PassKitUI26PKTransactionsPageBoundary *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1BE0528D4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BE0DF810;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1BE107FA0;
  v17[5] = v16;
  v18 = a4;
  v19 = self;
  sub_1BD992D04(0, 0, v12, &unk_1BE0C7F30, v17);
}

- (_TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accounts;
  v5 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + v4) = sub_1BD1AD564(MEMORY[0x1E69E7CC0]);
  v6 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
  *(&self->super.isa + v6) = sub_1BD1AD784(v5);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(PKPagedTransactionListBankConnectFetcher *)&v8 init];
}

@end