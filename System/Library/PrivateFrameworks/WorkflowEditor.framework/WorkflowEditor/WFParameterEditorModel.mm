@interface WFParameterEditorModel
- (WFParameterEditorModel)initWithParameter:(id)a3 state:(id)a4 widgetFamily:(int64_t)a5;
- (WFParameterEditorModel)initWithResourceError:(id)a3 buttonGradient:(id)a4;
@end

@implementation WFParameterEditorModel

- (WFParameterEditorModel)initWithResourceError:(id)a3 buttonGradient:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFParameterEditorHostingCell.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"resourceError"}];
  }

  v15.receiver = self;
  v15.super_class = WFParameterEditorModel;
  v10 = [(WFParameterEditorModel *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_resourceError, a3);
    objc_storeStrong(&v11->_buttonGradient, a4);
    v12 = v11;
  }

  return v11;
}

- (WFParameterEditorModel)initWithParameter:(id)a3 state:(id)a4 widgetFamily:(int64_t)a5
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFParameterEditorHostingCell.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];
  }

  v17.receiver = self;
  v17.super_class = WFParameterEditorModel;
  v12 = [(WFParameterEditorModel *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parameter, a3);
    objc_storeStrong(&v13->_state, a4);
    v13->_widgetFamily = a5;
    v14 = v13;
  }

  return v13;
}

@end