@interface WFVariableEditingOptions
- (BOOL)isEqual:(id)a3;
- (WFVariableEditingOptions)initWithAnchor:(id)a3 resultType:(unint64_t)a4 onChange:(id)a5 onFinish:(id)a6;
- (void)finishEditingReturningToKeyboard:(BOOL)a3;
- (void)variableDidChange:(id)a3;
@end

@implementation WFVariableEditingOptions

- (void)finishEditingReturningToKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = [(WFVariableEditingOptions *)self onFinish];

  if (v5)
  {
    v6 = [(WFVariableEditingOptions *)self onFinish];
    v6[2](v6, v3);
  }

  [(WFVariableEditingOptions *)self setOnChange:0];

  [(WFVariableEditingOptions *)self setOnFinish:0];
}

- (void)variableDidChange:(id)a3
{
  v6 = a3;
  v4 = [(WFVariableEditingOptions *)self onChange];

  if (v4)
  {
    v5 = [(WFVariableEditingOptions *)self onChange];
    (v5)[2](v5, v6);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFVariableEditingOptions *)self anchor];
      v6 = [v4 anchor];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (!v7 || !v8)
        {

LABEL_12:
          v11 = 0;
          goto LABEL_13;
        }

        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_12;
        }
      }

      v12 = [(WFVariableEditingOptions *)self resultType];
      v11 = v12 == [v4 resultType];
LABEL_13:

      goto LABEL_14;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (WFVariableEditingOptions)initWithAnchor:(id)a3 resultType:(unint64_t)a4 onChange:(id)a5 onFinish:(id)a6
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"onChange"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"anchor"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"onFinish"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = WFVariableEditingOptions;
  v15 = [(WFVariableEditingOptions *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_anchor, a3);
    v16->_resultType = a4;
    v17 = [v13 copy];
    onChange = v16->_onChange;
    v16->_onChange = v17;

    v19 = [v14 copy];
    onFinish = v16->_onFinish;
    v16->_onFinish = v19;

    v21 = v16;
  }

  return v16;
}

@end