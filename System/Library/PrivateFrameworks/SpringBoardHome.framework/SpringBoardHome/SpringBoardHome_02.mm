uint64_t SBHIconGridRangeCellIndexAboveColumn(unint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  if (a1 >= a3)
  {
    return a1 + a4 - a3;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t SBHIconGridRangeCellIndexForCorner(uint64_t result, int a2, char a3, unsigned __int16 a4)
{
  if ((a3 & 1) == 0)
  {
    if ((a3 & 2) != 0)
    {
      return result + a2 - 1;
    }

    else
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
      v5 = HIWORD(a2) - 1;
      if ((a3 & 4) != 0)
      {
        v4 = result + v5 * a4;
      }

      v6 = result + a2 + v5 * a4 - 1;
      if ((a3 & 8) != 0)
      {
        return v6;
      }

      else
      {
        return v4;
      }
    }
  }

  return result;
}

void SBHIconGridRangeEnumerateCorners(uint64_t a1, int a2, unsigned __int16 a3, void *a4)
{
  v7 = a4;
  v10 = 0;
  v7[2](v7, 1, a1, &v10);
  if ((v10 & 1) == 0)
  {
    v8 = a1 + a2 - 1;
    v7[2](v7, 2, v8, &v10);
    if ((v10 & 1) == 0)
    {
      v9 = HIWORD(a2) - 1;
      v7[2](v7, 8, v8 + v9 * a3, &v10);
      if ((v10 & 1) == 0)
      {
        v7[2](v7, 4, v9 * a3 + a1, &v10);
      }
    }
  }
}

void SBHIconGridRangeEnumerateOutOfBoundsCellIndexesOnEdge(unint64_t a1, int a2, int a3, unint64_t a4, unsigned int a5, void *a6)
{
  v47 = a6;
  v11 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      v12 = 0;
      v45 = 0;
      v46 = 0;
      v13 = 0;
      if (a3 == 1)
      {
        v13 = a1 - a5;
        if (a1 < a5 || v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_75;
        }

        v14 = 3;
        if (a4)
        {
          v15 = 1;
        }

        else
        {
          v15 = 3;
        }

        if (!a4)
        {
          v14 = 1;
        }

        v45 = v14;
        v46 = v15;
        v12 = v13 % a5;
        v11 = ((a2 | ((v13 / a5) << 16)) + 0x10000) & 0xFFFF0000 | a2;
      }
    }

    else
    {
      if (!a1)
      {
        goto LABEL_75;
      }

      v13 = a1 - 1;
      v24 = (a1 - 1) / a5;
      if (a1 / a5 != v24)
      {
        goto LABEL_75;
      }

      v25 = 2;
      if (a4)
      {
        v26 = 0;
      }

      else
      {
        v26 = 2;
      }

      if (!a4)
      {
        v25 = 0;
      }

      v45 = v25;
      v46 = v26;
      v27 = v13 - v24 * a5;
      if (a1 == 0x8000000000000000)
      {
        v27 = 0x7FFFFFFFFFFFFFFELL;
      }

      v12 = v13 - v27;
      v11 = a2 & 0xFFFF0000 | (v27 + 1);
    }

    goto LABEL_50;
  }

  if (a3 == 3)
  {
    v49 = a1 + a5 * (HIWORD(a2) - 1);
    v50 = 65537;
    if (!SBHIconGridRangeOffset(&v49, 0, 1, a5))
    {
      goto LABEL_75;
    }

    v20 = a2;
    v12 = v49;
    v28 = 3;
    if (a4)
    {
      v29 = 0;
    }

    else
    {
      v29 = 3;
    }

    if (!a4)
    {
      v28 = 0;
    }

    v45 = v28;
    v46 = v29;
    if (v49 == 0x7FFFFFFFFFFFFFFFLL)
    {
      LODWORD(v30) = -1;
    }

    else
    {
      v30 = v49 / a5 + 1;
    }

    v31 = (a5 - (v30 << 16) + 0x10000) & 0xFFFF0000;
  }

  else
  {
    v12 = 0;
    v45 = 0;
    v46 = 0;
    v13 = 0;
    if (a3 != 2)
    {
      goto LABEL_50;
    }

    v12 = a1 + a2;
    if (HIWORD(a2))
    {
      v16 = 1;
      v17 = a1 + a5;
      do
      {
        v18 = v16;
        if (HIWORD(a2) == v16)
        {
          break;
        }

        v19 = v17;
        ++v16;
        v17 += a5;
      }

      while (v19 > v12 || a2 + v19 <= v12);
      if (v18 < HIWORD(a2))
      {
        goto LABEL_75;
      }
    }

    v20 = a2 & 0xFFFF0000;
    v21 = 3;
    if (a4)
    {
      v22 = 0;
    }

    else
    {
      v22 = 3;
    }

    if (!a4)
    {
      v21 = 0;
    }

    v45 = v21;
    v46 = v22;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      LOWORD(v23) = -1;
    }

    else
    {
      v23 = v12 % a5 + 1;
    }

    v31 = (a5 - v23 + 1);
  }

  v11 = v31 | v20;
  v13 = v12;
LABEL_50:
  v32 = v47[2];
  v48 = 0;
  v32(v47, v13, &v48);
  if ((v48 & 1) == 0)
  {
    v33 = v11 >> 16;
    v34 = v13;
    v44 = v12 + v11;
    do
    {
      v49 = v34;
      v50 = 65537;
      if (!SBHIconGridRangeOffset(&v49, v46, 1, a5) || v11 < 0x10000)
      {
        goto LABEL_54;
      }

      v34 = v49;
      if (v12 > v49 || v44 <= v49)
      {
        v40 = v12 + a5;
        v41 = 1;
        do
        {
          v42 = v41;
          if (v33 == v41)
          {
            break;
          }

          v43 = v40;
          ++v41;
          v40 += a5;
        }

        while (v43 > v49 || v11 + v43 <= v49);
        if (v42 >= v33)
        {
LABEL_54:
          v49 = v13;
          a4 = a4 & 0xFFFFFFFF00000000 | a5;
          if (!SBHIconGridRangeOffset(&v49, v45, 1, a4) || v11 < 0x10000)
          {
            break;
          }

          v34 = v49;
          if (v12 > v49 || v44 <= v49)
          {
            v35 = v12 + a5;
            v36 = 1;
            do
            {
              v37 = v36;
              if (v33 == v36)
              {
                break;
              }

              v38 = v35;
              ++v36;
              v35 += a5;
            }

            while (v38 > v49 || v11 + v38 <= v49);
            v13 = v49;
            if (v37 >= v33)
            {
              break;
            }
          }

          else
          {
            v13 = v49;
          }
        }
      }

      v48 = 0;
      (v47[2])(v47, v34, &v48);
    }

    while ((v48 & 1) == 0);
  }

LABEL_75:
}

unint64_t SBHIconGridRangeExtendToGridEdges(unint64_t result, uint64_t a2, char a3, unsigned __int16 a4)
{
  if ((a3 & 2) == 0)
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if ((a3 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0x7FFFFFFFFFFFFFFELL;
  }

  else
  {
    v4 = result % a4;
  }

  result -= v4;
  if ((a3 & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a3 & 1) == 0)
  {
    return result;
  }

LABEL_10:
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0x7FFFFFFFFFFFFFFELL;
    v6 = a4;
  }

  else
  {
    v6 = a4;
    v5 = result / a4;
  }

  result -= v5 * v6;
  return result;
}

uint64_t SBHIconGridRangeOffset(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *a1;
  v5 = a1[1];
  if (a3)
  {
    v9 = 0;
    v11 = a4;
    v12 = v5;
    v17 = v6;
    v18 = v5;
    while (1)
    {
      v13 = v5;
      v14 = v6;
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          if (!v6)
          {
            v6 = 0;
            goto LABEL_24;
          }

          --v6;
          if (v14 / v11 != (v14 - 1) / v11)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (a2 != 3)
          {
LABEL_25:
            v9 = 0;
            v6 = v17;
            v5 = v18;
            goto LABEL_24;
          }

          if (v6 / v11 != (v6 + v5) / v11)
          {
            goto LABEL_23;
          }

          ++v6;
        }
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          goto LABEL_25;
        }

        if (v6 >= v11)
        {
          v6 -= v11;
        }

        else
        {
          v6 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v5 = v12;
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_23:
          v5 = v13;
          v6 = v14;
          goto LABEL_24;
        }
      }

      else
      {
        v6 += v11;
        if (SBHIconGridRangeIntersection(0, a4, v14 + v11, v12, a4) != v6)
        {
          goto LABEL_23;
        }

        v5 = v12;
        if (v15 != v12)
        {
          goto LABEL_23;
        }
      }

      if (a3 == ++v9)
      {
        v9 = a3;
        goto LABEL_24;
      }
    }
  }

  v9 = 0;
LABEL_24:
  *a1 = v6;
  a1[1] = v5;
  return v9;
}

id SBHIconGridRangeCellIndexesNotInIconGridRange(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SBHIconGridRangeCellIndexesNotInIconGridRange_block_invoke;
  v13[3] = &unk_1E808EBA8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v11 = v10;
  v14 = v11;
  SBHIconGridRangeEnumerateCellIndexes(a1, a2, a5, v13);

  return v11;
}

uint64_t __SBHIconGridRangeCellIndexesNotInIconGridRange_block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(result + 48);
  if (!WORD1(v2))
  {
    return [*(result + 32) addIndex:a2];
  }

  v3 = *(result + 40);
  if (v3 > a2 || v3 + v2 <= a2)
  {
    v5 = *(result + 56);
    v6 = v3 + v5;
    v7 = 1;
    do
    {
      v8 = v7;
      if (WORD1(v2) == v7)
      {
        break;
      }

      v9 = v6;
      ++v7;
      v6 += v5;
    }

    while (v9 > a2 || *(result + 48) + v9 <= a2);
    if (v8 >= WORD1(v2))
    {
      return [*(result + 32) addIndex:a2];
    }
  }

  return result;
}

id SBHLayoutDescriptionForIconGridRange(unint64_t a1, int a2, unsigned int a3)
{
  v6 = [MEMORY[0x1E696AD60] string];
  if (a3 >= 0x10000)
  {
    v7 = 0;
    v25 = 0;
    v23 = HIWORD(a3);
    v8 = a3;
    v9 = HIWORD(a2);
    v10 = a3;
    v11 = a2;
    v12 = a1 + a2;
    v22 = a3 - 1 + 1;
    v13 = a1 + a3;
    do
    {
      if (v8)
      {
        v24 = v7;
        v14 = 0;
        v15 = v25;
        do
        {
          if (!v9)
          {
            goto LABEL_14;
          }

          if (a1 <= v15 && v12 > v15)
          {
            goto LABEL_13;
          }

          v16 = v13;
          v17 = 1;
          do
          {
            v18 = v17;
            if (v9 == v17)
            {
              break;
            }

            v19 = v16;
            ++v17;
            v16 += v10;
          }

          while (v19 > v15 || v11 + v19 <= v15);
          if (v18 < v9)
          {
LABEL_13:
            v20 = @"*\t";
          }

          else
          {
LABEL_14:
            v20 = @"-\t";
          }

          [v6 appendString:v20];
          ++v15;
          ++v14;
        }

        while (v14 != v8);
        v25 += v22;
        v7 = v24;
      }

      [v6 appendString:@"\n"];
      ++v7;
    }

    while (v7 != v23);
  }

  return v6;
}

unint64_t SBHIconGridRangeGetBounds@<X0>(unint64_t result@<X0>, int a2@<W1>, unsigned __int16 a3@<W2>, unint64_t *a4@<X8>)
{
  v4 = result / a3;
  v5 = result % a3;
  *a4 = v5;
  a4[1] = v5 + a2;
  a4[2] = v4;
  a4[3] = v4 + HIWORD(a2);
  return result;
}

uint64_t SBHIconGridRangeBoundsGetRange(uint64_t *a1, unsigned __int16 a2)
{
  v3 = *a1;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3 + a1[2] * a2;
  }

  return result;
}

BOOL SBHIconGridRangeIntersects(unint64_t a1, int a2, unint64_t a3, int a4, unsigned __int16 a5)
{
  v5 = SBHIconGridRangeIntersection(a1, a2, a3, a4, a5);
  v7 = v6 != 0;
  if ((v6 & 0xFFFF0000) == 0)
  {
    v7 = 0;
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL && v7;
}

uint64_t SBHIconGridRangeIntersectsIndexSet(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __SBHIconGridRangeIntersectsIndexSet_block_invoke;
  v10[3] = &unk_1E808DB18;
  v10[5] = a1;
  v10[6] = a2;
  v11 = a4;
  v10[4] = &v12;
  [v7 enumerateIndexesUsingBlock:v10];
  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v8;
}

void sub_1BECD8664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBHIconGridRangeIntersectsIndexSet_block_invoke(uint64_t result, unint64_t a2, _BYTE *a3)
{
  v3 = *(result + 48);
  if (WORD1(v3))
  {
    v4 = *(result + 40);
    if (v4 <= a2 && v4 + v3 > a2)
    {
      goto LABEL_11;
    }

    v6 = *(result + 56);
    v7 = v4 + v6;
    v8 = 1;
    do
    {
      v9 = v8;
      if (WORD1(v3) == v8)
      {
        break;
      }

      v10 = v7;
      ++v8;
      v7 += v6;
    }

    while (v10 > a2 || *(result + 48) + v10 <= a2);
    if (v9 < WORD1(v3))
    {
LABEL_11:
      *(*(*(result + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t SBHIconGridRangeIsContainedInIndexSet(uint64_t a1, int a2, void *a3, unsigned __int16 a4)
{
  v7 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SBHIconGridRangeIsContainedInIndexSet_block_invoke;
  v11[3] = &unk_1E808E400;
  v8 = v7;
  v12 = v8;
  v13 = &v14;
  SBHIconGridRangeEnumerateCellIndexes(a1, a2, a4, v11);
  v9 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v9;
}

void sub_1BECD87E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBHIconGridRangeIsContainedInIndexSet_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsIndex:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t SBHIconGridRangeDifference(unint64_t a1, int a2, unint64_t a3, int a4, unsigned __int16 a5)
{
  v5 = a1 / a5;
  v6 = a1 % a5;
  v7 = v6 + a2;
  v8 = v5 + HIWORD(a2);
  v9 = a3 / a5;
  v10 = a3 % a5;
  v11 = v10 + a4;
  v12 = v9 + HIWORD(a4);
  if (v6 == v10 && v7 == v11)
  {
    if (v5 < v9 && v8 > v12)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v9 != v5)
    {
      if (v5 < v9 || v12 == v8)
      {
        v12 = a1 / a5;
      }

      else if (v8 <= v12)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    return v6 + v12 * a5;
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 == v9 && v8 == v12 && (v6 >= v10 || v7 <= v11))
  {
    if (v7 <= v11)
    {
      v14 = v6;
    }

    else
    {
      v14 = v10 + a4;
    }

    if (v6 == v10)
    {
      v6 = v10 + a4;
    }

    else
    {
      v6 = v14;
    }

    v12 = v5;
    return v6 + v12 * a5;
  }

  return result;
}

uint64_t SBHIconGridRangeDivide(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned __int16 a7)
{
  v7 = a2 >> 16;
  if (a6 > 1)
  {
    if (a6 != 2)
    {
      if (a6 != 3)
      {
        return result;
      }

      *a3 = result + a7 * WORD1(a2) - a7 * a5;
      *(a3 + 8) = a2;
      *(a3 + 10) = a5;
      *a4 = result;
      goto LABEL_8;
    }

    *a3 = result + a2 - a5;
    *(a3 + 8) = a5;
    *(a3 + 10) = WORD1(a2);
    *a4 = result;
LABEL_11:
    *(a4 + 8) = a2 - a5;
    goto LABEL_12;
  }

  if (!a6)
  {
    *a3 = result;
    *(a3 + 8) = a5;
    *(a3 + 10) = WORD1(a2);
    *a4 = result + a5;
    goto LABEL_11;
  }

  if (a6 != 1)
  {
    return result;
  }

  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 10) = a5;
  *a4 = result + a7 * a5;
LABEL_8:
  *(a4 + 8) = a2;
  LOWORD(v7) = WORD1(a2) - a5;
LABEL_12:
  *(a4 + 10) = v7;
  return result;
}

uint64_t SBHIconGridRangeInset(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a4;
  v7 = a3;
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = a1 % a5 + 1;
    v10 = a1 / a5 + 1;
  }

  v11 = v9 + a3;
  v12 = v10 + a4;
  if ((v10 + a4) <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 + a4;
  }

  if (v11 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9 + a3;
  }

  if (SBIconCoordinateIsNotFound(v14, v13))
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v14 + (v13 - 1) * a5 - 1;
  }

  v16 = v11 - 1;
  v17 = v12 - 1;
  if (v11 > 0)
  {
    v16 = 0;
  }

  v18 = a2 - 2 * v7 + v16;
  if (v12 > 0)
  {
    v17 = 0;
  }

  return SBHIconGridRangeIntersection(v15, ((v17 - 2 * v6 + HIWORD(a2)) << 16) | v18, 0, a5, a5);
}

unint64_t SBHIconGridRangeSubrangeIncludingCellIndex(unint64_t a1, unsigned __int16 a2, unint64_t a3, int a4, unsigned __int16 a5)
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = a5;
  }

  else
  {
    v9 = a5;
    v7 = a3 % a5 + 1;
    v8 = a3 / a5 + 1;
  }

  v10 = (v7 - 1) / a4 * a4;
  v11 = (v8 - 1) / HIWORD(a4) * HIWORD(a4);
  IsNotFound = SBIconCoordinateIsNotFound(v10 + 1, v11 + 1);
  v13 = v10 + v11 * v9;
  if (IsNotFound)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13 % a2 + a1 % v9 + (v13 / a2 + a1 / v9) * v9;
}

uint64_t SBHIconGridRangeAnchoredEdges(unint64_t a1, int a2, unint64_t a3, int a4, unsigned __int16 a5)
{
  v8 = SBHIconGridRangeIntersection(a1, a2, a3, a4, a5);
  v9 = v8;
  v12 = v8 + v11 + (v10 - 1) * a5 - 1;
  v13 = a3 + a4;
  v14 = a3 <= v8 && v13 > v8;
  v15 = v14;
  v16 = a3 - a5 + HIWORD(a4) * a5;
  v17 = 4;
  if (v14)
  {
    v17 = 5;
  }

  if (v16 + a4 <= v12 || v16 > v12)
  {
    result = v15;
  }

  else
  {
    result = v17;
  }

  if ((a4 & 0xFFFF0000) != 0)
  {
    if (a3 <= v9 && a3 + 1 > v9)
    {
      goto LABEL_23;
    }

    v20 = a3 + a5;
    v21 = 1;
    do
    {
      v22 = v21;
      if (HIWORD(a4) == v21)
      {
        break;
      }

      v23 = v20;
      ++v21;
      v20 += a5;
    }

    while (v23 > v9 || v23 + 1 <= v9);
    if (v22 < HIWORD(a4))
    {
LABEL_23:
      result |= 2uLL;
    }

    if (v13 > v12 && v13 - 1 <= v12)
    {
      return result | 8;
    }

    v24 = a3 + a5 + a4;
    v25 = 1;
    do
    {
      v26 = v25;
      if (HIWORD(a4) == v25)
      {
        break;
      }

      v27 = v24;
      ++v25;
      v24 += a5;
    }

    while (v27 <= v12 || v27 - 1 > v12);
    if (v26 < HIWORD(a4))
    {
      return result | 8;
    }
  }

  return result;
}

uint64_t SBHIconGridRangeTouchedEdges(unint64_t a1, int a2, unint64_t a3, int a4, unsigned __int16 a5)
{
  if (SBHIconGridRangeIntersection(a1, a2, a3, (HIWORD(a4) << 16) | a4, a5) != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v10 = a1 / a5;
  v11 = a1 % a5;
  v12 = v10 + HIWORD(a2);
  v13 = a3 / a5;
  v14 = a3 % a5;
  v15 = v13 + HIWORD(a4);
  v16 = v10 - HIWORD(a4);
  if (v10 < HIWORD(a4))
  {
    v16 = 0;
  }

  v17 = v13 >= v16;
  v18 = v15 <= v12 + HIWORD(a4);
  v19 = 2;
  if (v11 != v14 + a4 || !v17 || !v18)
  {
    v19 = 0;
  }

  v20 = !v17 || !v18;
  v21 = v11 + a2;
  v22 = v19 | 8;
  if (v20)
  {
    v22 = 0;
  }

  v23 = v11 - a4;
  if (v11 < a4)
  {
    v23 = 0;
  }

  v24 = v14 >= v23;
  v25 = v14 <= v21;
  if (v21 == v14)
  {
    v26 = v22;
  }

  else
  {
    v26 = v19;
  }

  v27 = v24 && v25;
  v20 = v27 == 0;
  v28 = v26 | (v10 == v15) & v27;
  if (!v20)
  {
    v26 = v28 | 4;
  }

  if (v12 == v13)
  {
    return v26;
  }

  else
  {
    return v28;
  }
}

void SBHIconGridRangeEnumerateTouchingRanges(unint64_t a1, int a2, int a3, unsigned int a4, char a5, void *a6)
{
  v11 = a6;
  v12 = v11;
  v13 = a3;
  if (a3)
  {
    v14 = HIWORD(a3);
    if (HIWORD(a3))
    {
      if (a4 && (a4 & 0xFFFF0000) != 0)
      {
        v46 = a5;
        v47 = v11;
        v45 = a3;
        a3 = a3;
        v44 = a4;
        v48 = HIWORD(a4);
        v39 = 2 * v14 + HIWORD(a4);
        v43 = a4 + 2 * a3;
        v38 = v43 * v14;
        v41 = v14;
        v42 = v38 + a3;
        v15 = a1 % a4 + (v38 + a3) % v43 + (a1 / a4 + (v38 + a3) / v43) * v43;
        v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v17 = 0;
        v50 = v15;
        v18 = HIWORD(a2) + 1;
        v19 = v15 + a2;
        do
        {
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19 + v17 * v43];
          [v16 addObject:v20];

          ++v17;
          --v18;
        }

        while (v18);
        v21 = v39;
        if (v48 == 0xFFFF)
        {
          v21 = -1;
        }

        v40 = v21;
        v49 = v43 * (HIWORD(a2) - 1);
        if (a3 + a2 != 1)
        {
          v22 = 0;
          v23 = a3 + a2 - 1;
          do
          {
            v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v49 + v43 + v19 + ~v22];
            [v16 addObject:v24];

            ++v22;
            --v23;
          }

          while (v23);
        }

        v25 = 0;
        v37 = a2;
        v26 = v41 + HIWORD(a2);
        do
        {
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v49 + v43 + v50 - (a3 + v25 * v43)];
          [v16 addObject:v27];

          ++v25;
          --v26;
        }

        while (v26);
        v28 = v37 + a3 + 1;
        do
        {
          v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v50 - (v13 + v38) + v26];
          [v16 addObject:v29];

          ++v26;
          --v28;
        }

        while (v28);
        v30 = v41 - 1;
        if (v41 != 1)
        {
          v31 = 0;
          v32 = v19 - v43 * v30;
          v33 = v30;
          do
          {
            v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32 + v31 * v43];
            [v16 addObject:v34];

            ++v31;
            --v33;
          }

          while (v33);
        }

        v35 = objc_alloc_init(MEMORY[0x1E696AD50]);
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __SBHIconGridRangeEnumerateTouchingRanges_block_invoke;
        v51[3] = &unk_1E808EE50;
        v56 = v45;
        v57 = v43;
        v58 = v40;
        v59 = v46 & 1;
        v54 = v42;
        v55 = v44;
        v52 = v35;
        v12 = v47;
        v53 = v47;
        v36 = v35;
        [v16 enumerateObjectsUsingBlock:v51];
      }
    }
  }
}

void __SBHIconGridRangeEnumerateTouchingRanges_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedIntegerValue];
  v5 = *(a1 + 64);
  v6 = *(a1 + 68);
  if (SBHIconGridRangeIntersection(v4, *(a1 + 64), *(a1 + 48), *(a1 + 56), v6) == v4 && v5 == v7)
  {
    if ((*(a1 + 72) & 1) != 0 || (v15 = 0, v16 = &v15, v17 = 0x2020000000, v18 = 0, v9 = *(a1 + 32), v13[0] = MEMORY[0x1E69E9820], v13[1] = 3221225472, v13[2] = __SBHIconGridRangeEnumerateTouchingRanges_block_invoke_2, v13[3] = &unk_1E808DB18, v13[5] = v4, v13[6] = v5, v14 = v6, v13[4] = &v15, [v9 enumerateIndexesUsingBlock:v13], v10 = *(v16 + 24), _Block_object_dispose(&v15, 8), (v10 & 1) == 0))
    {
      (*(*(a1 + 40) + 16))();
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __SBHIconGridRangeEnumerateTouchingRanges_block_invoke_3;
      v11[3] = &unk_1E808C408;
      v12 = *(a1 + 32);
      SBHIconGridRangeEnumerateCellIndexes(v4, v5, *(a1 + 68), v11);
    }
  }
}

void sub_1BECD9380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SBHIconGridRangeEnumerateTouchingRanges_block_invoke_2(uint64_t result, unint64_t a2, _BYTE *a3)
{
  v3 = *(result + 48);
  if (WORD1(v3))
  {
    v4 = *(result + 40);
    if (v4 <= a2 && v4 + v3 > a2)
    {
      goto LABEL_11;
    }

    v6 = *(result + 56);
    v7 = v4 + v6;
    v8 = 1;
    do
    {
      v9 = v8;
      if (WORD1(v3) == v8)
      {
        break;
      }

      v10 = v7;
      ++v8;
      v7 += v6;
    }

    while (v10 > a2 || *(result + 48) + v10 <= a2);
    if (v9 < WORD1(v3))
    {
LABEL_11:
      *(*(*(result + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t SBHIconGridRangeFitInsideIconGridRange(unint64_t a1, int a2, unint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (SBHIconGridRangeIntersection(a1, a2, a3, a4, a5) == a3 && v11 == v6)
  {
    goto LABEL_28;
  }

  if (a2 >= v6 && HIWORD(a2) >= WORD1(v6))
  {
    v13 = a1 / v5;
    v14 = a1 % v5;
    v15 = v7 / v5;
    v16 = v7 % v5;
    v29 = v7;
    v30 = v6;
    v17 = v14 - v16;
    if (v14 <= v16)
    {
      v18 = v14 + a2;
      v19 = v16 + v6;
      v20 = v19 >= v18;
      v21 = v19 - v18;
      if (v21 == 0 || !v20)
      {
        goto LABEL_18;
      }

      do
      {
        if (!v7)
        {
          break;
        }

        if (v7 / v5 != (v7 - 1) / v5)
        {
          break;
        }

        --v7;
        --v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        if (v7 / v5 != (v6 + v7) / v5)
        {
          break;
        }

        ++v7;
        --v17;
      }

      while (v17);
    }

    v29 = v7;
LABEL_18:
    if (v13 > v15)
    {
      SBHIconGridRangeOffset(&v29, 0, v13 - v15, a5);
      return v29;
    }

    v22 = v13 + HIWORD(a2);
    v23 = v15 + WORD1(v6);
    v20 = v23 >= v22;
    v24 = v23 - v22;
    if (v24 == 0 || !v20)
    {
      return v7;
    }

    v25 = v7 - v5;
    if (v7 >= v5 && v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v6;
      v26 = 2 * v5 - v7 + 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v7 = v25;
        if (!--v24)
        {
          break;
        }

        v27 = v26;
        v25 -= v5;
        if (v7 < v5)
        {
          break;
        }

        v26 += v5;
      }

      while (v27);
    }

LABEL_28:
    v30 = v6;
    return v7;
  }

  LODWORD(v30) = 0;
  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t SBIconResizeHandleMetricsMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, __int128 a8, uint64_t a9, uint64_t a10)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = result;
  *(a2 + 48) = a8;
  *(a2 + 64) = a9;
  *(a2 + 72) = a10;
  return result;
}

uint64_t SBIconResizeHandleMetricsEqualToIconResizeHandleMetrics(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64)))));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

__CFString *SBHStringForFixedIconLocationBehavior(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E808EEA0[a1];
  }
}

__CFString *SBHStringForIconDisplacementBehavior(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E808EEC0[a1];
  }
}

__CFString *SBHStringForIconLayoutBehavior(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"allowedOnAnyRow"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"allowedOnAnyColumn"];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"default";
  }

  return v4;
}

__CFString *SBHStringForIconImageOptions(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    v4 = @"masked";
  }

  else
  {
    v4 = @"unmasked";
  }

  [v2 addObject:v4];
  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"cached only"];
    if ((a1 & 4) == 0)
    {
LABEL_6:
      if ((a1 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_6;
  }

  [v3 addObject:@"skip fallback"];
  if ((a1 & 8) == 0)
  {
LABEL_7:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"skip cache"];
  if ((a1 & 0x10) == 0)
  {
LABEL_8:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  [v3 addObject:@"bitmap only"];
  if ((a1 & 0x20) != 0)
  {
LABEL_9:
    [v3 addObject:@"force synchronous"];
  }

LABEL_10:
  if ([v3 count])
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"default";
  }

  return v5;
}

__CFString *SBHStringForIconImageLoadPriority(uint64_t a1)
{
  if ((a1 + 2) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E808EEE0[a1 + 2];
  }
}

void *__getAPUIIconLocationAppPredictionsSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppPredictionUIWidgetLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppPredictionUIWidgetLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E808EE70;
    v7 = 0;
    AppPredictionUIWidgetLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = AppPredictionUIWidgetLibraryCore_frameworkLibrary_0;
    if (AppPredictionUIWidgetLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AppPredictionUIWidgetLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "APUIIconLocationAppPredictions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAPUIIconLocationAppPredictionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppPredictionUIWidgetLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AppPredictionUIWidgetLibraryCore_frameworkLibrary_0 = result;
  return result;
}

__CFString *NSStringFromSBIconViewCustomIconImageViewControllerPresentationMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E808F188[a1];
  }
}

void sub_1BECDFBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BECE451C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1BECE529C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1BECEBF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t pressesContainSelect(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (pressIsSelect(*(*(&v6 + 1) + 8 * i)))
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_1BECEE450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BECEFFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL pressIsSelect(void *a1)
{
  v1 = a1;
  if ([v1 type] == 4)
  {
    v2 = 1;
  }

  else
  {
    v3 = [v1 key];
    v2 = [v3 keyCode] == 81 && objc_msgSend(v3, "modifierFlags") == 0x100000;
  }

  return v2;
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1BECF8180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBStringForIconDragContextState(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E808F2A8[a1];
  }
}

id _SBHIconLibraryQueryCanonicalizedString(void *a1, void *a2, void *a3)
{
  v5 = _SBHIconLibraryQueryCanonicalizedString_onceToken;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (v5 != -1)
  {
    _SBHIconLibraryQueryCanonicalizedString_cold_1();
  }

  v9 = [v8 stringByTrimmingCharactersInSet:_SBHIconLibraryQueryCanonicalizedString_queryDisallowedCharacterSet];

  v10 = [v9 componentsSeparatedByCharactersInSet:v6];

  v11 = [v10 bs_filter:&__block_literal_global_94_0];
  v12 = [v11 componentsJoinedByString:v7];

  return v12;
}

void sub_1BECFAC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BECFC5D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void *SBHContentSizeCategoryOneSmallerThanSizeCategory(void *a1)
{
  v1 = a1;
  v2 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC20]);
  v3 = *MEMORY[0x1E69DDC28];
  if (v2)
  {
    v4 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC28]);
    v3 = *MEMORY[0x1E69DDC30];
    if (v4)
    {
      v5 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC30]);
      v3 = *MEMORY[0x1E69DDC38];
      if (v5)
      {
        v6 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC38]);
        v3 = *MEMORY[0x1E69DDC40];
        if (v6)
        {
          v7 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC40]);
          v3 = *MEMORY[0x1E69DDC50];
          if (v7)
          {
            v8 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC50]);
            v3 = *MEMORY[0x1E69DDC58];
            if (v8)
            {
              v9 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC58]);
              v3 = *MEMORY[0x1E69DDC60];
              if (v9)
              {
                v10 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC60]);
                v3 = *MEMORY[0x1E69DDC70];
                if (v10)
                {
                  v11 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC70]);
                  v3 = *MEMORY[0x1E69DDC78];
                  if (v11)
                  {
                    v12 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC78]);
                    v3 = *MEMORY[0x1E69DDC88];
                    if (v12)
                    {
                      v13 = UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC88]);
                      v3 = *MEMORY[0x1E69DDC68];
                      if (v13)
                      {
                        if (UIContentSizeCategoryCompareToCategory(v1, *MEMORY[0x1E69DDC68]))
                        {
                          v3 = *MEMORY[0x1E69DDC90];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v14 = v3;

  return v3;
}

BOOL SBHContentSizeCategoryIsInRange(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = SBHContentSizeCategoryClip(v5, a2, a3);
  v7 = UIContentSizeCategoryCompareToCategory(v5, v6);

  return v7 == NSOrderedSame;
}

void sub_1BECFF3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL SBLibraryUseSectionsForQuery(void *a1)
{
  v1 = [a1 searchString];
  v2 = [v1 length] == 0;

  return v2;
}

id SBHLibrarySectionIdentifierForSectionWithIndex(void *a1, uint64_t a2)
{
  v3 = [a1 sectionTitles];
  v4 = [v3 objectAtIndexedSubscript:a2];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"section-(%ld)-%@-indexable", a2, v4];

  return v5;
}

void sub_1BED0AC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BED0FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED127D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBHLibraryScreenSizeBucket(unint64_t a1)
{
  if (a1 > 0x1E)
  {
    goto LABEL_6;
  }

  if (((1 << a1) & 0x7332CB48) != 0)
  {
    return 1;
  }

  if (((1 << a1) & 0x88820A4) != 0)
  {
    return 2;
  }

LABEL_6:
  v2 = 1 << (a1 - 102);
  v3 = 2;
  if ((v2 & 0x14A04) == 0)
  {
    v3 = 0;
  }

  if ((v2 & 0xB5F3) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a1 - 102 <= 0x10)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double SBHDefaultIconImageScale(uint64_t a1)
{
  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  SBHGetScreenSpecification(a1, &v2);
  return *&v3;
}

void SBHDefaultWidgetScaleFactor(unint64_t a1)
{
  if (!SBHScreenTypeIsPhone(a1))
  {
    SBHDefaultSmallIconSize(a1, 0);
    _SBHDefaultSmallWidgetCanvasDimension(a1);
  }
}

double _SBHDefaultSmallWidgetCanvasDimension(unint64_t a1)
{
  SBHDefaultSmallIconSize(a1, 0);
  v3 = a1 - 100;
  if (a1 - 100 <= 0x11 && ((0x35AFFu >> v3) & 1) != 0)
  {
    return dbl_1BEE87FE8[v3];
  }

  return result;
}

void *SBHDefaultMediumIconSizeWithNumberOfColumnsAndWidgetOvershoot(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (SBHScreenTypeIsPhone(a2))
  {
    *&v17 = 0;
    v15 = 0u;
    v16 = 0u;
    SBHGetScreenSpecification(a2, &v15);
    v7 = *(&v15 + 1);
    v6 = *&v15;
    v8 = *&v16;
    v9 = SBHDefaultIconSizeBucket(a2, a3);
    v10 = SBHDefaultIconImageSizeForIconSizeBucket(v9, a2, a3);
    SBHCalculateHorizontalInsetWithDynamicMargins(v6, v7);
    v12 = v11;
    SBHCalculateHorizontalIconSpacingWithHorizontalBump();
    SBHIconListLayoutCalculateHorizontalColumnBump(3, a1, v10, v13, v6 - v12 - v12, v8);
    SBHDefaultSmallIconSizeWithNumberOfColumnsAndWidgetOvershoot(a1, a2, a3);
    return UISizeRoundToScale();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    return _SBHDefaultNonDefaultIconSizes(&v15, a2, a3);
  }
}

id SBHStringForDefaultListLayoutProviderLayoutOptions(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 4) != 0)
  {
    [v2 addObject:@"ExtendedFloatingDockCapacity"];
    if ((a1 & 8) == 0)
    {
LABEL_3:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"LargeDefaultSizedIcons"];
  if ((a1 & 0x10) != 0)
  {
LABEL_4:
    [v3 addObject:@"LargeNonDefaultSizedIcons"];
  }

LABEL_5:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

uint64_t _SBHEquivalentPhoneScreenTypeForScreenType(unint64_t a1)
{
  if (a1 > 0x76)
  {
    return 0;
  }

  else
  {
    return qword_1BEE882D8[a1];
  }
}

double _SBHDefaultDockAdditionalIconInset(unint64_t a1, char a2)
{
  v2 = 0.0;
  if (a1 <= 0x1E && ((1 << a1) & 0x7E651400) != 0 && SBHScreenTypeIsPhone(a1))
  {
    v5 = SBHDefaultIconSizeBucket(a1, a2);
    SBHDefaultIconImageSizeForIconSizeBucket(v5, a1, a2);
    SBHGetScreenSpecification(a1, v8);
    UIRoundToScale();
    return v6;
  }

  return v2;
}

double _SBHDefaultCategoryPodIconInset(unint64_t a1)
{
  if (SBHScreenTypeIsPhone(a1))
  {
    return dbl_1BEE88690[SBHDefaultScreenSizeBucket(a1)];
  }

  v3 = SBHLibraryScreenSizeBucket(a1);
  result = 13.0;
  if (v3 < 2)
  {
    return 12.0;
  }

  return result;
}

void sub_1BED15594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 232), 8);
  _Block_object_dispose((v42 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BED15FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED185D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SBIconIndexCompleteNodePath(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 nodesAlongIndexPath:v3 consumedIndexes:0];
  v5 = [v4 count];
  v6 = [v3 length];

  v7 = 0;
  if (v5 == v6 + 1)
  {
    v7 = v4;
  }

  return v7;
}

id SBIconIndexDebugStringForNodeIdentifier(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", objc_opt_class(), v1];
  }

  v3 = v2;

  return v3;
}

void sub_1BED21C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED22374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BED32ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BED3689C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_1BED3CB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED3D08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED3D858(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1BED3E8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED40498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v37 + 64));
  objc_destroyWeak((v38 - 160));
  objc_destroyWeak(&a37);
  objc_destroyWeak((v38 - 168));
  _Unwind_Resume(a1);
}

void sub_1BED42998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4490C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED45D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4BF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4C190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4C6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4C844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4C9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4CB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4CDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4D0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED4D4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED52800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1BED572E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED5815C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED5C288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getAPUIAppPredictionViewControllerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppPredictionUIWidgetLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppPredictionUIWidgetLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8090970;
    v6 = 0;
    AppPredictionUIWidgetLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (AppPredictionUIWidgetLibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("APUIAppPredictionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPUIAppPredictionViewControllerClass_block_invoke_cold_1();
  }

  getAPUIAppPredictionViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppPredictionUIWidgetLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AppPredictionUIWidgetLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void OUTLINED_FUNCTION_5_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t SBHWidgetRenderSchemeFactorsMake(unsigned int a1, int a2, int a3, int a4, int a5, int a6)
{
  v6 = 0x10000000000;
  if (!a6)
  {
    v6 = 0;
  }

  v7 = 0x100000000;
  if (!a5)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!a4)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (!a3)
  {
    v9 = 0;
  }

  v10 = 256;
  if (!a2)
  {
    v10 = 0;
  }

  return v10 | a1 | v9 | v8 | v7 | v6;
}

void sub_1BED6365C(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x230]);
  objc_destroyWeak(&STACK[0x228]);
  objc_destroyWeak(&STACK[0x238]);
  objc_destroyWeak(&STACK[0x240]);
  _Unwind_Resume(a1);
}

void sub_1BED642E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *location)
{
  objc_destroyWeak((v12 - 120));
  objc_destroyWeak(location);
  _Unwind_Resume(a1);
}

id SBHIconDragItemWithIconAndIconView(void *a1, void *a2, void *a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v62 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v56 = v7;
  [v62 registerDataRepresentationForTypeIdentifier:v7 visibility:0 loadHandler:&__block_literal_global_68];
  v63 = [v5 nodeIdentifier];
  v8 = 0;
  if ([v5 isLeafIcon])
  {
    v8 = [v5 applicationBundleID];
  }

  v55 = [v5 draggingUserActivity];
  v9 = @"SBHIconGridSizeClassDefault";
  v10 = v9;
  v59 = v8;
  v60 = v5;
  v57 = v6;
  if (!v6)
  {
    obja = v9;
    v66 = 0;
    v58 = 0;
    v11 = 0;
    v61 = 0;
    v54 = 0;
    goto LABEL_50;
  }

  v54 = [v6 draggingLaunchActions];
  v61 = [v6 draggingLaunchURL];
  v11 = [v6 draggingStartLocation];
  if ([v5 isWidgetIcon])
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (v13)
  {
    v53 = v11;
    v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [v13 activeDataSource];
    v58 = [v14 uniqueIdentifier];

    v51 = [v13 gridSizeClass];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v52 = v13;
    obj = [v13 iconDataSources];
    v15 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (!v15)
    {
      goto LABEL_36;
    }

    v16 = v15;
    v17 = *v73;
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v73 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v72 + 1) + 8 * i);
        v20 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v22 = v19;
          v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v24 = [v22 kind];
          if (v24)
          {
            [v23 setObject:v24 forKey:@"kind"];
          }

          v25 = [v22 uniqueIdentifier];
          if (v25)
          {
            [v23 setObject:v25 forKey:@"uniqueIdentifier"];
          }

          v26 = v17;
          v27 = [v22 extensionBundleIdentifier];
          if (v27)
          {
            [v23 setObject:v27 forKey:@"extensionBundleIdentifier"];
          }

          v28 = [v22 containerBundleIdentifier];
          if (v28)
          {
            [v23 setObject:v28 forKey:@"containerBundleIdentifier"];
          }

          v29 = [v22 supportedGridSizeClasses];
          if (v29)
          {
            [v23 setObject:v29 forKey:@"supportedGridSizeClasses"];
          }

          [v66 addObject:v23];

          v17 = v26;
        }

        else
        {
          v30 = objc_opt_self();
          v31 = objc_opt_isKindOfClass();

          if ((v31 & 1) == 0)
          {
            continue;
          }

          v32 = v19;
          v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v24 = [v32 uniqueIdentifier];
          if (v24)
          {
            [v23 setObject:v24 forKey:@"uniqueIdentifier"];
          }

          v25 = [objc_opt_class() elementIdentifier];
          if (v25)
          {
            [v23 setObject:v25 forKey:@"elementIdentifier"];
          }

          v27 = [v32 supportedGridSizeClasses];
          if (v27)
          {
            [v23 setObject:v27 forKey:@"supportedGridSizeClasses"];
          }

          [v66 addObject:v23];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
      if (!v16)
      {
LABEL_36:

        v10 = v51;
        v13 = v52;
        v8 = v59;
        v5 = v60;
        v11 = v53;
        goto LABEL_39;
      }
    }
  }

  v66 = 0;
  v58 = 0;
LABEL_39:
  v33 = objc_alloc_init(SBIconViewDragInfo);
  [(SBIconViewDragInfo *)v33 setUniqueIdentifier:v63];
  [(SBIconViewDragInfo *)v33 setApplicationBundleIdentifier:v8];
  [(SBIconViewDragInfo *)v33 setLaunchURL:v61];
  [(SBIconViewDragInfo *)v33 setStartLocation:v11];
  if (v13)
  {
    [(SBIconViewDragInfo *)v33 setActiveCustomIconDataSourceUniqueIdentifier:v58];
    [(SBIconViewDragInfo *)v33 setCustomIconDataSourceConfigurations:v66];
    [(SBIconViewDragInfo *)v33 setGridSizeClass:v10];
  }

  obja = v10;
  v71 = 0;
  v34 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v71];
  v35 = v71;
  if (v34)
  {
    if ([v34 length] <= 0x2000)
    {
      [v62 setTeamData:v34];
      goto LABEL_49;
    }

    v36 = v13;
    v37 = SBLogIconDragging();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      SBHIconDragItemWithIconAndIconView_cold_1(v33, v37);
    }
  }

  else
  {
    v36 = v13;
    v37 = SBLogIconDragging();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      SBHIconDragItemWithIconAndIconView_cold_2(v35, v33, v37);
    }
  }

  v13 = v36;
LABEL_49:

LABEL_50:
  if ([v5 isFolderIcon])
  {
    v38 = [v5 folder];
    v39 = [v38 leafIcons];
    v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v41 = v39;
    v42 = [v41 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v68;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v68 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [*(*(&v67 + 1) + 8 * j) uniqueIdentifier];
          if (v46)
          {
            [v40 addObject:v46];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v43);
    }
  }

  else
  {
    v40 = 0;
  }

  v47 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v62];
  v48 = [objc_alloc(MEMORY[0x1E69D4190]) initWithUniqueIdentifier:v63 withLaunchActions:v54 startLocation:SBHAppDragLocalContextStartLocationToSBSLocation(v11)];
  [v48 setApplicationBundleIdentifier:v59];
  [v48 setLaunchURL:v61];
  v49 = [v5 representedSceneIdentifier];
  [v48 setDraggedSceneIdentifier:v49];

  [v48 setSourceLocal:1];
  [v48 setUserActivity:v55];
  [v48 setContainedIconIdentifiers:v40];
  [v48 setActiveCustomIconDataSourceUniqueIdentifier:v58];
  [v48 setCustomIconDataSourceConfigurations:v66];
  [v48 setGridSizeClass:obja];
  [v47 sbh_setAppDragLocalContext:v48];

  return v47;
}

uint64_t __SBHIconDragItemWithIconAndIconView_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEF0];
  v3 = a2;
  v4 = [v2 data];
  v3[2](v3, v4, 0);

  return 0;
}

__CFString *SBHIconLocationForSBHAppDragLocalContextStartLocation(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v1 = @"SBHAppDragLocalContextStartLocationUnknown";
      break;
    case 1:
      v2 = SBIconLocationRoot;
      goto LABEL_15;
    case 2:
      v2 = SBIconLocationStackConfiguration;
      goto LABEL_15;
    case 3:
      v2 = SBIconLocationAddWidgetSheet;
      goto LABEL_15;
    case 4:
      v2 = SBIconLocationAppLibrary;
      goto LABEL_15;
    case 5:
      v1 = @"SBHAppDragLocalContextStartLocationSpotlight";
      break;
    case 6:
      v2 = SBIconLocationFloatingDock;
      goto LABEL_15;
    case 7:
      v1 = @"SBHAppDragLocalContextStartLocationFloatingDockSuggestions";
      break;
    case 8:
      v1 = @"SBHAppDragLocalContextStartLocationWindow";
      break;
    case 9:
      v1 = @"SBHAppDragLocalContextStartLocationNotification";
      break;
    case 10:
      v2 = SBIconLocationTodayView;
LABEL_15:
      v1 = *v2;
      break;
    case 11:
      v1 = @"SBHAppDragLocalContextStartLocationSwitcher";
      break;
    case 12:
      v1 = @"SBHAppDragLocalContextStartLocationShelf";
      break;
    default:
      v1 = 0;
      break;
  }

  return v1;
}

void sub_1BED671D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t PosterLegibilityKitLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PosterLegibilityKitLibraryCore_frameworkLibrary;
  v5 = PosterLegibilityKitLibraryCore_frameworkLibrary;
  if (!PosterLegibilityKitLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E8090BD8;
    v7 = *off_1E8090BE8;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PosterLegibilityKitLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1BED675F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PosterLegibilityKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PosterLegibilityKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterLegibilityKitLibrary()
{
  v0 = PosterLegibilityKitLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getPLKLegibilityStyleForUILegibilityStyleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr;
  v6 = getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr;
  if (!getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr)
  {
    v1 = PosterLegibilityKitLibrary();
    v4[3] = dlsym(v1, "PLKLegibilityStyleForUILegibilityStyle");
    getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BED677D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterLegibilityKitLibrary();
  result = dlsym(v2, "PLKLegibilityStyleForUILegibilityStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLKLegibilityStyleForUILegibilityStyleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PLKLegibilityStyleForUILegibilityStyle(uint64_t a1)
{
  PLKLegibilityStyleForUILegibilityStyleSymbolLoc = getPLKLegibilityStyleForUILegibilityStyleSymbolLoc();
  if (PLKLegibilityStyleForUILegibilityStyleSymbolLoc)
  {

    return PLKLegibilityStyleForUILegibilityStyleSymbolLoc(a1);
  }

  else
  {
    IsAppPrediction_cold_1 = SBHIconLocationIsAppPrediction_cold_1();
    return [(SBHLegibilitySettings *)IsAppPrediction_cold_1 sbh_isSBHLegibilitySettings];
  }
}

uint64_t _SBIconIsLeafIconAndNotWidgetIcon(void *a1)
{
  v1 = a1;
  if ([v1 isLeafIcon])
  {
    v2 = [v1 isWidgetIcon] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1BED6926C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED696E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED7489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED763D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBStringForIconPrefetchBehavior(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E8091008[a1];
  }
}

void sub_1BED7C6EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v7 - 176));
  objc_destroyWeak((v7 - 168));
  _Unwind_Resume(a1);
}

void SBHAddWidgetSheetCompactViewIconMetricsForScale(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 0x4030000000000000;
  *(a1 + 8) = SBIconImageInfoMake(48.0, 48.0, a2, 12.0);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

void SBHAddWidgetSheetSplitViewIconMetricsForScale(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 0x4028000000000000;
  *(a1 + 8) = SBIconImageInfoMake(32.0, 32.0, a2, 10.0);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

void SBHAddWidgetSheetListViewIconMetricsForScale(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = 0;
  v12 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:29.0 scale:{29.0, a2}];
  [v12 size];
  v5 = v4;
  v7 = v6;
  [v12 continuousCornerRadius];
  *(a1 + 8) = SBIconImageInfoMake(v5, v7, a2, v8);
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
}

BOOL SBHStackLayoutMetricsEqualToMetrics(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[6] != a2[6] || a1[5] != a2[5] || a1[7] != a2[7])
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    return a1[3] == a2[3];
  }

  return 0;
}

id SBViewClassForIconLabelAccessoryType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

void sub_1BED82084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED8233C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED829AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_onceToken != -1)
  {
    SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_cold_1();
  }

  if (SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_sCurrentScreenType == a1)
  {
    if ((a2 - 3) > 1)
    {
      v6 = &SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_sPortraitMetrics;
    }

    else
    {
      v6 = &SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_sLandscapeMetrics;
    }

    v8 = v6[7];
    *(a3 + 96) = v6[6];
    *(a3 + 112) = v8;
    *(a3 + 128) = v6[8];
    *(a3 + 144) = *(v6 + 18);
    v9 = v6[3];
    *(a3 + 32) = v6[2];
    *(a3 + 48) = v9;
    v10 = v6[5];
    *(a3 + 64) = v6[4];
    *(a3 + 80) = v10;
    result = *v6;
    v11 = v6[1];
    *a3 = *v6;
    *(a3 + 16) = v11;
  }

  else
  {

    _uncachedMetricsForScreenTypeAndInterfaceOrientation(a1, a2, a3);
  }

  return result;
}

double __SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_block_invoke()
{
  v0 = SBHScreenTypeForCurrentDevice();
  if (SBHScreenTypeIsPad(v0))
  {
    SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_sCurrentScreenType = v0;
    _uncachedMetricsForScreenTypeAndInterfaceOrientation(v0, 3, &v2);
    xmmword_1EBDC91E8 = v8;
    unk_1EBDC91F8 = v9;
    xmmword_1EBDC9208 = v10;
    qword_1EBDC9218 = v11;
    xmmword_1EBDC91A8 = v4;
    unk_1EBDC91B8 = v5;
    xmmword_1EBDC91C8 = v6;
    unk_1EBDC91D8 = v7;
    SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_sLandscapeMetrics = v2;
    unk_1EBDC9198 = v3;
    _uncachedMetricsForScreenTypeAndInterfaceOrientation(SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_sCurrentScreenType, 1, &v2);
    xmmword_1EBDC9280 = v8;
    unk_1EBDC9290 = v9;
    xmmword_1EBDC92A0 = v10;
    qword_1EBDC92B0 = v11;
    xmmword_1EBDC9240 = v4;
    unk_1EBDC9250 = v5;
    xmmword_1EBDC9260 = v6;
    unk_1EBDC9270 = v7;
    result = *&v2;
    SBHPadAddWidgetSheetMetricsForScreenTypeAndInterfaceOrientation_sPortraitMetrics = v2;
    *algn_1EBDC9230 = v3;
  }

  return result;
}

void _uncachedMetricsForScreenTypeAndInterfaceOrientation(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 144) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  IsPad = SBHScreenTypeIsPad(a1);
  v7 = a2 - 3;
  v8 = 8.0;
  if (IsPad)
  {
    goto LABEL_23;
  }

  v8 = 0.0;
  if (a1 <= 101)
  {
    if (a1 <= 0x1E && ((1 << a1) & 0x6EFFFDA7) != 0)
    {
      v8 = 16.0;
      goto LABEL_23;
    }

    if (a1 - 100 >= 2)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (a1 > 105)
  {
    v9 = a1 - 106;
    if (a1 - 106 > 0xC)
    {
      goto LABEL_23;
    }

    if (((1 << v9) & 0x31F) == 0)
    {
      if (((1 << v9) & 0x14A0) == 0)
      {
LABEL_20:
        v11 = v7 >= 2;
        v12 = 20.0;
LABEL_21:
        if (!v11)
        {
          v8 = v12;
        }

        goto LABEL_23;
      }

      goto LABEL_10;
    }

LABEL_18:
    v11 = v7 >= 2;
    v12 = 24.0;
    goto LABEL_21;
  }

  if (a1 - 102 < 2)
  {
    goto LABEL_18;
  }

  if (a1 != 104)
  {
    if (a1 != 105)
    {
      goto LABEL_23;
    }

    _CF = v7 >= 2;
    v8 = 57.5;
    goto LABEL_11;
  }

LABEL_10:
  _CF = v7 >= 2;
  v8 = 36.0;
LABEL_11:
  if (_CF)
  {
    v8 = 0.0;
  }

LABEL_23:
  *a3 = v8;
  v13 = SBHScreenTypeIsPad(a1);
  v14 = 0;
  if (!v13 && a1 <= 0x76 && v7 >= 2)
  {
    v14 = qword_1BEE88D50[a1];
  }

  *(a3 + 8) = v14;
  if (SBHScreenTypeIsPad(a1))
  {
    v15 = 0.0;
    switch(a1)
    {
      case 'd':
      case 'h':
        goto LABEL_32;
      case 'e':
      case 'p':
        v16 = v7 < 2;
        v17 = &unk_1BEE88C10;
        goto LABEL_84;
      case 'f':
        v16 = v7 < 2;
        v17 = &unk_1BEE88CA0;
        goto LABEL_84;
      case 'g':
        v32 = v7 < 2;
        v33 = &unk_1BEE88BF0;
LABEL_70:
        *(a3 + 16) = v33[v32];
        __asm { FMOV            V0.2D, #12.0 }

        *(a3 + 120) = _Q0;
        *(a3 + 136) = _Q0;
        v40 = _addWidgetSheetTrailingPadding(a1, a2);
        *(a3 + 24) = v40;
        *(a3 + 32) = v40;
        goto LABEL_71;
      case 'i':
        v34 = v7 < 2;
        v35 = &unk_1BEE88C90;
        goto LABEL_80;
      case 'j':
        v16 = v7 < 2;
        v17 = &unk_1BEE88C80;
        goto LABEL_84;
      case 'k':
        v34 = v7 < 2;
        v35 = &unk_1BEE88C80;
LABEL_80:
        v27 = v35[v34];
        goto LABEL_81;
      case 'l':
        v16 = v7 < 2;
        v17 = &unk_1BEE88C50;
        goto LABEL_84;
      case 'm':
        v26 = v7 >= 2;
        v27 = 198.5;
        v28 = 304.0;
        goto LABEL_54;
      case 'n':
        v29 = v7 >= 2;
        v30 = 158.0;
        *&v31 = 304.0;
LABEL_64:
        v38 = *&v31;
LABEL_75:
        if (!v29)
        {
          v30 = v38;
        }

        goto LABEL_85;
      case 'o':
        v16 = v7 < 2;
        v17 = &unk_1BEE88C70;
        goto LABEL_84;
      case 'q':
        v16 = v7 < 2;
        v17 = &unk_1BEE88C30;
        goto LABEL_84;
      case 'r':
        v26 = v7 >= 2;
        v27 = 198.5;
        v28 = 320.0;
LABEL_54:
        if (!v26)
        {
          v27 = v28;
        }

LABEL_81:
        *(a3 + 16) = v27;
        __asm { FMOV            V0.2D, #12.0 }

        *(a3 + 120) = _Q0;
        *(a3 + 136) = _Q0;
        v42 = _addWidgetSheetTrailingPadding(a1, a2);
        *(a3 + 24) = v42;
        *(a3 + 32) = v42;
        goto LABEL_82;
      case 's':
        v16 = v7 < 2;
        v17 = &unk_1BEE88C40;
        goto LABEL_84;
      case 't':
        v16 = v7 < 2;
        v17 = &unk_1BEE88C60;
        goto LABEL_84;
      case 'u':
        v16 = v7 < 2;
        v17 = &unk_1BEE88C00;
        goto LABEL_84;
      case 'v':
        v16 = v7 < 2;
        v17 = &unk_1BEE88C20;
LABEL_84:
        v30 = v17[v16];
LABEL_85:
        *(a3 + 16) = v30;
        __asm { FMOV            V0.2D, #12.0 }

        *(a3 + 120) = _Q0;
        *(a3 + 136) = _Q0;
        v44 = _addWidgetSheetTrailingPadding(a1, a2);
        *(a3 + 24) = v44;
        *(a3 + 32) = v44;
        break;
      default:
        goto LABEL_30;
    }

    goto LABEL_86;
  }

LABEL_30:
  v15 = 0.0;
  switch(a1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 5uLL:
    case 7uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1DuLL:
    case 0x1EuLL:
      v15 = 249.0;
      goto LABEL_32;
    case 3uLL:
    case 4uLL:
    case 6uLL:
    case 9uLL:
    case 0x18uLL:
    case 0x1CuLL:
      v15 = 232.0;
      goto LABEL_32;
    case 0x64uLL:
    case 0x65uLL:
    case 0x70uLL:
      v15 = dbl_1BEE88D30[v7 < 2];
      goto LABEL_32;
    case 0x66uLL:
      v16 = v7 < 2;
      v17 = &unk_1BEE88D10;
      goto LABEL_84;
    case 0x67uLL:
      v32 = v7 < 2;
      v33 = &unk_1BEE88D00;
      goto LABEL_70;
    case 0x68uLL:
    case 0x6FuLL:
      v36 = v7 >= 2;
      v15 = 224.0;
      v37 = 266.0;
      break;
    case 0x69uLL:
      v34 = v7 < 2;
      v35 = &unk_1BEE88D40;
      goto LABEL_80;
    case 0x6AuLL:
    case 0x6BuLL:
      v36 = v7 >= 2;
      v15 = 216.0;
      v37 = 268.0;
      break;
    case 0x6CuLL:
      v29 = v7 >= 2;
      v30 = 180.5;
      *&v31 = 288.0;
      goto LABEL_64;
    case 0x6DuLL:
      v34 = v7 < 2;
      v35 = &unk_1BEE88CF0;
      goto LABEL_80;
    case 0x6EuLL:
      v16 = v7 < 2;
      v17 = &unk_1BEE88CD0;
      goto LABEL_84;
    case 0x71uLL:
      v29 = v7 >= 2;
      v30 = 256.0;
      v38 = 290.0;
      goto LABEL_75;
    case 0x72uLL:
      v34 = v7 < 2;
      v35 = &unk_1BEE88CE0;
      goto LABEL_80;
    case 0x73uLL:
      v16 = v7 < 2;
      v17 = &unk_1BEE88CC0;
      goto LABEL_84;
    case 0x74uLL:
      v29 = v7 >= 2;
      v30 = 232.0;
      v38 = 276.0;
      goto LABEL_75;
    case 0x75uLL:
      v16 = v7 < 2;
      v17 = &unk_1BEE88D20;
      goto LABEL_84;
    case 0x76uLL:
      v16 = v7 < 2;
      v17 = &unk_1BEE88CB0;
      goto LABEL_84;
    default:
      goto LABEL_32;
  }

  if (!v36)
  {
    v15 = v37;
  }

LABEL_32:
  *(a3 + 16) = v15;
  __asm { FMOV            V0.2D, #12.0 }

  *(a3 + 120) = _Q0;
  *(a3 + 136) = _Q0;
  v22 = _addWidgetSheetTrailingPadding(a1, a2);
  *(a3 + 24) = v22;
  *(a3 + 32) = v22;
  if (a1 < 0x1F)
  {
    v24 = 20.0;
    goto LABEL_87;
  }

  v25 = a1 - 100;
  if (a1 - 100 > 0x12)
  {
    v24 = 0.0;
  }

  else
  {
    if (((1 << v25) & 0x7BD57) != 0)
    {
LABEL_86:
      v24 = 26.0;
      goto LABEL_87;
    }

    if (((1 << v25) & 0x42A0) == 0)
    {
LABEL_71:
      *(a3 + 40) = 0x4038000000000000;
LABEL_88:
      v45 = 1.0;
      goto LABEL_89;
    }

LABEL_82:
    v24 = 16.0;
  }

LABEL_87:
  *(a3 + 40) = v24;
  v45 = 0.0;
  switch(a1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x6CuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x76uLL:
      goto LABEL_88;
    case 0x64uLL:
    case 0x65uLL:
    case 0x69uLL:
    case 0x70uLL:
    case 0x75uLL:
      v50 = v7 >= 2;
      v45 = 0.95;
      goto LABEL_120;
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6DuLL:
    case 0x72uLL:
      v50 = v7 >= 2;
      v45 = 0.875;
LABEL_120:
      if (!v50)
      {
        v45 = 1.0;
      }

      break;
    default:
      break;
  }

LABEL_89:
  *(a3 + 48) = v45;
  v46 = 0uLL;
  switch(a1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
      v46 = vdupq_n_s64(0x405DC00000000000uLL);
      break;
    case 0x64uLL:
    case 0x65uLL:
    case 0x69uLL:
    case 0x70uLL:
    case 0x75uLL:
      v46.i64[0] = a2 - 3;
      v23.i64[0] = 2;
      v47 = vdupq_lane_s64(vcgtq_u64(v23, v46).i64[0], 0);
      v48 = *MEMORY[0x1E695F060];
      v49 = 0x405C800000000000;
      goto LABEL_95;
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x6CuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x76uLL:
      v46 = *MEMORY[0x1E695F060];
      break;
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6DuLL:
    case 0x72uLL:
      v46.i64[0] = a2 - 3;
      v23.i64[0] = 2;
      v47 = vdupq_lane_s64(vcgtq_u64(v23, v46).i64[0], 0);
      v48 = *MEMORY[0x1E695F060];
      v49 = 0x405DC00000000000;
LABEL_95:
      v46 = vbslq_s8(v47, v48, vdupq_n_s64(v49));
      break;
    default:
      break;
  }

  *(a3 + 56) = v46;
  if (a1 >= 0x1F)
  {
    if (a1 - 100 >= 0x13)
    {
      v51 = 0;
    }

    else
    {
      v51 = 4;
      if (v7 < 2)
      {
        v51 = 5;
      }
    }
  }

  else
  {
    v51 = 2;
  }

  *(a3 + 72) = v51;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  if (a1 <= 0x76)
  {
    v53 = qword_1BEE89108[a1];
    v54 = qword_1BEE894C0[a1];
  }

  *(a3 + 80) = v54;
  *(a3 + 88) = v53;
  if (a1 <= 0x76)
  {
    v52 = qword_1BEE89878[a1];
  }

  *(a3 + 112) = v52;
  if (a1 >= 0x1F)
  {
    if (a1 - 100 >= 0x13)
    {
      v55 = 0.0;
    }

    else
    {
      v55 = 50.0;
      if (v7 < 2)
      {
        v55 = 30.0;
      }
    }
  }

  else
  {
    v55 = 5.0;
  }

  *(a3 + 96) = v55;
  if (a1 > 0x1E)
  {
    if (a1 - 100 >= 0x13)
    {
      v56 = 0.0;
    }

    else
    {
      v56 = 50.0;
      if (v7 < 2)
      {
        v56 = 46.0;
      }
    }
  }

  else if (((1 << a1) & 0x6EFFFDA7) != 0)
  {
    v56 = 24.0;
  }

  else
  {
    v56 = 21.0;
  }

  *(a3 + 104) = v56;
}

double _addWidgetSheetTrailingPadding(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  v3 = a2 - 3;
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 5:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 25:
    case 26:
    case 27:
    case 29:
    case 30:
      return 24.0;
    case 3:
    case 4:
    case 6:
    case 9:
    case 24:
    case 28:
      return 16.0;
    case 100:
    case 101:
    case 112:
    case 117:
      v4 = v3 >= 2;
      result = 16.0;
      v5 = 20.0;
      goto LABEL_12;
    case 102:
    case 109:
    case 114:
      v4 = v3 >= 2;
      result = 18.0;
      goto LABEL_11;
    case 103:
      v4 = v3 >= 2;
      result = 17.5;
      goto LABEL_11;
    case 104:
    case 111:
    case 116:
      v4 = v3 >= 2;
      result = 18.0;
      v5 = 29.0;
      goto LABEL_12;
    case 105:
      v4 = v3 >= 2;
      result = 16.0;
      v5 = 26.0;
      goto LABEL_12;
    case 106:
    case 107:
      v4 = v3 >= 2;
      result = 19.5;
LABEL_11:
      v5 = 24.0;
LABEL_12:
      if (!v4)
      {
        return v5;
      }

      return result;
    case 108:
      v6 = v3 >= 2;
      result = 49.5;
      v7 = 16.0;
      goto LABEL_17;
    case 110:
    case 115:
      v6 = v3 >= 2;
      result = 60.5;
      v7 = 18.0;
      goto LABEL_17;
    case 113:
    case 118:
      v6 = v3 >= 2;
      result = 59.0;
      v7 = 30.0;
LABEL_17:
      if (v6)
      {
        result = v7;
      }

      break;
    default:
      return result;
  }

  return result;
}

void sub_1BED871B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED878D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BED8847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BED887A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _SBHTraitEnvironmentIsAccessibilityTextSize(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  if (v2)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v2);
  }

  else
  {
    IsAccessibilityCategory = 0;
  }

  return IsAccessibilityCategory;
}

void sub_1BED908B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED936CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BED950C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED97644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED97A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BED99398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies(void *a1)
{
  v1 = a1;
  v5 = objc_alloc_init(MEMORY[0x1E6994318]);
  v2 = v1;
  CHSWidgetFamilyMaskEnumerateFamilies();
  v3 = v5;

  return v5;
}

void __SBHWidgetMetricsSpecificationWithLayoutProviderScreenTypeAndFamilies_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = SBHWidgetMetricsForFamilyWithLayoutProviderAndScreenType(a2, *(a1 + 40), *(a1 + 48));
  [v3 setMetrics:v4 forFamily:a2];
}

void sub_1BED9C978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBHOverrideFeatureEnabled(uint64_t result, int a2)
{
  v2 = 1 << result;
  if (a2)
  {
    v3 = overriddenEnabledFeatures | v2;
  }

  else
  {
    v3 = overriddenEnabledFeatures & ~v2;
  }

  overriddenEnabledFeatures = v3;
  return result;
}

uint64_t __SBIconAccessoryCountedMap_block_invoke()
{
  v0 = objc_alloc_init(SBCountedMap);
  v1 = SBIconAccessoryCountedMap___accessoryCountedMap;
  SBIconAccessoryCountedMap___accessoryCountedMap = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__CFString *SBHStringForIconImageAppearanceType(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E80916E8[a1];
  }
}

uint64_t SBHScreenTypeIsMoreSpace(unint64_t a1)
{
  if (a1 < 0x1F)
  {
    return 0;
  }

  result = 1;
  v3 = a1 - 100;
  if (v3 <= 0x11 && ((1 << v3) & 0x35AFF) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t SBHScreenTypeIsZoomed(unint64_t a1)
{
  if (a1 <= 0x1D && ((1 << a1) & 0x2AAAAAAF) != 0)
  {
    return 0;
  }

  result = 1;
  v3 = a1 - 100;
  if (v3 <= 0x12 && ((1 << v3) & 0x5EFFF) != 0)
  {
    return 0;
  }

  return result;
}

__CFString *SBHStringForScreenType(unint64_t a1)
{
  if (a1 > 0x76)
  {
    return 0;
  }

  else
  {
    return off_1E8091720[a1];
  }
}

__CFString *SBHShortStringForScreenType(unint64_t a1)
{
  if (a1 > 0x76)
  {
    return 0;
  }

  else
  {
    return off_1E8091AD8[a1];
  }
}

uint64_t SBHScreenTypeForShortString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"N61"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"N56"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"N41"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"D22"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"D22Zoomed"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"D33"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"D33Zoomed"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"N84"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"N84Zoomed"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"D52"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"D52Zoomed"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"D53"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"D53Zoomed"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"D54"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"D54Zoomed"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"D16"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"D16Zoomed"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"D63"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"D63Zoomed"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"D64"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"D64Zoomed"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"D73"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"D73Zoomed"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"D74"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"D74Zoomed"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"D93"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"D93Zoomed"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"D94"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"D94Zoomed"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"D23"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"D23Zoomed"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"J1"])
  {
    v2 = 100;
  }

  else if ([v1 isEqualToString:@"J85"])
  {
    v2 = 101;
  }

  else if ([v1 isEqualToString:@"J171"])
  {
    v2 = 102;
  }

  else if ([v1 isEqualToString:@"J207"])
  {
    v2 = 103;
  }

  else if ([v1 isEqualToString:@"J99"])
  {
    v2 = 104;
  }

  else if ([v1 isEqualToString:@"J310"])
  {
    v2 = 105;
  }

  else if ([v1 isEqualToString:@"J271"])
  {
    v2 = 106;
  }

  else if ([v1 isEqualToString:@"J307"])
  {
    v2 = 107;
  }

  else if ([v1 isEqualToString:@"J307MoreSpace"])
  {
    v2 = 108;
  }

  else if ([v1 isEqualToString:@"J317"])
  {
    v2 = 109;
  }

  else if ([v1 isEqualToString:@"J317MoreSpace"])
  {
    v2 = 110;
  }

  else if ([v1 isEqualToString:@"J320"])
  {
    v2 = 111;
  }

  else if ([v1 isEqualToString:@"J320Zoomed"])
  {
    v2 = 112;
  }

  else if ([v1 isEqualToString:@"J320MoreSpace"])
  {
    v2 = 113;
  }

  else if ([v1 isEqualToString:@"J717"])
  {
    v2 = 114;
  }

  else if ([v1 isEqualToString:@"J717MoreSpace"])
  {
    v2 = 115;
  }

  else if ([v1 isEqualToString:@"J720"])
  {
    v2 = 116;
  }

  else if ([v1 isEqualToString:@"J720Zoomed"])
  {
    v2 = 117;
  }

  else if ([v1 isEqualToString:@"J720MoreSpace"])
  {
    v2 = 118;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_1BEDA8E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  objc_destroyWeak((v51 + 56));
  objc_destroyWeak((v50 + 48));
  objc_destroyWeak((v53 + 56));
  objc_destroyWeak((v52 + 56));
  objc_destroyWeak(&a50);
  objc_destroyWeak((v54 - 200));
  _Unwind_Resume(a1);
}

uint64_t __buildIconComparatorForIconsFromRelevancyMap_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isLeafIcon] && objc_msgSend(v6, "isLeafIcon"))
  {
    v7 = *(a1 + 32);
    v8 = [v5 leafIdentifier];
    v9 = [v7 objectForKey:v8];

    v10 = *(a1 + 32);
    v11 = [v6 leafIdentifier];
    v12 = [v10 objectForKey:v11];

    if (v9 && v12)
    {
      v13 = [v9 compare:v12];
      if (v13 != -1)
      {
        if (!v13)
        {
          v14 = [v5 localizedCompareDisplayNames:v6];
LABEL_21:

          goto LABEL_22;
        }

LABEL_11:
        v14 = -1;
        goto LABEL_21;
      }
    }

    else
    {
      if (v9 && !v12)
      {
        goto LABEL_11;
      }

      if (v9 || !v12)
      {
        v15 = [v5 localizedCompareDisplayNames:v6];
        if (v15 == 1)
        {
          v16 = -1;
        }

        else
        {
          v16 = 0;
        }

        if (v15 == -1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v16;
        }

        goto LABEL_21;
      }
    }

    v14 = 1;
    goto LABEL_21;
  }

  v14 = 1;
LABEL_22:

  return v14;
}

void sub_1BEDAB720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEDAC218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getAPUISuggestionsWidgetViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAPUISuggestionsWidgetViewControllerClass_softClass;
  v7 = getAPUISuggestionsWidgetViewControllerClass_softClass;
  if (!getAPUISuggestionsWidgetViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAPUISuggestionsWidgetViewControllerClass_block_invoke;
    v3[3] = &unk_1E8089848;
    v3[4] = &v4;
    __getAPUISuggestionsWidgetViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BEDAFDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPUISuggestionsWidgetViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppPredictionUIWidgetLibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppPredictionUIWidgetLibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E80920A8;
    v6 = 0;
    AppPredictionUIWidgetLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (AppPredictionUIWidgetLibraryCore_frameworkLibrary_2)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("APUISuggestionsWidgetViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPUISuggestionsWidgetViewControllerClass_block_invoke_cold_1();
  }

  getAPUISuggestionsWidgetViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppPredictionUIWidgetLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  AppPredictionUIWidgetLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_1BEDBAB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEDBF4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEDC08B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBHStringForFolderViewPageType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E8092268[a1];
  }
}

uint64_t APUIIconAppearanceForSBHIconImageAppearanceType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1BEE89EB8[a1 - 1];
  }
}

id sub_1BEDC4FCC()
{
  v1 = [objc_allocWithZone(SBIconListPageControl) init];
  v8 = *v0;
  v9 = *(v0 + 2);
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC6E48);
  MEMORY[0x1BFB4E3D0](&v7);
  [v2 setNumberOfPages_];
  v8 = *(v0 + 24);
  v9 = *(v0 + 5);
  MEMORY[0x1BFB4E3D0](&v7, v3);
  [v2 setCurrentPage_];
  [v2 setHidesForSinglePage_];

  [v2 setMaximumNumberOfPages_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC6E50);
  sub_1BEE46D9C();
  v4 = v8;
  [v2 addTarget:v8 action:sel_pageChangedWithSender_ forControlEvents:4096];

  sub_1BEE46D9C();
  v5 = v8;
  [v2 setDelegate_];

  return v2;
}

id sub_1BEDC536C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconListPageControl.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BEDC5498(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BEDC54B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BEDC5510(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BEDC5530(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BEDC5600(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BEDC5648(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BEDC56B8(void *a1)
{
  v3 = *(v1 + 2);
  v7 = *(v1 + 24);
  v4 = *(v1 + 5);
  v9 = *v1;
  v10 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC6E48);
  MEMORY[0x1BFB4E3D0](&v8);
  [a1 setNumberOfPages_];
  v9 = v7;
  v10 = v4;
  MEMORY[0x1BFB4E3D0](&v8, v5);
  return [a1 setCurrentPage_];
}

id sub_1BEDC5774@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v17 = v1[3];
  v18 = *(v1 + 8);
  v4 = *v1;
  v15 = v1[1];
  v16 = v3;
  v14 = v4;
  v5 = type metadata accessor for IconListPageControl.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV15SpringBoardHome19IconListPageControl11Coordinator_parent];
  *v7 = v14;
  v8 = v17;
  v10 = v15;
  v9 = v16;
  *(v7 + 8) = v18;
  *(v7 + 2) = v9;
  *(v7 + 3) = v8;
  *(v7 + 1) = v10;
  sub_1BEDC5F78(&v14, v13);
  v12.receiver = v6;
  v12.super_class = v5;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BEDC586C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BEDC5FF8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BEDC58D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BEDC5FF8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BEDC5950()
{
  sub_1BEDC5FF8();
  sub_1BEE46D5C();
  __break(1u);
}

unint64_t sub_1BEDC597C()
{
  result = qword_1EBDC6E18;
  if (!qword_1EBDC6E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC6E18);
  }

  return result;
}

uint64_t sub_1BEDC59D0(uint64_t a1, id *a2)
{
  result = sub_1BEE4706C();
  *a2 = 0;
  return result;
}

uint64_t sub_1BEDC5A48(uint64_t a1, id *a2)
{
  v3 = sub_1BEE4707C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BEDC5AC8@<X0>(uint64_t *a1@<X8>)
{
  sub_1BEE4708C();
  v2 = sub_1BEE4705C();

  *a1 = v2;
  return result;
}

uint64_t sub_1BEDC5B0C(uint64_t a1)
{
  v2 = sub_1BEDC5D5C(&qword_1EBDBFF00, type metadata accessor for SBHIconGridSizeClass);
  v3 = sub_1BEDC5D5C(&qword_1EBDC71B8, type metadata accessor for SBHIconGridSizeClass);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BEDC5BC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BEE4705C();

  *a1 = v2;
  return result;
}

uint64_t sub_1BEDC5C10(uint64_t a1)
{
  v2 = sub_1BEDC5D5C(&qword_1EBDC6E38, type metadata accessor for SBIconLocation);
  v3 = sub_1BEDC5D5C(&qword_1EBDC6E40, type metadata accessor for SBIconLocation);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BEDC5D5C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BEDC5DA4()
{
  v0 = sub_1BEE4708C();
  v1 = MEMORY[0x1BFB4E610](v0);

  return v1;
}

uint64_t sub_1BEDC5DE0()
{
  sub_1BEE4708C();
  sub_1BEE470CC();
}

uint64_t sub_1BEDC5E34()
{
  sub_1BEE4708C();
  sub_1BEE4777C();
  sub_1BEE470CC();
  v0 = sub_1BEE477CC();

  return v0;
}

uint64_t sub_1BEDC5EA8()
{
  v0 = sub_1BEE4708C();
  v2 = v1;
  if (v0 == sub_1BEE4708C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BEE4770C();
  }

  return v5 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BEDC5FF8()
{
  result = qword_1EBDC6E58;
  if (!qword_1EBDC6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDC6E58);
  }

  return result;
}

uint64_t sub_1BEDC6538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1BEDC65AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SBIcon.id.getter()
{
  v1 = [v0 uniqueIdentifier];
  v2 = sub_1BEE4708C();

  return v2;
}

void sub_1BEDC66EC(uint64_t *a1@<X8>)
{
  v3 = [*v1 uniqueIdentifier];
  v4 = sub_1BEE4708C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

char *sub_1BEDC6744(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo];
  *v9 = 0u;
  v9[1] = 0u;
  v10 = &v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_identifier];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconListView] = 0;
  v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorVisible] = 1;
  v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_wantsHeaderView] = 1;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_textLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v13 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_symbolImageView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v14 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v15 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_listContainerView;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v16 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_titleStackView;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageWidthConstraint] = 0;
  *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageHeightConstraint] = 0;
  *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_headerLeadingConstraint] = 0;
  *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_headerTrailingConstraint] = 0;
  *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_titleStackViewBottomConstraint] = 0;
  *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_listContainerViewTopConstraint] = 0;
  v17 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_labelViewsForIconViews;
  *&v4[v17] = [objc_opt_self() weakToWeakObjectsMapTable];
  *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_labelNumberOfLines] = 2;
  v128.receiver = v4;
  v128.super_class = SBHAddWidgetSheetIconListCell;
  v18 = objc_msgSendSuper2(&v128, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = [v18 contentView];
  v20 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_titleStackView;
  [*&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_titleStackView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v18[v20] setAxis_];
  [*&v18[v20] setAlignment_];
  [*&v18[v20] setSpacing_];
  [v19 addSubview_];
  v21 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageView;
  [*&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageView] &selRef:0 setScrollEnabled:? + 2];
  v22 = *&v18[v21];
  v23 = v21;
  v24 = &v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo];
  [v22 _setContinuousCornerRadius_];
  v124 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:14.0];
  v25 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_symbolImageView;
  [*&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_symbolImageView] setPreferredSymbolConfiguration_];
  [*&v18[v25] &selRef:0 setScrollEnabled:? + 2];
  v26 = *&v18[v25];
  v27 = v25;
  v123 = v25;
  v28 = objc_opt_self();
  v29 = v26;
  v30 = [v28 whiteColor];
  [v29 setTintColor_];

  [*&v18[v23] addSubview_];
  v31 = *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_textLabel];
  v32 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_textLabel;
  v33 = objc_opt_self();
  v34 = *MEMORY[0x1E69DDD80];
  v35 = *MEMORY[0x1E69DB970];
  v36 = v31;
  v37 = [v33 _preferredFontForTextStyle_weight_];
  [v36 setFont_];

  [*&v18[v32] setNumberOfLines_];
  [*&v18[v32] setAdjustsFontSizeToFitWidth_];
  [*&v18[v32] setAdjustsFontForContentSizeCategory_];
  v111 = v32;
  [*&v18[v32] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v18[v20] addArrangedSubview_];
  [*&v18[v20] addArrangedSubview_];
  v38 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_listContainerView;
  v125 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_listContainerView;
  [*&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_listContainerView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 addSubview_];
  v121 = v23;
  v39 = [*&v18[v23] widthAnchor];
  v40 = [v39 constraintEqualToConstant_];

  v41 = [*&v18[v23] heightAnchor];
  v42 = [v41 &selRef:v24[1] directlyContainedIconWithIdentifier:? + 1];

  v43 = *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageWidthConstraint];
  *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageWidthConstraint] = v40;
  v119 = v40;

  v44 = *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageHeightConstraint];
  *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageHeightConstraint] = v42;
  v118 = v42;

  v45 = [*&v18[v20] leadingAnchor];
  v46 = v19;
  v47 = [v19 &selRef_isPageTypeIcon_ + 1];
  v48 = [v45 constraintEqualToAnchor_];

  v49 = [*&v18[v20] trailingAnchor];
  v50 = [v19 &selRef_updateAfterAppearanceTraitChange + 4];
  v51 = [v49 &selRef:v50 didRemoveIconDataSource:? + 5];

  v52 = *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_headerLeadingConstraint];
  *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_headerLeadingConstraint] = v48;
  v115 = v48;

  v53 = *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_headerTrailingConstraint];
  *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_headerTrailingConstraint] = v51;
  v113 = v51;

  v54 = [*&v18[v20] bottomAnchor];
  v55 = [*&v18[v125] topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:0.0];

  v57 = *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_titleStackViewBottomConstraint];
  *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_titleStackViewBottomConstraint] = v56;
  v58 = v56;

  v59 = v46;
  v60 = [v46 topAnchor];
  v61 = [*&v18[v125] topAnchor];
  v62 = [v60 &selRef:v61 didReplaceIcon:-8.0 withIcon:? options:? + 6];

  v63 = *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_listContainerViewTopConstraint];
  *&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_listContainerViewTopConstraint] = v62;
  v122 = v62;

  v64 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorView;
  [*&v18[OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorView] setTranslatesAutoresizingMaskIntoConstraints_];
  v65 = *&v18[v64];
  v66 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  aBlock[4] = sub_1BEDC7538;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BEDCA6A8;
  aBlock[3] = &block_descriptor_7;
  v67 = _Block_copy(aBlock);
  v68 = v65;
  v69 = [v66 initWithDynamicProvider_];
  _Block_release(v67);

  [v68 setBackgroundColor_];

  [*&v18[v64] _setContinuousCornerRadius_];
  [v59 addSubview_];
  v117 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1BEE8ACE0;
  v71 = v20;
  v72 = [*&v18[v20] topAnchor];
  v73 = v59;
  v74 = [v59 topAnchor];
  v75 = [v72 constraintEqualToAnchor_];

  *(v70 + 32) = v75;
  *(v70 + 40) = v115;
  *(v70 + 48) = v113;
  v76 = *&v18[v71];
  v116 = v115;
  v114 = v113;
  v77 = [v76 heightAnchor];
  v78 = [*&v18[v111] heightAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:54.0];

  *(v70 + 56) = v79;
  *(v70 + 64) = v58;
  v80 = *&v18[v125];
  v112 = v58;
  v81 = [v80 leadingAnchor];
  v82 = [v73 leadingAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v70 + 72) = v83;
  v84 = [*&v18[v125] trailingAnchor];
  v85 = [v73 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v70 + 80) = v86;
  v87 = [*&v18[v125] bottomAnchor];
  v88 = [v73 bottomAnchor];
  sub_1BEDC7630();
  v90 = [v87 constraintEqualToAnchor:v88 constant:-(v89 + 4.0 + 24.0 + 1.0)];

  *(v70 + 88) = v90;
  *(v70 + 96) = v119;
  *(v70 + 104) = v118;
  v91 = *&v18[v123];
  v126 = v119;
  v120 = v118;
  v92 = [v91 centerXAnchor];
  v93 = [*&v18[v121] centerXAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  *(v70 + 112) = v94;
  v95 = [*&v18[v123] centerYAnchor];
  v96 = [*&v18[v121] centerYAnchor];
  v97 = [v95 constraintEqualToAnchor_];

  *(v70 + 120) = v97;
  v98 = [*&v18[v64] leadingAnchor];
  v99 = [*&v18[v71] leadingAnchor];
  v100 = [v98 constraintEqualToAnchor:v99 constant:-4.0];

  *(v70 + 128) = v100;
  v101 = [*&v18[v64] trailingAnchor];
  v102 = [*&v18[v71] trailingAnchor];
  v103 = [v101 &selRef:v102 didRemoveIconDataSource:? + 5];

  *(v70 + 136) = v103;
  v104 = [*&v18[v64] heightAnchor];
  v105 = [v104 constraintEqualToConstant_];

  *(v70 + 144) = v105;
  v106 = [*&v18[v64] bottomAnchor];
  v107 = [v73 bottomAnchor];
  v108 = [v106 &selRef:v107 didRemoveIconDataSource:? + 5];

  *(v70 + 152) = v108;
  sub_1BEB20D28(0, &qword_1EBDC73C0);
  v109 = sub_1BEE4719C();

  [v117 activateConstraints_];

  sub_1BEDC7744();
  return v18;
}

id sub_1BEDC7538(void *a1)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 userInterfaceStyle];
  v3 = objc_opt_self();
  v4 = &selRef_systemFillColor;
  if (v2 != 2)
  {
    v4 = &selRef_separatorColor;
  }

  v5 = [v3 *v4];
  v6 = [v5 resolvedColorWithTraitCollection_];

  return v6;
}

void sub_1BEDC7630()
{
  v1 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (v1)
  {
    v2 = v1;
    [v1 lineHeight];
    [v0 labelNumberOfLines];
    [v2 leading];
    if (!__OFSUB__([v0 labelNumberOfLines], 1))
    {
      v3 = [v0 traitCollection];
      [v3 displayScale];

      UICeilToScale();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1BEDC7744()
{
  v1 = [v0 iconListView];
  if (v1 && (v2 = v1, v3 = [v1 layout], v2, v3))
  {
    [v3 layoutInsetsForOrientation_];
    v5 = v4;
    v7 = v6;
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v8 = [v0 headerLeadingConstraint];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 setConstant_];

  v10 = [v0 headerTrailingConstraint];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 setConstant_];
}

id SBHAddWidgetSheetIconListCell.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void sub_1BEDC7C04(double a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo];
  if (SBIconImageInfoEqualToIconImageInfo(*&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo], *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo + 8], *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo + 16], *&v4[OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo + 24], a1, a2, a3, a4))
  {
    return;
  }

  v6 = [v4 imageWidthConstraint];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  [v6 setConstant_];

  v8 = [v4 imageHeightConstraint];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 setConstant_];

  v10 = [v4 imageView];
  [v10 _setContinuousCornerRadius_];
}

void sub_1BEDC85E8(void *a1)
{
  v2 = *&v1[OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconListView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 listContainerView];
    v5 = v3;
    [v4 addSubview_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 iconSpacing];
    v7 = v6;
    v9 = v8;
    sub_1BEDC7630();
    v11 = v10 + 4.0 + 4.0;
    if (v9 > v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    [v5 setIconSpacing_];
    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BEE8ACF0;
    v15 = [v5 leadingAnchor];
    v16 = [v4 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v14 + 32) = v17;
    v18 = [v5 trailingAnchor];

    v19 = [v4 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v14 + 40) = v20;
    v21 = [v5 bottomAnchor];

    v22 = [v4 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor_];

    *(v14 + 48) = v23;
    v24 = [v5 topAnchor];

    v25 = [v4 topAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v14 + 56) = v26;
    sub_1BEB20D28(0, &qword_1EBDC73C0);
    v27 = sub_1BEE4719C();

    [v13 activateConstraints_];

    v28 = swift_allocObject();
    *(v28 + 16) = v1;
    *(v28 + 24) = v5;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1BEDCAB20;
    *(v29 + 24) = v28;
    v34[4] = sub_1BEDCAB28;
    v34[5] = v29;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 1107296256;
    v34[2] = sub_1BEB5E290;
    v34[3] = &block_descriptor;
    v30 = _Block_copy(v34);
    v31 = v5;
    v32 = v1;

    [v31 enumerateIconViewsUsingBlock_];
    _Block_release(v30);
    LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

    if (v30)
    {
      __break(1u);
    }

    else
    {
      [v31 addLayoutObserver_];
      v33 = [v32 contentView];
      [v33 setNeedsLayout];

      sub_1BEDC7744();
    }
  }

  else if (a1)
  {

    [a1 removeFromSuperview];
  }
}

uint64_t sub_1BEDC8AA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BEDC8B58(a1, a5);
}

void sub_1BEDC8B58(void *a1, void *a2)
{
  v5 = [v2 labelViewsForIconViews];
  v18 = [v5 objectForKey_];

  v6 = v18;
  if (!v18)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v7 setNumberOfLines_];
    v8 = [a1 icon];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 displayName];

      if (!v10)
      {
        sub_1BEE4708C();
        v10 = sub_1BEE4705C();
      }
    }

    else
    {
      v10 = 0;
    }

    [v7 setText_];

    v11 = [objc_opt_self() _preferredFontForTextStyle_variant_];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    [v7 setFont_];

    v13 = [objc_opt_self() labelColor];
    [v7 setTextColor_];

    [v7 setTextAlignment_];
    [v7 setAdjustsFontForContentSizeCategory_];
    v14 = v7;
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [v2 labelViewsForIconViews];
    [v15 setObject:v14 forKey:a1];

    v19 = [a1 contentContainerView];
    [v19 addSubview_];
    v16 = [v2 visualStylingProvider];
    if (v16)
    {
      v17 = v16;
      [v16 automaticallyUpdateView:v14 withStyle:1];
    }

    sub_1BEDC9C24(v14, v19, a1, a2);
    v6 = v19;
  }
}

uint64_t sub_1BEDC8F48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_1BEDC90BC()
{
  v1 = [v0 titleStackView];
  v2 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_wantsHeaderView;
  [v1 setHidden_];

  v3 = [v0 titleStackViewBottomConstraint];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setActive_];

  v5 = [v0 listContainerViewTopConstraint];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setActive_];
}

void sub_1BEDC9358(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (Strong)
    {
      v4 = Strong;

      if (v4 == a1)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  v5 = [v1 labelViewsForIconViews];
  v6 = [v5 objectEnumerator];

  if (v6)
  {
    while (1)
    {
      if ([v6 nextObject])
      {
        sub_1BEE4741C();
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
      }

      v12 = v10;
      v13 = v11;
      if (!*(&v11 + 1))
      {

        goto LABEL_21;
      }

      sub_1BEB20D28(0, &unk_1EBDC73B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      if (a1)
      {
        v7 = a1;
        [v7 stopAutomaticallyUpdatingView_];
        [v10 mt_removeAllVisualStyling];
      }

      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 automaticallyUpdateView:v10 withStyle:1];
      }
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
LABEL_21:
    sub_1BEB4992C(&v12, &unk_1EBDC7A40);
  }
}

Swift::Void __swiftcall SBHAddWidgetSheetIconListCell.prepareForReuse()()
{
  v5.super_class = SBHAddWidgetSheetIconListCell;
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  [v0 setTitle_];
  [v0 setIconImage_];
  [v0 setIconBackgroundColor_];
  v1 = [v0 iconListView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 model];

    if (v3)
    {

      sub_1BEB20D28(0, &qword_1EBDBFEA0);
      v4 = sub_1BEE4719C();
      [v3 setIcons_];
    }
  }

  [v0 setSeparatorVisible_];
  [v0 setWantsHeaderView_];
}

id sub_1BEDC98E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_1BEDC99AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + *a5);
  *(a1 + *a5) = a3;
  v8 = a3;
}

void sub_1BEDC9C24(void *a1, void *a2, id a3, void *a4)
{
  v9 = [a3 icon];
  v10 = &selRef_configureViewsForCurrentInterfaceOrientation;
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = v9;
  v12 = [a4 model];
  if (!v12)
  {

LABEL_9:
    if (qword_1EBDC6DC0 != -1)
    {
      swift_once();
    }

    v22 = sub_1BEE46A0C();
    __swift_project_value_buffer(v22, qword_1EBDCA838);
    v23 = a3;
    v21 = sub_1BEE469FC();
    v24 = sub_1BEE4732C();

    if (os_log_type_enabled(v21, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&dword_1BEB18000, v21, v24, "Unable to get icon and model for icon view: %@", v25, 0xCu);
      sub_1BEB4992C(v26, &qword_1EBDC7490);
      MEMORY[0x1BFB50850](v26, -1, -1);
      MEMORY[0x1BFB50850](v25, -1, -1);
    }

    goto LABEL_27;
  }

  v13 = v12;
  v14 = [v12 indexForIcon:v11];
  if (v14 == sub_1BEE467EC())
  {
    if (qword_1EBDC6DC0 != -1)
    {
      swift_once();
    }

    v15 = sub_1BEE46A0C();
    __swift_project_value_buffer(v15, qword_1EBDCA838);
    v16 = v11;
    v17 = sub_1BEE469FC();
    v18 = sub_1BEE4732C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v11;
      v21 = v16;
      _os_log_impl(&dword_1BEB18000, v17, v18, "Unable to get index for icon: %@", v19, 0xCu);
      sub_1BEB4992C(v20, &qword_1EBDC7490);
      MEMORY[0x1BFB50850](v20, -1, -1);
      MEMORY[0x1BFB50850](v19, -1, -1);
    }

    else
    {

      v21 = v13;
    }

LABEL_27:

    v63 = [a1 widthAnchor];
    v61 = [a2 widthAnchor];
    v62 = [v63 v10[12]];

    v58 = 4.0;
    goto LABEL_28;
  }

  v21 = [a4 layoutMetrics];
  v28 = [a4 iconCoordinateForIndex:v14 metrics:v21];
  v30 = v29;
  if (SBIconCoordinateIsNotFound(v28, v29))
  {
    if (qword_1EBDC6DC0 != -1)
    {
      swift_once();
    }

    v31 = sub_1BEE46A0C();
    __swift_project_value_buffer(v31, qword_1EBDCA838);
    v32 = v11;
    v33 = sub_1BEE469FC();
    v34 = sub_1BEE4732C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v11;
      v37 = v32;
      _os_log_impl(&dword_1BEB18000, v33, v34, "Unable to get coordinate for icon: %@", v35, 0xCu);
      sub_1BEB4992C(v36, &qword_1EBDC7490);
      MEMORY[0x1BFB50850](v36, -1, -1);
      MEMORY[0x1BFB50850](v35, -1, -1);

      v21 = v37;
    }

    else
    {
    }

    v10 = &selRef_configureViewsForCurrentInterfaceOrientation;
    goto LABEL_27;
  }

  rect_8 = v13;
  [a4 rectForCellAtIconCoordinate:v28 metrics:{v30, v21}];
  rect = v38;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v11 gridSizeClass];
  v46 = [a4 iconGridSizeForClass_];

  [a4 rectForDefaultSizedCellsOfSize:v46 startingAtCoordinate:v28 metrics:{v30, v21}];
  x = v77.origin.x;
  y = v77.origin.y;
  width = v77.size.width;
  height = v77.size.height;
  v51 = CGRectGetWidth(v77);
  v52 = [v4 window];
  if (v52 && (v53 = v52, v54 = [v52 windowScene], v53, v54) && (v55 = objc_msgSend(v54, sel_effectiveGeometry), v54, v56 = objc_msgSend(v55, sel_interfaceOrientation), v55, v57 = objc_msgSend(objc_msgSend(a4, sel_layout), sel_numberOfColumnsForOrientation_, v56), swift_unknownObjectRelease(), v57 == v46))
  {

    v58 = 4.0;
  }

  else
  {
    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    MaxY = CGRectGetMaxY(v78);
    v79.origin.x = rect;
    v79.origin.y = v40;
    v79.size.width = v42;
    v79.size.height = v44;
    v60 = CGRectGetMaxY(v79);

    v58 = MaxY - v60 + 4.0;
  }

  v10 = &selRef_configureViewsForCurrentInterfaceOrientation;
  v61 = [a1 widthAnchor];
  v62 = [v61 constraintEqualToConstant_];
LABEL_28:

  v64 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7680);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1BEE8AD00;
  rect_8a = v62;
  v66 = [a1 centerXAnchor];
  v67 = [a2 centerXAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v65 + 32) = v68;
  *(v65 + 40) = rect_8a;
  v69 = [a1 topAnchor];
  v70 = [a2 bottomAnchor];
  v71 = [v69 v10[12]];

  *(v65 + 48) = v71;
  sub_1BEB20D28(0, &qword_1EBDC73C0);
  v72 = sub_1BEE4719C();

  [v64 activateConstraints_];
}

id sub_1BEDCA6A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void _sSo29SBHAddWidgetSheetIconListCellC15SpringBoardHomeE5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconImageInfo);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_identifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_iconListView) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorVisible) = 1;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_wantsHeaderView) = 1;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_textLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v5 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_symbolImageView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v6 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_separatorView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_listContainerView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v8 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_titleStackView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageWidthConstraint) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_imageHeightConstraint) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_headerLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_headerTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_titleStackViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_listContainerViewTopConstraint) = 0;
  v9 = OBJC_IVAR___SBHAddWidgetSheetIconListCell_labelViewsForIconViews;
  *(v0 + v9) = [objc_opt_self() weakToWeakObjectsMapTable];
  *(v0 + OBJC_IVAR___SBHAddWidgetSheetIconListCell_labelNumberOfLines) = 2;
  sub_1BEE4764C();
  __break(1u);
}

void sub_1BEDCA914(id a1)
{
  if (a1)
  {
    v3 = [a1 isSymbolImage];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 imageView];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  [v4 setImage_];

  v6 = [v1 symbolImageView];
  if (v3)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 setImage_];
}

void sub_1BEDCAA10(uint64_t a1)
{
  v3 = [v1 labelViewsForIconViews];
  v4 = [v3 objectForKey_];

  v5 = [v1 visualStylingProvider];
  if (v5)
  {
    v6 = v5;
    [v5 stopAutomaticallyUpdatingView_];
  }

  if (v4)
  {
    [v4 removeFromSuperview];
  }

  v7 = [v1 labelViewsForIconViews];
  [v7 removeObjectForKey_];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1BEDCAB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BEE4705C();

  if (a4)
  {
    v7 = sub_1BEE4705C();
  }

  else
  {
    v7 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for GenericApplicationIcon();
  v8 = objc_msgSendSuper2(&v13, sel_initWithLeafIdentifier_applicationBundleID_, v6, v7);

  v9 = objc_allocWithZone(type metadata accessor for GenericApplicationIconDataSource());
  v10 = v8;
  v11 = [v9 init];
  [v10 addIconDataSource_];

  return v10;
}

id sub_1BEDCAE3C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BEDCAE98(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BEE4748C();
    sub_1BEB20D28(0, &qword_1EBDBFFE0);
    sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
    sub_1BEE472AC();
    result = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v22 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      sub_1BEB2AAE8();
      return v9;
    }

    while (1)
    {
      v15 = [v14 uniqueIdentifier];
      v16 = sub_1BEE4708C();
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1BEE303A8(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1BEE303A8((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      v21 = &v9[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v4 = v12;
      v5 = v13;
      result = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BEE474FC())
      {
        sub_1BEB20D28(0, &qword_1EBDBFFE0);
        swift_dynamicCast();
        v14 = v28;
        v12 = v4;
        v13 = v5;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id sub_1BEDCB134(void *a1, SEL *a2, const char **a3)
{
  v5 = [a1 *a2];
  v6 = sub_1BEE4708C();
  v8 = v7;

  v9 = v6 == 0xD000000000000015 && 0x80000001BEEA2690 == v8;
  if (v9 || (sub_1BEE4770C() & 1) != 0)
  {

    v10 = &unk_1EBDBFFC8;
LABEL_7:
    sub_1BEB20D28(0, v10);
    goto LABEL_8;
  }

  if (v6 == 0xD000000000000013 && 0x80000001BEEA26B0 == v8)
  {

    goto LABEL_18;
  }

  v15 = sub_1BEE4770C();

  if (v15)
  {
LABEL_18:
    v10 = &unk_1EBDBFEC0;
    goto LABEL_7;
  }

  [swift_getObjCClassFromObject() applicationIconClass];
  swift_getObjCClassMetadata();
  sub_1BEB20D28(0, &unk_1EBDBFFD0);
  swift_dynamicCastMetatype();
LABEL_8:
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = *a3;

  return [v11 v12];
}

id sub_1BEDCB2C0(uint64_t a1)
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  [ObjCClassFromObject bookmarkClass];
  swift_getObjCClassMetadata();
  sub_1BEB20D28(0, &qword_1EBDC73C8);
  swift_dynamicCastMetatype();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWebClip_];
  [ObjCClassFromObject bookmarkIconClass];
  swift_getObjCClassMetadata();
  sub_1BEB20D28(0, &qword_1EBDC73D0);
  swift_dynamicCastMetatype();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBookmark_];

  return v4;
}

Swift::Void __swiftcall SBHIconRepository.addIcons(_:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    v2 = sub_1BEE474CC();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB4EA90](i, a1._rawValue);
      }

      else
      {
        v4 = *(a1._rawValue + i + 4);
      }

      v5 = v4;
      _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v4);
    }
  }
}

void _sSo17SBHIconRepositoryC15SpringBoardHomeE10removeIconyySo06SBLeafG0CF_0(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SBHIconRepository_isLoadingIcons;
  if ((*(v1 + OBJC_IVAR___SBHIconRepository_isLoadingIcons) & 1) == 0)
  {
    v5 = [*(v1 + OBJC_IVAR___SBHIconRepository_observers) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7470);
    v6 = sub_1BEE471AC();

    if (v6 >> 62)
    {
      v7 = sub_1BEE474CC();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          goto LABEL_29;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1BFB4EA90](i, v6);
          }

          else
          {
            v9 = *(v6 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v9 respondsToSelector_])
          {
            [v9 iconRepository:v2 willRemoveIcon:a1];
          }

          swift_unknownObjectRelease();
        }
      }
    }
  }

  v10 = [a1 uniqueIdentifier];
  v11 = sub_1BEE4708C();
  v13 = v12;

  swift_beginAccess();
  sub_1BEE27FBC(0, v11, v13);
  swift_endAccess();
  if (*(v2 + v4))
  {
    return;
  }

  v14 = [*(v2 + OBJC_IVAR___SBHIconRepository_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7470);
  v15 = sub_1BEE471AC();

  if (v15 >> 62)
  {
    v16 = sub_1BEE474CC();
    if (v16)
    {
LABEL_17:
      if (v16 >= 1)
      {
        for (j = 0; j != v16; ++j)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1BFB4EA90](j, v15);
          }

          else
          {
            v18 = *(v15 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          if ([v18 respondsToSelector_])
          {
            [v18 iconRepository:v2 didRemoveIcon:a1];
          }

          swift_unknownObjectRelease();
        }

        goto LABEL_26;
      }

LABEL_29:
      __break(1u);
      return;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_17;
    }
  }

LABEL_26:
}

uint64_t sub_1BEDCB9A8(void *a1)
{
  v2 = [a1 bundleIdentifier];
  if (!v2)
  {
    sub_1BEE4708C();
    v2 = sub_1BEE4705C();
  }

  v3 = [v1 iconFor_];

  if (v3)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id SBHIconRepository.addApplicationIcon(for:)(void *a1)
{
  v3 = [a1 bundleIdentifier];
  if (!v3)
  {
    sub_1BEE4708C();
    v3 = sub_1BEE4705C();
  }

  v4 = [v1 iconFor_];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      [v5 replaceApplicationDataSourcesWithApplication_];
      return v6;
    }
  }

  result = sub_1BEDCB134(a1, &selRef_bundleIdentifier, &selRef_initWithApplication_);
  if (result)
  {
    v8 = result;
    _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(result);
    return v8;
  }

  return result;
}

void sub_1BEDCBBE0(void *a1)
{
  v3 = [a1 applicationBundleIdentifier];
  if (!v3)
  {
    sub_1BEE4708C();
    v3 = sub_1BEE4705C();
  }

  v4 = [v1 iconFor_];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      [v5 replaceApplicationPlaceholderDataSourcesWithApplicationPlaceholder_];
      if (v1[OBJC_IVAR___SBHIconRepository_isLoadingIcons])
      {
        return;
      }

      v7 = [*&v1[OBJC_IVAR___SBHIconRepository_observers] allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7470);
      v8 = sub_1BEE471AC();

      if (v8 >> 62)
      {
        v9 = sub_1BEE474CC();
        if (v9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
LABEL_8:
          if (v9 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v9; ++i)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1BFB4EA90](i, v8);
            }

            else
            {
              v11 = *(v8 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            if ([v11 respondsToSelector_])
            {
              [v11 iconRepository:v1 didAddPlaceholderToApplicationIcon:v6];
            }

            swift_unknownObjectRelease();
          }
        }
      }

      return;
    }
  }

  v12 = sub_1BEDCB134(a1, &selRef_applicationBundleIdentifier, &selRef_initWithApplicationPlaceholder_);
  if (v12)
  {
    _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v12);
  }
}

id SBHIconRepository.addBookmarkIcon(for:)(void *a1)
{
  result = [a1 identifier];
  if (result)
  {
    v4 = result;
    v5 = [v1 bookmarkIconForWebClipIdentifier_];

    if (!v5)
    {
      v6 = sub_1BEDCB2C0(a1);
      if (v6)
      {
        v5 = v6;
        _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v6);
      }

      else
      {
        return 0;
      }
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SBHIconRepository.removeApplicationIcon(for:)(void *a1)
{
  v2 = [a1 bundleIdentifier];
  if (!v2)
  {
    sub_1BEE4708C();
    v2 = sub_1BEE4705C();
  }

  v5 = [v1 iconFor_];

  if (v5)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      [v3 removeApplicationDataSources];
      if (![v4 iconDataSourceCount])
      {
        _sSo17SBHIconRepositoryC15SpringBoardHomeE10removeIconyySo06SBLeafG0CF_0(v4);
      }
    }
  }
}

void sub_1BEDCC1BC(void *a1)
{
  v2 = [a1 applicationBundleIdentifier];
  if (!v2)
  {
    sub_1BEE4708C();
    v2 = sub_1BEE4705C();
  }

  v11 = [v1 iconFor_];

  if (v11)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3 || (v4 = v3, [v3 removeApplicationPlaceholderDataSources], (v1[OBJC_IVAR___SBHIconRepository_isLoadingIcons] & 1) != 0))
    {

      return;
    }

    v5 = [*&v1[OBJC_IVAR___SBHIconRepository_observers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7470);
    v6 = sub_1BEE471AC();

    if (v6 >> 62)
    {
      v7 = sub_1BEE474CC();
      v8 = v11;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v11;
      if (v7)
      {
LABEL_12:
        if (v7 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v7; ++i)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1BFB4EA90](i, v6);
          }

          else
          {
            v10 = *(v6 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v10 respondsToSelector_])
          {
            [v10 iconRepository:v1 didRemovePlaceholderFromApplicationIcon:v4];
          }

          swift_unknownObjectRelease();
        }

        v8 = v11;
      }
    }
  }
}

void SBHIconRepository.updateExistingBookmarkIcon(_:forUpdatedWebClip:)(void *a1, uint64_t a2)
{
  [swift_getObjCClassFromObject() bookmarkClass];
  swift_getObjCClassMetadata();
  sub_1BEB20D28(0, &qword_1EBDC73C8);
  swift_dynamicCastMetatype();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWebClip_];
  [a1 setBookmark_];
}

void __swiftcall SBHIconRepository.icon(forIdentifier:)(SBLeafIcon_optional *__return_ptr retstr, Swift::String forIdentifier)
{
  v3 = sub_1BEE4705C();
  v4 = [v2 iconFor_];
}

uint64_t sub_1BEDCC698()
{
  v1 = sub_1BEE4705C();
  v2 = [v0 iconFor_];

  if (v2)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void __swiftcall SBHIconRepository.bookmarkIcon(forWebClipPlaceholderBundleIdentifier:)(SBHBookmarkIcon_optional *__return_ptr retstr, Swift::String forWebClipPlaceholderBundleIdentifier)
{
  object = forWebClipPlaceholderBundleIdentifier._object;
  countAndFlagsBits = forWebClipPlaceholderBundleIdentifier._countAndFlagsBits;
  sub_1BEB1FF98();
  v4 = OBJC_IVAR___SBHIconRepository_storedIcons;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = *(*(v5 + 56) + ((v11 << 9) | (8 * v12)));
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1BFB4E650](v13);
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BEE471BC();
    }

    sub_1BEE471DC();
    v6 = v31;
  }

  while (v9);
  while (1)
  {
LABEL_6:
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v5 + 64 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_4;
    }
  }

  if (v6 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v16 = 0;
    v28 = v6 & 0xFFFFFFFFFFFFFF8;
    v29 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v29)
      {
        v17 = v6;
        v18 = MEMORY[0x1BFB4EA90](v16, v6);
      }

      else
      {
        if (v16 >= *(v28 + 16))
        {
          goto LABEL_34;
        }

        v17 = v6;
        v18 = *(v6 + 8 * v16 + 32);
      }

      v19 = v18;
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v18 bookmark];
      v21 = [v20 placeholderBundleIdentifier];
      v22 = object;
      v23 = sub_1BEE4708C();
      v25 = v24;

      v26 = v23 == countAndFlagsBits && v25 == v22;
      if (v26)
      {

        return;
      }

      object = v22;
      v27 = sub_1BEE4770C();

      if ((v27 & 1) == 0)
      {

        ++v16;
        v26 = v6 == i;
        v6 = v17;
        if (!v26)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
}

uint64_t sub_1BEDCCA5C()
{
  sub_1BEB1FF98();
  v1 = OBJC_IVAR___SBHIconRepository_storedIcons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1BFB4E650](v11);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BEE471BC();
    }

    result = sub_1BEE471DC();
    v3 = v14;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      v13 = sub_1BEDCF9A0(v3, &qword_1EBDC73D0, off_1E8086C08, &unk_1EBDC7590, sub_1BEDF6534);

      return v13;
    }

    v6 = *(v2 + 64 + 8 * v12);
    ++v9;
    if (v6)
    {
      v9 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t SBHIconRepository.enumerateIcons(_:)(void (*a1)(void))
{
  sub_1BEB1FF98();
  v3 = OBJC_IVAR___SBHIconRepository_storedIcons;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(*(v4 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
      a1();

      v7 &= v7 - 1;
      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      goto LABEL_8;
    }
  }
}

Swift::Bool __swiftcall SBHIconRepository.containsIcon(_:)(SBLeafIcon *a1)
{
  v3 = [(SBIcon *)a1 uniqueIdentifier];
  if (!v3)
  {
    sub_1BEE4708C();
    v3 = sub_1BEE4705C();
  }

  v4 = [v1 iconFor_];

  if (!v4)
  {
    return 0;
  }

  sub_1BEB20D28(0, &qword_1EBDBFFE0);
  v5 = a1;
  v6 = sub_1BEE473CC();

  return v6 & 1;
}

void SBHIconRepository.uninstallIcon(_:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 applicationBundleID];
  if (v6)
  {
    v7 = v6;
    sub_1BEE4708C();

    v8 = [v3 applicationInfoProvider];
    if (v8)
    {
      v9 = v8;
      if ([v8 respondsToSelector_])
      {
        v10 = sub_1BEE4705C();
        if (a2)
        {
          v12[4] = a2;
          v12[5] = a3;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 1107296256;
          v12[2] = sub_1BEDCD0E4;
          v12[3] = &block_descriptor_0;
          v11 = _Block_copy(v12);
        }

        else
        {
          v11 = 0;
        }

        [v9 uninstallApplicationWithBundleIdentifier:v10 completion:v11];
        _Block_release(v11);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1BEDCD0E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void SBHIconRepository.setVisibilityOfIconsWithVisibleTags(_:hiddenTags:)(uint64_t a1, uint64_t a2)
{
  sub_1BEB1FF98();
  v5 = [v2 visibleIconTags];
  v6 = sub_1BEE4726C();

  LOBYTE(v5) = sub_1BEDCE5E8(a1, v6);

  if (v5)
  {
    v7 = [v2 hiddenIconTags];
    v8 = sub_1BEE4726C();

    LOBYTE(v7) = sub_1BEDCE5E8(a2, v8);

    if (v7)
    {
      return;
    }
  }

  sub_1BEB1FF98();
  v9 = [v2 visibleIcons];
  v10 = sub_1BEB20D28(0, &qword_1EBDBFFE0);
  sub_1BEB2A7E0(&qword_1EBDBFF70, &qword_1EBDBFFE0);
  v63 = v10;
  v11 = sub_1BEE4726C();

  v12 = sub_1BEDCAE98(v11);

  v13 = sub_1BEDCF8A0(v12);

  *&v2[OBJC_IVAR___SBHIconRepository__visibleIconTags] = a1;

  v67 = v2;
  *&v2[OBJC_IVAR___SBHIconRepository__hiddenIconTags] = a2;

  if (qword_1EBDBFE30 != -1)
  {
LABEL_52:
    swift_once();
  }

  v14 = sub_1BEE46A0C();
  __swift_project_value_buffer(v14, qword_1EBDCA800);

  v15 = sub_1BEE469FC();
  v16 = sub_1BEE4733C();

  v68 = v13;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v69[0] = v18;
    *v17 = 136446210;
    v19 = sub_1BEE4727C();
    v21 = sub_1BEDCE8F4(v19, v20, v69);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1BEB18000, v15, v16, "Hidden Icon Tags: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1BFB50850](v18, -1, -1);
    MEMORY[0x1BFB50850](v17, -1, -1);
  }

  v22 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  v23 = OBJC_IVAR___SBHIconRepository_storedIcons;
  swift_beginAccess();
  v24 = *&v67[v23];
  v27 = *(v24 + 64);
  v26 = v24 + 64;
  v25 = v27;
  v28 = 1 << *(*&v67[v23] + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & v25;
  v13 = (v28 + 63) >> 6;
  v31 = v68 + 56;
  v64 = *&v67[v23];

  v32 = 0;
  v65 = v22;
  v66 = v22;
  v33 = v68;
  while (v30)
  {
LABEL_17:
    v35 = *(*(v64 + 56) + ((v32 << 9) | (8 * __clz(__rbit64(v30)))));
    v36 = [v35 uniqueIdentifier];
    v37 = sub_1BEE4708C();
    v39 = v38;

    if (*(v33 + 16) && (sub_1BEE4777C(), sub_1BEE470CC(), v40 = sub_1BEE477CC(), v41 = -1 << *(v33 + 32), v42 = v40 & ~v41, ((*(v31 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
    {
      v43 = ~v41;
      while (1)
      {
        v44 = (*(v68 + 48) + 16 * v42);
        v45 = *v44 == v37 && v44[1] == v39;
        if (v45 || (sub_1BEE4770C() & 1) != 0)
        {
          break;
        }

        v42 = (v42 + 1) & v43;
        if (((*(v31 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          v46 = 0;
          goto LABEL_29;
        }
      }

      v46 = 1;
LABEL_29:
      v33 = v68;
    }

    else
    {
      v46 = 0;
    }

    v30 &= v30 - 1;

    if ([v67 isIconVisible_])
    {
      if (v46)
      {
LABEL_11:
      }

      else
      {
        v47 = v35;
        MEMORY[0x1BFB4E650]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BEE471BC();
          v33 = v68;
        }

        sub_1BEE471DC();

        v65 = v70;
      }
    }

    else
    {
      if ((v46 & 1) == 0)
      {
        goto LABEL_11;
      }

      v48 = v35;
      MEMORY[0x1BFB4E650]();
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BEE471BC();
        v33 = v68;
      }

      sub_1BEE471DC();

      v66 = v71;
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v34 >= v13)
    {
      break;
    }

    v30 = *(v26 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_17;
    }
  }

  if (v67[OBJC_IVAR___SBHIconRepository_isLoadingIcons])
  {

    return;
  }

  v49 = [*&v67[OBJC_IVAR___SBHIconRepository_observers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7470);
  v50 = sub_1BEE471AC();

  if (v50 >> 62)
  {
    v51 = sub_1BEE474CC();
    if (!v51)
    {
      goto LABEL_54;
    }

LABEL_42:
    if (v51 >= 1)
    {
      for (i = 0; i != v51; ++i)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x1BFB4EA90](i, v50);
        }

        else
        {
          v55 = *(v50 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v55 respondsToSelector_])
        {
          swift_unknownObjectRetain();
          v53 = sub_1BEE4719C();
          v54 = sub_1BEE4719C();
          [v55 iconRepository:v67 didChangeVisibilityForIconsToVisible:v53 hidden:v54];
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      goto LABEL_54;
    }

    __break(1u);
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
      goto LABEL_42;
    }

LABEL_54:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7478);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BEE8AD80;
    *(inited + 32) = sub_1BEE4708C();
    *(inited + 40) = v57;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7480);
    *(inited + 72) = v58;
    *(inited + 48) = v65;
    *(inited + 80) = sub_1BEE4708C();
    *(inited + 88) = v59;
    *(inited + 120) = v58;
    *(inited + 96) = v66;
    v60 = sub_1BEDCF560(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7488);
    swift_arrayDestroy();
    v61 = [objc_opt_self() defaultCenter];
    sub_1BEDCDBD4(v60);

    v62 = sub_1BEE4700C();

    [v61 postNotificationName:@"SBHIconRepositoryIconVisibilityDidChangeNotification" object:v67 userInfo:v62];
  }
}

uint64_t sub_1BEDCDABC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1BEE4750C();
  }

  else if (*(a2 + 16) && (sub_1BEB20D28(0, &qword_1EBDBFEA0), v5 = sub_1BEE473BC(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1BEE473CC();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1BEDCDBD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7520);
    v2 = sub_1BEE476AC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BEDD0540(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1BEB45FE0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1BEB45FE0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1BEB45FE0(v31, v32);
    result = sub_1BEE4752C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1BEB45FE0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall SBHIconRepository.isApplicationIconVisible(forBundleIdentifier:)(Swift::String forBundleIdentifier)
{
  v2 = sub_1BEE4705C();
  v3 = [v1 applicationIconForBundleIdentifier_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 isIconVisible_];

  return v4;
}

id sub_1BEDCE0D0(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = a1;
  a3();

  sub_1BEB20D28(0, a4);
  sub_1BEB2A7E0(a6, a4);
  v10 = sub_1BEE4724C();

  return v10;
}

void SBHIconRepository.visibleIcons.getter()
{
  sub_1BEB1FF98();
  v1 = OBJC_IVAR___SBHIconRepository_storedIcons;
  swift_beginAccess();
  v2 = *&v0[v1];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v0;

  v8 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1BEDCF9A0(v12, &qword_1EBDBFFE0, off_1E80877A0, &qword_1EBDBFF70, sub_1BEB2B000);

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
        if ([v7 isIconVisible_])
        {
          sub_1BEE475FC();
          sub_1BEE4761C();
          sub_1BEE4762C();
          sub_1BEE4760C();
          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v8;
      }
    }
  }

  __break(1u);
}

id SBHIconRepository.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t SBHIconRepository.applicationInfoProvider(_:didAdd:)(uint64_t a1, unint64_t a2)
{
  return sub_1BEB454BC(a2);
}

{
  return sub_1BEDCFDCC(a2);
}

void SBHIconRepository.applicationInfoProvider(_:didRemove:)(uint64_t a1, unint64_t a2)
{
  sub_1BEDCFC4C(a2);
}

{
  sub_1BEDD0230(a2);
}

uint64_t sub_1BEDCE554(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v9 = sub_1BEE471AC();
  swift_unknownObjectRetain();
  v10 = a1;
  a7(v9);
  swift_unknownObjectRelease();
}

uint64_t sub_1BEDCE5E8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1BEE4777C();

    sub_1BEE470CC();
    v16 = sub_1BEE477CC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1BEE4770C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEDCE7A0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1BEE4776C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BEDCE8F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BEDCE9C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BEDD0540(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1BEDCE9C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BEDCEACC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BEE475EC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BEDCEACC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BEDCEB18(a1, a2);
  sub_1BEDCEC48(&unk_1F3D430C0);
  return v3;
}

uint64_t sub_1BEDCEB18(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BEDF64C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BEE475EC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BEE470FC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BEDF64C0(v10, 0);
        result = sub_1BEE4759C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BEDCEC48(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BEDCED34(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BEDCED34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC75A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1BEDCEE28(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (swift_stdlib_isStackAllocationSafe() & 1) != 0)
  {
    MEMORY[0x1EEE9AC00]();
    bzero(v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v8 = sub_1BEDCF07C(v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v10 = swift_slowAlloc();

    v8 = sub_1BEDCEFEC(v10, v6, a2, a1);

    MEMORY[0x1BFB50850](v10, -1, -1);
  }

  return v8;
}

void *sub_1BEDCEFEC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1BEDCF07C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1BEDCF07C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1BEE4777C();

      sub_1BEE470CC();
      v26 = sub_1BEE477CC();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1BEE4770C() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1BEE1D69C(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1BEE4777C();

      sub_1BEE470CC();
      v39 = sub_1BEE477CC();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1BEE4770C() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void (*sub_1BEDCF458(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB4EA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BEDCF4D8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BEDCF4E0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB4EA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BEDD05A8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BEDCF560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC75A8);
    v3 = sub_1BEE476AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BEB44B04(v4, &v13, &qword_1EBDC7488);
      v5 = v13;
      v6 = v14;
      result = sub_1BEB1DAFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BEB45FE0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BEDCF690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7568);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDC7570);
    v7 = sub_1BEE476AC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BEB44B04(v9, v5, &qword_1EBDC7568);
      result = sub_1BEE300A0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1BEE469DC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BEDCF8A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFB4E750](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1BEDF6558(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1BEDCF938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BEDCF9A0(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BEE474CC())
  {
    v11 = sub_1BEB20D28(0, j);
    v12 = sub_1BEB2A7E0(a4, j);
    result = MEMORY[0x1BFB4E750](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB4EA90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = sub_1BEE474CC();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BEDCFAF8(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  sub_1BEB1FF98();
  v4 = OBJC_IVAR___SBHIconRepository_storedIcons;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(v5 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v14 = 0;
      (*(a2 + 16))(a2, v12, &v14);
      if (v14 == 1)
      {
        break;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }
  }
}

void sub_1BEDCFC4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1BEE474CC();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB4EA90](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
        swift_unknownObjectRetain();
      }

      v6 = [v5 bundleIdentifier];
      if (!v6)
      {
        sub_1BEE4708C();
        v6 = sub_1BEE4705C();
      }

      v7 = [v1 iconFor_];

      if (v7)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          swift_unknownObjectRelease();

          goto LABEL_7;
        }

        v9 = v8;
        [v8 removeApplicationDataSources];
        if (![v9 iconDataSourceCount])
        {
          _sSo17SBHIconRepositoryC15SpringBoardHomeE10removeIconyySo06SBLeafG0CF_0(v9);
        }
      }

      swift_unknownObjectRelease();
LABEL_7:
      if (v3 == ++v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

unint64_t sub_1BEDCFDCC(unint64_t result)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v27 = v2 & 0xFFFFFFFFFFFFFF8;
      v28 = OBJC_IVAR___SBHIconRepository_isLoadingIcons;
      v25 = OBJC_IVAR___SBHIconRepository_observers;
      v26 = v2 + 32;
      v29 = v2 & 0xC000000000000001;
      v23 = v2;
      v24 = v3;
      while (v29)
      {
        v5 = MEMORY[0x1BFB4EA90](v4, v2);
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_44;
        }

LABEL_12:
        v7 = [v5 applicationBundleIdentifier];
        if (!v7)
        {
          sub_1BEE4708C();
          v7 = sub_1BEE4705C();
        }

        v8 = [v1 iconFor_];

        if (!v8)
        {
          goto LABEL_28;
        }

        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (!v9)
        {

LABEL_28:
          v16 = [v5 applicationBundleIdentifier];
          v17 = sub_1BEE4708C();
          v19 = v18;

          if (v17 == 0xD000000000000015 && 0x80000001BEEA2690 == v19 || (sub_1BEE4770C() & 1) != 0)
          {

            v20 = &unk_1EBDBFFC8;
            goto LABEL_32;
          }

          if (v17 == 0xD000000000000013 && 0x80000001BEEA26B0 == v19)
          {

LABEL_39:
            v20 = &unk_1EBDBFEC0;
LABEL_32:
            sub_1BEB20D28(0, v20);
          }

          else
          {
            v22 = sub_1BEE4770C();

            if (v22)
            {
              goto LABEL_39;
            }

            [swift_getObjCClassFromObject() applicationIconClass];
            swift_getObjCClassMetadata();
            sub_1BEB20D28(0, &unk_1EBDBFFD0);
            swift_dynamicCastMetatype();
          }

          v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithApplicationPlaceholder_];
          _sSo17SBHIconRepositoryC15SpringBoardHomeE7addIconyySo06SBLeafG0CF_0(v21);

          goto LABEL_5;
        }

        v10 = v9;
        [v9 replaceApplicationPlaceholderDataSourcesWithApplicationPlaceholder_];
        if ((v1[v28] & 1) == 0)
        {
          v11 = [*&v1[v25] allObjects];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7470);
          v12 = sub_1BEE471AC();

          if (v12 >> 62)
          {
            v13 = sub_1BEE474CC();
            if (!v13)
            {
              goto LABEL_42;
            }

LABEL_19:
            if (v13 < 1)
            {
              goto LABEL_46;
            }

            for (i = 0; i != v13; ++i)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x1BFB4EA90](i, v12);
              }

              else
              {
                v15 = *(v12 + 8 * i + 32);
                swift_unknownObjectRetain();
              }

              if ([v15 respondsToSelector_])
              {
                [v15 iconRepository:v1 didAddPlaceholderToApplicationIcon:v10];
              }

              swift_unknownObjectRelease();
            }

            v2 = v23;
          }

          else
          {
            v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v13)
            {
              goto LABEL_19;
            }

LABEL_42:
          }

          v3 = v24;
          goto LABEL_5;
        }

LABEL_5:
        result = swift_unknownObjectRelease();
        if (v4 == v3)
        {
          return result;
        }
      }

      if (v4 >= *(v27 + 16))
      {
        goto LABEL_45;
      }

      v5 = *(v26 + 8 * v4);
      swift_unknownObjectRetain();
      v6 = __OFADD__(v4++, 1);
      if (!v6)
      {
        goto LABEL_12;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      result = sub_1BEE474CC();
      v3 = result;
    }

    while (result);
  }

  return result;
}

void sub_1BEDD0230(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BEE474CC())
  {
    v4 = 0;
    v5 = OBJC_IVAR___SBHIconRepository_isLoadingIcons;
    v22 = v2 & 0xFFFFFFFFFFFFFF8;
    v23 = v2 & 0xC000000000000001;
    v20 = OBJC_IVAR___SBHIconRepository_observers;
    v21 = v2 + 32;
    v17 = i;
    v18 = v2;
    v19 = OBJC_IVAR___SBHIconRepository_isLoadingIcons;
    while (v23)
    {
      v6 = MEMORY[0x1BFB4EA90](v4, v2);
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        goto LABEL_32;
      }

LABEL_13:
      v8 = [v6 applicationBundleIdentifier];
      if (!v8)
      {
        sub_1BEE4708C();
        v8 = sub_1BEE4705C();
      }

      v9 = [v1 iconFor_];

      if (!v9)
      {
        goto LABEL_5;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        swift_unknownObjectRelease();

        goto LABEL_6;
      }

      v11 = v10;
      [v10 removeApplicationPlaceholderDataSources];
      if (v1[v5] == 1)
      {

LABEL_5:
        swift_unknownObjectRelease();
        goto LABEL_6;
      }

      v12 = [*&v1[v20] allObjects];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7470);
      v13 = sub_1BEE471AC();

      if (v13 >> 62)
      {
        v14 = sub_1BEE474CC();
        if (!v14)
        {
LABEL_31:

          swift_unknownObjectRelease();

          v5 = v19;
          goto LABEL_6;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_31;
        }
      }

      if (v14 < 1)
      {
        goto LABEL_34;
      }

      for (j = 0; j != v14; ++j)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB4EA90](j, v13);
        }

        else
        {
          v16 = *(v13 + 8 * j + 32);
          swift_unknownObjectRetain();
        }

        if ([v16 respondsToSelector_])
        {
          [v16 iconRepository:v1 didRemovePlaceholderFromApplicationIcon:v11];
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();

      i = v17;
      v2 = v18;
      v5 = v19;
LABEL_6:
      if (v4 == i)
      {
        return;
      }
    }

    if (v4 >= *(v22 + 16))
    {
      goto LABEL_33;
    }

    v6 = *(v21 + 8 * v4);
    swift_unknownObjectRetain();
    v7 = __OFADD__(v4++, 1);
    if (!v7)
    {
      goto LABEL_13;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }
}

uint64_t sub_1BEDD0540(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id static SBLeafIcon.iconWithUniqueLeafIdentifier()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 initWithUniqueLeafIdentifier];
}

char *sub_1BEDD0B38(_OWORD *a1, void *a2, uint64_t a3, double a4, double a5, double a6, CGFloat a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v16 = &v8[OBJC_IVAR___SBHIconResizeHandle_hitArea];
  *v16 = 0u;
  v16[1] = 0u;
  v17 = &v8[OBJC_IVAR___SBHIconResizeHandle_shapePathOrigin];
  *v17 = 0;
  v17[1] = 0;
  *&v8[OBJC_IVAR___SBHIconResizeHandle_resizingGestureRecognizer] = 0;
  v8[OBJC_IVAR___SBHIconResizeHandle_isHighlighted] = 0;
  v8[OBJC_IVAR___SBHIconResizeHandle__isResizing] = 0;
  v8[OBJC_IVAR___SBHIconResizeHandle_isDarkStyle] = 0;
  *&v8[OBJC_IVAR___SBHIconResizeHandle_shapeLayer] = 0;
  p_class_meths = &OBJC_PROTOCOL___SBHIconLayerObserver.class_meths;
  v19 = &v8[OBJC_IVAR___SBHIconResizeHandle_metrics];
  v20 = a1[3];
  v19[2] = a1[2];
  v19[3] = v20;
  v19[4] = a1[4];
  v21 = a1[1];
  *v19 = *a1;
  v19[1] = v21;
  v22 = &v8[OBJC_IVAR___SBHIconResizeHandle_iconImageInfo];
  *v22 = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v123 = a7;
  *&v8[OBJC_IVAR___SBHIconResizeHandle_backgroundView] = a2;
  *&v8[OBJC_IVAR___SBHIconResizeHandle_material] = a3;
  v122 = a2;
  v110 = a3;
  if (a2)
  {
    v23 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    v24 = a2;
    v25 = [v23 initWithFrame_];
    v26 = objc_opt_self();
    v27 = [v26 whiteColor];
    [v25 setBackgroundColor_];

    [v25 setAlpha_];
    *&v8[OBJC_IVAR___SBHIconResizeHandle_whiteTintView] = v25;
    v28 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    v29 = v25;
    v30 = [v28 initWithFrame_];
    v31 = [v26 clearColor];
    [v30 setBackgroundColor_];

    [v30 setAlpha_];
    v32 = [v30 layer];
    v33 = *MEMORY[0x1E6979D28];
    [v32 setCompositingFilter_];

    p_class_meths = (&OBJC_PROTOCOL___SBHIconLayerObserver + 32);
    v34 = 0;
    *&v8[OBJC_IVAR___SBHIconResizeHandle_highlightView] = v30;
  }

  else
  {
    *&v8[OBJC_IVAR___SBHIconResizeHandle_whiteTintView] = 0;
    *&v8[OBJC_IVAR___SBHIconResizeHandle_highlightView] = 0;
    Mutable = CGPathCreateMutable();
    v138 = a3;
    v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7630));
    v34 = sub_1BEE46C9C();
    result = [v34 view];
    if (!result)
    {
      goto LABEL_42;
    }

    v37 = result;
    v38 = [objc_opt_self() clearColor];
    [v37 setBackgroundColor_];
  }

  *&v8[OBJC_IVAR___SBHIconResizeHandle_glassContainerViewController] = v34;
  v130.receiver = v8;
  v130.super_class = SBHIconResizeHandle;
  v39 = objc_msgSendSuper2(&v130, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v40 = [v39 traitCollection];
  [v40 displayScale];

  BSFloatCeilForScale();
  v42 = -v41;
  v143.origin.x = 0.0;
  v143.origin.y = 0.0;
  v143.size.width = a7;
  v143.size.height = a7;
  v144 = CGRectInset(v143, v42, v42);
  y = v144.origin.y;
  x = v144.origin.x;
  height = v144.size.height;
  width = v144.size.width;
  v43 = (p_class_meths[187] + v39);
  v45 = *v43;
  v44 = v43[1];
  v46 = v43[2];
  v47 = v43[3];
  v48 = v43[4];
  v49 = *(v43 + 5);
  v113 = v43[6];
  v114 = v43[8];
  v115 = v43[7];
  v116 = v43[9];
  v50 = [v39 effectiveUserInterfaceLayoutDirection];

  v117 = v45;
  v111 = v45 * 0.5;
  BSFloatCeilForScale();
  v52 = v51;
  if (v50 == 1)
  {
    v53 = -v47;
  }

  else
  {
    v53 = v47;
  }

  if (!BSFloatGreaterThanFloat())
  {
    v46 = v123;
  }

  v54 = CGPathCreateMutable();
  if (BSFloatGreaterThanFloat())
  {
    v55 = a2;
    v56 = 0.0;
    if (BSFloatLessThanFloat())
    {
      v56 = (1.57079633 - v44 / v46) * 0.5;
    }
  }

  else
  {
    v55 = a2;
    v56 = 0.0;
  }

  v57 = v52 + v53;
  v58 = v48 + v52;
  if (v50 == 1)
  {
    v59 = v57 + v46;
    v60 = v58 + v123 - v46;
    v61 = 3.14159265 - v56;
    Mutable = 0x3FF0000000000000;
    v138 = 0;
    v139 = 0;
    v140 = 0x3FF0000000000000;
    v141 = 0;
    v142 = 0;
    sub_1BEE4734C();
    v56 = v56 + 1.57079633;
  }

  else
  {
    v59 = v57 + v123 - v46;
    v60 = v58 + v123 - v46;
    Mutable = 0x3FF0000000000000;
    v138 = 0;
    v61 = 1.57079633 - v56;
    v139 = 0;
    v140 = 0x3FF0000000000000;
    v141 = 0;
    v142 = 0;
    sub_1BEE4734C();
  }

  v131 = 0x3FF0000000000000;
  v132 = 0;
  v133 = 0;
  v134 = 0x3FF0000000000000;
  v135 = 0;
  v136 = 0;
  v62 = sub_1BEE473DC();
  if (v49)
  {

    v63 = v115 + v46 - v111;
    if (v50 == 1)
    {
      v64 = -v113 / v46;
    }

    else
    {
      v64 = -v114 / v46;
    }

    if (v50 == 1)
    {
      v65 = -v114 / v46;
    }

    else
    {
      v65 = -v113 / v46;
    }

    v66 = v56 - v65;
    v67 = v117 - v115 - v116;
    v68 = v64 + v65 + v61 - v56;
  }

  else
  {
    SBHDirectionalEdgeInsetsGetEdgeInsets();
    v70 = v69;
    v72 = v71;

    v63 = UIEdgeInsetsInsetRect(v52, v52, v123, v123, v70, v72);
  }

  v73 = &v39[OBJC_IVAR___SBHIconResizeHandle_shapePathOrigin];
  *v73 = v59;
  v73[1] = v60;
  v74 = &v39[OBJC_IVAR___SBHIconResizeHandle_hitArea];
  *v74 = v63;
  v74[1] = v66;
  v74[2] = v67;
  v74[3] = v68;
  if (v55)
  {
    v75 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
    [v75 setPath_];
    v76 = *&v39[OBJC_IVAR___SBHIconResizeHandle_shapeLayer];
    *&v39[OBJC_IVAR___SBHIconResizeHandle_shapeLayer] = v75;
    v77 = v75;

    v78 = [v39 layer];
    [v78 setMask_];
  }

  else
  {
    v79 = *&v39[OBJC_IVAR___SBHIconResizeHandle_glassContainerViewController];
    if (v79)
    {
      aBlock = v62;
      v125 = v110;
      v80 = v79;
      v81 = v62;
      sub_1BEE46CBC();
    }
  }

  v82 = v39;
  v83 = [v82 layer];
  [v83 setHitTestsAsOpaque_];

  v84 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v85 = sub_1BEE4705C();
  [v84 setName_];

  v86 = sub_1BEE472BC();
  v87 = *MEMORY[0x1E6979990];
  [v84 setValue:v86 forKey:*MEMORY[0x1E6979990]];

  v88 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v89 = sub_1BEE4705C();
  [v88 setName_];

  v90 = sub_1BEE472BC();
  [v88 setValue:v90 forKey:v87];

  v91 = [v82 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7638);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1BEE8AD80;
  v93 = sub_1BEB20D28(0, &qword_1EBDBFFE8);
  *(v92 + 32) = v84;
  *(v92 + 88) = v93;
  *(v92 + 56) = v93;
  *(v92 + 64) = v88;
  v94 = v84;
  v95 = v88;
  v96 = sub_1BEE4719C();

  [v91 setFilters_];

  if (v122)
  {
    [v82 addSubview_];
  }

  if (*&v82[OBJC_IVAR___SBHIconResizeHandle_whiteTintView])
  {
    [v82 addSubview_];
  }

  if (*&v82[OBJC_IVAR___SBHIconResizeHandle_highlightView])
  {
    [v82 addSubview_];
  }

  v97 = *&v82[OBJC_IVAR___SBHIconResizeHandle_glassContainerViewController];
  if (v97)
  {
    v98 = [v97 view];
    if (v98)
    {
      v99 = v98;
      [v82 addSubview_];
    }
  }

  v100 = objc_opt_self();
  v101 = swift_allocObject();
  *(v101 + 2) = v82;
  v101[3] = x;
  v101[4] = y;
  v101[5] = width;
  v101[6] = height;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_1BEDD3DE4;
  *(v102 + 24) = v101;
  v128 = sub_1BEDD3DF4;
  v129 = v102;
  aBlock = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  v126 = sub_1BEE245A8;
  v127 = &block_descriptor_15;
  v103 = _Block_copy(&aBlock);
  v104 = v82;

  [v100 performWithoutAnimation_];
  _Block_release(v103);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDC7640);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1BEE8AE40;
    v107 = sub_1BEE46A6C();
    v108 = MEMORY[0x1E69DC090];
    *(v106 + 32) = v107;
    *(v106 + 40) = v108;
    v109 = swift_allocObject();
    *(v109 + 16) = v123;
    *(v109 + 24) = ObjectType;
    type metadata accessor for SBHIconResizeHandle(v109);
    sub_1BEE4739C();

    swift_unknownObjectRelease();

    return v104;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}