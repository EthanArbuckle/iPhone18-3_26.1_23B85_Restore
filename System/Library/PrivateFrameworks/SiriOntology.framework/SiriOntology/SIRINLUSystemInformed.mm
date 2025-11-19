@interface SIRINLUSystemInformed
- (SIRINLUSystemInformed)initWithCoder:(id)a3;
- (SIRINLUSystemInformed)initWithEntities:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUSystemInformed

- (id)description
{
  v3 = [(SIRINLUSystemInformed *)self entities];
  v4 = [SIRINLUPrintUtils indentArray:v3 numSpaces:4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(SIRINLUSystemInformed *)self renderedText];
  v7 = [v5 stringWithFormat:@"{SystemInformed\n  entities:\n%@\n  renderedText: %@\n}", v4, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUSystemInformed *)self entities];
  [v4 encodeObject:v5 forKey:@"entities"];

  v6 = [(SIRINLUSystemInformed *)self renderedText];
  [v4 encodeObject:v6 forKey:@"renderedText"];
}

- (SIRINLUSystemInformed)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SIRINLUSystemInformed;
  v5 = [(SIRINLUSystemInformed *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"entities"];
    entities = v5->_entities;
    v5->_entities = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"renderedText"];
    renderedText = v5->renderedText;
    v5->renderedText = v11;
  }

  return v5;
}

- (SIRINLUSystemInformed)initWithEntities:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SIRINLUSystemInformed;
  v6 = [(SIRINLUSystemInformed *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entities, a3);
  }

  return v7;
}

@end