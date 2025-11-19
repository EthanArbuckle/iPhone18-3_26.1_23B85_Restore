@interface WFVariableEditingAnchor
- (BOOL)isEqual:(id)a3;
- (CGRect)sourceRect;
- (WFVariableEditingAnchor)initWithVariable:(id)a3 variableProvider:(id)a4 parameter:(id)a5 sourceView:(id)a6 sourceRect:(CGRect)a7;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFVariableEditingAnchor *)self variable];
    v6 = [v4 variable];
    if (v5 == v6)
    {
      v8 = [(WFVariableEditingAnchor *)self variableProvider];
      v9 = [v4 variableProvider];
      if (v8 == v9)
      {
        v10 = [(WFVariableEditingAnchor *)self parameter];
        v11 = [v4 parameter];
        if (v10 == v11)
        {
          v12 = [(WFVariableEditingAnchor *)self sourceView];
          v13 = [v4 sourceView];
          if (v12 == v13)
          {
            [(WFVariableEditingAnchor *)self sourceRect];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            [v4 sourceRect];
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

- (WFVariableEditingAnchor)initWithVariable:(id)a3 variableProvider:(id)a4 parameter:(id)a5 sourceView:(id)a6 sourceRect:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_8:
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"variableProvider"}];

    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"variable"}];

  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v19)
  {
    goto LABEL_4;
  }

LABEL_9:
  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];

LABEL_4:
  v28.receiver = self;
  v28.super_class = WFVariableEditingAnchor;
  v21 = [(WFVariableEditingAnchor *)&v28 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_variable, a3);
    objc_storeStrong(&v22->_variableProvider, a4);
    objc_storeStrong(&v22->_parameter, a5);
    v22->_sourceRect.origin.x = x;
    v22->_sourceRect.origin.y = y;
    v22->_sourceRect.size.width = width;
    v22->_sourceRect.size.height = height;
    objc_storeStrong(&v22->_sourceView, a6);
    v23 = v22;
  }

  return v22;
}

@end