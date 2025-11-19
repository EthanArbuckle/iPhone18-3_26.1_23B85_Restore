@interface SIRINLUTask
- (SIRINLUTask)initWithCoder:(id)a3;
- (SIRINLUTask)initWithTask:(id)a3 score:(double)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUTask

- (id)description
{
  v3 = [(USOSerializedGraph *)self->_task printedForm];
  v4 = [SIRINLUPrintUtils indentLines:v3 numSpaces:4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{Task\n  task:\n%@\n  score: %f\n}", v4, *&self->_score];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUTask *)self task];
  [v4 encodeObject:v5 forKey:@"task"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [v4 encodeObject:v6 forKey:@"score"];
}

- (SIRINLUTask)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLUTask;
  v5 = [(SIRINLUTask *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"task"];
    task = v5->_task;
    v5->_task = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    [v8 doubleValue];
    v5->_score = v9;
  }

  return v5;
}

- (SIRINLUTask)initWithTask:(id)a3 score:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLUTask;
  v8 = [(SIRINLUTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_task, a3);
    v9->_score = a4;
  }

  return v9;
}

@end