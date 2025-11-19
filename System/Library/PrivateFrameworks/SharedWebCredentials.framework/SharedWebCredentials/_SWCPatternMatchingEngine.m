@interface _SWCPatternMatchingEngine
- (_SWCPatternMatchingEngine)initWithPatternDictionaries:(id)a3 substitutionVariables:(id)a4;
- (id)_evaluateURLComponents:(id)a3 auditToken:(id *)a4;
- (id)evaluateURLComponents:(id)a3;
- (id)evaluateURLComponents:(id)a3 auditToken:(id *)a4;
@end

@implementation _SWCPatternMatchingEngine

- (_SWCPatternMatchingEngine)initWithPatternDictionaries:(id)a3 substitutionVariables:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = _SWCPatternMatchingEngine;
  v8 = [(_SWCPatternMatchingEngine *)&v17 init];
  if (v8)
  {
    v20 = @"components";
    v21[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [_SWCPatternList patternListWithDetailsDictionary:v9];
    patternList = v8->_patternList;
    v8->_patternList = v10;

    if (v7)
    {
      v18 = @"substitutionVariables";
      v19 = v7;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v13 = [_SWCSubstitutionVariableList substitutionVariableListWithDictionary:v12];
      subVarList = v8->_subVarList;
      v8->_subVarList = v13;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_evaluateURLComponents:(id)a3 auditToken:(id *)a4
{
  v6 = a3;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(_SWCPatternList *)self->_patternList evaluateWithURLComponents:v6 substitutionVariables:self->_subVarList auditToken:a4 matchingPattern:0 index:&v10];
  if (v7)
  {
    v8 = [_SWCPatternMatchingResult alloc];
    v7 = [(_SWCPatternMatchingResult *)v8 _initWithIndex:v10 excluded:v7 == 100];
  }

  return v7;
}

- (id)evaluateURLComponents:(id)a3
{
  v3 = [(_SWCPatternMatchingEngine *)self _evaluateURLComponents:a3 auditToken:0];

  return v3;
}

- (id)evaluateURLComponents:(id)a3 auditToken:(id *)a4
{
  v4 = [(_SWCPatternMatchingEngine *)self _evaluateURLComponents:a3 auditToken:a4];

  return v4;
}

@end