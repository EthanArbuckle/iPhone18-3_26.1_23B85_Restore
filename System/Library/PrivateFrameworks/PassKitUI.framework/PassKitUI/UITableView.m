@interface UITableView
@end

@implementation UITableView

uint64_t __75__UITableView_PKUIUtilities__pkui_groupedStyleDefaultRoundedCornerBehavior__block_invoke(uint64_t a1)
{
  if (qword_1EBD6ABE0 != -1)
  {
    dispatch_once(&qword_1EBD6ABE0, &__block_literal_global_50);
  }

  result = [*(a1 + 32) pkui_groupedStyleWithRoundedCorners:(qword_1EBD6ABD8 & 0xFFFFFFFFFFFFFFFBLL) != 1];
  pkui_groupedStyleDefaultRoundedCornerBehavior_groupedStyle = result;
  return result;
}

@end