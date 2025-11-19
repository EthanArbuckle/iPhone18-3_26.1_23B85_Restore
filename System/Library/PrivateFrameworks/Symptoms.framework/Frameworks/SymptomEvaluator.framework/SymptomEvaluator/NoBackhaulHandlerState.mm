@interface NoBackhaulHandlerState
+ (id)createStateWithLabel:(id)a3 rank:(unint64_t)a4 entryCellPreds:(id)a5 entryWiFiPreds:(id)a6;
- (id)_initStateWithLabel:(id)a3 rank:(unint64_t)a4 entryCellPreds:(id)a5 entryWiFiPreds:(id)a6;
@end

@implementation NoBackhaulHandlerState

+ (id)createStateWithLabel:(id)a3 rank:(unint64_t)a4 entryCellPreds:(id)a5 entryWiFiPreds:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[NoBackhaulHandlerState alloc] _initStateWithLabel:v11 rank:a4 entryCellPreds:v10 entryWiFiPreds:v9];

  return v12;
}

- (id)_initStateWithLabel:(id)a3 rank:(unint64_t)a4 entryCellPreds:(id)a5 entryWiFiPreds:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = NoBackhaulHandlerState;
  v13 = [(ExpertSystemStateCore *)&v16 initStateWithLabel:a3 rank:a4 entryPreds:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 11, a5);
    objc_storeStrong(v14 + 12, a6);
  }

  return v14;
}

@end