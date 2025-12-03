@interface SIRINLUUserRejected
- (SIRINLUUserRejected)init;
- (SIRINLUUserRejected)initWithCoder:(id)coder;
- (SIRINLUUserRejected)initWithOfferId:(id)id reference:(id)reference;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUUserRejected

- (id)description
{
  reference = [(SIRINLUUserRejected *)self reference];
  printedForm = [reference printedForm];
  v5 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  offerId = [(SIRINLUUserRejected *)self offerId];
  v8 = [v6 stringWithFormat:@"{UserRejected\n  offerId: %@\n  reference:\n%@\n}", offerId, v5];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  offerId = [(SIRINLUUserRejected *)self offerId];
  [coderCopy encodeObject:offerId forKey:@"offerId"];

  reference = [(SIRINLUUserRejected *)self reference];
  [coderCopy encodeObject:reference forKey:@"reference"];
}

- (SIRINLUUserRejected)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SIRINLUUserRejected;
  v5 = [(SIRINLUUserRejected *)&v11 init];
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

- (SIRINLUUserRejected)initWithOfferId:(id)id reference:(id)reference
{
  idCopy = id;
  referenceCopy = reference;
  v12.receiver = self;
  v12.super_class = SIRINLUUserRejected;
  v9 = [(SIRINLUUserRejected *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_offerId, id);
    objc_storeStrong(&v10->_reference, reference);
  }

  return v10;
}

- (SIRINLUUserRejected)init
{
  v3.receiver = self;
  v3.super_class = SIRINLUUserRejected;
  return [(SIRINLUUserRejected *)&v3 init];
}

@end