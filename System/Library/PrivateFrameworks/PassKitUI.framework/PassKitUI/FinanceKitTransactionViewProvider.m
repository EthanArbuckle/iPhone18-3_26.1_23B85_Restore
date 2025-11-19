@interface FinanceKitTransactionViewProvider
+ (id)makeViewControllerWithTransactionID:(id)a3 institution:(id)a4 navigationController:(id)a5 style:(int64_t)a6;
- (_TtC9PassKitUI33FinanceKitTransactionViewProvider)init;
@end

@implementation FinanceKitTransactionViewProvider

+ (id)makeViewControllerWithTransactionID:(id)a3 institution:(id)a4 navigationController:(id)a5 style:(int64_t)a6
{
  v9 = sub_1BE04AFE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AFC4();
  v14 = a4;
  v15 = a5;
  v16 = _s9PassKitUI07FinanceB23TransactionViewProviderC04makeF10Controller13transactionID11institution010navigationI05styleSo06UIViewI0C10Foundation4UUIDV_So13FKInstitutionCSo012UINavigationI0CSo09PKPaymenta6DetailF5StyleVtFZ_0(v13, v14, v15, a6);

  (*(v10 + 8))(v13, v9);

  return v16;
}

- (_TtC9PassKitUI33FinanceKitTransactionViewProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FinanceKitTransactionViewProvider();
  return [(FinanceKitTransactionViewProvider *)&v3 init];
}

@end