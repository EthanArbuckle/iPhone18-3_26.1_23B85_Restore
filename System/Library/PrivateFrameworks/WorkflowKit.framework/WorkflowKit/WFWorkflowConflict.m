@interface WFWorkflowConflict
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation WFWorkflowConflict

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WFWorkflowConflict *)self localWorkflowID];
      v7 = [(WFWorkflowConflict *)v5 localWorkflowID];
      if ([v6 isEqual:v7])
      {
        v8 = [(WFWorkflowConflict *)self remoteWorkflowID];
        v9 = [(WFWorkflowConflict *)v5 remoteWorkflowID];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWorkflowConflict *)self localWorkflowID];
  v7 = [(WFWorkflowConflict *)self remoteWorkflowID];
  v8 = [v3 stringWithFormat:@"<%@ %p local: (%@) remote: (%@)>", v5, self, v6, v7];

  return v8;
}

@end