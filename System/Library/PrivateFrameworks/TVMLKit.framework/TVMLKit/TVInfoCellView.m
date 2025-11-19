@interface TVInfoCellView
@end

@implementation TVInfoCellView

double __48___TVInfoCellView_sizeThatFits_withHeaderWidth___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 tv_margin];
  v7 = v6;
  v9 = v8;
  [v5 tv_sizeThatFits:{*(a1 + 48), *(a1 + 56)}];
  v11 = v10;

  *(*(*(a1 + 32) + 8) + 24) = v11 + *(*(*(a1 + 32) + 8) + 24);
  if (a3)
  {
    v7 = fmax(fmax(*(*(*(a1 + 40) + 8) + 24), v7), *(a1 + 64));
  }

  v12 = *(*(a1 + 32) + 8);
  result = v7 + *(v12 + 24);
  *(v12 + 24) = result;
  *(*(*(a1 + 40) + 8) + 24) = v9;
  return result;
}

double __48___TVInfoCellView_sizeThatFits_withHeaderWidth___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 tv_margin];
  v7 = v6;
  v9 = v8;
  [v5 tv_sizeThatFits:{*(a1 + 56), 0.0}];
  v11 = v10;

  *(*(*(a1 + 40) + 8) + 24) = v11 + *(*(*(a1 + 40) + 8) + 24);
  if (a3)
  {
    v12 = fmax(fmax(*(*(*(a1 + 48) + 8) + 24), v7), *(a1 + 72));
  }

  else
  {
    v12 = fmax(*(*(a1 + 32) + 480), v7);
  }

  v13 = *(*(a1 + 40) + 8);
  result = v12 + *(v13 + 24);
  *(v13 + 24) = result;
  *(*(*(a1 + 48) + 8) + 24) = v9;
  return result;
}

void __33___TVInfoCellView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  [v20 tv_margin];
  v9 = v8;
  if (*(a1 + 104))
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (a3)
  {
    v11 = fmax(fmax(*(*(*(a1 + 48) + 8) + 24), v5), *(a1 + 64));
  }

  else
  {
    v11 = fmax(*(a1 + 56), v5);
  }

  *(*(*(a1 + 40) + 8) + 24) = v11 + *(*(*(a1 + 40) + 8) + 24);
  [v20 tv_itemWidth];
  v13 = v12;
  if (v12 == 0.0)
  {
    v13 = *(a1 + 72);
  }

  [v20 tv_sizeThatFits:{v13, 0.0}];
  v15 = v14;
  v17 = v16;
  if (*(*(a1 + 32) + 408) == 1)
  {
    v10 = *(a1 + 88);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (v15 < v13)) != 0)
  {
    v13 = v15;
  }

  v18 = *(*(*(a1 + 40) + 8) + 24);
  v19 = v17;
  if (v17 + v18 - *(a1 + 96) > 2.22044605e-16)
  {
    v10 = *MEMORY[0x277CBF3A0];
    v18 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    [v20 setHidden:1];
  }

  v22.origin.x = v10;
  v22.origin.y = v18;
  v22.size.width = v13;
  v22.size.height = v19;
  v23 = CGRectIntegral(v22);
  [v20 setFrame:{v23.origin.x, v23.origin.y, v23.size.width, v23.size.height}];
  *(*(*(a1 + 40) + 8) + 24) = v17 + *(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 48) + 8) + 24) = v9;
}

@end