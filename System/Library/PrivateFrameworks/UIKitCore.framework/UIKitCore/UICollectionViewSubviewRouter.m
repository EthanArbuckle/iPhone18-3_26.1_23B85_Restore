@interface UICollectionViewSubviewRouter
@end

@implementation UICollectionViewSubviewRouter

void __72___UICollectionViewSubviewRouter_addControlledSubview_zIndex_orderMode___block_invoke(uint64_t a1, void *obj, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (obj)
  {
    v9 = obj[3];
    if (v9 == -10000)
    {
      return;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 56);
  if (v10 < v9)
  {
LABEL_4:
    *a5 = 1;
    return;
  }

  if (v10 == v9)
  {
    if (obj)
    {
      v11 = obj[2];
      v12 = *(a1 + 64);
      if (v11 == v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = *(a1 + 64);
      if (!v12)
      {
LABEL_8:
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
        if (*(a1 + 72) == 1)
        {
          if (obj)
          {
            *(*(*(a1 + 40) + 8) + 24) = obj[1] + a4;
            ++obj[1];
          }

          else
          {
            *(*(*(a1 + 40) + 8) + 24) = a4;
          }
        }

        else
        {
          if (obj)
          {
            v13 = obj[1];
          }

          else
          {
            v13 = 0;
          }

          *(*(*(a1 + 40) + 8) + 24) = a4 + v13 - 1;
        }

        goto LABEL_4;
      }

      v11 = 0;
    }

    if (v12 < v11)
    {
      goto LABEL_4;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a3 + 1;
  if (obj)
  {
    v14 = obj[1];
  }

  else
  {
    v14 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v14 + a4;
}

uint64_t __78___UICollectionViewSubviewRouter__addControlledSubview_atPosition_relativeTo___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  *(*(*(result + 40) + 8) + 24) = a4;
  *a5 = *(result + 32) == a2;
  return result;
}

void *__108___UICollectionViewSubviewRouter__adjustTargetPosition_forAddingUncontrolledSubviewWithBookmark_relativeTo___block_invoke(void *result, uint64_t a2, uint64_t a3, unint64_t a4, BOOL *a5)
{
  v6 = result;
  v7 = *(result[7] + 8);
  if ((*(v7 + 24) & 0x8000000000000000) != 0 && result[4] == a2)
  {
    *(v7 + 24) = a3;
  }

  v8 = *(result[8] + 8);
  if ((*(v8 + 24) & 0x8000000000000000) != 0)
  {
    v9 = result[10];
    switch(v9)
    {
      case 0xFFFFFFFFFFFFFFFDLL:
        if (result[6] != a2)
        {
          goto LABEL_29;
        }

        *(v8 + 24) = a3;
        break;
      case 0xFFFFFFFFFFFFFFFELL:
        if (result[6] != a2)
        {
          goto LABEL_29;
        }

        *(v8 + 24) = a3 + 1;
        if (a2)
        {
          v10 = *(a2 + 8);
        }

        else
        {
          v10 = 0;
        }

        a4 += v10;
        break;
      case 0xFFFFFFFFFFFFFFFFLL:
        result = [*(result[5] + 8) count];
        *(*(v6[8] + 8) + 24) = result;
        a4 = v6[11];
        break;
      default:
        if (a2)
        {
          if (v9 < a4)
          {
            goto LABEL_29;
          }

          v11 = *(a2 + 8);
          v12 = v11 + a4;
          v13 = v11 + a4 - 1;
          if (v13 < v9)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v9 < a4)
          {
            goto LABEL_29;
          }

          v13 = a4 - 1;
          if (a4 - 1 < v9)
          {
            goto LABEL_29;
          }

          v11 = 0;
          v12 = a4;
        }

        v14 = result[4];
        if (v14)
        {
          v14 = *(v14 + 8);
        }

        if (v11 == v14)
        {
          v9 = *(*(result[7] + 8) + 24) >> 63;
        }

        else
        {
          LODWORD(v9) = v9 - a4 <= v13 - v9;
        }

        v15 = v9 == 0;
        if (v9)
        {
          v16 = a3;
        }

        else
        {
          v16 = a3 + 1;
        }

        *(v8 + 24) = v16;
        if (v15)
        {
          a4 = v12;
        }

        break;
    }

    *(*(v6[9] + 8) + 24) = a4;
  }

LABEL_29:
  v17 = (*(*(v6[7] + 8) + 24) & 0x8000000000000000) == 0 && *(*(v6[8] + 8) + 24) >= 0;
  *a5 = v17;
  return result;
}

void *__82___UICollectionViewSubviewRouter_shouldExchangeSubviewAtIndex_withSubviewAtIndex___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v5 = *(result[6] + 8);
  v8 = *(v5 + 24);
  v6 = (v5 + 24);
  v7 = v8;
  if (v8 < 0 && result[4] == a2 || (v9 = *(result[7] + 8), v10 = *(v9 + 24), v6 = (v9 + 24), v10 < 0) && result[5] == a2)
  {
    *v6 = a3;
    v7 = *(*(result[6] + 8) + 24);
  }

  v11 = (v7 & 0x8000000000000000) == 0 && *(*(result[7] + 8) + 24) >= 0;
  *a5 = v11;
  return result;
}

@end