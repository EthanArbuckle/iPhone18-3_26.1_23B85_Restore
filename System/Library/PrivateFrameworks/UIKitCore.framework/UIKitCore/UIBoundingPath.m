@interface UIBoundingPath
@end

@implementation UIBoundingPath

void __78___UIBoundingPath__rectTuckedInCorner_ofBoundingRect_withSize_minimumPadding___block_invoke(uint64_t a1, double a2, double a3)
{
  if (!CGRectIsNull(*(*(*(a1 + 32) + 8) + 32)))
  {
    _UIIntersectionPointOfRayWithRect(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
    if (v6 == *MEMORY[0x1E695F050] && v7 == *(MEMORY[0x1E695F050] + 8))
    {
      v9 = *(*(a1 + 32) + 8);
      v10 = *(MEMORY[0x1E695F050] + 16);
      *(v9 + 32) = *MEMORY[0x1E695F050];
      *(v9 + 48) = v10;
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 32) = v6 - a2 + *(*(*(a1 + 32) + 8) + 32);
      *(*(*(a1 + 32) + 8) + 40) = v7 - a3 + *(*(*(a1 + 32) + 8) + 40);
    }
  }
}

@end