@interface SIRINLUUserStatedTask
- (SIRINLUUserStatedTask)initWithCoder:(id)coder;
- (SIRINLUUserStatedTask)initWithGoal:(id)goal;
- (SIRINLUUserStatedTask)initWithTask:(id)task;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUUserStatedTask

- (id)description
{
  task = [(SIRINLUUserStatedTask *)self task];
  printedForm = [task printedForm];
  v4 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{UserStatedTask\n  task:\n%@\n}", v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  task = [(SIRINLUUserStatedTask *)self task];
  [coderCopy encodeObject:task forKey:@"task"];
}

- (SIRINLUUserStatedTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SIRINLUUserStatedTask;
  v5 = [(SIRINLUUserStatedTask *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"task"];
    task = v5->_task;
    v5->_task = v6;

    objc_storeStrong(&v5->_goal, v5->_task);
  }

  return v5;
}

- (SIRINLUUserStatedTask)initWithGoal:(id)goal
{
  goalCopy = goal;
  v9.receiver = self;
  v9.super_class = SIRINLUUserStatedTask;
  v6 = [(SIRINLUUserStatedTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, goal);
    objc_storeStrong(&v7->_goal, goal);
  }

  return v7;
}

- (SIRINLUUserStatedTask)initWithTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = SIRINLUUserStatedTask;
  v6 = [(SIRINLUUserStatedTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, task);
    objc_storeStrong(&v7->_goal, task);
  }

  return v7;
}

@end