@interface CKOperationGroup(WBSCKOperationGroupExtras)
- (id)safari_logDescription;
@end

@implementation CKOperationGroup(WBSCKOperationGroupExtras)

- (id)safari_logDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 operationGroupID];
  v4 = [a1 name];
  v5 = [v2 stringWithFormat:@"operation group: [GroupID:%@, GroupName:%@]", v3, v4];

  return v5;
}

@end