@interface WFCloudKitLegacyWorkflowOrdering
- (WFCloudKitLegacyWorkflowOrdering)initWithZoneID:(id)d orderedWorkflowIDs:(id)ds;
@end

@implementation WFCloudKitLegacyWorkflowOrdering

- (WFCloudKitLegacyWorkflowOrdering)initWithZoneID:(id)d orderedWorkflowIDs:(id)ds
{
  dCopy = d;
  dsCopy = ds;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitLegacyWorkflowOrdering.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];
  }

  v9 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"WFOrdering" zoneID:dCopy];
  v10 = [(WFCloudKitBaseOrdering *)self initWithIdentifier:v9 orderedWorkflowIDs:dsCopy orderedFolderIDs:0];

  return v10;
}

@end