@interface SIRINLUSystemPrompted
- (SIRINLUSystemPrompted)initWithCoder:(id)coder;
- (SIRINLUSystemPrompted)initWithReference:(id)reference;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUSystemPrompted

- (id)description
{
  reference = [(SIRINLUSystemPrompted *)self reference];
  printedForm = [reference printedForm];
  v5 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  renderedText = [(SIRINLUSystemPrompted *)self renderedText];
  v8 = [v6 stringWithFormat:@"{SystemPrompted\n  reference:\n%@\n  renderedText: %@\n}", v5, renderedText];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  reference = [(SIRINLUSystemPrompted *)self reference];
  [coderCopy encodeObject:reference forKey:@"reference"];

  renderedText = [(SIRINLUSystemPrompted *)self renderedText];
  [coderCopy encodeObject:renderedText forKey:@"renderedText"];
}

- (SIRINLUSystemPrompted)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SIRINLUSystemPrompted;
  v5 = [(SIRINLUSystemPrompted *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reference"];
    reference = v5->_reference;
    v5->_reference = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"renderedText"];
    renderedText = v5->renderedText;
    v5->renderedText = v8;
  }

  return v5;
}

- (SIRINLUSystemPrompted)initWithReference:(id)reference
{
  referenceCopy = reference;
  v9.receiver = self;
  v9.super_class = SIRINLUSystemPrompted;
  v6 = [(SIRINLUSystemPrompted *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reference, reference);
  }

  return v7;
}

@end