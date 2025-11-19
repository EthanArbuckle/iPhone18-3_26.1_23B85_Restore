@interface UIDatePickerCalendarTimeLabelStateMachineContext
@end

@implementation UIDatePickerCalendarTimeLabelStateMachineContext

uint64_t __88___UIDatePickerCalendarTimeLabelStateMachineContext_currentSateCanTransitionWithEvents___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = handleEvent(_UIDatePickerCalendarTimeLabelStateMachineSpec_0, *(a1 + 40), a2, 0, &v6);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end