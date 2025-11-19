@interface SIRINLUUserStatedTask
- (SIRINLUUserStatedTask)initWithCoder:(id)a3;
- (SIRINLUUserStatedTask)initWithGoal:(id)a3;
- (SIRINLUUserStatedTask)initWithTask:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUUserStatedTask

- (id)description
{
  v2 = [(SIRINLUUserStatedTask *)self task];
  v3 = [v2 printedForm];
  v4 = [SIRINLUPrintUtils indentLines:v3 numSpaces:4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{UserStatedTask\n  task:\n%@\n}", v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUUserStatedTask *)self task];
  [v4 encodeObject:v5 forKey:@"task"];
}

- (SIRINLUUserStatedTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUUserStatedTask;
  v5 = [(SIRINLUUserStatedTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"task"];
    task = v5->_task;
    v5->_task = v6;

    objc_storeStrong(&v5->_goal, v5->_task);
  }

  return v5;
}

- (SIRINLUUserStatedTask)initWithGoal:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUUserStatedTask;
  v6 = [(SIRINLUUserStatedTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
    objc_storeStrong(&v7->_goal, a3);
  }

  return v7;
}

- (SIRINLUUserStatedTask)initWithTask:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUUserStatedTask;
  v6 = [(SIRINLUUserStatedTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
    objc_storeStrong(&v7->_goal, a3);
  }

  return v7;
}

@end