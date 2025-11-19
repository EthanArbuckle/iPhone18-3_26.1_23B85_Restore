@interface PaymentTerminalService
- (_TtC21ProximityReaderDaemon22PaymentTerminalService)init;
- (void)closeSessionWithDelete:(BOOL)a3 backgrounded:(BOOL)a4;
- (void)declineTransaction:(NSUUID *)a3 completionHandler:(id)a4;
- (void)isAccountLinked:(id)a3 completion:(id)a4;
- (void)linkAccount:(id)a3 relink:(BOOL)a4 completion:(id)a5;
- (void)startIssuerPINEntry:(id)a3 transactionId:(id)a4 completion:(id)a5;
- (void)startSession:(id)a3 completion:(id)a4;
- (void)startTransaction:(id)a3 completion:(id)a4;
- (void)status:(id)a3 completion:(id)a4;
- (void)storeAndForwardStatusWithCompletionHandler:(id)a3;
@end

@implementation PaymentTerminalService

- (void)declineTransaction:(NSUUID *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2613A1C1C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2613AC828;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2613AC830;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_261262B98(0, 0, v10, &unk_2613AC838, v15);
}

- (void)storeAndForwardStatusWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_2613A1C1C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2613AC808;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2613AC810;
  v13[5] = v12;
  v14 = self;
  sub_261262B98(0, 0, v8, &unk_2613AC818, v13);
}

- (_TtC21ProximityReaderDaemon22PaymentTerminalService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)isAccountLinked:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_2613A18CC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_26130DF80(v6, v8, sub_261324930, v9);
}

- (void)linkAccount:(id)a3 relink:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  v8 = sub_2613A18CC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  sub_26130E754(v8, v10, v5, sub_2613241B4, v11);
}

- (void)status:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = sub_2613A18CC();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  v9 = self;
  sub_261320744(v7, a3, v9, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)startSession:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_261320F84(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)closeSessionWithDelete:(BOOL)a3 backgrounded:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_2613113B4(v5, a4);
}

- (void)startTransaction:(id)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_2613A1C1C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = a3;
  v14[6] = sub_261324924;
  v14[7] = v12;
  v15 = self;
  v16 = a3;
  v17 = sub_261266800(0, 0, v10, &unk_2613ACA80, v14);
  v18 = *(&v15->super.isa + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask);
  *(&v15->super.isa + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask) = v17;
}

- (void)startIssuerPINEntry:(id)a3 transactionId:(id)a4 completion:(id)a5
{
  v7 = sub_26139F13C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = sub_2613A18CC();
  v15 = v14;
  sub_26139F11C();
  _Block_copy(v12);
  v16 = self;
  sub_26132276C(v13, v15, v11, v16, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

@end