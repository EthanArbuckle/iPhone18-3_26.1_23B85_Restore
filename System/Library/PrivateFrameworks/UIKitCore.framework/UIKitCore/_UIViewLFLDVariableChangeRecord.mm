@interface _UIViewLFLDVariableChangeRecord
- (_UIViewLFLDVariableChangeRecord)initWithVariable:(id)a3 inLayoutEngine:(id)a4;
@end

@implementation _UIViewLFLDVariableChangeRecord

- (_UIViewLFLDVariableChangeRecord)initWithVariable:(id)a3 inLayoutEngine:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = _UIViewLFLDVariableChangeRecord;
  v9 = [(_UIViewLFLDChangeRecord *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_variable, a3);
    [v8 valueForVariable:v7];
    v12 = v11;
    objc_opt_self();
    v10->_value = v12 / 360.0;
    v13 = [v7 delegate];
    variableDelegate = v10->_variableDelegate;
    v10->_variableDelegate = v13;
  }

  return v10;
}

@end