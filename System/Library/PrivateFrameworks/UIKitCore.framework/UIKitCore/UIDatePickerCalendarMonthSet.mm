@interface UIDatePickerCalendarMonthSet
@end

@implementation UIDatePickerCalendarMonthSet

void __50___UIDatePickerCalendarMonthSet__loadOffsetRange___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1[7] + 8);
  if (*(v5 + 32) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a1[8] object:a1[4] file:@"_UIDatePickerCalendarMonthSet.m" lineNumber:150 description:{@"More than one range needed. This should never happen. Offsets needed: %@; offsets missing: %@", a1[5], a1[6]}];

    v5 = *(a1[7] + 8);
  }

  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
}

@end