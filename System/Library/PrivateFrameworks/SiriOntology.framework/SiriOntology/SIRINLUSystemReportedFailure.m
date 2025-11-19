@interface SIRINLUSystemReportedFailure
- (SIRINLUSystemReportedFailure)init;
- (SIRINLUSystemReportedFailure)initWithCoder:(id)a3;
- (SIRINLUSystemReportedFailure)initWithTaskId:(id)a3 reason:(id)a4 task:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUSystemReportedFailure

- (id)description
{
  v3 = [(SIRINLUSystemReportedFailure *)self reason];
  v4 = [v3 printedForm];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = [(SIRINLUSystemReportedFailure *)self task];
  v7 = [v6 printedForm];
  v8 = [SIRINLUPrintUtils indentLines:v7 numSpaces:4];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(SIRINLUSystemReportedFailure *)self taskId];
  v11 = [v9 stringWithFormat:@"{SystemReportedFailure\n  taskId: %@\n  reason:\n%@\n  task:\n%@\n}", v10, v5, v8];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUSystemReportedFailure *)self taskId];
  [v4 encodeObject:v5 forKey:@"taskId"];

  v6 = [(SIRINLUSystemReportedFailure *)self reason];
  [v4 encodeObject:v6 forKey:@"reason"];

  v7 = [(SIRINLUSystemReportedFailure *)self task];
  [v4 encodeObject:v7 forKey:@"task"];
}

- (SIRINLUSystemReportedFailure)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SIRINLUSystemReportedFailure;
  v5 = [(SIRINLUSystemReportedFailure *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
    taskId = v5->_taskId;
    v5->_taskId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"task"];
    task = v5->_task;
    v5->_task = v10;
  }

  return v5;
}

- (SIRINLUSystemReportedFailure)initWithTaskId:(id)a3 reason:(id)a4 task:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SIRINLUSystemReportedFailure;
  v12 = [(SIRINLUSystemReportedFailure *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_taskId, a3);
    objc_storeStrong(&v13->_reason, a4);
    objc_storeStrong(&v13->_task, a5);
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