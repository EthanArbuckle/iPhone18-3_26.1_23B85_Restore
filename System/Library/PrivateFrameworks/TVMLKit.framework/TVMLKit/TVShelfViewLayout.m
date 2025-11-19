@interface TVShelfViewLayout
@end

@implementation TVShelfViewLayout

void __50___TVShelfViewLayout_invalidateLayoutWithContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if ([*(a1 + 32) section] != a3 || *(a1 + 56) != 1 || (objc_msgSend(*(a1 + 40), "_bumpHeaderForLayoutSection:forIndexPath:", v9, *(a1 + 32)) & 1) == 0)
  {
    [v9 sectionHeaderVerticalBump];
    v5 = v9;
    if (v6 == 0.0)
    {
      goto LABEL_7;
    }

    [v9 setSectionHeaderVerticalBump:0.0];
  }

  v7 = *(a1 + 48);
  v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:a3];
  [v7 addObject:v8];

  v5 = v9;
LABEL_7:
}

@end