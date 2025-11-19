@interface SIRINLUSystemGaveOptions
- (SIRINLUSystemGaveOptions)initWithChoices:(id)a3;
- (SIRINLUSystemGaveOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUSystemGaveOptions

- (id)description
{
  v3 = [(SIRINLUSystemGaveOptions *)self choices];
  v4 = [SIRINLUPrintUtils indentArray:v3 numSpaces:4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(SIRINLUSystemGaveOptions *)self renderedText];
  v7 = [v5 stringWithFormat:@"{SystemGaveOptions\n  choices:\n%@\n  renderedText: %@\n}", v4, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUSystemGaveOptions *)self choices];
  [v4 encodeObject:v5 forKey:@"choices"];

  v6 = [(SIRINLUSystemGaveOptions *)self renderedText];
  [v4 encodeObject:v6 forKey:@"renderedText"];
}

- (SIRINLUSystemGaveOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SIRINLUSystemGaveOptions;
  v5 = [(SIRINLUSystemGaveOptions *)&v23 init];
  if (v5)
  {
    v22 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v22 setWithObjects:{v21, v20, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"choices"];
    choices = v5->_choices;
    v5->_choices = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"renderedText"];
    renderedText = v5->renderedText;
    v5->renderedText = v17;
  }

  return v5;
}

- (SIRINLUSystemGaveOptions)initWithChoices:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUSystemGaveOptions;
  v6 = [(SIRINLUSystemGaveOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_choices, a3);
  }

  return v7;
}

@end