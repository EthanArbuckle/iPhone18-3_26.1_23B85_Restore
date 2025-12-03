@interface WFWorkflowConflictResolution
- (id)description;
@end

@implementation WFWorkflowConflictResolution

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  keepLocal = [(WFWorkflowConflictResolution *)self keepLocal];
  localWorkflowID = [(WFWorkflowConflictResolution *)self localWorkflowID];
  keepRemote = [(WFWorkflowConflictResolution *)self keepRemote];
  remoteWorkflowID = [(WFWorkflowConflictResolution *)self remoteWorkflowID];
  v10 = [v3 stringWithFormat:@"<%@ %p keepLocal=%d (%@) keepRemote=%d (%@)>", v5, self, keepLocal, localWorkflowID, keepRemote, remoteWorkflowID];

  return v10;
}

@end