@interface UIFocusEnvironmentPreferredFocusMapContainer
@end

@implementation UIFocusEnvironmentPreferredFocusMapContainer

void ___UIFocusEnvironmentPreferredFocusMapContainer_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v11 _focusMapContainer];
    if (!v5)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    goto LABEL_7;
  }

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    goto LABEL_10;
  }

  v7 = [v11 focusItemContainer];
  if (v7)
  {
    v9 = _UIFocusRegionContainerFromEnvironmentAndContainer(v11, v7);
    v10 = *(*(a1 + 32) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
LABEL_7:

    *a3 = 1;
  }

LABEL_9:

LABEL_10:
}

@end