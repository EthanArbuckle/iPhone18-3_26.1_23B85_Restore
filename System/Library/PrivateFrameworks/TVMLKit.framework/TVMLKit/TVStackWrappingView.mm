@interface TVStackWrappingView
@end

@implementation TVStackWrappingView

void __38___TVStackWrappingView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v4 = [v6 layer];
  [v4 setShouldRasterize:a3];

  [v6 setOpaque:a3];
  if (a3)
  {
    v5 = [MEMORY[0x277D75348] blackColor];
    [v6 setBackgroundColor:v5];
  }

  else
  {
    [v6 setBackgroundColor:0];
  }
}

void __99___TVStackWrappingView_configureSupplementaryCellLayoutAttributesWithAutomaticInsets_sectionIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 tv_margin];
  v9 = v8;
  v11 = v10;
  v12 = *(a1 + 72);
  v13 = v12 - (v6 + v7);
  if (v13 >= 2.22044605e-16)
  {
    v14 = v12 - (v6 + v7);
  }

  else
  {
    v14 = *(a1 + 72);
  }

  if (v13 >= 2.22044605e-16)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0.0;
  }

  if (v13 >= 2.22044605e-16)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = fmax(*(*(*(a1 + 40) + 8) + 48), v9);
  [v5 tv_sizeThatFits:{v14, 0.0}];
  v19 = v18;

  v20 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 88)];
  v22 = [(UICollectionViewLayoutAttributes *)_TVStackViewFlowLayoutAttributes layoutAttributesForCellWithIndexPath:v20];

  [v22 setFrame:{v16, v17 + *(*(*(a1 + 48) + 8) + 24), v14, v19}];
  [*(a1 + 32) addObject:v22];
  *(*(*(a1 + 48) + 8) + 24) = v17 + v19 + *(*(*(a1 + 48) + 8) + 24);
  v21 = *(*(a1 + 40) + 8);
  *(v21 + 32) = v9;
  *(v21 + 40) = v16;
  *(v21 + 48) = v11;
  *(v21 + 56) = v15;
}

@end