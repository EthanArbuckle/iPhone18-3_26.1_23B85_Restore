@interface WFWorkflowConflictResolution
- (id)description;
@end

@implementation WFWorkflowConflictResolution

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWorkflowConflictResolution *)self keepLocal];
  v7 = [(WFWorkflowConflictResolution *)self localWorkflowID];
  v8 = [(WFWorkflowConflictResolution *)self keepRemote];
  v9 = [(WFWorkflowConflictResolution *)self remoteWorkflowID];
  v10 = [v3 stringWithFormat:@"<%@ %p keepLocal=%d (%@) keepRemote=%d (%@)>", v5, self, v6, v7, v8, v9];

  return v10;
}

@end