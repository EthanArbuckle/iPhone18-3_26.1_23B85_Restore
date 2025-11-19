@interface BankConnectTransactionInsightsLoader
+ (void)requestPersonalizedInsightsUpdate;
- (_TtC9PassKitUI36BankConnectTransactionInsightsLoader)init;
@end

@implementation BankConnectTransactionInsightsLoader

+ (void)requestPersonalizedInsightsUpdate
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = sub_1BE0528D4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = ObjCClassMetadata;
  sub_1BD122C00(0, 0, v5, &unk_1BE0E83C0, v8);
}

- (_TtC9PassKitUI36BankConnectTransactionInsightsLoader)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BankConnectTransactionInsightsLoader *)&v3 init];
}

@end