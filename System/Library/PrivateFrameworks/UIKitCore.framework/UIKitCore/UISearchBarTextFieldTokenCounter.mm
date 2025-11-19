@interface UISearchBarTextFieldTokenCounter
@end

@implementation UISearchBarTextFieldTokenCounter

void __57___UISearchBarTextFieldTokenCounter_initWithTextStorage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProcessEditing];
}

void __84___UISearchBarTextFieldTokenCounter__addCharacterIndexesOfTokensInRange_toIndexSet___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addIndex:a3];
    }
  }
}

void *__86___UISearchBarTextFieldTokenCounter_characterIndexForSelectingOrRemovingTokenAtIndex___block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result[4] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  if (v4 == result[6])
  {
    *(*(result[5] + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

uint64_t __71___UISearchBarTextFieldTokenCounter_characterRangeOfTextAfterLastToken__block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && (v4 - a2) >= 2)
  {
    *(*(*(result + 40) + 8) + 32) = a2 + 1;
    *(*(*(result + 40) + 8) + 40) = *(*(*(result + 32) + 8) + 24) + ~a2;
    *a3 = 1;
  }

  else
  {
    *(v3 + 24) = a2;
  }

  return result;
}

@end