@interface NoBackhaulHandlerState
+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryCellPreds:(id)preds entryWiFiPreds:(id)fiPreds;
- (id)_initStateWithLabel:(id)label rank:(unint64_t)rank entryCellPreds:(id)preds entryWiFiPreds:(id)fiPreds;
@end

@implementation NoBackhaulHandlerState

+ (id)createStateWithLabel:(id)label rank:(unint64_t)rank entryCellPreds:(id)preds entryWiFiPreds:(id)fiPreds
{
  fiPredsCopy = fiPreds;
  predsCopy = preds;
  labelCopy = label;
  v12 = [[NoBackhaulHandlerState alloc] _initStateWithLabel:labelCopy rank:rank entryCellPreds:predsCopy entryWiFiPreds:fiPredsCopy];

  return v12;
}

- (id)_initStateWithLabel:(id)label rank:(unint64_t)rank entryCellPreds:(id)preds entryWiFiPreds:(id)fiPreds
{
  predsCopy = preds;
  fiPredsCopy = fiPreds;
  v16.receiver = self;
  v16.super_class = NoBackhaulHandlerState;
  v13 = [(ExpertSystemStateCore *)&v16 initStateWithLabel:label rank:rank entryPreds:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 11, preds);
    objc_storeStrong(v14 + 12, fiPreds);
  }

  return v14;
}

@end