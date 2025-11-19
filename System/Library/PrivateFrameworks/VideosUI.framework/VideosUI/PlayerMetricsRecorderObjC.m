@interface PlayerMetricsRecorderObjC
- (void)recordPageMetricsForPreRoll:(id)a3 promoInfo:(id)a4;
- (void)setPlayerPreRollPageMetrics:(id)a3;
@end

@implementation PlayerMetricsRecorderObjC

- (void)setPlayerPreRollPageMetrics:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1E401A868();
  swift_unknownObjectRelease();
}

- (void)recordPageMetricsForPreRoll:(id)a3 promoInfo:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_1E401AA28(a3, v7);
  swift_unknownObjectRelease();
}

@end