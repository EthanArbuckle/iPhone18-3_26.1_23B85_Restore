@interface WFParameterEditorModel
- (WFParameterEditorModel)initWithParameter:(id)parameter state:(id)state widgetFamily:(int64_t)family;
- (WFParameterEditorModel)initWithResourceError:(id)error buttonGradient:(id)gradient;
@end

@implementation WFParameterEditorModel

- (WFParameterEditorModel)initWithResourceError:(id)error buttonGradient:(id)gradient
{
  errorCopy = error;
  gradientCopy = gradient;
  if (!errorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFParameterEditorHostingCell.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"resourceError"}];
  }

  v15.receiver = self;
  v15.super_class = WFParameterEditorModel;
  v10 = [(WFParameterEditorModel *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_resourceError, error);
    objc_storeStrong(&v11->_buttonGradient, gradient);
    v12 = v11;
  }

  return v11;
}

- (WFParameterEditorModel)initWithParameter:(id)parameter state:(id)state widgetFamily:(int64_t)family
{
  parameterCopy = parameter;
  stateCopy = state;
  if (!parameterCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFParameterEditorHostingCell.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];
  }

  v17.receiver = self;
  v17.super_class = WFParameterEditorModel;
  v12 = [(WFParameterEditorModel *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_parameter, parameter);
    objc_storeStrong(&v13->_state, state);
    v13->_widgetFamily = family;
    v14 = v13;
  }

  return v13;
}

@end