@interface HUDInsightReportHeartbeat
@end

@implementation HUDInsightReportHeartbeat

__int16 *__HUDInsightReportHeartbeat_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 25) != 0;
  result = HUDGetGlobalConfig();
  *(result + 3) = v1;
  return result;
}

@end