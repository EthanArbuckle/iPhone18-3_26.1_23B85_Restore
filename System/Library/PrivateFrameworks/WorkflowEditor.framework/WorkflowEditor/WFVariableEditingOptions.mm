@interface WFVariableEditingOptions
- (BOOL)isEqual:(id)equal;
- (WFVariableEditingOptions)initWithAnchor:(id)anchor resultType:(unint64_t)type onChange:(id)change onFinish:(id)finish;
- (void)finishEditingReturningToKeyboard:(BOOL)keyboard;
- (void)variableDidChange:(id)change;
@end

@implementation WFVariableEditingOptions

- (void)finishEditingReturningToKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  onFinish = [(WFVariableEditingOptions *)self onFinish];

  if (onFinish)
  {
    onFinish2 = [(WFVariableEditingOptions *)self onFinish];
    onFinish2[2](onFinish2, keyboardCopy);
  }

  [(WFVariableEditingOptions *)self setOnChange:0];

  [(WFVariableEditingOptions *)self setOnFinish:0];
}

- (void)variableDidChange:(id)change
{
  changeCopy = change;
  onChange = [(WFVariableEditingOptions *)self onChange];

  if (onChange)
  {
    onChange2 = [(WFVariableEditingOptions *)self onChange];
    (onChange2)[2](onChange2, changeCopy);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      anchor = [(WFVariableEditingOptions *)self anchor];
      anchor2 = [equalCopy anchor];
      v7 = anchor;
      v8 = anchor2;
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

      resultType = [(WFVariableEditingOptions *)self resultType];
      v11 = resultType == [equalCopy resultType];
LABEL_13:

      goto LABEL_14;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (WFVariableEditingOptions)initWithAnchor:(id)anchor resultType:(unint64_t)type onChange:(id)change onFinish:(id)finish
{
  anchorCopy = anchor;
  changeCopy = change;
  finishCopy = finish;
  if (anchorCopy)
  {
    if (changeCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"onChange"}];

    if (finishCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"anchor"}];

  if (!changeCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (finishCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFVariableEditingOptions.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"onFinish"}];

LABEL_4:
  v26.receiver = self;
  v26.super_class = WFVariableEditingOptions;
  v15 = [(WFVariableEditingOptions *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_anchor, anchor);
    v16->_resultType = type;
    v17 = [changeCopy copy];
    onChange = v16->_onChange;
    v16->_onChange = v17;

    v19 = [finishCopy copy];
    onFinish = v16->_onFinish;
    v16->_onFinish = v19;

    v21 = v16;
  }

  return v16;
}

@end