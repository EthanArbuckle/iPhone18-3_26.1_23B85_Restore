@interface SIRINLUUserWantedToPause
- (SIRINLUUserWantedToPause)initWithCoder:(id)a3;
- (SIRINLUUserWantedToPause)initWithReference:(id)a3;
- (SIRINLUUserWantedToPause)initWithTaskId:(id)a3 reference:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUUserWantedToPause

- (id)description
{
  v3 = [(SIRINLUUserWantedToPause *)self reference];
  v4 = [v3 printedForm];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SIRINLUUserWantedToPause *)self taskId];
  v8 = [v6 stringWithFormat:@"{UserWantedToPause\n  taskId: %@\n  reference:\n%@\n}", v7, v5];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUUserWantedToPause *)self taskId];
  [v4 encodeObject:v5 forKey:@"taskId"];

  v6 = [(SIRINLUUserWantedToPause *)self reference];
  [v4 encodeObject:v6 forKey:@"reference"];
}

- (SIRINLUUserWantedToPause)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLUUserWantedToPause;
  v5 = [(SIRINLUUserWantedToPause *)&v11 init];
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

- (SIRINLUUserWantedToPause)initWithTaskId:(id)a3 reference:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SIRINLUUserWantedToPause;
  v9 = [(SIRINLUUserWantedToPause *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskId, a3);
    objc_storeStrong(&v10->_reference, a4);
  }

  return v10;
}

- (SIRINLUUserWantedToPause)initWithReference:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUUserWantedToPause;
  v6 = [(SIRINLUUserWantedToPause *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reference, a3);
  }

  return v7;
}

@end