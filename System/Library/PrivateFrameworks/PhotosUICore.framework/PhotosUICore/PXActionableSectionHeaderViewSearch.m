@interface PXActionableSectionHeaderViewSearch
@end

@implementation PXActionableSectionHeaderViewSearch

void __69___PXActionableSectionHeaderViewSearch_observable_didChange_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewModel];
  v3 = [v2 isPinching];

  v4 = [*(a1 + 32) visualEffectView];
  v6 = v4;
  v5 = 0.0;
  if (v3)
  {
    v5 = 1.0;
  }

  [v4 setAlpha:v5];
}

@end