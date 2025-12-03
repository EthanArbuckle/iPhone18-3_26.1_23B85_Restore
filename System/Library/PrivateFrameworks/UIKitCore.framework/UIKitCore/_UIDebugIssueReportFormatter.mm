@interface _UIDebugIssueReportFormatter
- (NSString)defaultIssuePrefix;
- (_UIDebugIssueReportFormatter)init;
- (id)_componentsFromReport:(id)report;
- (id)stringFromReport:(id)report;
@end

@implementation _UIDebugIssueReportFormatter

- (_UIDebugIssueReportFormatter)init
{
  v8.receiver = self;
  v8.super_class = _UIDebugIssueReportFormatter;
  v2 = [(_UIDebugReportFormatter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    header = v2->_header;
    v2->_header = &stru_1EFB14550;

    footer = v3->_footer;
    v3->_footer = &stru_1EFB14550;

    noIssuesDescription = v3->_noIssuesDescription;
    v3->_noIssuesDescription = &stru_1EFB14550;
  }

  return v3;
}

- (NSString)defaultIssuePrefix
{
  defaultIssuePrefix = self->_defaultIssuePrefix;
  if (!defaultIssuePrefix)
  {
    self->_defaultIssuePrefix = @" - ISSUE: ";
    defaultIssuePrefix = self->_defaultIssuePrefix;
  }

  return defaultIssuePrefix;
}

- (id)_componentsFromReport:(id)report
{
  reportCopy = report;
  if (!reportCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugIssueReport.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"report"}];
  }

  issues = [reportCopy issues];
  v7 = [issues count];

  if (v7)
  {
    string = [MEMORY[0x1E696AD60] string];
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__86;
    v21[4] = __Block_byref_object_dispose__86;
    v22 = 0;
    issues2 = [reportCopy issues];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54___UIDebugIssueReportFormatter__componentsFromReport___block_invoke;
    v17[3] = &unk_1E7108850;
    v17[4] = self;
    v10 = string;
    v18 = v10;
    v19 = v21;
    v20 = v7;
    [issues2 enumerateObjectsUsingBlock:v17];

    v11 = objc_alloc_init(_UIDebugReportComponents);
    header = [(_UIDebugIssueReportFormatter *)self header];
    [(_UIDebugReportComponents *)v11 setHeader:header];

    footer = [(_UIDebugIssueReportFormatter *)self footer];
    [(_UIDebugReportComponents *)v11 setFooter:footer];

    [(_UIDebugReportComponents *)v11 setBody:v10];
    _Block_object_dispose(v21, 8);
  }

  else
  {
    v11 = objc_alloc_init(_UIDebugReportComponents);
    noIssuesDescription = [(_UIDebugIssueReportFormatter *)self noIssuesDescription];
    [(_UIDebugReportComponents *)v11 setBody:noIssuesDescription];
  }

  return v11;
}

- (id)stringFromReport:(id)report
{
  v4 = [(_UIDebugIssueReportFormatter *)self _componentsFromReport:report];
  v5 = [(_UIDebugReportFormatter *)self stringFromReportComponents:v4];

  return v5;
}

@end