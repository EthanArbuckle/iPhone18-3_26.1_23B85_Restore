@interface TVAlertTemplateView
@end

@implementation TVAlertTemplateView

void __38___TVAlertTemplateView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 tv_margin];
  v7 = v6;
  [*(*(*(a1 + 40) + 8) + 40) tv_margin];
  if (v8 >= v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (!a3)
  {
    v9 = 0.0;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v9;
  v10 = *(*(a1 + 32) + 432);
  if (v10 == v5)
  {
    [v10 contentInset];
    v12 = v16 + *(a1 + 56) + v15;
    v14 = *(a1 + 72);
  }

  else
  {
    [v5 tv_maxWidth];
    [v5 tv_sizeThatFits:?];
    v12 = v11;
    v14 = v13;
  }

  v17 = (*(a1 + 96) - v12) * 0.5;
  [v5 setFrame:{floorf(v17), *(*(*(a1 + 48) + 8) + 24), v12, v14}];
  *(*(*(a1 + 48) + 8) + 24) = v14 + *(*(*(a1 + 48) + 8) + 24);
  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v5;
}

@end