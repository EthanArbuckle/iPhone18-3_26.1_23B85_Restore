@interface UIFocusScrollOffsetResolverDifferential
@end

@implementation UIFocusScrollOffsetResolverDifferential

void __74___UIFocusScrollOffsetResolverDifferential_contentOffsetForScrollRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  _UIIntervalFromCGRect(a2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v5 = v4;
  v7 = v6;
  _UIIntervalFromCGRect(a2, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
  if (v7 >= 0.0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v5 + v7;
  }

  if (v9 < 0.0)
  {
    v8 = v8 + v9;
  }

  if (v10 > v8)
  {
    goto LABEL_17;
  }

  v11 = -v7;
  if (v7 >= 0.0)
  {
    v11 = v7;
  }

  v12 = v10 + v11;
  v13 = -v9;
  if (v9 >= 0.0)
  {
    v13 = v9;
  }

  if (v12 < v8 + v13)
  {
LABEL_17:
    if (v8 > v10)
    {
      goto LABEL_18;
    }

    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    v14 = v8 + v9;
    v15 = -v7;
    if (v7 >= 0.0)
    {
      v15 = v7;
    }

    if (v14 < v10 + v15)
    {
LABEL_18:
      _UIIntervalFromCGRect(a2, *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128));
      if (v17 >= v7)
      {
        if (v17 >= 0.0)
        {
          v29 = v16;
        }

        else
        {
          v29 = v16 + v17;
        }
      }

      else
      {
        _UIIntervalFromCGRect(a2, *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160));
        v19 = v18;
        v21 = v20;
        _UIIntervalFromCGRect(a2, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
        v24 = v22 + v23;
        if (v23 < 0.0)
        {
          v23 = -v23;
          v22 = v24;
        }

        v25 = v22 + v23 * 0.5;
        v26 = -v7;
        if (v7 >= 0.0)
        {
          v26 = v7;
        }

        if (v25 <= v10 + v26 * 0.5)
        {
          if (v21 >= 0.0)
          {
            v29 = v19;
          }

          else
          {
            v29 = v19 + v21;
          }
        }

        else
        {
          v27 = -v21;
          v28 = v19 + v21;
          if (v21 >= 0.0)
          {
            v27 = v21;
            v28 = v19;
          }

          v29 = v28 + v27 - v7;
        }
      }

      v30 = _UIPointValueForAxis(a2, *(a1 + 168), *(a1 + 176));
      v31 = _UISetPointValueForAxis(a2, *(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40), v29 + v30);
      v32 = *(*(a1 + 32) + 8);
      *(v32 + 32) = v31;
      *(v32 + 40) = v33;
    }
  }
}

@end