@interface WFCloudKitLegacyWorkflowOrdering
- (WFCloudKitLegacyWorkflowOrdering)initWithZoneID:(id)a3 orderedWorkflowIDs:(id)a4;
@end

@implementation WFCloudKitLegacyWorkflowOrdering

- (WFCloudKitLegacyWorkflowOrdering)initWithZoneID:(id)a3 orderedWorkflowIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFCloudKitLegacyWorkflowOrdering.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];
  }

  v9 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"WFOrdering" zoneID:v7];
  v10 = [(WFCloudKitBaseOrdering *)self initWithIdentifier:v9 orderedWorkflowIDs:v8 orderedFolderIDs:0];

  return v10;
}

@end