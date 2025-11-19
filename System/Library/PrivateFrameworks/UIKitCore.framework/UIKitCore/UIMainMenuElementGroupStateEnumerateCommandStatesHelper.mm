@interface UIMainMenuElementGroupStateEnumerateCommandStatesHelper
@end

@implementation UIMainMenuElementGroupStateEnumerateCommandStatesHelper

uint64_t ___UIMainMenuElementGroupStateEnumerateCommandStatesHelper_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 40) + 16))();
  if (**(a1 + 48) == 1)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t ___UIMainMenuElementGroupStateEnumerateCommandStatesHelper_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = _UIMainMenuElementGroupStateEnumerateCommandStatesHelper(a3, *(a1 + 32), *(a1 + 40));
  if (**(a1 + 40) == 1)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t ___UIMainMenuElementGroupStateEnumerateCommandStatesHelper_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = _UIMainMenuElementGroupStateEnumerateCommandStatesHelper(a3, *(a1 + 32), *(a1 + 40));
  if (**(a1 + 40) == 1)
  {
    *a4 = 1;
  }

  return result;
}

@end