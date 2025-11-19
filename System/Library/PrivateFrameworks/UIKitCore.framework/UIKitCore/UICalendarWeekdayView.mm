@interface UICalendarWeekdayView
@end

@implementation UICalendarWeekdayView

id __40___UICalendarWeekdayView__rebuildLabels__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 424);
  v3 = a2;
  v4 = [v2 effectiveLocale];
  v5 = [v3 uppercaseStringWithLocale:v4];

  return v5;
}

@end