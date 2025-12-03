@interface _UIFocusUpdateReportFormatter
- (id)_bodyForReport:(id)report;
- (id)_componentsFromReport:(id)report;
- (id)_headerForReport:(id)report;
- (id)stringFromReport:(id)report;
@end

@implementation _UIFocusUpdateReportFormatter

- (id)_componentsFromReport:(id)report
{
  reportCopy = report;
  if (!reportCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateReport.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"report"}];
  }

  v6 = objc_alloc_init(_UIDebugReportComponents);
  v7 = [(_UIFocusUpdateReportFormatter *)self _headerForReport:reportCopy];
  [(_UIDebugReportComponents *)v6 setHeader:v7];

  v8 = [(_UIFocusUpdateReportFormatter *)self _bodyForReport:reportCopy];
  [(_UIDebugReportComponents *)v6 setBody:v8];

  return v6;
}

- (id)stringFromReport:(id)report
{
  reportCopy = report;
  if (!reportCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusUpdateReport.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"report"}];
  }

  v6 = [(_UIFocusUpdateReportFormatter *)self _componentsFromReport:reportCopy];
  v7 = [(_UIDebugReportFormatter *)self stringFromReportComponents:v6];

  return v7;
}

- (id)_headerForReport:(id)report
{
  v3 = MEMORY[0x1E696AD60];
  reportCopy = report;
  string = [v3 string];
  focusSystem = [reportCopy focusSystem];
  context = [reportCopy context];

  _focusMovement = [context _focusMovement];

  v9 = [context _isValidInFocusSystem:focusSystem];
  v10 = @"Moving focus";
  if (!_focusMovement)
  {
    v10 = @"Updating focus";
  }

  v11 = @"Focus failed to update";
  if (_focusMovement)
  {
    v11 = @"Focus failed to move";
  }

  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  [string appendString:v12];
  previouslyFocusedItem = [context previouslyFocusedItem];
  if (previouslyFocusedItem)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"<%@: %p>", v16, previouslyFocusedItem];

    [string appendFormat:@" from %@", v17];
  }

  else if (_focusMovement)
  {
    [string appendString:@" from offscreen"];
  }

  nextFocusedItem = [context nextFocusedItem];
  if (nextFocusedItem)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"<%@: %p>", v21, nextFocusedItem];

    [string appendFormat:@" to %@", v22];
  }

  if (focusSystem)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = focusSystem;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v23 stringWithFormat:@"<%@: %p>", v26, v24];

    [string appendFormat:@" in focus system %@", v27];
  }

  [string appendString:@"."];

  return string;
}

- (id)_bodyForReport:(id)report
{
  reportCopy = report;
  string = [MEMORY[0x1E696AD60] string];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48___UIFocusUpdateReportFormatter__bodyForReport___block_invoke;
  aBlock[3] = &unk_1E70FE3F8;
  v5 = string;
  v23 = v5;
  v24 = v25;
  v6 = _Block_copy(aBlock);
  focusSystem = [reportCopy focusSystem];
  context = [reportCopy context];
  _validationReport = [context _validationReport];
  v10 = [context _isValidInFocusSystem:focusSystem];
  if (_validationReport)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    issues = [_validationReport issues];
    v13 = [issues count];

    if (v13)
    {
      v14 = +[(_UIDebugReportFormatter *)_UIDebugIssueReportFormatter];
      [v14 setHeader:@"The following issues were found that prevented this update from occurring:"];
      v6[2](v6);
      v15 = [v14 stringFromReport:_validationReport];
      [v5 appendString:v15];
    }
  }

  _preferredFocusReport = [context _preferredFocusReport];
  v17 = _preferredFocusReport;
  if (_preferredFocusReport && [_preferredFocusReport messageCount])
  {
    v18 = +[(_UIDebugReportFormatter *)_UIDebugLogReportFormatter];
    [v18 setIndentLevel:1];
    [v18 setIndentString:@"|\t"];
    v6[2](v6);
    v19 = [v18 stringFromReport:v17];
    [v5 appendFormat:@"The result of the focus update was determined from the following preferred focus search:\n|\n%@\n|", v19];
  }

  v20 = v5;

  _Block_object_dispose(v25, 8);

  return v20;
}

@end