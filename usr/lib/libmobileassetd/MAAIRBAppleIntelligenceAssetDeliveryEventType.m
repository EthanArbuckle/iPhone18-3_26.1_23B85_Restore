@interface MAAIRBAppleIntelligenceAssetDeliveryEventType
+ (id)typeAssetJob:(id)a3 assetSelector:(id)a4 downloadResult:(id)a5;
+ (id)typeAssetUpdate:(id)a3 assetSelector:(id)a4;
+ (id)typeAtomicInstance:(id)a3 atomicInstance:(id)a4 assetCount:(unint64_t)a5;
+ (id)typeScheduler:(id)a3 numJobsTriggered:(unint64_t)a4 assetSets:(id)a5;
+ (id)typeSecure:(id)a3 assetSelector:(id)a4 type:(int64_t)a5 secureOperationMetadata:(id)a6;
+ (id)typeSetConfiguration:(id)a3 assetSet:(id)a4 configuredCount:(unint64_t)a5 requestedCount:(unint64_t)a6 fromPallasCount:(unint64_t)a7 clientDomainName:(id)a8;
- (MAAIRBAppleIntelligenceAssetDeliveryEventType)init;
@end

@implementation MAAIRBAppleIntelligenceAssetDeliveryEventType

+ (id)typeScheduler:(id)a3 numJobsTriggered:(unint64_t)a4 assetSets:(id)a5
{
  sub_256468(a1);
  v7 = sub_303AC8();
  v8 = a3;
  v9 = sub_252948(v8, a4, v7);

  return v9;
}

+ (id)typeSetConfiguration:(id)a3 assetSet:(id)a4 configuredCount:(unint64_t)a5 requestedCount:(unint64_t)a6 fromPallasCount:(unint64_t)a7 clientDomainName:(id)a8
{
  if (a8)
  {
    v13 = sub_303948();
  }

  else
  {
    v13 = 0;
  }

  v14 = a3;
  v15 = a4;
  v16 = sub_252E54(v14, v15, a5, a6, a7, v13);

  return v16;
}

+ (id)typeAssetJob:(id)a3 assetSelector:(id)a4 downloadResult:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_2530E8(v7, v8);

  return v10;
}

+ (id)typeAssetUpdate:(id)a3 assetSelector:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_2533DC(v5, v6);

  return v7;
}

+ (id)typeSecure:(id)a3 assetSelector:(id)a4 type:(int64_t)a5 secureOperationMetadata:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = sub_253640(v9, v10, a5);

  return v12;
}

+ (id)typeAtomicInstance:(id)a3 atomicInstance:(id)a4 assetCount:(unint64_t)a5
{
  v6 = a3;
  v7 = a4;
  v8 = sub_253A44(v6, v7);

  return v8;
}

- (MAAIRBAppleIntelligenceAssetDeliveryEventType)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end