@interface UIFlowLayoutSection
@end

@implementation UIFlowLayoutSection

void __61___UIFlowLayoutSection_sizeChangedForItem_atIndexPath_inRow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (v3[8] & 5) == 1)
  {
    v18 = v3;
    v4 = *(a1 + 32);
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 144));
      v6 = *MEMORY[0x1E695F060];
      if (WeakRetained)
      {
        v7 = *(WeakRetained + 11);
        if (v7 < 1)
        {
          v8 = *MEMORY[0x1E695F060];
        }

        else
        {
          v8 = vdivq_f64(*(WeakRetained + 72), vdupq_lane_s64(COERCE__INT64(v7), 0));
        }

LABEL_8:
        v16 = v6;
        v9 = vmovn_s64(vmvnq_s8(vceqq_f64(v8, v6)));
        v10 = v9.i8[0] | v9.i8[4];

        v3 = v18;
        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }

        v15 = *(v18 + 2);
        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = objc_loadWeakRetained((v11 + 144));
          if (v12)
          {
            v13 = *(v12 + 11);
            v14 = v16;
            if (v13 >= 1)
            {
              v14 = vdivq_f64(*(v12 + 72), vdupq_lane_s64(COERCE__INT64(v13), 0));
            }

            goto LABEL_13;
          }
        }

        else
        {
          v12 = 0;
        }

        v14 = 0uLL;
LABEL_13:
        v17 = v14;

        v3 = v18;
        *(v18 + 2) = v15;
        *(v18 + 3) = v17;
        goto LABEL_14;
      }
    }

    else
    {
      WeakRetained = 0;
      v6 = *MEMORY[0x1E695F060];
    }

    v8 = 0uLL;
    goto LABEL_8;
  }

LABEL_14:
}

uint64_t __52___UIFlowLayoutSection_estimatedIndexOfItemAtPoint___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52___UIFlowLayoutSection_estimatedIndexOfItemAtPoint___block_invoke_2;
  v7[3] = &unk_1E71002C0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v7[4] = v2;
  v7[5] = &v10;
  [v3 enumerateObjectsUsingBlock:v7];
  v4 = v11[3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(*(a1 + 32) + 104) lastObject];
    v4 = [(_UIFlowLayoutRow *)v5 indexOfNearestItemAtPoint:*(a1 + 48)];
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __52___UIFlowLayoutSection_estimatedIndexOfItemAtPoint___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v16 = v7;
  if (v7)
  {
    v9 = v7[9];
    v8 = v7[10];
    v10 = v7[11];
    v11 = v7[12];
  }

  else
  {
    v8 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
  }

  v18.origin.x = v9;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v11;
  if (!CGRectContainsPoint(v18, *(a1 + 48)))
  {
    if (*(a1 + 64) == 1)
    {
      v12 = *(a1 + 48);
      v19.origin.x = v9;
      v19.origin.y = v8;
      v19.size.width = v10;
      v19.size.height = v11;
      if (v12 < CGRectGetMinX(v19))
      {
LABEL_9:
        if (a3)
        {
          v14 = a3 - 1;
        }

        else
        {
          v14 = 0;
        }

        v15 = [*(*(a1 + 32) + 104) objectAtIndex:v14];
        *(*(*(a1 + 40) + 8) + 24) = [(_UIFlowLayoutRow *)v15 indexOfNearestItemAtPoint:*(a1 + 56)];

        goto LABEL_13;
      }

      if (*(a1 + 64))
      {
        goto LABEL_14;
      }
    }

    v13 = *(a1 + 56);
    v20.origin.x = v9;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v11;
    if (v13 >= CGRectGetMinY(v20))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  *(*(*(a1 + 40) + 8) + 24) = [(_UIFlowLayoutRow *)v16 indexOfNearestItemAtPoint:*(a1 + 56)];
LABEL_13:
  *a4 = 1;
LABEL_14:
}

void __71___UIFlowLayoutSection_setSize_forItemAtIndexPath_invalidationContext___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_block_invoke___s_category_1) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(WeakRetained + 15);
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_loadWeakRetained((*(a1 + 32) + 144));
    v8 = v7;
    if (v7)
    {
      v9 = objc_loadWeakRetained(v7 + 15);
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 collectionView];
    v11 = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Warning: sizing information will be ignored since the item referenced %@ does not currently exist. layout=%@; collectionView=%@", &v11, 0x20u);
  }
}

@end