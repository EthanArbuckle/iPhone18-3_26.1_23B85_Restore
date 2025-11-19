@interface SIRINLUSpan
- (SIRINLUSpan)initWithCoder:(id)a3;
- (SIRINLUSpan)initWithLabel:(id)a3 input:(id)a4 startTokenIndex:(unsigned int)a5 endTokenIndex:(unsigned int)a6 usoGraph:(id)a7 score:(double)a8 matcherNames:(id)a9;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUSpan

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SIRINLUSpan *)self label];
  v5 = [(SIRINLUSpan *)self input];
  v6 = [(SIRINLUSpan *)self startTokenIndex];
  v7 = [(SIRINLUSpan *)self endTokenIndex];
  v8 = [(SIRINLUSpan *)self usoGraph];
  v9 = [v8 printedForm];
  v10 = [SIRINLUPrintUtils indentLines:v9 numSpaces:4];
  [(SIRINLUSpan *)self score];
  v12 = v11;
  v13 = [(SIRINLUSpan *)self matcherNames];
  v14 = [SIRINLUPrintUtils indentArray:v13 numSpaces:4];
  v15 = [v3 stringWithFormat:@"{Span\n  label: \n%@\n  input: \n%@\n  startTokenIndex: \n%u\n  endTokenIndex: \n%u\n  usoGraph:\n%@\n  score: %f\n  matcherNamees: \n%@\n}", v4, v5, v6, v7, v10, v12, v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUSpan *)self label];
  [v4 encodeObject:v5 forKey:@"label"];

  v6 = [(SIRINLUSpan *)self input];
  [v4 encodeObject:v6 forKey:@"input"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_startTokenIndex];
  [v4 encodeObject:v11 forKey:@"startTokenIndex"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endTokenIndex];
  [v4 encodeObject:v7 forKey:@"endTokenIndex"];
  v8 = [(SIRINLUSpan *)self usoGraph];
  [v4 encodeObject:v8 forKey:@"usoGraph"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [v4 encodeObject:v9 forKey:@"score"];
  v10 = [(SIRINLUSpan *)self matcherNames];
  [v4 encodeObject:v10 forKey:@"matcherNames"];
}

- (SIRINLUSpan)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SIRINLUSpan;
  v5 = [(SIRINLUSpan *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    input = v5->_input;
    v5->_input = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTokenIndex"];
    v5->_startTokenIndex = [v10 unsignedIntValue];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTokenIndex"];
    v5->_endTokenIndex = [v11 unsignedIntValue];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usoGraph"];
    usoGraph = v5->_usoGraph;
    v5->_usoGraph = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    [v14 doubleValue];
    v5->_score = v15;
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"matcherNames"];
    matcherNames = v5->_matcherNames;
    v5->_matcherNames = v19;
  }

  return v5;
}

- (SIRINLUSpan)initWithLabel:(id)a3 input:(id)a4 startTokenIndex:(unsigned int)a5 endTokenIndex:(unsigned int)a6 usoGraph:(id)a7 score:(double)a8 matcherNames:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a9;
  v24.receiver = self;
  v24.super_class = SIRINLUSpan;
  v20 = [(SIRINLUSpan *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_label, a3);
    objc_storeStrong(&v21->_input, a4);
    v21->_startTokenIndex = a5;
    v21->_endTokenIndex = a6;
    objc_storeStrong(&v21->_usoGraph, a7);
    v21->_score = a8;
    objc_storeStrong(&v21->_matcherNames, a9);
  }

  return v21;
}

@end