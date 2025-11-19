void sub_2210ED69C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2210ED6B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_2210EDC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, TSUIndexSet *a13)
{
  TSUIndexSet::~TSUIndexSet(&a9);
  TSUIndexSet::~TSUIndexSet(&a13);

  _Unwind_Resume(a1);
}

void sub_2210EDED4(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, TSUIndexSet *a4, TSUIndexSet *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  TSUIndexSet::~TSUIndexSet(&a15);
  TSUIndexSet::~TSUIndexSet(&a19);

  _Unwind_Resume(a1);
}

void sub_2210EE55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *__p, void *a14, void *a15, void *a16, TSUIndexSet *a17, TSUIndexSet *a18, uint64_t a19, uint64_t a20, void *__pa, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  TSUIndexSet::~TSUIndexSet(&a25);
  TSUIndexSet::~TSUIndexSet(&a29);

  v34 = *(v32 - 176);
  if (v34)
  {
    *(v32 - 168) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 152);
  if (v35)
  {
    *(v32 - 144) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210EE8F8(TSUIndexSet *this)
{
  if (LOBYTE(this[2]._singleRange._end) == 1)
  {
    return TSUIndexSet::count(this + 1) != 0;
  }

  result = TSUIndexSet::count(this);
  if (!result)
  {
    return result;
  }

  return LOBYTE(this[2]._singleRange._end) == 2 || TSUIndexSet::count(this + 1) != 0;
}

void sub_2210EEE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_2210EEFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  _Block_object_dispose((v16 - 48), 8);

  _Unwind_Resume(a1);
}

void sub_2210EF00C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = __C(v3, v4);
  v7 = v6;
  v11 = objc_msgSend_tableUID(*(a1 + 32), v6, v8, v9, v10);
  v22.range._topLeft = v5;
  v22.range._bottomRight = v7;
  v22._tableUID._lower = v11;
  v22._tableUID._upper = v12;
  objc_msgSend_setPreserveFlagsOnSubrange_(*(a1 + 32), v12, &v22, v13, v14);
  v15 = *(a1 + 40);
  v16 = *(*(*(a1 + 48) + 8) + 24);
  v17 = TSCERangeRef::description(&v22);
  v21 = v17;
  if (v16 == 1)
  {
    objc_msgSend_appendFormat_(v15, v18, @" | %@", v19, v20, v17);
  }

  else
  {
    objc_msgSend_appendString_(v15, v18, v17, v19, v20);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_2210EF2D8(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7.i64[0] = 0xFFFFFFFFLL;
  v7.i64[1] = 0xFFFFFFFFLL;
  v11 = vorrq_s8(vandq_s8(*a2, v7), vdupq_n_s64(0x7FFF00000000uLL));
  v8 = objc_msgSend_tableUID(*(a1 + 32), a2->i8, a3, a4, a5);
  v9 = *(a1 + 40);
  v12 = 2;
  v13 = v11;
  v14 = v8;
  v15 = v10;
  v16 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  (*(v9 + 16))(v9, &v12, a3);
}

void sub_2210EF384(uint64_t a1, int64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7.i64[0] = 0xFFFF00000000;
  v7.i64[1] = 0xFFFF00000000;
  v11 = vorrq_s8(vandq_s8(vshlq_n_s64(*a2, 0x20uLL), v7), vdupq_n_s64(0x7FFFFFFFuLL));
  v8 = objc_msgSend_tableUID(*(a1 + 32), a2->i8, a3, a4, a5);
  v9 = *(a1 + 40);
  v12 = 2;
  v13 = v11;
  v14 = v8;
  v15 = v10;
  v16 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  (*(v9 + 16))(v9, &v12, a3);
}

void sub_2210EF434(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_columns(*(a1 + 32), a2, a3, a4, a5);
  v6 = *(a1 + 40);
  TSUIndexSet::enumerateRangesUsingBlock();
}

void sub_2210EF4F4(uint64_t a1, int64x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7.i64[0] = 0xFFFF00000000;
  v7.i64[1] = 0xFFFF00000000;
  v8 = vandq_s8(vshlq_n_s64(*a2, 0x20uLL), v7);
  v7.i64[0] = 0xFFFFFFFFLL;
  v7.i64[1] = 0xFFFFFFFFLL;
  v23 = vorrq_s8(v8, vandq_s8(**(a1 + 48), v7));
  v9 = objc_msgSend_tableUID(*(a1 + 32), a2->i8, a3, a4, a5);
  v32.range = v23;
  v32._tableUID._lower = v9;
  v32._tableUID._upper = v10;
  objc_msgSend_setPreserveFlagsOnSubrange_(*(a1 + 32), v10, &v32, v11, v12);
  topLeft = v32.range._topLeft;
  if (v32.range._topLeft.row == v32.range._bottomRight.row && ((*&v32.range._bottomRight ^ *&v32.range._topLeft) & 0x101FFFF00000000) == 0)
  {
    v20 = objc_msgSend_tableUID(*(a1 + 32), v13, v14, v15, v16);
    v31.coordinate = topLeft;
    v31._tableUID._lower = v20;
    v31._tableUID._upper = v21;
    v22 = *(a1 + 40);
    v24 = 0;
    TSCERangeRef::TSCERangeRef(&v25, &v31);
    v26 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    (*(v22 + 16))(v22, &v24, a3);
  }

  else
  {
    v19 = *(a1 + 40);
    v24 = 1;
    v25 = v32;
    v26 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    (*(v19 + 16))();
  }
}

uint64_t sub_2210EF6F0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = __C(v3, v4);
  v7 = v6;
  v11 = objc_msgSend_tableUID(*(a1 + 32), v6, v8, v9, v10);
  v16[0] = v5;
  v16[1] = v7;
  v16[2] = v11;
  v16[3] = v12;
  objc_msgSend_setPreserveFlagsOnSubrange_(*(a1 + 32), v12, v16, v13, v14);
  return (*(*(a1 + 40) + 16))();
}

void sub_2210EFB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_2210EFF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v31 = *(v29 - 112);
  if (v31)
  {
    *(v29 - 104) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210F02DC(uint64_t a1, _NSRange a2)
{
  TSUIndexRange::TSUIndexRange(&v8, a2);
  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return objc_msgSend_addRowRange_(v6, v3, &v8, v4, v5);
  }

  else
  {
    return objc_msgSend_addColumnRange_(v6, v3, &v8, v4, v5);
  }
}

uint64_t sub_2210F0444(uint64_t a1, _NSRange a2)
{
  TSUIndexRange::TSUIndexRange(&v8, a2);
  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return objc_msgSend_addRowRange_(v6, v3, &v8, v4, v5);
  }

  else
  {
    return objc_msgSend_addColumnRange_(v6, v3, &v8, v4, v5);
  }
}

id sub_2210F05E8(void *a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v78 = v2;
  v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v1, v3, @" ", &stru_2834BADA0, v4);

  v77 = v5;
  objc_msgSend_componentsSeparatedByString_(v5, v6, @"|", v7, v8);
  __p = 0;
  v91 = 0;
  v92 = 0;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v89 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v86, v93, 16);
  v13 = 0;
  v14 = 0;
  if (!v10)
  {
    v83 = 0x7FFF;
    LOWORD(v17) = 0x7FFF;
    v16 = 0x7FFFFFFF;
    v15 = 0x7FFFFFFF;
    goto LABEL_52;
  }

  v81 = *v87;
  v15 = 0x7FFFFFFF;
  v16 = 0x7FFFFFFF;
  v17 = 0x7FFF;
  v83 = 0x7FFF;
  do
  {
    v80 = v10;
    v82 = v17;
    v18 = v14;
    for (i = 0; i != v80; ++i)
    {
      if (*v87 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v20 = TSCERangeCoordinate::rangeCoordFromString(*(*(&v86 + 1) + 8 * i), 0x3E8, 1000000, v11, v12);
      v22 = v21;
      v85.origin = 0;
      v85.size = 0;
      TSUCellRectFromTSCERangeCoordinate();
      v85.origin = v23;
      v85.size = v24;
      v25 = v91;
      if (v91 >= v92)
      {
        v27 = (v91 - __p) >> 4;
        v28 = v27 + 1;
        if ((v27 + 1) >> 60)
        {
          sub_22107C148();
        }

        v29 = v92 - __p;
        if ((v92 - __p) >> 3 > v28)
        {
          v28 = v29 >> 3;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF0)
        {
          v30 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          sub_221086F74(&__p, v30);
        }

        v31 = 16 * v27;
        *v31 = v20;
        *(v31 + 8) = v22;
        v26 = 16 * v27 + 16;
        v32 = (16 * v27 - (v91 - __p));
        memcpy((v31 - (v91 - __p)), __p, v91 - __p);
        v33 = __p;
        __p = v32;
        v91 = v26;
        v92 = 0;
        if (v33)
        {
          operator delete(v33);
        }

        v2 = v78;
      }

      else
      {
        *v91 = v20.row;
        *(v25 + 2) = v20.column;
        *(v25 + 3) = *&v20._preserveRow;
        *(v25 + 1) = v22;
        v26 = (v25 + 16);
      }

      v91 = v26;
      if (!TSUCellRect::isValidOrSpanning(&v85))
      {

        v2 = 0;
        goto LABEL_66;
      }

      if (TSUCellRect::spansAllColumns(&v85))
      {
        v13 = 1;
        objc_msgSend_setSpansAllColumns_(v2, v34, 1, v35, v36);
      }

      else
      {
        v37 = TSUCellRect::columns(&v85);
        v39 = v38;
        v96.location = v37;
        v96.length = v39;
        TSUIndexRange::TSUIndexRange(&v84, v96);
        objc_msgSend_addColumnRange_(v2, v40, &v84, v41, v42);
        if (v83 >= v20.column)
        {
          column = v20.column;
        }

        else
        {
          column = v83;
        }

        if (v83 == 0x7FFF)
        {
          column = v20.column;
        }

        v83 = column;
        v44 = WORD2(v22);
        if (WORD2(v22) <= v82)
        {
          v44 = v82;
        }

        if (v82 == 0x7FFF)
        {
          v45 = HIDWORD(v22);
        }

        else
        {
          v45 = v44;
        }

        v82 = v45;
      }

      if (TSUCellRect::spansAllRows(&v85))
      {
        v18 = 1;
        objc_msgSend_setSpansAllRows_(v2, v46, 1, v47, v48);
      }

      else
      {
        v50 = TSUCellRect::rows(&v85);
        v52 = v51;
        v97.location = v50;
        v97.length = v52;
        TSUIndexRange::TSUIndexRange(&v84, v97);
        objc_msgSend_addRowRange_(v2, v53, &v84, v54, v55);
        if (v16 >= v20.row)
        {
          row = v20.row;
        }

        else
        {
          row = v16;
        }

        if (v16 == 0x7FFFFFFF)
        {
          v16 = v20.row;
        }

        else
        {
          v16 = row;
        }

        if (v22 <= v15)
        {
          v57 = v15;
        }

        else
        {
          v57 = v22;
        }

        if (v15 == 0x7FFFFFFF)
        {
          v15 = v22;
        }

        else
        {
          v15 = v57;
        }
      }
    }

    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v86, v93, 16);
    v14 = v18;
    v17 = v82;
  }

  while (v10);
LABEL_52:

  if (v2)
  {
    isRectangularRange = objc_msgSend_isRectangularRange(v2, v58, v59, v60, v61);
    objc_msgSend_setPreserveRectangular_(v2, v63, isRectangularRange, v64, v65);
    v69 = __p;
    if ((v13 | v14))
    {
      LOBYTE(v70) = 0;
      LOBYTE(v71) = 0;
      v72 = 0;
      goto LABEL_73;
    }

    v73 = v91;
    if (__p == v91)
    {
      LOBYTE(v70) = 0;
      LOBYTE(v71) = 0;
      v72 = 0;
    }

    else
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      do
      {
        if (v69->_topLeft.column == v83 && v69->_topLeft.row == v16)
        {
          v72 = v72 & 0xC | TSCERangeCoordinate::preserveFlags(v69) & 3;
          v70 = 1;
        }

        if (v69->_bottomRight.column == v17 && v69->_bottomRight.row == v15)
        {
          v71 = 1;
          v72 = TSCERangeCoordinate::preserveFlags(v69) & 0xC | v72 & 3;
        }

        ++v69;
      }

      while (v69 != v73);
      if (v70 & v71)
      {
LABEL_65:
        v74 = v72;
        v2 = v78;
        objc_msgSend_setPreserveFlags_(v78, v66, v74, v67, v68);
        goto LABEL_66;
      }
    }

    v69 = __p;
LABEL_73:
    v76 = v91;
    while (1)
    {
      if (v69 == v76)
      {
        goto LABEL_65;
      }

      if ((v70 & 1) == 0)
      {
        if (!((v69->_topLeft.column != v83) | v13 & 1))
        {
          v72 = v72 & 0xFFFFFFFE | TSCERangeCoordinate::preserveFlags(v69) & 1;
          if (v71)
          {
            goto LABEL_86;
          }

          goto LABEL_80;
        }

        if (!((v69->_topLeft.row != v16) | v14 & 1))
        {
          v72 = v72 & 0xFFFFFFFD | (2 * ((TSCERangeCoordinate::preserveFlags(v69) >> 1) & 1));
        }
      }

      if (v71)
      {
        goto LABEL_86;
      }

LABEL_80:
      if ((v69->_bottomRight.column != v17) | v13 & 1)
      {
        if (!((v69->_bottomRight.row != v15) | v14 & 1))
        {
          v72 = v72 & 0xFFFFFFF7 | (8 * ((TSCERangeCoordinate::preserveFlags(v69) >> 3) & 1));
        }
      }

      else
      {
        v72 = v72 & 0xFFFFFFFB | (4 * ((TSCERangeCoordinate::preserveFlags(v69) >> 2) & 1));
      }

LABEL_86:
      ++v69;
    }
  }

LABEL_66:
  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  return v2;
}

void sub_2210F0BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210F0C3C(uint64_t a1)
{
  TSUIndexSet::TSUIndexSet(a1);
  TSUIndexSet::TSUIndexSet(v2 + 1);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 77) = 0;
  return a1;
}

char *sub_2210F0C88(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      sub_22107C148();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      sub_221086F74(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = (v10 - __dst) >> 4;
  if (v17 >= a5)
  {
    v22 = &__dst[16 * a5];
    v23 = &v10[-16 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 16;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v22);
    }

    v30 = 16 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 16;
    *v20 = v21;
    v20 += 16;
    v19 += 16;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[16 * a5];
    v27 = &v19[-16 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 16;
      *v28 = v29;
      v28 += 16;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[16 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

uint64_t sub_2210F0E88(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A1BE8;
  *(a1 + 200) = v7;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 1065353216;
  return a1;
}

uint64_t sub_2210F0F24(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_transposedInfo(*(a1 + 200), a2, a3, a4, a5);
  v10 = objc_msgSend_transposedBodyRange(v5, v6, v7, v8, v9);

  return v10;
}

uint64_t sub_2210F0F80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_transposedInfo(*(a1 + 200), a2, a3, a4, a5);
  v10 = objc_msgSend_numberOfFooterRows(v5, v6, v7, v8, v9);

  return v10;
}

uint64_t sub_2210F0FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2 | *(a2 + 8);
  if (*a2 != 0)
  {
    v13 = *a2 == objc_msgSend_tableUID(*(a1 + 200), a2, a3, a4, a5) && *(a2 + 8) == v8;
    v14 = objc_msgSend_conditionalStyleOwnerUID(*(a1 + 200), v8, v9, v10, v11);
    LOBYTE(v5) = (v14 | v15) != 0 || v13;
    if (v14 | v15 && !v13)
    {
      LOBYTE(v5) = *a2 == objc_msgSend_conditionalStyleOwnerUID(*(a1 + 200), v15, v16, v17, v18) && *(a2 + 8) == v19;
    }
  }

  return v5 & 1;
}

uint64_t sub_2210F106C(TSCEFormulaRewriteContext **a1, TSCEASTElementWithChildren *a2, _BYTE *a3)
{
  *a3 = 0;
  if (a2 && TSCEASTElement::tag(a2, a1) == 26 && (v6 = (*(*a2 + 48))(a2, a1)) != 0 && (*a3 & 1) == 0)
  {
    v9 = v6;
    v7 = 0;
    v10 = 0;
    while (1)
    {
      v11 = TSCEASTElementWithChildren::child(a2, v10);
      v12 = sub_2210F115C(a1, v11);
      if (v10)
      {
        if ((v7 ^ v12))
        {
          break;
        }
      }

      v7 |= v12;
      if ((*a3 & 1) == 0 && ++v10 < v9)
      {
        continue;
      }

      return v7 & 1;
    }

    *a3 = 1;
    LOBYTE(v7) = v7 | v12;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

uint64_t sub_2210F115C(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    v4 = TSCEASTElement::tag(v2, a1);
    v8 = 0;
    if (v4 <= 32)
    {
      break;
    }

    if (v4 > 44)
    {
      if ((v4 - 69) >= 2 && v4 != 45)
      {
        if (v4 == 67)
        {
          v22 = TSCEASTColonTractElement::relativeTractRef(v2, a1, v5, v6, v7);
          if (objc_msgSend_hasTableUID(v22, v23, v24, v25, v26, 0, 0))
          {
            tableUID._lower = objc_msgSend_tableUID(v22, v27, v28, v29, v30);
          }

          else
          {
            v36 = TSCEFormulaRewriteContext::containingCell(a1[1]);
            upper = v36->var0.var0._tableUID._upper;
            tableUID._lower = v36->var0.var0._tableUID._lower;
          }

          tableUID._upper = upper;
          v8 = sub_2210F0FCC(a1, &tableUID, v32, v33, v34);
        }

        return v8;
      }

      goto LABEL_18;
    }

    if ((v4 - 33) >= 2)
    {
      if (v4 == 36)
      {
        if (TSCEASTElement::refFlags(v2, a1))
        {
          tableUID._lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v16, v17, v18);
          tableUID._upper = v35;
        }

        else
        {
          tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
        }

        return sub_2210F0FCC(a1, &tableUID, v19, v20, v21);
      }

      return v8;
    }

LABEL_15:
    if (!(*(*v2 + 56))(v2))
    {
      return 0;
    }

    v12 = TSCEASTFunctionElement::functionIndex(v2, a1, v9, v10, v11);
    if ((v12 - 342) > 0x1C)
    {
      goto LABEL_23;
    }

    v13 = 1 << (v12 - 86);
    if ((v13 & 0x18019FCF) != 0)
    {
      goto LABEL_18;
    }

    if ((v13 & 0x6000) != 0)
    {
      if ((*(*v2 + 56))(v2) != 1)
      {
        return 0;
      }
    }

    else
    {
LABEL_23:
      if (v12 != 220)
      {
        return 0;
      }
    }

LABEL_18:
    v2 = TSCEASTElementWithChildren::child(v2, 0);
    if (!v2)
    {
      return 0;
    }
  }

  if (v4 > 27)
  {
    if ((v4 - 31) >= 2 && v4 != 28)
    {
      return v8;
    }

    goto LABEL_18;
  }

  if ((v4 - 16) < 2)
  {
    goto LABEL_15;
  }

  if (v4 == 26)
  {
    LOBYTE(tableUID._lower) = 0;
    v15 = sub_2210F106C(a1, v2, &tableUID);
    return v15 & (LOBYTE(tableUID._lower) ^ 1u);
  }

  return v8;
}

uint64_t sub_2210F13C0(TSCEASTIteratorBase *a1, TSCEASTElementWithChildren *this, unsigned int a3)
{
  v4 = TSCEASTElementWithChildren::child(this, a3);
  result = TSCEASTElement::tag(v4, a1);
  if (result > 0x22)
  {
    goto LABEL_8;
  }

  if (((1 << result) & 0x1FC0000) != 0)
  {
    return result;
  }

  if (((1 << result) & 0x600030000) == 0 || TSCEASTFunctionElement::functionIndex(v4, a1, v6, v7, v8) != 220)
  {
LABEL_8:
    TSCEASTRewriter::createFunction(a1, 0xDC, v4, v7, v8, v9, v10, v11, 0);
  }

  return TSCEASTRewriter::removeFunctionNode(a1, v4, v12, v7, v8);
}

uint64_t sub_2210F14CC(TSCEASTIteratorBase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 15);
  if (v10 == *(a1 + 14) || (v11 = *(v10 - 8)) == 0 || ((v12 = TSCEASTElement::tag(*(v10 - 8), a1), v12 <= 0x22) ? (v14 = ((1 << v12) & 0x600030000) == 0) : (v14 = 1), v14 || TSCEASTFunctionElement::functionIndex(v11, a1, v13, a4, a5) != 220))
  {
    TSCEASTRewriter::createFunction(a1, 0xDC, a2, a4, a5, a6, a7, a8, 0);
  }

  TSCEASTRewriter::removeFunctionNode(a1, v11, v15, a4, a5);
  return a2;
}

TSCEASTFunctionElement *sub_2210F157C(TSCEFormulaRewriteContext **a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4, a5);
  v8 = v7;
  if (v7 <= 233)
  {
    if (v7 > 128)
    {
      if (v7 <= 164)
      {
        if (v7 == 129)
        {
LABEL_50:
          if (!(*(*this + 48))(this, a1))
          {
            tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
            if ((sub_2210F0FCC(a1, &tableUID, v220, v221, v222) & 1) == 0)
            {
              return this;
            }

            goto LABEL_186;
          }

          v49 = TSCEASTElementWithChildren::child(this, 0);
          if (TSCEASTElement::tag(v49, a1) - 23 < 2)
          {
            tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
            if (!sub_2210F0FCC(a1, &tableUID, v50, v51, v52))
            {
              return this;
            }

            goto LABEL_186;
          }

          if (sub_2210F115C(a1, v49))
          {
LABEL_186:
            v54 = v8 == 129;
            v55 = 129;
            v56 = 22;
            goto LABEL_187;
          }

          return this;
        }

        if (v7 != 130)
        {
          if (v7 == 145)
          {
LABEL_120:
            if ((*(*this + 48))(this, a1) == 3)
            {
              v134 = TSCEASTElementWithChildren::child(this, 0);
              v135 = sub_2210F115C(a1, v134);
              v136 = TSCEASTElementWithChildren::child(this, 2u);
              if (v135 != sub_2210F115C(a1, v136))
              {
                if (v135)
                {
                  v137 = 0;
                }

                else
                {
                  v137 = 2;
                }

                v138 = a1;
                v139 = this;
LABEL_177:
                sub_2210F13C0(v138, v139, v137);
              }
            }
          }

          return this;
        }

        goto LABEL_57;
      }

      if ((v7 - 231) >= 3)
      {
        if (v7 != 165)
        {
          if (v7 == 220 && TSCEASTRewriter::clearRemovalOfFunctionNode(a1, this))
          {
            v132 = TSCEASTElementWithChildren::child(this, 0);
            *(this + 4) = *(this + 3);
            ((*a1)->var2.var0.var0._tableUID._lower)(a1, this);
            return v132;
          }

          return this;
        }

LABEL_117:
        v133 = TSCEASTElementWithChildren::child(this, 1u);
        if (!sub_2210F115C(a1, v133))
        {
          return this;
        }

        v54 = v8 == 165;
        v55 = 165;
        v56 = 59;
        goto LABEL_187;
      }

      v20 = (*(*this + 48))(this, a1);
      if (v20)
      {
        v25 = v20;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = TSCEASTElementWithChildren::child(this, v28);
          if (sub_2210F115C(a1, v29))
          {
            if (!v26)
            {
              v26 = objc_opt_new();
            }

            objc_msgSend_addIndex_(v26, v21, v28, v23, v24);
          }

          if (v28)
          {
            v30 = 1;
          }

          else
          {
            v30 = v8 == 233;
          }

          if (v30)
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          v28 += v31;
          ++v27;
        }

        while (v28 < v25);
      }

      else
      {
        v27 = 0;
        v26 = 0;
      }

      if (objc_msgSend_count(v26, v21, v22, v23, v24) && objc_msgSend_count(v26, v213, v214, v215, v216) != v27)
      {
        v278[0] = MEMORY[0x277D85DD0];
        v278[1] = 3221225472;
        v278[2] = sub_2210F299C;
        v278[3] = &unk_27845EB70;
        v278[4] = a1;
        v278[5] = this;
        objc_msgSend_enumerateIndexesUsingBlock_(v26, v217, v278, v218, v219);
      }
    }

    else
    {
      if (v7 <= 62)
      {
        if (v7 <= 22)
        {
          if (v7 != 6)
          {
            if (v7 != 22)
            {
              return this;
            }

            goto LABEL_50;
          }

LABEL_20:
          v19 = *(a1 + 52);
          if (v19 <= 1)
          {
            v19 = 1;
          }

          *(a1 + 52) = v19;
          return this;
        }

        if (v7 != 23)
        {
          if (v7 != 59)
          {
            return this;
          }

          goto LABEL_117;
        }

LABEL_57:
        v53 = TSCEASTElementWithChildren::child(this, 0);
        if (!sub_2210F115C(a1, v53))
        {
          return this;
        }

        v54 = v8 == 130;
        v55 = 130;
        v56 = 23;
LABEL_187:
        if (v54)
        {
          v94 = v56;
        }

        else
        {
          v94 = v55;
        }

LABEL_195:
        TSCEASTFunctionElement::setFunctionIndex(this, v94, a1, v14, v15);
        return this;
      }

      if (v7 <= 80)
      {
        if (v7 == 63)
        {
          LOBYTE(v279._topLeft.row) = 0;
          v140 = TSCEASTElementWithChildren::child(this, 0);
          if (!sub_2210F115C(a1, v140))
          {
            v223 = TSCEASTElementWithChildren::child(this, 0);
            if (sub_2210F106C(a1, v223, &v279) && LOBYTE(v279._topLeft.row) == 1)
            {
              tableUID._decimal.w[0] = TSCEASTElementWithChildren::child(this, 0);
              sub_2210F3BE4(a1 + 27, &tableUID);
            }

            return this;
          }

          if ((*(*this + 48))(this, a1) >= 2)
          {
            v45 = TSCEASTElementWithChildren::child(this, 1u);
            v141 = TSCEASTElementWithChildren::child(this, 2u);
            if (!v141)
            {
              TSUDecimal::operator=();
              TSCEASTIteratorBase::createNumber(a1, &tableUID, v142, v143, v144);
            }

            v48 = this;
            v46 = v141;
LABEL_216:
            TSCEASTElementWithChildren::setChildAtIndex(v48, v46, 1, a1, v47);
LABEL_217:
            v72 = this;
            v73 = v45;
            v74 = 2;
            goto LABEL_243;
          }

          return this;
        }

        if (v7 != 64)
        {
          return this;
        }

        goto LABEL_20;
      }

      if (v7 != 81)
      {
        if (v7 != 101)
        {
          return this;
        }

        v57 = TSCEASTElementWithChildren::child(this, 0);
        v58 = sub_2210F115C(a1, v57);
        v59 = (*(*this + 48))(this, a1);
        if (!v58)
        {
          return this;
        }

        v60 = v59;
        if (v59 < 3)
        {
          return this;
        }

        v61 = TSCEASTElementWithChildren::child(this, 1u);
        v62 = TSCEASTElementWithChildren::child(this, 2u);
        TSCEASTElementWithChildren::setChildAtIndex(this, v62, 1, a1, v63);
        TSCEASTElementWithChildren::setChildAtIndex(this, v61, 2, a1, v64);
        if (v60 < 4)
        {
          return this;
        }

        v65 = TSCEASTElementWithChildren::child(this, 3u);
        v67 = TSCEASTElementWithChildren::child(this, 4u);
        if (!v67)
        {
          TSUDecimal::operator=();
          TSCEASTIteratorBase::createNumber(a1, &tableUID, v68, v69, v70);
        }

        TSCEASTElementWithChildren::setChildAtIndex(this, v67, 3, a1, v66);
        v72 = this;
        v73 = v65;
        v74 = 4;
        goto LABEL_243;
      }

      v145 = TSCEASTElementWithChildren::child(this, 1u);
      if (!sub_2210F115C(a1, v145))
      {
        return this;
      }

      v146 = TSCEASTElementWithChildren::child(this, 1u);
      v147 = (*(*v146 + 40))(v146, a1);
      v148 = TSCEASTElement::tag(v147, a1);
      if (v148 == 28)
      {
LABEL_134:
        v282._flags = 0;
        v279._topLeft = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
        TSCEASTColonElement::rangeReference(v147, a1, &v282, &v279._topLeft, &tableUID);
        v279 = tableUID;
        if (TSCERangeCoordinate::isValid(&v279))
        {
          if (!sub_2210F0FCC(a1, &v281, v152, v153, v154))
          {
            return this;
          }

          v155 = v279._bottomRight.column == 0x7FFF || v279._topLeft.column == 0x7FFF;
          v156 = v155 ? 0 : v279._bottomRight.column - v279._topLeft.column + 1;
          v157 = v279._bottomRight.row == 0x7FFFFFFF || v279._topLeft.row == 0x7FFFFFFF;
          v158 = v157 ? 0 : v279._bottomRight.row - v279._topLeft.row + 1;
          if (v156 != v158)
          {
            return this;
          }
        }

        goto LABEL_20;
      }

      if (v148 != 67)
      {
        if (v148 != 45)
        {
          goto LABEL_20;
        }

        goto LABEL_134;
      }

      v26 = TSCEASTColonTractElement::relativeTractRef(v147, a1, v149, v150, v151);
      tableUID._decimal.w[0] = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
      v238 = objc_msgSend_absoluteCellTractRefForHostCell_(v26, v235, &tableUID, v236, v237);
      tableUID._decimal.w[0] = 0;
      tableUID._decimal.w[1] = 0;
      if (objc_msgSend_hasTableUID(v26, v239, v240, v241, v242))
      {
        tableUID._decimal.w[0] = objc_msgSend_tableUID(v26, v243, v244, v245, v246);
      }

      else
      {
        v263 = TSCEFormulaRewriteContext::containingCell(a1[1]);
        upper = v263->var0.var0._tableUID._upper;
        tableUID._decimal.w[0] = v263->var0.var0._tableUID._lower;
      }

      tableUID._decimal.w[1] = upper;
      if (objc_msgSend_spansAllRows(v238, upper, v248, v249, v250))
      {
        v268 = 1;
      }

      else
      {
        v268 = objc_msgSend_spansAllColumns(v238, v264, v265, v266, v267);
      }

      if (sub_2210F0FCC(a1, &tableUID, v265, v266, v267))
      {
        if ((v268 & 1) != 0 || (v273 = objc_msgSend_numColumns(v238, v269, v270, v271, v272), v273 == objc_msgSend_numRows(v238, v274, v275, v276, v277)))
        {

          goto LABEL_20;
        }
      }
    }

    return this;
  }

  switch(v7)
  {
    case 337:
      v212 = TSCEASTElementWithChildren::child(this, 0);
      *(v212 + 16) |= 2u;
      return this;
    case 338:
    case 347:
    case 365:
      goto LABEL_3;
    case 339:
    case 340:
    case 341:
    case 342:
    case 362:
    case 363:
    case 364:
    case 367:
    case 371:
      return this;
    case 343:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v169 = sub_2210F0FCC(a1, &tableUID, v186, v187, v188);
      v189 = TSCEASTElementWithChildren::child(this, 0);
      v171 = sub_2210F115C(a1, v189);
      if (!v169 || !v171)
      {
        goto LABEL_165;
      }

      v190 = (*(*this + 48))(this, a1);
      if (v190 >= 4)
      {
        v193 = TSCEASTElementWithChildren::child(this, 3u);
        v194 = TSCEASTElement::tag(v193, a1);
        if (v194 == 19)
        {
          v201 = TSCEASTBooleanElement::value(v193, a1, v195, v196, v197);
          TSCEASTBooleanElement::setValue(v193, !v201, a1, v202, v203);
          v72 = this;
          v73 = v193;
          v74 = 3;
LABEL_243:
          TSCEASTElementWithChildren::setChildAtIndex(v72, v73, v74, a1, v71);
          return this;
        }

        if ((v194 - 23) > 1)
        {
          TSCEASTRewriter::createFunction(a1, 0x60, v193, v196, v197, v198, v199, v200, 0);
        }

LABEL_242:
        TSCEASTIteratorBase::createBool(a1, 1, v195, v196, v197);
      }

      v234 = v190;
      if (!v190)
      {
        return this;
      }

      if (v190 == 1)
      {
        TSCEASTFunctionElement::setNumArgs(this, 4, a1, v191, v192);
        goto LABEL_211;
      }

      v259 = TSCEASTElementWithChildren::child(this, 1u);
      if (v234 == 3)
      {
        v260 = TSCEASTElementWithChildren::child(this, 2u);
        TSCEASTFunctionElement::setNumArgs(this, 4, a1, v261, v262);
        if (!v259)
        {
          TSCEASTIteratorBase::createTagOnlyOp(a1, 0x17, v195, v196, v197);
        }

        if (v260)
        {
          goto LABEL_242;
        }
      }

      else
      {
        TSCEASTFunctionElement::setNumArgs(this, 4, a1, v257, v258);
        if (!v259)
        {
LABEL_211:
          TSCEASTIteratorBase::createTagOnlyOp(a1, 0x17, v195, v196, v197);
        }
      }

      TSCEASTIteratorBase::createTagOnlyOp(a1, 0x17, v195, v196, v197);
    case 344:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v207 = sub_2210F0FCC(a1, &tableUID, v204, v205, v206);
      v208 = (*(*this + 48))(this, a1);
      if (v208)
      {
        v209 = v208;
        for (i = 0; i != v209; ++i)
        {
          if ((((i != 0) ^ i) & 1) == 0)
          {
            v211 = TSCEASTElementWithChildren::child(this, i);
            if (v207 != sub_2210F115C(a1, v211))
            {
              sub_2210F13C0(a1, this, i);
            }
          }
        }
      }

      return this;
    case 345:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v169 = sub_2210F0FCC(a1, &tableUID, v166, v167, v168);
      v170 = TSCEASTElementWithChildren::child(this, 0);
      v171 = sub_2210F115C(a1, v170);
      if (v169 && v171)
      {
        v172 = (*(*this + 48))(this, a1);
        if (v172 >= 2)
        {
          v164 = TSCEASTElementWithChildren::child(this, 1u);
          v176 = TSCEASTElement::tag(v164, a1);
          if (v176 != 19)
          {
            if ((v176 - 23) <= 1)
            {
              TSCEASTIteratorBase::createBool(a1, 1, v177, v178, v179);
            }

            TSCEASTRewriter::createFunction(a1, 0x60, v164, v178, v179, v180, v181, v182, 0);
          }

          v183 = TSCEASTBooleanElement::value(v164, a1, v177, v178, v179);
          TSCEASTBooleanElement::setValue(v164, !v183, a1, v184, v185);
          goto LABEL_207;
        }

        if (v172 == 1)
        {
          TSCEASTIteratorBase::createBool(a1, 1, v173, v174, v175);
        }
      }

      else
      {
LABEL_165:
        if ((v171 | v169))
        {
          goto LABEL_176;
        }
      }

      return this;
    case 346:
      v160 = (*(*this + 48))(this, a1);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      if (!sub_2210F0FCC(a1, &tableUID, v161, v162, v163))
      {
        return this;
      }

      if (v160 < 2)
      {
        if (v160 == 1)
        {
          TSCEASTElementWithChildren::child(this, 0);
          TSUDecimal::operator=();
          TSCEASTIteratorBase::createNumber(a1, &tableUID, v230, v231, v232);
        }

        return this;
      }

      v164 = TSCEASTElementWithChildren::child(this, 0);
      v165 = TSCEASTElementWithChildren::child(this, 1u);
      TSCEASTElementWithChildren::setChildAtIndex(this, v165, 0, a1, v233);
LABEL_207:
      v72 = this;
      v73 = v164;
      v74 = 1;
      goto LABEL_243;
    case 348:
    case 349:
      v107 = TSCEASTElementWithChildren::child(this, 0);
      v108 = sub_2210F115C(a1, v107);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v12 = sub_2210F0FCC(a1, &tableUID, v109, v110, v111);
      if (v12 && (v108 & 1) != 0)
      {
        if (v8 == 348)
        {
          v112 = 349;
        }

        else
        {
          v112 = 348;
        }

        TSCEASTFunctionElement::setFunctionIndex(this, v112, a1, v14, v15);
        v113 = (*(*this + 48))(this, a1);
        if (v113 < 3)
        {
          if (v113 == 2)
          {
            TSCEASTElementWithChildren::child(this, 1u);
            TSCEASTIteratorBase::createBool(a1, 1, v224, v225, v226);
          }

          TSCEASTIteratorBase::createBool(a1, 1, v114, v115, v116);
        }

        v45 = TSCEASTElementWithChildren::child(this, 2u);
        v117 = TSCEASTElement::tag(v45, a1);
        if (v117 != 19)
        {
          if ((v117 - 23) <= 1)
          {
            TSCEASTIteratorBase::createBool(a1, 1, v118, v119, v120);
          }

          v251 = TSCEASTElementWithChildren::child(this, 2u);
          TSCEASTRewriter::createFunction(a1, 0x60, v251, v252, v253, v254, v255, v256, 0);
        }

        v121 = TSCEASTBooleanElement::value(v45, a1, v118, v119, v120);
        TSCEASTBooleanElement::setValue(v45, !v121, a1, v122, v123);
        goto LABEL_217;
      }

      if ((v108 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_176;
    case 350:
    case 351:
    case 352:
      v40 = TSCEASTElementWithChildren::child(this, 0);
      if (!sub_2210F115C(a1, v40))
      {
        return this;
      }

      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      if (!sub_2210F0FCC(a1, &tableUID, v41, v42, v43))
      {
        goto LABEL_176;
      }

      v44 = (*(*this + 48))(this, a1);
      if (v44 >= 3)
      {
        v45 = TSCEASTElementWithChildren::child(this, 1u);
        v46 = TSCEASTElementWithChildren::child(this, 2u);
        v48 = this;
        goto LABEL_216;
      }

      if (v44 == 2)
      {
        TSCEASTElementWithChildren::child(this, 1u);
        TSUDecimal::operator=();
        TSCEASTIteratorBase::createNumber(a1, &tableUID, v227, v228, v229);
      }

      return this;
    case 353:
    case 354:
      v90 = TSCEASTElementWithChildren::child(this, 0);
      v84 = sub_2210F115C(a1, v90);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v12 = sub_2210F0FCC(a1, &tableUID, v91, v92, v93);
      if (!v12 || !v84)
      {
        goto LABEL_81;
      }

      if (v8 == 354)
      {
        v94 = 353;
      }

      else
      {
        v94 = 354;
      }

      goto LABEL_195;
    case 355:
    case 356:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v98 = sub_2210F0FCC(a1, &tableUID, v95, v96, v97);
      v99 = (*(*this + 48))(this, a1);
      if (!v99)
      {
        if ((v98 & 1) == 0)
        {
          return this;
        }

        goto LABEL_191;
      }

      v100 = v99;
      v101 = 0;
      v102 = 0;
      do
      {
        v103 = TSCEASTElementWithChildren::child(this, v101);
        v102 += sub_2210F115C(a1, v103);
        ++v101;
      }

      while (v100 != v101);
      if (v100 == v102)
      {
        v104 = v98;
      }

      else
      {
        v104 = 0;
      }

      if (v104)
      {
LABEL_191:
        v88 = v8 == 355;
        v89 = 355;
        goto LABEL_192;
      }

      for (j = 0; j != v100; ++j)
      {
        v106 = TSCEASTElementWithChildren::child(this, j);
        if (sub_2210F115C(a1, v106))
        {
          sub_2210F13C0(a1, this, j);
        }
      }

      if (!v98)
      {
        return this;
      }

LABEL_110:

      return sub_2210F14CC(a1, this, v13, v14, v15, v16, v17, v18);
    case 357:
    case 358:
      v83 = TSCEASTElementWithChildren::child(this, 0);
      v84 = sub_2210F115C(a1, v83);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v12 = sub_2210F0FCC(a1, &tableUID, v85, v86, v87);
      if (v12 && v84)
      {
        v88 = v8 == 357;
        v89 = 357;
LABEL_192:
        if (v88)
        {
          v94 = v89 + 1;
        }

        else
        {
          v94 = v89;
        }

        goto LABEL_195;
      }

LABEL_81:
      if (v84)
      {
LABEL_176:
        v138 = a1;
        v139 = this;
        v137 = 0;
        goto LABEL_177;
      }

LABEL_4:
      if (v12)
      {
        goto LABEL_110;
      }

      return this;
    case 359:
    case 360:
    case 361:
      v32 = (*(*this + 48))(this, a1);
      if (v32)
      {
        v33 = v32;
        for (k = 0; k != v33; ++k)
        {
          v35 = TSCEASTElementWithChildren::child(this, k);
          if (sub_2210F115C(a1, v35))
          {
            sub_2210F13C0(a1, this, k);
          }
        }
      }

      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v39 = sub_2210F0FCC(a1, &tableUID, v36, v37, v38);
      if (v8 == 359 || (v39 & 1) == 0)
      {
        return this;
      }

      goto LABEL_110;
    case 366:
    case 372:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v78 = sub_2210F0FCC(a1, &tableUID, v75, v76, v77);
      v79 = (*(*this + 48))(this, a1);
      v80 = v79 - 1;
      if (v79 != 1)
      {
        v81 = 0;
        do
        {
          v82 = TSCEASTElementWithChildren::child(this, v81);
          if (v78 != sub_2210F115C(a1, v82))
          {
            sub_2210F13C0(a1, this, v81);
          }

          ++v81;
        }

        while (v80 != v81);
      }

      return this;
    case 368:
      v159 = TSCEASTElementWithChildren::child(this, 1u);
      if (sub_2210F115C(a1, v159))
      {
        sub_2210F13C0(a1, this, 1u);
      }

LABEL_3:
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v12 = sub_2210F0FCC(a1, &tableUID, v9, v10, v11);
      goto LABEL_4;
    case 369:
    case 370:
      v124 = TSCEASTElementWithChildren::child(this, 0);
      v125 = sub_2210F115C(a1, v124);
      tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
      v129 = sub_2210F0FCC(a1, &tableUID, v126, v127, v128);
      if (v125)
      {
        if (v8 == 369)
        {
          v130 = 370;
        }

        else
        {
          v130 = 369;
        }

        TSCEASTFunctionElement::setFunctionIndex(this, v130, a1, v14, v15);
      }

      if (v125 != v129)
      {
        goto LABEL_110;
      }

      return this;
    default:
      if (v7 == 234)
      {
        goto LABEL_120;
      }

      return this;
  }
}

TSCEASTElementWithChildren *sub_2210F29AC(TSCEASTIteratorBase *a1, TSCEASTElementWithChildren *a2)
{
  v8 = a2;
  if (sub_2210CDC18(a1 + 27, &v8))
  {
    sub_2210CDD04(a1 + 27, &v8);
    v3 = (*(*v8 + 48))(v8, a1);
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = TSCEASTElementWithChildren::child(v8, i);
        if (sub_2210F115C(a1, v6))
        {
          sub_2210F13C0(a1, v8, i);
        }
      }
    }
  }

  return v8;
}

uint64_t sub_2210F2A74(uint64_t a1, TSCEASTElement *a2, TSKUIDStruct *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  if (sub_2210F0F80(a1, a2, a3, a4, a5))
  {
    v10 = sub_221089E8C(a1);
    v15 = objc_msgSend_tableUID(*(a1 + 200), v11, v12, v13, v14);
    v18 = objc_msgSend_resolverForTableUID_(v10, v16, v15, v16, v17);

    if (!v18 || (v23 = sub_2210F0F24(a1, v19, v20, v21, v22), v24 = v23, v23 == 0x7FFFFFFF) || (v23 & 0xFFFF00000000) == 0x7FFF00000000 || v19 == 0x7FFFFFFF || (v19 & 0xFFFF00000000) == 0x7FFF00000000 || (v25 = WORD2(v19), WORD2(v19) < WORD2(v23)) || v23 > v19)
    {
      v46 = MEMORY[0x277D81150];
      v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "TSCEASTElement *TSCEASTTransposeRewriter::shouldTransformSpanningColumnToBodyRangeReference(TSCEASTElement *, const TSCEOwnerUID &, TSUColumnIndex, BOOL, TSUCellCoord)", v21, v22);
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTTransposeRewriter.mm", v49, v50);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v51, 991, 0, "Table's bodyRange wasn't valid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
      TSCEASTIteratorBase::createReferenceError(a1, v57, v58, v59, v60);
    }

    v26 = TSCEASTElement::functionArgSpec(a2, a1);
    v31 = v26;
    if (v26)
    {
      v32 = objc_msgSend_argumentType(v26, v27, v28, v29, v30);
      if (objc_msgSend_accessorMode(v31, v33, v34, v35, v36) != 1 || v32 == 1 || v32 == 6 || v32 == 255)
      {
        v41 = sub_2210F0F80(a1, v37, v38, v39, v40);
        *(&v42 + 1) = v6;
        *&v42 = v24;
        v68.coordinate = ((v42 >> 32) & 0xFFFF0000FFFFLL);
        v68._tableUID = *a3;
        v67.coordinate.row = v25 - v41;
        *&v67.coordinate.column = v6;
        v67._tableUID = *a3;
        v66._flags = v5;
        tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        v43 = TSCEASTIteratorBase::createReference(a1, &v68, &v66, &tableUID, &coordinate, 0);
        v63 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v62 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        v44 = TSCEASTIteratorBase::createReference(a1, &v67, &v66, &v63, &v62, 0);
        TSCEASTRewriter::createBinaryOp(a1, 0x1C, v43, v44, v45);
      }
    }
  }

  return 0;
}

id sub_2210F2DAC(uint64_t a1, TSCEASTElement *a2, void *a3)
{
  v5 = a3;
  v14 = v5;
  if (sub_2210F0F80(a1, v6, v7, v8, v9))
  {
    v14 = v5;
    if (objc_msgSend_spansAllRows(v5, v10, v11, v12, v13))
    {
      v108._lower = 0;
      v108._upper = 0;
      if (objc_msgSend_hasTableUID(v5, v15, v16, v17, v18))
      {
        v108._lower = objc_msgSend_tableUID(v5, v19, v20, v21, v22);
      }

      else
      {
        v24 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        upper = v24->var0.var0._tableUID._upper;
        v108._lower = v24->var0.var0._tableUID._lower;
      }

      v108._upper = upper;
      v25 = sub_221089E8C(a1);
      v30 = objc_msgSend_tableUID(*(a1 + 200), v26, v27, v28, v29);
      v33 = objc_msgSend_resolverForTableUID_(v25, v31, v30, v31, v32);

      v105 = v33;
      if (v33)
      {
        v38 = sub_2210F0F24(a1, v34, v35, v36, v37);
        v39 = v38;
        v40 = v34;
        v41 = HIDWORD(v38);
        if (v38 != 0x7FFFFFFF)
        {
          v42 = WORD2(v38);
          if (WORD2(v38) != 0x7FFFLL && v34 != 0x7FFFFFFF && (v34 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            v43 = WORD2(v34);
            if (WORD2(v34) >= WORD2(v38) && v38 <= v34)
            {
              v44 = TSCEASTElement::functionArgSpec(a2, a1);
              v49 = v44;
              v50 = v105;
              if (v44)
              {
                v51 = objc_msgSend_argumentType(v44, v45, v46, v47, v48);
                if (objc_msgSend_accessorMode(v49, v52, v53, v54, v55) != 1 || v51 == 1 || v51 == 6 || v51 == 255)
                {
                  v106._begin = v42;
                  v106._end = v43 - sub_2210F0F80(a1, v56, v57, v58, v59);
                  TSUIndexSet::TSUIndexSet(&v107, &v106);
                  objc_msgSend_setRows_(v5, v60, &v107, v61, v62);
                  TSUIndexSet::~TSUIndexSet(&v107);
                }
              }

              v14 = v5;
LABEL_33:

              goto LABEL_34;
            }
          }
        }
      }

      else
      {
        v40 = 0x7FFF7FFFFFFFLL;
        v39 = 0x7FFFFFFF;
        LOWORD(v41) = 0x7FFF;
      }

      if (!v5)
      {
        v63 = MEMORY[0x277D81150];
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "TSCECellTractRef *TSCEASTTransposeRewriter::transformSpanningColumnToBodyRangeReference(TSCEASTElement *, TSCECellTractRef *__strong, TSUCellCoord)", v36, v37);
        v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTTransposeRewriter.mm", v66, v67);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v69, v64, v68, 1033, 0, "invalid nil value for '%{public}s'", "absTractRef");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72, v73);
      }

      if (!v105)
      {
        v74 = MEMORY[0x277D81150];
        v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "TSCECellTractRef *TSCEASTTransposeRewriter::transformSpanningColumnToBodyRangeReference(TSCEASTElement *, TSCECellTractRef *__strong, TSUCellCoord)", v36, v37);
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTTransposeRewriter.mm", v77, v78);
        v80 = TSKUIDStruct::description(&v108);
        v81 = sub_221089E8C(a1);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v82, v75, v79, 1034, 0, "Couldn't locate a table with uid: %@ in calcEngine %p", v80, v81);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85, v86);
      }

      if (v41 == 0x7FFFLL || v39 == 0x7FFFFFFFLL || v40 == 0x7FFFFFFF || (v40 & 0xFFFF00000000) == 0x7FFF00000000 || v41 > WORD2(v40) || v39 > v40)
      {
        v87 = MEMORY[0x277D81150];
        v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "TSCECellTractRef *TSCEASTTransposeRewriter::transformSpanningColumnToBodyRangeReference(TSCEASTElement *, TSCECellTractRef *__strong, TSUCellCoord)", v36, v37);
        v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTTransposeRewriter.mm", v90, v91);
        *&v107 = objc_msgSend_resolverUID(v105, v93, v94, v95, v96);
        v107._singleRange._begin = v97;
        v98 = TSKUIDStruct::description(&v107);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v99, v88, v92, 1035, 0, "Table %@ bodyRange wasn't valid", v98);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101, v102, v103);
      }

      v14 = 0;
      v49 = v5;
      v50 = v105;
      goto LABEL_33;
    }
  }

LABEL_34:

  return v14;
}

void sub_2210F31BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSUIndexSet *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  TSUIndexSet::~TSUIndexSet(&a15);

  _Unwind_Resume(a1);
}

TSCEASTRelativeCoordRefElement *sub_2210F327C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v4, v5, v6);
    upper = v10;
  }

  else
  {
    v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v7->var0.var0._tableUID._lower;
    upper = v7->var0.var0._tableUID._upper;
  }

  v92.var2 = lower;
  *&v92.var3 = upper;
  *&v92.var0 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  v14 = sub_2210F0FCC(a1, &v92, v11, v12, v13);
  v21 = sub_2210F0FCC(a1, &v92.var2, v15, v16, v17);
  if ((v21 & 1) == 0 && !v14)
  {
    return v2;
  }

  v22 = TSCEASTRelativeCoordRefElement::relativeCoord(v2, a1, v18, v19, v20);
  v23 = TSCEASTRelativeCoordRefElement::preserveFlags(v2, a1);
  v90 = v23;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1.coordinate;
  v24 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v28 = HIDWORD(v22);
  if ((v23 & 1) == 0)
  {
    LOWORD(v28) = 0x7FFF;
    if (WORD2(v22) != 0x7FFF)
    {
      v29 = v24->var0.var0.coordinate;
      if ((v22 >> 16) >> 16 < 1)
      {
        if ((v22 & 0x800000000000) != 0 && -SWORD2(v22) > v29.column)
        {
          goto LABEL_15;
        }
      }

      else if (999 - SWORD2(v22) < v29.column)
      {
        goto LABEL_15;
      }

      LOWORD(v28) = WORD2(v22) + v29.column;
      if ((WORD2(v22) + v29.column) >= 0x7FFFu)
      {
        v81 = MEMORY[0x277D81150];
        v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v26, v27);
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v31, v32);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v34, v84, v33, 168, 0, "overflow in column");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
      }
    }
  }

LABEL_15:
  v39 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  if ((v23 & 2) != 0)
  {
    v45 = v22;
    if (v22 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (v22 == 0x7FFFFFFF)
  {
    goto LABEL_34;
  }

  v44 = v39->var0.var0.coordinate;
  if (v22 >= 1)
  {
    if ((999999 - v22) < v44.row)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (!v22 || v44.row >= -v22)
  {
LABEL_28:
    if (v44.row == 0x7FFFFFFF)
    {
      v80 = MEMORY[0x277D81150];
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v42, v43);
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v50, v51);
      v52 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v53, v85, v82, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v52);

      v54 = v85;
LABEL_33:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
      goto LABEL_34;
    }

    v45 = v22 + v44.row;
    if ((v22 + v44.row) >= 0x7FFFFFFF)
    {
      v83 = MEMORY[0x277D81150];
      v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v42, v43);
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v57, v58);
      row = v44.row;
      v60 = v83;
      v82 = v59;
      v54 = v86;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v61, v86, v59, 191, 0, "overflow in row, input row: %d with host row: %lu", v22, row);
      goto LABEL_33;
    }

LABEL_21:
    if (v21)
    {
      v46 = v28 != 0x7FFF;
      v47 = v28 == 0x7FFF;
      if (v45 >= 0x3E8)
      {
        v48 = *(a1 + 208);
        if (v48 <= 1)
        {
          v48 = 1;
        }

        *(a1 + 208) = v48;
        TSCEASTIteratorBase::createReferenceError(a1, v40, v41, v42, v43);
      }

      v55 = 0;
LABEL_43:
      *&v89._preserveRow = 0;
      v88._flags = __rbit32(v23) >> 30;
      v71 = v55 | v46;
      if (v23)
      {
        if (v71)
        {
          v72 = SWORD2(v22);
        }

        else
        {
          v72 = 0x7FFFFFFF;
        }
      }

      else if (v71)
      {
        v72 = v28 - coordinate;
      }

      else
      {
        v72 = 0x7FFFFFFF;
      }

      v89._row = v72;
      v73 = v46 || v47;
      if ((v23 & 2) != 0)
      {
        if (v73)
        {
          v74 = v22;
        }

        else
        {
          v74 = 0x7FFF;
        }
      }

      else
      {
        v74 = 0x7FFF;
        if (v73)
        {
          if (v45 != 0x7FFF)
          {
            LOWORD(v45) = v45 - WORD2(coordinate);
          }

          v74 = v45;
          if (v45 > 999)
          {
            v75 = *(a1 + 208);
            if (v75 <= 1)
            {
              v75 = 1;
            }

            *(a1 + 208) = v75;
            TSCEASTIteratorBase::createReferenceError(a1, v40, v41, v42, v43);
          }
        }
      }

      v89._column = v74;
      if (v2)
      {
        v76 = (*(*v2 + 96))(v2, a1);
      }

      else
      {
        v76 = 0;
      }

      v77 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if (lower == v77->var0.var0._tableUID._lower && upper == v77->var0.var0._tableUID._upper)
      {
        v92.var0 = 0;
        v92.var1 = 0;
      }

      else
      {
        *&v92.var0 = *&v92.var2;
      }

      TSCEASTIteratorBase::createRelativeCoordReference(a1, &v92, &v89, &v88, v76);
    }

    goto LABEL_38;
  }

LABEL_34:
  if ((v21 & 1) == 0)
  {
    v45 = 0x7FFFFFFF;
LABEL_38:
    v93.row = v45;
    *&v93.column = v28;
    v66 = &v90;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(coordinate, v93, v66, v42);
    TSCEASTRelativeCoordRefElement::setRelativeCoord(v2, &RelativeCellCoordinateFromAbsoluteCoordinates, a1, v67, v68);
    return v2;
  }

  if (v28 == 0x7FFF)
  {
    v47 = 0;
    v55 = 0;
    v46 = 0;
LABEL_42:
    LOWORD(v45) = -1;
    goto LABEL_43;
  }

  v69 = sub_2210F2A74(a1, v2, &v92.var2, v28, v23 & 1);
  if (!v69)
  {
    v47 = 0;
    v46 = 0;
    v55 = 1;
    goto LABEL_42;
  }

  v70 = v69;
  (*(*a1 + 24))(a1, v2);
  return v70;
}

TSCEASTColonTractElement *sub_2210F3904(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  tableUID._lower = objc_msgSend_tableUID(v7, v8, v9, v10, v11);
  tableUID._upper = v12;
  if (!(tableUID._lower | v12))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
  }

  v38 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
  v16 = sub_2210F0FCC(a1, &v38, v13, v14, v15);
  v20 = sub_2210F0FCC(a1, &tableUID, v17, v18, v19);
  v21 = v20;
  if ((v20 | v16))
  {
    v38._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    if (v16)
    {
      v38._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1.coordinate;
    }

    coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    v25 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v22, &coordinate, v23, v24);
    if (v21)
    {
      v26 = sub_2210F2DAC(a1, this, v25);

      if (!v26 || !objc_msgSend_transpose(v26, v27, v28, v29, v30))
      {
        v35 = *(a1 + 52);
        if (v35 <= 1)
        {
          v35 = 1;
        }

        *(a1 + 52) = v35;
        TSCEASTIteratorBase::createReferenceError(a1, v27, v28, v29, v30);
      }

      v25 = v26;
    }

    else if ((v16 & 1) == 0)
    {
LABEL_12:

      goto LABEL_16;
    }

    v31 = [TSCERelativeTractRef alloc];
    v34 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v31, v32, v25, &v38, v33);
    TSCEASTColonTractElement::setRelativeTractRef(this, v34, v7, a1, 0);

    goto LABEL_12;
  }

LABEL_16:

  return this;
}

void sub_2210F3B18(id *a1)
{
  *a1 = &unk_2834A1BE8;
  sub_2210BDEC0((a1 + 27));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2210F3B74(id *a1)
{
  *a1 = &unk_2834A1BE8;
  sub_2210BDEC0((a1 + 27));

  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void *sub_2210F3BE4(void *a1, void *a2)
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

void sub_2210F3F04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2210F4734(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2210F4F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, void *a15, uint64_t a16, void *a17, TSUIndexSet *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__pa, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  TSUIndexSet::~TSUIndexSet(&__pa);
  TSUIndexSet::~TSUIndexSet(&a26);

  _Unwind_Resume(a1);
}

void sub_2210F5698(_Unwind_Exception *a1, _Unwind_Exception *exception_object, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSUIndexSet *a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_objecta, void *a11, void *a12, TSUIndexSet *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  TSUIndexSet::~TSUIndexSet(&a15);

  TSUIndexSet::~TSUIndexSet(&a24);
  TSUIndexSet::~TSUIndexSet((v32 - 120));

  _Unwind_Resume(a1);
}

void sub_2210F5F10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v612 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_tableStylePreset(*(a1 + 32), a2, a3, a4, a5);

  if (!v6)
  {
    objc_msgSend_setTableStylePreset_(*(a1 + 40), v7, 0, v8, v9);
  }

  objc_msgSend_setCalcEngine_(*(a1 + 40), v7, 0, v8, v9);
  if (*(a1 + 120) == 1)
  {
    v14 = objc_msgSend_calcEngine(*(a1 + 32), v10, v11, v12, v13);

    if (v14)
    {
      v15 = objc_msgSend_calcEngine(*(a1 + 32), v10, v11, v12, v13);
      objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v15, v16, v17, v18, v19, 0.2);
    }
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    v25 = objc_msgSend_fromTableUID(v20, v10, v11, v12, v13);
    v26 = *(a1 + 32);
    if (v25 | v21)
    {
      v27 = objc_msgSend_fromTableUID(v26, v21, v22, v23, v24);
    }

    else
    {
      v27 = objc_msgSend_tableUID(v26, v21, v22, v23, v24);
    }

    objc_msgSend_setFromTableUID_(*(a1 + 40), v28, v27, v28, v29);
    v34 = objc_msgSend_fromGroupByUID(*(a1 + 32), v30, v31, v32, v33);
    if (v34 | v35)
    {
      v39 = objc_msgSend_fromGroupByUID(*(a1 + 32), v35, v36, v37, v38);
    }

    else
    {
      v39 = objc_msgSend_groupByUid(*(a1 + 48), v35, v36, v37, v38);
    }

    objc_msgSend_setFromGroupByUID_(*(a1 + 40), v40, v39, v40, v41);
    v20 = *(a1 + 32);
  }

  v42 = *(a1 + 88);
  v43 = objc_msgSend_repeatingHeaderRowsEnabled(v20, v10, v11, v12, v13);
  v44 = (a1 + 40);
  objc_msgSend_setRepeatingHeaderRowsEnabled_(*(a1 + 40), v45, v43, v46, v47);
  v52 = objc_msgSend_repeatingHeaderColumnsEnabled(*(a1 + 32), v48, v49, v50, v51);
  objc_msgSend_setRepeatingHeaderColumnsEnabled_(*(a1 + 40), v53, v52, v54, v55);
  v60 = objc_msgSend_headerRowsFrozen(*(a1 + 32), v56, v57, v58, v59);
  objc_msgSend_setHeaderRowsFrozen_(*(a1 + 40), v61, v60, v62, v63);
  v68 = objc_msgSend_headerColumnsFrozen(*(a1 + 32), v64, v65, v66, v67);
  objc_msgSend_setHeaderColumnsFrozen_(*(a1 + 40), v69, v68, v70, v71);
  v72 = (a1 + 48);
  v77 = objc_msgSend_headerRowRange(*(a1 + 48), v73, v74, v75, v76);
  v545 = v78;
  v547 = v77;
  v588.origin = sub_221119E0C(v77, v78, *(a1 + 88), *(a1 + 96));
  v588.size = v79;
  v80 = TSUCellRect::numRows(&v588);
  v84 = v80 - (v80 >= TSUCellRect::numRows((a1 + 88)));
  if (v84 >= 5)
  {
    objc_msgSend_setNumberOfHeaderRows_(*v44, v81, 5, v82, v83);
  }

  else
  {
    objc_msgSend_setNumberOfHeaderRows_(*v44, v81, v84, v82, v83);
  }

  v89 = objc_msgSend_headerColumnRange(*v72, v85, v86, v87, v88);
  v588.origin = sub_221119E0C(v89, v90, *(a1 + 88), *(a1 + 96));
  v588.size = v91;
  v92 = TSUCellRect::numColumns(&v588);
  v96 = v92 - (v92 >= TSUCellRect::numColumns((a1 + 88)));
  if (v96 >= 5)
  {
    LOWORD(v96) = 5;
  }

  objc_msgSend_setNumberOfHeaderColumns_(*v44, v93, v96, v94, v95);
  v101 = objc_msgSend_footerRowRange(*v72, v97, v98, v99, v100);
  v103 = v102;
  if (objc_msgSend_isAPivotTable(*v72, v102, v104, v105, v106))
  {
    v111 = objc_msgSend_pivotOwner(*(a1 + 48), v107, v108, v109, v110);
    if (objc_msgSend_flatteningDimension(v111, v112, v113, v114, v115))
    {
      v120 = 1;
    }

    else
    {
      v121 = objc_msgSend_pivotOwner(*(a1 + 48), v116, v117, v118, v119);
      v126 = objc_msgSend_aggregates(v121, v122, v123, v124, v125);
      v131 = objc_msgSend_count(v126, v127, v128, v129, v130);

      if (v131 <= 1)
      {
        v120 = 1;
      }

      else
      {
        v120 = v131;
      }
    }

    Column = TSUCellRect::firstColumn((a1 + 88));
    v101 = (objc_msgSend_numberOfRows(*(a1 + 48), v133, v134, v135, v136) - v120) | (Column << 32);
    v103 = TSUCellRect::numColumns((a1 + 88)) | (v120 << 32);
  }

  v588.origin = sub_221119E0C(v101, v103, *(a1 + 88), *(a1 + 96));
  v588.size = v137;
  v138 = TSUCellRect::numRows(&v588);
  v142 = v138 - (v138 >= TSUCellRect::numRows((a1 + 88)));
  if (v142 >= 5)
  {
    v143 = 5;
  }

  else
  {
    v143 = v142;
  }

  objc_msgSend_setNumberOfFooterRows_(*(a1 + 40), v139, v143, v140, v141);
  v148 = objc_msgSend_tableNameEnabled(*(a1 + 32), v144, v145, v146, v147);
  objc_msgSend_setTableNameEnabled_(*(a1 + 40), v149, v148, v150, v151);
  v152 = [TSTStrokeSidecar alloc];
  v156 = objc_msgSend_initWithTableModel_(v152, v153, *(a1 + 40), v154, v155);
  objc_msgSend_setStrokeSidecar_(*(a1 + 40), v157, v156, v158, v159);

  if (*(a1 + 121) == 1)
  {
    v164 = *(a1 + 40);
    v165 = objc_msgSend_tableName(*(a1 + 32), v160, v161, v162, v163);
    objc_msgSend_setTableName_(v164, v166, v165, v167, v168);

    v169 = *(a1 + 40);
    v174 = objc_msgSend_tableNameBorderEnabled(*(a1 + 32), v170, v171, v172, v173);
    objc_msgSend_setTableNameBorderEnabled_(v169, v175, v174, v176, v177);
    v178 = *(a1 + 40);
    objc_msgSend_tableNameHeight(*(a1 + 32), v179, v180, v181, v182);
    objc_msgSend_setTableNameHeight_(v178, v183, v184, v185, v186);
    v187 = *(a1 + 40);
    v192 = objc_msgSend_styleApplyClearsAll(*(a1 + 32), v188, v189, v190, v191);
    objc_msgSend_setStyleApplyClearsAll_(v187, v193, v192, v194, v195);
  }

  v196 = *(a1 + 40);
  objc_msgSend_defaultRowHeight(*(a1 + 32), v160, v161, v162, v163);
  objc_msgSend_setDefaultRowHeight_(v196, v197, v198, v199, v200);
  v201 = *(a1 + 40);
  objc_msgSend_defaultColumnWidth(*(a1 + 32), v202, v203, v204, v205);
  objc_msgSend_setDefaultColumnWidth_(v201, v206, v207, v208, v209);
  v604 = MEMORY[0x277D85DD0];
  v605 = 3221225472;
  v606 = sub_2210F7344;
  v607 = &unk_27845EB98;
  v608 = *(a1 + 48);
  v609 = *(a1 + 40);
  v610 = v42;
  TSUCellRect::enumerateRowsUsingBlock();
  v597 = MEMORY[0x277D85DD0];
  v598 = 3221225472;
  v599 = sub_2210F739C;
  v600 = &unk_27845EBC0;
  v601 = *(a1 + 48);
  v602 = *(a1 + 40);
  v603 = v42;
  TSUCellRect::enumerateColumnsUsingBlock();
  if (*(a1 + 121) == 1)
  {
    v214 = objc_msgSend_sortOrder(*(a1 + 32), v210, v211, v212, v213);
    v219 = objc_msgSend_copy(v214, v215, v216, v217, v218);
    objc_msgSend_setSortOrder_(*(a1 + 40), v220, v219, v221, v222);
  }

  v223 = objc_msgSend_translator(*(a1 + 48), v210, v211, v212, v213);
  v544 = objc_msgSend_baseCellRegionForViewCellRegion_(v223, v224, *(a1 + 56), v225, v226);
  v231 = objc_msgSend_mergeOwner(*(a1 + 32), v227, v228, v229, v230);
  v235 = v231;
  if (v231)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRegion_(v231, v232, v544, v233, v234);
  }

  else
  {
    v595 = 0;
    __p = 0;
    v596 = 0;
  }

  v240 = __p;
  v241 = v595;
  if (__p == v595)
  {
    v242 = 0;
  }

  else
  {
    v242 = 0;
    do
    {
      v243 = objc_msgSend_viewCellRegionForBaseCellRect_(v223, v236, *v240, v240[1], v239);
      v588.size = 0;
      v588.origin = 0;
      v588.origin = objc_msgSend_boundingCellRange(v243, v244, v245, v246, v247);
      v588.size = v248;
      v251 = objc_msgSend_regionByIntersectingRegion_(v243, v248, *(a1 + 56), v249, v250);
      v562.origin = 0;
      v562.size = 0;
      v562.origin = objc_msgSend_boundingCellRange(v251, v252, v253, v254, v255);
      v562.size = v256;
      v257 = TSUCellRect::firstRow(&v588);
      if (v257 < TSUCellRect::firstRow(&v562) || (v261 = TSUCellRect::firstColumn(&v588), v261 < TSUCellRect::firstColumn(&v562)))
      {
        v242 = 1;
      }

      v559.origin = ((*&v562.origin - (*(a1 + 88) & 0xFFFF00000000)) & 0xFFFF00000000 | (v562.origin.row - *(a1 + 88)));
      v559.size = v562.size;
      v262 = objc_msgSend_tableAreaForBaseCellCoord_(*(a1 + 40), v258, *&v559.origin, v259, v260);
      v263 = v262;
      if (v262 == 5)
      {
        v263 = 2;
      }

      else if (v262 == 6)
      {
        v263 = 4;
      }

      v264 = *(a1 + 40);
      v265 = TSUCellRect::bottomRight(&v559);
      v269 = objc_msgSend_tableAreaForBaseCellCoord_(v264, v266, v265, v267, v268);
      v274 = v269;
      if (v269 == 5)
      {
        v274 = 2;
      }

      else if (v269 == 6)
      {
        v274 = 4;
      }

      if (v263 != v274)
      {
        v593.origin = objc_msgSend_headerRowRange(*(a1 + 40), v270, v271, v272, v273);
        v593.size = v275;
        origin = v559.origin;
        if (TSUCellRect::contains(&v593, origin))
        {
          objc_msgSend_setNumberOfHeaderRows_(*(a1 + 40), v277, 0, v279, v280);
        }

        v593.origin = objc_msgSend_headerColumnRange(*(a1 + 40), v277, v278, v279, v280);
        v593.size = v281;
        v282 = v559.origin;
        if (TSUCellRect::contains(&v593, v282))
        {
          objc_msgSend_setNumberOfHeaderColumns_(*(a1 + 40), v270, 0, v272, v273);
        }

        if (v274 == 4)
        {
          objc_msgSend_setNumberOfFooterRows_(*(a1 + 40), v270, 0, v272, v273);
        }
      }

      v283 = objc_msgSend_mergeOwner(*(a1 + 40), v270, v271, v272, v273);
      objc_msgSend_insertBaseMergeRange_(v283, v284, *&v559.origin, *&v559.size, v285);

      v240 += 2;
    }

    while (v240 != v241);
  }

  v588.origin = 0;
  v588.size = &v588;
  v589 = 0x3032000000;
  v590 = sub_2210F7420;
  v591 = sub_2210F7430;
  v592 = 0;
  v543 = objc_msgSend_indexesForSummaryAndLabelRows(*(a1 + 48), v236, v237, v238, v239);
  v542 = objc_msgSend_indexesForCategoryColumns(*(a1 + 48), v286, v287, v288, v289);
  v541 = objc_msgSend_indexesForSummaryColumns(*(a1 + 48), v290, v291, v292, v293);
  v298 = objc_msgSend_documentRoot(*(a1 + 48), v294, v295, v296, v297);
  v540 = objc_msgSend_calculationEngine(v298, v299, v300, v301, v302);

  v303 = *(a1 + 56);
  v585[0] = MEMORY[0x277D85DD0];
  v585[1] = 3221225472;
  v585[2] = sub_2210F7438;
  v585[3] = &unk_27845EBE8;
  v304 = v543;
  v586 = v304;
  v587 = *(a1 + 64);
  objc_msgSend_enumerateRowRangesUsingBlock_(v303, v305, v585, v306, v307);
  v312 = objc_msgSend_documentRoot(*(a1 + 64), v308, v309, v310, v311);
  v539 = objc_msgSend_accessController(v312, v313, v314, v315, v316);

  v321 = objc_msgSend_hasWrite(v539, v317, v318, v319, v320);
  v322 = v242 & 1;
  if (v242)
  {
    v323 = 66;
  }

  else
  {
    v323 = 2;
  }

  v324 = *(a1 + 48);
  v325 = *(a1 + 56);
  v565[0] = MEMORY[0x277D85DD0];
  v565[1] = 3221225472;
  v565[2] = sub_2210F7488;
  v565[3] = &unk_27845EC60;
  v578 = v42;
  v582 = v322;
  v566 = *(a1 + 72);
  v567 = *(a1 + 40);
  v568 = *(a1 + 48);
  v534 = v304;
  v569 = v534;
  v535 = v542;
  v570 = v535;
  v571 = *(a1 + 80);
  v572 = *(a1 + 64);
  v583 = *(a1 + 122);
  v533 = v223;
  v573 = v533;
  v537 = v540;
  v574 = v537;
  v577 = &v588;
  v579 = *(a1 + 104);
  v538 = v539;
  v575 = v538;
  v580 = v547;
  v581 = v545;
  v536 = v541;
  v576 = v536;
  v584 = v321;
  objc_msgSend_iterateCellsInRegion_flags_searchFlags_usingBlock_(v324, v326, v325, v323, 0x20000000, v565);
  objc_storeStrong((*(a1 + 64) + 200), *(a1 + 40));
  v331 = objc_msgSend_hiddenStatesOwner(*(*(a1 + 64) + 200), v327, v328, v329, v330);
  objc_msgSend_setTableModel_(v331, v332, *(*(a1 + 64) + 200), v333, v334);

  v335 = [TSTHiddenStates alloc];
  v340 = objc_msgSend_hiddenStatesOwner(*(*(a1 + 64) + 200), v336, v337, v338, v339);
  v344 = objc_msgSend_initWithHiddenStatesOwner_(v335, v341, v340, v342, v343);
  v345 = *(a1 + 64);
  v346 = *(v345 + 328);
  *(v345 + 328) = v344;

  objc_msgSend_setTableModel_(*(*(a1 + 64) + 328), v347, *(*(a1 + 64) + 200), v348, v349);
  v350 = *(a1 + 64);
  v351 = *(v350 + 240);
  *(v350 + 240) = 0;

  v352 = [TSTTablePartitioner alloc];
  v356 = objc_msgSend_initWithInfo_(v352, v353, *(a1 + 64), v354, v355);
  v357 = *(a1 + 64);
  v358 = *(v357 + 232);
  *(v357 + 232) = v356;

  v562.origin = 0;
  v562.size = &v562;
  v563 = 0x2020000000;
  v564 = 0;
  v559.origin = 0;
  v559.size = &v559;
  v560 = 0x2020000000;
  v561 = 0;
  v593.origin = objc_msgSend_range(*(*(a1 + 64) + 200), v359, v360, v361, v362);
  v593.size = v363;
  v556[0] = MEMORY[0x277D85DD0];
  v556[1] = 3221225472;
  v556[2] = sub_2210F8A4C;
  v556[3] = &unk_27845EC88;
  v558 = &v562;
  v557 = *(a1 + 64);
  sub_22109D0C8(&v593, v556);
  v593.origin = objc_msgSend_range(*(*(a1 + 64) + 200), v364, v365, v366, v367);
  v593.size = v368;
  v553[0] = MEMORY[0x277D85DD0];
  v553[1] = 3221225472;
  v553[2] = sub_2210F8A9C;
  v553[3] = &unk_27845ECB0;
  v555 = &v559;
  v554 = *(a1 + 64);
  sub_22109D1B8(&v593, v553);
  v369 = objc_alloc(MEMORY[0x277D802E8]);
  v374 = objc_msgSend_geometry(*(a1 + 48), v370, v371, v372, v373);
  objc_msgSend_position(v374, v375, v376, v377, v378);
  v546 = objc_msgSend_initWithPosition_size_(v369, v379, v380, v381, v382);

  objc_msgSend_setPrimitiveGeometry_(*(a1 + 64), v383, v546, v384, v385);
  v390 = objc_msgSend_columnRowUIDMap(*(*(a1 + 64) + 200), v386, v387, v388, v389);
  v391 = *(a1 + 64);
  v392 = *(v391 + 296);
  *(v391 + 296) = v390;

  v393 = [TSTSummaryModel alloc];
  v397 = objc_msgSend_initWithTableInfo_(v393, v394, *(a1 + 64), v395, v396);
  v398 = *(a1 + 64);
  v399 = *(v398 + 248);
  *(v398 + 248) = v397;

  v400 = [TSTCategoryOrder alloc];
  v404 = objc_msgSend_initWithTableInfo_(v400, v401, *(a1 + 64), v402, v403);
  v405 = *(a1 + 64);
  v406 = *(v405 + 304);
  *(v405 + 304) = v404;

  v411 = objc_msgSend_baseTableModel(*(a1 + 64), v407, v408, v409, v410);
  v548 = objc_msgSend_categoryOwner(v411, v412, v413, v414, v415);

  v419 = objc_msgSend_groupByForOwnerIndex_(v548, v416, 8, v417, v418);
  v420 = *(a1 + 64);
  v421 = *(v420 + 256);
  *(v420 + 256) = v419;

  if (!*(*(a1 + 64) + 256))
  {
    v422 = [TSTGroupBy alloc];
    v425 = objc_msgSend_initWithGroupings_categoryOwner_(v422, v423, MEMORY[0x277CBEBF8], v548, v424, v533, v534, v535);
    v426 = *(a1 + 64);
    v427 = *(v426 + 256);
    *(v426 + 256) = v425;

    objc_msgSend_linkGroupBy_(v548, v428, *(*(a1 + 64) + 256), v429, v430);
  }

  v431 = [TSTTableTranslator alloc];
  v435 = objc_msgSend_initWithTableInfo_(v431, v432, *(a1 + 64), v433, v434);
  v436 = *(a1 + 64);
  v437 = *(v436 + 336);
  *(v436 + 336) = v435;

  v442 = objc_msgSend_translator(*(a1 + 48), v438, v439, v440, v441);
  v447 = objc_msgSend_coordinateMapper(v442, v443, v444, v445, v446);
  v448 = *(a1 + 64);
  v449 = *(v448 + 344);
  *(v448 + 344) = v447;

  v454 = objc_msgSend_hiddenStates(*(a1 + 48), v450, v451, v452, v453);
  objc_msgSend_copyFromHiddenStates_forRange_withContext_isWholeTableCopy_(*(*(a1 + 64) + 328), v455, v454, *(a1 + 104), *(a1 + 112), *(a1 + 80), 0);
  v551 = 0u;
  v552 = 0u;
  v549 = 0u;
  v550 = 0u;
  v460 = objc_msgSend_allRichTextStorages(*(a1 + 64), v456, v457, v458, v459);
  v465 = objc_msgSend_countByEnumeratingWithState_objects_count_(v460, v461, &v549, v611, 16);
  if (v465)
  {
    v466 = *v550;
    do
    {
      for (i = 0; i != v465; ++i)
      {
        if (*v550 != v466)
        {
          objc_enumerationMutation(v460);
        }

        objc_msgSend_setParentInfo_(*(*(&v549 + 1) + 8 * i), v462, *(a1 + 64), v463, v464, v533);
      }

      v465 = objc_msgSend_countByEnumeratingWithState_objects_count_(v460, v462, &v549, v611, 16);
    }

    while (v465);
  }

  objc_msgSend_p_updateStorageParentInfoForModels(*(a1 + 64), v468, v469, v470, v471);
  v476 = objc_msgSend_translator(*(a1 + 64), v472, v473, v474, v475);
  objc_msgSend_addReceiverToGroupBy_(v476, v477, *(*(a1 + 64) + 256), v478, v479);

  v484 = objc_msgSend_summaryModel(*(a1 + 64), v480, v481, v482, v483);
  objc_msgSend_setupReceiver(v484, v485, v486, v487, v488);

  objc_msgSend__correctAndCheckStateSuppressingAssertions_(*(a1 + 64), v489, 0, v490, v491);
  objc_msgSend__setCellBordersFlatteningFromComplexInfo_sourceRegion_(*(a1 + 64), v492, *(a1 + 48), *(a1 + 56), v493);
  if (*(a1 + 122) == 1)
  {
    v498 = *(a1 + 64);
    v499 = v498[41];
    v500 = objc_msgSend_range(v498, v494, v495, v496, v497);
    v503 = objc_msgSend_indexesOfHiddenRowsInCellRange_(v499, v501, v500, v501, v502);
    objc_msgSend_removeRowsAtBaseIndexes_(*(*(a1 + 64) + 200), v504, v503, v505, v506);
    v507 = *(a1 + 64);
    v508 = v507[41];
    v513 = objc_msgSend_range(v507, v509, v510, v511, v512);
    v516 = objc_msgSend_indexesOfHiddenColumnsInCellRange_(v508, v514, v513, v514, v515);
    objc_msgSend_removeColumnsAtBaseIndexes_(*(*(a1 + 64) + 200), v517, v516, v518, v519);

    if ((*(a1 + 122) & 1) != 0 && *(a1 + 121) == 1)
    {
      v524 = objc_msgSend_caption(*(a1 + 48), v520, v521, v522, v523);
      v529 = objc_msgSend_replicateForReinsertion(v524, v525, v526, v527, v528);
      objc_msgSend_setCaption_(*(a1 + 64), v530, v529, v531, v532);
    }
  }

  _Block_object_dispose(&v559, 8);
  _Block_object_dispose(&v562, 8);

  _Block_object_dispose(&v588, 8);
  if (__p)
  {
    v595 = __p;
    operator delete(__p);
  }
}

void sub_2210F6F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);

  _Block_object_dispose(&STACK[0x238], 8);
  v71 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v71;
    operator delete(v71);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2210F7344(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v11 = 0;
  result = objc_msgSend_heightOfRowAtIndex_isDefault_(*(a1 + 32), a2, a2, &v11, a5);
  if ((v11 & 1) == 0)
  {
    return objc_msgSend_setHeight_ofRowAtIndex_(*(a1 + 40), v8, (v5 - *(a1 + 48)), v9, v10);
  }

  return result;
}

uint64_t sub_2210F739C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v11 = 0;
  result = objc_msgSend_widthOfColumnAtIndex_isDefault_(*(a1 + 32), a2, a2, &v11, a5);
  if ((v11 & 1) == 0)
  {
    return objc_msgSend_setWidth_ofColumnAtIndex_(*(a1 + 40), v8, (v5 - *(a1 + 52)), v9, v10);
  }

  return result;
}

uint64_t *sub_2210F73F8(uint64_t *result)
{
  if (*result == 5)
  {
    v1 = 2;
  }

  else
  {
    if (*result != 6)
    {
      return result;
    }

    v1 = 4;
  }

  *result = v1;
  return result;
}

uint64_t sub_2210F7420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2210F7438(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  result = objc_msgSend_intersectsIndexesInRange_(*(a1 + 32), a2, a2, a3, a5);
  if (result)
  {
    *(*(a1 + 40) + 272) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2210F7488(uint64_t a1, void *x1_0)
{
  v434 = x1_0;
  v7 = objc_msgSend_cell(v434, v3, v4, v5, v6);
  v16 = objc_msgSend_cellID(v434, v8, v9, v10, v11);
  v17 = (v16 - *(a1 + 128));
  v18 = (WORD2(v16) - *(a1 + 132));
  v19 = (v17 & 0xFFFF0000FFFFFFFFLL | (v18 << 32));
  if (*(a1 + 168) == 1)
  {
    v450.var0 = objc_msgSend_mergeRange(v434, v12, v13, v14, v15);
    v450.var1 = v20;
    if (TSUCellRect::isValid(&v450))
    {
      var0 = v450.var0;
      if ((LODWORD(v450.var0) != v16 || ((v450.var0 ^ v16) & 0x101FFFF00000000) != 0) && (objc_msgSend_containsCellID_(*(a1 + 32), v12, v450.var0, v21, v22) & 1) == 0)
      {
        v27 = objc_msgSend_mergeOwner(*(a1 + 40), v12, v24, v25, v26);
        v31 = objc_msgSend_mergeOriginForBaseCellCoord_(v27, v28, v19, v29, v30);
        if (v17 == v31 && (v31 & 0x1FFFF00000000) == v18 << 32)
        {

          if ((v31 & 0x100000000000000) == 0)
          {
            objc_msgSend_getCell_atCellID_(*(a1 + 48), v12, v7, var0, v32);
          }
        }

        else
        {
        }
      }
    }
  }

  v33 = v16 & 0xFFFF000000000000 | (WORD2(v16) << 32) | v16;
  objc_msgSend_flattenGroupValuesIfNeededForCell_viewCellCoord_summaryAndLabelRows_categoryColumns_(*(a1 + 48), v12, v7, v33, *(a1 + 56), *(a1 + 64));
  objc_msgSend_clearDataListIDs(v7, v34, v35, v36, v37);
  if (objc_msgSend_hasFormulaSyntaxError(v7, v38, v39, v40, v41))
  {
    v46 = objc_msgSend_formulaSyntaxError(v7, v42, v43, v44, v45);
    v47 = *(a1 + 72);
    v52 = objc_msgSend_documentRoot(*(a1 + 80), v48, v49, v50, v51);
    v57 = objc_msgSend_stylesheet(v52, v53, v54, v55, v56);
    v60 = objc_msgSend_i_copyIntoContext_stylesheet_(v46, v58, v47, v57, v59);

    objc_msgSend_setFormulaSyntaxError_(v7, v61, v60, v62, v63);
  }

  if (objc_msgSend_hasRichText(v7, v42, v43, v44, v45))
  {
    v68 = objc_msgSend_richTextValue(v7, v64, v65, v66, v67);
    v72 = objc_msgSend_copyWithContext_(v68, v69, *(a1 + 72), v70, v71);

    objc_msgSend_setRichTextValue_(v7, v73, v72, v74, v75);
  }

  if (objc_msgSend_hasCommentStorage(v7, v64, v65, v66, v67))
  {
    v80 = objc_msgSend_commentStorage(v7, v76, v77, v78, v79);
    v84 = objc_msgSend_copyWithContext_(v80, v81, *(a1 + 72), v82, v83);

    objc_msgSend_setCommentStorage_(v7, v85, v84, v86, v87);
  }

  if (objc_msgSend_hasFormula(v7, v76, v77, v78, v79))
  {
    v96 = objc_msgSend_formulaObject(v7, v88, v89, v90, v91);
    if ((*(a1 + 169) & 1) != 0 || objc_msgSend_isAPivotTable(*(a1 + 48), v92, v93, v94, v95))
    {
      objc_msgSend_setCellSpec_(v7, v92, 0, v94, v95);
      if ((objc_msgSend_isAPivotTable(*(a1 + 48), v98, v99, v100, v101) & 1) != 0 || objc_msgSend_formatType(v7, v102, v103, v104, v105) != 267)
      {
        goto LABEL_43;
      }

      v109 = objc_msgSend_defaultRangeControlSpecOfType_(TSTCellRangeControlSpec, v106, 6, v107, v108);
      objc_msgSend_setCellSpec_(v7, v110, v109, v111, v112);
    }

    else if (objc_msgSend_isSpillFormula(v96, v92, v97, v94, v95))
    {
      v117 = objc_msgSend_spillOrigin(v96, v113, v114, v115, v116);
      v121 = objc_msgSend_viewCellCoordForBaseCellCoord_(*(a1 + 88), v118, v117, v119, v120);
      v122 = 0x7FFF7FFFFFFFLL;
      v123 = *(a1 + 132);
      if (v123 <= WORD2(v121))
      {
        v124 = *(a1 + 128);
        v125 = v121 >= v124;
        v126 = v121 - v124;
        if (v125)
        {
          v122 = v126 | ((WORD2(v121) - v123) << 32);
        }
      }

      v127 = [TSCEFormulaObject alloc];
      v450.var1 = 0;
      v450.var2.var0.var0.coordinate = 0;
      v450.var0 = v122;
      v464.var0._tableUID._lower = 0;
      v464.var0._tableUID._upper = 0;
      v464.var0.coordinate = (v16 & 0xFFFF000000000000 | (WORD2(v16) << 32) | v16);
      TSCEFormulaCreationMagic::cellRef(&v450, 3, v128, &v464, v129, &v467);
      TSCEFormulaCreationMagic::__SPILL(&v467, v469, v468);
      v109 = objc_msgSend_initWithCreator_(v127, v130, v468, v131, v132);

      objc_msgSend_setFormulaObject_(v7, v133, v109, v134, v135);
    }

    else
    {
      if (!*(a1 + 96))
      {
LABEL_43:

        goto LABEL_44;
      }

      v136 = objc_msgSend_baseCellCoordForViewCellCoord_(*(a1 + 88), v113, v33, v115, v116);
      v141 = objc_msgSend_tableUID(*(a1 + 48), v137, v138, v139, v140);
      *&v465 = v136;
      *(&v465 + 1) = v141;
      v466 = v142;
      v146 = objc_msgSend_tableUID(*(a1 + 40), v142, v143, v144, v145);
      v450.var0 = v19;
      v450.var1 = v146;
      v450.var2.var0.var0.coordinate = v147;
      sub_2212C726C(&v464, &v465, &v450);
      if (!*(*(*(a1 + 120) + 8) + 40))
      {
        v148 = *(a1 + 48);
        v149 = TSUCellRect::columns((a1 + 136));
        if (v148)
        {
          objc_msgSend_columnUIDsForColumnRange_(v148, v150, v149, v150, v151);
        }

        else
        {
          v461 = 0;
          v462 = 0;
          v463 = 0;
        }

        v152 = *(a1 + 48);
        v153 = TSUCellRect::rows((a1 + 136));
        if (v152)
        {
          objc_msgSend_rowUIDsForRowRange_(v152, v154, v153, v154, v155);
        }

        else
        {
          v458 = 0;
          v459 = 0;
          v460 = 0;
        }

        sub_2210BBBE8(&v450, &v461, &v458);
        v456 = 0u;
        v457 = 0u;
        v455 = 0u;
        v156 = [TSTFormulaRewriteSpec alloc];
        v453 = objc_msgSend_tableUID(*(a1 + 48), v157, v158, v159, v160);
        v454 = v161;
        v451 = objc_msgSend_tableUID(*(a1 + 40), v161, v162, v163, v164);
        v452 = v165;
        v169 = objc_msgSend_coordinateMapper(*(a1 + 88), v165, v166, v167, v168);
        v171 = objc_msgSend_initForCategorizedTableBaseToChromeRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_(v156, v170, &v453, &v450, &v451, &v455, v169);
        v172 = *(*(a1 + 120) + 8);
        v173 = *(v172 + 40);
        *(v172 + 40) = v171;

        sub_22109DBB8(&v455);
        sub_22109DBB8(&v450);
        if (v458)
        {
          v459 = v458;
          operator delete(v458);
        }

        if (v461)
        {
          v462 = v461;
          operator delete(v461);
        }
      }

      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v450, *(a1 + 96), &v464);
      v109 = sub_221491A58(v96, &v450, *(*(*(a1 + 120) + 8) + 40), *(*(a1 + 80) + 272));
      objc_msgSend_setFormulaObject_(v7, v174, v109, v175, v176);
    }

    goto LABEL_43;
  }

LABEL_44:
  if (objc_msgSend_hasConditionalStyle(v7, v88, v89, v90, v91))
  {
    if (*(a1 + 169) == 1)
    {
      if (objc_msgSend_conditionalStyleAppliedRule(v7, v177, v178, v179, v180) != 15)
      {
        v185 = objc_msgSend_conditionalStyle(v7, v181, v182, v183, v184);
        v190 = objc_msgSend_conditionalStyleAppliedRule(v7, v186, v187, v188, v189);
        v194 = objc_msgSend_ruleAtIndex_(v185, v191, v190, v192, v193);

        if (v194)
        {
          v199 = objc_msgSend_textStyle(v194, v195, v196, v197, v198);
          v204 = v199;
          v433 = v199;
          if (v199)
          {
            v205 = objc_msgSend_copyPropertyMap(v199, v200, v201, v202, v203);
            v450.var0 = 0;
            v450.var1 = &v450;
            v450.var2.var0.var0.coordinate = 0x3032000000;
            v450.var2.var0.var0._tableUID._lower = sub_2210F7420;
            v450.var2.var0.var0._tableUID._upper = sub_2210F7430;
            v210 = objc_msgSend_textStyle(v7, v206, v207, v208, v209);
            v214 = v210;
            if (v210)
            {
              v215 = v210;
            }

            else
            {
              v215 = objc_msgSend_defaultTextStyleForCellID_(*(a1 + 48), v211, v33, v212, v213);
            }

            v450.var2.var0.var1.coordinate = v215;

            v274 = *(a1 + 104);
            v447[0] = MEMORY[0x277D85DD0];
            v447[1] = 3221225472;
            v447[2] = sub_2210F87B8;
            v447[3] = &unk_27845EC10;
            v449 = &v450;
            v275 = v205;
            v448 = v275;
            objc_msgSend_performWrite_(v274, v276, v447, v277, v278);
            objc_msgSend_setTextStyle_(v7, v279, *(v450.var1 + 5), v280, v281);

            _Block_object_dispose(&v450, 8);
            v204 = v433;
          }

          v282 = objc_msgSend_cellStyle(v194, v200, v201, v202, v203);
          v287 = v282;
          if (v282)
          {
            v432 = objc_msgSend_copyPropertyMap(v282, v283, v284, v285, v286);
            v450.var0 = 0;
            v450.var1 = &v450;
            v450.var2.var0.var0.coordinate = 0x3032000000;
            v450.var2.var0.var0._tableUID._lower = sub_2210F7420;
            v450.var2.var0.var0._tableUID._upper = sub_2210F7430;
            v292 = objc_msgSend_cellStyle(v7, v288, v289, v290, v291);
            v296 = v292;
            if (v292)
            {
              v297 = v292;
            }

            else
            {
              v297 = objc_msgSend_defaultCellStyleForCellID_(*(a1 + 48), v293, v33, v294, v295);
            }

            v450.var2.var0.var1.coordinate = v297;

            v298 = *(a1 + 104);
            v444[0] = MEMORY[0x277D85DD0];
            v444[1] = 3221225472;
            v444[2] = sub_2210F8848;
            v444[3] = &unk_27845EC10;
            v446 = &v450;
            v299 = v432;
            v445 = v299;
            objc_msgSend_performWrite_(v298, v300, v444, v301, v302);
            objc_msgSend_setCellStyle_(v7, v303, *(v450.var1 + 5), v304, v305);

            _Block_object_dispose(&v450, 8);
            v204 = v433;
          }
        }
      }

      objc_msgSend_setConditionalStyle_(v7, v181, 0, v183, v184);
    }

    else
    {
      v216 = objc_msgSend_documentRoot(*(a1 + 48), v177, v178, v179, v180);
      v221 = objc_msgSend_calculationEngine(v216, v217, v218, v219, v220);

      v225 = objc_msgSend_baseCellCoordForViewCellCoord_(*(a1 + 88), v222, v33, v223, v224);
      v230 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 48), v226, v227, v228, v229);
      *&v465 = v225;
      *(&v465 + 1) = v230;
      v466 = v231;
      v235 = objc_msgSend_conditionalStyleFormulaOwnerUID(*(a1 + 40), v231, v232, v233, v234);
      v450.var0 = v19;
      v450.var1 = v235;
      v450.var2.var0.var0.coordinate = v236;
      sub_2212C726C(&v464, &v465, &v450);
      if (!*(*(*(a1 + 120) + 8) + 40))
      {
        v237 = *(a1 + 48);
        v238 = TSUCellRect::columns((a1 + 136));
        if (v237)
        {
          objc_msgSend_columnUIDsForColumnRange_(v237, v239, v238, v239, v240);
        }

        else
        {
          v461 = 0;
          v462 = 0;
          v463 = 0;
        }

        v241 = *(a1 + 48);
        v242 = TSUCellRect::rows((a1 + 136));
        if (v241)
        {
          objc_msgSend_rowUIDsForRowRange_(v241, v243, v242, v243, v244);
        }

        else
        {
          v458 = 0;
          v459 = 0;
          v460 = 0;
        }

        sub_2210BBBE8(&v450, &v461, &v458);
        v456 = 0u;
        v457 = 0u;
        v455 = 0u;
        v245 = [TSTFormulaRewriteSpec alloc];
        v453 = objc_msgSend_tableUID(*(a1 + 48), v246, v247, v248, v249);
        v454 = v250;
        v451 = objc_msgSend_tableUID(*(a1 + 40), v250, v251, v252, v253);
        v452 = v254;
        v258 = objc_msgSend_coordinateMapper(*(a1 + 88), v254, v255, v256, v257);
        v260 = objc_msgSend_initForCategorizedTableBaseToChromeRewriterWithSrcTableUID_srcTract_dstTableUID_destTract_coordMapper_(v245, v259, &v453, &v450, &v451, &v455, v258);
        v261 = *(*(a1 + 120) + 8);
        v262 = *(v261 + 40);
        *(v261 + 40) = v260;

        if (*(&v456 + 1))
        {
          *&v457 = *(&v456 + 1);
          operator delete(*(&v456 + 1));
        }

        if (v455)
        {
          *(&v455 + 1) = v455;
          operator delete(v455);
        }

        if (v450.var2.var0.var0._tableUID._lower)
        {
          v450.var2.var0.var0._tableUID._upper = v450.var2.var0.var0._tableUID._lower;
          operator delete(v450.var2.var0.var0._tableUID._lower);
        }

        if (v450.var0)
        {
          v450.var1 = v450.var0;
          operator delete(v450.var0);
        }

        if (v458)
        {
          v459 = v458;
          operator delete(v458);
        }

        if (v461)
        {
          v462 = v461;
          operator delete(v461);
        }
      }

      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v450, v221, &v464);
      v267 = objc_msgSend_conditionalStyle(v7, v263, v264, v265, v266);
      v441[0] = MEMORY[0x277D85DD0];
      v441[1] = 3221225472;
      v441[2] = sub_2210F88D8;
      v441[3] = &unk_27845EC38;
      v443 = *(a1 + 120);
      v442 = *(a1 + 80);
      v270 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v267, v268, &v450, v441, v269);

      objc_msgSend_setConditionalStyle_(v7, v271, v270, v272, v273);
    }
  }

  v306 = objc_msgSend_cellSpec(v7, v177, v178, v179, v180);
  v311 = objc_msgSend_asChooserControlSpec(v306, v307, v308, v309, v310);

  if (v311)
  {
    v316 = objc_msgSend_popupModel(v311, v312, v313, v314, v315);
    v320 = objc_msgSend_copyWithContext_(v316, v317, *(a1 + 72), v318, v319);

    Item = objc_msgSend_startWithFirstItem(v311, v321, v322, v323, v324);
    v328 = objc_msgSend_popupCellSpec_startWithFirstItem_(TSTCellChooserControlSpec, v326, v320, Item, v327);
    objc_msgSend_setCellSpec_(v7, v329, v328, v330, v331);
  }

  if (objc_msgSend_containsIndex_(*(a1 + 56), v312, v16, v314, v315))
  {
    goto LABEL_100;
  }

  v336 = *(a1 + 160);
  v337 = HIDWORD(v336);
  if (!HIDWORD(v336) || !v336)
  {
    goto LABEL_135;
  }

  v338 = *(a1 + 152);
  v339 = v338 & 0xFFFF00000000;
  if (v338 != 0x7FFFFFFF || v339 == 0x7FFF00000000)
  {
    v340 = v338 != 0x7FFFFFFF || v339 == 0x7FFF00000000;
    v341 = !v340;
    if (v338 > v16 && !v341)
    {
      goto LABEL_135;
    }

    v342 = v338 + v337 - 1;
    if (v338 == 0x7FFFFFFF)
    {
      v342 = 0x7FFFFFFF;
    }

    if (v342 < v16)
    {
LABEL_135:
      if (objc_msgSend_containsIndex_(*(a1 + 112), v332, WORD2(v16), v334, v335))
      {
LABEL_100:
        if ((objc_msgSend_hasCellStyle(v7, v332, v333, v334, v335) & 1) == 0)
        {
          v347 = objc_msgSend_defaultCellStyleForCellID_(*(a1 + 48), v343, v33, v345, v346);
          objc_msgSend_setCellStyle_(v7, v348, v347, v349, v350);
        }

        if ((objc_msgSend_hasTextStyle(v7, v343, v344, v345, v346) & 1) == 0)
        {
          v351 = objc_msgSend_defaultTextStyleForCellID_(*(a1 + 48), v332, v33, v334, v335);
          objc_msgSend_setTextStyle_(v7, v352, v351, v353, v354);
        }
      }
    }
  }

  if (*(a1 + 169) == 1 && (objc_msgSend_isAPivotTable(*(a1 + 48), v332, v333, v334, v335) && (objc_msgSend_numberOfHeaderRows(*(a1 + 48), v332, v355, v356, v357) > v16 || objc_msgSend_numberOfHeaderColumns(*(a1 + 48), v332, v358, v359, v360) > WORD2(v16)) || objc_msgSend_isCategorized(*(a1 + 48), v332, v355, v356, v357) && objc_msgSend_containsIndex_(*(a1 + 56), v332, v16, v334, v335)))
  {
    LOBYTE(v461) = 0;
    LODWORD(v455) = 4;
    LODWORD(v465) = 1;
    objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(*(a1 + 48), v332, v7, v33, &v461, &v455, &v465, 0);
    v450.var0 = 0;
    v450.var1 = &v450;
    v450.var2.var0.var0.coordinate = 0x3032000000;
    v450.var2.var0.var0._tableUID._lower = sub_2210F7420;
    v450.var2.var0.var0._tableUID._upper = sub_2210F7430;
    v450.var2.var0.var1.coordinate = objc_msgSend_textStyle(v7, v361, v362, v363, v364);
    v368 = *(v450.var1 + 5);
    if (!v368)
    {
      v369 = objc_msgSend_defaultTextStyleForCellID_(*(a1 + 48), v365, v33, v366, v367);
      v370 = *(v450.var1 + 5);
      *(v450.var1 + 5) = v369;

      v368 = *(v450.var1 + 5);
    }

    v371 = objc_msgSend_intValueForProperty_(v368, v365, 86, v366, v367);
    if (v371 != v455)
    {
      v375 = objc_alloc(MEMORY[0x277D80AB8]);
      v379 = objc_msgSend_initWithPropertiesAndValues_(v375, v376, 86, v377, v378, v455, 0);
      v384 = v379;
      if (*(a1 + 170) == 1)
      {
        v385 = objc_msgSend_stylesheet(*(v450.var1 + 5), v380, v381, v382, v383);
        v388 = objc_msgSend_variationOfStyle_propertyMap_(v385, v386, *(v450.var1 + 5), v384, v387);
        v389 = *(v450.var1 + 5);
        *(v450.var1 + 5) = v388;
      }

      else
      {
        v390 = *(a1 + 104);
        v438[0] = MEMORY[0x277D85DD0];
        v438[1] = 3221225472;
        v438[2] = sub_2210F892C;
        v438[3] = &unk_27845EC10;
        v440 = &v450;
        v439 = v379;
        objc_msgSend_performWrite_(v390, v391, v438, v392, v393);
        v385 = v439;
      }
    }

    objc_msgSend_setTextStyle_(v7, v372, *(v450.var1 + 5), v373, v374);
    v464.var0.coordinate = 0;
    v464.var0._tableUID._lower = &v464;
    v464.var0._tableUID._upper = 0x3032000000;
    v464.var1.coordinate = sub_2210F7420;
    v464.var1._tableUID._lower = sub_2210F7430;
    v464.var1._tableUID._upper = objc_msgSend_cellStyle(v7, v394, v395, v396, v397);
    v401 = *(v464.var0._tableUID._lower + 40);
    if (!v401)
    {
      v402 = objc_msgSend_defaultCellStyleForCellID_(*(a1 + 48), v398, v33, v399, v400);
      v403 = *(v464.var0._tableUID._lower + 40);
      *(v464.var0._tableUID._lower + 40) = v402;

      v401 = *(v464.var0._tableUID._lower + 40);
    }

    v404 = objc_msgSend_intValueForProperty_(v401, v398, 896, v399, v400);
    v408 = objc_msgSend_intValueForProperty_(*(v464.var0._tableUID._lower + 40), v405, 903, v406, v407);
    if (v408 == 0x80000000)
    {
      v412 = 1;
    }

    else
    {
      v412 = v408;
    }

    if (v412 != v465 || v461 != ((v404 & 0x7FFFFFFF) != 0))
    {
      v413 = objc_alloc(MEMORY[0x277D80AB8]);
      v417 = objc_msgSend_initWithPropertiesAndValues_(v413, v414, 896, v415, v416, v461, 903, v465, 0);
      v422 = v417;
      if (*(a1 + 170) == 1)
      {
        v423 = objc_msgSend_stylesheet(*(v464.var0._tableUID._lower + 40), v418, v419, v420, v421);
        v426 = objc_msgSend_variationOfStyle_propertyMap_(v423, v424, *(v464.var0._tableUID._lower + 40), v422, v425);
        v427 = *(v464.var0._tableUID._lower + 40);
        *(v464.var0._tableUID._lower + 40) = v426;
      }

      else
      {
        v428 = *(a1 + 104);
        v435[0] = MEMORY[0x277D85DD0];
        v435[1] = 3221225472;
        v435[2] = sub_2210F89BC;
        v435[3] = &unk_27845EC10;
        v437 = &v464;
        v436 = v417;
        objc_msgSend_performWrite_(v428, v429, v435, v430, v431);
        v423 = v436;
      }
    }

    objc_msgSend_setCellStyle_(v7, v409, *(v464.var0._tableUID._lower + 40), v410, v411);
    _Block_object_dispose(&v464, 8);

    _Block_object_dispose(&v450, 8);
  }

  if (v7 || (objc_msgSend_isEmpty(0, v332, v333, v334, v335) & 1) == 0)
  {
    objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(*(a1 + 40), v332, v7, v19, 1, 1);
  }
}

void sub_2210F84B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_22109DBB8(&a65);
  sub_22109DBB8(&a48);
  v70 = *(v68 - 256);
  if (v70)
  {
    *(v68 - 248) = v70;
    operator delete(v70);
  }

  v71 = *(v68 - 232);
  if (v71)
  {
    *(v68 - 224) = v71;
    operator delete(v71);
  }

  _Unwind_Resume(a1);
}

void sub_2210F87B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_msgSend_stylesheet(*(*(*(a1 + 40) + 8) + 40), a2, a3, a4, a5);
  v8 = objc_msgSend_variationOfStyle_propertyMap_(v11, v6, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32), v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_2210F8848(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_msgSend_stylesheet(*(*(*(a1 + 40) + 8) + 40), a2, a3, a4, a5);
  v8 = objc_msgSend_variationOfStyle_propertyMap_(v11, v6, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32), v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

id sub_2210F88D8(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_221491A58(a2, a3, *(*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 272));

  return v3;
}

void sub_2210F892C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_msgSend_stylesheet(*(*(*(a1 + 40) + 8) + 40), a2, a3, a4, a5);
  v8 = objc_msgSend_variationOfStyle_propertyMap_(v11, v6, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32), v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_2210F89BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_msgSend_stylesheet(*(*(*(a1 + 40) + 8) + 40), a2, a3, a4, a5);
  v8 = objc_msgSend_variationOfStyle_propertyMap_(v11, v6, *(*(*(a1 + 40) + 8) + 40), *(a1 + 32), v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

double sub_2210F8A4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_heightOfRowAtIndex_isDefault_(*(*(a1 + 32) + 200), a2, a2, 0, a5);
  v6 = *(*(a1 + 40) + 8);
  result = v7 + *(v6 + 24);
  *(v6 + 24) = result;
  return result;
}

double sub_2210F8A9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_widthOfColumnAtIndex_isDefault_(*(*(a1 + 32) + 200), a2, a2, 0, a5);
  v6 = *(*(a1 + 40) + 8);
  result = v7 + *(v6 + 24);
  *(v6 + 24) = result;
  return result;
}

void sub_2210F9200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);

  _Unwind_Resume(a1);
}

double sub_2210F938C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_heightOfRowAtIndex_isDefault_(*(*(a1 + 32) + 200), a2, a2, 0, a5);
  v6 = *(*(a1 + 40) + 8);
  result = v7 + *(v6 + 24);
  *(v6 + 24) = result;
  return result;
}

double sub_2210F93DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_widthOfColumnAtIndex_isDefault_(*(*(a1 + 32) + 200), a2, a2, 0, a5);
  v6 = *(*(a1 + 40) + 8);
  result = v7 + *(v6 + 24);
  *(v6 + 24) = result;
  return result;
}

void sub_2210F9548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TSTTableInfo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2210FA4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2210FAE98()
{
  v0 = objc_alloc(MEMORY[0x277CCAB00]);
  v2 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v0, v1, 517, 512, 0);
  v3 = qword_27CFB51A0;
  qword_27CFB51A0 = v2;

  dword_27CFB51A8 = 0;
}

void sub_2210FB3E8(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_2210FCEFC(_Unwind_Exception *a1)
{
  sub_22107C860(v3 + 16, *(v3 + 24));

  _Unwind_Resume(a1);
}

void sub_2210FCFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2210BC30C(va);
  _Unwind_Resume(a1);
}

id sub_2210FEDF8(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    objc_msgSend_addObject_(*(a1 + 32), v3, v6, v4, v5);
  }

  return v6;
}

void sub_2210FEFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2210FF04C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  if (v4 != v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v4;
}

uint64_t sub_221100234(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = v5;
  if (!(v4 | v5))
  {
LABEL_2:
    v11 = 1;
    goto LABEL_3;
  }

  v11 = 0;
  if (v4 && v5)
  {
    v13 = objc_msgSend_count(v4, v6, v7, v8, v9);
    if (v13 != objc_msgSend_count(v10, v14, v15, v16, v17))
    {
LABEL_14:
      v11 = 0;
      goto LABEL_3;
    }

    v25 = objc_msgSend_count(v4, v18, v19, v20, v21);
    if (v25)
    {
      for (i = 0; i != v25; ++i)
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(v4, v22, i, v23, v24);
        objc_msgSend_floatValue(v27, v28, v29, v30, v31);
        v33 = v32;
        v37 = objc_msgSend_objectAtIndexedSubscript_(v10, v34, i, v35, v36);
        objc_msgSend_floatValue(v37, v38, v39, v40, v41);
        if (v33 == v42)
        {
        }

        else
        {
          v43 = v33;
          v44 = v42;
          v45 = fabs(v44 * 0.000000999999997);
          v46 = vabdd_f64(v43, v44);

          if (v46 >= v45)
          {
            goto LABEL_14;
          }
        }
      }
    }

    goto LABEL_2;
  }

LABEL_3:

  return v11;
}

id sub_221100EA0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_context(*(a1 + 32), a2, a3, a4, a5);
  v9 = objc_msgSend_cellMapWithContext_(TSTCellMap, v6, v5, v7, v8);

  return v9;
}

uint64_t sub_221100F10(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ((objc_msgSend_cellHasCommentStorage(v4, v6, v7, v8, v9) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableInfo allAnnotations]_block_invoke_2", v12, v13);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 4698, 0, "iterator shoul only return cells with comments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  v25 = objc_msgSend_cellID(v4, v10, v11, v12, v13);
  objc_msgSend_addCell_andCellID_(v5, v26, 0, v25, v27);

  return 0;
}

void sub_221101018(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211010BC;
  v7[3] = &unk_27845EDC0;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  objc_msgSend_enumerateObjectsUsingBlock_(a2, v4, v7, v5, v6);
}

void sub_2211010BC(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221101160;
  v7[3] = &unk_27845ED98;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(a2, v4, v7, v5, v6);
}

void sub_221101160(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_commentHostingAtCellID_(*(a1 + 32), a2, a2, a4, a5);
  objc_msgSend_addObject_(*(a1 + 40), v6, v9, v7, v8);
}

void sub_2211019F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_cellHasFormula(v3, v4, v5, v6, v7))
  {
    v25 = 0u;
    v26 = 0u;
    v12 = *(a1 + 32);
    v13 = objc_msgSend_cellID(v3, v8, v9, v10, v11, 0, 0, 0, 0);
    if (v12)
    {
      objc_msgSend_cellUIDForCellID_(v12, v14, v13, v16, v17);
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v18 = objc_msgSend_cell(v3, v14, v15, v16, v17, v25, v26);
    objc_msgSend_bakeFormulaToValue(v18, v19, v20, v21, v22);
    objc_msgSend_addCell_andCellUID_(*(a1 + 40), v23, v18, &v25, v24);
  }
}

void sub_221101CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_221102B70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = objc_msgSend_cell(a2, a2, a3, a4, a5);
  v12 = objc_msgSend_getPredArgDataFromCell_(TSTFormulaPredArgData, v6, v19, v7, v8);
  if (v12 && (objc_msgSend_containsObject_(*(a1 + 32), v9, v12, v10, v11) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 32), v13, v12, v14, v15);
    objc_msgSend_addObject_(*(a1 + 40), v16, v12, v17, v18);
  }
}

void sub_221102EB8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_221104AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

uint64_t sub_221104FA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_clear(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_getCell_atCellUID_(*(a1 + 40), v7, *(a1 + 32), a2, v8);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);

  return objc_msgSend_addCell_andCellUID_(v11, v9, v12, a2, v10);
}

id sub_221104FF8(uint64_t a1)
{
  v2 = [TSTCellMap alloc];
  v5 = objc_msgSend_initWithContext_uidBased_(v2, v3, 0, *(a1 + 32), v4);

  return v5;
}

uint64_t sub_221105040(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_cell(v5, v7, v8, v9, v10);
  v16 = objc_msgSend_cellID(v5, v12, v13, v14, v15);
  v56.origin = objc_msgSend_mergeRange(v5, v17, v18, v19, v20);
  v56.size = v21;
  if (objc_msgSend_isEmpty(v11, v21, v22, v23, v24))
  {
    v29 = objc_msgSend_cellBorder(v11, v25, v26, v27, v28);
    if (objc_msgSend_hasContent(v29, v30, v31, v32, v33))
    {
      v34 = v11;
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v34 = v11;
    if (!v34)
    {
      goto LABEL_21;
    }
  }

  if (*(a1 + 64) == 1)
  {
    if (TSUCellRect::isValid(&v56))
    {
      origin = v56.origin;
      if (v56.origin.row == v16 && ((*&v56.origin ^ v16) & 0x101FFFF00000000) == 0 && (objc_msgSend_containsCellRange_(*(a1 + 32), v35, *&v56.origin, *&v56.size, v38) & 1) == 0)
      {
        v39 = objc_msgSend_newCell(*(a1 + 40), v35, origin, v37, v38);

        v34 = v39;
        objc_msgSend_copyJustStrokesToCell_(v11, v40, v39, v41, v42);
      }
    }
  }

  if (*(a1 + 65) == 1)
  {
    objc_msgSend_convertFormulasToUidForm_atCellID_preserveHostCell_(*(a1 + 40), v35, v34, v16, 0);
  }

  if ((*(a1 + 66) & 1) != 0 || objc_msgSend_isAPivotTable(*(a1 + 40), v35, origin, v37, v38))
  {
    objc_msgSend_flattenGroupValuesIfNeededForCell_viewCellCoord_summaryAndLabelRows_categoryColumns_(*(a1 + 40), v35, v34, v16, *(a1 + 48), *(a1 + 56));
  }

  v46 = objc_msgSend_cellBorder(v34, v35, v43, v44, v45);

  if (!v46)
  {
    v48 = objc_msgSend_cellBorder(TSTCellBorder, v35, v47, v37, v38);
    objc_msgSend_setCellBorder_(v34, v49, v48, v50, v51);
  }

LABEL_21:
  if (*(a1 + 65) == 1)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = *(a1 + 40);
    if (v52)
    {
      objc_msgSend_cellUIDForCellID_(v52, v35, v16, v37, v38, v54, v55);
    }

    objc_msgSend_addCell_andCellUID_(v6, v35, v34, &v54, v38);
  }

  else
  {
    objc_msgSend_addCell_andCellID_(v6, v35, v34, v16, v38);
  }

  return 0;
}

void sub_2211052AC(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_appendCellMap_precopied_(*(a1 + 32), v5, *(*(&v10 + 1) + 8 * v9++), 1, v6, v10);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

id sub_2211056DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [TSTConcurrentCellList alloc];
  v11 = objc_msgSend_context(*(a1 + 32), v7, v8, v9, v10);
  v13 = objc_msgSend_initWithContext_viewCellRect_(v6, v12, v11, a2, a3);

  return v13;
}

uint64_t sub_22110576C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v12 = objc_msgSend_cell(v6, v8, v9, v10, v11);
  v17 = objc_msgSend_cellID(v6, v13, v14, v15, v16);
  v46.origin = objc_msgSend_mergeRange(v6, v18, v19, v20, v21);
  v46.size = v22;
  isEmpty = objc_msgSend_isEmpty(v12, v22, v23, v24, v25);
  if (isEmpty)
  {
    v3 = objc_msgSend_cellBorder(v12, v26, v27, v28, v29);
    if (!objc_msgSend_hasContent(v3, v31, v32, v33, v34))
    {
      v40 = 0;
LABEL_7:

      if (!v40)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }
  }

  v35 = objc_msgSend_copy(v12, v26, v27, v28, v29);
  v40 = v35;
  if (isEmpty)
  {
    goto LABEL_7;
  }

  if (!v35)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (*(a1 + 64) == 1)
  {
    if (TSUCellRect::isValid(&v46))
    {
      origin = v46.origin;
      if (v46.origin.row == v17 && ((*&v46.origin ^ v17) & 0x101FFFF00000000) == 0 && (objc_msgSend_containsCellRange_(*(a1 + 32), v36, *&v46.origin, *&v46.size, v39) & 1) == 0)
      {
        v41 = objc_msgSend_newCell(*(a1 + 40), v36, origin, v38, v39);

        v40 = v41;
        objc_msgSend_copyJustStrokesToCell_(v12, v42, v41, v43, v44);
      }
    }
  }

  if ((*(a1 + 65) & 1) != 0 || objc_msgSend_isAPivotTable(*(a1 + 40), v36, origin, v38, v39))
  {
    objc_msgSend_flattenGroupValuesIfNeededForCell_viewCellCoord_summaryAndLabelRows_categoryColumns_(*(a1 + 40), v36, v40, v17, *(a1 + 48), *(a1 + 56));
  }

LABEL_17:
  objc_msgSend_addCell_atViewCellCoord_(v7, v36, v40, v17, v39);

  return 0;
}

void sub_221105A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221105A44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_getCell_atCellID_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 56), a5);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_22110751C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221108000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221108144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221108324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15)
{
  v17 = v16;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2211093AC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Total", &stru_2834BADA0, @"TSTables");

  return v2;
}

id sub_2211093F4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Row Group", &stru_2834BADA0, @"TSTables");

  return v2;
}

id sub_22110943C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Column Group", &stru_2834BADA0, @"TSTables");

  return v2;
}

id sub_221109484(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Grand Total", &stru_2834BADA0, @"TSTables");

  return v2;
}

id sub_2211094CC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Summary", &stru_2834BADA0, @"TSTables");

  return v2;
}

void sub_221109B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221109CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221109D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221109DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22110C05C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (*(a1 + 80) != -1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = objc_msgSend_strokeLayerForColumn_(*(a1 + 32), a2, (v7 + *(a1 + 72)), a4, a5);
        v12 = objc_msgSend_strokeLayerForColumn_(*(a1 + 40), v9, v7, v10, v11);
        v17 = objc_msgSend_context(*(a1 + 48), v13, v14, v15, v16);
        v19 = objc_msgSend_mutableStrokeLayerWithContext_subtractingDefaultsFrom_forRange_(v8, v18, v17, v12, *(a1 + 56), *(a1 + 64));

        if (v7)
        {
          v24 = v7 - 1;
        }

        else
        {
          v24 = 0x7FFF;
        }

        if (v7 != 0x7FFF && *(a1 + 80) > v6 && (objc_msgSend_isEmpty(v19, v20, v21, v22, v23) & 1) == 0)
        {
          v25 = objc_msgSend_strokeSidecar(*(a1 + 48), v20, v21, v22, v23);
          objc_msgSend_setStrokeLayer_forLeftOfColumn_(v25, v26, v19, v7, v27);
        }

        if (v24 != 0x7FFF && (objc_msgSend_isEmpty(v19, v20, v21, v22, v23) & 1) == 0)
        {
          v32 = objc_msgSend_strokeSidecar(*(a1 + 48), v28, v29, v30, v31);
          objc_msgSend_setStrokeLayer_forRightOfColumn_(v32, v33, v19, v24, v34);
        }

        v6 = (v7 + 1);
        v7 = v6;
      }

      while (*(a1 + 80) + 1 > v6);
    }
  }

  else if (*(a1 + 64) != -1)
  {
    v35 = 0;
    v36 = 1;
    v37 = 0x7FFFFFFF;
    do
    {
      v38 = objc_msgSend_strokeLayerForRow_(*(a1 + 32), a2, v36 - 1 + *(a1 + 56), a4, a5);
      v42 = objc_msgSend_strokeLayerForRow_(*(a1 + 40), v39, v36 - 1, v40, v41);
      v47 = objc_msgSend_context(*(a1 + 48), v43, v44, v45, v46);
      v49 = objc_msgSend_mutableStrokeLayerWithContext_subtractingDefaultsFrom_forRange_(v38, v48, v47, v42, *(a1 + 72), *(a1 + 80));

      if (v36 == 1)
      {
        v54 = 0x7FFFFFFFLL;
      }

      else
      {
        v54 = v36 - 2;
      }

      if (v37 && *(a1 + 64) > v35 && (objc_msgSend_isEmpty(v49, v50, v51, v52, v53) & 1) == 0)
      {
        v55 = objc_msgSend_strokeSidecar(*(a1 + 48), v50, v51, v52, v53);
        objc_msgSend_setStrokeLayer_forTopOfRow_(v55, v56, v49, v36 - 1, v57);
      }

      if (v54 != 0x7FFFFFFF && (objc_msgSend_isEmpty(v49, v50, v51, v52, v53) & 1) == 0)
      {
        v62 = objc_msgSend_strokeSidecar(*(a1 + 48), v58, v59, v60, v61);
        objc_msgSend_setStrokeLayer_forBottomOfRow_(v62, v63, v49, v54, v64);
      }

      v35 = v36;
      v65 = *(a1 + 64) + 1 > v36++;
      --v37;
    }

    while (v65);
  }
}

void sub_22110C8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22110C938(__n128 *a1, __n128 *a2)
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

void sub_22110C95C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22110C974(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = objc_msgSend_cell(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_conditionalStyle(v8, v9, v10, v11, v12);

  if (v13 == *(a1 + 32))
  {
    v18 = *(*(a1 + 40) + 8);
    v19 = objc_msgSend_cellID(v3, v14, v15, v16, v17);
    v25 = v18[7];
    v24 = v18[8];
    if (v25 >= v24)
    {
      v27 = v18[6];
      v28 = (v25 - v27) >> 3;
      if ((v28 + 1) >> 61)
      {
        sub_22107C148();
      }

      v29 = v24 - v27;
      v30 = v29 >> 2;
      if (v29 >> 2 <= (v28 + 1))
      {
        v30 = v28 + 1;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v31 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v30;
      }

      if (v31)
      {
        sub_2210874C4((v18 + 6), v31);
      }

      v32 = (8 * v28);
      *v32 = v19;
      v26 = 8 * v28 + 8;
      v33 = v18[6];
      v34 = v18[7] - v33;
      v35 = v32 - v34;
      memcpy(v32 - v34, v33, v34);
      v36 = v18[6];
      v18[6] = v35;
      v18[7] = v26;
      v18[8] = 0;
      if (v36)
      {
        operator delete(v36);
      }
    }

    else
    {
      *v25 = v19;
      v26 = (v25 + 1);
    }

    v18[7] = v26;
    v38 = objc_msgSend_mergeRange(v3, v20, v21, v22, v23);
    if (v38 != 0x7FFFFFFF && (v38 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v37) && v37)
    {
      v40 = objc_msgSend_regionFromRange_(TSTCellRegion, v37, v38, v37, v39);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_22110CBA4;
      v46[3] = &unk_27845EF48;
      v41 = v3;
      v42 = *(a1 + 40);
      v47 = v41;
      v48 = v42;
      objc_msgSend_enumerateCellIDsUsingBlock_(v40, v43, v46, v44, v45);
    }
  }
}

void sub_22110CBA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_cellID(*(a1 + 32), a2, a3, a4, a5);
  if (a2 != v7 || ((v7 ^ a2) & 0xFFFF00000000) != 0)
  {
    v9 = *(*(a1 + 40) + 8);
    v11 = v9[7];
    v10 = v9[8];
    if (v11 >= v10)
    {
      v13 = v9[6];
      v14 = (v11 - v13) >> 3;
      if ((v14 + 1) >> 61)
      {
        sub_22107C148();
      }

      v15 = v10 - v13;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        sub_2210874C4((v9 + 6), v17);
      }

      v18 = (8 * v14);
      *v18 = a2;
      v12 = 8 * v14 + 8;
      v19 = v9[6];
      v20 = v9[7] - v19;
      v21 = v18 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = v9[6];
      v9[6] = v21;
      v9[7] = v12;
      v9[8] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = a2;
      v12 = (v11 + 1);
    }

    v9[7] = v12;
  }
}

void sub_22110D1E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22110D36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_22110D388(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_22110D398(uint64_t a1, void *a2)
{
  v80 = a2;
  v7 = objc_msgSend_cell(v80, v3, v4, v5, v6);
  v12 = objc_msgSend_valueType(v7, v8, v9, v10, v11);

  v17 = objc_msgSend_cell(v80, v13, v14, v15, v16);
  v22 = objc_msgSend_interactionType(v17, v18, v19, v20, v21);

  if (v22 == 8)
  {
    v34 = objc_msgSend_cell(v80, v23, v24, v25, v26);
    v39 = objc_msgSend_BOOLValue(v34, v35, v36, v37, v38);

    if ((v39 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v22 == 6)
  {
    v27 = objc_msgSend_cell(v80, v23, v24, v25, v26);
    objc_msgSend_numberDoubleValue(v27, v28, v29, v30, v31);
    v33 = v32;

    if (v33 == 0.0)
    {
      goto LABEL_22;
    }
  }

  if (v12 == 3)
  {
    v40 = objc_msgSend_cell(v80, v23, v24, v25, v26);
    v45 = objc_msgSend_formattedValue(v40, v41, v42, v43, v44);

    if (!v45)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  v55 = objc_msgSend_cell(v80, v23, v24, v25, v26);
  hasValueOrError = objc_msgSend_hasValueOrError(v55, v56, v57, v58, v59);

  if ((hasValueOrError & 1) == 0 && (objc_msgSend_cellHasCommentStorage(v80, v51, v52, v53, v54) & 1) == 0)
  {
    v75 = objc_msgSend_cell(v80, v51, v52, v53, v54);
    v45 = objc_msgSend_formattedValue(v75, v76, v77, v78, v79);

    if (!v45)
    {
      goto LABEL_22;
    }

LABEL_8:
    v50 = objc_msgSend_length(v45, v46, v47, v48, v49);

    if (!v50)
    {
      goto LABEL_22;
    }
  }

  v61 = objc_msgSend_cellID(v80, v51, v52, v53, v54);
  v66 = objc_msgSend_mergeRange(v80, v62, v63, v64, v65);
  if (v66 != 0x7FFFFFFF && (v66 & 0xFFFF00000000) != 0x7FFF00000000 && v67 >> 32 && v67)
  {
    v71 = objc_msgSend_mergeRange(v80, v67, v68, v69, v70);
    v61 = (v71 + (v72 << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (v71 + HIDWORD(v72) - 1);
  }

  if (*(a1 + 40) >= v61)
  {
    v73 = *(*(a1 + 32) + 8);
    if ((v61 + 1) > *(v73 + 60))
    {
      *(v73 + 60) = v61 + 1;
    }
  }

  v74 = *(*(a1 + 32) + 8);
  if (WORD2(v61) >= *(v74 + 56))
  {
    *(v74 + 56) = WORD2(v61) + 1;
  }

LABEL_22:
}

void sub_22110E0F8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

BOOL sub_22110E12C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = WORD2(a1) <= WORD2(a2) && a1 <= a2;
  if ((a2 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v3 = 0;
  }

  v4 = a2 != 0x7FFFFFFF && v3;
  return (a1 & 0xFFFF00000000) != 0x7FFF00000000 && v4;
}

void sub_22110E180(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v15 = v5;
    v10 = objc_msgSend_cell(v5, v6, v7, v8, v9);
    *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_valueIsText(v10, v11, v12, v13, v14);

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = v15;
  }

  else
  {
    *a3 = 1;
  }
}

void sub_22110E234(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v15 = v5;
    v10 = objc_msgSend_cell(v5, v6, v7, v8, v9);
    *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_valueIsText(v10, v11, v12, v13, v14);

    *(*(*(a1 + 40) + 8) + 24) = 1;
    v5 = v15;
  }

  else
  {
    *a3 = 1;
  }
}

void sub_22110EF28(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v76 = objc_msgSend_translator(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_groupLevelAtSummaryRow_(v76, v8, a2, v9, v10);

  if (v11 == 255)
  {
    v15 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableInfo cellUIDListFromCellRegion:useCategoriesWildcards:]_block_invoke", v13, v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v17, v18);
    v20 = *(a1 + 40);
    v25 = objc_msgSend_translator(*(a1 + 32), v21, v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v26, v77, v19, 7967, 0, "Invalid level for a summary row. We're about to crash. summaryRowIndex:%lu intersectingSummaryRowIndexes:{public}%@ translator:{public}%@", a2, v20, v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if ((objc_msgSend_containsIndex_(*(a1 + 48), v12, v11, v13, v14) & 1) == 0)
  {
    v34 = *(a1 + 56);
    v35 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v31, a2, v32, v33);
    v78 = objc_msgSend_regionByIntersectingRowIndices_(v34, v36, v35, v37, v38);

    if (objc_msgSend_cellCount(v78, v39, v40, v41, v42))
    {
      v47 = objc_msgSend_pointerAtIndex_(*(a1 + 64), v43, v11, v45, v46);
      if (v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v48, v49, v50, v51);
      }

      v57 = v52;
      v58 = objc_msgSend_intersectingColumnsIndexSet(v78, v53, v54, v55, v56);
      objc_msgSend_addIndexes_(v57, v59, v58, v60, v61);

      objc_msgSend_replacePointerAtIndex_withPointer_(*(a1 + 64), v62, v11, v57, v63);
      v68 = objc_msgSend_count(v57, v64, v65, v66, v67);
      if (v68 == objc_msgSend_count(*(a1 + 72), v69, v70, v71, v72))
      {
        objc_msgSend_addIndex_(*(a1 + 48), v73, v11, v74, v75);
      }
    }

    if (objc_msgSend_count(*(a1 + 48), v43, v44, v45, v46) == *(a1 + 80))
    {
      *a3 = 1;
    }
  }
}

void sub_22110F1B8(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v5 = a2;
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_msgSend_columnUIDsForColumnIndexes_(v13, v10, v5, v11, v12);
      v14 = v21;
      v15 = v22;
      if (v21 != v22)
      {
        do
        {
          v16 = *(a1 + 40);
          sub_2211A8F64(a3, 0, v20);
          objc_msgSend_addCellUID_(v16, v17, v20, v18, v19);
          v14 += 16;
        }

        while (v14 != v15);
        v14 = v21;
      }

      if (v14)
      {
        v22 = v14;
        operator delete(v14);
      }
    }
  }
}

void sub_22110F2A4(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v64 = objc_msgSend_translator(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_groupLevelAtLabelRow_(v64, v8, a2, v9, v10);

  if (v11 == 255)
  {
    v15 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableInfo cellUIDListFromCellRegion:useCategoriesWildcards:]_block_invoke_3", v13, v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v17, v18);
    v20 = *(a1 + 40);
    v25 = objc_msgSend_translator(*(a1 + 32), v21, v22, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v26, v65, v19, 8021, 0, "Invalid level for a label row. We're about to crash. labelRowIndex:%lu intersectingLabelRowIndexes:{public}%@ translator:{public}%@", a2, v20, v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  if ((objc_msgSend_containsIndex_(*(a1 + 48), v12, v11, v13, v14) & 1) == 0)
  {
    v34 = *(a1 + 56);
    v35 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v31, a2, v32, v33);
    v66 = objc_msgSend_regionByIntersectingRowIndices_(v34, v36, v35, v37, v38);

    if (objc_msgSend_cellCount(v66, v39, v40, v41, v42))
    {
      v47 = objc_msgSend_pointerAtIndex_(*(a1 + 64), v43, v11, v45, v46);
      if (v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v48, v49, v50, v51);
      }

      v57 = v52;
      v58 = objc_msgSend_intersectingColumnsIndexSet(v66, v53, v54, v55, v56);
      objc_msgSend_addIndexes_(v57, v59, v58, v60, v61);

      objc_msgSend_replacePointerAtIndex_withPointer_(*(a1 + 64), v62, v11, v57, v63);
    }

    if (objc_msgSend_count(*(a1 + 48), v43, v44, v45, v46) == *(a1 + 72))
    {
      *a3 = 1;
    }
  }
}

void sub_22110F50C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v5 = a2;
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_msgSend_columnUIDsForColumnIndexes_(v13, v10, v5, v11, v12);
      v14 = v21;
      v15 = v22;
      if (v21 != v22)
      {
        do
        {
          v16 = *(a1 + 40);
          sub_2211A8F64(a3, 1, v20);
          objc_msgSend_addCellUID_(v16, v17, v20, v18, v19);
          v14 += 16;
        }

        while (v14 != v15);
        v14 = v21;
      }

      if (v14)
      {
        v22 = v14;
        operator delete(v14);
      }
    }
  }
}

void sub_22110FB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_221110F50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = a4;
  v10 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4, a5);
  v15 = objc_msgSend_columnRowUIDMap(v10, v11, v12, v13, v14);
  LODWORD(v7) = objc_msgSend_columnIndexForColumnUID_(v15, v16, a3, v7, v17);

  if (v7 == 0x7FFF)
  {
    *a6 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_221112170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_2211133A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2211133E8(uint64_t a1, void *a2)
{
  v14 = a2;
  v7 = *(a1 + 32);
  if (!v7 || (v8 = objc_msgSend_groupUid(v14, v3, v4, v5, v6), (*(v7 + 16))(v7, v8, v9)))
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = objc_msgSend_groupUid(v14, v3, v4, v5, v6);
    objc_msgSend_addUUID_(v10, v12, v11, v12, v13);
  }
}

void sub_221113610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_221113650(uint64_t a1, void *a2)
{
  v14 = a2;
  v7 = *(a1 + 32);
  if (!v7 || (v8 = objc_msgSend_groupUid(v14, v3, v4, v5, v6), (*(v7 + 16))(v7, v8, v9)))
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = objc_msgSend_groupUid(v14, v3, v4, v5, v6);
    objc_msgSend_addUUID_(v10, v12, v11, v12, v13);
  }
}

void sub_221113D70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v22[0] = objc_msgSend_groupUid(v3, v5, v6, v7, v8);
  v22[1] = v9;
  if (!sub_221119F90(v4, v22))
  {
    v14 = *(a1 + 32);
    v15 = objc_msgSend_groupUid(v3, v10, v11, v12, v13);
    v18 = objc_msgSend_rowIndexForRowUID_(v14, v16, v15, v16, v17);
    if (v18 != 0x7FFFFFFF)
    {
      objc_msgSend_addIndex_(*(a1 + 40), v19, v18, v20, v21);
    }
  }
}

void sub_221114310(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(objc_msgSend_aggNodes(v3, v4, v5, v6, v7) + 24))
  {
    v12 = *(a1 + 48);
    v34[0] = objc_msgSend_groupUid(v3, v8, v9, v10, v11);
    v34[1] = v13;
    if (!sub_221119F90(v12, v34))
    {
      v18 = objc_msgSend_parentNode(v3, v14, v15, v16, v17);
      v23 = objc_msgSend_groupUid(v18, v19, v20, v21, v22);
      v25 = sub_2211A8DF4(v23, v24);
      v27 = v26;

      v30 = objc_msgSend_rowIndexForRowUID_(*(a1 + 32), v28, v25, v27, v29);
      if (v30 != 0x7FFFFFFF)
      {
        objc_msgSend_addIndex_(*(a1 + 40), v31, v30, v32, v33);
      }
    }
  }
}

void sub_221115198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211151B0(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_groupingType(a2, a2, a3, a4, a5);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_2211158D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v5 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2211159D4(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v8 = objc_msgSend_categoryColumnIndex(*(a1 + 32), a2, a3, a4, a5);
  result = objc_msgSend_hasGroupingArrowAtCellID_(*(a1 + 32), v9, v6 | (v8 << 32), v10, v11);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_221115A34(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_hasGroupingArrowAtCellID_(*(a1 + 32), a2, a2, a4, a5);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_221115A7C(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_hasGroupingArrowAtCellID_(*(a1 + 32), a2, a2, a4, a5);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_221116B04(uint64_t a1, void *a2)
{
  v20 = a2;
  objc_storeStrong((*(a1 + 32) + 312), a2);
  v8 = objc_msgSend_sortRuleReferenceTracker(*(*(a1 + 32) + 312), v4, v5, v6, v7);
  v13 = objc_msgSend_tableUID(*(*(a1 + 32) + 312), v9, v10, v11, v12);
  objc_msgSend_setBaseTableUID_(v8, v14, v13, v14, v15);

  objc_msgSend_clearPivotOwner(*(*(a1 + 32) + 312), v16, v17, v18, v19);
}

void sub_221116BCC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 320), a2);
  v7 = a2;
  objc_msgSend_setTableInfo_(*(*(a1 + 32) + 320), v4, *(a1 + 32), v5, v6);
}

void sub_221116C50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_baseTableModel(*(a1 + 32), a2, a3, a4, a5);

  if (!v6)
  {
    return;
  }

  v11 = objc_msgSend_baseTableModel(*(a1 + 32), v7, v8, v9, v10);
  objc_msgSend_setTableInfo_(v11, v12, *(a1 + 32), v13, v14);

  v19 = objc_msgSend_baseTableModel(*(a1 + 32), v15, v16, v17, v18);
  v24 = objc_msgSend_categoryOwner(v19, v20, v21, v22, v23);
  v28 = objc_msgSend_groupByForOwnerIndex_(v24, v25, 8, v26, v27);
  v29 = *(a1 + 32);
  v30 = *(v29 + 256);
  *(v29 + 256) = v28;

  v35 = *(a1 + 32);
  if (!v35[32])
  {
    v36 = [TSTGroupBy alloc];
    v41 = objc_msgSend_baseTableModel(*(a1 + 32), v37, v38, v39, v40);
    v46 = objc_msgSend_categoryOwner(v41, v42, v43, v44, v45);
    v351 = objc_msgSend_groupByUid(*(a1 + 32), v47, v48, v49, v50);
    v352 = v51;
    v52 = objc_msgSend_initWithGroupings_categoryOwner_groupByUid_ownerIndex_(v36, v51, MEMORY[0x277CBEBF8], v46, &v351, 8);
    v53 = *(a1 + 32);
    v54 = *(v53 + 256);
    *(v53 + 256) = v52;

    v59 = objc_msgSend_baseTableModel(*(a1 + 32), v55, v56, v57, v58);
    v64 = objc_msgSend_categoryOwner(v59, v60, v61, v62, v63);
    objc_msgSend_linkGroupBy_(v64, v65, *(*(a1 + 32) + 256), v66, v67);

    v35 = *(a1 + 32);
  }

  if (objc_msgSend_isAPivotTable(v35, v31, v32, v33, v34))
  {
    v72 = [TSTPivotTranslator alloc];
    v76 = objc_msgSend_initWithTableInfo_(v72, v73, *(a1 + 32), v74, v75);
    objc_msgSend_setTranslator_(*(a1 + 32), v77, v76, v78, v79);

    v83 = *(a1 + 32);
    if (!*(v83 + 296))
    {
      v84 = [TSTColumnRowUIDMap alloc];
      v89 = objc_msgSend_context(*(a1 + 32), v85, v86, v87, v88);
      v351 = 0;
      v352 = 0;
      v353 = 0;
      __p = 0;
      v349 = 0;
      v350 = 0;
      v91 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v84, v90, v89, &v351, &__p);
      v92 = *(a1 + 32);
      v93 = *(v92 + 296);
      *(v92 + 296) = v91;

      if (__p)
      {
        v349 = __p;
        operator delete(__p);
      }

      if (v351)
      {
        v352 = v351;
        operator delete(v351);
      }

      v83 = *(a1 + 32);
    }

    objc_msgSend_setIsAPivotDataModel_(*(v83 + 312), v80, 1, v81, v82);
    objc_msgSend_setShouldUseWideRows_(*(*(a1 + 32) + 312), v94, 1, v95, v96);
    v101 = objc_msgSend_pivotOwner(*(a1 + 32), v97, v98, v99, v100);
    v351 = objc_msgSend_tableUID(*(a1 + 32), v102, v103, v104, v105);
    v352 = v106;
    objc_msgSend_setupAfterUnarchiveForPivotTable_pivotDataTable_(v101, v106, &v351, *(*(a1 + 32) + 312), v107);
    goto LABEL_21;
  }

  v108 = objc_msgSend_groupBy(*(a1 + 32), v68, v69, v70, v71);
  if ((objc_msgSend_isEnabled(v108, v109, v110, v111, v112) & 1) == 0)
  {

    goto LABEL_20;
  }

  v117 = objc_msgSend_groupBy(*(a1 + 32), v113, v114, v115, v116);
  v122 = objc_msgSend_numberOfLevels(v117, v118, v119, v120, v121);

  if (!v122)
  {
LABEL_20:
    v144 = [TSTTableTranslator alloc];
    v148 = objc_msgSend_initWithTableInfo_(v144, v145, *(a1 + 32), v146, v147);
    objc_msgSend_setTranslator_(*(a1 + 32), v149, v148, v150, v151);

    v156 = objc_msgSend_columnRowUIDMap(*(*(a1 + 32) + 200), v152, v153, v154, v155);
    v157 = *(a1 + 32);
    v101 = *(v157 + 296);
    *(v157 + 296) = v156;
LABEL_21:

    goto LABEL_22;
  }

  v123 = [TSTCategoryTranslator alloc];
  v127 = objc_msgSend_initWithTableInfo_(v123, v124, *(a1 + 32), v125, v126);
  objc_msgSend_setTranslator_(*(a1 + 32), v128, v127, v129, v130);

  if (!*(*(a1 + 32) + 296))
  {
    v135 = [TSTColumnRowUIDMap alloc];
    v101 = objc_msgSend_context(*(a1 + 32), v136, v137, v138, v139);
    v351 = 0;
    v352 = 0;
    v353 = 0;
    __p = 0;
    v349 = 0;
    v350 = 0;
    v141 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v135, v140, v101, &v351, &__p);
    v142 = *(a1 + 32);
    v143 = *(v142 + 296);
    *(v142 + 296) = v141;

    if (__p)
    {
      v349 = __p;
      operator delete(__p);
    }

    if (v351)
    {
      v352 = v351;
      operator delete(v351);
    }

    goto LABEL_21;
  }

LABEL_22:
  if ((objc_msgSend_isAPivotTable(*(a1 + 32), v131, v132, v133, v134) & 1) == 0)
  {
    v162 = objc_msgSend_baseTableModel(*(a1 + 32), v158, v159, v160, v161);
    objc_msgSend_clearPivotOwner(v162, v163, v164, v165, v166);
  }

  v167 = objc_msgSend_baseTableModel(*(a1 + 32), v158, v159, v160, v161);
  v172 = objc_msgSend_hiddenStatesOwner(v167, v168, v169, v170, v171);
  v177 = objc_msgSend_hiddenStates(v172, v173, v174, v175, v176);
  objc_msgSend_setHiddenStates_(*(a1 + 32), v178, v177, v179, v180);

  v185 = objc_msgSend_hiddenStates(*(a1 + 32), v181, v182, v183, v184);

  if (!v185)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v186, v187, v188, v189);
    v190 = [TSTHiddenStates alloc];
    v195 = objc_msgSend_baseTableModel(*(a1 + 32), v191, v192, v193, v194);
    v200 = objc_msgSend_hiddenStatesOwner(v195, v196, v197, v198, v199);
    v204 = objc_msgSend_initWithHiddenStatesOwner_(v190, v201, v200, v202, v203);
    objc_msgSend_setHiddenStates_(*(a1 + 32), v205, v204, v206, v207);
  }

  v208 = objc_msgSend_hiddenStates(*(a1 + 32), v186, v187, v188, v189);
  v213 = objc_msgSend_baseTableModel(*(a1 + 32), v209, v210, v211, v212);
  objc_msgSend_setTableModel_(v208, v214, v213, v215, v216);

  v221 = objc_msgSend_baseTableModel(*(a1 + 32), v217, v218, v219, v220);
  v226 = objc_msgSend_upgradeHiddenFormulaOwnerForColumnsUID(v221, v222, v223, v224, v225);
  v228 = v227;

  v233 = objc_msgSend_baseTableModel(*(a1 + 32), v229, v230, v231, v232);
  v238 = objc_msgSend_upgradeHiddenFormulaOwnerForRowsUID(v233, v234, v235, v236, v237);
  v240 = v239;

  if (v226 | v228)
  {
    v245 = objc_msgSend_hiddenStates(*(a1 + 32), v241, v242, v243, v244);
    objc_msgSend_setHiddenStateOwnerForColumnsUID_(v245, v246, v226, v228, v247);
  }

  if (v238 | v240)
  {
    v248 = objc_msgSend_hiddenStates(*(a1 + 32), v241, v242, v243, v244);
    objc_msgSend_setHiddenStateOwnerForRowsUID_(v248, v249, v238, v240, v250);

    v255 = objc_msgSend_baseTableModel(*(a1 + 32), v251, v252, v253, v254);
    updated = objc_msgSend_upgradeNeedsToUpdateFilterSetForImport(v255, v256, v257, v258, v259);
    v265 = objc_msgSend_hiddenStates(*(a1 + 32), v261, v262, v263, v264);
    objc_msgSend_setNeedsToUpdateFilterSetForImport_(v265, v266, updated, v267, v268);
  }

  v269 = objc_msgSend_columnRowUIDMap(*(a1 + 32), v241, v242, v243, v244);

  if (!v269)
  {
    v274 = [TSTColumnRowUIDMap alloc];
    v279 = objc_msgSend_context(*(a1 + 32), v275, v276, v277, v278);
    v351 = 0;
    v352 = 0;
    v353 = 0;
    __p = 0;
    v349 = 0;
    v350 = 0;
    v281 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v274, v280, v279, &v351, &__p);
    objc_msgSend_setColumnRowUIDMap_(*(a1 + 32), v282, v281, v283, v284);

    if (__p)
    {
      v349 = __p;
      operator delete(__p);
    }

    if (v351)
    {
      v352 = v351;
      operator delete(v351);
    }
  }

  v285 = objc_msgSend_summaryModel(*(a1 + 32), v270, v271, v272, v273);

  if (!v285)
  {
    v290 = [TSTSummaryModel alloc];
    v294 = objc_msgSend_initWithTableInfo_(v290, v291, *(a1 + 32), v292, v293);
    objc_msgSend_setSummaryModel_(*(a1 + 32), v295, v294, v296, v297);
  }

  v298 = objc_msgSend_categoryOrder(*(a1 + 32), v286, v287, v288, v289);

  if (!v298)
  {
    v299 = [TSTCategoryOrder alloc];
    v304 = objc_msgSend_context(*(a1 + 32), v300, v301, v302, v303);
    v305 = *(a1 + 32);
    v351 = 0;
    v352 = 0;
    v353 = 0;
    v307 = objc_msgSend_initWithContext_tableInfo_rowUids_(v299, v306, v304, v305, &v351);
    objc_msgSend_setCategoryOrder_(*(a1 + 32), v308, v307, v309, v310);

    if (v351)
    {
      v352 = v351;
      operator delete(v351);
    }
  }

  v311 = objc_alloc_init(TSCEMutableUIDSet);
  objc_msgSend_setRowUIDsWithPendingGroupingChanges_(*(a1 + 32), v312, v311, v313, v314);

  objc_msgSend_p_updateStorageParentInfoForModels(*(a1 + 32), v315, v316, v317, v318);
  v323 = objc_msgSend_translator(*(a1 + 32), v319, v320, v321, v322);
  objc_msgSend_addReceiverToGroupBy_(v323, v324, *(*(a1 + 32) + 256), v325, v326);

  v327 = [TSTTablePartitioner alloc];
  v331 = objc_msgSend_initWithInfo_(v327, v328, *(a1 + 32), v329, v330);
  objc_msgSend_setPartitioner_(*(a1 + 32), v332, v331, v333, v334);

  v339 = objc_msgSend_summaryModel(*(a1 + 32), v335, v336, v337, v338);
  objc_msgSend_setupReceiver(v339, v340, v341, v342, v343);

  objc_msgSend_resetViewMap(*(a1 + 32), v344, v345, v346, v347);
}

void sub_2211173D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_2211176E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_baseTableModel(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_tableNameEnabled(v6, v7, v8, v9, v10);

  if (v11)
  {
    objc_msgSend_willModifyForUpgrade(*(a1 + 32), v12, v13, v14, v15);
    v19 = *(a1 + 32);

    MEMORY[0x2821F9670](v19, sel_shiftGeometryToIncludeTableNameHeight, v16, v17, v18);
  }
}

void sub_221117770(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_tableWritingDirection(*(a1 + 32), a2, a3, a4, a5) == 1 && (objc_msgSend_isInlineWithText(*(a1 + 32), v6, v7, v8, v9) & 1) == 0)
  {
    v14 = objc_msgSend_geometry(*(a1 + 32), v10, v11, v12, v13);
    objc_msgSend_position(v14, v15, v16, v17, v18);
    v20 = v19;
    v25 = objc_msgSend_geometry(*(a1 + 32), v21, v22, v23, v24);
    objc_msgSend_size(v25, v26, v27, v28, v29);
    v31 = v30;
    v36 = objc_msgSend_geometry(*(a1 + 32), v32, v33, v34, v35);
    objc_msgSend_position(v36, v37, v38, v39, v40);
    v42 = v41;

    v43 = objc_alloc(MEMORY[0x277D802E8]);
    v48 = objc_msgSend_geometry(*(a1 + 32), v44, v45, v46, v47);
    objc_msgSend_size(v48, v49, v50, v51, v52);
    v62 = objc_msgSend_initWithPosition_size_(v43, v53, v54, v55, v56, v20 + v31, v42, v57, v58);

    objc_msgSend_setGeometry_(*(a1 + 32), v59, v62, v60, v61);
  }
}

id sub_221118284(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x223DA02A0](v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSTTableInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_221118818(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22111890C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221118DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_221118DD8(uint64_t a1, void *a2)
{
  v22 = a2;
  CanvasFrame = TSTLayoutGetCanvasFrame(v22);
  v5 = v4;
  sub_2211B89E4(v22, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  v14 = objc_alloc(MEMORY[0x277D802E8]);
  v19 = objc_msgSend_initWithPosition_size_(v14, v15, v16, v17, v18, CanvasFrame, v5, v11, v13);
  v20 = *(*(a1 + 32) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

void sub_221119364(void **a1, void *a2)
{
  v51 = a2;
  v7 = objc_msgSend_customFormatKey(v51, v3, v4, v5, v6);
  v16 = objc_msgSend_customFormat(v51, v8, v9, v10, v11);
  if (!v16)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableInfo(CellMap) applyCellDiff:atCellUID:migrationMap:inverseCellDiff:defaultCellStyle:defaultTextStyle:]_block_invoke", v14, v15);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableInfo.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 11067, 0, "invalid nil value for '%{public}s'", "customFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v28 = objc_msgSend_documentRoot(a1[4], v12, v13, v14, v15);
  v33 = objc_msgSend_customFormatList(v28, v29, v30, v31, v32);
  v35 = objc_msgSend_addCustomFormat_oldKey_fuzzyNameMatching_(v33, v34, v16, v7, 1);

  v36 = objc_alloc(MEMORY[0x277D80650]);
  v41 = objc_msgSend_formatType(v16, v37, v38, v39, v40);
  v45 = objc_msgSend_customFormatForKey_(a1[5], v42, v35, v43, v44);
  v47 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v36, v46, v41, v35, v45);

  objc_msgSend_updateCustomFormatFromPaste_(a1[6], v48, v47, v49, v50);
}

unint64_t sub_221119E0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = 0x7FFFLL;
  v5 = 0x7FFFFFFF;
  if (a1 == 0x7FFFFFFF)
  {
    goto LABEL_34;
  }

  v6 = 0;
  if ((a1 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return v6 | (v4 << 32) | v5;
  }

  v4 = 0x7FFFLL;
  if (!HIDWORD(a2))
  {
    goto LABEL_34;
  }

  v6 = 0;
  if (!a2)
  {
    return v6 | (v4 << 32) | v5;
  }

  v4 = 0x7FFFLL;
  if (a3 == 0x7FFFFFFF)
  {
    goto LABEL_34;
  }

  v6 = 0;
  if ((a3 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return v6 | (v4 << 32) | v5;
  }

  v4 = 0x7FFFLL;
  if (!HIDWORD(a4))
  {
LABEL_34:
    v6 = 0;
    return v6 | (v4 << 32) | v5;
  }

  v6 = 0;
  if (a4)
  {
    v5 = *MEMORY[0x277D813C8];
    v4 = *(MEMORY[0x277D813C8] + 4);
    v7 = HIDWORD(a1);
    v8 = HIDWORD(a3);
    if (WORD2(a1) <= WORD2(a3))
    {
      v9 = WORD2(a3);
    }

    else
    {
      v9 = WORD2(a1);
    }

    v10 = a3;
    v11 = a3 + HIDWORD(a4) - 1;
    v12 = a1;
    v13 = a1 + HIDWORD(a2) - 1;
    if (v12 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    v15 = a2 + v7 - 1;
    if (WORD2(a1) == 0x7FFF || a2 == 0)
    {
      v15 = 0x7FFF;
    }

    LOWORD(v8) = a4 + v8 - 1;
    if (WORD2(a3) == 0x7FFF || a4 == 0)
    {
      LOWORD(v8) = 0x7FFF;
    }

    if (v15 >= v8)
    {
      LODWORD(v8) = v8;
    }

    else
    {
      LODWORD(v8) = v15;
    }

    if (v13 >= v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = v13;
    }

    if (v18 < v14 || v9 > v8)
    {
      v6 = *(MEMORY[0x277D813C8] + 6) << 48;
    }

    else
    {
      v6 = 0;
      v5 = v14;
      v4 = v9;
    }
  }

  return v6 | (v4 << 32) | v5;
}

void *sub_221119F90(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = v3 ^ *a2;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 ^ *a2;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v4 == v9)
      {
        if (result[2] == *a2 && result[3] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v6)
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

uint64_t sub_22111A04C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22111A0C8(result, a4);
  }

  return result;
}

void sub_22111A0AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22111A0C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_221087FE8(a1, a2);
  }

  sub_22107C148();
}

void sub_22111A308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSCEThunkValue;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_22111AB1C(void *a1, id *a2)
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

void sub_22111ABFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22111B784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  TSCE::CellRecordExpandedArchive::~CellRecordExpandedArchive(va);
  _Unwind_Resume(a1);
}

void *sub_22111B7CC(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_221122DC8(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_22111BB5C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 38) & 4) == 0)
  {
    return;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 32);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(v4 + 24);
  v7 = *v5;
  if (v6 >= *v5)
  {
    if (v7 != *(v4 + 28))
    {
LABEL_8:
      *v5 = v7 + 1;
      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordExpandedArchive>(*(v4 + 16));
      v9 = *(v4 + 24);
      v10 = *(v4 + 32) + 8 * v9;
      *(v4 + 24) = v9 + 1;
      *(v10 + 8) = v8;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 16));
    v5 = *(v4 + 32);
    v7 = *v5;
    goto LABEL_8;
  }

  *(v4 + 24) = v6 + 1;
  v8 = *&v5[2 * v6 + 2];
LABEL_9:
  v11 = *(a2 + 36);
  v12 = *(v8 + 16);
  *(v8 + 16) = v12 | 2;
  v13 = *(a2 + 32);
  v14 = v12 | 6;
  *(v8 + 16) = v12 | 6;
  *(v8 + 32) = v11;
  *(v8 + 36) = v13;
  v15 = *(a2 + 16);
  if (v15)
  {
    v14 = v12 | 0xE;
    *(v8 + 16) = v12 | 0xE;
    *(v8 + 40) = v15;
  }

  v16 = *(a2 + 38);
  if ((v16 & 2) != 0)
  {
    v14 |= 0x10u;
    *(v8 + 16) = v14;
    *(v8 + 48) = 1;
  }

  if ((v16 & 8) != 0)
  {
    v14 |= 0x20u;
    *(v8 + 16) = v14;
    *(v8 + 49) = 1;
  }

  *(v8 + 16) = v14 | 1;
  v17 = *(v8 + 24);
  if (!v17)
  {
    v18 = *(v8 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ExpandedEdgesArchive>(v18);
    *(v8 + 24) = v17;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22111BD04;
  v19[3] = &unk_27845F218;
  v19[4] = *(a1 + 32);
  v19[5] = v17;
  sub_2215C574C(a2, v19);
}

void sub_22111BE04(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = objc_msgSend_cellDependencies(v4, v5, v6, v7, v8);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v3;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v16, v21, 16);
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v20 = *(*(&v16 + 1) + 8 * v14);
        sub_22111AB1C(v9 + 3, &v20);
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v15, &v16, v21, 16);
    }

    while (v12);
  }
}

void sub_22111C054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212E22F0(&a9);

  _Unwind_Resume(a1);
}

void sub_22111C398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, id a16)
{
  sub_2212E22F0(&a14);

  _Unwind_Resume(a1);
}

void **sub_22111C3E8(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = a2;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = ((v7 - *a1) >> 3) + 1;
    if (v11 >> 61)
    {
      sub_22107C148();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    v14 = v13 >> 2;
    if (v13 >> 2 <= v11)
    {
      v14 = ((v7 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 3;
    v18[4] = a1;
    if (v15)
    {
      sub_22107C1F0(a1, v15);
    }

    v18[0] = 0;
    v18[1] = (8 * v16);
    v18[2] = (8 * v16);
    v18[3] = 0;
    sub_221122E8C(v18, a3);
    v4 = sub_221122FD0(a1, v18, v4);
    sub_22107C26C(v18);
  }

  else if (a2 == v7)
  {
    *v7 = *a3;
    *(a1 + 8) = v7 + 1;
  }

  else
  {
    sub_221122E10(a1, a2, *(a1 + 8), (a2 + 8));
    v8 = *(a1 + 8) <= a3 || v4 > a3;
    v9 = 1;
    if (v8)
    {
      v9 = 0;
    }

    objc_storeStrong(v4, a3[v9]);
  }

  return v4;
}

void sub_22111C518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22111C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22111CA58;
  v9[3] = &unk_27845F268;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = a2;
  v12 = a3;
  v9[4] = v3;
  v5 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v10 = v5;
  objc_msgSend_enumerateRangesUsingBlock_(v4, v6, v9, v7, v8);
}

uint64_t sub_22111CA58(uint64_t a1, const char *a2, int a3)
{
  v3 = *(a1 + 40);
  v4 = (((*(a1 + 56) + *(a1 + 48)) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (a3 + a2 - 1);
  v6[0] = a2 | (*(a1 + 48) << 32);
  v6[1] = v4;
  return objc_msgSend_applyBlockToRecordsInRange_cellRestrictions_doWillModify_block_(*(a1 + 32), a2, v6, *(a1 + 64), *(a1 + 72), v3);
}

void sub_22111CFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22111D014(__n128 *a1, __n128 *a2)
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

void sub_22111D038(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22111D050(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a2 + 32) | (*(a2 + 36) << 32);
  sub_22111D090(v2 + 48, &v3);
}

void sub_22111D090(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_22107C148();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2210874C4(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_22111D1DC(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22111D25C;
  v2[3] = &unk_27845F2F8;
  v3 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  sub_2215C5978(a2, v2);
}

void sub_22111D25C(uint64_t a1, int a2, void *a3)
{
  if (*(a1 + 40) == a2)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22111D2E0;
    v5[3] = &unk_27845F2D8;
    v5[4] = *(a1 + 32);
    TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v5);
  }
}

void sub_22111D2E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *v3) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_22107C148();
    }

    v8 = v4 - *v3;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2210874C4(*(a1 + 32), v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(v3 + 8) - *v3;
    v13 = v11 - v12;
    memcpy(v11 - v12, *v3, v12);
    v14 = *v3;
    *v3 = v13;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(v3 + 8) = v6;
}

void sub_22111D4D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_22107C800(va, v6);
  _Block_object_dispose(va1, 8);
  sub_221122744(v2 + 48);
  _Unwind_Resume(a1);
}

void sub_22111D660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_22107C800(va, v6);
  _Block_object_dispose(va1, 8);
  sub_221122744(v2 + 48);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_22111D748(uint64_t a1, uint64_t a2)
{
  v3.coordinate.row = *(a2 + 32);
  v3.coordinate.column = *(a2 + 36);
  v3._tableUID = *(a1 + 32);
  return TSCECellRefSet::addCellRef(*(a1 + 48), &v3);
}

void sub_22111D89C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32) | (*(a2 + 36) << 32);
  v15.coordinate = v3;
  v15._tableUID = *(a1 + 40);
  TSCECellRefSet::addCellRef(*(a1 + 56), &v15);
  if (*(a1 + 64) == 1)
  {
    v7 = *(a1 + 32);
    *v13 = v3;
    *&v13[8] = *(a1 + 40);
    if (v7)
    {
      objc_msgSend_originalCellRefForUpdatedCellRef_(v7, v4, v13, v5, v6);
      coordinate = v14.coordinate;
    }

    else
    {
      coordinate = 0;
      memset(&v14, 0, sizeof(v14));
    }

    if (coordinate.row != 0x7FFFFFFF && (*&coordinate & 0xFFFF00000000) != 0x7FFF00000000 && *&v14._tableUID != 0)
    {
      TSCECellRefSet::addCellRef(*(a1 + 56), &v14);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    *v13 = v3;
    *&v13[8] = *(a1 + 40);
    if (v9)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(v9, v4, v13, v5, v6);
      v10 = v14.coordinate;
    }

    else
    {
      v10 = 0;
      memset(&v14, 0, sizeof(v14));
    }

    if (v10.row != 0x7FFFFFFF && (*&v10 & 0xFFFF00000000) != 0x7FFF00000000 && *&v14._tableUID != 0)
    {
      TSCECellRefSet::addCellRef(*(a1 + 56), &v14);
    }

    *v13 = objc_msgSend_mergeRangeAtOriginalCellRef_(*(a1 + 32), v4, &v15, v5, v6);
    *&v13[8] = v11;
    if (TSUCellRect::isValid(v13))
    {
      v12 = *(a1 + 32);
      TSUCellRect::enumerateCoordinatesUsingBlock();
    }
  }
}

TSCECellCoordSet *sub_22111DA70(uint64_t a1, TSUCellCoord *a2)
{
  *&v13.coordinate.row = *(a1 + 40);
  v3 = *a2;
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v13._tableUID._upper = v5;
  v13.coordinate = v3;
  TSCECellRefSet::addCellRef(v4, &v13);
  result = *(a1 + 32);
  if (result)
  {
    result = objc_msgSend_updatedCellRefForOriginalCellRef_(result, v6, &v13, v7, v8);
    coordinate = v12.coordinate;
  }

  else
  {
    coordinate = 0;
    memset(&v12, 0, sizeof(v12));
  }

  v11 = coordinate.row == 0x7FFFFFFF || (*&coordinate & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v11 && *&v12._tableUID != 0)
  {
    return TSCECellRefSet::addCellRef(*(a1 + 64), &v12);
  }

  return result;
}

void sub_22111DC34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_22107C800(va, v6);
  _Block_object_dispose(va1, 8);
  sub_221122744(v2 + 48);
  _Unwind_Resume(a1);
}

void sub_22111E59C(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  if (*(v7 + 232) == a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(v7 + 8), a2, a2, a4, a5);
    if (!v8)
    {
      return;
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22111E680;
  v11[3] = &unk_27845F400;
  v14 = *(a1 + 48);
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v10 = v8;
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v11);
}

uint64_t sub_22111E680(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_isCellDirty_(*(a1 + 32), a2, a2, a4, a5);
  if (result)
  {
    if (*(a1 + 48) != 1 || (result = objc_msgSend_isCellInACycle_(*(a1 + 32), v8, a2, v9, v10), (result & 1) == 0))
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }

  return result;
}

void sub_22111E8C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7 = NSStringFromTSUCellCoord();
  objc_msgSend_appendFormat_(v3, v4, @"  %@<%lu>\n", v5, v6, v7, *(a2 + 16));
}

void sub_22111E9DC(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  if (*(v8 + 232) == a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(v8 + 8), a2, a2, a4, a5);
    if (!v9)
    {
      return;
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22111EAC8;
  v12[3] = &unk_27845F478;
  v10 = *(a1 + 40);
  v13 = v9;
  v14 = v10;
  v15 = v6;
  v11 = v9;
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v12);
}

TSCECellCoordSet *sub_22111EAC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_isCellInACycle_(*(a1 + 32), a2, a2, a4, a5);
  if (result)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *a2 & 0xFFFFFFFFFFFFLL;
    v11 = v9;
    return sub_2212DFCE8(v8, &v10);
  }

  return result;
}

void sub_22111ECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221122744(va);

  _Unwind_Resume(a1);
}

void sub_22111ED14(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v8 = *(a1 + 32);
  if (*(v8 + 232) == a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(v8 + 8), a2, a2, a4, a5);
    if (!v9)
    {
      return;
    }
  }

  v10 = *(*(a1 + 48) + 32) | (*(*(a1 + 48) + 36) << 32);
  v11 = *(*(a1 + 32) + 232);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22111EE44;
  v14[3] = &unk_27845F4C8;
  v15 = v9;
  v12 = *(a1 + 40);
  v19 = v6;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  v13 = v9;
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v14);
}

uint64_t sub_22111EE44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_isCellInACycle_(*(a1 + 32), a2, a2, a4, a5);
  if ((result & 1) == 0)
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 60);
    v12 = *a2 & 0xFFFFFFFFFFFFLL;
    v13 = v11;
    return objc_msgSend_addCellRef_fromCellRef_(v10, v8, &v12, a1 + 48, v9);
  }

  return result;
}

void sub_22111EF5C(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      sub_22107C148();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_221122A3C(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

void sub_22111F330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22111F378(__n128 *a1, __n128 *a2)
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

void sub_22111F39C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22111FB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22111FC34(&a32);
  v34 = *(v32 - 144);
  if (v34)
  {
    *(v32 - 136) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void *sub_22111FC34(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_22111FD64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 38);
  if ((v7 & 4) != 0 && (v7 & 2) == 0 && *(a2 + 16) >= 2uLL)
  {
    v8 = a1[4];
    v9 = v8[116];
    v57 = *(a2 + 32) | (*(a2 + 36) << 32);
    v58 = v9;
    objc_msgSend_depthFirstSearch_state_(v8, a2, &v57, a1[6], a5);
    v7 = *(a2 + 38);
  }

  if (sub_2215C3528((a1[4] + 136), *(a2 + 36), *(a2 + 32)) != (v7 & 2) >> 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCECellDependencies findAndRecordCyclesInDirtyCells:outCellsInCycles:]_block_invoke", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 1504, 0, "Cycle grid out of sync.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  v24 = *(a2 + 16) != 0;
  if (v24 != sub_2215C3528((a1[4] + 96), *(a2 + 36), *(a2 + 32)))
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCECellDependencies findAndRecordCyclesInDirtyCells:outCellsInCycles:]_block_invoke", v26, v27);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 1505, 0, "IsDirty grid out of sync.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  if (*(a2 + 16))
  {
    v39 = (*(a2 + 38) & 2) == 0;
  }

  else
  {
    v39 = 0;
  }

  result = sub_2215C3528((a1[4] + 176), *(a2 + 36), *(a2 + 32));
  if (v39 != result)
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSCECellDependencies findAndRecordCyclesInDirtyCells:outCellsInCycles:]_block_invoke", v42, v43);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v47, v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v50, v45, v49, 1506, 0, "IsDirtyAndNotInACycle grid out of sync.");

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

  if ((*(a2 + 38) & 2) != 0)
  {
    if (*(a2 + 16))
    {
      v55 = a1[5];
      v56 = *(a1[4] + 232);
      v57 = *(a2 + 32) | (*(a2 + 36) << 32);
      v58 = v56;
      return objc_msgSend_addLeaf_withOptions_(v55, v41, &v57, 0, v43);
    }
  }

  return result;
}

void sub_221120B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char *a38)
{
  _Block_object_dispose(&a29, 8);
  sub_22107C860(v39 + 64, a38);
  _Block_object_dispose((v40 - 200), 8);
  sub_2210BDEC0(v38 + 48);
  _Block_object_dispose((v40 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t **sub_221120C0C(uint64_t **result, TSUCellCoord *a2, _BYTE *a3)
{
  v4 = result;
  if (LOWORD(a2[1].row) == *(result[8] + 8))
  {
    v6 = *result[9];
    result = TSUCellRect::contains(result + 5, v6);
    if (result)
    {
      *(v4[5][1] + 24) = 1;
      *a3 = 1;
    }
  }

  if ((*(v4[5][1] + 24) & 1) == 0)
  {
    if (LOWORD(a2[1].row) == *(v4[4] + 116))
    {
      v7 = (v4[6][1] + 48);

      return TSCECellCoordSet::addCellCoord(v7, a2);
    }

    else
    {
      v8 = (v4[7][1] + 48);

      return sub_221122A94(v8, a2);
    }
  }

  return result;
}

uint64_t sub_221120D00(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_cellHasDeepPrecedentInRange_cellRange_(*(a1 + 32), a2, a2, *(a1 + 48), a5);
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

unsigned __int16 *sub_221120EB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = a1[4];
  if (*(a2 + 8) == result[116])
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(result, a2, a2, 0, a5);
    result = sub_2215C56F4(CellRecord_willModifyOnTile, a1[5]);
    if (result)
    {
      v9 = a1[6];

      return TSCECellCoordSet::addCellCoord(v9, a2);
    }
  }

  return result;
}

uint64_t **sub_221120F24(uint64_t **result, uint64_t a2)
{
  if ((*(a2 + 38) & 4) != 0)
  {
    v3 = result;
    result = sub_2215C56F4(a2, result[4]);
    if (result)
    {
      result = sub_2215C56F4(a2, v3[5]);
      if (result)
      {
        v4 = v3[6];
        v5.row = *(a2 + 32);
        v5.column = *(a2 + 36);
        return TSCECellCoordSet::addCellCoord(v4, &v5);
      }
    }
  }

  return result;
}

uint64_t sub_221121010(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 16) == 1)
  {
    v13 = v5;
    v14 = v6;
    v8 = result;
    v10 = *(result + 32);
    v9 = *(result + 40);
    LODWORD(v10) = *(v10 + 232);
    v12.coordinate.row = *(a2 + 32);
    v12.coordinate.column = *(a2 + 36);
    *&v12.tableID = v10;
    result = TSCEReferenceSet::containsRef(v9, &v12, a3, a4, a5);
    if ((result & 1) == 0)
    {
      return objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(*(*(v8 + 32) + 8), v11, &v12, a2, 0);
    }
  }

  return result;
}

void sub_2211211CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2211211E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void sub_221121380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 104), 8);
  sub_221122744(v8 + 48);
  _Unwind_Resume(a1);
}

void sub_2211214D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  _Block_object_dispose(&a14, 8);
  sub_22107C860(v23 + 64, a23);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_2211214FC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4.row = *(a2 + 32);
  v4.column = *(a2 + 36);
  return TSCECellCoordSet::addCellCoord((v2 + 48), &v4);
}

void sub_2211216E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221121708(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "[TSCECellDependencies dirtyPrecedentCountsAreConsistent:]_block_invoke", a4, a5);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellDependencies.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1946, 0, "invalid nil value for '%{public}s'", "cellRecord");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  v19 = *(a2 + 32) | (*(a2 + 36) << 32);
  v56 = v19;
  v20 = *(a2 + 16);
  if (v20)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  if ((*(a2 + 38) & 0x102) == 0)
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 232);
    v54 = v19;
    v55 = v22;
    v23 = objc_msgSend_dgl_computedNumberOfDirtyPrecedents_(*(v21 + 8), a2, &v54, a4, a5);
    v24 = *(a2 + 16);
    if (v23)
    {
      v25 = v23 + 1;
      if (v24 == v23 + 1)
      {
        goto LABEL_21;
      }

      if (v24)
      {
        v26 = objc_msgSend_dgl_explainDirtyPrecedentCount_(*(*(a1 + 32) + 8), a2, &v54, a4, a5);
        *(a2 + 16) = v25;
        if (*(a1 + 56) == 1)
        {
          ++qword_27CFB51D0;
        }

        goto LABEL_20;
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a3 = 1;
      if (*(a1 + 56) != 1)
      {
LABEL_21:
        v20 = *(a2 + 16);
        goto LABEL_22;
      }

      v26 = objc_msgSend_dgl_explainDirtyPrecedentCount_(*(*(a1 + 32) + 8), a2, &v54, a4, a5);
      v30 = objc_msgSend_dgl_precedentsAsString_dirtyOnly_(*(*(a1 + 32) + 8), v28, &v54, 0, v29);
      v27 = v30;
      if (++qword_27CFB51C8 <= 0x31)
      {
        if (objc_msgSend_length(v30, v31, v32, v33, v34) >= 0x1F5)
        {
          v38 = MEMORY[0x277CCACA8];
          v39 = objc_msgSend_substringToIndex_(v27, v35, 200, v36, v37);
          v43 = objc_msgSend_stringWithFormat_(v38, v40, @"%@...<truncated>", v41, v42, v39);

          v27 = v43;
        }

        v44 = objc_msgSend_stringByAppendingString_(v26, v35, @"  +1: This cell is dirty\n", v36, v37);

        v26 = v44;
        NSLog(&cfstr_RecomputedLuVs.isa, v25, 0, v44, v27);
      }
    }

    else
    {
      if (v24 < 2)
      {
        goto LABEL_21;
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a3 = 1;
      if (*(a1 + 56) != 1)
      {
        goto LABEL_21;
      }

      v26 = TSKUIDStruct::description((*(a1 + 32) + 216));
      v27 = NSStringFromTSUCellCoord();
      NSLog(&cfstr_RecomputedClea.isa, v26, v27, v24);
    }

LABEL_20:
    goto LABEL_21;
  }

LABEL_22:
  if ((v20 != 0) != objc_msgSend_isCellDirty_(*(a1 + 32), a2, &v56, a4, a5))
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v48 = *(a2 + 38) & 2;
  if (objc_msgSend_isCellInACycle_(*(a1 + 32), v45, &v56, v46, v47) != v48 >> 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v52 = *(a2 + 38) & 4;
  result = objc_msgSend_containsFormula_(*(a1 + 32), v49, &v56, v50, v51);
  if (result != v52 >> 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

void sub_221121B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_currentCellBeingModified(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v11 = *a2;
  if (v7 == *a2)
  {
    v12 = *(a2 + 8);
    if (((v11 ^ v7) & 0x101FFFF00000000) == 0 && v12 == v8)
    {
      return;
    }
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v35 = *a2;
  if (v12 == *(a1 + 48))
  {
    if (__PAIR64__(*(*(a1 + 40) + 36), *(*(a1 + 40) + 32)) == __PAIR64__(WORD2(v11), v11))
    {
      return;
    }

    v13 = *(a1 + 32);
  }

  else
  {
    v13 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(a1 + 32) + 8), v8, v12, v9, v10);
  }

  v16 = v13;
  if (v13)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v13, v14, &v35, 1, v15);
    v21 = CellRecord_willModifyOnTile;
    if (CellRecord_willModifyOnTile)
    {
      v22 = *(CellRecord_willModifyOnTile + 38);
      if ((v22 & 0x100) == 0)
      {
        if ((v22 & 2) == 0 || (*(*(a1 + 40) + 38) & 2) == 0)
        {
          if (*(CellRecord_willModifyOnTile + 16) < 2uLL)
          {
            v23 = *(*(a1 + 32) + 8);
            v24 = *(a1 + 48);
            v25 = MEMORY[0x277CCACA8];
            v26 = NSStringFromTSUCellCoord();
            v30 = objc_msgSend_stringWithFormat_(v25, v27, @"dirty precedents count consistency error in %@ (count is %lu, should be >1)", v28, v29, v26, *(v21 + 16));
            objc_msgSend_assertForInconsistentDependGraph_assertMessage_(v23, v31, v24, v30, v32);

            objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(v16, v33, v21, 1, v34);
          }

          else
          {
            objc_msgSend_decrDirtySelfPlusPrecedentsCount_(v16, v18, CellRecord_willModifyOnTile, v19, v20);
          }
        }

        if (*(v21 + 16) == 1)
        {
          objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(*(*(a1 + 32) + 8), v18, a2, v21, 0);
        }
      }
    }
  }
}

void sub_221121E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  _Block_object_dispose(&a14, 8);
  sub_22107C860(v23 + 64, a23);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_221121EA8(TSCECellCoordSet *result, uint64_t a2)
{
  if ((*(a2 + 38) & 0x80) != 0)
  {
    v2.row = *(a2 + 32);
    v2.column = *(a2 + 36);
    return TSCECellCoordSet::addCellCoord((*(result->_rowsPerColumn.__tree_.__size_ + 8) + 48), &v2);
  }

  return result;
}

void sub_2211221F8(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 38) & 4) == 0)
  {
    return;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 40);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(v4 + 32);
  v7 = *v5;
  if (v6 >= *v5)
  {
    if (v7 != *(v4 + 36))
    {
LABEL_8:
      *v5 = v7 + 1;
      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordArchive>(*(v4 + 24));
      v9 = *(v4 + 32);
      v10 = *(v4 + 40) + 8 * v9;
      *(v4 + 32) = v9 + 1;
      *(v10 + 8) = v8;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 24));
    v5 = *(v4 + 40);
    v7 = *v5;
    goto LABEL_8;
  }

  *(v4 + 32) = v6 + 1;
  v8 = *&v5[2 * v6 + 2];
LABEL_9:
  v11 = *(a2 + 36);
  v12 = *(v8 + 16);
  *(v8 + 16) = v12 | 2;
  v13 = *(a2 + 32);
  *(v8 + 56) = v11;
  *(v8 + 60) = v13;
  v14 = v12 | 0x106;
  *(v8 + 16) = v12 | 0x106;
  *(v8 + 76) = 1;
  v15 = *(a2 + 16);
  if (v15)
  {
    v14 = v12 | 0x10E;
    *(v8 + 16) = v12 | 0x10E;
    *(v8 + 64) = v15;
  }

  v16 = *(a2 + 38);
  if ((v16 & 2) != 0)
  {
    v14 |= 0x10u;
    *(v8 + 16) = v14;
    *(v8 + 72) = 1;
  }

  if ((v16 & 8) != 0)
  {
    v14 |= 0x20u;
    *(v8 + 16) = v14;
    *(v8 + 73) = 1;
  }

  *(v8 + 16) = v14 | 1;
  v17 = *(v8 + 48);
  if (!v17)
  {
    v18 = *(v8 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::EdgesArchive>(v18);
    *(v8 + 48) = v17;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2211223B0;
  v19[3] = &unk_27845F218;
  v19[4] = *(a1 + 32);
  v19[5] = v17;
  sub_2215C574C(a2, v19);
}

void sub_221122558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221122594(void *a1, uint64_t a2, _BYTE *a3)
{
  if ((*(a2 + 38) & 4) != 0)
  {
    v5 = *(a1[4] + 8);
    v7 = *(a2 + 32) | (*(a2 + 36) << 32);
    sub_22111D090(v5 + 48, &v7);
    ++*(*(a1[5] + 8) + 24);
    v6 = a1[6];
    if (v6)
    {
      if (*(*(a1[5] + 8) + 24) >= v6)
      {
        *a3 = 1;
      }
    }
  }
}

uint64_t *sub_2211226F4(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    sub_221122744(v2 + 40);
    v3 = sub_221122744(v2);
    MEMORY[0x223DA1450](v3, 0x10A0C40864A76ABLL);
  }

  return a1;
}

uint64_t sub_221122744(uint64_t a1)
{
  sub_221122780(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221122780(uint64_t a1, char **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22107C860((v2 + 5), v2[6]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **sub_2211227C8(void *a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  v3 = (*a2 + (*(a2 + 2) << 16)) ^ v2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (*a2 + (*(a2 + 2) << 16)) ^ v2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  v9 = *a2;
  while (1)
  {
    v10 = v8[1];
    if (v10 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v4)
      {
        v10 %= *&v4;
      }
    }

    else
    {
      v10 &= *&v4 - 1;
    }

    if (v10 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  v11 = v8[2];
  v13 = v9 == v11;
  v12 = (v11 ^ v9) & 0x101FFFF00000000;
  v13 = v13 && v12 == 0;
  if (!v13 || v2 != *(v8 + 12))
  {
    goto LABEL_23;
  }

  return v8;
}

void sub_221122A3C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t **sub_221122A94(void *a1, uint64_t *a2)
{
  v2 = *(a2 + 4);
  v3 = (*a2 + (*(a2 + 2) << 16)) ^ v2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (*a2 + (*(a2 + 2) << 16)) ^ v2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  v9 = *a2;
  while (1)
  {
    v10 = v8[1];
    if (v10 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v4)
      {
        v10 %= *&v4;
      }
    }

    else
    {
      v10 &= *&v4 - 1;
    }

    if (v10 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  v11 = v8[2];
  v13 = v9 == v11;
  v12 = (v11 ^ v9) & 0x101FFFF00000000;
  v13 = v13 && v12 == 0;
  if (!v13 || v2 != *(v8 + 12))
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t sub_221122D00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221122D7C(result, a4);
  }

  return result;
}

void sub_221122D60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221122D7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_221122A3C(a1, a2);
  }

  sub_22107C148();
}

void sub_221122DC8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_221122E10(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    v8 = *v6;
    *v6++ = 0;
    *v7 = v8;
    v7 += 8;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = (v4 - 8);
    v10 = a2 - 8;
    do
    {
      v11 = *&v5[v10];
      *&v5[v10] = 0;
      v12 = *v9;
      *v9-- = v11;

      v5 -= 8;
    }

    while (v5);
  }
}

id sub_221122E8C(void ***a1, id *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 2;
      }

      v12 = a1[4];
      v14 = a1[4];
      sub_22107C1F0(v12, v11);
    }

    v8 = ((v7 >> 3) + 1) / -2;
    v5 = &v6[-(((v7 >> 3) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        v9 = *v6;
        *v6++ = 0;
        v10 = *v5;
        *v5++ = v9;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[v8];
    a1[2] = v5;
  }

  result = *a2;
  *v5 = result;
  ++a1[2];
  return result;
}

uint64_t sub_221122FD0(uint64_t a1, void *a2, void **a3)
{
  v6 = a2[1];
  v7 = *(a1 + 8);
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      v10 = *v9;
      *v9++ = 0;
      *v8++ = v10;
    }

    while (v9 != v7);
    v11 = a3;
    do
    {
      v12 = *v11++;
    }

    while (v11 != v7);
  }

  v13 = *a1;
  v14 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v15 = (v14 + v13 - a3);
  if (v13 != a3)
  {
    v16 = v13;
    v17 = (v14 + v13 - a3);
    do
    {
      v18 = *v16;
      *v16++ = 0;
      *v17++ = v18;
    }

    while (v16 != a3);
    do
    {
      v19 = *v13++;
    }

    while (v13 != a3);
  }

  a2[1] = v15;
  v20 = *a1;
  *a1 = v15;
  *(a1 + 8) = v20;
  a2[1] = v20;
  v21 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v21;
  v22 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_2211230D4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221123150(result, a4);
  }

  return result;
}

void sub_221123134(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221123150(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2210874C4(a1, a2);
  }

  sub_22107C148();
}

void *sub_22112318C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_22112323C(result, a2);
  }

  return result;
}

void sub_22112323C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_22112328C(a1, a2);
  }

  sub_22107C148();
}

void sub_22112328C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_2211232E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  sub_221122D00(a2 + 16, a3[2], a3[3], 0xAAAAAAAAAAAAAAABLL * ((a3[3] - a3[2]) >> 2));
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = sub_221122D00(a2 + 40, a3[5], a3[6], 0xAAAAAAAAAAAAAAABLL * ((a3[6] - a3[5]) >> 2));
  *(a2 + 64) = *(a3 + 64);
  return result;
}

void sub_221123378(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_221123394(void ***a1)
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
        v4 -= 9;
        sub_22112341C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_22112341C(uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    a2[6] = v3;
    operator delete(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    a2[3] = v4;

    operator delete(v4);
  }
}

uint64_t **sub_221123474(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 4);
  v4 = (*a2 + (*(a2 + 2) << 16)) ^ v3;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (*a2 + (*(a2 + 2) << 16)) ^ v3;
    if (*&v2 <= v4)
    {
      v6 = v4 % v2.i32[0];
    }
  }

  else
  {
    v6 = (v2.i32[0] - 1) & v4;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    v9 = *a2;
    do
    {
      v10 = result[1];
      if (v10 == v4)
      {
        v11 = result[2];
        v13 = v9 == v11;
        v12 = (v11 ^ v9) & 0x101FFFF00000000;
        v13 = v13 && v12 == 0;
        if (v13 && v3 == *(result + 12))
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
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

        if (v10 != v6)
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

uint64_t sub_22112355C(uint64_t a1, uint64_t *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_22107C148();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_22112328C(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  sub_2211232E8(a1, 72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = *(a1 + 8);
  v8 = 72 * v2 + *a1 - v7;
  sub_2211236A8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_22112382C(&v13);
  return v12;
}

void sub_221123694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22112382C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2211236A8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 8) = *(v7 + 2);
      *a4 = v8;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v7 + 1);
      *(a4 + 32) = v7[4];
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 56) = v7[7];
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
      *(a4 + 64) = *(v7 + 64);
      v7 += 9;
      a4 += 72;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_22112341C(a1, v5);
      v5 += 9;
    }
  }

  return sub_2211237A0(v10);
}

uint64_t sub_2211237A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2211237D8(a1);
  }

  return a1;
}

void sub_2211237D8(uint64_t *a1)
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
      v3 -= 9;
      sub_22112341C(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_22112382C(void **a1)
{
  sub_221123860(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_221123860(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    sub_22112341C(v4, (i - 72));
  }
}

uint64_t *sub_2211238A8(void *a1, uint64_t *a2)
{
  result = sub_221123474(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

unint64_t sub_2211238E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_2212697C0(*(a1 + 24));
  }

  else
  {
    return *(a1 + 32) | (BYTE2(*(a1 + 32)) << 32);
  }
}

int *sub_221123904(unint64_t a1, uint64_t a2)
{
  v7 = a1;
  v3 = *(a2 + 16);
  *(a2 + 32) = (a1 >> 16) & 0xFF0000 | a1;
  *(a2 + 16) = v3 | 3;
  v4 = *(a2 + 24);
  if (!v4)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v5);
    *(a2 + 24) = v4;
  }

  return sub_221269820(&v7, v4);
}

unint64_t sub_22112397C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = &TST::_CellID_default_instance_;
  }

  return sub_2211238E0(v1);
}

uint64_t sub_2211239EC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) |= 1u;
  v6 = *(a3 + 24);
  if (!v6)
  {
    v7 = *(a3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v7);
    *(a3 + 24) = v6;
  }

  sub_221123904(a1, v6);
  *(a3 + 16) |= 2u;
  result = *(a3 + 32);
  if (!result)
  {
    v9 = *(a3 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::Arena::CreateMaybeMessage<TST::TableSize>(v9);
    *(a3 + 32) = result;
  }

  *(result + 16) |= 1u;
  *(result + 24) = WORD2(a2) | (a2 << 16);
  return result;
}

void sub_221123AF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = a3;
  v11 = *(a1 + 184);
  if (v11 > 4)
  {
    switch(v11)
    {
      case 5:
        objc_msgSend_setBoolValue_(v5, v6, *(a1 + 188), v8, v9);
        break;
      case 6:
        objc_msgSend_setDurationTimeIntervalValue_(v5, v6, v7, v8, v9, *(a1 + 192));
        break;
      case 9:
        if ((*(a1 + 19) & 4) != 0)
        {
          TSUDecimal::TSUDecimal(&v103);
          objc_msgSend_setCurrencyDecimalValue_(v5, v21, v103._decimal.w[0], v103._decimal.w[1], v22);
        }

        else
        {
          objc_msgSend_setCurrencyDoubleValue_(v5, v6, v7, v8, v9, *(a1 + 192));
        }

        break;
    }
  }

  else if (v11 == 1)
  {
    if ((*(a1 + 19) & 4) != 0)
    {
      TSUDecimal::TSUDecimal(&v104);
      objc_msgSend_setNumberDecimalValue_(v5, v19, v104._decimal.w[0], v104._decimal.w[1], v20);
    }

    else
    {
      objc_msgSend_setNumberDoubleValue_(v5, v6, v7, v8, v9, *(a1 + 192));
    }
  }

  else
  {
    if (v11 == 2)
    {
      v12 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v6, *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL, v8, v9);
      objc_msgSend_setStringValue_(v5, v16, v12, v17, v18);
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_19;
      }

      v12 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v6, v7, v8, v9, *(a1 + 192));
      objc_msgSend_setDateValue_(v5, v13, v12, v14, v15);
    }
  }

LABEL_19:
  v23 = *(a1 + 16);
  if ((v23 & 2) != 0)
  {
    v24 = *(a1 + 32);
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = sub_2211242C8;
    v101[3] = &unk_27845DF50;
    v102 = v5;
    v25 = v10;
    v26 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v25, v27, v24, v26, 0, v101);

    v23 = *(a1 + 16);
  }

  if ((v23 & 4) != 0)
  {
    v28 = *(a1 + 40);
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = sub_2211242D4;
    v99[3] = &unk_27845DF78;
    v100 = v5;
    v29 = v10;
    v30 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v29, v31, v28, v30, 0, v99);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x2000) != 0)
  {
    v32 = *(a1 + 128);
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = sub_2211242E0;
    v97[3] = &unk_27845F710;
    v98 = v5;
    v33 = v10;
    v34 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v33, v35, v32, v34, 0, v97);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x20000) != 0)
  {
    v36 = objc_msgSend_instanceWithArchive_unarchiver_(TSTCellSpec, v6, *(a1 + 160), v10, v9);
    objc_msgSend_setCellSpec_(v5, v37, v36, v38, v39);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x10) != 0)
  {
    v40 = *(a1 + 56);
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = sub_2211242EC;
    v95[3] = &unk_27845E090;
    v96 = v5;
    v41 = v10;
    v42 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v41, v43, v40, v42, 0, v95);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x800) != 0)
  {
    v44 = *(a1 + 112);
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = sub_2211242F8;
    v93[3] = &unk_27845F738;
    v94 = v5;
    v45 = v10;
    v46 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v45, v47, v44, v46, 0, v93);

    v23 = *(a1 + 16);
  }

  v48 = *(a1 + 200) & (v23 << 8 >> 31);
  if ((v23 & 0x20) != 0)
  {
    v49 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 64), v8, v9);
    objc_msgSend_setFormat_isExplicit_(v5, v50, v49, v48 & 1, v51);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x40) != 0)
  {
    v52 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 72), v8, v9);
    objc_msgSend_setFormat_isExplicit_(v5, v53, v52, (v48 >> 1) & 1, v54);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x80) != 0)
  {
    v55 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 80), v8, v9);
    objc_msgSend_setFormat_isExplicit_(v5, v56, v55, (v48 >> 2) & 1, v57);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x100) != 0)
  {
    v58 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 88), v8, v9);
    objc_msgSend_setFormat_isExplicit_(v5, v59, v58, (v48 >> 3) & 1, v60);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x40000) != 0)
  {
    v61 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 168), v8, v9);
    objc_msgSend_setFormat_isExplicit_(v5, v62, v61, (v48 >> 7) & 1, v63);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x80000) != 0)
  {
    v64 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 176), v8, v9);
    objc_msgSend_setFormat_isExplicit_(v5, v65, v64, (v48 >> 5) & 1, v66);

    v23 = *(a1 + 16);
  }

  if ((v23 & 0x2000000) != 0)
  {
    objc_msgSend_suggestCellFormatKind_(v5, v6, *(a1 + 208), v8, v9);
  }

  else if ((v23 & 8) != 0)
  {
    v67 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v6, *(a1 + 48), v8, v9);
    objc_msgSend_setCurrentFormat_isExplicit_(v5, v68, v67, (v48 >> 4) & 1, v69);
  }

  v70 = *(a1 + 16);
  if ((v70 & 0x1000) != 0)
  {
    v71 = *(a1 + 120);
    v88 = MEMORY[0x277D85DD0];
    v89 = 3221225472;
    v90 = sub_2211243D8;
    v91 = &unk_27845F760;
    v72 = v5;
    v92 = v72;
    v73 = v10;
    v74 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v73, v75, v71, v74, 0, &v88);

    if ((*(a1 + 16) & 0x1000000) != 0)
    {
      v79 = *(a1 + 204);
    }

    else
    {
      v79 = 15;
    }

    objc_msgSend_setConditionalStyleAppliedRule_(v72, v76, v79, v77, v78, v88, v89, v90, v91);

    v70 = *(a1 + 16);
  }

  if ((v70 & 0x10000) != 0)
  {
    v80 = [TSTCellBorder alloc];
    if (*(a1 + 152))
    {
      v83 = objc_msgSend_initFromMessage_unarchiver_(v80, v81, *(a1 + 152), v10, v82);
    }

    else
    {
      v83 = objc_msgSend_initFromMessage_unarchiver_(v80, v81, &TST::_CellBorderArchive_default_instance_, v10, v82);
    }

    v87 = v83;
    objc_msgSend_setCellBorder_(v5, v84, v83, v85, v86);
  }
}

void sub_2211242F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = objc_msgSend_object(a2, a2, a3, a4, a5);
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (!v9)
  {
    objc_opt_class();
    v10 = TSUDynamicCast();
    v9 = objc_msgSend_storage(v10, v11, v12, v13, v14);
  }

  objc_msgSend_setRichTextValueWithoutPlaintextCollapse_(*(a1 + 32), v6, v9, v7, v8);
}

void sub_2211243E4(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v11 = objc_msgSend_valueType(v5, v7, v8, v9, v10);
  if ((v11 - 2) < 9)
  {
    v16 = (v11 - 2) + 1;
  }

  else
  {
    v16 = 0;
  }

  *(a2 + 16) |= 0x100000u;
  *(a2 + 184) = v16;
  v17 = objc_msgSend_valueType(v5, v12, v13, v14, v15);
  if (v17 > 5)
  {
    if (v17 == 6)
    {
      v53 = objc_msgSend_BOOLValue(v5, v18, v19, v20, v21);
      *(a2 + 16) |= 0x200000u;
      *(a2 + 188) = v53;
      goto LABEL_21;
    }

    if (v17 == 7)
    {
      objc_msgSend_durationTimeIntervalValue(v5, v18, v19, v20, v21);
      *(a2 + 16) |= 0x400000u;
      *(a2 + 192) = v60;
      goto LABEL_21;
    }

    if (v17 != 10)
    {
      goto LABEL_21;
    }

    objc_msgSend_currencyDoubleValue(v5, v18, v19, v20, v21);
    *(a2 + 16) |= 0x400000u;
    *(a2 + 192) = v28;
    v207._decimal.w[0] = objc_msgSend_currencyDecimalValue(v5, v29, v30, v31, v32);
    v207._decimal.w[1] = v33;
    v34 = TSUDecimal::low(&v207);
    *(a2 + 16) |= 0x4000000u;
    *(a2 + 216) = v34;
    v207._decimal.w[0] = objc_msgSend_currencyDecimalValue(v5, v35, v36, v37, v38);
    v207._decimal.w[1] = v39;
    v40 = TSUDecimal::high(&v207);
LABEL_14:
    *(a2 + 16) |= 0x8000000u;
    *(a2 + 224) = v40;
    goto LABEL_21;
  }

  switch(v17)
  {
    case 2:
      objc_msgSend_numberDoubleValue(v5, v18, v19, v20, v21);
      *(a2 + 16) |= 0x400000u;
      *(a2 + 192) = v41;
      v207._decimal.w[0] = objc_msgSend_numberDecimalValue(v5, v42, v43, v44, v45);
      v207._decimal.w[1] = v46;
      v47 = TSUDecimal::low(&v207);
      *(a2 + 16) |= 0x4000000u;
      *(a2 + 216) = v47;
      v207._decimal.w[0] = objc_msgSend_numberDecimalValue(v5, v48, v49, v50, v51);
      v207._decimal.w[1] = v52;
      v40 = TSUDecimal::high(&v207);
      goto LABEL_14;
    case 3:
      v54 = objc_msgSend_stringValue(v5, v18, v19, v20, v21);
      v22 = v54;
      if (v54)
      {
        v59 = objc_msgSend_tsp_protobufString(v54, v55, v56, v57, v58);
        sub_221124D3C(a2, v59);
      }

      else
      {
        v61 = MEMORY[0x277D81150];
        v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "void TSTEncodeCellToArchive(TSTCell *__strong, TST::Cell *, TSPArchiver *__strong)", v57, v58);
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchiveUtilities.mm", v64, v65);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 370, 0, "stringValue in string cell is nil");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
      }

      break;
    case 5:
      v22 = objc_msgSend_dateValue(v5, v18, v19, v20, v21);
      objc_msgSend_timeIntervalSinceReferenceDate(v22, v23, v24, v25, v26);
      *(a2 + 16) |= 0x400000u;
      *(a2 + 192) = v27;
      break;
    default:
      goto LABEL_21;
  }

LABEL_21:
  v206 = objc_msgSend_cellStyle(v5, v18, v19, v20, v21);
  if (v206)
  {
    *(a2 + 16) |= 2u;
    v76 = *(a2 + 32);
    if (!v76)
    {
      v77 = *(a2 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = MEMORY[0x223DA0390](v77);
      *(a2 + 32) = v76;
    }

    objc_msgSend_setStrongReference_message_(v6, v72, v206, v76, v75);
  }

  v82 = objc_msgSend_textStyle(v5, v72, v73, v74, v75);
  if (v82)
  {
    *(a2 + 16) |= 4u;
    v83 = *(a2 + 40);
    if (!v83)
    {
      v84 = *(a2 + 8);
      if (v84)
      {
        v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
      }

      v83 = MEMORY[0x223DA0390](v84);
      *(a2 + 40) = v83;
    }

    objc_msgSend_setStrongReference_message_(v6, v78, v82, v83, v81);
  }

  v89 = objc_msgSend_cellSpec(v5, v78, v79, v80, v81);
  if (v89)
  {
    *(a2 + 16) |= 0x20000u;
    v90 = *(a2 + 160);
    if (!v90)
    {
      v91 = *(a2 + 8);
      if (v91)
      {
        v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
      }

      v90 = google::protobuf::Arena::CreateMaybeMessage<TST::CellSpecArchive>(v91);
      *(a2 + 160) = v90;
    }

    objc_msgSend_saveToArchive_archiver_(v89, v85, v90, v6, v88);
  }

  v96 = objc_msgSend_formulaSyntaxError(v5, v85, v86, v87, v88);
  if (v96)
  {
    *(a2 + 16) |= 0x10u;
    v97 = *(a2 + 56);
    if (!v97)
    {
      v98 = *(a2 + 8);
      if (v98)
      {
        v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
      }

      v97 = MEMORY[0x223DA0390](v98);
      *(a2 + 56) = v97;
    }

    objc_msgSend_setStrongReference_message_(v6, v92, v96, v97, v95);
  }

  v103 = objc_msgSend_richTextValue(v5, v92, v93, v94, v95);
  if (v103)
  {
    *(a2 + 16) |= 0x800u;
    v104 = *(a2 + 112);
    if (!v104)
    {
      v105 = *(a2 + 8);
      if (v105)
      {
        v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
      }

      v104 = MEMORY[0x223DA0390](v105);
      *(a2 + 112) = v104;
    }

    objc_msgSend_setStrongReference_message_(v6, v99, v103, v104, v102);
  }

  v110 = objc_msgSend_commentStorage(v5, v99, v100, v101, v102);
  if (v110)
  {
    *(a2 + 16) |= 0x2000u;
    v111 = *(a2 + 128);
    if (!v111)
    {
      v112 = *(a2 + 8);
      if (v112)
      {
        v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
      }

      v111 = MEMORY[0x223DA0390](v112);
      *(a2 + 128) = v111;
    }

    objc_msgSend_setStrongReference_message_(v6, v106, v110, v111, v109);
    v117 = objc_msgSend_replies(v110, v113, v114, v115, v116);
    v122 = objc_msgSend_count(v117, v118, v119, v120, v121);

    if (v122)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(v6, v106, *MEMORY[0x277D80980], @"TSDThreadedComments", v109);
    }
  }

  v123 = objc_msgSend_numberFormat(v5, v106, v107, v108, v109);

  if (v123)
  {
    v130 = objc_msgSend_numberFormat(v5, v124, v125, v126, v127);
    *(a2 + 16) |= 0x20u;
    v131 = *(a2 + 64);
    if (!v131)
    {
      v132 = *(a2 + 8);
      if (v132)
      {
        v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
      }

      v131 = MEMORY[0x223DA02D0](v132);
      *(a2 + 64) = v131;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v130, v128, v131, 1, v129);
  }

  v133 = objc_msgSend_currencyFormat(v5, v124, v125, v126, v127);

  if (v133)
  {
    v140 = objc_msgSend_currencyFormat(v5, v134, v135, v136, v137);
    *(a2 + 16) |= 0x40u;
    v141 = *(a2 + 72);
    if (!v141)
    {
      v142 = *(a2 + 8);
      if (v142)
      {
        v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
      }

      v141 = MEMORY[0x223DA02D0](v142);
      *(a2 + 72) = v141;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v140, v138, v141, 1, v139);
  }

  v143 = objc_msgSend_dateFormat(v5, v134, v135, v136, v137);

  if (v143)
  {
    v150 = objc_msgSend_dateFormat(v5, v144, v145, v146, v147);
    *(a2 + 16) |= 0x100u;
    v151 = *(a2 + 88);
    if (!v151)
    {
      v152 = *(a2 + 8);
      if (v152)
      {
        v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
      }

      v151 = MEMORY[0x223DA02D0](v152);
      *(a2 + 88) = v151;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v150, v148, v151, 1, v149);
  }

  v153 = objc_msgSend_durationFormat(v5, v144, v145, v146, v147);

  if (v153)
  {
    v160 = objc_msgSend_durationFormat(v5, v154, v155, v156, v157);
    *(a2 + 16) |= 0x80u;
    v161 = *(a2 + 80);
    if (!v161)
    {
      v162 = *(a2 + 8);
      if (v162)
      {
        v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
      }

      v161 = MEMORY[0x223DA02D0](v162);
      *(a2 + 80) = v161;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v160, v158, v161, 1, v159);
  }

  v163 = objc_msgSend_textFormat(v5, v154, v155, v156, v157);

  if (v163)
  {
    v170 = objc_msgSend_textFormat(v5, v164, v165, v166, v167);
    *(a2 + 16) |= 0x40000u;
    v171 = *(a2 + 168);
    if (!v171)
    {
      v172 = *(a2 + 8);
      if (v172)
      {
        v172 = *(v172 & 0xFFFFFFFFFFFFFFFELL);
      }

      v171 = MEMORY[0x223DA02D0](v172);
      *(a2 + 168) = v171;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v170, v168, v171, 1, v169);
  }

  v173 = objc_msgSend_BOOLeanFormat(v5, v164, v165, v166, v167);

  if (v173)
  {
    v180 = objc_msgSend_BOOLeanFormat(v5, v174, v175, v176, v177);
    *(a2 + 16) |= 0x80000u;
    v181 = *(a2 + 176);
    if (!v181)
    {
      v182 = *(a2 + 8);
      if (v182)
      {
        v182 = *(v182 & 0xFFFFFFFFFFFFFFFELL);
      }

      v181 = MEMORY[0x223DA02D0](v182);
      *(a2 + 176) = v181;
    }

    objc_msgSend_encodeToArchive_archivingCustomFormats_(v180, v178, v181, 1, v179);
  }

  v183 = objc_msgSend_cellFormatKind(v5, v174, v175, v176, v177);
  *(a2 + 16) |= 0x2000000u;
  *(a2 + 208) = v183;
  v188 = objc_msgSend_explicitFormatFlags(v5, v184, v185, v186, v187);
  *(a2 + 16) |= 0x800000u;
  *(a2 + 200) = v188;
  v197 = objc_msgSend_conditionalStyle(v5, v189, v190, v191, v192);
  if (v197)
  {
    *(a2 + 16) |= 0x1000u;
    v198 = *(a2 + 120);
    if (!v198)
    {
      v199 = *(a2 + 8);
      if (v199)
      {
        v199 = *(v199 & 0xFFFFFFFFFFFFFFFELL);
      }

      v198 = MEMORY[0x223DA0390](v199);
      *(a2 + 120) = v198;
    }

    objc_msgSend_setStrongReference_message_(v6, v193, v197, v198, v196);
    if (v5)
    {
      v200 = objc_msgSend_conditionalStyleAppliedRule(v5, v193, v194, v195, v196);
    }

    else
    {
      v200 = 15;
    }

    *(a2 + 16) |= 0x1000000u;
    *(a2 + 204) = v200;
  }

  v203 = objc_msgSend_cellBorder(v5, v193, v194, v195, v196);
  if (v203)
  {
    *(a2 + 16) |= 0x10000u;
    v204 = *(a2 + 152);
    if (!v204)
    {
      v205 = *(a2 + 8);
      if (v205)
      {
        v205 = *(v205 & 0xFFFFFFFFFFFFFFFELL);
      }

      v204 = google::protobuf::Arena::CreateMaybeMessage<TST::CellBorderArchive>(v205);
      *(a2 + 152) = v204;
    }

    objc_msgSend_saveToMessage_archiver_(v203, v201, v204, v6, v202);
  }
}

void sub_221124D3C(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_221124E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_221125004(long double a1, long double a2, double a3)
{
  v3 = 0.0;
  if (a3 <= 0.0)
  {
    return v3;
  }

  v4 = a3;
  v3 = 1.0;
  if (a3 >= 1.0)
  {
    return v3;
  }

  v6 = a1;
  v7 = 1.0;
  if (a1 <= 1.0 || a2 <= 1.0)
  {
    v3 = a1 / (a1 + a2);
    v9 = sub_2212F4E64(a1, a2, v3);
    v10 = 0;
    v11 = 1;
    v51 = 0.0;
    v12 = 0.000001;
    v42 = v6;
    v43 = a2;
    v13 = a2;
    v50 = v4;
    goto LABEL_8;
  }

  sub_2214A7870(a3);
  if (v4 <= 0.5)
  {
    v10 = 0;
    v16 = -v16;
    v17 = v6;
    v13 = a2;
    v50 = v4;
  }

  else
  {
    v50 = 1.0 - v4;
    v10 = 1;
    v17 = a2;
    v13 = v6;
  }

  v18 = 1.0 / (v17 * 2.0 + -1.0);
  v19 = 1.0 / (v13 * 2.0 + -1.0);
  v20 = v16 * sqrt(2.0 / (v18 + v19) + (v16 * v16 + -3.0) / 6.0) / (2.0 / (v18 + v19)) - (v19 - v18) * ((v16 * v16 + -3.0) / 6.0 + 0.833333333 + 2.0 / (2.0 / (v18 + v19) * -3.0));
  v21 = v20 + v20;
  if (v21 < *&qword_27CFB4C60)
  {
LABEL_13:
    sub_22137A674("incbi", 4);
    v3 = 0.0;
    if (!v10)
    {
      return v3;
    }

    goto LABEL_89;
  }

  v42 = v6;
  v43 = a2;
  v3 = v17 / (v17 + v13 * exp(v21));
  v9 = sub_2212F4E64(v17, v13, v3);
  v51 = 0.0;
  v6 = v17;
  if (fabs((v9 - v50) / v50) < 0.2)
  {
    v48 = v17;
    v49 = 1.0;
    v47 = v13;
    v22 = 0.0;
LABEL_60:
    v13 = v47;
    v6 = v48;
    v32 = sub_221289DC8(v47 + v48);
    v33 = v32 - sub_221289DC8(v48);
    v46 = v33 - sub_221289DC8(v47);
    v34 = 8;
    v14 = v51;
    v51 = v22;
    v35 = v3;
    v4 = a3;
    while (1)
    {
      if (v34 != 8)
      {
        v9 = sub_2212F4E64(v48, v47, v35);
      }

      if (v9 >= v14)
      {
        v36 = v49;
        if (v9 <= v49)
        {
          v37 = v51;
          if (v9 < v50)
          {
            v37 = v35;
          }

          v51 = v37;
          if (v9 < v50)
          {
            v14 = v9;
          }

          else
          {
            v7 = v35;
          }

          if (v9 >= v50)
          {
            v36 = v9;
          }

          v49 = v36;
          v3 = v35;
        }

        else
        {
          v9 = v49;
          v3 = v7;
        }
      }

      else
      {
        v9 = v14;
        v3 = v51;
      }

      if (v3 == 1.0 || v3 == 0.0)
      {
        goto LABEL_85;
      }

      v38 = log(v3);
      v39 = v46 + (v47 + -1.0) * log(1.0 - v3) + (v48 + -1.0) * v38;
      if (v39 < *&qword_27CFB4C60)
      {
        goto LABEL_88;
      }

      if (v39 > *&qword_27CFB4C58 || (v40 = (v9 - v50) / exp(v39), v35 = v3 - v40, v3 - v40 <= v51) && (v9 = (v3 - v51) / (v7 - v51), v35 = v51 + v9 * 0.5 * (v3 - v51), v35 <= 0.0) || v35 >= v7 && (v9 = (v7 - v3) / (v7 - v51), v35 = v7 + v9 * -0.5 * (v7 - v3), v35 >= 1.0))
      {
LABEL_85:
        v11 = 0;
        v12 = *&qword_27CFB4C50 * 256.0;
        v15 = v49;
        goto LABEL_18;
      }

      if (fabs(v40 / v35) < *&qword_27CFB4C50 * 128.0)
      {
        break;
      }

      v3 = v35;
      if (!--v34)
      {
        goto LABEL_85;
      }
    }

    v3 = v35;
LABEL_88:
    if (!v10)
    {
      return v3;
    }

LABEL_89:
    v29 = *&qword_27CFB4C50;
LABEL_90:
    if (v3 <= v29)
    {
      return 1.0 - v29;
    }

    else
    {
      return 1.0 - v3;
    }
  }

  v11 = 1;
  v12 = 0.0001;
LABEL_8:
  v14 = 0.0;
  v15 = 1.0;
LABEL_18:
  v47 = v13;
  v48 = v6;
  v45 = 1.0 - v4;
  v23 = v50;
  v22 = v51;
  v51 = v14;
  v49 = v15;
  v24 = v12;
LABEL_19:
  v25 = 0;
  v26 = 100;
  v27 = 0.5;
  do
  {
    if (v26 != 100)
    {
      v28 = v7 - v22;
      if (v22 + v27 * (v7 - v22) == 1.0)
      {
        v3 = 1.0 - *&qword_27CFB4C50;
      }

      else
      {
        v3 = v22 + v27 * (v7 - v22);
      }

      if (v3 == 0.0)
      {
        v27 = 0.5;
        v3 = v22 + v28 * 0.5;
        if (v3 == 0.0)
        {
          goto LABEL_13;
        }
      }

      v9 = sub_2212F4E64(v48, v47, v3);
      if (fabs(v28 / (v22 + v7)) < v24 || fabs((v9 - v23) / v23) < v24)
      {
        goto LABEL_59;
      }
    }

    if (v9 >= v23)
    {
      if (v10)
      {
        v29 = *&qword_27CFB4C50;
        if (v3 < *&qword_27CFB4C50)
        {
          v3 = 0.0;
          goto LABEL_90;
        }
      }

      if (v25 <= 0)
      {
        if (v25 > -4)
        {
          if (v25 > -2)
          {
            v27 = (v9 - v23) / (v9 - v51);
          }

          else
          {
            v27 = v27 * 0.5;
          }
        }

        else
        {
          v27 = v27 * v27;
        }
      }

      else
      {
        v25 = 0;
        v27 = 0.5;
      }

      --v25;
      v7 = v3;
      v49 = v9;
    }

    else
    {
      if (v25 < 0)
      {
        v25 = 0;
        v27 = 0.5;
      }

      else if (v25 < 4)
      {
        if (v25 < 2)
        {
          v27 = (v23 - v9) / (v49 - v9);
        }

        else
        {
          v27 = v27 * 0.5 + 0.5;
        }
      }

      else
      {
        v27 = 1.0 - (1.0 - v27) * (1.0 - v27);
      }

      if (v3 > 0.75)
      {
        v30 = v42;
        if (v10)
        {
          v31 = v42;
        }

        else
        {
          v31 = v43;
        }

        if (v10)
        {
          v30 = v43;
          v23 = a3;
        }

        else
        {
          v23 = v45;
        }

        v10 = !v10;
        v7 = 1.0;
        v3 = 1.0 - v3;
        v47 = v30;
        v48 = v31;
        v9 = sub_2212F4E64(v31, v30, v3);
        v22 = 0.0;
        v51 = 0.0;
        v49 = 1.0;
        goto LABEL_19;
      }

      ++v25;
      v22 = v3;
      v51 = v9;
    }

    --v26;
  }

  while (v26);
  sub_22137A674("incbi", 6);
  if (v22 < 1.0)
  {
    if (v3 <= 0.0)
    {
      goto LABEL_13;
    }

LABEL_59:
    v50 = v23;
    if ((v11 & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_60;
  }

  v3 = 1.0 - *&qword_27CFB4C50;
  if (v10)
  {
    goto LABEL_89;
  }

  return v3;
}