@interface UIFlowLayoutRow
@end

@implementation UIFlowLayoutRow

void __46___UIFlowLayoutRow_indexOfNearestItemAtPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (v7)
  {
    v9 = v7[4];
    v8 = v7[5];
    v11 = v7[6];
    v10 = v7[7];
  }

  else
  {
    v8 = 0.0;
    v11 = 0.0;
    v10 = 0.0;
    v9 = 0.0;
  }

  v32 = v7;
  if (*(a1 + 64) == 1)
  {
    v12 = *(a1 + 56);
    v34.origin.x = v9;
    v34.origin.y = v8;
    v34.size.width = v11;
    v34.size.height = v10;
    if (v12 < CGRectGetMinY(v34))
    {
      if (a3)
      {
        v35.origin.x = v9;
        v35.origin.y = v8;
        v35.size.width = v11;
        v35.size.height = v10;
        v13 = CGRectGetMinY(v35) - *(a1 + 56);
        v14 = a3 - 1;
        v15 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:a3 - 1];
        v16 = v15;
        v17 = *(a1 + 56);
        if (v15)
        {
          v18 = v15[4];
          v19 = v15[5];
          v20 = v15[6];
          v21 = v15[7];
        }

        else
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v18 = 0;
        }

        MaxY = CGRectGetMaxY(*&v18);
LABEL_14:
        if (v17 - MaxY <= v13)
        {
          v29 = a3;
        }

        else
        {
          v29 = v14;
        }

        *(*(*(a1 + 40) + 8) + 24) = v29;
        *a4 = 1;

        goto LABEL_24;
      }

LABEL_22:
      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_23;
    }

    v30 = *(a1 + 56);
    v38.origin.x = v9;
    v38.origin.y = v8;
    v38.size.width = v11;
    v38.size.height = v10;
    MaxX = CGRectGetMaxY(v38);
  }

  else
  {
    v23 = *(a1 + 48);
    v36.origin.x = v9;
    v36.origin.y = v8;
    v36.size.width = v11;
    v36.size.height = v10;
    if (v23 < CGRectGetMinX(v36))
    {
      if (a3)
      {
        v37.origin.x = v9;
        v37.origin.y = v8;
        v37.size.width = v11;
        v37.size.height = v10;
        v13 = CGRectGetMinX(v37) - *(a1 + 48);
        v14 = a3 - 1;
        v24 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:a3 - 1];
        v16 = v24;
        v17 = *(a1 + 48);
        if (v24)
        {
          v25 = v24[4];
          v26 = v24[5];
          v27 = v24[6];
          v28 = v24[7];
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v25 = 0;
        }

        MaxY = CGRectGetMaxX(*&v25);
        goto LABEL_14;
      }

      goto LABEL_22;
    }

    v30 = *(a1 + 48);
    v39.origin.x = v9;
    v39.origin.y = v8;
    v39.size.width = v11;
    v39.size.height = v10;
    MaxX = CGRectGetMaxX(v39);
  }

  if (v30 >= MaxX)
  {
    goto LABEL_24;
  }

  *(*(*(a1 + 40) + 8) + 24) = a3;
LABEL_23:
  *a4 = 1;
LABEL_24:
}

@end