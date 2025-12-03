@interface MAAIRBAppleIntelligenceAssetDeliveryEventType
+ (id)typeAssetJob:(id)job assetSelector:(id)selector downloadResult:(id)result;
+ (id)typeAssetUpdate:(id)update assetSelector:(id)selector;
+ (id)typeAtomicInstance:(id)instance atomicInstance:(id)atomicInstance assetCount:(unint64_t)count;
+ (id)typeScheduler:(id)scheduler numJobsTriggered:(unint64_t)triggered assetSets:(id)sets;
+ (id)typeSecure:(id)secure assetSelector:(id)selector type:(int64_t)type secureOperationMetadata:(id)metadata;
+ (id)typeSetConfiguration:(id)configuration assetSet:(id)set configuredCount:(unint64_t)count requestedCount:(unint64_t)requestedCount fromPallasCount:(unint64_t)pallasCount clientDomainName:(id)name;
- (MAAIRBAppleIntelligenceAssetDeliveryEventType)init;
@end

@implementation MAAIRBAppleIntelligenceAssetDeliveryEventType

+ (id)typeScheduler:(id)scheduler numJobsTriggered:(unint64_t)triggered assetSets:(id)sets
{
  sub_256468(self);
  v7 = sub_303AC8();
  schedulerCopy = scheduler;
  v9 = sub_252948(schedulerCopy, triggered, v7);

  return v9;
}

+ (id)typeSetConfiguration:(id)configuration assetSet:(id)set configuredCount:(unint64_t)count requestedCount:(unint64_t)requestedCount fromPallasCount:(unint64_t)pallasCount clientDomainName:(id)name
{
  if (name)
  {
    v13 = sub_303948();
  }

  else
  {
    v13 = 0;
  }

  configurationCopy = configuration;
  setCopy = set;
  v16 = sub_252E54(configurationCopy, setCopy, count, requestedCount, pallasCount, v13);

  return v16;
}

+ (id)typeAssetJob:(id)job assetSelector:(id)selector downloadResult:(id)result
{
  jobCopy = job;
  selectorCopy = selector;
  resultCopy = result;
  v10 = sub_2530E8(jobCopy, selectorCopy);

  return v10;
}

+ (id)typeAssetUpdate:(id)update assetSelector:(id)selector
{
  updateCopy = update;
  selectorCopy = selector;
  v7 = sub_2533DC(updateCopy, selectorCopy);

  return v7;
}

+ (id)typeSecure:(id)secure assetSelector:(id)selector type:(int64_t)type secureOperationMetadata:(id)metadata
{
  secureCopy = secure;
  selectorCopy = selector;
  metadataCopy = metadata;
  v12 = sub_253640(secureCopy, selectorCopy, type);

  return v12;
}

+ (id)typeAtomicInstance:(id)instance atomicInstance:(id)atomicInstance assetCount:(unint64_t)count
{
  instanceCopy = instance;
  atomicInstanceCopy = atomicInstance;
  v8 = sub_253A44(instanceCopy, atomicInstanceCopy);

  return v8;
}

- (MAAIRBAppleIntelligenceAssetDeliveryEventType)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end