@interface SIRINLUTask
- (SIRINLUTask)initWithCoder:(id)coder;
- (SIRINLUTask)initWithTask:(id)task score:(double)score;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUTask

- (id)description
{
  printedForm = [(USOSerializedGraph *)self->_task printedForm];
  v4 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{Task\n  task:\n%@\n  score: %f\n}", v4, *&self->_score];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  task = [(SIRINLUTask *)self task];
  [coderCopy encodeObject:task forKey:@"task"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [coderCopy encodeObject:v6 forKey:@"score"];
}

- (SIRINLUTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SIRINLUTask;
  v5 = [(SIRINLUTask *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"task"];
    task = v5->_task;
    v5->_task = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    [v8 doubleValue];
    v5->_score = v9;
  }

  return v5;
}

- (SIRINLUTask)initWithTask:(id)task score:(double)score
{
  taskCopy = task;
  v11.receiver = self;
  v11.super_class = SIRINLUTask;
  v8 = [(SIRINLUTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_task, task);
    v9->_score = score;
  }

  return v9;
}

@end