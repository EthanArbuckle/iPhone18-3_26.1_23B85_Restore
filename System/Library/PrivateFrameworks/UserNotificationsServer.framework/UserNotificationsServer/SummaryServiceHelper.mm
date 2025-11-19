@interface SummaryServiceHelper
- (void)summaryServiceDidReceiveGroupSummaries:(id)a3;
@end

@implementation SummaryServiceHelper

- (void)summaryServiceDidReceiveGroupSummaries:(id)a3
{
  sub_270ADB120(0, &unk_281257BA8, 0x277D77D00);
  v3 = sub_270AE3D5C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    sub_270AD872C(v3);
  }
}

@end