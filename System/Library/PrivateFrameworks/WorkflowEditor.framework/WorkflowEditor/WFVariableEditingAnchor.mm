@interface WFVariableEditingAnchor
- (BOOL)isEqual:(id)equal;
- (CGRect)sourceRect;
- (WFVariableEditingAnchor)initWithVariable:(id)variable variableProvider:(id)provider parameter:(id)parameter sourceView:(id)view sourceRect:(CGRect)rect;
- (unint64_t)hash;
@end

@implementation WFVariableEditingAnchor

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    variable = [(WFVariableEditingAnchor *)self variable];
    variable2 = [equalCopy variable];
    if (variable == variable2)
    {
      variableProvider = [(WFVariableEditingAnchor *)self variableProvider];
      variableProvider2 = [equalCopy variableProvider];
      if (variableProvider == variableProvider2)
      {
        parameter = [(WFVariableEditingAnchor *)self parameter];
        parameter2 = [equalCopy parameter];
        if (parameter == parameter2)
        {
          sourceView = [(WFVariableEditingAnchor *)self sourceView];
          sourceView2 = [equalCopy sourceView];
          if (sourceView == sourceView2)
          {
            [(WFVariableEditingAnchor *)self sourceRect];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            [equalCopy sourceRect];
            v28.origin.x = v22;
            v28.origin.y = v23;
            v28.size.width = v24;
            v28.size.height = v25;
            v27.origin.x = v15;
            v27.origin.y = v17;
            v27.size.width = v19;
            v27.size.height = v21;
            v7 = CGRectEqualToRect(v27, v28);
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(WFVariable *)self->_variable hash];
  v4 = [(WFVariableProvider *)self->_variableProvider hash]^ v3;
  v5 = [(WFParameter *)self->_parameter hash];
  return v4 ^ v5 ^ [(UIView *)self->_sourceView hash];
}

- (WFVariableEditingAnchor)initWithVariable:(id)variable variableProvider:(id)provider parameter:(id)parameter sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  variableCopy = variable;
  providerCopy = provider;
  parameterCopy = parameter;
  viewCopy = view;
  if (variableCopy)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"variableProvider"}];

    if (parameterCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"variable"}];

  if (!providerCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (parameterCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];

LABEL_4:
  v28.receiver = self;
  v28.super_class = WFVariableEditingAnchor;
  v21 = [(WFVariableEditingAnchor *)&v28 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_variable, variable);
    objc_storeStrong(&v22->_variableProvider, provider);
    objc_storeStrong(&v22->_parameter, parameter);
    v22->_sourceRect.origin.x = x;
    v22->_sourceRect.origin.y = y;
    v22->_sourceRect.size.width = width;
    v22->_sourceRect.size.height = height;
    objc_storeStrong(&v22->_sourceView, view);
    v23 = v22;
  }

  return v22;
}

@end