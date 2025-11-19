@interface SIRINLUUserRejected
- (SIRINLUUserRejected)init;
- (SIRINLUUserRejected)initWithCoder:(id)a3;
- (SIRINLUUserRejected)initWithOfferId:(id)a3 reference:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUUserRejected

- (id)description
{
  v3 = [(SIRINLUUserRejected *)self reference];
  v4 = [v3 printedForm];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SIRINLUUserRejected *)self offerId];
  v8 = [v6 stringWithFormat:@"{UserRejected\n  offerId: %@\n  reference:\n%@\n}", v7, v5];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUUserRejected *)self offerId];
  [v4 encodeObject:v5 forKey:@"offerId"];

  v6 = [(SIRINLUUserRejected *)self reference];
  [v4 encodeObject:v6 forKey:@"reference"];
}

- (SIRINLUUserRejected)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLUUserRejected;
  v5 = [(SIRINLUUserRejected *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offerId"];
    offerId = v5->_offerId;
    v5->_offerId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reference"];
    reference = v5->_reference;
    v5->_reference = v8;
  }

  return v5;
}

- (SIRINLUUserRejected)initWithOfferId:(id)a3 reference:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SIRINLUUserRejected;
  v9 = [(SIRINLUUserRejected *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_offerId, a3);
    objc_storeStrong(&v10->_reference, a4);
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