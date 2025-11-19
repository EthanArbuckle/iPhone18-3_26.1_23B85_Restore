@interface TVInfoTableView
@end

@implementation TVInfoTableView

void __33___TVInfoTableView_sizeThatFits___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v9 = a2;
  v5 = *(a1 + 56);
  v6 = 0.0;
  if (v5 > 0.0)
  {
    v6 = v5 - *(*(*(a1 + 40) + 8) + 24);
  }

  v7 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 64) > 0.0)
  {
    [v9 sizeThatFits:v7 withHeaderWidth:v6];
  }

  else
  {
    [v9 sizeThatFits:{v7, v6}];
  }

  *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(*(a1 + 40) + 8) + 24);
  if ([*(*(a1 + 32) + 432) count] - 1 > a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 72) + *(*(*(a1 + 40) + 8) + 24);
  }
}

@end