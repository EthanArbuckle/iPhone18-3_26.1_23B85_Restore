@interface _UIDebugIssueReport
- (NSArray)issues;
- (_UIDebugIssueReport)init;
- (void)addIssue:(id)a3;
@end

@implementation _UIDebugIssueReport

- (_UIDebugIssueReport)init
{
  v6.receiver = self;
  v6.super_class = _UIDebugIssueReport;
  v2 = [(_UIDebugIssueReport *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableIssues = v2->_mutableIssues;
    v2->_mutableIssues = v3;
  }

  return v2;
}

- (NSArray)issues
{
  v2 = [(NSMutableArray *)self->_mutableIssues copy];

  return v2;
}

- (void)addIssue:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIDebugIssueReport.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"issue"}];

    v5 = 0;
  }

  [(NSMutableArray *)self->_mutableIssues addObject:v5];
}

@end