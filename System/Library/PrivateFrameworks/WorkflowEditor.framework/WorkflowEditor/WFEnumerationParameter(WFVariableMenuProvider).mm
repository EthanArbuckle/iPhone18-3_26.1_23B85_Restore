@interface WFEnumerationParameter(WFVariableMenuProvider)
- (id)clearButtonMenuItemWithVariable:()WFVariableMenuProvider parameterState:setVariableHandler:;
@end

@implementation WFEnumerationParameter(WFVariableMenuProvider)

- (id)clearButtonMenuItemWithVariable:()WFVariableMenuProvider parameterState:setVariableHandler:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([self hideClearButton])
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = &off_2883D8D58;
    v11 = objc_msgSendSuper2(&v13, sel_clearButtonMenuItemWithVariable_parameterState_setVariableHandler_, v8, v9, v10);
  }

  return v11;
}

@end