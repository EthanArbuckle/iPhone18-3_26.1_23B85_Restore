@interface SIRINLUUserCancelled
- (SIRINLUUserCancelled)initWithCoder:(id)coder;
- (SIRINLUUserCancelled)initWithReference:(id)reference;
- (SIRINLUUserCancelled)initWithTaskId:(id)id reference:(id)reference;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUUserCancelled

- (id)description
{
  reference = [(SIRINLUUserCancelled *)self reference];
  printedForm = [reference printedForm];
  v5 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  taskId = [(SIRINLUUserCancelled *)self taskId];
  v8 = [v6 stringWithFormat:@"{UserCancelled\n  taskId: %@\n  reference:\n%@\n}", taskId, v5];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  taskId = [(SIRINLUUserCancelled *)self taskId];
  [coderCopy encodeObject:taskId forKey:@"taskId"];

  reference = [(SIRINLUUserCancelled *)self reference];
  [coderCopy encodeObject:reference forKey:@"reference"];
}

- (SIRINLUUserCancelled)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SIRINLUUserCancelled;
  v5 = [(SIRINLUUserCancelled *)&v11 init];
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

- (SIRINLUUserCancelled)initWithTaskId:(id)id reference:(id)reference
{
  idCopy = id;
  referenceCopy = reference;
  v12.receiver = self;
  v12.super_class = SIRINLUUserCancelled;
  v9 = [(SIRINLUUserCancelled *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskId, id);
    objc_storeStrong(&v10->_reference, reference);
  }

  return v10;
}

- (SIRINLUUserCancelled)initWithReference:(id)reference
{
  referenceCopy = reference;
  v9.receiver = self;
  v9.super_class = SIRINLUUserCancelled;
  v6 = [(SIRINLUUserCancelled *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reference, reference);
  }

  return v7;
}

@end