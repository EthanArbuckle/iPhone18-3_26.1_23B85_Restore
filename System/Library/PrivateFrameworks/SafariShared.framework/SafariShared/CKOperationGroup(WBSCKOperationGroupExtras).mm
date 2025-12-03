@interface CKOperationGroup(WBSCKOperationGroupExtras)
- (id)safari_logDescription;
@end

@implementation CKOperationGroup(WBSCKOperationGroupExtras)

- (id)safari_logDescription
{
  v2 = MEMORY[0x1E696AEC0];
  operationGroupID = [self operationGroupID];
  name = [self name];
  v5 = [v2 stringWithFormat:@"operation group: [GroupID:%@, GroupName:%@]", operationGroupID, name];

  return v5;
}

@end