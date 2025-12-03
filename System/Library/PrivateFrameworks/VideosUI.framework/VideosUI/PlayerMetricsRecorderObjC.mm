@interface PlayerMetricsRecorderObjC
- (void)recordPageMetricsForPreRoll:(id)roll promoInfo:(id)info;
- (void)setPlayerPreRollPageMetrics:(id)metrics;
@end

@implementation PlayerMetricsRecorderObjC

- (void)setPlayerPreRollPageMetrics:(id)metrics
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1E401A868();
  swift_unknownObjectRelease();
}

- (void)recordPageMetricsForPreRoll:(id)roll promoInfo:(id)info
{
  swift_unknownObjectRetain();
  infoCopy = info;
  selfCopy = self;
  sub_1E401AA28(roll, infoCopy);
  swift_unknownObjectRelease();
}

@end