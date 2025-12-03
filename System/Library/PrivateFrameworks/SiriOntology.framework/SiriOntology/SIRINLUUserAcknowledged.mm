@interface SIRINLUUserAcknowledged
- (SIRINLUUserAcknowledged)initWithCoder:(id)coder;
- (SIRINLUUserAcknowledged)initWithSystemDialogActId:(id)id reference:(id)reference;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUUserAcknowledged

- (id)description
{
  reference = [(SIRINLUUserAcknowledged *)self reference];
  printedForm = [reference printedForm];
  v5 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  systemDialogActId = [(SIRINLUUserAcknowledged *)self systemDialogActId];
  v8 = [v6 stringWithFormat:@"{UserAcknowledged\n  systemDialogActId: %@\n  reference:\n%@\n}", systemDialogActId, v5];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  systemDialogActId = [(SIRINLUUserAcknowledged *)self systemDialogActId];
  [coderCopy encodeObject:systemDialogActId forKey:@"systemDialogActId"];

  reference = [(SIRINLUUserAcknowledged *)self reference];
  [coderCopy encodeObject:reference forKey:@"reference"];
}

- (SIRINLUUserAcknowledged)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SIRINLUUserAcknowledged;
  v5 = [(SIRINLUUserAcknowledged *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemDialogActId"];
    systemDialogActId = v5->_systemDialogActId;
    v5->_systemDialogActId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reference"];
    reference = v5->_reference;
    v5->_reference = v8;
  }

  return v5;
}

- (SIRINLUUserAcknowledged)initWithSystemDialogActId:(id)id reference:(id)reference
{
  idCopy = id;
  referenceCopy = reference;
  v12.receiver = self;
  v12.super_class = SIRINLUUserAcknowledged;
  v9 = [(SIRINLUUserAcknowledged *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemDialogActId, id);
    objc_storeStrong(&v10->_reference, reference);
  }

  return v10;
}

@end