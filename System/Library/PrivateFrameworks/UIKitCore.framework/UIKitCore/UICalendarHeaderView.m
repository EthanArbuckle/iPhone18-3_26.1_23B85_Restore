@interface UICalendarHeaderView
@end

@implementation UICalendarHeaderView

void __44___UICalendarHeaderView__setupViewHierarchy__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 headerViewDidSelect:WeakRetained];
}

uint64_t __46___UICalendarHeaderView_setExpanded_animated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 424);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  [v2 setChevronTransform:v5];
  [*(*(a1 + 32) + 424) setSelected:*(a1 + 88)];
  [*(a1 + 32) _updateMonthYearLabel];
  return [*(a1 + 32) _updateMonthButtonVisibility];
}

@end