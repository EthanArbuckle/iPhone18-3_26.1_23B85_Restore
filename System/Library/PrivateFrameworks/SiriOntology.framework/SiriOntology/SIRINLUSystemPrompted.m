@interface SIRINLUSystemPrompted
- (SIRINLUSystemPrompted)initWithCoder:(id)a3;
- (SIRINLUSystemPrompted)initWithReference:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUSystemPrompted

- (id)description
{
  v3 = [(SIRINLUSystemPrompted *)self reference];
  v4 = [v3 printedForm];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SIRINLUSystemPrompted *)self renderedText];
  v8 = [v6 stringWithFormat:@"{SystemPrompted\n  reference:\n%@\n  renderedText: %@\n}", v5, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUSystemPrompted *)self reference];
  [v4 encodeObject:v5 forKey:@"reference"];

  v6 = [(SIRINLUSystemPrompted *)self renderedText];
  [v4 encodeObject:v6 forKey:@"renderedText"];
}

- (SIRINLUSystemPrompted)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLUSystemPrompted;
  v5 = [(SIRINLUSystemPrompted *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reference"];
    reference = v5->_reference;
    v5->_reference = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"renderedText"];
    renderedText = v5->renderedText;
    v5->renderedText = v8;
  }

  return v5;
}

- (SIRINLUSystemPrompted)initWithReference:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUSystemPrompted;
  v6 = [(SIRINLUSystemPrompted *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reference, a3);
  }

  return v7;
}

@end