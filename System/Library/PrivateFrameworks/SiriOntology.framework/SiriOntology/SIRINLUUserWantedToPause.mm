@interface SIRINLUUserWantedToPause
- (SIRINLUUserWantedToPause)initWithCoder:(id)coder;
- (SIRINLUUserWantedToPause)initWithReference:(id)reference;
- (SIRINLUUserWantedToPause)initWithTaskId:(id)id reference:(id)reference;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUUserWantedToPause

- (id)description
{
  reference = [(SIRINLUUserWantedToPause *)self reference];
  printedForm = [reference printedForm];
  v5 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  taskId = [(SIRINLUUserWantedToPause *)self taskId];
  v8 = [v6 stringWithFormat:@"{UserWantedToPause\n  taskId: %@\n  reference:\n%@\n}", taskId, v5];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  taskId = [(SIRINLUUserWantedToPause *)self taskId];
  [coderCopy encodeObject:taskId forKey:@"taskId"];

  reference = [(SIRINLUUserWantedToPause *)self reference];
  [coderCopy encodeObject:reference forKey:@"reference"];
}

- (SIRINLUUserWantedToPause)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SIRINLUUserWantedToPause;
  v5 = [(SIRINLUUserWantedToPause *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
    taskId = v5->_taskId;
    v5->_taskId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reference"];
    reference = v5->_reference;
    v5->_reference = v8;
  }

  return v5;
}

- (SIRINLUUserWantedToPause)initWithTaskId:(id)id reference:(id)reference
{
  idCopy = id;
  referenceCopy = reference;
  v12.receiver = self;
  v12.super_class = SIRINLUUserWantedToPause;
  v9 = [(SIRINLUUserWantedToPause *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskId, id);
    objc_storeStrong(&v10->_reference, reference);
  }

  return v10;
}

- (SIRINLUUserWantedToPause)initWithReference:(id)reference
{
  referenceCopy = reference;
  v9.receiver = self;
  v9.super_class = SIRINLUUserWantedToPause;
  v6 = [(SIRINLUUserWantedToPause *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reference, reference);
  }

  return v7;
}

@end