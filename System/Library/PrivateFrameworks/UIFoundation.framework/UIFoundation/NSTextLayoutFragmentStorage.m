@interface NSTextLayoutFragmentStorage
@end

@implementation NSTextLayoutFragmentStorage

void __68___NSTextLayoutFragmentStorage_offsetDeltaForLastTextLayoutFragment__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = [v13 textElement];

  if (v8)
  {
    v9 = [v13 rangeInElement];
    v10 = [*(a1 + 32) dataSource];
    v11 = [v7 location];
    v12 = [v9 location];
    *(*(*(a1 + 40) + 8) + 24) = [v10 offsetFromLocation:v11 toLocation:v12];

    *a4 = 1;
  }
}

id __74___NSTextLayoutFragmentStorage_adjustedTextRangeWithTextRange_adjustment___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v6 = a3 ^ 1u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74___NSTextLayoutFragmentStorage_adjustedTextRangeWithTextRange_adjustment___block_invoke_1;
  v11[3] = &unk_1E7265FE8;
  v11[4] = &v12;
  v8 = [WeakRetained enumerateTextLayoutFragmentFromLocation:v5 options:v6 usingBlock:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __90___NSTextLayoutFragmentStorage_enumerateTextLayoutFragmentInTextRange_options_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v15 = v9;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v9 rangeInElement];
  }

  v11 = v10;
  if (*(a1 + 56) == 1)
  {
    [v10 location];
  }

  else
  {
    [v10 endLocation];
  }
  v12 = ;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v12);

  v13 = [*(*(*(a1 + 48) + 8) + 40) compare:*(a1 + 32)];
  v14 = -1;
  if (!*(a1 + 56))
  {
    v14 = 1;
  }

  if (v13 == v14)
  {
    *a4 = 1;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __91___NSTextLayoutFragmentStorage_enumerateTextLayoutFragmentFromLocation_options_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v7;
  v10 = *(a1 + 32);
  v13 = v9;
  if (*(a1 + 40))
  {
    if (*(a1 + 41))
    {
      (*(v10 + 16))(v10, v9, v8, a4);
    }

    else
    {
      v11 = [v9 textElement];
      if (v11)
      {
        v12 = [v13 rangeInElement];
        (*(v10 + 16))(v10, v13, v12, a4);
      }

      else
      {
        (*(v10 + 16))(v10, v13, v8, a4);
      }
    }
  }

  else
  {
    (*(v10 + 16))(v10, v9, 0, a4);
  }
}

void __85___NSTextLayoutFragmentStorage_textLayoutFragmentForTextLocation_allowsTrailingEdge___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 containsLocation:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *a4 = 1;
}

void __85___NSTextLayoutFragmentStorage_textLayoutFragmentForTextLocation_allowsTrailingEdge___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  if (([v8 containsLocation:*(a1 + 32)] & 1) != 0 || *(a1 + 48) == 1 && (objc_msgSend(v8, "endLocation"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", *(a1 + 32)), v9, v10))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *a4 = 1;
}

void __55___NSTextLayoutFragmentStorage_setTextLayoutFragments___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 rangeInElement];
  [v2 setObject:v3 forRange:v4];
}

void __73___NSTextLayoutFragmentStorage_revalidateLayoutFragmentRangeForLocation___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = a3;
  v11 = v8;
  v10 = [v11 rangeInElement];
  if (([v9 isEqual:v10] & 1) == 0)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    objc_storeStrong((*(a1[5] + 8) + 40), v10);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }

  *a4 = 1;
}

@end