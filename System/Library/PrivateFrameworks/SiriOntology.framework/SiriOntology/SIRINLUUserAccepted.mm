@interface SIRINLUUserAccepted
- (SIRINLUUserAccepted)init;
- (SIRINLUUserAccepted)initWithCoder:(id)coder;
- (SIRINLUUserAccepted)initWithOfferId:(id)id reference:(id)reference;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUUserAccepted

- (id)description
{
  reference = [(SIRINLUUserAccepted *)self reference];
  printedForm = [reference printedForm];
  v5 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  offerId = [(SIRINLUUserAccepted *)self offerId];
  v8 = [v6 stringWithFormat:@"{UserAccepted\n  offerId: %@\n  reference:\n%@\n}", offerId, v5];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  offerId = [(SIRINLUUserAccepted *)self offerId];
  [coderCopy encodeObject:offerId forKey:@"offerId"];

  reference = [(SIRINLUUserAccepted *)self reference];
  [coderCopy encodeObject:reference forKey:@"reference"];
}

- (SIRINLUUserAccepted)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SIRINLUUserAccepted;
  v5 = [(SIRINLUUserAccepted *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"offerId"];
    offerId = v5->_offerId;
    v5->_offerId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reference"];
    reference = v5->_reference;
    v5->_reference = v8;
  }

  return v5;
}

- (SIRINLUUserAccepted)initWithOfferId:(id)id reference:(id)reference
{
  idCopy = id;
  referenceCopy = reference;
  v12.receiver = self;
  v12.super_class = SIRINLUUserAccepted;
  v9 = [(SIRINLUUserAccepted *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_offerId, id);
    objc_storeStrong(&v10->_reference, reference);
  }

  return v10;
}

- (SIRINLUUserAccepted)init
{
  v3.receiver = self;
  v3.super_class = SIRINLUUserAccepted;
  return [(SIRINLUUserAccepted *)&v3 init];
}

@end