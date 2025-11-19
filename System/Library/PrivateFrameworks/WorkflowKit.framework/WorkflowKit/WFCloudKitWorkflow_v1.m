@interface WFCloudKitWorkflow_v1
+ (id)recordIDWithZoneID:(id)a3 workflowID:(id)a4;
@end

@implementation WFCloudKitWorkflow_v1

+ (id)recordIDWithZoneID:(id)a3 workflowID:(id)a4
{
  v5 = MEMORY[0x1E695BA70];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithRecordName:v6 zoneID:v7];

  return v8;
}

@end