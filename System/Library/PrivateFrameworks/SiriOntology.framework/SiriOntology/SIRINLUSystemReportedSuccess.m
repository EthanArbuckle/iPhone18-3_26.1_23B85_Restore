@interface SIRINLUSystemReportedSuccess
- (SIRINLUSystemReportedSuccess)init;
- (SIRINLUSystemReportedSuccess)initWithCoder:(id)a3;
- (SIRINLUSystemReportedSuccess)initWithTaskId:(id)a3 task:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUSystemReportedSuccess

- (id)description
{
  v3 = [(SIRINLUSystemReportedSuccess *)self task];
  v4 = [v3 printedForm];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SIRINLUSystemReportedSuccess *)self taskId];
  v8 = [v6 stringWithFormat:@"{SystemReportedSuccess\n  taskId: %@\n  task:\n%@\n}", v7, v5];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUSystemReportedSuccess *)self taskId];
  [v4 encodeObject:v5 forKey:@"taskId"];

  v6 = [(SIRINLUSystemReportedSuccess *)self task];
  [v4 encodeObject:v6 forKey:@"task"];
}

- (SIRINLUSystemReportedSuccess)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLUSystemReportedSuccess;
  v5 = [(SIRINLUSystemReportedSuccess *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
    taskId = v5->_taskId;
    v5->_taskId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"task"];
    task = v5->_task;
    v5->_task = v8;
  }

  return v5;
}

- (SIRINLUSystemReportedSuccess)initWithTaskId:(id)a3 task:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SIRINLUSystemReportedSuccess;
  v9 = [(SIRINLUSystemReportedSuccess *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskId, a3);
    objc_storeStrong(&v10->_task, a4);
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