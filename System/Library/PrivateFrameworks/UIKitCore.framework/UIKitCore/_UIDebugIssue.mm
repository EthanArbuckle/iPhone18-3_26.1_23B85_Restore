@interface _UIDebugIssue
+ (id)issueWithDescription:(id)a3;
+ (id)issueWithFormat:(id)a3;
- (_UIDebugIssue)init;
- (void)addIssue:(id)a3;
@end

@implementation _UIDebugIssue

- (_UIDebugIssue)init
{
  v8.receiver = self;
  v8.super_class = _UIDebugIssue;
  v2 = [(_UIDebugIssue *)&v8 init];
  v3 = v2;
  if (v2)
  {
    description = v2->_description;
    v2->_description = &stru_1EFB14550;

    v5 = objc_alloc_init(_UIDebugIssueReport);
    subissueReport = v3->_subissueReport;
    v3->_subissueReport = v5;
  }

  return v3;
}

+ (id)issueWithDescription:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"_UIDebugIssueReport.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"description"}];
  }

  v6 = objc_alloc_init(_UIDebugIssue);
  [(_UIDebugIssue *)v6 setDescription:v5];

  return v6;
}

+ (id)issueWithFormat:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"_UIDebugIssueReport.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"descriptionFormat"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v5 arguments:&v11];
  v7 = [a1 issueWithDescription:v6];

  return v7;
}

- (void)addIssue:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIDebugIssueReport.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"issue"}];

    v5 = 0;
  }

  [(_UIDebugIssueReport *)self->_subissueReport addIssue:v5];
}

@end