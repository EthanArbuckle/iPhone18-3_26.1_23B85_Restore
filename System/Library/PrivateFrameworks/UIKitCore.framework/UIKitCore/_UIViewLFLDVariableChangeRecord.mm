@interface _UIViewLFLDVariableChangeRecord
- (_UIViewLFLDVariableChangeRecord)initWithVariable:(id)variable inLayoutEngine:(id)engine;
@end

@implementation _UIViewLFLDVariableChangeRecord

- (_UIViewLFLDVariableChangeRecord)initWithVariable:(id)variable inLayoutEngine:(id)engine
{
  variableCopy = variable;
  engineCopy = engine;
  v16.receiver = self;
  v16.super_class = _UIViewLFLDVariableChangeRecord;
  v9 = [(_UIViewLFLDChangeRecord *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_variable, variable);
    [engineCopy valueForVariable:variableCopy];
    v12 = v11;
    objc_opt_self();
    v10->_value = v12 / 360.0;
    delegate = [variableCopy delegate];
    variableDelegate = v10->_variableDelegate;
    v10->_variableDelegate = delegate;
  }

  return v10;
}

@end