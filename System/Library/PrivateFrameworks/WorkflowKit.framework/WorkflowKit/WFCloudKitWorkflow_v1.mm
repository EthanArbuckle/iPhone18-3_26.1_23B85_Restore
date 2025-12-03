@interface WFCloudKitWorkflow_v1
+ (id)recordIDWithZoneID:(id)d workflowID:(id)iD;
@end

@implementation WFCloudKitWorkflow_v1

+ (id)recordIDWithZoneID:(id)d workflowID:(id)iD
{
  v5 = MEMORY[0x1E695BA70];
  iDCopy = iD;
  dCopy = d;
  v8 = [[v5 alloc] initWithRecordName:iDCopy zoneID:dCopy];

  return v8;
}

@end