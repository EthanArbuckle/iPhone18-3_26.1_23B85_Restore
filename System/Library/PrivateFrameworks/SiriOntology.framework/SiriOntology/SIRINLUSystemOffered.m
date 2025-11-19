@interface SIRINLUSystemOffered
- (SIRINLUSystemOffered)initWithCoder:(id)a3;
- (SIRINLUSystemOffered)initWithOfferedAct:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUSystemOffered

- (id)description
{
  v3 = [(SIRINLUSystemOffered *)self offeredAct];
  v4 = [v3 description];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(SIRINLUSystemOffered *)self renderedText];
  v8 = [v6 stringWithFormat:@"{SystemOffered\n  offeredAct:\n%@  renderedText: %@\n}", v5, v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUSystemOffered *)self offeredAct];
  [v4 encodeObject:v5 forKey:@"offeredAct"];

  v6 = [(SIRINLUSystemOffered *)self renderedText];
  [v4 encodeObject:v6 forKey:@"renderedText"];
}

- (SIRINLUSystemOffered)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SIRINLUSystemOffered;
  v5 = [(SIRINLUSystemOffered *)&v21 init];
  if (v5)
  {
    v20 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v20 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"offeredAct"];
    offeredAct = v5->_offeredAct;
    v5->_offeredAct = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"renderedText"];
    renderedText = v5->renderedText;
    v5->renderedText = v17;
  }

  return v5;
}

- (SIRINLUSystemOffered)initWithOfferedAct:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUSystemOffered;
  v6 = [(SIRINLUSystemOffered *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_offeredAct, a3);
  }

  return v7;
}

@end