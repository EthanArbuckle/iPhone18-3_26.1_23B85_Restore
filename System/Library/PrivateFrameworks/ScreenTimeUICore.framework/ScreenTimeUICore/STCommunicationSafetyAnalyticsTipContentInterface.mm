@interface STCommunicationSafetyAnalyticsTipContentInterface
+ (id)makeCommunicationSafetyAnalyticsTipViewControllerWithActionBlock:(id)block dismissTipBlock:(id)tipBlock;
- (_TtC16ScreenTimeUICore49STCommunicationSafetyAnalyticsTipContentInterface)init;
@end

@implementation STCommunicationSafetyAnalyticsTipContentInterface

+ (id)makeCommunicationSafetyAnalyticsTipViewControllerWithActionBlock:(id)block dismissTipBlock:(id)tipBlock
{
  v5 = _Block_copy(block);
  v6 = _Block_copy(tipBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = sub_264DEED98(sub_264DEEFA0, v7, sub_264DEEFDC, v8);

  return v9;
}

- (_TtC16ScreenTimeUICore49STCommunicationSafetyAnalyticsTipContentInterface)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for STCommunicationSafetyAnalyticsTipContentInterface();
  return [(STCommunicationSafetyAnalyticsTipContentInterface *)&v3 init];
}

@end