@interface UIFlowLayoutInfo
@end

@implementation UIFlowLayoutInfo

void __51___UIFlowLayoutInfo_setSizes_forItemsAtIndexPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AC88];
  v6 = a2;
  v7 = [a3 integerValue];
  v8 = [v6 integerValue];

  v9 = [v5 indexPathForItem:v7 inSection:v8];
  v10 = *(a1 + 32);
  v11 = *(v10 + 104);
  WeakRetained = objc_loadWeakRetained((v10 + 120));
  v13 = [v11 objectAtIndex:{objc_msgSend(WeakRetained, "_sectionArrayIndexForIndexPath:", v9)}];

  v14 = v9;
  v48 = v14;
  if (v13)
  {
    v15 = [v14 item];
    if (v15 < *(v13 + 272) + *(v13 + 264))
    {
      v16 = v15;
      do
      {
        v17 = [MEMORY[0x1E696AC88] indexPathForItem:v16 inSection:{objc_msgSend(v48, "section")}];
        [(_UIFlowLayoutSection *)v13 addInvalidatedIndexPath:v17];

        ++v16;
      }

      while (v16 < *(v13 + 272) + *(v13 + 264));
    }

    v18 = [*(v13 + 96) objectAtIndexedSubscript:{objc_msgSend(v48, "item")}];
    v19 = v18;
    if (v18)
    {
      v20 = objc_loadWeakRetained((v18 + 24));
      if (v20)
      {
        v21 = v20;
        v22 = [*(v13 + 104) indexOfObject:v20];
        if (v22 >= 1)
        {
          v23 = [*(v13 + 104) objectAtIndexedSubscript:v22 - 1];

          v24 = [v48 item];
          if (v23)
          {
            v25 = *(v23 + 40);
          }

          else
          {
            v25 = 0;
          }

          for (i = v24 - [v25 count]; i < objc_msgSend(v48, "item"); ++i)
          {
            v27 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:{objc_msgSend(v48, "section")}];
            [(_UIFlowLayoutSection *)v13 addInvalidatedIndexPath:v27];
          }

          v21 = v23;
        }

        v29 = *(v13 + 16);
        v28 = *(v13 + 24);
        v30 = *(v13 + 32);
        v31 = *(v13 + 40);
        v32 = objc_loadWeakRetained((v13 + 144));
        if (v32 && (v33 = v32[97], v32, v33 == 1))
        {
          if (v21)
          {
            v34 = v21[9];
            v35 = v21[10];
            v36 = v21[11];
            v37 = v21[12];
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v34 = 0;
          }

          MinX = CGRectGetMinX(*&v34);
          v50.origin.x = v29;
          v50.origin.y = v28;
          v50.size.width = v30;
          v50.size.height = v31;
          v39 = MinX - CGRectGetMinX(v50);
          v51.origin.x = v29;
          v51.origin.y = v28;
          v51.size.width = v39;
          v51.size.height = v31;
          v30 = v30 - CGRectGetWidth(v51);
          v52.origin.x = v29;
          v52.origin.y = v28;
          v52.size.width = v39;
          v52.size.height = v31;
          MaxX = CGRectGetMaxX(v52);
          MaxY = v28;
          v42 = v31;
        }

        else
        {
          if (v21)
          {
            v43 = v21[9];
            v44 = v21[10];
            v45 = v21[11];
            v46 = v21[12];
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v43 = 0;
          }

          MinY = CGRectGetMinY(*&v43);
          v53.origin.x = v29;
          v53.origin.y = v28;
          v53.size.width = v30;
          v53.size.height = v31;
          v42 = MinY - CGRectGetMinY(v53);
          v54.origin.x = v29;
          v54.origin.y = v28;
          v54.size.width = v30;
          v54.size.height = v42;
          v31 = v31 - CGRectGetHeight(v54);
          v55.origin.x = v29;
          v55.origin.y = v28;
          v55.size.width = v30;
          v55.size.height = v42;
          MaxY = CGRectGetMaxY(v55);
          MaxX = v29;
          v39 = v30;
        }

        *(v13 + 16) = v29;
        *(v13 + 24) = v28;
        *(v13 + 32) = v39;
        *(v13 + 40) = v42;
        -[_UIFlowLayoutSection computeLayoutInRect:forSection:invalidating:invalidationContext:](v13, [v48 section], 0, 0, MaxX, MaxY, v30, v31);
      }
    }
  }
}

void __48___UIFlowLayoutInfo_setSize_forItemAtIndexPath___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 numberWithInteger:v4];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
    v8 = objc_loadWeakRetained((*(a1 + 32) + 120));
    v9 = [v8 collectionView];
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = WeakRetained;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Warning: sizing information will be ignored since the section referenced %@ does not currently exist. layout=%@; collectionView=%@", &v10, 0x20u);
  }
}

@end