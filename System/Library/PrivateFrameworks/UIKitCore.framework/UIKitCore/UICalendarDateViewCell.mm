@interface UICalendarDateViewCell
@end

@implementation UICalendarDateViewCell

id __41___UICalendarDateViewCell_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _decorationView];
  [v3 sizeThatFits:{*(a1 + 56), *(a1 + 64)}];
  *(*(*(a1 + 32) + 8) + 24) = v4 + *(*(*(a1 + 32) + 8) + 24);
  [v3 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v4, v5}];

  return v3;
}

void __42___UICalendarDateViewCell_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) highlightedCellBackgroundEffect];
  [*(*(a1 + 32) + 696) setEffect:v2];

  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 highlightedContentTransform];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
  }

  v4 = [*(a1 + 32) contentView];
  v5 = [v4 layer];
  v6[4] = v11;
  v6[5] = v12;
  v6[6] = v13;
  v6[7] = v14;
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  [v5 setSublayerTransform:v6];
}

void __42___UICalendarDateViewCell_setHighlighted___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) defaultCellBackgroundEffect];
  [*(*(a1 + 32) + 696) setEffect:v2];

  v3 = [*(a1 + 32) contentView];
  v4 = [v3 layer];
  v5 = *(MEMORY[0x1E69792E8] + 80);
  v9[4] = *(MEMORY[0x1E69792E8] + 64);
  v9[5] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 112);
  v9[6] = *(MEMORY[0x1E69792E8] + 96);
  v9[7] = v6;
  v7 = *(MEMORY[0x1E69792E8] + 16);
  v9[0] = *MEMORY[0x1E69792E8];
  v9[1] = v7;
  v8 = *(MEMORY[0x1E69792E8] + 48);
  v9[2] = *(MEMORY[0x1E69792E8] + 32);
  v9[3] = v8;
  [v4 setSublayerTransform:v9];
}

@end