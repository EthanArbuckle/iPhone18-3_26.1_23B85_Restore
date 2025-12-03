@interface _UIDebugLogReportFormatter
- (id)_componentsFromReport:(id)report;
- (id)stringFromReport:(id)report;
@end

@implementation _UIDebugLogReportFormatter

- (id)_componentsFromReport:(id)report
{
  reportCopy = report;
  string = [MEMORY[0x1E696AD60] string];
  _statements = [reportCopy _statements];
  v6 = [_statements count];

  _statements2 = [reportCopy _statements];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___UIDebugLogReportFormatter__componentsFromReport___block_invoke;
  v12[3] = &unk_1E71088C0;
  v13 = reportCopy;
  v14 = string;
  v15 = v6;
  v8 = string;
  v9 = reportCopy;
  [_statements2 enumerateObjectsUsingBlock:v12];

  v10 = objc_alloc_init(_UIDebugReportComponents);
  [(_UIDebugReportComponents *)v10 setBody:v8];

  return v10;
}

- (id)stringFromReport:(id)report
{
  v4 = [(_UIDebugLogReportFormatter *)self _componentsFromReport:report];
  v5 = [(_UIDebugReportFormatter *)self stringFromReportComponents:v4];

  return v5;
}

@end