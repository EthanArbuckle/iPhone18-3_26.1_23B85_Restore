@interface WFParameter
@end

@implementation WFParameter

void __142__WFParameter_WFVariableMenuProvider__variableMenuElementsWithVariable_parameterState_variableProvider_variableUIDelegate_setVariableHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) containsObject:*MEMORY[0x277D7D068]];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __142__WFParameter_WFVariableMenuProvider__variableMenuElementsWithVariable_parameterState_variableProvider_variableUIDelegate_setVariableHandler___block_invoke_2;
  v5[3] = &unk_279EDBBB0;
  v6 = *(a1 + 56);
  [v3 showActionOutputPickerAllowingShortcutInput:v2 variableProvider:v4 completionHandler:v5];
}

uint64_t __142__WFParameter_WFVariableMenuProvider__variableMenuElementsWithVariable_parameterState_variableProvider_variableUIDelegate_setVariableHandler___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

@end