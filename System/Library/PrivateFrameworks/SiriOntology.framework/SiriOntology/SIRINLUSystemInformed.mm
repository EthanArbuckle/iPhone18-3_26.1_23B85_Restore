@interface SIRINLUSystemInformed
- (SIRINLUSystemInformed)initWithCoder:(id)coder;
- (SIRINLUSystemInformed)initWithEntities:(id)entities;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUSystemInformed

- (id)description
{
  entities = [(SIRINLUSystemInformed *)self entities];
  v4 = [SIRINLUPrintUtils indentArray:entities numSpaces:4];

  v5 = MEMORY[0x1E696AEC0];
  renderedText = [(SIRINLUSystemInformed *)self renderedText];
  v7 = [v5 stringWithFormat:@"{SystemInformed\n  entities:\n%@\n  renderedText: %@\n}", v4, renderedText];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entities = [(SIRINLUSystemInformed *)self entities];
  [coderCopy encodeObject:entities forKey:@"entities"];

  renderedText = [(SIRINLUSystemInformed *)self renderedText];
  [coderCopy encodeObject:renderedText forKey:@"renderedText"];
}

- (SIRINLUSystemInformed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SIRINLUSystemInformed;
  v5 = [(SIRINLUSystemInformed *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"entities"];
    entities = v5->_entities;
    v5->_entities = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"renderedText"];
    renderedText = v5->renderedText;
    v5->renderedText = v11;
  }

  return v5;
}

- (SIRINLUSystemInformed)initWithEntities:(id)entities
{
  entitiesCopy = entities;
  v9.receiver = self;
  v9.super_class = SIRINLUSystemInformed;
  v6 = [(SIRINLUSystemInformed *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entities, entities);
  }

  return v7;
}

@end