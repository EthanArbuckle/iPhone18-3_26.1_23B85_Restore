@interface _SWCPatternMatchingEngine
- (_SWCPatternMatchingEngine)initWithPatternDictionaries:(id)dictionaries substitutionVariables:(id)variables;
- (id)_evaluateURLComponents:(id)components auditToken:(id *)token;
- (id)evaluateURLComponents:(id)components;
- (id)evaluateURLComponents:(id)components auditToken:(id *)token;
@end

@implementation _SWCPatternMatchingEngine

- (_SWCPatternMatchingEngine)initWithPatternDictionaries:(id)dictionaries substitutionVariables:(id)variables
{
  v21[1] = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  variablesCopy = variables;
  v17.receiver = self;
  v17.super_class = _SWCPatternMatchingEngine;
  v8 = [(_SWCPatternMatchingEngine *)&v17 init];
  if (v8)
  {
    v20 = @"components";
    v21[0] = dictionariesCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [_SWCPatternList patternListWithDetailsDictionary:v9];
    patternList = v8->_patternList;
    v8->_patternList = v10;

    if (variablesCopy)
    {
      v18 = @"substitutionVariables";
      v19 = variablesCopy;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v13 = [_SWCSubstitutionVariableList substitutionVariableListWithDictionary:v12];
      subVarList = v8->_subVarList;
      v8->_subVarList = v13;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_evaluateURLComponents:(id)components auditToken:(id *)token
{
  componentsCopy = components;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(_SWCPatternList *)self->_patternList evaluateWithURLComponents:componentsCopy substitutionVariables:self->_subVarList auditToken:token matchingPattern:0 index:&v10];
  if (v7)
  {
    v8 = [_SWCPatternMatchingResult alloc];
    v7 = [(_SWCPatternMatchingResult *)v8 _initWithIndex:v10 excluded:v7 == 100];
  }

  return v7;
}

- (id)evaluateURLComponents:(id)components
{
  v3 = [(_SWCPatternMatchingEngine *)self _evaluateURLComponents:components auditToken:0];

  return v3;
}

- (id)evaluateURLComponents:(id)components auditToken:(id *)token
{
  v4 = [(_SWCPatternMatchingEngine *)self _evaluateURLComponents:components auditToken:token];

  return v4;
}

@end