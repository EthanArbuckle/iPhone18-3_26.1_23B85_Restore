@interface SIRINLUUserWantedToRepeat
- (SIRINLUUserWantedToRepeat)initWithCoder:(id)a3;
- (SIRINLUUserWantedToRepeat)initWithSystemDialogActId:(id)a3 reference:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUUserWantedToRepeat

- (id)description
{
  v3 = [(SIRINLUUserWantedToRepeat *)self reference];
  v4 = [v3 printedForm];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SIRINLUUserWantedToRepeat *)self systemDialogActId];
  v8 = [v6 stringWithFormat:@"{UserWantedToRepeat\n  systemDialogActId: %@\n  reference:\n%@\n}", v7, v5];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUUserWantedToRepeat *)self systemDialogActId];
  [v4 encodeObject:v5 forKey:@"systemDialogActId"];

  v6 = [(SIRINLUUserWantedToRepeat *)self reference];
  [v4 encodeObject:v6 forKey:@"reference"];
}

- (SIRINLUUserWantedToRepeat)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SIRINLUUserWantedToRepeat;
  v5 = [(SIRINLUUserWantedToRepeat *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemDialogActId"];
    systemDialogActId = v5->_systemDialogActId;
    v5->_systemDialogActId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reference"];
    reference = v5->_reference;
    v5->_reference = v8;
  }

  return v5;
}

- (SIRINLUUserWantedToRepeat)initWithSystemDialogActId:(id)a3 reference:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SIRINLUUserWantedToRepeat;
  v9 = [(SIRINLUUserWantedToRepeat *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemDialogActId, a3);
    objc_storeStrong(&v10->_reference, a4);
  }

  return v10;
}

@end