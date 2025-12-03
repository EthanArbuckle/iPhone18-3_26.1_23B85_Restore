@interface _UIDebugIssue
+ (id)issueWithDescription:(id)description;
+ (id)issueWithFormat:(id)format;
- (_UIDebugIssue)init;
- (void)addIssue:(id)issue;
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

+ (id)issueWithDescription:(id)description
{
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugIssueReport.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"description"}];
  }

  v6 = objc_alloc_init(_UIDebugIssue);
  [(_UIDebugIssue *)v6 setDescription:descriptionCopy];

  return v6;
}

+ (id)issueWithFormat:(id)format
{
  formatCopy = format;
  if (!formatCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugIssueReport.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"descriptionFormat"}];
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:formatCopy arguments:&v11];
  v7 = [self issueWithDescription:v6];

  return v7;
}

- (void)addIssue:(id)issue
{
  issueCopy = issue;
  v7 = issueCopy;
  if (!issueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugIssueReport.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"issue"}];

    issueCopy = 0;
  }

  [(_UIDebugIssueReport *)self->_subissueReport addIssue:issueCopy];
}

@end