@interface SIRINLUSpan
- (SIRINLUSpan)initWithCoder:(id)coder;
- (SIRINLUSpan)initWithLabel:(id)label input:(id)input startTokenIndex:(unsigned int)index endTokenIndex:(unsigned int)tokenIndex usoGraph:(id)graph score:(double)score matcherNames:(id)names;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUSpan

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  label = [(SIRINLUSpan *)self label];
  input = [(SIRINLUSpan *)self input];
  startTokenIndex = [(SIRINLUSpan *)self startTokenIndex];
  endTokenIndex = [(SIRINLUSpan *)self endTokenIndex];
  usoGraph = [(SIRINLUSpan *)self usoGraph];
  printedForm = [usoGraph printedForm];
  v10 = [SIRINLUPrintUtils indentLines:printedForm numSpaces:4];
  [(SIRINLUSpan *)self score];
  v12 = v11;
  matcherNames = [(SIRINLUSpan *)self matcherNames];
  v14 = [SIRINLUPrintUtils indentArray:matcherNames numSpaces:4];
  v15 = [v3 stringWithFormat:@"{Span\n  label: \n%@\n  input: \n%@\n  startTokenIndex: \n%u\n  endTokenIndex: \n%u\n  usoGraph:\n%@\n  score: %f\n  matcherNamees: \n%@\n}", label, input, startTokenIndex, endTokenIndex, v10, v12, v14];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = [(SIRINLUSpan *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  input = [(SIRINLUSpan *)self input];
  [coderCopy encodeObject:input forKey:@"input"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_startTokenIndex];
  [coderCopy encodeObject:v11 forKey:@"startTokenIndex"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endTokenIndex];
  [coderCopy encodeObject:v7 forKey:@"endTokenIndex"];
  usoGraph = [(SIRINLUSpan *)self usoGraph];
  [coderCopy encodeObject:usoGraph forKey:@"usoGraph"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  [coderCopy encodeObject:v9 forKey:@"score"];
  matcherNames = [(SIRINLUSpan *)self matcherNames];
  [coderCopy encodeObject:matcherNames forKey:@"matcherNames"];
}

- (SIRINLUSpan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = SIRINLUSpan;
  v5 = [(SIRINLUSpan *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"input"];
    input = v5->_input;
    v5->_input = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTokenIndex"];
    v5->_startTokenIndex = [v10 unsignedIntValue];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTokenIndex"];
    v5->_endTokenIndex = [v11 unsignedIntValue];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usoGraph"];
    usoGraph = v5->_usoGraph;
    v5->_usoGraph = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    [v14 doubleValue];
    v5->_score = v15;
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"matcherNames"];
    matcherNames = v5->_matcherNames;
    v5->_matcherNames = v19;
  }

  return v5;
}

- (SIRINLUSpan)initWithLabel:(id)label input:(id)input startTokenIndex:(unsigned int)index endTokenIndex:(unsigned int)tokenIndex usoGraph:(id)graph score:(double)score matcherNames:(id)names
{
  labelCopy = label;
  inputCopy = input;
  graphCopy = graph;
  namesCopy = names;
  v24.receiver = self;
  v24.super_class = SIRINLUSpan;
  v20 = [(SIRINLUSpan *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_label, label);
    objc_storeStrong(&v21->_input, input);
    v21->_startTokenIndex = index;
    v21->_endTokenIndex = tokenIndex;
    objc_storeStrong(&v21->_usoGraph, graph);
    v21->_score = score;
    objc_storeStrong(&v21->_matcherNames, names);
  }

  return v21;
}

@end