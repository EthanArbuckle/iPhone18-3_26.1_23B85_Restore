@interface UICollectionViewSubviewCollection
@end

@implementation UICollectionViewSubviewCollection

uint64_t __77___UICollectionViewSubviewCollection_enumerateSupplementariesWithEnumerator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77___UICollectionViewSubviewCollection_enumerateSupplementariesWithEnumerator___block_invoke_2;
  v6[3] = &unk_1E7104F90;
  v4 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v4;
  v6[6] = a4;
  return [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

uint64_t __77___UICollectionViewSubviewCollection_enumerateSupplementariesWithEnumerator___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 40) + 16))();
  **(a1 + 48) = *a4;
  return result;
}

uint64_t __73___UICollectionViewSubviewCollection_enumerateDecorationsWithEnumerator___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73___UICollectionViewSubviewCollection_enumerateDecorationsWithEnumerator___block_invoke_2;
  v6[3] = &unk_1E7104F90;
  v4 = *(a1 + 32);
  v6[4] = a2;
  v6[5] = v4;
  v6[6] = a4;
  return [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

uint64_t __73___UICollectionViewSubviewCollection_enumerateDecorationsWithEnumerator___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 40) + 16))();
  **(a1 + 48) = *a4;
  return result;
}

uint64_t __73___UICollectionViewSubviewCollection_enumerateAuxillariesWithEnumerator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a5;
  return result;
}

uint64_t __70___UICollectionViewSubviewCollection_enumerateAllViewsWithEnumerator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a4;
  return result;
}

uint64_t __70___UICollectionViewSubviewCollection_enumerateAllViewsWithEnumerator___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a5;
  return result;
}

uint64_t __70___UICollectionViewSubviewCollection_enumerateAllViewsWithEnumerator___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a5;
  return result;
}

uint64_t __51___UICollectionViewSubviewCollection_containsView___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (*(result + 32) == a5)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

uint64_t __61___UICollectionViewSubviewCollection_updateCellsUsingFilter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v7 = *(a1 + 32);

    return [v7 setObject:a3 forKeyedSubscript:a2];
  }

  return result;
}

void __71___UICollectionViewSubviewCollection_updateSupplementariesUsingFilter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a1 + 40) + 16))())
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:a3];
    if (!v8)
    {
      v9 = objc_opt_new();
      [*(a1 + 32) setObject:v9 forKeyedSubscript:a3];
      v8 = v9;
    }

    v10 = v8;
    [v8 setObject:a4 forKeyedSubscript:a2];
  }
}

void __67___UICollectionViewSubviewCollection_updateDecorationsUsingFilter___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a1 + 40) + 16))())
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:a3];
    if (!v8)
    {
      v9 = objc_opt_new();
      [*(a1 + 32) setObject:v9 forKeyedSubscript:a3];
      v8 = v9;
    }

    v10 = v8;
    [v8 setObject:a4 forKeyedSubscript:a2];
  }
}

@end