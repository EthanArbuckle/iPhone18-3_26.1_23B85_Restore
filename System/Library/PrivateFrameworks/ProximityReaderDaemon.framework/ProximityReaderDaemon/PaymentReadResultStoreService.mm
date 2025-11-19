@interface PaymentReadResultStoreService
- (_TtC21ProximityReaderDaemon29PaymentReadResultStoreService)init;
- (void)dealloc;
- (void)fetchStoredPaymentCardReadResultBatchWithSize:(int64_t)a3 completionHandler:(id)a4;
- (void)fetchStoredPaymentCardReadResultCountWithCompletionHandler:(id)a3;
- (void)resetBatchStateWithCompletionHandler:(id)a3;
- (void)resolveBatchWithBatchDeletionToken:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation PaymentReadResultStoreService

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for StoreAnalytics();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  swift_beginAccess();
  if ((*(v5 + 48))(self + v9, 1, v4))
  {
    v10 = self;
  }

  else
  {
    sub_2613765A4(self + v9, v8, type metadata accessor for StoreAnalytics);
    v11 = self;
    sub_261266F18();
    sub_261376698(v8, type metadata accessor for StoreAnalytics);
  }

  v13.receiver = self;
  v13.super_class = ObjectType;
  [(PaymentReadResultStoreService *)&v13 dealloc];
}

- (_TtC21ProximityReaderDaemon29PaymentReadResultStoreService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fetchStoredPaymentCardReadResultCountWithCompletionHandler:(id)a3
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
  v12[4] = &unk_2613AD3A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2613AD3B0;
  v13[5] = v12;
  v14 = self;
  sub_261262B98(0, 0, v8, &unk_2613AD3B8, v13);
}

- (void)fetchStoredPaymentCardReadResultBatchWithSize:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
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
  v14[4] = &unk_2613AD388;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2613AD390;
  v15[5] = v14;
  v16 = self;
  sub_261262B98(0, 0, v10, &unk_2613AD398, v15);
}

- (void)resetBatchStateWithCompletionHandler:(id)a3
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
  v12[4] = &unk_2613AD368;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2613AD370;
  v13[5] = v12;
  v14 = self;
  sub_261262B98(0, 0, v8, &unk_2613AD378, v13);
}

- (void)resolveBatchWithBatchDeletionToken:(NSString *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_2613AD330;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2613AD340;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_261262B98(0, 0, v10, &unk_2613AD350, v15);
}

@end