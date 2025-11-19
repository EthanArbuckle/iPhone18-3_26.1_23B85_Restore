@interface SIRINLUUserWantedToProceed
- (SIRINLUUserWantedToProceed)initWithCoder:(id)a3;
- (SIRINLUUserWantedToProceed)initWithReference:(id)a3;
- (SIRINLUUserWantedToProceed)initWithTaskId:(id)a3 reference:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUUserWantedToProceed

- (id)description
{
  v3 = [(SIRINLUUserWantedToProceed *)self reference];
  v4 = [v3 printedForm];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SIRINLUUserWantedToProceed *)self taskId];
  v8 = [v6 stringWithFormat:@"{UserWantedToProceed\n  taskId: %@\n  reference:\n%@\n}", v7, v5];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUUserWantedToProceed *)self taskId];
  [v4 encodeObject:v5 forKey:@"taskId"];

  v6 = [(SIRINLUUserWantedToProceed *)self reference];
  [v4 encodeObject:v6 forKey:@"reference"];
}

- (SIRINLUUserWantedToProceed)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLUUserWantedToProceed;
  v5 = [(SIRINLUUserWantedToProceed *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
    taskId = v5->_taskId;
    v5->_taskId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reference"];
    reference = v5->_reference;
    v5->_reference = v8;
  }

  return v5;
}

- (SIRINLUUserWantedToProceed)initWithTaskId:(id)a3 reference:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SIRINLUUserWantedToProceed;
  v9 = [(SIRINLUUserWantedToProceed *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskId, a3);
    objc_storeStrong(&v10->_reference, a4);
  }

  return v10;
}

- (SIRINLUUserWantedToProceed)initWithReference:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUUserWantedToProceed;
  v6 = [(SIRINLUUserWantedToProceed *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reference, a3);
  }

  return v7;
}

@end