@interface SIRINLUSystemReportedSuccess
- (SIRINLUSystemReportedSuccess)init;
- (SIRINLUSystemReportedSuccess)initWithCoder:(id)coder;
- (SIRINLUSystemReportedSuccess)initWithTaskId:(id)id task:(id)task;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUSystemReportedSuccess

- (id)description
{
  task = [(SIRINLUSystemReportedSuccess *)self task];
  printedForm = [task printedForm];
  v5 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  taskId = [(SIRINLUSystemReportedSuccess *)self taskId];
  v8 = [v6 stringWithFormat:@"{SystemReportedSuccess\n  taskId: %@\n  task:\n%@\n}", taskId, v5];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  taskId = [(SIRINLUSystemReportedSuccess *)self taskId];
  [coderCopy encodeObject:taskId forKey:@"taskId"];

  task = [(SIRINLUSystemReportedSuccess *)self task];
  [coderCopy encodeObject:task forKey:@"task"];
}

- (SIRINLUSystemReportedSuccess)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SIRINLUSystemReportedSuccess;
  v5 = [(SIRINLUSystemReportedSuccess *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
    taskId = v5->_taskId;
    v5->_taskId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"task"];
    task = v5->_task;
    v5->_task = v8;
  }

  return v5;
}

- (SIRINLUSystemReportedSuccess)initWithTaskId:(id)id task:(id)task
{
  idCopy = id;
  taskCopy = task;
  v12.receiver = self;
  v12.super_class = SIRINLUSystemReportedSuccess;
  v9 = [(SIRINLUSystemReportedSuccess *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskId, id);
    objc_storeStrong(&v10->_task, task);
  }

  return v10;
}

- (SIRINLUSystemReportedSuccess)init
{
  v3.receiver = self;
  v3.super_class = SIRINLUSystemReportedSuccess;
  return [(SIRINLUSystemReportedSuccess *)&v3 init];
}

@end