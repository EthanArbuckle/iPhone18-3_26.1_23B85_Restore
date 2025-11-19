void sub_2210BA2FC(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v9 = objc_msgSend_sourceRectOrigin(*(a1 + 32), v5, v6, v7, v8);
  if (a2 + WORD2(v9) <= 0x3E7 && (a2 >> 32) + v9 <= 0xF423F)
  {
    TSUOffsetColumnRowCoordinate();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_2210BA3B0(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a2;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v20, v24, 16);
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_msgSend_sparseCellList(v12, v5, v6, v7, v8, v20);
        v14 = v13 == 0;

        if (!v14)
        {
          v15 = *(a1 + 32);
          v16 = objc_msgSend_sparseCellList(v12, v5, v6, v7, v8);
          objc_msgSend_appendCellList_(v15, v17, v16, v18, v19);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v20, v24, 16);
    }

    while (v9);
  }
}

uint64_t sub_2210BA7B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cellID(v3, v4, v5, v6, v7);
  v9 = *(a1 + 32);
  v39.coordinate = v8;
  v39._tableUID = *v9;
  if (TSCECellRefSet::containsCellRef((a1 + 40), &v39))
  {
    v14 = objc_msgSend_cell(v3, v10, v11, v12, v13);
    if (objc_msgSend_hasFormula(v14, v15, v16, v17, v18))
    {
      v23 = objc_msgSend_formulaObject(v14, v19, v20, v21, v22);
      isSpillFormulaForOriginCell = objc_msgSend_isSpillFormulaForOriginCell_(v23, v24, a1 + 64, v25, v26);

      if (isSpillFormulaForOriginCell)
      {
        objc_msgSend_clearValue(v14, v28, v29, v30, v31);
        objc_msgSend_setFormulaObject_(v14, v32, 0, v33, v34);
        objc_msgSend_setImportWarningSet_(v14, v35, 0, v36, v37);
        isSpillFormulaForOriginCell = 1;
      }
    }

    else
    {
      isSpillFormulaForOriginCell = 0;
    }
  }

  else
  {
    isSpillFormulaForOriginCell = 0;
  }

  return isSpillFormulaForOriginCell;
}

uint64_t sub_2210BA974(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_cell(a2, a2, a3, a4, a5);
  v10 = objc_msgSend_formulaObject(v5, v6, v7, v8, v9);
  isSpillFormula = objc_msgSend_isSpillFormula(v10, v11, v12, v13, v14);

  if (isSpillFormula)
  {
    objc_msgSend_clearValue(v5, v16, v17, v18, v19);
    objc_msgSend_setFormulaObject_(v5, v20, 0, v21, v22);
    objc_msgSend_setImportWarningSet_(v5, v23, 0, v24, v25);
  }

  return isSpillFormula;
}

void sub_2210BAD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  _Block_object_dispose(&a23, 8);
  sub_22107C800(v32 + 48, a30);
  _Block_object_dispose((v33 - 168), 8);
  sub_2210BC30C(&a23);

  _Unwind_Resume(a1);
}

__n128 sub_2210BADB8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2210BAE20(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  v6 = a1[4];
  if (v6)
  {
    objc_msgSend_spillOriginsSpillingIntoRange_inOwner_(v6, a2, v8, a1[5] + 744, a5);
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  TSCECellRefSet::addCellRefs((*(a1[6] + 8) + 48), &v7);
  sub_22107C800(&v7, v7._coordsForOwnerUid.__tree_.__end_node_.__left_);
}

void sub_2210BAEB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_spillingRangeForFormulaAt_(*(a1 + 32), a2, a2, a4, a5);
  v9 = *(*(a1 + 40) + 680);
  if (v9)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v9, v6, v7, v6, v8);
  }

  else
  {
    *__p = 0u;
    v12 = 0u;
    *v10 = 0u;
  }

  sub_2210BAF64((*(*(a1 + 48) + 8) + 48), v10);
  if (__p[1])
  {
    *&v12 = __p[1];
    operator delete(__p[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

uint64_t sub_2210BAF64(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2210BC488(a1, a2);
  }

  else
  {
    sub_2210BC3EC(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void sub_2210BB218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2210BB250(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v8[0] = a2;
  v8[1] = a3;
  result = objc_msgSend_hasSpillingCellsIntersectingRange_inOwner_(*(a1 + 32), a2, v8, a1 + 48, a5);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void *sub_2210BBBE8(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_221086EBC(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_221086EBC((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_2210BBC48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2210BBC64(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
    sub_2210BBD68(v4, v8 + 8);
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_2210BBD68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2216F64D0(a1, (a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  JUMPOUT(0x223DA0450);
}

void *sub_2210BBDBC(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_2210BBE8C(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2210BBEE4(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2210BBEE4(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_2210BC0EC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_2210BC1D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2210BC1EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_2210BC26C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_22107C1F0(a1, a2);
  }

  sub_22107C148();
}

void sub_2210BC2A8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2210BC30C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_2210BC394(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2210BC394(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t sub_2210BC3EC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  sub_221086EBC(v4, *a2, a2[1], (a2[1] - *a2) >> 4);
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  result = sub_221086EBC((v4 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 4);
  *(a1 + 8) = v4 + 6;
  return result;
}

void sub_2210BC460(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_2210BC488(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_22107C148();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_2210BC5FC(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_221086EBC(v7, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  sub_221086EBC(v7 + 24, a2[3], a2[4], (a2[4] - a2[3]) >> 4);
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_2210BC654(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2210BC7C0(&v14);
  return v13;
}

void sub_2210BC5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v6;
    operator delete(v6);
  }

  sub_2210BC7C0(va);
  _Unwind_Resume(a1);
}

void sub_2210BC5FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_2210BC654(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 6;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_2210BC394(a1, v5);
      v5 += 48;
    }
  }

  return sub_2210BC734(v9);
}

uint64_t sub_2210BC734(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2210BC76C(a1);
  }

  return a1;
}

void sub_2210BC76C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_2210BC394(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_2210BC7C0(void **a1)
{
  sub_2210BC7F4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2210BC7F4(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    sub_2210BC394(v4, i - 48);
  }
}

uint64_t sub_2210BC83C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC8C4(result, a4);
  }

  return result;
}

void sub_2210BC8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2210BC30C(&a9);
  _Unwind_Resume(a1);
}

void sub_2210BC8C4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_2210BC5FC(a1, a2);
  }

  sub_22107C148();
}

void *sub_2210BC910(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_221086EBC(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v4[3] = 0;
      v4[4] = 0;
      v4[5] = 0;
      sub_221086EBC((v4 + 3), v6[3], v6[4], (v6[4] - v6[3]) >> 4);
      v6 += 6;
      v4 = v11 + 6;
      v11 += 6;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_2210BC734(v8);
  return v4;
}

void sub_2210BC9F8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2210BC9F8(a1, *a2);
    sub_2210BC9F8(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_2210BCA4C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2210BD068(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    *(a1 + 56) = *(a2 + 56);
    sub_2210BD194((a1 + 24), *(a2 + 40), 0);
    *(a1 + 96) = *(a2 + 96);
    sub_2210BD7E8((a1 + 64), *(a2 + 80), 0);
  }

  return a1;
}

uint64_t *sub_2210BCAC4(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v13 = a2;
  v12 = a3;
  v5 = sub_2210BE30C((a1 + 24), &v12);
  v11 = -1;
  if (v5)
  {
    v11 = *(v5 + 6);
    v6 = v11;
    *(v5 + 6) = -1;
    v7 = v6 == -1;
  }

  else
  {
    v14 = &v12;
    result = sub_2210BE3C0((a1 + 24), &v12);
    *(result + 6) = a2;
    if (a2 != -1)
    {
      return result;
    }

    v7 = 1;
  }

  v14 = &v12;
  v8 = sub_2210BE5F4((a1 + 64), &v12);
  result = sub_2210BE0DC(v8 + 3, &v13);
  if (!v7)
  {
    v14 = &v12;
    v10 = sub_2210BE5F4((a1 + 64), &v12);
    return sub_2210BE0DC(v10 + 3, &v11);
  }

  return result;
}

uint64_t sub_2210BCBD0(void *a1, uint64_t a2)
{
  if (*a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = *(a2 + 8) ^ *a2;
  v4 = sub_2210BE864(a1 + 3, &v11);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(v4 + 6);
  if (v5 != -1)
  {
    v6 = (*a1 + 16 * v5);
    if (*v6 == *a2)
    {
      if (v6[1] == *(a2 + 8))
      {
        return v5;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0xFFFFFFFFLL;
  }

  v8 = sub_2210BE864(a1 + 8, &v11);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8[5];
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    result = *(v9 + 4);
    v10 = (*a1 + 16 * result);
    if (*v10 == *a2 && v10[1] == *(a2 + 8))
    {
      break;
    }

    v9 = *v9;
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_2210BCCB0(void *a1, uint64_t a2)
{
  if (*a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = sub_2210BCBD0(a1, a2);
  if (v4 == -1)
  {
    v4 = (a1[1] - *a1) >> 4;
    sub_221083454(a1, a2);
    sub_2210BCAC4(a1, v4, *(a2 + 8) ^ *a2);
  }

  return v4;
}

void *sub_2210BCD30(void *result, __int128 **a2)
{
  v3 = result;
  if (result[1] == *result)
  {
    result = sub_221083368(result, a2[1] - *a2);
  }

  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    v7 = *v4;
    if (v7 != 0)
    {
      result = sub_2210BCBD0(v3, &v7);
      if (result == -1)
      {
        v6 = (v3[1] - *v3) >> 4;
        sub_221083454(v3, &v7);
        result = sub_2210BCAC4(v3, v6, *(&v7 + 1) ^ v7);
      }
    }

    ++v4;
  }

  return result;
}

uint64_t sub_2210BCDEC(void *a1, _OWORD *a2)
{
  if (*a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_2210BCCB0(a1, a2);
  }
}

void sub_2210BCE04(uint64_t *a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      v3[2](v3, v6, v4, &v7);
      if (v7)
      {
        break;
      }

      v6 = (v6 + 1);
      v4 += 16;
    }

    while (v4 != v5);
  }
}

uint64_t sub_2210BCEA0(void *a1, unsigned int a2)
{
  if (a2 == -1 || a2 >= ((a1[1] - *a1) >> 4))
  {
    return 0;
  }

  else
  {
    return *(*a1 + 16 * a2);
  }
}

void sub_2210BCED4(void *a1)
{
  a1[1] = *a1;
  sub_2210BE918(a1 + 3);

  sub_2210BE984((a1 + 8));
}

uint64_t sub_2210BCF18(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    while (1)
    {
      v5 = *(a2 + 32);
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = *(a2 + 24);
      v7 = *v5;
      if (v6 >= *v5)
      {
        break;
      }

      *(a2 + 24) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
LABEL_9:
      result = TSKUIDStruct::saveToMessage(v2++, v8);
      if (v2 == v3)
      {
        return result;
      }
    }

    if (v7 == *(a2 + 28))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
      v5 = *(a2 + 32);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = MEMORY[0x223DA0360](*(a2 + 16));
    v9 = *(a2 + 24);
    v10 = *(a2 + 32) + 8 * v9;
    *(a2 + 24) = v9 + 1;
    *(v10 + 8) = v8;
    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_2210BCFE0(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >= 1)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      v7 = 0uLL;
      *&v7 = TSKUIDStruct::loadFromMessage(*(*(a2 + 32) + 8 * i + 8), a2);
      *(&v7 + 1) = v6;
      sub_221083454(v4, &v7);
      result = sub_2210BCAC4(v4, i, *(&v7 + 1) ^ v7);
    }
  }

  return result;
}

void *sub_2210BD068(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221086F38(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_2210BD194(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        *(v8 + 6) = *(a2 + 6);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2210BD2A8(a1, v9, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2210BD75C();
  }
}

void sub_2210BD274(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_2210BD2A8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2210BD4F0(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_2210BD408(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_2210BD4F0(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2210BD5E0(a1, prime);
    }
  }
}

void sub_2210BD5E0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2210BD7E8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = v4[2];
        v8[2] = v11;
        if (v8 != v4)
        {
          *(v8 + 14) = *(v4 + 14);
          sub_2210BD960(v8 + 3, v4[5], 0);
          v11 = v8[2];
        }

        v10 = *v8;
        v8[1] = v11;
        v12 = sub_2210BD2A8(a1, v11, v8 + 2);
        sub_2210BD408(a1, v8, v12);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_2210BD91C(a1, v10);
  }

  if (v4 != a3)
  {
    sub_2210BDF0C();
  }
}

void sub_2210BD8EC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_2210BD91C(v1, v2);
  __cxa_rethrow();
}

void sub_2210BD91C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2210BDEC0((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2210BD960(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2210BDA6C(a1, v9, v8 + 4);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2210BDE38();
  }
}

void sub_2210BDA38(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_2210BDA6C(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2210BDBCC(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_2210BDBCC(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2210BDCBC(a1, prime);
    }
  }
}

void sub_2210BDCBC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_2210BDEC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2210BDF74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2210BE018(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2210BE018(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2210BDEC0(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2210BE064(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_2210BE0DC(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_2210BE0DC(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_2210BE30C(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_2210BE3C0(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_2210BE5F4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2210BE850(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2210BE018(va);
  _Unwind_Resume(a1);
}

void *sub_2210BE864(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_2210BE918(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void sub_2210BE984(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2210BD91C(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_2210BEC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2210BED70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2210BED88(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_cellCount(a2, a2, a3, a4, a5);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_2210BEE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2210BEE8C(uint64_t a1, void *a2)
{
  v12 = a2;
  v7 = objc_msgSend_maxColumnIndex(v12, v3, v4, v5, v6);
  if (v7 != 0x7FFF)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 24);
    if (v7 <= v9)
    {
      v10 = *(v8 + 24);
    }

    else
    {
      v10 = v7;
    }

    if (v9 == 0x7FFF)
    {
      v11 = v7;
    }

    else
    {
      v11 = v10;
    }

    *(v8 + 24) = v11;
  }
}

void sub_2210BF114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2210BF12C(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_bncStorageBufferExists(a2, a2, a3, a4, a5);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_2210BF9C0(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v12 = objc_msgSend_tileRowIndex(v33, v5, v6, v7, v8);
  if (v12 != a3)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "void _assertTileIndexMatch(TSURowIndex, TSURowIndex)", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 41, 0, "TableTile row index %u should match array index %u.", v12, a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = *(a1 + 40);
  v25 = *(v24 + 40);
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = *(v24 + 32);
  v27 = *v25;
  if (v26 < *v25)
  {
    *(v24 + 32) = v26 + 1;
    objc_msgSend_encodeToArchive_archiver_(v33, v9, *&v25[2 * v26 + 2], *(a1 + 32), v11);
    goto LABEL_10;
  }

  if (v27 == *(v24 + 36))
  {
LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v24 + 24));
    v25 = *(v24 + 40);
    v27 = *v25;
  }

  *v25 = v27 + 1;
  v28 = google::protobuf::Arena::CreateMaybeMessage<TST::TileRowInfo>(*(v24 + 24));
  v29 = *(v24 + 32);
  v30 = *(v24 + 40) + 8 * v29;
  *(v24 + 32) = v29 + 1;
  *(v30 + 8) = v28;
  objc_msgSend_encodeToArchive_archiver_(v33, v31, v28, *(a1 + 32), v32);
LABEL_10:
}

void sub_2210BFC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2210BFC48(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v9 = objc_msgSend_archivingCompatibilityVersion(v11, v5, v6, v7, v8);
  v10 = *(*(a1 + 32) + 8);
  if (v9 > *(v10 + 24))
  {
    *(v10 + 24) = v9;
  }

  if (v9 == 0xA000000000003)
  {
    *a3 = 1;
  }
}

void sub_2210BFEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2210BFF08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2210BFF20(uint64_t a1, void *a2, unsigned int a3)
{
  v19 = a2;
  if (!v19)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTTableTile populatedRows]_block_invoke", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 410, 0, "invalid nil value for '%{public}s'", "rowInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  objc_msgSend_addIndex_(*(*(*(a1 + 32) + 8) + 40), v5, a3, v6, v7);
}

void sub_2210C0150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2210C0180(uint64_t a1, void *a2)
{
  v7 = a2;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_cellCount(v7, v3, v4, v5, v6);
}

void sub_2210C0318(uint64_t a1, void *a2, unsigned int a3)
{
  v12 = a2;
  if (!objc_msgSend_cellCount(v12, v5, v6, v7, v8))
  {
    objc_msgSend_addIndex_(*(a1 + 32), v9, a3, v10, v11);
  }
}

void sub_2210C0A8C(uint64_t a1, void *a2)
{
  v15 = a2;
  objc_msgSend_insertColumnsAtIndex_count_(v15, v3, *(a1 + 44), *(a1 + 40), v4);
  v9 = objc_msgSend_usesWideOffsets(v15, v5, v6, v7, v8);
  v14 = *(a1 + 32);
  if (v9)
  {
    if ((*(v14 + 66) & 1) == 0)
    {
      *(v14 + 66) = 1;
    }
  }

  else if (*(v14 + 66))
  {
    objc_msgSend_convertToWideOffsets(v15, v10, v11, v12, v13);
  }
}

void sub_2210C0C2C(uint64_t a1, void *a2, unsigned int a3)
{
  v10 = a2;
  v8 = objc_msgSend_removeColumnsAtIndex_count_(v10, v5, *(a1 + 44), *(a1 + 40), v6);
  if (v8)
  {
    objc_msgSend_setInt_forKey_(*(a1 + 32), v7, v8, a3, v9);
  }
}

void sub_2210C12F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_2210C1338(uint64_t a1, void *a2, unsigned int a3, _BYTE *a4)
{
  v13 = a2;
  v9 = *(a1 + 48);
  if (a3 >= v9)
  {
    if (*(a1 + 52) >= a3)
    {
      objc_msgSend_replacePointerAtIndex_withPointer_(*(a1 + 32), v7, a3 - v9, v13, v8);
      objc_msgSend_addIndex_(*(*(*(a1 + 40) + 8) + 40), v10, a3, v11, v12);
    }

    else
    {
      *a4 = 1;
    }
  }
}

void sub_2210C17D0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_msgSend_rowInfoForTileRowIndex_(*(a1 + 32), a2, a2, a4, a5);
  if (v13 && !objc_msgSend_cellCount(v13, v7, v8, v9, v10))
  {
    objc_msgSend__removeRowInfo_atTileRowIndex_(*(a1 + 32), v11, v13, a2, v12);
  }
}

void sub_2210C19A8(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a2;
  v12 = objc_msgSend_tileRowIndex(v38, v4, v5, v6, v7);
  if (v12 != a3)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void _assertTileIndexMatch(TSURowIndex, TSURowIndex)", v10, v11);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 41, 0, "TableTile row index %u should match array index %u.", v12, a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (!objc_msgSend_cellCount(v38, v8, v9, v10, v11))
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableTile assertListRows]_block_invoke", v25, v26);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTile.mm", v30, v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v32, 941, 0, "In assertListRows, saw a row info that has no cells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }
}

TSCEASTRewriter *sub_2210C1BE4(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A17A0;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTElement *sub_2210C1C68(TSCEASTIteratorBase *a1, TSCEASTElement *this)
{
  v4 = TSCEASTElement::mutableUndoTractList(this, a1);
  v9 = objc_msgSend_excludedUidsTract(v4, v5, v6, v7, v8);
  if (v9)
  {
    v152 = v4;
    v153 = v9;
    v14 = objc_msgSend_rowColumnInfo(*(a1 + 25), v10, v11, v12, v13);
    v162._flags = 0;
    v156[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    TSCEASTColonElement::rangeReference(this, a1, &v162, v156, &v160);
    v159 = v160;
    isValid = TSCERangeCoordinate::isValid(&v159);
    if (objc_msgSend_isRows(v14, v16, v17, v18, v19))
    {
      v24 = objc_msgSend_rowUids(v153, v20, v21, v22, v23);
    }

    else
    {
      v24 = objc_msgSend_columnUids(v153, v20, v21, v22, v23);
    }

    if (*v24 != v24[1] && isValid)
    {
      v4 = v152;
      v30 = objc_msgSend_affectedOwnerUID(*(a1 + 25), v25, v26, v27, v28);
      if (v161 == __PAIR128__(v31, v30))
      {
        v32 = sub_221089E8C(a1);
        v35 = objc_msgSend_resolverForTableUID_(v32, v33, v161, *(&v161 + 1), v34);

        v151 = v35;
        if (!v35)
        {
LABEL_66:

          goto LABEL_67;
        }

        if (objc_msgSend_isRows(v14, v36, v37, v38, v39))
        {
          v44 = objc_msgSend_rowUids(v153, v40, v41, v42, v43);
          v47 = objc_msgSend_mutableIndexesForUIDs_isRows_(v35, v45, v44, 1, v46);
          v52 = objc_msgSend_rowOrColumnUuids(v14, v48, v49, v50, v51);
          objc_msgSend_mutableIndexesForUIDs_isRows_(v151, v53, v52, 1, v54);
        }

        else
        {
          v55 = objc_msgSend_columnUids(v153, v40, v41, v42, v43);
          v47 = objc_msgSend_mutableIndexesForUIDs_isRows_(v35, v56, v55, 0, v57);
          v62 = objc_msgSend_rowOrColumnUuids(v14, v58, v59, v60, v61);
          objc_msgSend_mutableIndexesForUIDs_isRows_(v151, v63, v62, 0, v64);
        }

        v148 = v150 = v47;
        v65 = v47;
        if (!objc_msgSend_tsu_intersectsIndexesInIndexSet_(v148, v66, v47, v67, v68))
        {
LABEL_65:

          goto LABEL_66;
        }

        *&v156[0].row = 0u;
        v157 = 0u;
        v158 = 1065353216;
        topLeft = v159._topLeft;
        bottomRight = v159._bottomRight;
        v79 = HIDWORD(*&v159._topLeft);
        v147 = v159._topLeft;
        if (objc_msgSend_isRows(v14, v69, v70, v71, v72))
        {
          row = topLeft.row;
          if (topLeft.row == 0x7FFFFFFFLL || bottomRight == 0x7FFFFFFFLL)
          {
            goto LABEL_49;
          }

          v81 = bottomRight - topLeft.row;
        }

        else
        {
          row = topLeft.column;
          if (topLeft.column == 0x7FFF || WORD2(bottomRight) == 0x7FFF)
          {
            goto LABEL_49;
          }

          v81 = WORD2(bottomRight) - v79;
        }

        LODWORD(v82) = v81 + 1;
        if (v81 != -1)
        {
          v83 = topLeft.row;
          while (objc_msgSend_containsIndex_(v150, v75, row, v77, v78))
          {
            isRows = objc_msgSend_isRows(v14, v75, v84, v77, v78);
            v90 = v14;
            v91 = row;
            v92 = (v79 + 1);
            if (WORD2(bottomRight) == 0x7FFF || (v79 + 1) == 0x7FFF)
            {
              v94 = 0;
            }

            else
            {
              v94 = WORD2(bottomRight) + 1 - (v79 + 1);
            }

            v95 = v83 + 1;
            v96 = bottomRight - v83;
            if (bottomRight == 0x7FFFFFFFLL || v95 == 0x7FFFFFFF)
            {
              v96 = 0;
            }

            if (isRows)
            {
              ++v83;
            }

            else
            {
              LOWORD(v79) = v79 + 1;
            }

            if (isRows)
            {
              row = v95;
            }

            else
            {
              row = v92;
            }

            if (isRows)
            {
              v82 = v96;
            }

            else
            {
              v82 = v94;
            }

            tableUID._lower = 0;
            tableUID._upper = 0;
            v98 = objc_msgSend_isRows(v90, v86, v87, v88, v89);
            tableUID._lower = objc_msgSend_UIDForIndex_isRows_(v151, v99, v91, v98, v100);
            tableUID._upper = v101;
            sub_2210C2B00(v156, &tableUID);
            v14 = v90;
            if (!v82)
            {
              goto LABEL_50;
            }
          }

          v121 = v82 + row;
          v102 = v79;
          v149 = v83;
          do
          {
            v122 = (v121 - 1);
            if (!objc_msgSend_containsIndex_(v150, v75, v122, v77, v78))
            {
              break;
            }

            v123 = objc_msgSend_isRows(v14, v75, v76, v77, v78);
            v128 = ((bottomRight + 0xFFFF00000000) >> 32);
            v129 = v128 == 0x7FFF || v79 == 0x7FFF;
            v130 = (bottomRight - 1);
            v131 = bottomRight - v83;
            v132 = bottomRight & 0xFFFFFFFF00000000;
            bottomRight = bottomRight & 0xFFFF0000FFFFFFFFLL | (((bottomRight + 0xFFFF00000000) >> 32) << 32);
            v133 = v128 - v79 + 1;
            if (v129)
            {
              v133 = 0;
            }

            v134 = v130 == 0x7FFFFFFF || v83 == 0x7FFFFFFF;
            v135 = v130 | v132;
            if (v134)
            {
              v136 = 0;
            }

            else
            {
              v136 = v131;
            }

            v137 = v123 == 0;
            if (v123)
            {
              bottomRight = v135;
            }

            v138 = v14;
            v139 = v102;
            v140 = v137 ? v102 : v83;
            v141 = v137 ? v133 : v136;
            tableUID._lower = 0;
            tableUID._upper = 0;
            v142 = v138;
            v143 = objc_msgSend_isRows(v138, v124, v125, v126, v127);
            tableUID._lower = objc_msgSend_UIDForIndex_isRows_(v151, v144, v122, v143, v145);
            tableUID._upper = v146;
            sub_2210C2B00(v156, &tableUID);
            v121 = v141 + v140;
            v14 = v142;
            v102 = v139;
          }

          while (v141);
LABEL_51:
          v103 = v83 == v159._topLeft.row && v102 << 32 == (*&v159._topLeft & 0xFFFF00000000);
          if (!v103 || (((*&v159._bottomRight ^ bottomRight) & 0xFFFF00000000) == 0 ? (v104 = v159._bottomRight.row == bottomRight) : (v104 = 0), !v104))
          {
            if (objc_msgSend_isRows(v14, v75, v76, v77, v78))
            {
              objc_msgSend_removeFromExcludedUidsTractRowUidsSet_(v152, v105, v156, v106, v107);
            }

            else
            {
              objc_msgSend_removeFromExcludedUidsTractColumnUidsSet_(v152, v105, v156, v106, v107);
            }

            v108 = [TSCECellTractRef alloc];
            tableUID._lower = *&v147 & 0xFFFF000000000000 | v149 | (v102 << 32);
            tableUID._upper = bottomRight;
            v155 = v161;
            v112 = objc_msgSend_initWithRangeRef_(v108, v109, &tableUID, v110, v111);
            objc_msgSend_setPreserveFlags_(v112, v113, v162._flags, v114, v115);
            v116 = [TSCERelativeTractRef alloc];
            tableUID._lower = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
            v119 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v116, v117, v112, &tableUID, v118);
            tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
            TSCEASTIteratorBase::createColonTractRef(a1, v119, v152, &tableUID);
          }

          v4 = v152;
          v65 = v150;
          sub_2210BDEC0(v156);
          goto LABEL_65;
        }

LABEL_49:
        v83 = topLeft.row;
LABEL_50:
        v102 = v79;
        v149 = v83;
        goto LABEL_51;
      }
    }

    else
    {
      v4 = v152;
    }

LABEL_67:

    v9 = v153;
  }

  return this;
}

void sub_2210C223C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

TSCEASTElement *sub_2210C2320(TSCEASTIteratorBase *a1, TSCEASTElement *this)
{
  v4 = TSCEASTElement::mutableUndoTractList(this, a1);
  v13 = objc_msgSend_excludedUidsTract(v4, v5, v6, v7, v8);
  if (v13)
  {
    v160 = v4;
    v14 = objc_msgSend_rowColumnInfo(*(a1 + 25), v9, v10, v11, v12);
    if (objc_msgSend_isRows(v14, v15, v16, v17, v18))
    {
      v23 = objc_msgSend_rowUids(v13, v19, v20, v21, v22);
    }

    else
    {
      v23 = objc_msgSend_columnUids(v13, v19, v20, v21, v22);
    }

    v27 = *v23;
    v28 = v23[1];
    v161 = TSCEASTColonTractElement::relativeTractRef(this, a1, v24, v25, v26);
    if (objc_msgSend_hasTableUID(v161, v29, v30, v31, v32))
    {
      lower = objc_msgSend_tableUID(v161, v33, v34, v35, v36);
      upper = v37;
    }

    else
    {
      v43 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      lower = v43->var0.var0._tableUID._lower;
      upper = v43->var0.var0._tableUID._upper;
    }

    if (v27 == v28 || lower != objc_msgSend_affectedOwnerUID(*(a1 + 25), v37, v38, v39, v40) || upper != v44)
    {
      goto LABEL_76;
    }

    v45 = sub_221089E8C(a1);
    v48 = objc_msgSend_resolverForTableUID_(v45, v46, lower, upper, v47);

    if (!v48)
    {
LABEL_75:

LABEL_76:
      v4 = v160;
      goto LABEL_77;
    }

    if (objc_msgSend_isRows(v14, v49, v50, v51, v52))
    {
      v57 = objc_msgSend_rowUids(v13, v53, v54, v55, v56);
      v60 = objc_msgSend_mutableIndexesForUIDs_isRows_(v48, v58, v57, 1, v59);
      v65 = objc_msgSend_rowOrColumnUuids(v14, v61, v62, v63, v64);
      objc_msgSend_mutableIndexesForUIDs_isRows_(v48, v66, v65, 1, v67);
    }

    else
    {
      v68 = objc_msgSend_columnUids(v13, v53, v54, v55, v56);
      v60 = objc_msgSend_mutableIndexesForUIDs_isRows_(v48, v69, v68, 0, v70);
      v75 = objc_msgSend_rowOrColumnUuids(v14, v71, v72, v73, v74);
      objc_msgSend_mutableIndexesForUIDs_isRows_(v48, v76, v75, 0, v77);
    }
    v78 = ;
    v159 = v60;
    if (!objc_msgSend_tsu_intersectsIndexesInIndexSet_(v78, v79, v60, v80, v81))
    {
LABEL_74:

      goto LABEL_75;
    }

    memset(v165, 0, sizeof(v165));
    v166 = 1065353216;
    v158 = v48;
    v153 = v78;
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    v154 = objc_msgSend_absoluteCellTractRefForHostCell_(v161, v82, &coordinate, v83, v84);
    v157 = objc_msgSend_topLeft(v154, v85, v86, v87, v88);
    v93 = objc_msgSend_bottomRight(v154, v89, v90, v91, v92);
    coordinate = v157;
    v164 = v93;
    v156 = v93;
    v102 = HIDWORD(v157);
    if (objc_msgSend_isRows(v14, v94, v95, v96, v97))
    {
      v103 = v157;
      if (v157 != 0x7FFFFFFFLL)
      {
        if (v156 != 0x7FFFFFFFLL)
        {
          v104 = v156 - v157;
          goto LABEL_23;
        }

        v122 = v157;
        v106 = v157;
        v121 = v156;
        v120 = v156;
LABEL_65:
        if (v122 != v106 || ((v106 ^ v122) & 0xFFFF00000000) != 0 || ((v121 ^ v120) & 0xFFFF00000000) != 0 || v120 != v121)
        {
          if (objc_msgSend_isRows(v14, v98, v99, v100, v101))
          {
            objc_msgSend_removeFromExcludedUidsTractRowUidsSet_(v160, v139, v165, v140, v141);
          }

          else
          {
            objc_msgSend_removeFromExcludedUidsTractColumnUidsSet_(v160, v139, v165, v140, v141);
          }

          objc_msgSend_setTopLeft_(v154, v142, &coordinate, v143, v144);
          objc_msgSend_setBottomRight_(v154, v145, &v164, v146, v147);
          v148 = [TSCERelativeTractRef alloc];
          tableUID._lower = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
          v151 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v148, v149, v154, &tableUID, v150);

          tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
          TSCEASTIteratorBase::createColonTractRef(a1, v151, v160, &tableUID);
        }

        v48 = v158;

        sub_2210BDEC0(v165);
        v78 = v153;
        goto LABEL_74;
      }
    }

    else
    {
      v103 = WORD2(v157);
      if (WORD2(v157) != 0x7FFF && WORD2(v156) != 0x7FFF)
      {
        v104 = WORD2(v156) - WORD2(v157);
LABEL_23:
        LODWORD(v105) = v104 + 1;
        if (v104 == -1)
        {
          v120 = v156;
          v122 = v157;
          v106 = v157;
          v121 = v156;
          v60 = v159;
        }

        else
        {
          v155 = HIDWORD(v156);
          v106 = v157;
          v107 = v157;
          while (objc_msgSend_containsIndex_(v159, v98, v103, v100, v101))
          {
            if (objc_msgSend_isRows(v14, v98, v108, v100, v101))
            {
              coordinate.row = v107 + 1;
              v106 = coordinate;
              column = (v107 + 1);
              if (v156 == 0x7FFFFFFFLL || column == 0x7FFFFFFF)
              {
                v105 = 0;
              }

              else
              {
                v105 = (v156 - v107);
              }

              v102 = HIDWORD(*&coordinate);
            }

            else
            {
              coordinate.column = v102 + 1;
              v106 = coordinate;
              v102 = HIDWORD(*&coordinate);
              column = coordinate.column;
              if (WORD2(v156) == 0x7FFF || coordinate.column == 0x7FFF)
              {
                v105 = 0;
              }

              else
              {
                v105 = WORD2(v156) - coordinate.column + 1;
              }
            }

            tableUID._lower = 0;
            tableUID._upper = 0;
            isRows = objc_msgSend_isRows(v14, v109, v110, v111, v112);
            tableUID._lower = objc_msgSend_UIDForIndex_isRows_(v158, v117, v103, isRows, v118);
            tableUID._upper = v119;
            sub_2210C2B00(v165, &tableUID);
            v107 = v106;
            v103 = column;
            if (!v105)
            {
              v120 = v156;
              v121 = v156;
              v60 = v159;
LABEL_62:
              v122 = v157;
              goto LABEL_65;
            }
          }

          v123 = v105 + v103;
          v121 = v156;
          v124 = v156;
          while (1)
          {
            v125 = (v123 - 1);
            v60 = v159;
            v126 = objc_msgSend_containsIndex_(v159, v98, v125, v100, v101);
            v122 = v157;
            if (!v126)
            {
              break;
            }

            if (objc_msgSend_isRows(v14, v98, v99, v100, v101))
            {
              LODWORD(v164) = v124 - 1;
              v121 = v164;
              v131 = v106;
              if (v124 == 0x80000000 || v106 == 0x7FFFFFFFLL)
              {
                v133 = 0;
              }

              else
              {
                v133 = (v124 - v106);
              }

              v155 = HIDWORD(v164);
            }

            else
            {
              v131 = WORD2(v106);
              WORD2(v164) = v155 - 1;
              v121 = v164;
              v155 = HIDWORD(v164);
              if (WORD2(v164) == 0x7FFF || WORD2(v106) == 0x7FFF)
              {
                v133 = 0;
              }

              else
              {
                v133 = WORD2(v164) - WORD2(v106) + 1;
              }
            }

            tableUID._lower = 0;
            tableUID._upper = 0;
            v135 = objc_msgSend_isRows(v14, v127, v128, v129, v130);
            tableUID._lower = objc_msgSend_UIDForIndex_isRows_(v158, v136, v125, v135, v137);
            tableUID._upper = v138;
            sub_2210C2B00(v165, &tableUID);
            v123 = v133 + v131;
            v124 = v121;
            if (!v133)
            {
              v60 = v159;
              v120 = v156;
              goto LABEL_62;
            }
          }

          v120 = v156;
        }

        goto LABEL_65;
      }
    }

    v120 = v156;
    v122 = v157;
    v106 = v157;
    v121 = v156;
    goto LABEL_65;
  }

LABEL_77:

  return this;
}

void sub_2210C2958(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

void sub_2210C2A2C(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2210C2A68(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2210C2AC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void *sub_2210C2B00(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

uint64_t **sub_2210C3024(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **sub_2210C30DC(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

id TSCEFormulaNodeTreeCreator::formulaNodeTreeFromFormula(TSCEFormulaNodeTreeCreator *this, const TSCEASTNodeArray *a2, void *a3, TSCEFormulaRewriteContext *a4, TSCEFormulaRewriteContext *a5)
{
  v8 = this;
  v9 = a3;
  v14 = objc_msgSend_const_astNodeArray(v8, v10, v11, v12, v13);
  if (sub_2215C5C84(v14))
  {
    v16 = 0;
  }

  else
  {
    v16 = TSCEFormulaNodeTreeCreator::formulaNodeTreeFromASTNodeArray(v14, a2, v9, a4, v15);
  }

  return v16;
}

id TSCEFormulaNodeTreeCreator::formulaNodeTreeFromASTNodeArray(TSCEASTNodeArray *this, const TSCEASTNodeArray *a2, void *a3, TSCEFormulaRewriteContext *a4, TSCEFormulaRewriteContext *a5)
{
  v6 = a2;
  v8 = a3;
  v13 = objc_msgSend_documentLocale(a4->var0, v9, v10, v11, v12);
  TSCESymbolTable::TSCESymbolTable(&v25, v13);

  sub_2210C8108(v24, this, v8, a4, &v25, v6);
  TSCEASTRewriter::rewrite(v24, v14, v15, v16, v17);
  v22 = TSCEFormulaNodeTreeCreator::functionNodeRoot(v24, v18, v19, v20, v21);
  TSCEFormulaNodeTreeCreator::~TSCEFormulaNodeTreeCreator(v24);
  v24[0] = &v25._undoSymbolTableMaps;
  sub_2210C8268(v24);
  sub_221087B80(&v25._identifierMap);
  sub_2210C82EC(&v25._symbolTableMap);

  return v22;
}

void sub_2210C3F88(_Unwind_Exception *a1)
{
  sub_2210C8214((v2 - 168));

  _Unwind_Resume(a1);
}

id TSCEFormulaNodeTreeCreator::functionNodeRoot(void **this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_count(this[27], a2, a3, a4, a5))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSCEFormulaNode *TSCEFormulaNodeTreeCreator::functionNodeRoot()", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 815, 0, "_formulaNodeStack should be empty, all partial work processed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  TSCEFormulaNodeTreeCreator::completedNodeAndChildren(this, v6, v7, v8, v9);
  if (objc_msgSend_count(this[27], v21, v22, v23, v24))
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "TSCEFormulaNode *TSCEFormulaNodeTreeCreator::functionNodeRoot()", v26, v27);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 818, 0, "_formulaNodeStack should now REALLY be empty, we processed remaining work, in theory");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  v39 = this[26];

  return v39;
}

void TSCEFormulaNodeTreeCreator::~TSCEFormulaNodeTreeCreator(TSCEFormulaNodeTreeCreator *this)
{
  *this = &unk_2834A1908;
  v3 = (this + 280);
  sub_22107C2C0(&v3);
  v3 = (this + 256);
  sub_22107C2C0(&v3);
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  TSCEASTRewriter::~TSCEASTRewriter(this);
}

{
  TSCEFormulaNodeTreeCreator::~TSCEFormulaNodeTreeCreator(this);

  JUMPOUT(0x223DA1450);
}

void TSCEFormulaNodeTreeCreator::addWhitespaceBefore(TSCEFormulaNodeTreeCreator *this, NSString *a2)
{
  v3 = a2;
  v8 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    sub_2210C4258(this + 32, &v8);
    v3 = v8;
  }
}

id sub_2210C4258(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_2210C4338(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void TSCEFormulaNodeTreeCreator::addWhitespaceAfter(TSCEFormulaNodeTreeCreator *this, NSString *a2)
{
  v3 = a2;
  v8 = v3;
  if (objc_msgSend_length(v3, v4, v5, v6, v7))
  {
    sub_2210C4258(this + 35, &v8);
    v3 = v8;
  }
}

void TSCEFormulaNodeTreeCreator::addExpression(TSCEFormulaNodeTreeCreator *this, TSCEFormulaNode *a2, int a3)
{
  v10 = a2;
  v99 = a3;
  if (v10)
  {
    for (i = *(this + 33); *(this + 32) != i; i = *(this + 33))
    {
      v12 = *(i - 8);
      v13 = *(this + 33);

      *(this + 33) = v13 - 8;
      v22 = objc_msgSend_whitespaceBefore(v10, v14, v15, v16, v17);
      if (v22)
      {
        v23 = objc_msgSend_whitespaceBefore(v10, v18, v19, v20, v21);
      }

      else
      {
        v23 = &stru_2834BADA0;
      }

      v27 = objc_msgSend_stringByAppendingString_(v12, v24, v23, v25, v26);
      objc_msgSend_setWhitespaceBefore_(v10, v28, v27, v29, v30);
    }

    for (j = *(this + 36); *(this + 35) != j; j = *(this + 36))
    {
      v32 = *(j - 8);
      v33 = *(this + 36);

      *(this + 36) = v33 - 8;
      v42 = objc_msgSend_whitespaceAfter(v10, v34, v35, v36, v37);
      if (v42)
      {
        v43 = objc_msgSend_whitespaceAfter(v10, v38, v39, v40, v41);
      }

      else
      {
        v43 = &stru_2834BADA0;
      }

      v47 = objc_msgSend_stringByAppendingString_(v43, v44, v32, v45, v46);
      objc_msgSend_setWhitespaceAfter_(v10, v48, v47, v49, v50);
    }

    if (objc_msgSend_count(*(this + 28), v6, v7, v8, v9))
    {
      v55 = objc_msgSend_lastObject(*(this + 28), v51, v52, v53, v54);
      objc_msgSend_addObject_(v55, v56, v10, v57, v58);
    }

    else if (!a3)
    {
      if (objc_msgSend_count(*(this + 27), v51, v52, v53, v54))
      {
        v73 = MEMORY[0x277D81150];
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "void TSCEFormulaNodeTreeCreator::addExpression(TSCEFormulaNode *__strong, uint32_t)", v71, v72);
        v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v76, v77);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v79, v74, v78, 99, 0, "Expecting exprNodeStack to be empty in this case, we are top-level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v80, v81, v82, v83);
      }

      objc_msgSend_addObject_(*(this + 27), v70, v10, v71, v72);
      if (*(this + 26))
      {
        v84 = MEMORY[0x277D81150];
        v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "void TSCEFormulaNodeTreeCreator::addExpression(TSCEFormulaNode *__strong, uint32_t)", v53, v54);
        v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v87, v88);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v90, v85, v89, 101, 0, "Expecting _topLevelExpr to be nil in this case, we are top-level");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92, v93, v94);
      }
    }

    if (*(this + 26))
    {
      if (!a3)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_storeStrong(this + 26, a2);
      if (!a3)
      {
LABEL_25:
        TSCEFormulaNodeTreeCreator::completedNodeAndChildren(this, v51, v52, v53, v54);
        goto LABEL_26;
      }
    }

    objc_msgSend_addObject_(*(this + 27), v51, v10, v53, v54);
    v95 = objc_opt_new();
    objc_msgSend_addObject_(*(this + 28), v96, v95, v97, v98);
    sub_2210C47D0(this + 29, &v99);

    if (!v99)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v59 = MEMORY[0x277D81150];
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSCEFormulaNodeTreeCreator::addExpression(TSCEFormulaNode *__strong, uint32_t)", v8, v9);
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 72, 0, "invalid nil value for '%{public}s'", "exprNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
  }

LABEL_26:
}

void sub_2210C47D0(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_22107C148();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2210C836C(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t TSCEFormulaNodeTreeCreator::completedNodeAndChildren(TSCEFormulaNodeTreeCreator *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_count(*(this + 27), a2, a3, a4, a5);
  if (result)
  {
    v237 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v11 = 0x277CCA000uLL;
    while (1)
    {
      v12 = objc_msgSend_lastObject(*(this + 27), v7, v8, v9, v10);
      if (objc_msgSend_count(*(this + 28), v13, v14, v15, v16) && (v21 = *(*(this + 30) - 4), v21))
      {
        v22 = objc_msgSend_lastObject(*(this + 28), v17, v18, v19, v20);
        v27 = objc_msgSend_count(v22, v23, v24, v25, v26);
        v31 = v27 == v21;
        if (v27 == v21)
        {
          objc_msgSend_setChildren_(v12, v28, v22, v29, v30);
          *(this + 30) -= 4;
          objc_msgSend_removeLastObject(*(this + 28), v32, v33, v34, v35);
        }

        else
        {

          v12 = 0;
        }
      }

      else
      {
        v31 = 1;
      }

      if (!objc_msgSend_isColonNode(v12, v17, v18, v19, v20))
      {
        break;
      }

      v40 = objc_msgSend_children(v12, v36, v37, v38, v39);
      v45 = v40;
      if ((*(this + 304) & 1) != 0 && objc_msgSend_count(v40, v41, v42, v43, v44) == 2)
      {
        v49 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, 0, v47, v48);
        v53 = objc_msgSend_objectAtIndexedSubscript_(v45, v50, 1, v51, v52);
        if (objc_msgSend_isReferenceNode(v49, v54, v55, v56, v57) && objc_msgSend_isReferenceNode(v53, v58, v59, v60, v61))
        {
          objc_opt_class();
          v241 = TSUDynamicCast();
          objc_opt_class();
          v62 = TSUDynamicCast();
          if (v241 && v62)
          {
            v238 = v62;
            v239 = v53;
            v67 = objc_msgSend_tableUID(v241, v63, v64, v65, v66);
            v69 = v68;
            v70 = sub_221089E8C(this);
            v72 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v71, v67, v69, v70);

            v236 = v72;
            if (objc_msgSend_isCategorized(v72, v73, v74, v75, v76))
            {
              v77 = v241;
              v78 = v238;
              v83 = objc_msgSend_baseTopLeftCoord(v77, v79, v80, v81, v82);
              v88 = objc_msgSend_baseBottomRightCoord(v78, v84, v85, v86, v87);
              if ((v83 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (v88 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
              {
                v196 = [TSTUIDRectRef alloc];
                v197 = sub_221089E8C(this);
                v11 = 0x277CCA000uLL;
                tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
                v242 = v237;
                v243 = tableUID;
                v110 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v196, v199, v197, &v242, 0);

                v200 = [TSCECombinedReferenceFormulaNode alloc];
                v201 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
                v242 = *&v201->var0.var0.coordinate.row;
                v243._lower = v201->var0.var0._tableUID._upper;
                v115 = objc_msgSend_initWithUidRectRef_hostCellRef_(v200, v202, v110, &v242, v203);
              }

              else
              {
                v245._topLeft = v83;
                v245._bottomRight = v88;
                v93 = objc_msgSend_basePreserveFlags(v77, v89, v90, v91, v92);
                v244._flags = v93 & 3 | (4 * (objc_msgSend_basePreserveFlags(v78, v94, v95, v96, v97) & 3));
                TSCERangeCoordinate::fixInversions(&v245, &v244);
                v11 = 0x277CCA000;
                v98 = [TSTUIDRectRef alloc];
                v103 = objc_msgSend_calcEngine(v236, v99, v100, v101, v102);
                v108 = objc_msgSend_tableUID(v236, v104, v105, v106, v107);
                v242 = v245;
                v243._lower = v108;
                v243._upper = v109;
                v110 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v98, v109, v103, &v242, v244._flags);

                v111 = [TSCECombinedReferenceFormulaNode alloc];
                v112 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
                v242 = *&v112->var0.var0.coordinate.row;
                v243._lower = v112->var0.var0._tableUID._upper;
                v115 = objc_msgSend_initWithUidRectRef_hostCellRef_(v111, v113, v110, &v242, v114);
              }

              started = v115;
            }

            else
            {
              v193 = [TSCECombinedReferenceFormulaNode alloc];
              v77 = sub_221089E8C(this);
              started = objc_msgSend_initWithReferenceStart_referenceEnd_calcEngine_(v193, v194, v241, v238, v77);
              v11 = 0x277CCA000;
            }

            if (started)
            {
              if (objc_msgSend_count(*(this + 28), v204, v205, v206, v207))
              {
                v212 = objc_msgSend_lastObject(*(this + 28), v208, v209, v210, v211);
                v216 = v212;
                if (v212)
                {
                  v218 = objc_msgSend_indexOfObjectIdenticalTo_(v212, v213, v12, v214, v215);
                  if (v218 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v235 = MEMORY[0x277D81150];
                    v221 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v217, "void TSCEFormulaNodeTreeCreator::completedNodeAndChildren()", v219, v220);
                    v225 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v222, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v223, v224);
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v235, v226, v221, v225, 217, 0, "Expecting to locate a valid replaceIndex");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v227, v228, v229, v230);
                  }

                  else
                  {
                    objc_msgSend_replaceObjectAtIndex_withObject_(v216, v217, v218, started, v220);
                  }
                }
              }

              else
              {
                v216 = 0;
              }

              if (*(this + 26) == v12)
              {
                objc_storeStrong(this + 26, started);
              }
            }

            v62 = v238;
            v53 = v239;
          }

          goto LABEL_48;
        }

        goto LABEL_49;
      }

LABEL_51:

      if (v12)
      {
LABEL_32:
        objc_msgSend_removeLastObject(*(this + 27), v116, v117, v118, v119);
        goto LABEL_53;
      }

LABEL_52:
      v31 = 0;
LABEL_53:

      result = objc_msgSend_count(*(this + 27), v231, v232, v233, v234);
      if (!result || !v31)
      {
        return result;
      }
    }

    if (!objc_msgSend_isContinuedLetNode(v12, v36, v37, v38, v39))
    {
      goto LABEL_31;
    }

    if (objc_msgSend_count(*(this + 27), v116, v117, v118, v119) < 2 || (v124 = *(this + 27), v125 = objc_msgSend_count(v124, v120, v121, v122, v123), objc_msgSend_objectAtIndexedSubscript_(v124, v126, v125 - 2, v127, v128), (v45 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v182 = MEMORY[0x277D81150];
      v183 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v120, "void TSCEFormulaNodeTreeCreator::completedNodeAndChildren()", v122, v123);
      v187 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v184, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v185, v186);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v182, v188, v183, v187, 246, 0, "Didn't find a parent LET for LET-continued node");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v189, v190, v191, v192);
LABEL_31:
      if (v12)
      {
        goto LABEL_32;
      }

      goto LABEL_52;
    }

    v130 = objc_msgSend_lastObject(*(this + 28), v120, v129, v122, v123);
    v49 = v130;
    if (v130)
    {
      v138 = objc_msgSend_indexOfObjectIdenticalTo_(v130, v131, v12, v132, v133);
      if (v138 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v240 = objc_msgSend_children(v12, v134, v135, v136, v137);
        if (!objc_msgSend_count(v240, v139, v140, v141, v142))
        {
          v146 = MEMORY[0x277D81150];
          v147 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v143, "void TSCEFormulaNodeTreeCreator::completedNodeAndChildren()", v144, v145);
          v151 = objc_msgSend_stringWithUTF8String_(*(v11 + 3240), v148, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v149, v150);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v146, v152, v147, v151, 257, 0, "CompletedNode should already have its children");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v153, v154, v155, v156);
        }

        objc_msgSend_removeObjectAtIndex_(v49, v143, v138, v144, v145);
        v157 = MEMORY[0x277CCAA78];
        v162 = objc_msgSend_count(v240, v158, v159, v160, v161);
        objc_msgSend_indexSetWithIndexesInRange_(v157, v163, v138, v162, v164);
        v241 = v53 = v240;
        objc_msgSend_insertObjects_atIndexes_(v49, v165, v240, v241, v166);
        v167 = *(this + 30);
        v242._topLeft.row = *(v167 - 4);
        *(this + 30) = v167 - 4;
        v172 = objc_msgSend_count(v240, v168, v169, v170, v171);
        v242._topLeft.row = v172 + v242._topLeft.row - 1;
        sub_2210C47D0(this + 29, &v242);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v173 = v45;
          v178 = objc_msgSend_count(v49, v174, v175, v176, v177);
          objc_msgSend_setNumArgs_(v173, v179, v178, v180, v181);

          v53 = v240;
        }

LABEL_48:

LABEL_49:
      }
    }

    goto LABEL_51;
  }

  return result;
}

TSCEASTBinaryElement *TSCEFormulaNodeTreeCreator::binaryInfixOperatorNode(void **this, TSCEASTBinaryElement *a2)
{
  v4 = TSCEASTElement::tag(a2, this);
  v5 = [TSCEOperatorFormulaNode alloc];
  v9 = objc_msgSend_initWithTag_(v5, v6, v4, v7, v8);
  v13 = objc_msgSend_partialResultForOffset_(this[25], v10, *(a2 + 2), v11, v12);
  objc_msgSend_setPartialResult_(v9, v14, v13, v15, v16);

  TSCEFormulaNodeTreeCreator::addExpression(this, v9, 2);
  return a2;
}

TSCEASTUnaryElement *TSCEFormulaNodeTreeCreator::unaryOperatorNode(void **this, TSCEASTUnaryElement *a2)
{
  v4 = TSCEASTElement::tag(a2, this);
  v5 = [TSCEOperatorFormulaNode alloc];
  v9 = objc_msgSend_initWithTag_(v5, v6, v4, v7, v8);
  v13 = objc_msgSend_partialResultForOffset_(this[25], v10, *(a2 + 2), v11, v12);
  objc_msgSend_setPartialResult_(v9, v14, v13, v15, v16);

  TSCEFormulaNodeTreeCreator::addExpression(this, v9, 1);
  return a2;
}

TSCEASTFunctionElement *TSCEFormulaNodeTreeCreator::functionNode(void **this, TSCEASTFunctionElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTFunctionElement::functionIndex(a2, this, a3, a4, a5);
  v8 = (*(*a2 + 48))(a2, this);
  v12 = TSCEASTFunctionElement::whitespace(a2, this, v9, v10, v11);
  v13 = [TSCEFunctionFormulaNode alloc];
  v16 = objc_msgSend_initWithFunctionIndex_numArgs_(v13, v14, v7, v8, v15);
  objc_msgSend_setWhitespace_(v16, v17, v12, v18, v19);
  v23 = objc_msgSend_partialResultForOffset_(this[25], v20, *(a2 + 2), v21, v22);
  objc_msgSend_setPartialResult_(v16, v24, v23, v25, v26);

  TSCEFormulaNodeTreeCreator::addExpression(this, v16, v8);
  return a2;
}

TSCEASTUnknownFunctionElement *TSCEFormulaNodeTreeCreator::unknownFunctionNode(void **this, TSCEASTUnknownFunctionElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTUnknownFunctionElement::unknownFunctionName(a2, this, a3, a4, a5);
  v8 = (*(*a2 + 48))(a2, this);
  v9 = [TSCEUnknownFunctionFormulaNode alloc];
  v12 = objc_msgSend_initWithFunctionName_numArgs_(v9, v10, v7, v8, v11);
  v16 = objc_msgSend_partialResultForOffset_(this[25], v13, *(a2 + 2), v14, v15);
  objc_msgSend_setPartialResult_(v12, v17, v16, v18, v19);

  TSCEFormulaNodeTreeCreator::addExpression(this, v12, v8);
  return a2;
}

TSCEASTColonElement *TSCEFormulaNodeTreeCreator::colonNode(void **this, TSCEASTColonElement *a2)
{
  v4 = [TSCEColonFormulaNode alloc];
  v7 = objc_msgSend_initWithLeftArg_rightArg_(v4, v5, 0, 0, v6);
  v11 = objc_msgSend_partialResultForOffset_(this[25], v8, *(a2 + 2), v9, v10);
  objc_msgSend_setPartialResult_(v7, v12, v11, v13, v14);

  TSCEFormulaNodeTreeCreator::addExpression(this, v7, 2);
  return a2;
}

TSCEASTColonTractElement *TSCEFormulaNodeTreeCreator::colonTractNode(TSCEFormulaNodeTreeCreator *this, TSCEASTColonTractElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(a2, this, a3, a4, a5);
  if (*(this + 304))
  {
    v118 = 0;
    v116.i64[0] = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0.coordinate;
    v14 = objc_msgSend_absoluteCellTractRefForHostCell_offTable_(v7, v22, &v116, &v118, v23);
    if ((objc_msgSend_hasTableUID(v14, v24, v25, v26, v27) & 1) == 0)
    {
      v32 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      objc_msgSend_setTableUID_(v14, v33, v32->var0.var0._tableUID._lower, v32->var0.var0._tableUID._upper, v34);
    }

    v35 = objc_msgSend_tableUID(v14, v28, v29, v30, v31);
    v37 = v36;
    v38 = sub_221089E8C(this);
    v40 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v39, v35, v37, v38);

    v45 = objc_msgSend_translator(v40, v41, v42, v43, v44);
    v50 = objc_msgSend_coordinateMapper(v45, v46, v47, v48, v49);

    v54 = objc_msgSend_viewTractRefForBaseTractRef_(v50, v51, v14, v52, v53);
    v55 = [TSTUIDRectRef alloc];
    v56 = sub_221089E8C(this);
    v59 = objc_msgSend_initWithCalcEngine_viewTractRef_(v55, v57, v56, v54, v58);

    v64 = objc_msgSend_preserveFlags(v14, v60, v61, v62, v63);
    objc_msgSend_setBasePreserveFlags_(v59, v65, v64, v66, v67);
    if ((v118 & 1) == 0 && objc_msgSend_isValid(v59, v68, v69, v70, v71) && ((objc_msgSend_spansAllColumns(v14, v72, v73, v74, v75) & 1) != 0 || (v80 = objc_msgSend_numColumns(v14, v76, v77, v78, v79), objc_msgSend_numberOfColumns(v59, v81, v82, v83, v84) == v80)) && ((objc_msgSend_spansAllRows(v14, v76, v77, v78, v79) & 1) != 0 || (v89 = objc_msgSend_numRows(v14, v85, v86, v87, v88), objc_msgSend_numberOfRows(v59, v90, v91, v92, v93) == v89)))
    {
      v94 = [TSCECombinedReferenceFormulaNode alloc];
      v95 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      v116 = *&v95->var0.var0.coordinate.row;
      v117._lower = v95->var0.var0._tableUID._upper;
      v101 = objc_msgSend_initWithUidRectRef_hostCellRef_(v94, v96, v59, &v116, v97);
      if (!v101)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v102 = [TSTUIDRectRef alloc];
      v103 = sub_221089E8C(this);
      tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
      v116 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v117 = tableUID;
      v106 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v102, v105, v103, &v116, 0);

      v107 = [TSCECombinedReferenceFormulaNode alloc];
      v108 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      v116 = *&v108->var0.var0.coordinate.row;
      v117._lower = v108->var0.var0._tableUID._upper;
      v101 = objc_msgSend_initWithUidRectRef_hostCellRef_(v107, v109, v106, &v116, v110);

      if (!v101)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    v111 = objc_msgSend_partialResultForOffset_(*(this + 25), v98, *(a2 + 2), v99, v100);
    objc_msgSend_setPartialResult_(v101, v112, v111, v113, v114);

    TSCEFormulaNodeTreeCreator::addExpression(this, v101, 0);
    goto LABEL_15;
  }

  v8 = [TSCEColonTractFormulaNode alloc];
  v116.i8[0] = TSCEASTElement::refFlags(a2, this);
  v118 = TSCEASTColonTractElement::colonTractFlags(a2, this, v9, v10, v11);
  v12 = (*(*a2 + 96))(a2, this);
  v14 = objc_msgSend_initWithColonTract_refFlags_colonTractFlags_undoTractList_(v8, v13, v7, &v116, &v118, v12);

  v18 = objc_msgSend_partialResultForOffset_(*(this + 25), v15, *(a2 + 2), v16, v17, v116.i64[0]);
  objc_msgSend_setPartialResult_(v14, v19, v18, v20, v21);

  TSCEFormulaNodeTreeCreator::addExpression(this, v14, 0);
LABEL_16:

  return a2;
}

TSCEASTNumberElement *TSCEFormulaNodeTreeCreator::numberNode(void **this, TSCEASTNumberElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = TSCEASTNumberElement::value(a2, this, a3, a4, a5);
  v22 = v7;
  v8 = [TSCENumberFormulaNode alloc];
  v12 = objc_msgSend_initWithNumber_(v8, v9, &v21, v10, v11);
  v16 = objc_msgSend_partialResultForOffset_(this[25], v13, *(a2 + 2), v14, v15, v21, v22);
  objc_msgSend_setPartialResult_(v12, v17, v16, v18, v19);

  TSCEFormulaNodeTreeCreator::addExpression(this, v12, 0);
  return a2;
}

TSCEASTBooleanElement *TSCEFormulaNodeTreeCreator::BOOLeanNode(void **this, TSCEASTBooleanElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTBooleanElement::value(a2, this, a3, a4, a5);
  v8 = [TSCEBooleanFormulaNode alloc];
  v12 = objc_msgSend_initWithBoolean_(v8, v9, v7, v10, v11);
  v16 = objc_msgSend_partialResultForOffset_(this[25], v13, *(a2 + 2), v14, v15);
  objc_msgSend_setPartialResult_(v12, v17, v16, v18, v19);

  TSCEFormulaNodeTreeCreator::addExpression(this, v12, 0);
  return a2;
}

TSCEASTStringElement *TSCEFormulaNodeTreeCreator::stringNode(void **this, TSCEASTStringElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTStringElement::string(a2, this, a3, a4, a5);
  v8 = [TSCEStringFormulaNode alloc];
  v12 = objc_msgSend_initWithString_(v8, v9, v7, v10, v11);
  v16 = objc_msgSend_partialResultForOffset_(this[25], v13, *(a2 + 2), v14, v15);
  objc_msgSend_setPartialResult_(v12, v17, v16, v18, v19);

  TSCEFormulaNodeTreeCreator::addExpression(this, v12, 0);
  return a2;
}

TSCEASTDateElement *TSCEFormulaNodeTreeCreator::dateNode(void **this, TSCEASTDateElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTDateElement::value(a2, this, a3, a4, a5);
  v11 = TSCEASTDateElement::dateTimeFormat(a2, this, v8, v9, v10);
  if (!objc_msgSend_length(v11, v12, v13, v14, v15))
  {

    v11 = 0;
  }

  v16 = [TSCEDateFormulaNode alloc];
  v19 = objc_msgSend_initWithDate_dateTimeFormat_(v16, v17, v7, v11, v18);
  v23 = objc_msgSend_partialResultForOffset_(this[25], v20, *(a2 + 2), v21, v22);
  objc_msgSend_setPartialResult_(v19, v24, v23, v25, v26);

  TSCEFormulaNodeTreeCreator::addExpression(this, v19, 0);
  return a2;
}

TSCEASTDurationElement *TSCEFormulaNodeTreeCreator::durationNode(void **this, TSCEASTDurationElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTDurationElement::durationFormat(a2, this, a3, a4, a5);
  v27 = TSCEASTDurationElement::unitNum(a2, this, v8, v9, v10);
  LOWORD(v28) = TSCEASTDurationElement::unit(a2, this, v11, v12, v13);
  HIDWORD(v28) = v7 & 0xFFFFFF;
  v14 = [TSCEDurationFormulaNode alloc];
  v18 = objc_msgSend_initWithDuration_(v14, v15, &v27, v16, v17);
  v22 = objc_msgSend_partialResultForOffset_(this[25], v19, *(a2 + 2), v20, v21, *&v27, v28);
  objc_msgSend_setPartialResult_(v18, v23, v22, v24, v25);

  TSCEFormulaNodeTreeCreator::addExpression(this, v18, 0);
  return a2;
}

TSCEASTTagOnlyElement *TSCEFormulaNodeTreeCreator::emptyArgumentNode(void **this, TSCEASTTagOnlyElement *a2)
{
  v4 = [TSCEEmptyFormulaNode alloc];
  inited = objc_msgSend_initAsEmptyNode(v4, v5, v6, v7, v8);
  v13 = objc_msgSend_partialResultForOffset_(this[25], v10, *(a2 + 2), v11, v12);
  objc_msgSend_setPartialResult_(inited, v14, v13, v15, v16);

  TSCEFormulaNodeTreeCreator::addExpression(this, inited, 0);
  return a2;
}

TSCEASTTokenElement *TSCEFormulaNodeTreeCreator::tokenNode(void **this, TSCEASTTokenElement *a2)
{
  v4 = [TSCETokenFormulaNode alloc];
  isOptional = TSCEASTTokenElement::isOptional(a2, this, v5, v6, v7);
  v12 = objc_msgSend_initWithIsOptional_(v4, v9, isOptional, v10, v11);
  v16 = objc_msgSend_partialResultForOffset_(this[25], v13, *(a2 + 2), v14, v15);
  objc_msgSend_setPartialResult_(v12, v17, v16, v18, v19);

  TSCEFormulaNodeTreeCreator::addExpression(this, v12, 0);
  return a2;
}

TSCEASTArrayElement *TSCEFormulaNodeTreeCreator::arrayNode(void **this, TSCEASTArrayElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTArrayElement::numColumns(a2, this, a3, a4, a5);
  v11 = TSCEASTArrayElement::numRows(a2, this, v8, v9, v10);
  v12 = [TSCEArrayFormulaNode alloc];
  v15 = objc_msgSend_initWithNumColumns_numRows_(v12, v13, v7, v11, v14);
  v19 = objc_msgSend_partialResultForOffset_(this[25], v16, *(a2 + 2), v17, v18);
  objc_msgSend_setPartialResult_(v15, v20, v19, v21, v22);

  TSCEFormulaNodeTreeCreator::addExpression(this, v15, v11 * v7);
  return a2;
}

TSCEASTListElement *TSCEFormulaNodeTreeCreator::listNode(void **this, TSCEASTListElement *a2)
{
  v4 = (*(*a2 + 48))(a2, this);
  v5 = [TSCEListFormulaNode alloc];
  v9 = objc_msgSend_initWithNumArgs_(v5, v6, v4, v7, v8);
  v13 = objc_msgSend_partialResultForOffset_(this[25], v10, *(a2 + 2), v11, v12);
  objc_msgSend_setPartialResult_(v9, v14, v13, v15, v16);

  TSCEFormulaNodeTreeCreator::addExpression(this, v9, v4);
  return a2;
}

TSCEASTRelativeCoordRefElement *TSCEFormulaNodeTreeCreator::anyReferenceNode(TSCEFormulaNodeTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, this);
  v29 = v4;
  v8 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, this, v5, v6, v7);
  v28 = v8;
  v9 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
  if (v4)
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, this, v11, v12, v13);
    upper = v10;
  }

  else
  {
    lower = v9->var0.var0._tableUID._lower;
    upper = v9->var0.var0._tableUID._upper;
  }

  v16 = objc_msgSend_partialResultForOffset_(*(this + 25), v10, *(a2 + 2), v12, v13);
  if (*(this + 304))
  {
    v24 = *(this + 1);
    if ((v4 & 0xC) == 8)
    {
      tableUID = TSCEFormulaRewriteContext::containingCell(v24)->var0.var0._tableUID;
      v31._lower = lower;
      v31._upper = upper;
      TSCEFormulaNodeTreeCreator::processColumnReferenceNode(this, v16, tableUID, v31, (v8 >> 16) >> 16, (v4 >> 4) & 1);
    }

    else
    {
      v25 = TSCEFormulaRewriteContext::containingCell(v24)->var0.var0._tableUID;
      v26._lower = lower;
      v26._upper = upper;
      if ((v4 & 0xC) == 4)
      {
        TSCEFormulaNodeTreeCreator::processRowReferenceNode(this, v16, v25, v26, v8, (v4 >> 5) & 1);
      }

      else
      {
        TSCEFormulaNodeTreeCreator::processCellReferenceNode(this, v16, v25, v26, v8, (v8 << 16) >> 48, (v4 & 0x20) != 0, (v4 & 0x10) != 0);
      }
    }
  }

  else
  {
    v17 = [TSCERelativeCoordRefFormulaNode alloc];
    v18 = (*(*a2 + 96))(a2, this);
    v20 = objc_msgSend_initWithTableUID_refFlags_relativeCellCoord_undoTractList_(v17, v19, lower, upper, &v29, &v28, v18);

    objc_msgSend_setPartialResult_(v20, v21, v16, v22, v23);
    TSCEFormulaNodeTreeCreator::addExpression(this, v20, 0);
  }

  return a2;
}

void TSCEFormulaNodeTreeCreator::processRowReferenceNode(TSCEFormulaRewriteContext **this, TSCEPartialResult *a2, TSKUIDStruct a3, TSKUIDStruct a4, uint64_t a5, int a6)
{
  upper = a4._upper;
  lower = a4._lower;
  v10 = a3._upper;
  v11 = a3._lower;
  v13 = a2;
  if (a6)
  {
    v14 = 10;
  }

  else
  {
    v14 = 0;
  }

  v15 = TSCEFormulaRewriteContext::containingCell(this[1]);
  if (a6)
  {
    v19 = a5;
    goto LABEL_17;
  }

  v19 = 0x7FFFFFFF;
  if (a5 == 0x7FFFFFFF)
  {
    goto LABEL_17;
  }

  coordinate = v15->var0.var0.coordinate;
  if (a5 >= 1)
  {
    if ((999999 - a5) < coordinate.row)
    {
      goto LABEL_17;
    }

LABEL_12:
    if (coordinate.row == 0x7FFFFFFF)
    {
      v21 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v17, v18);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v23, v24);
      v26 = NSStringFromTSUCellCoord();
      v27 = v21;
      v28 = v51;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v29, v51, v25, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v26);
    }

    else
    {
      v19 = coordinate.row + a5;
      if ((coordinate.row + a5) < 0x7FFFFFFF)
      {
        goto LABEL_17;
      }

      v50 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v17, v18);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v31, v32);
      v49 = a5;
      v28 = v52;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v33, v52, v25, 191, 0, "overflow in row, input row: %d with host row: %lu", v49, coordinate.row);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    v19 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  if (!a5 || coordinate.row >= -a5)
  {
    goto LABEL_12;
  }

LABEL_17:
  v38 = [TSTUIDRectRef alloc];
  v39 = sub_221089E8C(this);
  v53 = v19 | 0x7FFF00000000;
  v54 = v53;
  v55 = lower;
  v56 = upper;
  v41 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v38, v40, v39, &v53, v14);

  v42 = [TSCECombinedReferenceFormulaNode alloc];
  v53 = TSCEFormulaRewriteContext::containingCell(this[1])->var0.var0.coordinate;
  v54 = v11;
  v55 = v10;
  v45 = objc_msgSend_initWithUidRectRef_hostCellRef_(v42, v43, v41, &v53, v44);
  objc_msgSend_setPartialResult_(v45, v46, v13, v47, v48);
  TSCEFormulaNodeTreeCreator::addExpression(this, v45, 0);
}

void TSCEFormulaNodeTreeCreator::processColumnReferenceNode(TSCEFormulaRewriteContext **this, TSCEPartialResult *a2, TSKUIDStruct a3, TSKUIDStruct a4, int a5, unsigned int a6)
{
  upper = a4._upper;
  lower = a4._lower;
  v42 = a3._upper;
  v10 = a3._lower;
  v12 = a2;
  if (a6)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = TSCEFormulaRewriteContext::containingCell(this[1]);
  if (a6)
  {
    v18 = a5;
    goto LABEL_14;
  }

  v18 = 0x7FFF;
  if (a5 == 0x7FFF)
  {
    goto LABEL_14;
  }

  coordinate = v14->var0.var0.coordinate;
  if (a5 < 1)
  {
    if (a5 < 0 && -a5 > coordinate.column)
    {
      goto LABEL_14;
    }
  }

  else if (999 - a5 < coordinate.column)
  {
    goto LABEL_14;
  }

  v18 = coordinate.column + a5;
  if ((coordinate.column + a5) >= 0x7FFFu)
  {
    v41 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v16, v17);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v25, v20, v24, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

LABEL_14:
  v30 = [TSTUIDRectRef alloc];
  v31 = sub_221089E8C(this);
  v43 = (v18 << 32) | 0x7FFFFFFF;
  v44 = v43;
  v45 = lower;
  v46 = upper;
  v33 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v30, v32, v31, &v43, v13 | a6);

  v34 = [TSCECombinedReferenceFormulaNode alloc];
  v43 = TSCEFormulaRewriteContext::containingCell(this[1])->var0.var0.coordinate;
  v44 = v10;
  v45 = v42;
  v37 = objc_msgSend_initWithUidRectRef_hostCellRef_(v34, v35, v33, &v43, v36);
  objc_msgSend_setPartialResult_(v37, v38, v12, v39, v40);
  TSCEFormulaNodeTreeCreator::addExpression(this, v37, 0);
}

void TSCEFormulaNodeTreeCreator::processCellReferenceNode(TSCEFormulaRewriteContext **this, TSCEPartialResult *a2, TSKUIDStruct a3, TSKUIDStruct a4, uint64_t a5, uint64_t a6, BOOL a7, BOOL a8)
{
  upper = a4._upper;
  lower = a4._lower;
  v12 = a3._upper;
  v13 = a3._lower;
  v15 = a2;
  sub_2210898C4(a6, v16, v17, v18, v19);
  sub_2210899C8(a5, v20, v21, v22, v23);
  sub_2210898C4(a6, v24, v25, v26, v27);
  sub_2210899C8(a5, v28, v29, v30, v31);
  if (a8)
  {
    v32 = 4;
  }

  else
  {
    v32 = 0;
  }

  if (a7)
  {
    v33 = 10;
  }

  else
  {
    v33 = 0;
  }

  v60._flags = v33 | a8 | v32;
  v34 = TSCEFormulaRewriteContext::containingCell(this[1]);
  v37 = 0x100000000000000;
  if (!a8)
  {
    v37 = 0;
  }

  v38 = 0x1000000000000;
  if (!a7)
  {
    v38 = 0;
  }

  coordinate = v34->var0.var0.coordinate;
  v40 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(coordinate, (v38 | v37 | (a6 << 32) | a5), &v60, v35, v36);
  v41 = v40;
  v42 = v40 & 0xFFFF00000000;
  v43 = v40 != 0x7FFFFFFFLL || v42 == 0x7FFF00000000;
  if (!v43 || (v42 == 0x7FFF00000000 ? (v44 = v40 == 0x7FFFFFFFLL) : (v44 = 1), !v44))
  {
    v41 = 0x7FFF7FFFFFFFLL;
  }

  v45 = [TSTUIDRectRef alloc];
  v46 = sub_221089E8C(this);
  v56 = v41;
  v57 = v41;
  v58 = lower;
  v59 = upper;
  v48 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v45, v47, v46, &v56, v60._flags);

  v49 = [TSCECombinedReferenceFormulaNode alloc];
  v56 = TSCEFormulaRewriteContext::containingCell(this[1])->var0.var0.coordinate;
  v57 = v13;
  v58 = v12;
  v52 = objc_msgSend_initWithUidRectRef_hostCellRef_(v49, v50, v48, &v56, v51);
  objc_msgSend_setPartialResult_(v52, v53, v15, v54, v55);
  TSCEFormulaNodeTreeCreator::addExpression(this, v52, 0);
}

TSCEASTRelativeCoordRefElement *TSCEFormulaNodeTreeCreator::referenceErrorNode(TSCEFormulaNodeTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  if (*(this + 304))
  {
    v15 = [TSTUIDRectRef alloc];
    v16 = sub_221089E8C(this);
    tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
    v33 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v34 = tableUID;
    v10 = objc_msgSend_initWithCalcEngine_baseRangeRef_preserveFlags_(v15, v18, v16, &v33, 0);

    v19 = [TSCECombinedReferenceFormulaNode alloc];
    v20 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v33 = *&v20->var0.var0.coordinate.row;
    v34._lower = v20->var0.var0._tableUID._upper;
    v26 = objc_msgSend_initWithUidRectRef_hostCellRef_(v19, v21, v10, &v33, v22);
    if (a2)
    {
      v27 = objc_msgSend_partialResultForOffset_(*(this + 25), v23, *(a2 + 2), v24, v25);
      objc_msgSend_setPartialResult_(v26, v28, v27, v29, v30);
    }

    else
    {
      v27 = 0;
      objc_msgSend_setPartialResult_(v26, v23, 0, v24, v25);
    }

    if (a2)
    {
    }

    TSCEFormulaNodeTreeCreator::addExpression(this, v26, 0);
  }

  else
  {
    v32 = 0;
    if (a2)
    {
      v32 = TSCEASTElement::refFlags(a2, this);
    }

    v33.i64[0] = 0x7FFF7FFFFFFFLL;
    v4 = [TSCERelativeCoordRefFormulaNode alloc];
    v5 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v10 = objc_msgSend_initWithTableUID_refFlags_relativeCellCoord_undoTractList_(v4, v6, v5->var0.var0._tableUID._lower, v5->var0.var0._tableUID._upper, &v32, &v33, 0);
    if (a2)
    {
      v11 = objc_msgSend_partialResultForOffset_(*(this + 25), v7, *(a2 + 2), v8, v9);
      objc_msgSend_setPartialResult_(v10, v12, v11, v13, v14);
    }

    else
    {
      v11 = 0;
      objc_msgSend_setPartialResult_(v10, v7, 0, v8, v9);
    }

    if (a2)
    {
    }

    TSCEFormulaNodeTreeCreator::addExpression(this, v10, 0);
  }

  return a2;
}

void sub_2210C6C74(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

TSCEASTRelativeCoordRefElement *TSCEFormulaNodeTreeCreator::referenceErrorWithUidsNode(TSCEFormulaNodeTreeCreator *this, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = (*(*a2 + 96))(a2, this);
  v12 = TSCEASTRelativeCoordRefElement::tableUID(a2, this, v5, v6, v7);
  v13 = v8;
  v60[0] = v12;
  v60[1] = v8;
  if (*(this + 304))
  {
    v24 = objc_msgSend_includedUidsTract(v4, v8, v9, v10, v11);
    v16 = v24;
    memset(v59, 0, sizeof(v59));
    *__p = 0u;
    if (v24)
    {
      v29 = objc_msgSend_columnUids(v24, v25, v26, v27, v28);
      v34 = objc_msgSend_rowUids(v16, v30, v31, v32, v33);
      sub_2210BBBE8(v54, v29, v34);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v54;
      v59[0] = upper;
      v54[1] = 0;
      upper = 0;
      v54[0] = 0;
      v35 = v59[1];
      if (v59[1])
      {
        v59[2] = v59[1];
        operator delete(v59[1]);
        v35 = v54[0];
      }

      *&v59[1] = v56;
      v59[3] = v57;
      v57 = 0;
      v56 = 0uLL;
      if (v35)
      {
        v54[1] = v35;
        operator delete(v35);
      }
    }

    v36 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, this);
    v37 = [TSTUIDRectRef alloc];
    v38 = sub_221089E8C(this);
    v40 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v37, v39, v38, v60, __p, v36);

    v41 = [TSCECombinedReferenceFormulaNode alloc];
    v42 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    *v54 = *&v42->var0.var0.coordinate.row;
    upper = v42->var0.var0._tableUID._upper;
    v45 = objc_msgSend_initWithUidRectRef_hostCellRef_(v41, v43, v40, v54, v44);
    v49 = objc_msgSend_partialResultForOffset_(*(this + 25), v46, *(a2 + 2), v47, v48);
    objc_msgSend_setPartialResult_(v45, v50, v49, v51, v52);

    TSCEFormulaNodeTreeCreator::addExpression(this, v45, 0);
    if (v59[1])
    {
      v59[2] = v59[1];
      operator delete(v59[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    LOBYTE(v54[0]) = TSCEASTElement::refFlags(a2, this);
    __p[0] = 0x7FFF7FFFFFFFLL;
    v14 = [TSCERelativeCoordRefFormulaNode alloc];
    v16 = objc_msgSend_initWithTableUID_refFlags_relativeCellCoord_undoTractList_(v14, v15, v12, v13, v54, __p, v4);
    v20 = objc_msgSend_partialResultForOffset_(*(this + 25), v17, *(a2 + 2), v18, v19, v54[0]);
    objc_msgSend_setPartialResult_(v16, v21, v20, v22, v23);

    TSCEFormulaNodeTreeCreator::addExpression(this, v16, 0);
  }

  return a2;
}

void sub_2210C6F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_22109DBB8(va);
  _Unwind_Resume(a1);
}

TSCEASTWhitespaceElement *TSCEFormulaNodeTreeCreator::appendWhitespaceNode(TSCEFormulaNodeTreeCreator *this, TSCEASTWhitespaceElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTWhitespaceElement::whitespace(a2, this, a3, a4, a5);
  TSCEFormulaNodeTreeCreator::addWhitespaceAfter(this, v7);

  return a2;
}

TSCEASTWhitespaceElement *TSCEFormulaNodeTreeCreator::prependWhitespaceNode(TSCEFormulaNodeTreeCreator *this, TSCEASTWhitespaceElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTWhitespaceElement::whitespace(a2, this, a3, a4, a5);
  TSCEFormulaNodeTreeCreator::addWhitespaceBefore(this, v7);

  return a2;
}

TSCEASTLetBindElement *TSCEFormulaNodeTreeCreator::letBindNode(TSCEFormulaNodeTreeCreator *this, TSCEASTLetBindElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTLetBindElement::identifier(a2, this, a3, a4, a5);
  isContinuation = TSCEASTLetBindElement::isContinuation(a2, this, v8, v9, v10);
  TSCESymbolTable::beginScope(*(this + 18));
  if (v7)
  {
    if ((*(this + 304) & 8) != 0)
    {
      v12 = TSCESymbolTable::convertToExcelAcceptableIdentifier(*(this + 18), v7);

      v7 = v12;
    }

    Symbol = TSCESymbolTable::createSymbol(*(this + 18), v7);
  }

  else
  {
    Symbol = 0;
  }

  v14 = [TSCEIdentifierFormulaNode alloc];
  v18 = objc_msgSend_initWithIdentifier_(v14, v15, v7, v16, v17);
  objc_msgSend_setSymbol_(v18, v19, Symbol, v20, v21);
  if (isContinuation)
  {
    v22 = [TSCELetBindFormulaNode alloc];
    isContinued = objc_msgSend_initWithIdentifier_isContinued_(v22, v23, v7, 1, v24);
  }

  else
  {
    v29 = [TSCEFunctionFormulaNode alloc];
    isContinued = objc_msgSend_initWithFunctionIndex_numArgs_(v29, v30, 363, 3, v31);
  }

  v32 = isContinued;
  v33 = objc_msgSend_partialResultForOffset_(*(this + 25), v26, *(a2 + 2), v27, v28);
  objc_msgSend_setPartialResult_(v32, v34, v33, v35, v36);

  TSCEFormulaNodeTreeCreator::addExpression(this, v32, 3);
  TSCEFormulaNodeTreeCreator::addExpression(this, v18, 0);

  return a2;
}

TSCEASTLambdaElement *TSCEFormulaNodeTreeCreator::lambdaNode(TSCEFormulaNodeTreeCreator *this, TSCEASTLambdaElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = TSCEASTLambdaElement::identifiers(a2, this, a3, a4, a5);
  v11 = objc_msgSend_count(v41, v7, v8, v9, v10);
  v12 = [TSCEFunctionFormulaNode alloc];
  v40 = objc_msgSend_initWithFunctionIndex_numArgs_(v12, v13, 364, (v11 + 1), v14);
  v18 = objc_msgSend_partialResultForOffset_(*(this + 25), v15, *(a2 + 2), v16, v17);
  objc_msgSend_setPartialResult_(v40, v19, v18, v20, v21);

  TSCEFormulaNodeTreeCreator::addExpression(this, v40, v11 + 1);
  TSCESymbolTable::beginScope(*(this + 18));
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v41;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v42, v46, 16);
  if (v24)
  {
    v25 = *v43;
    do
    {
      v26 = 0;
      do
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v42 + 1) + 8 * v26);
        v28 = v27;
        if ((*(this + 304) & 8) != 0)
        {
          v28 = TSCESymbolTable::convertToExcelAcceptableIdentifier(*(this + 18), v27);
        }

        Symbol = TSCESymbolTable::createSymbol(*(this + 18), v27);
        v30 = [TSCEIdentifierFormulaNode alloc];
        v34 = objc_msgSend_initWithIdentifier_(v30, v31, v28, v32, v33);
        objc_msgSend_setSymbol_(v34, v35, Symbol, v36, v37);
        TSCEFormulaNodeTreeCreator::addExpression(this, v34, 0);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v38, &v42, v46, 16);
    }

    while (v24);
  }

  return a2;
}

TSCEASTEndScopeElement *TSCEFormulaNodeTreeCreator::endScopeNode(TSCESymbolTable **this, TSCEASTEndScopeElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TSCESymbolTable::endScope(this[18], a2, a3, a4, a5);
  if ((this[38] & 4) != 0)
  {
    v7 = [TSCEEndScopeFormulaNode alloc];
    inited = objc_msgSend_initAsEndScope(v7, v8, v9, v10, v11);
    TSCEFormulaNodeTreeCreator::addExpression(this, inited, 0);
  }

  return a2;
}

TSCEASTVariableElement *TSCEFormulaNodeTreeCreator::variableNode(TSCEFormulaNodeTreeCreator *this, TSCEASTVariableElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTVariableElement::symbol(a2, this, a3, a4, a5);
  v8 = TSCESymbolTable::identifierForSymbol(*(this + 18), v7);
  if ((*(this + 304) & 8) != 0)
  {
    v9 = TSCESymbolTable::convertToExcelAcceptableIdentifier(*(this + 18), v8);

    v8 = v9;
  }

  v10 = [TSCEVariableFormulaNode alloc];
  v13 = objc_msgSend_initWithSymbol_identifier_(v10, v11, v7, v8, v12);
  v17 = objc_msgSend_partialResultForOffset_(*(this + 25), v14, *(a2 + 2), v15, v16);
  objc_msgSend_setPartialResult_(v13, v18, v17, v19, v20);

  TSCEFormulaNodeTreeCreator::addExpression(this, v13, 0);
  return a2;
}

TSCEASTUidReferenceElement *TSCEFormulaNodeTreeCreator::uidReferenceNode(TSCEFormulaNodeTreeCreator *this, TSCEASTUidReferenceElement *a2)
{
  v4 = (*(*a2 + 96))(a2, this);
  lower = TSCEASTUidReferenceElement::tableUID(a2, this, v5, v6, v7);
  upper = v8;
  if (!lower)
  {
    if (v8)
    {
      lower = 0;
    }

    else
    {
      v11 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
      lower = v11->var0.var0._tableUID._lower;
      upper = v11->var0.var0._tableUID._upper;
    }
  }

  v12 = [TSCEUidReferenceFormulaNode alloc];
  v27 = TSCEASTElement::refFlags(a2, this);
  v26 = TSCEASTUidReferenceElement::colonTractFlags(a2, this, v13, v14, v15);
  v17 = objc_msgSend_initWithTableUID_refFlags_colonTractFlags_undoTractList_(v12, v16, lower, upper, &v27, &v26, v4);
  v21 = objc_msgSend_partialResultForOffset_(*(this + 25), v18, *(a2 + 2), v19, v20);
  objc_msgSend_setPartialResult_(v17, v22, v21, v23, v24);

  TSCEFormulaNodeTreeCreator::addExpression(this, v17, 0);
  return a2;
}

TSCEASTViewTractRefElement *TSCEFormulaNodeTreeCreator::viewTractRefNode(TSCEFormulaNodeTreeCreator *this, TSCEASTViewTractRefElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTViewTractRefElement::tableUID(a2, this, a3, a4, a5);
  v110 = v7;
  v111 = v8;
  if (v7 | v8)
  {
    lower = v7;
    upper = v8;
  }

  else
  {
    v14 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    lower = v14->var0.var0._tableUID._lower;
    upper = v14->var0.var0._tableUID._upper;
    v110 = lower;
    v111 = upper;
  }

  if (*(this + 304))
  {
    TSCEASTViewTractRefElement::uidReference(a2, this, v9, v10, v11, &v109);
    v36 = objc_msgSend_activeUidTract(v109, v32, v33, v34, v35);
    v41 = v36;
    if (!v36)
    {
      v69 = MEMORY[0x277D81150];
      v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "virtual TSCEASTElement *TSCEFormulaNodeTreeCreator::viewTractRefNode(TSCEASTViewTractRefElement *)", v39, v40);
      v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTreeCreator.mm", v72, v73);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v75, v70, v74, 722, 0, "viewTractRef is expected to have an active tract");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
LABEL_34:

      return a2;
    }

    v42 = objc_msgSend_columnUids(v36, v37, v38, v39, v40);
    v47 = objc_msgSend_rowUids(v41, v43, v44, v45, v46);
    v48 = sub_221089E8C(this);
    v50 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v49, lower, upper, v48);

    if (!v50)
    {
      (*(*this + 240))(this, 0);
LABEL_33:

      goto LABEL_34;
    }

    v54 = TSCEASTViewTractRefElement::viewTractRef(a2, this, v51, v52, v53);
    memset(v108, 0, sizeof(v108));
    *__p = 0u;
    if (objc_msgSend_isFixedAtZeroRef(v54, v55, v56, v57, v58))
    {
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v97[0] = objc_msgSend_columnUIDForColumnIndex_(v50, v59, 0, v60, v61);
      v97[1] = v62;
      sub_221083454(&v104, v97);
      v97[0] = objc_msgSend_rowUIDForRowIndex_(v50, v63, 0, v64, v65);
      v97[1] = v66;
      sub_221083454(&v101, v97);
      sub_2210BBBE8(v97, &v104, &v101);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v97;
      v108[0] = v98;
      v97[1] = 0;
      v98 = 0;
      v97[0] = 0;
      v67 = v108[1];
      if (v108[1])
      {
        v108[2] = v108[1];
        operator delete(v108[1]);
        v67 = v97[0];
      }

      *&v108[1] = v99;
      v108[3] = v100;
      v100 = 0;
      v99 = 0uLL;
      if (v67)
      {
        v97[1] = v67;
        operator delete(v67);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      v68 = v104;
      if (!v104)
      {
        goto LABEL_28;
      }

      v105 = v104;
    }

    else
    {
      sub_2210BBBE8(v97, v42, v47);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v97;
      v108[0] = v98;
      v97[1] = 0;
      v98 = 0;
      v97[0] = 0;
      v68 = v108[1];
      if (v108[1])
      {
        v108[2] = v108[1];
        operator delete(v108[1]);
        v68 = v97[0];
      }

      *&v108[1] = v99;
      v108[3] = v100;
      v100 = 0;
      v99 = 0uLL;
      if (!v68)
      {
        goto LABEL_28;
      }

      v97[1] = v68;
    }

    operator delete(v68);
LABEL_28:
    v80 = [TSTUIDRectRef alloc];
    v81 = sub_221089E8C(this);
    v83 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v80, v82, v81, &v110, __p, 15);

    v84 = [TSCECombinedReferenceFormulaNode alloc];
    v85 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    *v97 = *&v85->var0.var0.coordinate.row;
    v98 = v85->var0.var0._tableUID._upper;
    v88 = objc_msgSend_initWithUidRectRef_hostCellRef_(v84, v86, v83, v97, v87);
    v92 = objc_msgSend_partialResultForOffset_(*(this + 25), v89, *(a2 + 2), v90, v91);
    objc_msgSend_setPartialResult_(v88, v93, v92, v94, v95);

    TSCEFormulaNodeTreeCreator::addExpression(this, v88, 0);
    if (v108[1])
    {
      v108[2] = v108[1];
      operator delete(v108[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_33;
  }

  v15 = [TSCEViewTractRefFormulaNode alloc];
  v19 = TSCEASTViewTractRefElement::viewTractRef(a2, this, v16, v17, v18);
  LOBYTE(__p[0]) = TSCEASTElement::refFlags(a2, this);
  LOBYTE(v97[0]) = TSCEASTViewTractRefElement::colonTractFlags(a2, this, v20, v21, v22);
  v24 = objc_msgSend_initWithViewTractRef_refFlags_colonTractFlags_(v15, v23, v19, __p, v97);

  v28 = objc_msgSend_partialResultForOffset_(*(this + 25), v25, *(a2 + 2), v26, v27);
  objc_msgSend_setPartialResult_(v24, v29, v28, v30, v31);

  TSCEFormulaNodeTreeCreator::addExpression(this, v24, 0);
  return a2;
}

void sub_2210C7C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_22109DBB8(&a21);

  _Unwind_Resume(a1);
}

TSCEASTLinkedRefElement *TSCEFormulaNodeTreeCreator::linkedRefNode(TSCEFormulaNodeTreeCreator *this, TSCEASTLinkedRefElement *a2)
{
  v4 = (*(*a2 + 136))(a2, this);
  v6 = v5;
  v7 = TSCEASTElement::tag(a2, this);
  v8 = [TSCELinkedRefFormulaNode alloc];
  v10 = objc_msgSend_initWithLinkTable_linkTag_(v8, v9, v4, v6, v7);
  TSCEFormulaNodeTreeCreator::addExpression(this, v10, 0);

  return a2;
}

TSCEASTCategoryRefElement *TSCEFormulaNodeTreeCreator::categoryRefNode(TSCEFormulaNodeTreeCreator *this, TSCEASTCategoryRefElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTCategoryRefElement::categoryRef(a2, this, a3, a4, a5);
  v12 = v7;
  if (*(this + 304))
  {
    if ((objc_msgSend_preserveFlags(v7, v8, v9, v10, v11) & 2) == 0)
    {
      v29 = objc_msgSend_groupByUid(v12, v25, v26, v27, v28);
      v31 = v30;
      v32 = sub_221089E8C(this);
      v34 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v33, v29, v31, v32);

      if (v34)
      {
        v39 = objc_msgSend_tableInfo(v34, v35, v36, v37, v38);
        v44 = objc_msgSend_tableUID(v39, v40, v41, v42, v43);
        v46 = v45;
        v47 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
        if (v44 == v47->var0.var0._tableUID._lower)
        {
          upper = v47->var0.var0._tableUID._upper;

          if (v46 == upper)
          {
            v49 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
            lower = v49->var0.var0._tableUID._lower;
            v51 = v49->var0.var0._tableUID._upper;
            v52 = sub_221089E8C(this);
            v54 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v53, lower, v51, v52);

            v59 = objc_msgSend_translator(v54, v55, v56, v57, v58);
            v60 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
            *&v79 = objc_msgSend_rowUIDForBaseRowIndex_(v59, v61, v60->var0.var0.coordinate.row, v62, v63);
            *(&v79 + 1) = v64;

            tableUID = TSCEFormulaRewriteContext::containingCell(*(this + 1))->var0.var0._tableUID;
            v66 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(v34, v65, v12, &v79, &tableUID);

            v12 = v66;
          }
        }

        else
        {
        }
      }
    }

    v67 = [TSCECombinedReferenceFormulaNode alloc];
    v68 = TSCEFormulaRewriteContext::containingCell(*(this + 1));
    v79 = *&v68->var0.var0.coordinate.row;
    v80 = v68->var0.var0._tableUID._upper;
    v17 = objc_msgSend_initWithCategoryRef_hostCellRef_(v67, v69, v12, &v79, v70);
    v74 = objc_msgSend_partialResultForOffset_(*(this + 25), v71, *(a2 + 2), v72, v73);
    objc_msgSend_setPartialResult_(v17, v75, v74, v76, v77);

    TSCEFormulaNodeTreeCreator::addExpression(this, v17, 0);
  }

  else
  {
    v13 = [TSCECategoryRefFormulaNode alloc];
    v17 = objc_msgSend_initWithCategoryRef_(v13, v14, v12, v15, v16);
    v21 = objc_msgSend_partialResultForOffset_(*(this + 25), v18, *(a2 + 2), v19, v20);
    objc_msgSend_setPartialResult_(v17, v22, v21, v23, v24);

    TSCEFormulaNodeTreeCreator::addExpression(this, v17, 0);
  }

  return a2;
}

uint64_t sub_2210C8108(uint64_t a1, TSCEASTNodeArray *a2, void *a3, TSCEFormulaRewriteContext *a4, TSCESymbolTable *a5, int a6)
{
  v11 = a3;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a4, a5);
  *a1 = &unk_2834A1908;
  v12 = v11;
  *(a1 + 200) = v12;
  *(a1 + 208) = 0;
  *(a1 + 216) = objc_opt_new();
  *(a1 + 224) = objc_opt_new();
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 304) = a6;
  *(a1 + 96) = 1;

  return a1;
}

void sub_2210C81D4(_Unwind_Exception *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(v1);

  _Unwind_Resume(a1);
}

id *sub_2210C8214(id *a1)
{
  v3 = a1 + 12;
  sub_2210C8268(&v3);
  sub_221087B80((a1 + 7));
  sub_2210C82EC((a1 + 2));

  return a1;
}

void sub_2210C8268(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_2210C82EC(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2210C82EC(uint64_t a1)
{
  sub_2210C8328(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2210C8328(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2210C836C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_2210C8FF8(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A1A70;
  *(a1 + 200) = v7;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 1065353216;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 1065353216;
  return a1;
}

TSCEASTCategoryRefElement *sub_2210C90A4(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = this;
  v7 = TSCEASTCategoryRefElement::mutableCategoryRef(this, a1, a3, a4, a5);
  if (objc_msgSend_isValid(v7, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_regionMovedInfo(*(a1 + 25), v12, v13, v14, v15);
    v21 = objc_msgSend_originalSrcTableUID(v16, v17, v18, v19, v20);
    if (v21 | v22)
    {
      v26 = objc_msgSend_originalSrcTableUID(v16, v22, v23, v24, v25);
      v28 = v27;
      if (v26 != objc_msgSend_srcTableUID(v16, v27, v29, v30, v31) || v28 != v32)
      {
        v67 = sub_221089E8C(a1);
        *&v190.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1._tableUID;
        v37 = objc_msgSend_tableOrLinkedResolverForTableUID_(v67, v68, &v190, v69, v70);

        if (v37)
        {
          v75 = objc_msgSend_groupByUUID(v37, v71, v72, v73, v74);
          v77 = v76;
          if (v75 == objc_msgSend_groupByUid(v7, v76, v78, v79, v80) && v77 == v81 && (objc_msgSend_preserveFlags(v7, v81, v82, v83, v84) & 2) != 0)
          {
            v89 = objc_msgSend_tableTranslator(v37, v85, v86, v87, v88);
            if (v89)
            {
              v90 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
              v190.coordinate = objc_msgSend_rowUIDForBaseRowIndex_(v89, v91, v90->var0.var1.coordinate.row, v92, v93);
              v190._tableUID._lower = v94;
              if (*&v190.coordinate | v94)
              {
                v98 = objc_msgSend_dstTableUID(v16, v94, v95, v96, v97);
                v100 = v99;
                v101 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
                if (v98 == v101->var0.var1._tableUID._lower && v100 == v101->var0.var1._tableUID._upper)
                {
                  v108 = objc_msgSend_absoluteGroupUid(v7, v102, v103, v104, v105);
                  v110 = v109;
                  v111 = 0;
                  v112 = 0;
                  tableUID._lower = v108;
                  tableUID._upper = v110;
                  __p = 0;
                  v186 = 0;
                  if (!(v108 | v110) || (v112 = objc_msgSend_convertToRelativeAncestorUid_rowUid_(v37, 0, &tableUID, &v190, v107), __p = v112, v186 = v111, v112 != tableUID._lower) || v111 != tableUID._upper)
                  {
                    if (v112 | v111)
                    {
                      objc_msgSend_setAsRelativeWithGroupUid_(v7, v111, &__p, v106, v107);
                      TSCEASTCategoryRefElement::setCategoryRef(v5, v7, a1);
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_77;
      }
    }

    v33 = sub_221089E8C(a1);
    *&v190.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
    v37 = objc_msgSend_tableOrLinkedResolverForTableUID_(v33, v34, &v190, v35, v36);

    if (!v37 || (v42 = objc_msgSend_groupByUUID(v37, v38, v39, v40, v41), v44 = v43, v42 != objc_msgSend_groupByUid(v7, v43, v45, v46, v47)) || v44 != v48)
    {
LABEL_34:
      v113 = *(a1 + 25);
      v116 = sub_221089E8C(a1);
      if (v113)
      {
        objc_msgSend_flattenedCellRefForCategoryRef_calcEngine_(v113, v114, v7, v116, v115);
      }

      else
      {
        memset(&v190, 0, sizeof(v190));
      }

      if (v190.coordinate.row == 0x7FFFFFFF || (*&v190.coordinate & 0xFFFF00000000) == 0x7FFF00000000 || *&v190._tableUID == 0)
      {
        if (objc_msgSend_isValid(v7, v117, v118, v119, v120))
        {
          v126 = objc_msgSend_absoluteGroupUid(v7, v122, v123, v124, v125);
          if (v126 | v127)
          {
            v128 = sub_221089E8C(a1);
            v132 = v128;
            if (v128)
            {
              objc_msgSend_categoryRefsForSpanningCategoryRef_(v128, v129, v7, v130, v131);
            }

            else
            {
              tableUID._lower = 0;
              tableUID._upper = 0;
              v189 = 0;
            }

            __p = 0;
            v186 = 0;
            v187 = 0;
            lower = tableUID._lower;
            upper = tableUID._upper;
            if (tableUID._lower == tableUID._upper)
            {
              v150 = 0;
              v151 = 0;
              v152 = tableUID._lower;
            }

            else
            {
              do
              {
                v135 = *lower;
                v136 = *(a1 + 25);
                v139 = sub_221089E8C(a1);
                if (v136)
                {
                  objc_msgSend_flattenedCellRefForCategoryRef_calcEngine_(v136, v137, v135, v139, v138);
                }

                else
                {
                  memset(v184, 0, sizeof(v184));
                }

                if (*v184 != 0x7FFFFFFF && (*v184 & 0xFFFF00000000) != 0x7FFF00000000 && *&v184[8] != 0)
                {
                  v140 = v186;
                  if (v186 >= v187)
                  {
                    v143 = 0xAAAAAAAAAAAAAAABLL * ((v186 - __p) >> 3);
                    v144 = v143 + 1;
                    if (v143 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      sub_22107C148();
                    }

                    if (0x5555555555555556 * ((v187 - __p) >> 3) > v144)
                    {
                      v144 = 0x5555555555555556 * ((v187 - __p) >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v187 - __p) >> 3) >= 0x555555555555555)
                    {
                      v145 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v145 = v144;
                    }

                    if (v145)
                    {
                      sub_2210CDBC0(&__p, v145);
                    }

                    v146 = 8 * ((v186 - __p) >> 3);
                    v147 = *v184;
                    *(v146 + 16) = *&v184[16];
                    *v146 = v147;
                    v142 = 24 * v143 + 24;
                    v148 = (24 * v143 - (v186 - __p));
                    memcpy((v146 - (v186 - __p)), __p, v186 - __p);
                    v149 = __p;
                    __p = v148;
                    v186 = v142;
                    v187 = 0;
                    if (v149)
                    {
                      operator delete(v149);
                    }
                  }

                  else
                  {
                    v141 = *v184;
                    *(v186 + 2) = *&v184[16];
                    *v140 = v141;
                    v142 = (v140 + 24);
                  }

                  v186 = v142;
                }

                ++lower;
              }

              while (lower != upper);
              v150 = __p;
              v151 = v186;
              lower = tableUID._lower;
              v152 = tableUID._upper;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v151 - v150) >> 3) == (v152 - lower) >> 3)
            {
              v153 = [TSCECellTractRef alloc];
              v157 = objc_msgSend_initWithCellRefVector_(v153, v154, &__p, v155, v156);
              v162 = v157;
              if (v157 && objc_msgSend_isValid(v157, v158, v159, v160, v161))
              {
                v167 = objc_msgSend_preserveFlags(v7, v163, v164, v165, v166);
                v172 = objc_msgSend_preserveFlags(v7, v168, v169, v170, v171);
                objc_msgSend_setPreserveFlags_(v162, v173, v167 & 3 | (4 * (v172 & 3u)), v174, v175);
                objc_msgSend_setPreserveRectangular_(v162, v176, 0, v177, v178);
                v179 = [TSCERelativeTractRef alloc];
                *v184 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
                v182 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v179, v180, v162, v184, v181);
                *v184 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1._tableUID;
                TSCEASTIteratorBase::createColonTractRef(a1, v182, 0, v184);
              }

              v150 = __p;
            }

            if (v150)
            {
              v186 = v150;
              operator delete(v150);
            }

            __p = &tableUID;
            sub_22107C2C0(&__p);
          }
        }
      }

      else
      {
        v184[0] = objc_msgSend_preserveFlags(v7, v117, v118, v119, v120);
        tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1._tableUID;
        __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
        v121 = TSCEASTIteratorBase::createReference(a1, &v190, v184, &tableUID, &__p, 0);
        (*(*a1 + 24))(a1, v5);
        v5 = v121;
      }

LABEL_77:

      goto LABEL_78;
    }

    v52 = objc_msgSend_tableTranslator(v37, v48, v49, v50, v51);
    if (!v52 || (v190.coordinate = 0, v190._tableUID._lower = 0, v53 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1)), v190.coordinate = objc_msgSend_rowUIDForBaseRowIndex_(v52, v54, v53->var0.var0.coordinate.row, v55, v56), v190._tableUID._lower = v57, !(*&v190.coordinate | v57)))
    {
LABEL_33:

      goto LABEL_34;
    }

    tableUID._lower = 0;
    tableUID._upper = 0;
    __p = objc_msgSend_relativeGroupUid(v7, v57, v58, v59, v60);
    v186 = v61;
    if (__p | v61)
    {
      v65 = objc_msgSend_resolveRelativeAncestorUid_sourceRowUID_(v37, v61, &__p, &v190, v64);
      tableUID._lower = v65;
      tableUID._upper = v66;
      if (v65 == __p && v66 == v186)
      {
        tableUID._lower = 0;
        tableUID._upper = 0;
LABEL_30:
        v65 = objc_msgSend_absoluteGroupUid(v7, v66, v62, v63, v64);
        tableUID._lower = v65;
        tableUID._upper = v66;
LABEL_31:
        if (v65 | v66)
        {
          objc_msgSend_setAsAbsoluteWithGroupUid_(v7, v66, &tableUID, v63, v64);
          TSCEASTCategoryRefElement::setCategoryRef(v5, v7, a1);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v65 = tableUID._lower;
      v66 = tableUID._upper;
    }

    if (v65 | v66)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_78:

  return v5;
}

uint64_t sub_2210C9944(void *a1, uint64_t a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  v5 = *a1;
  if (v4)
  {
    v6 = *(v5 + 328);
    v7 = a1;
    v8 = a2;
  }

  else
  {
    v6 = *(v5 + 320);
    v7 = a1;
    v8 = a2;
  }

  return v6(v7, v8);
}

TSCEASTRelativeCoordRefElement *sub_2210C99F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4, a5);
  v270 = v7;
  v8 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v8->var0.var0._tableUID._lower;
  upper = v8->var0.var0._tableUID._upper;
  v17 = lower == objc_msgSend_srcTableUID(v7, v11, v12, v13, v14) && upper == v15;
  v18 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v19 = v18->var0.var0._tableUID._lower;
  v20 = v18->var0.var0._tableUID._upper;
  v27 = v19 == objc_msgSend_originalSrcTableUID(v7, v21, v22, v23, v24) && v20 == v25;
  v28 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v29 = v28->var0.var0._tableUID._lower;
  v30 = v28->var0.var0._tableUID._upper;
  v40 = v29 == objc_msgSend_dstTableUID(v7, v31, v32, v33, v34) && v30 == v35;
  if (v17 || v27 || v40)
  {
    if (v17)
    {
      v41 = objc_msgSend_srcColumnUids(v7, v35, v36, v37, v38);
      v42 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (objc_msgSend_containsIndex_(v41, v43, v42->var0.var0.coordinate.column, v44, v45))
      {
        v50 = objc_msgSend_srcRowUids(v7, v46, v47, v48, v49);
        v51 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v55 = objc_msgSend_containsIndex_(v50, v52, v51->var0.var0.coordinate.row, v53, v54);

        if (v55)
        {
          v56 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
          v57 = sub_2212C7330(v56);
          v58 = 0;
LABEL_27:
          v59 = TSCEASTRelativeCoordRefElement::relativeCoord(v5, a1, v36, v37, v38);
          v262 = v58;
          v280._flags = TSCEASTRelativeCoordRefElement::preserveFlags(v5, a1);
          flags = v280._flags;
          coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
          tableUID = 0;
          tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
          v61 = sub_221089E8C(a1);
          v65 = objc_msgSend_tableOrLinkedResolverForTableUID_(v61, v62, &tableUID, v63, v64);

          v265 = v65;
          if (v65 && (objc_msgSend_tableTranslator(v65, v66, v67, v68, v69), (v70 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v269 = v70;
            coordinate = objc_msgSend_chromeCellCoordForBaseCellCoord_(v70, v71, coordinate, v68, v69);
          }

          else
          {
            v269 = 0;
          }

          v72 = coordinate;
          v76 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v72, v59, &v280, v68, v69);
          if (v269)
          {
            v76 = objc_msgSend_baseCellCoordForChromeCellCoord_(v269, v73, v76, v74, v75);
          }

          v268 = TSCEASTRelativeCoordRefElement::spansAllColumns(v5, a1);
          v77 = TSCEASTRelativeCoordRefElement::spansAllRows(v5, a1);
          v267 = v268 || v77;
          v266 = !v268 && !v77;
          v264 = v77;
          if (v17)
          {
            if (!v268 && !v77 || v77)
            {
              if (WORD2(v76) == 0x7FFF || (objc_msgSend_srcColumnUids(v270, v78, v79, v80, v81), v82 = objc_claimAutoreleasedReturnValue(), v86 = objc_msgSend_containsIndex_(v82, v83, WORD2(v76), v84, v85), v82, (v86 & 1) != 0))
              {
LABEL_41:
                if (((v268 | v266) & 1) == 0)
                {
                  if (v264)
                  {
                    v87 = objc_msgSend_spanningColumns(v270, v78, v79, v80, v81);
                    goto LABEL_47;
                  }

LABEL_46:
                  v87 = 1;
LABEL_47:
                  if ((!v27 | v267))
                  {
                    v92 = !v27 & v266;
                  }

                  else
                  {
                    v93 = objc_msgSend_originalSrcColumnUids(v270, v78, v79, v80, v81);
                    if (objc_msgSend_containsIndex_(v93, v94, WORD2(v76), v95, v96))
                    {
                      v101 = objc_msgSend_originalSrcRowUids(v270, v97, v98, v99, v100);
                      v105 = objc_msgSend_containsIndex_(v101, v102, v76, v103, v104);

                      v92 = v105 ^ 1;
                    }

                    else
                    {

                      v92 = 1;
                    }
                  }

                  v106 = 0;
                  if (v87 & 1 | ((v92 & 1) == 0))
                  {
                    v108 = v265;
                  }

                  else
                  {
                    v107 = !v40;
                    v108 = v265;
                    if (!v107)
                    {
                      v109 = objc_msgSend_dstColumnUids(v270, v78, v79, v80, v81);
                      if (objc_msgSend_containsIndex_(v109, v110, WORD2(v76), v111, v112))
                      {
                        v117 = objc_msgSend_dstRowUids(v270, v113, v114, v115, v116);
                        v106 = objc_msgSend_containsIndex_(v117, v118, v76, v119, v120);
                      }

                      else
                      {
                        v106 = 0;
                      }
                    }
                  }

                  v277.coordinate = v5;
                  v121 = sub_2210CDC18((a1 + 288), &v277);
                  if (v121)
                  {
                    v277.coordinate = v5;
                    sub_2210CDD04((a1 + 288), &v277);
                  }

                  if (!v57 && (v87 & 1) != 0)
                  {
                    v106 &= v262;
                    v87 &= v262;
                  }

                  v277.coordinate = v5;
                  if (sub_2210CDC18((a1 + 208), &v277))
                  {
                    v277.coordinate = v5;
                    sub_2210CDD04((a1 + 208), &v277);
                    v106 = 0;
                    v87 = 0;
                  }

                  v277.coordinate = v5;
                  if (sub_2210CDC18((a1 + 248), &v277))
                  {
                    v277.coordinate = v5;
                    sub_2210CDD04((a1 + 248), &v277);
                    v106 = 0;
                  }

                  if (((v57 | v87) & 1) == 0 && !v106)
                  {
                    goto LABEL_128;
                  }

                  v278 = 0;
                  v278 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
                  v122 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
                  v123 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
                  v277.coordinate = v122;
                  v277._tableUID = v123->var0.var0._tableUID;
                  v263 = TSCEASTElement::mutableUndoTractList(v5, a1);
                  if (v57)
                  {
                    v128 = *(a1 + 200);
                    if (v128)
                    {
                      objc_msgSend_updatedCellRefForOriginalCellRef_(v128, v124, &v277, v126, v127);
                    }

                    else
                    {
                      memset(&v276, 0, sizeof(v276));
                    }

                    v277 = v276;
                  }

                  if (((v121 == 0) & v106) == 1 && (*(a1 + 98) & 1) == 0)
                  {
                    if (WORD2(v76) == 0x7FFF)
                    {
                      v129 = 0;
                      v130 = 0;
                    }

                    else
                    {
                      v131 = objc_msgSend_dstColumnUids(v270, v124, v125, v126, v127);
                      v130 = objc_msgSend_uidForIndex_(v131, v132, WORD2(v76), v133, v134);
                      v129 = v135;
                    }

                    if (v76 == 0x7FFFFFFF)
                    {
                      v136 = 0;
                      v137 = 0;
                    }

                    else
                    {
                      v138 = objc_msgSend_dstRowUids(v270, v124, v125, v126, v127);
                      v137 = objc_msgSend_uidForIndex_(v138, v139, v76, v140, v141);
                      v136 = v142;
                    }

                    v143 = [TSCEUndoTract alloc];
                    v261 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v143, v144, v130, v129, v137, v136, 2);
                  }

                  else
                  {
                    v261 = 0;
                  }

                  v145 = HIDWORD(v76);
                  if (!v87)
                  {
                    goto LABEL_100;
                  }

                  if (!(v267 & 1 | ((objc_msgSend_isInverse(*(a1 + 200), v124, v125, v126, v127) & 1) == 0)))
                  {
                    v150 = objc_msgSend_preMoveRegionUidTract(v263, v146, v147, v148, v149);
                    v155 = v150;
                    if (v150)
                    {
                      v156 = objc_msgSend_rowUids(v150, v151, v152, v153, v154);
                      if (v156[1] - *v156 == 16)
                      {
                        v161 = objc_msgSend_columnUids(v155, v157, v158, v159, v160);
                        if (v161[1] - *v161 == 16)
                        {
                          if (WORD2(v76) == 0x7FFF)
                          {
                            v166 = 0;
                            v258 = 0;
                          }

                          else
                          {
                            v167 = objc_msgSend_srcColumnUids(v270, v162, v163, v164, v165);
                            v171 = objc_msgSend_uidForIndex_(v167, v168, WORD2(v76), v169, v170);
                            v258 = v172;
                            v166 = v171;
                          }

                          if (v76 == 0x7FFFFFFF)
                          {
                            v173 = 0;
                            v174 = 0;
                          }

                          else
                          {
                            v175 = objc_msgSend_srcRowUids(v270, v162, v163, v164, v165);
                            v173 = objc_msgSend_uidForIndex_(v175, v176, v76, v177, v178);
                            v174 = v179;
                          }

                          v184 = *(objc_msgSend_columnUids(v155, v162, v163, v164, v165, v258) + 8);
                          if (*(v184 - 16) == v166 && *(v184 - 8) == v259)
                          {
                            v185 = *(objc_msgSend_rowUids(v155, v180, v181, v182, v183) + 8);
                            if (*(v185 - 16) == v173 && *(v185 - 8) == v174)
                            {

                              objc_msgSend_dropTract_(v263, v186, v155, v187, v188);
                              v261 = 0;
LABEL_100:
                              v189 = 1;
LABEL_109:
                              if (v145 == 0x7FFF && ((v266 | v264) & 1) != 0 || v76 == 0x7FFFFFFF && ((v268 | v266) & 1) != 0)
                              {
                                TSCEASTIteratorBase::createReferenceError(a1, v124, v125, v126, v127);
                              }

                              v276.coordinate.row = v76;
                              *&v276.coordinate.column = v145;
                              v276._tableUID = v278;
                              v223 = v277.coordinate;
                              v274 = v277.coordinate;
                              v224 = sub_221089E8C(a1);
                              v272 = v277._tableUID;
                              v228 = objc_msgSend_tableOrLinkedResolverForTableUID_(v224, v225, &v272, v226, v227);

                              if (v228)
                              {
                                v233 = objc_msgSend_tableTranslator(v228, v229, v230, v231, v232);
                                v237 = v233;
                                if (v233)
                                {
                                  v274 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v233, v234, v223, v235, v236);
                                }
                              }

                              v238 = sub_221089E8C(a1);
                              v242 = objc_msgSend_tableOrLinkedResolverForTableUID_(v238, v239, &v278, v240, v241);

                              if (v242 && objc_msgSend_isCategorized(v242, v243, v244, v245, v246))
                              {
                                v247 = objc_msgSend_tableTranslator(v242, v243, v244, v245, v246);
                                v251 = v247;
                                if (v247)
                                {
                                  v271 = v276;
                                  objc_msgSend_chromeCellRefForBaseCellRef_(v247, v248, &v271, v249, v250);
                                  *&v276.coordinate.row = v272;
                                  v276._tableUID._upper = v273;
                                }
                              }

                              v280._flags = flags & 3;
                              if (((v189 | v267) & 1) == 0)
                              {
                                v252 = objc_msgSend_dstUidForSrcUid(v270, v243, v244, v245, v246);
                                objc_msgSend_remapUsingUidMap_(v263, v253, v252, v254, v255);
                              }

                              if (v261)
                              {
                                objc_msgSend_appendUidTract_(v263, v243, v261, v245, v246);
                              }

                              v272 = v277._tableUID;
                              v256 = TSCEASTIteratorBase::createReference(a1, &v276, &v280, &v272, &v274, v263);
                              (*(*a1 + 24))(a1, v5);

                              v5 = v256;
LABEL_128:

                              goto LABEL_129;
                            }
                          }
                        }
                      }
                    }
                  }

                  v276.coordinate = 0;
                  v276._tableUID._lower = 0;
                  if (WORD2(v76) == 0x7FFF)
                  {
                    v276.coordinate = 0;
                    v276._tableUID._lower = 0;
                  }

                  else
                  {
                    v190 = objc_msgSend_srcColumnUids(v270, v146, v147, v148, v149);
                    v276.coordinate = objc_msgSend_uidForIndex_(v190, v191, WORD2(v76), v192, v193);
                    v276._tableUID._lower = v194;
                  }

                  v272._lower = 0;
                  v272._upper = 0;
                  if (v76 == 0x7FFFFFFF)
                  {
                    v272._lower = 0;
                    v272._upper = 0;
                  }

                  else
                  {
                    v195 = objc_msgSend_srcRowUids(v270, v146, v147, v148, v149);
                    v272._lower = objc_msgSend_uidForIndex_(v195, v196, v76, v197, v198);
                    v272._upper = v199;
                  }

                  v271.coordinate = objc_msgSend_dstUidForSrcUid_(v270, v146, &v276, v148, v149);
                  v271._tableUID._lower = v200;
                  v274 = 0;
                  v275 = 0;
                  v274 = objc_msgSend_dstUidForSrcUid_(v270, v200, &v272, v201, v202);
                  v275 = v203;
                  v278._lower = objc_msgSend_dstTableUID(v270, v203, v204, v205, v206);
                  v278._upper = v207;
                  v211 = objc_msgSend_dstColumnUids(v270, v207, v208, v209, v210);
                  LOWORD(v145) = objc_msgSend_columnIndexForUid_(v211, v212, &v271, v213, v214);

                  v219 = objc_msgSend_dstRowUids(v270, v215, v216, v217, v218);
                  LODWORD(v76) = objc_msgSend_rowIndexForUid_(v219, v220, &v274, v221, v222);

                  v189 = 0;
                  goto LABEL_109;
                }

LABEL_42:
                if (v76 != 0x7FFFFFFF)
                {
                  v88 = objc_msgSend_srcRowUids(v270, v78, v79, v80, v81);
                  v87 = objc_msgSend_containsIndex_(v88, v89, v76, v90, v91);

                  goto LABEL_47;
                }

                goto LABEL_46;
              }
            }

            else
            {
              if (!v268)
              {
                goto LABEL_41;
              }

              if (objc_msgSend_spanningRows(v270, v78, v79, v80, v81))
              {
                goto LABEL_42;
              }
            }
          }

          v87 = 0;
          goto LABEL_47;
        }
      }

      else
      {
      }
    }

    v57 = 0;
    v58 = 1;
    goto LABEL_27;
  }

LABEL_129:

  return v5;
}

TSCEASTRelativeCoordRefElement *sub_2210CA600(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v4, v5, v6);
  }

  else
  {
    v10 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v10->var0.var0._tableUID._lower;
    upper = v10->var0.var0._tableUID._upper;
  }

  v382._lower = lower;
  v382._upper = upper;
  v13 = objc_msgSend_regionMovedInfo(*(a1 + 200), upper, v7, v8, v9);
  v14 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v15 = v14->var0.var0._tableUID._lower;
  v16 = v14->var0.var0._tableUID._upper;
  if (v15 == objc_msgSend_srcTableUID(v13, v17, v18, v19, v20) && v16 == v21)
  {
    v31 = 1;
  }

  else
  {
    v23 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v24 = v23->var0.var0._tableUID._lower;
    v25 = v23->var0.var0._tableUID._upper;
    v31 = v24 == objc_msgSend_srcCondStyleOwnerUID(v13, v26, v27, v28, v29) && v25 == v30;
  }

  v32 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v33 = v32->var0.var0._tableUID._lower;
  v34 = v32->var0.var0._tableUID._upper;
  if (v33 == objc_msgSend_originalSrcTableUID(v13, v35, v36, v37, v38) && v34 == v39)
  {
    v51 = 1;
  }

  else
  {
    v44 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v45 = v44->var0.var0._tableUID._lower;
    v46 = v44->var0.var0._tableUID._upper;
    v51 = v45 == objc_msgSend_originalSrcCondStyleOwnerUID(v13, v47, v48, v49, v50) && v46 == v39;
  }

  v57 = v382._lower == objc_msgSend_srcTableUID(v13, v39, v40, v41, v42) && v382._upper == v52;
  v63 = v382._lower == objc_msgSend_dstTableUID(v13, v52, v53, v54, v55) && v382._upper == v58;
  if (v31 || v51 || v57 || v63)
  {
    if (v31)
    {
      v64 = objc_msgSend_srcColumnUids(v13, v58, v59, v60, v61);
      v65 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (objc_msgSend_containsIndex_(v64, v66, v65->var0.var0.coordinate.column, v67, v68))
      {
        v73 = objc_msgSend_srcRowUids(v13, v69, v70, v71, v72);
        v74 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v78 = objc_msgSend_containsIndex_(v73, v75, v74->var0.var0.coordinate.row, v76, v77);
      }

      else
      {
        v78 = 0;
      }

      if (!v51)
      {
LABEL_42:
        v93 = 0;
        if (v78)
        {
LABEL_43:
          v94 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
          v95 = sub_2212C7330(v94);
          goto LABEL_47;
        }

LABEL_46:
        v95 = 0;
LABEL_47:
        v96 = TSCEASTRelativeCoordRefElement::relativeCoord(v2, a1, v59, v60, v61);
        v359 = v95;
        v97 = v93;
        v354 = TSCEASTRelativeCoordRefElement::preserveFlags(v2, a1);
        v381._flags = v354;
        v356 = v78;
        coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        v99 = sub_221089E8C(a1);
        *&v379.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v103 = objc_msgSend_tableOrLinkedResolverForTableUID_(v99, v100, &v379, v101, v102);

        v362 = v103;
        if (v103)
        {
          v108 = objc_msgSend_tableTranslator(v103, v104, v105, v106, v107);
          v112 = v108;
          if (v108)
          {
            coordinate = objc_msgSend_chromeCellCoordForBaseCellCoord_(v108, v109, coordinate, v110, v111);
          }
        }

        v113 = coordinate;
        v367 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v113, v96, &v381, v106, v107);
        v114 = sub_221089E8C(a1);
        v118 = objc_msgSend_tableOrLinkedResolverForTableUID_(v114, v115, &v382, v116, v117);
        v366 = HIDWORD(v367);

        v361 = v118;
        if (v118)
        {
          v123 = objc_msgSend_tableTranslator(v118, v119, v120, v121, v122);
          v127 = v123;
          if (v123)
          {
            v128 = objc_msgSend_baseCellCoordForChromeCellCoord_(v123, v124, v367, v125, v126);
            v366 = HIDWORD(v128);
            v367 = v128;
          }
        }

        v363 = TSCEASTRelativeCoordRefElement::spansAllColumns(v2, a1);
        v129 = TSCEASTRelativeCoordRefElement::spansAllRows(v2, a1);
        v365 = v363 || v129;
        v364 = !v363 && !v129;
        v358 = v129;
        if (v57)
        {
          if (!v363 && !v129 || v129)
          {
            if (v366 == 0x7FFF || (objc_msgSend_srcColumnUids(v13, v130, v131, v132, v133), v134 = objc_claimAutoreleasedReturnValue(), v138 = objc_msgSend_containsIndex_(v134, v135, v366, v136, v137), v134, (v138 & 1) != 0))
            {
LABEL_63:
              if (((v363 | v364) & 1) == 0)
              {
                if (v358)
                {
                  v139 = objc_msgSend_spanningColumns(v13, v130, v131, v132, v133);
                  goto LABEL_69;
                }

LABEL_68:
                v139 = 1;
LABEL_69:
                v144 = objc_msgSend_originalSrcTableUID(v13, v130, v131, v132, v133);
                v149 = 0;
                v151 = v382._lower == v144 && v382._upper == v145;
                if ((v139 | v365 | v151 & v97 & v364))
                {
                  v152 = v359;
                }

                else
                {
                  v152 = v359;
                  if (v63)
                  {
                    v153 = objc_msgSend_dstColumnUids(v13, v145, v146, v147, v148);
                    if (objc_msgSend_containsIndex_(v153, v154, v366, v155, v156))
                    {
                      v161 = objc_msgSend_dstRowUids(v13, v157, v158, v159, v160);
                      v149 = objc_msgSend_containsIndex_(v161, v162, v367, v163, v164);
                    }

                    else
                    {
                      v149 = 0;
                    }
                  }
                }

                v379.coordinate = v2;
                v165 = sub_2210CDC18((a1 + 288), &v379);
                if (v165)
                {
                  v379.coordinate = v2;
                  sub_2210CDD04((a1 + 288), &v379);
                }

                if (!v152 && (v139 & 1) != 0)
                {
                  v139 &= v356 ^ 1;
                  v149 &= v356 ^ 1;
                }

                v379.coordinate = v2;
                if (sub_2210CDC18((a1 + 208), &v379))
                {
                  v379.coordinate = v2;
                  sub_2210CDD04((a1 + 208), &v379);
                  v139 = 0;
                  v149 = 0;
                }

                v379.coordinate = v2;
                if (sub_2210CDC18((a1 + 248), &v379))
                {
                  v379.coordinate = v2;
                  sub_2210CDD04((a1 + 248), &v379);
                  v149 = 0;
                }

                if (v365 & 1 | ((*(a1 + 100) & 1) == 0) || !v57)
                {
                  v181 = v2;
                  v170 = v361;
                  if (v152)
                  {
                    goto LABEL_102;
                  }
                }

                else
                {
                  v170 = v361;
                  if (((v139 ^ 1) & 1) == 0)
                  {
                    v171 = objc_msgSend_srcTableUID(v13, v166, v167, v168, v169);
                    v173 = v172;
                    if (v171 != objc_msgSend_dstTableUID(v13, v172, v174, v175, v176) || v173 != v177)
                    {
                      TSCEASTIteratorBase::createReferenceError(a1, v177, v178, v179, v180);
                    }
                  }

                  v181 = v2;
                  if (v152)
                  {
                    goto LABEL_102;
                  }
                }

                if ((v139 & 1) == 0 && !v149)
                {
LABEL_175:

                  goto LABEL_176;
                }

LABEL_102:
                v360 = v181;
                v380 = v382;
                v182 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
                v183 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
                v379.coordinate = v182;
                v379._tableUID = v183->var0.var0._tableUID;
                v357 = TSCEASTElement::mutableUndoTractList(v360, a1);
                if (v152)
                {
                  v188 = *(a1 + 200);
                  if (v188)
                  {
                    objc_msgSend_updatedCellRefForOriginalCellRef_(v188, v184, &v379, v186, v187);
                  }

                  else
                  {
                    memset(&v378, 0, sizeof(v378));
                  }

                  v379 = v378;
                }

                if (((v165 == 0) & v149) == 1 && (*(a1 + 98) & 1) == 0)
                {
                  if (v366 == 0x7FFF)
                  {
                    v189 = 0;
                    v190 = 0;
                  }

                  else
                  {
                    v191 = objc_msgSend_dstColumnUids(v13, v184, v185, v186, v187);
                    v190 = objc_msgSend_uidForIndex_(v191, v192, v366, v193, v194);
                    v189 = v195;
                  }

                  if (v367 == 0x7FFFFFFF)
                  {
                    v196 = 0;
                    v197 = 0;
                  }

                  else
                  {
                    v198 = objc_msgSend_dstRowUids(v13, v184, v185, v186, v187);
                    v197 = objc_msgSend_uidForIndex_(v198, v199, v367, v200, v201);
                    v196 = v202;
                  }

                  v203 = [TSCEUndoTract alloc];
                  v355 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v203, v204, v190, v189, v197, v196, 2);
                }

                else
                {
                  v355 = 0;
                }

                if (!v139)
                {
                  goto LABEL_133;
                }

                if (!(v365 & 1 | ((objc_msgSend_isInverse(*(a1 + 200), v184, v185, v186, v187) & 1) == 0)))
                {
                  v209 = objc_msgSend_preMoveRegionUidTract(v357, v205, v206, v207, v208);
                  v214 = v209;
                  if (v209)
                  {
                    v215 = objc_msgSend_rowUids(v209, v210, v211, v212, v213);
                    if (v215[1] - *v215 == 16)
                    {
                      v220 = objc_msgSend_columnUids(v214, v216, v217, v218, v219);
                      if (v220[1] - *v220 == 16)
                      {
                        if (v366 == 0x7FFF)
                        {
                          v225 = 0;
                          v226 = 0;
                        }

                        else
                        {
                          v227 = objc_msgSend_srcColumnUids(v13, v221, v222, v223, v224);
                          v225 = objc_msgSend_uidForIndex_(v227, v228, v366, v229, v230);
                          v226 = v231;
                        }

                        if (v367 == 0x7FFFFFFF)
                        {
                          v232 = 0;
                          v233 = 0;
                        }

                        else
                        {
                          v234 = objc_msgSend_srcRowUids(v13, v221, v222, v223, v224);
                          v232 = objc_msgSend_uidForIndex_(v234, v235, v367, v236, v237);
                          v233 = v238;
                        }

                        v243 = *(objc_msgSend_columnUids(v214, v221, v222, v223, v224) + 8);
                        if (*(v243 - 16) == v225 && *(v243 - 8) == v226)
                        {
                          v244 = *(objc_msgSend_rowUids(v214, v239, v240, v241, v242) + 8);
                          if (*(v244 - 16) == v232 && *(v244 - 8) == v233)
                          {

                            objc_msgSend_dropTract_(v357, v245, v214, v246, v247);
                            v355 = 0;
LABEL_133:
                            v248 = 1;
LABEL_156:
                            if (v366 == 0x7FFF && ((v364 | v358) & 1) != 0 || v367 == 0x7FFFFFFF && ((v363 | v364) & 1) != 0)
                            {
                              TSCEASTIteratorBase::createReferenceError(a1, v184, v185, v186, v187);
                            }

                            v378.coordinate.row = v367;
                            v378.coordinate.column = v366;
                            v378._tableUID = v380;
                            v381._flags = v354 & 3;
                            if (((v248 | v365) & 1) == 0)
                            {
                              v316 = objc_msgSend_dstUidForSrcUid(v13, v184, v185, v186, v187);
                              objc_msgSend_remapUsingUidMap_(v357, v317, v316, v318, v319);
                            }

                            if (v355)
                            {
                              objc_msgSend_appendUidTract_(v357, v184, v355, v186, v187);
                            }

                            v320 = v379.coordinate;
                            v376 = v379.coordinate;
                            v321 = sub_221089E8C(a1);
                            tableUID = v379._tableUID;
                            v325 = objc_msgSend_tableOrLinkedResolverForTableUID_(v321, v322, &tableUID, v323, v324);

                            if (v325)
                            {
                              v330 = objc_msgSend_tableTranslator(v325, v326, v327, v328, v329);
                              v334 = v330;
                              if (v330)
                              {
                                v376 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v330, v331, v320, v332, v333);
                              }
                            }

                            v335 = sub_221089E8C(a1);
                            v339 = objc_msgSend_tableOrLinkedResolverForTableUID_(v335, v336, &v380, v337, v338);

                            if (v339 && objc_msgSend_isCategorized(v339, v340, v341, v342, v343))
                            {
                              v348 = objc_msgSend_tableTranslator(v339, v344, v345, v346, v347);
                              v352 = v348;
                              if (v348)
                              {
                                v368 = v378;
                                objc_msgSend_chromeCellRefForBaseCellRef_(v348, v349, &v368, v350, v351);
                                *&v378.coordinate.row = tableUID;
                                v378._tableUID._upper = v370;
                              }
                            }

                            tableUID = v379._tableUID;
                            v2 = TSCEASTIteratorBase::createReference(a1, &v378, &v381, &tableUID, &v376, v357);
                            (*(*a1 + 24))(a1, v360);

                            v362 = v325;
                            goto LABEL_175;
                          }
                        }
                      }
                    }
                  }
                }

                v378.coordinate = 0;
                v378._tableUID._lower = 0;
                if (v366 == 0x7FFF)
                {
                  v378.coordinate = 0;
                  v378._tableUID._lower = 0;
                }

                else
                {
                  v249 = objc_msgSend_srcColumnUids(v13, v205, v206, v207, v208);
                  v378.coordinate = objc_msgSend_uidForIndex_(v249, v250, v366, v251, v252);
                  v378._tableUID._lower = v253;
                }

                tableUID._lower = 0;
                tableUID._upper = 0;
                if (v367 == 0x7FFFFFFF)
                {
                  tableUID._lower = 0;
                  tableUID._upper = 0;
                }

                else
                {
                  v254 = objc_msgSend_srcRowUids(v13, v205, v206, v207, v208);
                  tableUID._lower = objc_msgSend_uidForIndex_(v254, v255, v367, v256, v257);
                  tableUID._upper = v258;
                }

                v368.coordinate = objc_msgSend_dstUidForSrcUid_(v13, v205, &v378, v207, v208);
                v368._tableUID._lower = v259;
                v376 = 0;
                v377 = 0;
                v376 = objc_msgSend_dstUidForSrcUid_(v13, v259, &tableUID, v260, v261);
                v377 = v262;
                v380._lower = objc_msgSend_dstTableUID(v13, v262, v263, v264, v265);
                v380._upper = v266;
                v270 = objc_msgSend_dstColumnUids(v13, v266, v267, v268, v269);
                LOWORD(v366) = objc_msgSend_columnIndexForUid_(v270, v271, &v368, v272, v273);

                v278 = objc_msgSend_dstRowUids(v13, v274, v275, v276, v277);
                v282 = objc_msgSend_rowIndexForUid_(v278, v279, &v376, v280, v281);

                LODWORD(v367) = v282;
                v284 = v282 != 0x7FFFFFFF || v366 == 0x7FFF;
                if (((v284 | v365) & 1) == 0)
                {
                  v285 = sub_221089E8C(a1);
                  v289 = objc_msgSend_tableResolverForTableUID_(v285, v286, &v380, v287, v288);

                  if (v362 && v289)
                  {
                    v294 = objc_msgSend_coordMapper(v289, v290, v291, v292, v293);
                    if ((objc_msgSend_isIdentityMapping(v294, v295, v296, v297, v298) & 1) == 0)
                    {
                      v374 = 0;
                      v375 = 0;
                      v299 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
                      v374 = objc_msgSend_rowUIDForRowIndex_(v362, v300, v299->var0.var1.coordinate.row, v301, v302);
                      v375 = v303;
                      v373[0] = objc_msgSend_convertToRelativeAncestorUid_rowUid_(v289, v303, &v376, &v374, v304);
                      v373[1] = v305;
                      v308 = objc_msgSend_groupLevelForGroupUid_(v289, v305, &v376, v306, v307);
                      if (v308 != 255)
                      {
                        v372 = v381._flags | 1;
                        v309 = [TSCECategoryRef alloc];
                        v371[0] = objc_msgSend_groupByUUID(v289, v310, v311, v312, v313);
                        v371[1] = v314;
                        v315 = objc_msgSend_initWithGroupByUID_relGroupUID_absGroupUid_columnUid_aggType_groupLevel_aggrIndexLevel_preserveFlags_(v309, v314, v371, v373, &v376, &v368, 11, v308, -1, &v372);
                        TSCEASTIteratorBase::createCategoryRef(a1, v315);
                      }
                    }
                  }
                }

                v248 = 0;
                goto LABEL_156;
              }

LABEL_64:
              if (v367 != 0x7FFFFFFF)
              {
                v140 = objc_msgSend_srcRowUids(v13, v130, v131, v132, v133);
                v139 = objc_msgSend_containsIndex_(v140, v141, v367, v142, v143);

                goto LABEL_69;
              }

              goto LABEL_68;
            }
          }

          else
          {
            if (!v363)
            {
              goto LABEL_63;
            }

            if (objc_msgSend_spanningRows(v13, v130, v131, v132, v133))
            {
              goto LABEL_64;
            }
          }
        }

        v139 = 0;
        goto LABEL_69;
      }
    }

    else
    {
      v78 = 0;
      if (!v51)
      {
        goto LABEL_42;
      }
    }

    v79 = objc_msgSend_originalSrcColumnUids(v13, v58, v59, v60, v61);
    v80 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (objc_msgSend_containsIndex_(v79, v81, v80->var0.var0.coordinate.column, v82, v83))
    {
      v88 = objc_msgSend_originalSrcRowUids(v13, v84, v85, v86, v87);
      v89 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v93 = objc_msgSend_containsIndex_(v88, v90, v89->var0.var0.coordinate.row, v91, v92);
    }

    else
    {
      v93 = 0;
    }

    if (v78)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

LABEL_176:

  return v2;
}

void sub_2210CB5F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v268 = a3;
  *a6 = *a2;
  *(a6 + 16) = *(a2 + 16);
  v277 = *(a2 + 8);
  v15 = objc_msgSend_regionMovedInfo(*(a1 + 200), v11, v12, v13, v14);
  v16 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v16->var0.var0._tableUID._lower;
  upper = v16->var0.var0._tableUID._upper;
  if (lower == objc_msgSend_srcTableUID(v15, v19, v20, v21, v22) && upper == v23)
  {
    v33 = 1;
  }

  else
  {
    v25 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v26 = v25->var0.var0._tableUID._lower;
    v27 = v25->var0.var0._tableUID._upper;
    v33 = v26 == objc_msgSend_srcCondStyleOwnerUID(v15, v28, v29, v30, v31) && v27 == v32;
  }

  v34 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v35 = v34->var0.var0._tableUID._lower;
  v36 = v34->var0.var0._tableUID._upper;
  if (v35 == objc_msgSend_originalSrcTableUID(v15, v37, v38, v39, v40) && v36 == v41)
  {
    v53 = 1;
  }

  else
  {
    v46 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v47 = v46->var0.var0._tableUID._lower;
    v48 = v46->var0.var0._tableUID._upper;
    v53 = v47 == objc_msgSend_originalSrcCondStyleOwnerUID(v15, v49, v50, v51, v52) && v48 == v41;
  }

  v264 = a4;
  v266 = a5;
  v59 = v277 == objc_msgSend_srcTableUID(v15, v41, v42, v43, v44) && *(&v277 + 1) == v54;
  v65 = v277 == objc_msgSend_dstTableUID(v15, v54, v55, v56, v57) && *(&v277 + 1) == v60;
  if (v33 || v53 || v59 || v65)
  {
    if (v33)
    {
      v66 = objc_msgSend_srcColumnUids(v15, v60, v61, v62, v63);
      v67 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (objc_msgSend_containsIndex_(v66, v68, v67->var0.var0.coordinate.column, v69, v70))
      {
        v75 = objc_msgSend_srcRowUids(v15, v71, v72, v73, v74);
        v76 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v261 = objc_msgSend_containsIndex_(v75, v77, v76->var0.var0.coordinate.row, v78, v79);
      }

      else
      {
        v261 = 0;
      }

      if (!v53)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v261 = 0;
      if (!v53)
      {
LABEL_39:
        v94 = 0;
        goto LABEL_42;
      }
    }

    v80 = objc_msgSend_originalSrcColumnUids(v15, v60, v61, v62, v63);
    v81 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (objc_msgSend_containsIndex_(v80, v82, v81->var0.var0.coordinate.column, v83, v84))
    {
      v89 = objc_msgSend_originalSrcRowUids(v15, v85, v86, v87, v88);
      v90 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v94 = objc_msgSend_containsIndex_(v89, v91, v90->var0.var0.coordinate.row, v92, v93);
    }

    else
    {
      v94 = 0;
    }

LABEL_42:
    if (v261)
    {
      v95 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v96 = sub_2212C7330(v95);
    }

    else
    {
      v96 = 0;
    }

    v97 = *a2;
    v98 = sub_221089E8C(a1);
    v102 = objc_msgSend_tableOrLinkedResolverForTableUID_(v98, v99, &v277, v100, v101);
    v269 = HIDWORD(v97);

    v262 = v102;
    if (v102)
    {
      v107 = objc_msgSend_tableTranslator(v102, v103, v104, v105, v106);
      v111 = v107;
      if (v107)
      {
        v112 = objc_msgSend_baseCellCoordForChromeCellCoord_(v107, v108, v97, v109, v110);
        *(a6 + 8) = v277;
        *a6 = v112;
        v97 = v112;
        v269 = HIDWORD(v112);
      }
    }

    v114 = v269 != 0x7FFF && v97 != 0x7FFFFFFF;
    v263 = v114;
    if (!v59)
    {
      goto LABEL_66;
    }

    if (v269 != 0x7FFF || v97 == 0x7FFFFFFF)
    {
      if (v269 == 0x7FFF)
      {
        if (v97 == 0x7FFFFFFF)
        {
          v115 = 1;
          goto LABEL_67;
        }
      }

      else
      {
        v116 = objc_msgSend_srcColumnUids(v15, v103, v104, v105, v106);
        v120 = objc_msgSend_containsIndex_(v116, v117, v269, v118, v119);

        if ((v120 & 1) == 0)
        {
LABEL_66:
          v115 = 0;
          goto LABEL_67;
        }

        if (v97 == 0x7FFFFFFF)
        {
          v115 = objc_msgSend_spanningColumns(v15, v103, v104, v105, v106);
LABEL_67:
          v125 = objc_msgSend_originalSrcTableUID(v15, v103, v104, v105, v106);
          if (v115)
          {
            v130 = 0;
            v131 = v96 | v261 ^ 1;
LABEL_69:
            v132 = v263;
            goto LABEL_84;
          }

          v131 = 0;
          v134 = v277 == v125 && *(&v277 + 1) == v126;
          if (v134 & v94 & v263)
          {
            v130 = 0;
            v132 = v263;
          }

          else
          {
            if (!v263)
            {
              v130 = 0;
              goto LABEL_69;
            }

            v135 = !v65;
            v130 = 0;
            v132 = v263;
            if (!v135)
            {
              v136 = objc_msgSend_dstColumnUids(v15, v126, v127, v128, v129);
              if (objc_msgSend_containsIndex_(v136, v137, v269, v138, v139))
              {
                v144 = objc_msgSend_dstRowUids(v15, v140, v141, v142, v143);
                v130 = objc_msgSend_containsIndex_(v144, v145, v97, v146, v147);
              }

              else
              {
                v130 = 0;
              }

              v131 = 0;
            }
          }

LABEL_84:
          v148 = (v264 ^ 1) & v131;
          v149 = ((v264 | v266) ^ 1) & v130;
          if (*(a1 + 100) & v132 & v59)
          {
            v150 = v262;
            if (v148)
            {
              v151 = objc_msgSend_srcTableUID(v15, v126, v127, v128, v129);
              v153 = v152;
              if (v151 == objc_msgSend_dstTableUID(v15, v152, v154, v155, v156) && v153 == v157)
              {
                v148 = 1;
                goto LABEL_95;
              }

              v96 = 0;
              v148 = 0;
              v149 = 0;
              *(a6 + 8) = 0;
              *(a6 + 16) = 0;
              *a6 = 0x7FFF7FFFFFFFLL;
LABEL_93:
              if ((v148 & 1) == 0 && !v149)
              {
                goto LABEL_137;
              }

LABEL_95:
              v159 = *(&v277 + 1);
              v158 = v277;
              coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
              v161 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
              *v276 = coordinate;
              *&v276[8] = v161->var0.var0._tableUID;
              if (v96)
              {
                v166 = *(a1 + 200);
                if (v166)
                {
                  objc_msgSend_updatedCellRefForOriginalCellRef_(v166, v162, v276, v164, v165);
                }

                else
                {
                  v274 = 0uLL;
                  v275 = 0;
                }

                *v276 = v274;
                *&v276[16] = v275;
              }

              if (!v148)
              {
                v217 = v269;
                v218 = v269;
                v219 = v97;
                goto LABEL_119;
              }

              if ((objc_msgSend_isInverse(*(a1 + 200), v162, v163, v164, v165) & v263) == 1)
              {
                v171 = objc_msgSend_preMoveRegionUidTract(v268, v167, v168, v169, v170);
                v176 = v171;
                if (v171)
                {
                  v177 = objc_msgSend_rowUids(v171, v172, v173, v174, v175);
                  if (v177[1] - *v177 == 16)
                  {
                    v182 = objc_msgSend_columnUids(v176, v178, v179, v180, v181);
                    if (v182[1] - *v182 == 16)
                    {
                      v187 = objc_msgSend_srcColumnUids(v15, v183, v184, v185, v186);
                      v191 = objc_msgSend_uidForIndex_(v187, v188, v269, v189, v190);
                      v193 = v192;

                      v198 = objc_msgSend_srcRowUids(v15, v194, v195, v196, v197);
                      v202 = objc_msgSend_uidForIndex_(v198, v199, v97, v200, v201);
                      v265 = v203;
                      v267 = v202;

                      v212 = *(objc_msgSend_columnUids(v176, v204, v205, v206, v207) + 8);
                      if (*(v212 - 16) == v191 && *(v212 - 8) == v193)
                      {
                        v216 = *(objc_msgSend_rowUids(v176, v208, v209, v210, v211) + 8);
                        if (*(v216 - 16) == v267 && *(v216 - 8) == v265)
                        {
                          objc_msgSend_dropTract_(v268, v213, v176, v214, v215);

                          *a6 = v97 | (v269 << 32);
                          *(a6 + 8) = v158;
                          *(a6 + 16) = v159;
LABEL_136:
                          v150 = v262;
LABEL_137:

                          goto LABEL_138;
                        }
                      }
                    }
                  }
                }

                v274 = 0uLL;
              }

              else
              {
                v274 = 0uLL;
                if (v269 == 0x7FFF)
                {
                  v274 = 0uLL;
LABEL_115:
                  if (v97 == 0x7FFFFFFF)
                  {
                    v272 = 0;
                    v273 = 0;
                  }

                  else
                  {
                    v225 = objc_msgSend_srcRowUids(v15, v167, v168, v169, v170);
                    v272 = objc_msgSend_uidForIndex_(v225, v226, v97, v227, v228);
                    v273 = v229;
                  }

                  v271[0] = objc_msgSend_dstUidForSrcUid_(v15, v167, &v274, v169, v170);
                  v271[1] = v230;
                  v270[0] = objc_msgSend_dstUidForSrcUid_(v15, v230, &v272, v231, v232);
                  v270[1] = v233;
                  v158 = objc_msgSend_dstTableUID(v15, v233, v234, v235, v236);
                  v159 = v237;
                  v241 = objc_msgSend_dstColumnUids(v15, v237, v238, v239, v240);
                  v218 = objc_msgSend_columnIndexForUid_(v241, v242, v271, v243, v244);

                  v249 = objc_msgSend_dstRowUids(v15, v245, v246, v247, v248);
                  v219 = objc_msgSend_rowIndexForUid_(v249, v250, v270, v251, v252);

                  v217 = v269;
LABEL_119:
                  v254 = v217 != 0x7FFF || v97 == 0x7FFFFFFF;
                  if (v218 == 0x7FFF && v254 || (v269 != 0x7FFF ? (v255 = v97 == 0x7FFFFFFF) : (v255 = 0), v255 ? (v256 = 0) : (v256 = 1), v219 == 0x7FFFFFFF && v256))
                  {
                    *(a6 + 8) = 0;
                    *(a6 + 16) = 0;
                    *a6 = 0x7FFF7FFFFFFFLL;
                  }

                  else
                  {
                    *a6 = v219 | (v218 << 32);
                    *(a6 + 8) = v158;
                    *(a6 + 16) = v159;
                    if ((v148 & v263) == 1)
                    {
                      v257 = objc_msgSend_dstUidForSrcUid(v15, v162, v163, v164, v165);
                      objc_msgSend_remapUsingUidMap_(v268, v258, v257, v259, v260);
                    }
                  }

                  goto LABEL_136;
                }
              }

              v220 = objc_msgSend_srcColumnUids(v15, v167, v168, v169, v170);
              *&v274 = objc_msgSend_uidForIndex_(v220, v221, v269, v222, v223);
              *(&v274 + 1) = v224;

              goto LABEL_115;
            }
          }

          else
          {
            v150 = v262;
          }

          if (v96)
          {
            goto LABEL_95;
          }

          goto LABEL_93;
        }
      }
    }

    else if ((objc_msgSend_spanningRows(v15, v103, v104, v105, v106) & 1) == 0)
    {
      goto LABEL_66;
    }

    v121 = objc_msgSend_srcRowUids(v15, v103, v104, v105, v106);
    v115 = objc_msgSend_containsIndex_(v121, v122, v97, v123, v124);

    goto LABEL_67;
  }

LABEL_138:
}

char *sub_2210CBF4C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4, a5);
  v158._flags = 0;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  TSCEASTColonElement::rangeReference(a2, a1, &v158, &coordinate, &v155);
  v154 = v155;
  isValid = TSCERangeCoordinate::isValid(&v154);
  v14 = objc_msgSend_srcTableUID(v8, v10, v11, v12, v13);
  v20 = v156 == v14 && v157 == v15;
  v21 = objc_msgSend_dstTableUID(v8, v15, v16, v17, v18);
  v24 = v156 == v21 && v157 == v22;
  if (!isValid || !v20 && !v24)
  {
    goto LABEL_81;
  }

  v25 = TSCEASTElementWithChildren::child(a2, 0);
  coordinate = (*(*v25 + 40))(v25, a1);
  sub_2210CDD80((a1 + 288), &coordinate);
  v26 = TSCEASTElementWithChildren::child(a2, 1u);
  coordinate = (*(*v26 + 40))(v26, a1);
  sub_2210CDD80((a1 + 288), &coordinate);
  topLeft = v154._topLeft;
  bottomRight = v154._bottomRight;
  if (!v20)
  {
    goto LABEL_49;
  }

  v32 = (*&v154._topLeft & 0xFFFF00000000) != 0x7FFF00000000 || v154._topLeft.row == 0x7FFFFFFFLL;
  v33 = v32;
  if (!v32)
  {
LABEL_27:
    v38 = objc_msgSend_srcRowUids(v8, v27, v28, v29, v30);
    v37 = objc_msgSend_containsIndex_(v38, v39, topLeft, v40, v41);

    if (!v33)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v5 = objc_msgSend_srcColumnUids(v8, v27, v28, v29, v30);
  if (objc_msgSend_containsIndex_(v5, v34, WORD2(topLeft), v35, v36))
  {
    if (topLeft != 0x7FFFFFFFLL || (topLeft & 0xFFFF00000000) == 0x7FFF00000000)
    {
      goto LABEL_27;
    }

    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

LABEL_30:

LABEL_31:
  v46 = (bottomRight & 0xFFFF00000000) != 0x7FFF00000000 || bottomRight == 0x7FFFFFFFLL;
  v47 = v46;
  if (v46)
  {
    v5 = objc_msgSend_srcColumnUids(v8, v42, v43, v44, v45);
    if (!objc_msgSend_containsIndex_(v5, v48, WORD2(bottomRight), v49, v50))
    {
      v51 = 0;
      goto LABEL_46;
    }

    if (bottomRight == 0x7FFFFFFFLL && (bottomRight & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v51 = 1;
LABEL_46:

      goto LABEL_47;
    }
  }

  v52 = objc_msgSend_srcRowUids(v8, v42, v43, v44, v45);
  v51 = objc_msgSend_containsIndex_(v52, v53, bottomRight, v54, v55);

  if (v47)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (v37 != v51)
  {
    v56 = TSCEASTElementWithChildren::child(a2, 0);
    coordinate = (*(*v56 + 40))(v56, a1);
    sub_2210CDD80((a1 + 208), &coordinate);
    v57 = TSCEASTElementWithChildren::child(a2, 1u);
    coordinate = (*(*v57 + 40))(v57, a1);
    sub_2210CDD80((a1 + 208), &coordinate);
LABEL_49:
    if (!v24)
    {
      goto LABEL_81;
    }

    goto LABEL_50;
  }

  if (!v37 || !objc_msgSend_isInverse(*(a1 + 200), v27, v28, v29, v30))
  {
    if (!v24)
    {
      goto LABEL_81;
    }

    goto LABEL_50;
  }

  v72 = TSCEASTElement::mutableUndoTractList(a2, a1);
  v81 = objc_msgSend_preMoveRegionUidTract(v72, v73, v74, v75, v76);
  if (v81)
  {
    __p[0] = 0;
    *&v149 = 0;
    coordinate = objc_msgSend_srcTableUID(v8, v77, v78, v79, v80);
    v152 = v82;
    v86 = objc_msgSend_columnUids(v81, v82, v83, v84, v85);
    v91 = objc_msgSend_rowUids(v81, v87, v88, v89, v90);
    v92 = TSCEASTRelativeCoordRefElement::rangeCoordinateUsingUuids(a1, &coordinate, v86, v91, __p, &v149);
    if (v154._topLeft.row == v92 && ((*&v154._topLeft ^ v92) & 0xFFFF00000000) == 0 && v154._bottomRight.row == v93 && ((*&v154._bottomRight ^ v93) & 0xFFFF00000000) == 0)
    {
      v94 = TSCEASTElementWithChildren::child(a2, 0);
      coordinate = (*(*v94 + 40))(v94, a1);
      sub_2210CDD80((a1 + 208), &coordinate);
      v95 = TSCEASTElementWithChildren::child(a2, 1u);
      coordinate = (*(*v95 + 40))(v95, a1);
      sub_2210CDD80((a1 + 208), &coordinate);
      objc_msgSend_dropTract_(v72, v96, v81, v97, v98);
      v99 = TSCEASTElementWithChildren::child(a2, 0);
      v100 = TSCEASTElementWithChildren::child(a2, 1u);
      TSCEASTRewriter::createColonWithUidTractList(a1, v72, v99, v100);
    }
  }

  if (v24)
  {
LABEL_50:
    v58 = objc_msgSend_dstColumnUids(v8, v27, v28, v29, v30);
    v59 = WORD2(topLeft);
    if (objc_msgSend_containsIndex_(v58, v60, WORD2(topLeft), v61, v62))
    {
      v67 = objc_msgSend_dstRowUids(v8, v63, v64, v65, v66);
      v71 = objc_msgSend_containsIndex_(v67, v68, topLeft, v69, v70);
    }

    else
    {
      v71 = 0;
    }

    v105 = objc_msgSend_dstColumnUids(v8, v101, v102, v103, v104);
    if (objc_msgSend_containsIndex_(v105, v106, WORD2(bottomRight), v107, v108))
    {
      v113 = objc_msgSend_dstRowUids(v8, v109, v110, v111, v112);
      v117 = objc_msgSend_containsIndex_(v113, v114, bottomRight, v115, v116);

      if ((v71 & v117) == 1)
      {
        v118 = TSCEASTElementWithChildren::child(a2, 0);
        coordinate = (*(*v118 + 40))(v118, a1);
        sub_2210CDD80((a1 + 248), &coordinate);
        v119 = TSCEASTElementWithChildren::child(a2, 1u);
        coordinate = (*(*v119 + 40))(v119, a1);
        sub_2210CDD80((a1 + 248), &coordinate);
        if ((*(a1 + 98) & 1) == 0)
        {
          coordinate = 0;
          v152 = 0;
          v153 = 0;
          memset(__p, 0, sizeof(__p));
          if (WORD2(topLeft) <= WORD2(bottomRight))
          {
            v124 = HIDWORD(topLeft);
            do
            {
              v149 = 0uLL;
              if (v124 == 0x7FFF)
              {
                v149 = 0uLL;
              }

              else
              {
                v125 = objc_msgSend_dstColumnUids(v8, v120, v121, v122, v123);
                *&v149 = objc_msgSend_uidForIndex_(v125, v126, v59, v127, v128);
                *(&v149 + 1) = v129;
              }

              sub_221083454(&coordinate, &v149);
              LOWORD(v124) = v124 + 1;
              v59 = v124;
            }

            while (v124 <= WORD2(bottomRight));
          }

          for (; topLeft <= bottomRight; topLeft = (topLeft + 1))
          {
            v149 = 0uLL;
            if (topLeft == 0x7FFFFFFF)
            {
              v149 = 0uLL;
            }

            else
            {
              v130 = objc_msgSend_dstRowUids(v8, v120, v121, v122, v123);
              *&v149 = objc_msgSend_uidForIndex_(v130, v131, topLeft, v132, v133);
              *(&v149 + 1) = v134;
            }

            sub_221083454(__p, &v149);
          }

          v135 = [TSCEUndoTract alloc];
          v137 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v135, v136, &coordinate, __p, 2);
          objc_msgSend_setIsRangeRef_(v137, v138, 1, v139, v140);
          v141 = TSCEASTElement::mutableUndoTractList(a2, a1);
          objc_msgSend_appendUidTract_(v141, v142, v137, v143, v144);
          v145 = TSCEASTElementWithChildren::child(a2, 0);
          v146 = TSCEASTElementWithChildren::child(a2, 1u);
          TSCEASTRewriter::createColonWithUidTractList(a1, v141, v145, v146);
        }
      }
    }

    else
    {
    }
  }

LABEL_81:

  return a2;
}

char *sub_2210CC878(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4, a5);
  v312 = v7;
  v11 = TSCEASTColonTractElement::relativeTractRef(a2, a1, v8, v9, v10);
  v311 = TSCEASTElement::mutableUndoTractList(a2, a1);
  tableUID._lower = objc_msgSend_tableUID(v11, v12, v13, v14, v15);
  tableUID._upper = v16;
  if (!(tableUID._lower | v16))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  v17 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v17->var0.var0._tableUID._lower;
  upper = v17->var0.var0._tableUID._upper;
  v25 = lower == objc_msgSend_srcTableUID(v7, v20, v21, v22, v23) && upper == v24;
  v308 = a2;
  if (v25)
  {
    v34 = 1;
  }

  else
  {
    v26 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v27 = v26->var0.var0._tableUID._lower;
    v28 = v26->var0.var0._tableUID._upper;
    v34 = v27 == objc_msgSend_srcCondStyleOwnerUID(v7, v29, v30, v31, v32) && v28 == v33;
  }

  v35 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v37 = v35->var0.var0._tableUID._lower;
  v36 = v35->var0.var0._tableUID._upper;
  if (v37 == objc_msgSend_originalSrcTableUID(v7, v38, v39, v40, v41) && v36 == v42)
  {
    v46 = 1;
  }

  else
  {
    v47 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v48 = v47->var0.var0._tableUID._lower;
    v49 = v47->var0.var0._tableUID._upper;
    v46 = v48 == objc_msgSend_originalSrcCondStyleOwnerUID(v7, v50, v51, v52, v53) && v49 == v42;
  }

  v59 = tableUID._lower == objc_msgSend_srcTableUID(v7, v42, v43, v44, v45) && tableUID._upper == v54;
  v62 = tableUID._lower == objc_msgSend_dstTableUID(v7, v54, v55, v56, v57) && tableUID._upper == v60;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v324 = coordinate;
  v64 = sub_221089E8C(a1);
  *v323 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  v68 = objc_msgSend_tableOrLinkedResolverForTableUID_(v64, v65, v323, v66, v67);

  v309 = v68;
  if (v68)
  {
    v73 = objc_msgSend_tableTranslator(v68, v69, v70, v71, v72);
    v77 = v73;
    if (v73)
    {
      v324 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v73, v74, coordinate, v75, v76);
    }
  }

  v78 = sub_221089E8C(a1);
  v310 = objc_msgSend_tableOrLinkedResolverForTableUID_(v78, v79, &tableUID, v80, v81);

  if (!v59 && !v62)
  {
    if (((v34 | v46) & 1) == 0)
    {
      v117 = 0;
LABEL_149:
      v283 = v309;
      v284 = v310;
      v285 = v308;
      goto LABEL_150;
    }

    v307 = v11;
LABEL_51:
    v62 = 0;
    v115 = 0;
    v116 = 0;
LABEL_119:
    v151 = v307;
    goto LABEL_120;
  }

  v307 = v11;
  v303 = objc_msgSend_absoluteCellTractRefForHostCell_(v11, v82, &v324, v83, v84);
  v89 = objc_msgSend_topLeft(v303, v85, v86, v87, v88);
  v98 = objc_msgSend_bottomRight(v303, v90, v91, v92, v93);
  v99 = HIDWORD(v89);
  v305 = HIDWORD(v98);
  if (v310)
  {
    v100 = objc_msgSend_tableTranslator(v310, v94, v95, v96, v97);
    v104 = v100;
    v304 = v98;
    v105 = v89;
    if (v100)
    {
      v105 = objc_msgSend_baseCellCoordForChromeCellCoord_(v100, v101, v89, v102, v103);
      v99 = HIDWORD(v105);
      v304 = objc_msgSend_baseCellCoordForChromeCellCoord_(v104, v106, v98, v107, v108);
      v305 = HIDWORD(v304);
    }

    if (v59)
    {
      goto LABEL_38;
    }

LABEL_54:
    if (v62)
    {
      v115 = 0;
      goto LABEL_92;
    }

    if (((v34 | v46) & 1) == 0)
    {
      v117 = 0;
      v11 = v307;
      goto LABEL_149;
    }

    goto LABEL_51;
  }

  v304 = v98;
  v105 = v89;
  if (!v59)
  {
    goto LABEL_54;
  }

LABEL_38:
  v109 = v105 != 0x7FFFFFFF && v99 == 0x7FFF;
  v110 = !v109;
  if (v109)
  {
    goto LABEL_56;
  }

  v46 = objc_msgSend_srcColumnUids(v312, v94, v95, v96, v97);
  if (!objc_msgSend_containsIndex_(v46, v111, v99, v112, v113))
  {
    v114 = 0;
    goto LABEL_61;
  }

  if (v105 != 0x7FFFFFFF || v99 == 0x7FFF)
  {
LABEL_56:
    v118 = objc_msgSend_srcRowUids(v312, v94, v95, v96, v97);
    v114 = objc_msgSend_containsIndex_(v118, v119, v105, v120, v121);

    if (!v110)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v114 = 1;
LABEL_61:

LABEL_62:
  v126 = v304 != 0x7FFFFFFF && v305 == 0x7FFF;
  v127 = !v126;
  if (!v126)
  {
    v302 = objc_msgSend_srcColumnUids(v312, v122, v123, v124, v125);
    if (!objc_msgSend_containsIndex_(v302, v128, v305, v129, v130))
    {
      v131 = 0;
      goto LABEL_76;
    }

    if (v304 == 0x7FFFFFFF && v305 != 0x7FFF)
    {
      v131 = 1;
LABEL_76:

      goto LABEL_77;
    }
  }

  v132 = objc_msgSend_srcRowUids(v312, v122, v123, v124, v125);
  v131 = objc_msgSend_containsIndex_(v132, v133, v304, v134, v135);

  if (v127)
  {
    goto LABEL_76;
  }

LABEL_77:
  if ((v114 & v131 & 1) == 0)
  {
    v115 = v114 ^ v131;
    if (v62)
    {
      goto LABEL_92;
    }

LABEL_88:
    v116 = 0;
    v151 = 0;
    goto LABEL_118;
  }

  if (!objc_msgSend_isInverse(*(a1 + 200), v94, v95, v96, v97))
  {
    v115 = 0;
    if (v62)
    {
      goto LABEL_92;
    }

    goto LABEL_88;
  }

  v136 = objc_msgSend_preMoveRegionUidTract(v311, v94, v95, v96, v97);
  if (v136)
  {
    v321 = 0;
    *&v319 = 0;
    *v323 = objc_msgSend_srcTableUID(v312, v94, v95, v96, v97);
    *&v323[8] = v137;
    v141 = objc_msgSend_columnUids(v136, v137, v138, v139, v140);
    v146 = objc_msgSend_rowUids(v136, v142, v143, v144, v145);
    v147 = TSCEASTRelativeCoordRefElement::rangeCoordinateUsingUuids(a1, v323, v141, v146, &v321, &v319);
    if (v89 == v147 && ((v147 ^ v89) & 0xFFFF00000000) == 0 && ((v148 ^ v98) & 0xFFFF00000000) == 0 && v98 == v148)
    {
      objc_msgSend_dropTract_(v311, v148, v136, v149, v150);
      v151 = v307;

      v62 = 0;
      v116 = 1;
      v115 = 1;
      goto LABEL_118;
    }
  }

  v116 = 0;
  if (!v62)
  {
    v151 = 0;
    v115 = 0;
    v62 = 0;
    goto LABEL_118;
  }

  v115 = 0;
LABEL_92:
  v152 = objc_msgSend_dstColumnUids(v312, v94, v95, v96, v97);
  if (objc_msgSend_containsIndex_(v152, v153, v99, v154, v155))
  {
    v160 = objc_msgSend_dstRowUids(v312, v156, v157, v158, v159);
    v164 = objc_msgSend_containsIndex_(v160, v161, v105, v162, v163);
  }

  else
  {
    v164 = 0;
  }

  v169 = objc_msgSend_dstColumnUids(v312, v165, v166, v167, v168);
  if ((objc_msgSend_containsIndex_(v169, v170, v305, v171, v172) & 1) == 0)
  {

    goto LABEL_100;
  }

  v177 = objc_msgSend_dstRowUids(v312, v173, v174, v175, v176);
  v181 = objc_msgSend_containsIndex_(v177, v178, v304, v179, v180);

  if ((v164 & v181) != 1)
  {
LABEL_100:
    v116 = 0;
    v151 = 0;
    v62 = 0;
    goto LABEL_118;
  }

  if (*(a1 + 98))
  {
    v116 = 0;
    v151 = 0;
  }

  else
  {
    memset(v323, 0, sizeof(v323));
    v321 = 0;
    v322 = 0;
    if (v99 <= v305)
    {
      do
      {
        v186 = v99;
        v319 = 0uLL;
        if (v99 == 0x7FFF)
        {
          v319 = 0uLL;
        }

        else
        {
          v187 = objc_msgSend_dstColumnUids(v312, v182, v183, v184, v185);
          *&v319 = objc_msgSend_uidForIndex_(v187, v188, v99, v189, v190);
          *(&v319 + 1) = v191;
        }

        sub_221083454(v323, &v319);
        LOWORD(v99) = v99 + 1;
      }

      while ((v186 + 1) <= v305);
    }

    for (; v105 <= v304; v105 = (v105 + 1))
    {
      v319 = 0uLL;
      if (v105 == 0x7FFFFFFF)
      {
        v319 = 0uLL;
      }

      else
      {
        v192 = objc_msgSend_dstRowUids(v312, v182, v183, v184, v185);
        *&v319 = objc_msgSend_uidForIndex_(v192, v193, v105, v194, v195);
        *(&v319 + 1) = v196;
      }

      sub_221083454(&v321, &v319);
    }

    v197 = [TSCEUndoTract alloc];
    v199 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v197, v198, v323, &v321, 2);
    objc_msgSend_setIsRangeRef_(v199, v200, 1, v201, v202);
    objc_msgSend_appendUidTract_(v311, v203, v199, v204, v205);
    v151 = v307;

    if (v321)
    {
      v322._lower = v321;
      operator delete(v321);
    }

    if (*v323)
    {
      *&v323[8] = *v323;
      operator delete(*v323);
    }

    v116 = 1;
  }

  v62 = 1;
LABEL_118:

  if (!v151)
  {
    goto LABEL_119;
  }

LABEL_120:
  v209 = objc_msgSend_absoluteCellTractRefForHostCell_(v151, v206, &v324, v207, v208);
  v306 = v116;
  v214 = objc_msgSend_topLeft(v209, v210, v211, v212, v213);
  *v323 = v214;
  *&v323[8] = tableUID;
  v219 = objc_msgSend_bottomRight(v209, v215, v216, v217, v218);
  v321 = v219;
  v322 = tableUID;
  sub_2210CB5F4(a1, v323, v311, v115, v62, &v319);
  sub_2210CB5F4(a1, &v321, v311, v115, v62, v318);
  v220 = sub_221089E8C(a1);
  v221 = *(&v319 + 1);
  v222 = v320;
  v316[0] = *(&v319 + 8);
  v316[1] = v320;
  v226 = objc_msgSend_tableOrLinkedResolverForTableUID_(v220, v223, v316, v224, v225);

  if (v226 && objc_msgSend_isCategorized(v226, v227, v228, v229, v230))
  {
    v232 = objc_msgSend_tableTranslator(v226, v227, v228, v231, v230);
    v236 = v232;
    if (v232)
    {
      v314 = v319;
      v315 = v320;
      objc_msgSend_chromeCellRefForBaseCellRef_(v232, v233, &v314, v234, v235);
      v319 = *&v316[0].row;
      v320 = v317;
      v314 = v318[0];
      v315 = *&v318[1];
      objc_msgSend_chromeCellRefForBaseCellRef_(v236, v237, &v314, v238, v239);
      v318[0] = *&v316[0].row;
      *&v318[1] = v317;
      v221 = *(&v319 + 1);
      v222 = v320;
    }
  }

  *&v314 = 0;
  if ((v319 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || !(v221 | v222))
  {
    v240 = 1;
  }

  else
  {
    v316[0] = v214;
    v313 = v319;
    v240 = 0;
    *&v314 = TSUCellCoord::offsetBetween(v316, &v313, v228);
  }

  if ((*&v318[0] & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || *(v318 + 8) == 0)
  {
    v242 = 0;
    LODWORD(v243) = 0;
    v240 = 1;
  }

  else
  {
    v316[0] = v219;
    v313 = *&v318[0];
    v241 = TSUCellCoord::offsetBetween(v316, &v313, v228);
    v242 = v241;
    v243 = HIDWORD(v241);
  }

  objc_msgSend_setTableUID_(v209, v227, v221, v222, v230);
  v244 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1.coordinate;
  v313 = v244;
  v245 = sub_221089E8C(a1);
  *&v316[0].row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1._tableUID;
  v249 = objc_msgSend_tableOrLinkedResolverForTableUID_(v245, v246, v316, v247, v248);

  if (v249)
  {
    v254 = objc_msgSend_tableTranslator(v249, v250, v251, v252, v253);
    v258 = v254;
    if (v254)
    {
      v313 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v254, v255, *&v244, v256, v257);
    }
  }

  if ((v240 & 1) == 0)
  {
    if (v314 == __PAIR64__(v243, v242))
    {
      objc_msgSend_adjustIndexesBy_(v209, v250, &v314, v252, v253);
    }

    else if (v310)
    {
      v259 = objc_msgSend_tableTranslator(v310, v250, v251, v252, v253);
      v263 = v259;
      if (v259)
      {
        v264 = objc_msgSend_viewTractRefForChromeTractRef_(v259, v260, v209, v261, v262);
        objc_msgSend_adjustIndexesBy_(v209, v265, &v314, v266, v267);
        v272 = objc_msgSend_rows(v264, v268, v269, v270, v271);
        objc_msgSend_setRows_(v209, v273, v272, v274, v275);
      }
    }
  }

  v276 = [TSCERelativeTractRef alloc];
  v117 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v276, v277, v209, &v313, v278);

  if (v240)
  {
    TSCEASTIteratorBase::createReferenceError(a1, v279, v280, v281, v282);
  }

  v11 = v307;
  if (!v117)
  {
    goto LABEL_149;
  }

  v283 = v309;
  v284 = v310;
  v285 = v308;
  if (v306)
  {
    goto LABEL_148;
  }

  v287 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v289 = v287->var0.var0._tableUID._lower;
  v288 = v287->var0.var0._tableUID._upper;
  v290 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  if (v289 != v290->var0.var1._tableUID._lower || v288 != v290->var0.var1._tableUID._upper)
  {
    goto LABEL_148;
  }

  v295 = objc_msgSend_tableUID(v307, v291, v292, v293, v294);
  if (!(v295 | v296))
  {
    v299 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    objc_msgSend_setTableUID_(v307, v300, v299->var0.var0._tableUID._lower, v299->var0.var0._tableUID._upper, v301);
  }

  if ((objc_msgSend_isEqual_(v117, v296, v307, v297, v298) & 1) == 0)
  {
LABEL_148:
    *v323 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1._tableUID;
    TSCEASTIteratorBase::createColonTractRef(a1, v117, v311, v323);
  }

LABEL_150:

  return v285;
}

const char *sub_2210CD6B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4, a5);
  v12 = objc_msgSend_srcTableUID(v7, v8, v9, v10, v11);
  v14 = v13;
  if (v12 != objc_msgSend_dstTableUID(v7, v13, v15, v16, v17) || v14 != v18)
  {
    v20 = (*(*a2 + 136))(a2, a1);
    v22 = v21;
    if (v20 == objc_msgSend_srcTableUID(v7, v21, v23, v24, v25) && v22 == v26)
    {
      v31 = objc_msgSend_srcColumnUids(v7, v26, v27, v28, v29);
      v32 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (objc_msgSend_containsIndex_(v31, v33, v32->var0.var0.coordinate.column, v34, v35))
      {
        v40 = objc_msgSend_srcRowUids(v7, v36, v37, v38, v39);
        v41 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        if (objc_msgSend_containsIndex_(v40, v42, v41->var0.var0.coordinate.row, v43, v44))
        {
          v45 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
          v46 = sub_2212C7330(v45);

          if (v46)
          {
            v53[0] = objc_msgSend_dstTableUID(v7, v47, v48, v49, v50);
            v53[1] = v51;
            (*(*a2 + 144))(a2, v53, a1);
          }

          goto LABEL_16;
        }
      }
    }
  }

LABEL_16:

  return a2;
}

char *sub_2210CD864(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_regionMovedInfo(*(a1 + 200), a2, a3, a4, a5);
  v8 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v8->var0.var0._tableUID._lower;
  upper = v8->var0.var0._tableUID._upper;
  v19 = lower == objc_msgSend_srcTableUID(v7, v11, v12, v13, v14) && upper == v15;
  if (v19 || ((v20 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8)), v21 = v20->var0.var0._tableUID._lower, v22 = v20->var0.var0._tableUID._upper, v21 == objc_msgSend_srcCondStyleOwnerUID(v7, v23, v24, v25, v26)) ? (v27 = v22 == v15) : (v27 = 0), v27))
  {
    v28 = objc_msgSend_srcColumnUids(v7, v15, v16, v17, v18);
    v29 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (objc_msgSend_containsIndex_(v28, v30, v29->var0.var0.coordinate.column, v31, v32))
    {
      v37 = objc_msgSend_srcRowUids(v7, v33, v34, v35, v36);
      v38 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v42 = objc_msgSend_containsIndex_(v37, v39, v38->var0.var0.coordinate.row, v40, v41);

      if (v42)
      {
        v47 = objc_msgSend_srcTableUID(v7, v43, v44, v45, v46);
        v49 = v48;
        if (v47 != objc_msgSend_dstTableUID(v7, v48, v50, v51, v52) || v49 != v53)
        {
          if ((v57 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v54, v55, v56), v59 = v58, v71.var0 = v57, v71.var1 = v58, v57 == objc_msgSend_srcTableUID(v7, v58, v60, v61, v62)) && v59 == v63 || v57 == objc_msgSend_dstTableUID(v7, v63, v64, v65, v66) && v59 == v67)
          {
            v70._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
            v68 = TSCEASTElement::mutableUndoTractList(a2, a1);
            TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v68, &v71, &v70);
          }
        }
      }
    }

    else
    {
    }
  }

  return a2;
}

void sub_2210CDACC(id *a1)
{
  *a1 = &unk_2834A1A70;
  sub_2210BDEC0((a1 + 36));
  sub_2210BDEC0((a1 + 31));
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2210CDB3C(id *a1)
{
  *a1 = &unk_2834A1A70;
  sub_2210BDEC0((a1 + 36));
  sub_2210BDEC0((a1 + 31));
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2210CDBC0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22107C238();
}

void *sub_2210CDC18(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_2210CDD04(void *a1, void *a2)
{
  result = sub_2210CDC18(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2210CDD3C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_2210CDD80(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_2210CE644(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

void sub_2210EBE44()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBE5C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBE74()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBE8C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBEB0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBEC8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBEEC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBF04()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBFB0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EBFF0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC008()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC098()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC0B0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC0C8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC0E0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC1A4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC1F0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC208()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC2CC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC2E4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC2FC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC314()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC32C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC378()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC390()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC3DC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC3F4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC40C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC424()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC43C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC454()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC46C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC484()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC504()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC51C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC534()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC54C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC564()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC57C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC594()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC5AC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC658()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC670()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC6C4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC6DC()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC6F4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC748()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC79C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC8A4()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC9B8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210EC9D0()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECA1C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB04()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB1C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB34()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB4C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB64()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECB7C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECC38()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECC84()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECC9C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECEA8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECF74()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECF8C()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ECFD8()
{
  do
  {
    v2 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v0);
  JUMPOUT(0x2210EBE38);
}

void sub_2210ED224(unint64_t a1@<X0>, void *a2@<X8>, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_2210ED528(a2, a1);
  TSUDecimal::operator=();
  v15 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v5, v14, v6, v7);
  sub_2210ED5B8(a2, &v15);

  v13 = &a3;
  if (a1 >= 2)
  {
    v8 = a1 - 1;
    do
    {
      ++v13;
      TSUDecimal::operator=();
      v12 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v9, v14, v10, v11);
      sub_2210ED5B8(a2, &v12);

      --v8;
    }

    while (v8);
  }
}

void sub_2210ED350(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v11[0] = objc_msgSend_BOOLValue_(TSCEBooleanValue, a2, a1, a3, a4);
  sub_2210ED5B8(a5, v11);

  v10 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v7, a2, v8, v9);
  sub_2210ED5B8(a5, &v10);
}

void sub_2210ED3E0(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_2210ED414(void *a1@<X8>, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2210ED528(a1, 6uLL);
  v13 = objc_msgSend_stringValue_(TSCEStringValue, v3, @"D", v4, v5);
  sub_2210ED5B8(a1, &v13);

  v14 = &a2;
  v6 = 5;
  do
  {
    v7 = v14++;
    v11 = *v7;
    if (v11)
    {
      v12 = objc_msgSend_stringValue_(TSCEStringValue, v8, v11, v9, v10);
      sub_2210ED5B8(a1, &v12);
    }

    --v6;
  }

  while (v6);
}

void sub_2210ED4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, ...)
{
  va_start(va, a4);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void *sub_2210ED528(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_22107C1F0(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_2210ED5A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void *sub_2210ED5B8(void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *result;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v13[0] = 0;
    v13[1] = 8 * v8;
    v13[3] = 0;
    v12 = *a2;
    *a2 = 0;
    *(8 * v8) = v12;
    v13[2] = 8 * v8 + 8;
    sub_22107C098(result, v13);
    v7 = v3[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
    result[1] = v7;
  }

  v3[1] = v7;
  return result;
}