@interface UIInterfaceActionSeparatableSequenceView
@end

@implementation UIInterfaceActionSeparatableSequenceView

void __72___UIInterfaceActionSeparatableSequenceView__reloadStackViewArrangement__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 472);
  v3 = a2;
  [v2 removeArrangedSubview:v3];
  [v3 removeFromSuperview];
}

void __72___UIInterfaceActionSeparatableSequenceView__reloadStackViewArrangement__block_invoke_16(uint64_t a1, void *a2, unint64_t a3)
{
  v14 = a2;
  [*(*(a1 + 32) + 472) addArrangedSubview:?];
  if (*(a1 + 64) - 1 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v5 = [v14 sectionID];
    v6 = [*(a1 + 40) objectAtIndexedSubscript:a3 + 1];
    v7 = [v6 sectionID];

    v8 = [v7 isEqualToString:v5] ^ 1;
    [*(a1 + 32) _addSeparatorToStackAndMutableArray:*(a1 + 48) preferSectionStyle:v8];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [*(a1 + 48) lastObject];
    }
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v11 = v10;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [v10 addObject:?];
  }

  if (v9)
  {
    [v11 addObject:v9];
  }

  [v14 setViewsToDisappearWhenHighlighted:v11];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v9;
}

@end