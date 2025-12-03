@interface SIRINLUSystemReportedFailure
- (SIRINLUSystemReportedFailure)init;
- (SIRINLUSystemReportedFailure)initWithCoder:(id)coder;
- (SIRINLUSystemReportedFailure)initWithTaskId:(id)id reason:(id)reason task:(id)task;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUSystemReportedFailure

- (id)description
{
  reason = [(SIRINLUSystemReportedFailure *)self reason];
  printedForm = [reason printedForm];
  v5 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  task = [(SIRINLUSystemReportedFailure *)self task];
  printedForm2 = [task printedForm];
  v8 = [SIRINLUPrintUtils indentLines:printedForm2 numSpaces:4];

  v9 = MEMORY[0x1E696AEC0];
  taskId = [(SIRINLUSystemReportedFailure *)self taskId];
  v11 = [v9 stringWithFormat:@"{SystemReportedFailure\n  taskId: %@\n  reason:\n%@\n  task:\n%@\n}", taskId, v5, v8];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  taskId = [(SIRINLUSystemReportedFailure *)self taskId];
  [coderCopy encodeObject:taskId forKey:@"taskId"];

  reason = [(SIRINLUSystemReportedFailure *)self reason];
  [coderCopy encodeObject:reason forKey:@"reason"];

  task = [(SIRINLUSystemReportedFailure *)self task];
  [coderCopy encodeObject:task forKey:@"task"];
}

- (SIRINLUSystemReportedFailure)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SIRINLUSystemReportedFailure;
  v5 = [(SIRINLUSystemReportedFailure *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
    taskId = v5->_taskId;
    v5->_taskId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"task"];
    task = v5->_task;
    v5->_task = v10;
  }

  return v5;
}

- (SIRINLUSystemReportedFailure)initWithTaskId:(id)id reason:(id)reason task:(id)task
{
  idCopy = id;
  reasonCopy = reason;
  taskCopy = task;
  v15.receiver = self;
  v15.super_class = SIRINLUSystemReportedFailure;
  v12 = [(SIRINLUSystemReportedFailure *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_taskId, id);
    objc_storeStrong(&v13->_reason, reason);
    objc_storeStrong(&v13->_task, task);
  }

  return v13;
}

- (SIRINLUSystemReportedFailure)init
{
  v3.receiver = self;
  v3.super_class = SIRINLUSystemReportedFailure;
  return [(SIRINLUSystemReportedFailure *)&v3 init];
}

@end