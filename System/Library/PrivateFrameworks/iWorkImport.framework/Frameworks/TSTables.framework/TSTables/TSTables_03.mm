void sub_221126A6C(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *v3 = &unk_2834A1DD0;
  *(v3 + 200) = 0;
}

void sub_221126AA8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4812000000;
  v27 = sub_221126C48;
  v28 = sub_221126C6C;
  v29 = &unk_22188E88F;
  v31 = 0;
  v32 = 0;
  __p = 0;
  lower = objc_msgSend_tableUID(v5, v6, v7, v8, v9);
  if (!lower)
  {
    if (upper)
    {
      lower = 0;
    }

    else
    {
      v12 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      lower = v12->var0.var0._tableUID._lower;
      upper = v12->var0.var0._tableUID._upper;
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_221126C84;
  v18[3] = &unk_27845F788;
  v21 = a1;
  v22 = lower;
  v23 = upper;
  v13 = v5;
  v19 = v13;
  v20 = &v24;
  objc_msgSend_foreachCellRect_(v13, v14, v18, v15, v16);
  v17 = v25;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_221127614(a3, v17[6], v17[7], (v17[7] - v17[6]) >> 3);

  _Block_object_dispose(&v24, 8);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }
}

void sub_221126C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221126C48(__n128 *a1, __n128 *a2)
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

void sub_221126C6C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221126C84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = *(a2 + 8);
  v22.range._topLeft = __C(v4, v5);
  v22.range._bottomRight = v6;
  v22._tableUID = *(a1 + 56);
  objc_msgSend_setPreserveFlagsOnSubrange_(*(a1 + 32), v6, &v22, v7, v8);
  TSCERangeRef::fixInversions(&v22);
  bottomRight = v22.range._bottomRight;
  v21.coordinate = v22.range._topLeft;
  v21._tableUID = v22._tableUID;
  v20.coordinate = v22.range._bottomRight;
  v20._tableUID = v22._tableUID;
  v19._flags = (*&v22.range._topLeft >> 47) & 2 | v22.range._topLeft._preserveColumn;
  v10 = (*&v22.range._bottomRight >> 47) & 2;
  v11 = v10 | HIBYTE(*&v22.range._bottomRight);
  v18._flags = v10 | v22.range._bottomRight._preserveColumn;
  tableUID = TSCEFormulaRewriteContext::containingCell(v3[1])->var0.var0._tableUID;
  coordinate = TSCEFormulaRewriteContext::containingCell(v3[1])->var0.var0.coordinate;
  v12 = TSCEASTIteratorBase::createReference(v3, &v21, &v19, &tableUID, &coordinate, 0);
  coordinate = v12;
  if (v21.coordinate.row != bottomRight.row || ((*&bottomRight ^ *&v21.coordinate) & 0x101FFFF00000000) != 0 || v21._tableUID._lower != v20._tableUID._lower || v21._tableUID._upper != v20._tableUID._upper || v19._flags != v11)
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(v3[1])->var0.var0._tableUID;
    v15 = TSCEFormulaRewriteContext::containingCell(v3[1])->var0.var0.coordinate;
    v13 = TSCEASTIteratorBase::createReference(v3, &v20, &v18, &tableUID, &v15, 0);
    TSCEASTRewriter::createBinaryOp(v3, 0x1C, v12, v13, v14);
  }

  if (v12)
  {
    sub_221126E28(*(*(a1 + 40) + 8) + 48, &coordinate);
  }
}

void sub_221126E28(uint64_t a1, void *a2)
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
      sub_221122DC8(a1, v10);
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

TSCEASTFunctionElement *sub_221126EFC(TSCEFormulaRewriteContext **a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4, a5);
  if ((v7 - 113) <= 0x37 && ((1 << (v7 - 113)) & 0x87800478000001) != 0 || (v7 - 30) <= 0x3F && ((1 << (v7 - 30)) & 0x8DC0000000000003) != 0 || (v7 - 14) < 3)
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    sub_221127614(&v43, *(this + 3), *(this + 4), (*(this + 4) - *(this + 3)) >> 3);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    if (*(a1 + 200) == 1)
    {
      v8 = v43;
      v9 = v44;
      if (v43 != v44)
      {
        v10 = 0;
        do
        {
          v39 = *v8;
          if (TSCEASTElement::tag(v39, a1) == 67)
          {
            v14 = v39;
            v15 = TSCEASTColonTractElement::relativeTractRef(v39, a1, v11, v12, v13);
            __p = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
            v19 = objc_msgSend_absoluteCellTractRefForHostCell_(v15, v16, &__p, v17, v18);
            if (objc_msgSend_isValid(v19, v20, v21, v22, v23) && (objc_msgSend_isRectangularRange(v19, v24, v25, v26, v27) & 1) == 0)
            {
              sub_221126AA8(a1, v19, &__p);
              v28 = __p;
              v29 = v38;
              while (v28 != v29)
              {
                v36 = *v28;
                sub_221126E28(&v40, &v36);
                ++v28;
              }

              if (v14)
              {
                (*(*v14 + 8))(v14);
              }

              if (__p)
              {
                v38 = __p;
                operator delete(__p);
              }

              v10 = 1;
            }
          }

          else
          {
            sub_221126E28(&v40, &v39);
          }

          ++v8;
        }

        while (v8 != v9);
        v32 = v40;
        if (v10)
        {
          *(this + 4) = *(this + 3);
          v33 = v41;
          if (v32 == v41)
          {
            v34 = v32;
          }

          else
          {
            do
            {
              TSCEASTElementWithChildren::appendChild(this, *v32++);
            }

            while (v32 != v33);
            v32 = v40;
            v34 = v41;
          }

          TSCEASTFunctionElement::setNumArgs(this, ((v34 - v32) >> 3), a1, v30, v31);
          v32 = v40;
        }

        if (v32)
        {
          v41 = v32;
          operator delete(v32);
        }
      }
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }
  }

  return this;
}

void sub_221127174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

TSCEASTColonTractElement *sub_2211271E0(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  v69.coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  v11 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v8, &v69, v9, v10);
  lower = objc_msgSend_tableUID(v11, v12, v13, v14, v15);
  upper = v16;
  if (!lower)
  {
    if (v16)
    {
      lower = 0;
    }

    else
    {
      v22 = TSCEFormulaRewriteContext::containingCell(a1[1]);
      lower = v22->var0.var0._tableUID._lower;
      upper = v22->var0.var0._tableUID._upper;
    }
  }

  if ((objc_msgSend_isValid(v11, v16, v17, v18, v19) & 1) == 0)
  {
    TSCEASTIteratorBase::createReferenceError(a1, v23, v24, v25, v26);
  }

  if (objc_msgSend_isRectangularRange(v11, v23, v24, v25, v26))
  {
    v69.coordinate = objc_msgSend_topLeft(v11, v27, v28, v29, v30);
    v69._tableUID._lower = lower;
    v69._tableUID._upper = upper;
    v68.coordinate = objc_msgSend_bottomRight(v11, v31, v32, v33, v34);
    v68._tableUID._lower = lower;
    v68._tableUID._upper = upper;
    v35 = (*(*this + 96))(this, a1);
    v67._flags = objc_msgSend_preserveFlags(v11, v36, v37, v38, v39) & 3;
    tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
    coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    v40 = TSCEASTIteratorBase::createReference(a1, &v69, &v67, &tableUID, &coordinate, 0);
    v64._flags = (objc_msgSend_preserveFlags(v11, v41, v42, v43, v44) >> 2) & 3;
    v63 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
    v62 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    v45 = TSCEASTIteratorBase::createReference(a1, &v68, &v64, &v63, &v62, 0);
    TSCEASTRewriter::createColonWithUidTractList(a1, v35, v40, v45);
  }

  if (*(a1 + 200) == 1)
  {
    memset(&v69, 0, sizeof(v69));
    v46 = TSCEASTColonTractElement::relativeTractRef(this, a1, v28, v29, v30);
    v68.coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
    v50 = objc_msgSend_absoluteCellTractRefForHostCell_(v46, v47, &v68, v48, v49);
    if (objc_msgSend_isValid(v50, v51, v52, v53, v54) && (objc_msgSend_isRectangularRange(v50, v55, v56, v57, v58) & 1) == 0)
    {
      sub_221126AA8(a1, v50, &v68);
      v59 = v68.coordinate;
      v60 = v68._tableUID._lower;
      if (*&v68.coordinate != v68._tableUID._lower)
      {
        do
        {
          tableUID._lower = *v59;
          sub_221126E28(&v69, &tableUID);
          ++v59;
        }

        while (v59 != v60);
        v59 = v68.coordinate;
      }

      if (v59)
      {
        v68._tableUID._lower = v59;
        operator delete(v59);
      }
    }

    if (v69._tableUID._lower != *&v69.coordinate)
    {
      if (this)
      {
        (*(*this + 8))(this);
      }

      TSCEASTRewriter::createFunction(a1, 0x11D, &v69, v57, v58);
    }

    if (v69.coordinate)
    {
      v69._tableUID._lower = v69.coordinate;
      operator delete(*&v69.coordinate);
    }
  }

  return this;
}

void sub_22112753C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  v26 = *(v24 - 88);
  if (v26)
  {
    *(v24 - 80) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_2211275DC(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_221127614(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221127690(result, a4);
  }

  return result;
}

void sub_221127674(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221127690(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_221122DC8(a1, a2);
  }

  sub_22107C148();
}

void sub_221127924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221127FA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211287B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 112);
  if (v32)
  {
    *(v30 - 104) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_221128DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_2210BC9F8(v4 - 56, *(v4 - 48));
  sub_22109DBB8(va);
  sub_22109DBB8(va1);

  _Unwind_Resume(a1);
}

void sub_221128FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_22109DBB8(&a9);

  sub_22109DBB8(&a15);
  _Unwind_Resume(a1);
}

void sub_2211297B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221129D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22112A1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22112A3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22112A4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22112A838(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 120), 8);
  v5 = *(v3 - 72);
  if (v5)
  {
    *(v3 - 64) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22112A8C4(__n128 *a1, __n128 *a2)
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

void sub_22112A8E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22112A900(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 32);
  v6.range._topLeft = ((a2 << 32) | 0x7FFFFFFF);
  v6.range._bottomRight = ((((a2 + a3) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | 0x7FFFFFFF);
  v6._tableUID = *(v4 + 96);
  LOBYTE(v5.range._topLeft.row) = *(v4 + 90);
  TSCERangeRef::setPreserveFlags(&v6, &v5);
  v5 = v6;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v5);
}

void sub_22112A984(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_22107C148();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_221087FE8(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
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
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_22112AA5C(uint64_t a1, unsigned int a2, int a3)
{
  v4 = *(a1 + 32);
  v6.range._topLeft = (a2 | 0x7FFF00000000);
  v6.range._bottomRight = ((a3 + a2 - 1) | 0x7FFF00000000);
  v6._tableUID = *(v4 + 96);
  LOBYTE(v5.range._topLeft.row) = *(v4 + 90);
  TSCERangeRef::setPreserveFlags(&v6, &v5);
  v5 = v6;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v5);
}

void sub_22112AAD8(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v9.origin = a2;
  v9.size = a3;
  v5 = TSUCellRect::bottomRight(&v9);
  v6 = *(a1 + 32);
  v8.range._topLeft = a2;
  v8.range._bottomRight = v5;
  v8._tableUID = *(v6 + 96);
  LOBYTE(v7.range._topLeft.row) = *(v6 + 90);
  TSCERangeRef::setPreserveFlags(&v8, &v7);
  v7 = v8;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v7);
}

void sub_22112AF1C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 136), 8);
  v5 = *(v3 - 88);
  if (v5)
  {
    *(v3 - 80) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22112AFB0(__n128 *a1, __n128 *a2)
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

void sub_22112AFD4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22112AFEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v8.range._topLeft = ((a2 << 32) | 0x7FFFFFFF);
  v8.range._bottomRight = ((((a2 + a3) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | 0x7FFFFFFF);
  v8._tableUID = v6[6];
  LOBYTE(v7.range._topLeft.row) = objc_msgSend_viewPreserveFlags(v6, a2, a3, a4, a5);
  TSCERangeRef::setPreserveFlags(&v8, &v7);
  v7 = v8;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v7);
}

void sub_22112B070(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v8.range._topLeft = (a2 | 0x7FFF00000000);
  v8.range._bottomRight = ((a3 + a2 - 1) | 0x7FFF00000000);
  v8._tableUID = v6[6];
  LOBYTE(v7.range._topLeft.row) = objc_msgSend_viewPreserveFlags(v6, a2, a3, a4, a5);
  TSCERangeRef::setPreserveFlags(&v8, &v7);
  v7 = v8;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v7);
}

void sub_22112B0EC(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v9.origin = a2;
  v9.size = a3;
  v5 = TSUCellRect::bottomRight(&v9);
  v6 = *(a1 + 32);
  v8.range._topLeft = a2;
  v8.range._bottomRight = v5;
  v8._tableUID = *(v6 + 96);
  LOBYTE(v7.range._topLeft.row) = *(v6 + 90);
  TSCERangeRef::setPreserveFlags(&v8, &v7);
  v7 = v8;
  sub_22112A984(*(*(a1 + 40) + 8) + 48, &v7);
}

void sub_22112B238(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22112B604(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, TSUIndexSet *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_22109DBB8(&a15);

  _Unwind_Resume(a1);
}

void sub_22112B780(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22112B8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((v8 & 1) == 0)
  {
    sub_22109DBB8(va);
  }

  _Unwind_Resume(a1);
}

void sub_22112BE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_22112BF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22112C1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_22109DBB8(&a9);
  sub_22109DBB8(&a15);

  _Unwind_Resume(a1);
}

void *sub_22112C58C(void *a1, unint64_t *a2, unint64_t *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_22112C610(a1, v4, v6);
      v6 += 2;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_22112C610(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_22112C6A8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_22112C6A8(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  if (a1 + 1 == a2 || *a5 < *(a2 + 2))
  {
    v5 = *a2;
    if (*a1 == a2)
    {
      v7 = a2;
    }

    else
    {
      if (v5)
      {
        v6 = *a2;
        do
        {
          v7 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        v10 = a2;
        do
        {
          v7 = v10[2];
          v11 = *v7 == v10;
          v10 = v7;
        }

        while (v11);
      }

      if (*(v7 + 2) >= *a5)
      {
        return sub_22112C810(a1, a3, a5);
      }
    }

    if (v5)
    {
      *a3 = v7;
      return v7 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  else if (a2[5] >= a5[1] && a2[4] >= *a5)
  {
    *a3 = a2;
    *a4 = a2;
  }

  else
  {
    v8 = a2[1];
    if (v8)
    {
      v9 = a2[1];
      do
      {
        a4 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      v12 = a2;
      do
      {
        a4 = v12[2];
        v11 = *a4 == v12;
        v12 = a4;
      }

      while (!v11);
    }

    if (a4 != a1 + 1 && *a5 >= *(a4 + 2))
    {
      return sub_22112C810(a1, a3, a5);
    }

    if (v8)
    {
      *a3 = a4;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }

  return a4;
}

void *sub_22112C810(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v7 = *a3;
    v6 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[5];
        if (__PAIR128__(v6, v7) >= __PAIR128__(v9, v8[4]))
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6 && v8[4] >= v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_22112C87C(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_22112C8D0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_22112C950(a1, v3);
  operator delete(v4);
  return 1;
}

void *sub_22112C8D0(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = v3[5];
    if (v8 >= v6)
    {
      if (v8 == v6)
      {
        v9 = v3[4];
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2 || __PAIR128__(v6, v5) < *(v7 + 2))
  {
    return v2;
  }

  return v7;
}

uint64_t *sub_22112C950(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_22112C9C4(v6, a2);
  return v3;
}

uint64_t *sub_22112C9C4(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_22112CD44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22111A0C8(result, a4);
  }

  return result;
}

void sub_22112CDA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22112CDC0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22111A0C8(result, a4);
  }

  return result;
}

void sub_22112CE20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_22112E6A0(void *a1, unsigned __int16 *a2)
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

void sub_22112E924()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v4 = objc_msgSend_initWithProperties_(v0, v1, 896, v2, v3, 897, 898, 903, 904, 0);
  v5 = qword_27CFB51D8;
  v20 = v4;
  qword_27CFB51D8 = v4;

  if (!qword_27CFB51D8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTCellStyle properties]_block_invoke", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 64, 0, "invalid nil value for '%{public}s'", "sProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }
}

void sub_22112EAA0()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v4 = objc_msgSend_initWithProperties_(v0, v1, 898, v2, v3, 0);
  v5 = qword_27CFB51E8;
  v20 = v4;
  qword_27CFB51E8 = v4;

  if (!qword_27CFB51E8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTCellStyle propertiesAllowingNSNull]_block_invoke", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 79, 0, "invalid nil value for '%{public}s'", "s_nullProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }
}

void sub_22112EC04()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v4 = objc_msgSend_initWithProperties_(v0, v1, 896, v2, v3, 903, 904, 0);
  v5 = qword_27CFB51F8;
  v20 = v4;
  qword_27CFB51F8 = v4;

  if (!qword_27CFB51F8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTCellStyle nonEmphasisCellProperties]_block_invoke", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 97, 0, "invalid nil value for '%{public}s'", "s_nonEmphasisProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }
}

void sub_22112ED74()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v4 = objc_msgSend_initWithProperties_(v0, v1, 898, v2, v3, 903, 904, 0);
  v5 = qword_27CFB5208;
  v20 = v4;
  qword_27CFB5208 = v4;

  if (!qword_27CFB5208)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTCellStyle categoriesCellProperties]_block_invoke", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 113, 0, "invalid nil value for '%{public}s'", "sProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }
}

void sub_221130530(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2211307C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221130840(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = a2;
  objc_opt_class();
  v10 = TSUDynamicCast();
  if (!v10)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCellStyle targetSizeForImageData:associatedHint:]_block_invoke", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStyle.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v17, v12, v16, 419, 0, "invalid nil value for '%{public}s'", "preset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v22 = *(a1 + 40);
  if (v22 == objc_msgSend_presetID(v10, v6, v7, v8, v9))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_221130BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221130C4C(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v12 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2, a4, a5);
  v11 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v8, a2, v9, v10);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221130F24(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a2, a4, a5);
  v10 = objc_msgSend_boxedValueForProperty_(a1[5], v7, a2, v8, v9);
  v11 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v12, v11, a2, v13);
}

void *sub_22113183C(void *a1, unint64_t *a2)
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

void sub_221131E14(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221131EB0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221132860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void sub_221132BC0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_221132E08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 0x10)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSTColumnRowTypeWithIndex TSTMakeColumnRowTypeWithIndex(TSTColumnRowType, NSUInteger)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableConstants.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 216, 0, "Type:%ldl or index:%lul is too large for TSTIndexedColumnRowType.", a1, a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return (a2 + 16 * a1);
}

uint64_t sub_221133814(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4, a5);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_cellValueTypeAtSummaryModelCoord_(v7, v8, *a2, v9, v10);

  return 0;
}

void sub_221133BF0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221133C10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221133C28(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_defaultCellStyleForTableStyleArea_(*(a1[4] + 16), a2, 15, a4, a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = a1[6];
  if (v9)
  {
    *v9 = 1;
  }
}

void sub_221133C8C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_cellStyleOfRowAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_221133CF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bodyCellStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_221133EC8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_221133EE8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_defaultTextStyleForTableStyleArea_(*(a1[4] + 16), a2, 15, a4, a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = a1[6];
  if (v9)
  {
    *v9 = 1;
  }
}

void sub_221133F4C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_textStyleOfRowAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_221133FB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bodyTextStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_221134334(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_221134354(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_defaultCellStyleForTableStyleArea_(*(a1[4] + 16), a2, 16, a4, a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = a1[6];
  if (v9)
  {
    *v9 = 1;
  }
}

void sub_2211343B8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_cellStyleOfColumnAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_22113441C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bodyCellStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2211345F4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_221134614(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_defaultTextStyleForTableStyleArea_(*(a1[4] + 16), a2, 16, a4, a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = a1[6];
  if (v9)
  {
    *v9 = 1;
  }
}

void sub_221134678(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_textStyleOfColumnAtIndex_isDefault_(*(a1[4] + 16), a2, *a2, a1[6], a5);
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_2211346DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_bodyTextStyle(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_221134F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 104), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221134F60(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryModel(*(a1[4] + 8), a2, a3, a4, a5);
  v10 = objc_msgSend_cellStyleAtModelCellCoord_isDefault_(v7, v8, *a2, *(a1[5] + 8) + 24, v9);

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v10);
  }

  return 0;
}

uint64_t sub_221135008(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_cellStyleAtModelCellCoord_isDefault_(*(a1[4] + 16), a2, *a2, *(a1[5] + 8) + 24, a5);
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v6);
  }

  return 0;
}

void sub_221135230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 104), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22113525C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryModel(*(a1[4] + 8), a2, a3, a4, a5);
  v10 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(v7, v8, *a2, *(a1[5] + 8) + 24, v9);

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v10);
  }

  return 0;
}

uint64_t sub_221135304(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_textStyleAtModelCellCoord_isDefault_(*(a1[4] + 16), a2, *a2, *(a1[5] + 8) + 24, a5);
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v6);
  }

  return 0;
}

uint64_t sub_221135CA4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_summaryModel(*(a1 + 32), a2, a3, a4, a5);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_cellExistsAtCellCoord_(v7, v8, *a2, v9, v10);

  return 0;
}

void sub_221135F20(_Unwind_Exception *a1, TSUIndexSet *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29)
{
  TSUIndexSet::~TSUIndexSet(&a10);

  _Block_object_dispose(&a20, 8);
  sub_22107C860(v32 + 64, a29);
  _Unwind_Resume(a1);
}

void sub_221135FB0(uint64_t a1, TSUCellCoord a2)
{
  v64 = a2;
  if ((TSCECellCoordSet::containsCellCoord((*(*(a1 + 40) + 8) + 48), &v64) & 1) == 0)
  {
    TSCECellCoordSet::addCellCoord((*(*(a1 + 40) + 8) + 48), &v64);
    column = v64.column;
    if (column >= objc_msgSend_numberOfHeaderColumns(*(a1 + 32), v4, v5, v6, v7))
    {
      row = v64.row;
      if (row >= objc_msgSend_numberOfHeaderRows(*(a1 + 32), v8, v9, v10, v11))
      {
        v16 = objc_msgSend_groupLevelAtSummaryColumn_(*(a1 + 32), v13, v64.column, v14, v15);
        v24 = objc_msgSend_groupLevelAtSummaryRow_(*(a1 + 32), v17, v64.row, v18, v19);
        if (v16 == 255)
        {
          *&v63 = 0;
          v63._singleRange._begin = 0;
          *&v63 = objc_msgSend_bodyRange(*(a1 + 32), v20, v21, v22, v23);
          v63._singleRange._begin = v30;
          v31 = MEMORY[0x277CCAB58];
          v32 = TSUCellRect::columns(&v63);
          v29 = objc_msgSend_indexSetWithIndexesInRange_(v31, v33, v32, v33, v34);
          v39 = objc_msgSend_indexesForSummaryColumns(*(a1 + 32), v35, v36, v37, v38);
          objc_msgSend_removeIndexes_(v29, v40, v39, v41, v42);
        }

        else
        {
          v29 = objc_msgSend_indexesForSummaryColumnsAtGroupLevel_(*(a1 + 32), v20, v16, v22, v23);
        }

        if (v24 == 255)
        {
          *&v63 = objc_msgSend_bodyRange(*(a1 + 32), v25, v26, v27, v28);
          v63._singleRange._begin = v44;
          v45 = MEMORY[0x277CCAB58];
          v46 = TSUCellRect::rows(&v63);
          v43 = objc_msgSend_indexSetWithIndexesInRange_(v45, v47, v46, v47, v48);
          v53 = objc_msgSend_indexesForSummaryRows(*(a1 + 32), v49, v50, v51, v52);
          objc_msgSend_removeIndexes_(v43, v54, v53, v55, v56);

          if (!v29)
          {
LABEL_13:

            return;
          }
        }

        else
        {
          v43 = objc_msgSend_indexesForSummaryRowsAtGroupLevel_(*(a1 + 32), v25, v24, v27, v28);
          if (!v29)
          {
            goto LABEL_13;
          }
        }

        if (v43)
        {
          MEMORY[0x223D9F7A0](&v63, v43);
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3321888768;
          v61[2] = sub_221136264;
          v61[3] = &unk_2834A1FB0;
          v61[4] = *(a1 + 40);
          *&v62 = -1;
          *&v57.f64[0] = 0x8000000080000000;
          *&v57.f64[1] = 0x8000000080000000;
          v62._singleRange = vnegq_f64(v57);
          v62._multipleRanges = 0;
          TSUIndexSet::operator=();
          objc_msgSend_enumerateIndexesUsingBlock_(v29, v58, v61, v59, v60);
          TSUIndexSet::~TSUIndexSet(&v62);
          TSUIndexSet::~TSUIndexSet(&v63);
        }

        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_221136280(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = a1 + 40;
  *v1 = v2 | 3;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  *(v1 + 8) = vnegq_f64(v3);
  *(v1 + 24) = 0;
  return TSUIndexSet::operator=();
}

void sub_2211364A4(uint64_t a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_rowCount(v15, v3, v4, v5, v6))
  {
    v11 = *(a1 + 32);
    v12 = objc_msgSend_groupUid(v15, v7, v8, v9, v10);
    objc_msgSend_addUUID_(v11, v13, v12, v13, v14);
  }
}

void sub_22113662C(uint64_t a1, void *a2)
{
  v15 = a2;
  if (objc_msgSend_rowCount(v15, v3, v4, v5, v6))
  {
    v11 = *(a1 + 32);
    v12 = objc_msgSend_groupUid(v15, v7, v8, v9, v10);
    objc_msgSend_addUUID_(v11, v13, v12, v13, v14);
  }
}

void sub_2211367FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v13 = v12;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221136854(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 32), a2, a2, a3, a5);
  v16 = objc_msgSend_groupLevel(v59, v8, v9, v10, v11);
  if (v16)
  {
    if (v16 < objc_msgSend_numberOfRowLevels(*(a1 + 40), v12, v13, v14, v15))
    {
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 24);
      if (v20 >= v16)
      {
        LOBYTE(v20) = v16;
      }

      *(v19 + 24) = v20;
      v21 = objc_msgSend_viewRowIndexForRowUID_(*(a1 + 40), v17, a2, a3, v18);
      v24 = objc_msgSend_indexesForSummaryRowsFromGroupLevel_toGroupLevel_(*(*(a1 + 40) + 8), v22, 1, v16, v23);
      v29 = objc_msgSend_mutableCopy(v24, v25, v26, v27, v28);

      v34 = objc_msgSend_numberOfHeaderRows(*(*(a1 + 40) + 8), v30, v31, v32, v33);
      objc_msgSend_addIndex_(v29, v35, (v34 - 1), v36, v37);
      LODWORD(v24) = objc_msgSend_indexLessThanIndex_(v29, v38, v21, v39, v40);
      v45 = objc_msgSend_rowAggregateGroupSize(*(a1 + 40), v41, v42, v43, v44);
      objc_msgSend_addIndexesInRange_(*(a1 + 48), v46, (v24 + 1), v45 + v21 - (v24 + 1), v47);
    }
  }

  else
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTPivotTranslator indexesForRowsContainedByGroupUIDs:]_block_invoke", v14, v15);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v51, v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 1035, 0, "do not call with root group");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
  }
}

void sub_221136B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v13 = v12;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221136BEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 32), a2, a2, a3, a5);
  v16 = objc_msgSend_groupLevel(v59, v8, v9, v10, v11);
  if (v16)
  {
    if (v16 < objc_msgSend_numberOfColumnLevels(*(a1 + 40), v12, v13, v14, v15))
    {
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 24);
      if (v20 >= v16)
      {
        LOBYTE(v20) = v16;
      }

      *(v19 + 24) = v20;
      v21 = objc_msgSend_viewColumnIndexForColumnUID_(*(a1 + 40), v17, a2, a3, v18);
      v24 = objc_msgSend_indexesForSummaryColumnsFromGroupLevel_toGroupLevel_(*(*(a1 + 40) + 8), v22, 1, v16, v23);
      v29 = objc_msgSend_mutableCopy(v24, v25, v26, v27, v28);

      v34 = objc_msgSend_numberOfHeaderColumns(*(*(a1 + 40) + 8), v30, v31, v32, v33);
      objc_msgSend_addIndex_(v29, v35, (v34 - 1), v36, v37);
      LOWORD(v24) = objc_msgSend_indexLessThanIndex_(v29, v38, v21, v39, v40);
      v45 = objc_msgSend_columnAggregateGroupSize(*(a1 + 40), v41, v42, v43, v44);
      objc_msgSend_addIndexesInRange_(*(a1 + 48), v46, (v24 + 1), (v21 + v45 - 1) - (v24 + 1) + 1, v47);
    }
  }

  else
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTPivotTranslator indexesForColumnsContainedByGroupUIDs:]_block_invoke", v14, v15);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPivotTranslator.mm", v51, v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 1069, 0, "do not call with root group");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
  }
}

void sub_2211375AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  v9 = objc_msgSend_groupUid(v3, v5, v6, v7, v8);
  v12 = objc_msgSend_columnIndexForColumnUID_(v4, v10, v9, v10, v11);
  objc_msgSend_addIndexesInRange_(*(a1 + 40), v13, v12, *(a1 + 48), v14);
}

void sub_221137FC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  v9 = objc_msgSend_groupUid(v3, v5, v6, v7, v8);
  v12 = objc_msgSend_rowIndexForRowUID_(v4, v10, v9, v10, v11);
  objc_msgSend_addIndexesInRange_(*(a1 + 40), v13, v12, *(a1 + 48), v14);
}

void sub_22113897C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  sub_22107C2C0(&a10);

  _Unwind_Resume(a1);
}

void sub_2211389A0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22113C904(a1, v5);
  }
}

uint64_t sub_221138A3C(uint64_t a1)
{
  if (!a1)
  {
    TSUSetCrashReporterInfo();
    v8 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "TSUColumnIndex _maxColumnIndex(TSTTableTileRowInfo *__unsafe_unretained)", v10, v11, "TSUColumnIndex _maxColumnIndex(TSTTableTileRowInfo *__unsafe_unretained)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 795);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v17, v12, v16, 795, 1, "Never call me without a row");

    TSUCrashBreakpoint();
    abort();
  }

  if (*(a1 + 90) != 1)
  {
    *(a1 + 88) = 0x7FFF;
    if (*(a1 + 8))
    {
      v2 = *(a1 + 40);
      if (*(a1 + 40))
      {
        v1 = (v2 - 1) + 1;
        do
        {
          v3 = v1--;
          if (v3 != 0x8000 && v2 > v1 && *(*(a1 + 32) + 2 * v1) != -1)
          {
            goto LABEL_21;
          }
        }

        while (v1 > 0);
      }
    }

    else
    {
      if (*(a1 + 42))
      {
        LOWORD(v1) = 0x7FFF;
LABEL_22:
        *(a1 + 90) = 1;
        return v1;
      }

      v4 = *(a1 + 80);
      if (*(a1 + 80))
      {
        v5 = (v4 - 1) + 1;
        do
        {
          v6 = v5--;
          if (v6 != 0x8000 && v4 > v5)
          {
            LOWORD(v1) = v5;
            if (*(*(a1 + 72) + 2 * v5) != -1)
            {
              goto LABEL_21;
            }
          }
        }

        while (v5 > 0);
      }
    }

    LOWORD(v1) = 0x7FFF;
LABEL_21:
    *(a1 + 88) = v1;
    goto LABEL_22;
  }

  LOWORD(v1) = *(a1 + 88);
  return v1;
}

void sub_221138D14(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    free(v3);
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
}

void *sub_221139174(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  *(a1 + 31) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  sub_221139394(a1, v9, a3, a4, a5);
  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  result = memcpy(*a1, v10, v9);
  v12 = *(v5 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = v5[1];
  }

  if (v13 < 0)
  {
    v5 = *v5;
  }

  if (a2)
  {
    *(a1 + 34) = 1;
    if (v12 == 510)
    {
      for (i = 254; *(v5 + i) == -1; --i)
      {
        v12 -= 2;
        if (!v12)
        {
          return result;
        }
      }
    }
  }

  if (v12)
  {
    v15 = (v12 >> 1) - 1;
    v16 = v15;
    if (v15 >= 0xFEu)
    {
      v16 = 254;
    }

    v17 = 510;
    if (v12 < 0x1FE)
    {
      v17 = v12;
    }

    if (a2)
    {
      v18 = v12;
    }

    else
    {
      v15 = v16;
      v18 = v17;
    }

    sub_221139CC8(a1, v15);
    v19 = *(a1 + 24);

    return memcpy(v19, v5, v18);
  }

  return result;
}

uint64_t sub_2211392B0(uint64_t result)
{
  if (!result)
  {
    TSUSetCrashReporterInfo();
    v1 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "void _invalidateMaxColumnIndex(TSTTableTileRowInfo *__unsafe_unretained)", v3, v4, "void _invalidateMaxColumnIndex(TSTTableTileRowInfo *__unsafe_unretained)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 804);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v7, v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1, v10, v5, v9, 804, 1, "Never call me without a row");

    TSUCrashBreakpoint();
    abort();
  }

  *(result + 88) = 0x7FFF;
  *(result + 90) = 0;
  return result;
}

void **sub_221139394(void **result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  result[1] = a2;
  v6 = result[2];
  if (v6 < a2)
  {
    v7 = result;
    if (a2 >= 0x41)
    {
      if (a2 >= 0x81)
      {
        if (a2 >= 0x201)
        {
          if (a2 >= 0x401)
          {
            v8 = (a2 >> (flsll(2048) - 1) << 11) + 2048;
          }

          else
          {
            v8 = 1024;
          }
        }

        else
        {
          v8 = 512;
        }
      }

      else
      {
        v8 = 128;
      }
    }

    else
    {
      v8 = 64;
    }

    if (v8 >= 0x3FFFC)
    {
      v9 = 262140;
    }

    else
    {
      v9 = v8;
    }

    v7[2] = v9;
    result = malloc_type_realloc(*v7, v9, 0x100004077774924uLL);
    *v7 = result;
    v5 = v7[1];
    v6 = v7[2];
  }

  if (v5 > v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void _updateCellBufferSize(TSTTableTileRowBuffer *, NSUInteger)", a4, a5);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 270, 0, "Row data buffer is too small!");

    v21 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v21, v17, v18, v19, v20);
  }

  return result;
}

void sub_2211395B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_221139C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  _Block_object_dispose(&__p, 8);

  _Unwind_Resume(a1);
}

void **sub_221139CC8(void **result, unsigned int a2)
{
  v2 = *(result + 16);
  if (v2 <= a2)
  {
    v3 = result;
    if (*(result + 34))
    {
      v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
      v5 = ((v4 | (v4 >> 4) | (((v4 | (v4 >> 4)) & 0xFF00) >> 8)) + 1);
      if (v5 <= 0x10)
      {
        v6 = 16;
      }

      else
      {
        v6 = v5;
      }

      if (v5 >= 0x801)
      {
        TSUSetCrashReporterInfo();
        v7 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void _extendOffsetArrayForMaxIndex(TSTTableTileRowBuffer *, TSUColumnIndex)", v9, v10, "void _extendOffsetArrayForMaxIndex(TSTTableTileRowBuffer *, TSUColumnIndex)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 328);
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v13, v14);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v11, v15, 328, 1, "Too many columns for our row storage!");
        goto LABEL_15;
      }
    }

    else
    {
      if ((a2 + 1) >= 0x100u)
      {
        TSUSetCrashReporterInfo();
        v19 = MEMORY[0x277D81150];
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "void _extendOffsetArrayForMaxIndex(TSTTableTileRowBuffer *, TSUColumnIndex)", v21, v22, "void _extendOffsetArrayForMaxIndex(TSTTableTileRowBuffer *, TSUColumnIndex)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 324);
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v24, v25);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v11, v15, 324, 1, "Can't grow to wide columns in a row buffer not converted for wide offsets");
LABEL_15:

        TSUCrashBreakpoint();
        abort();
      }

      v6 = 255;
    }

    v17 = malloc_type_realloc(result[3], (2 * v6), 0x1000040BDFB0063uLL);
    v3[3] = v17;
    *(v3 + 16) = v6;
    v18 = &v17[2 * v2];

    return memset(v18, 255, (2 * (v6 - v2)));
  }

  return result;
}

__n128 sub_221139EDC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_221139EF4(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v5 = sub_221139F78(a1[4] + 48, a3, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), a1[8]);
  result = sub_2213974DC(a1[9], v5, *(a1[7] + 8) + 48);
  *(*(a1[5] + 8) + 24) = v3;
  ++*(*(a1[6] + 8) + 24);
  return result;
}

const char *sub_221139F78(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  sub_221139394(a1, *(a1 + 8) + a5, a3, a4, a5);
  v10 = sub_22113C5B8(a1, a2, v7, a5);
  v13 = a2;
  v14 = v10;
  if (a2 < v7 && a4)
  {
    v29 = a2;
    v30 = v10;
    sub_22113C758(a1, v10, a5, v11, v12);
    v14 = v30;
    v13 = a2;
    v15 = a2 + 1;
    do
    {
      if (v15 != 0x7FFF)
      {
        v16 = *(a1 + 32);
        if (v16 > v15)
        {
          v17 = *(*(a1 + 24) + 2 * v15);
          if (v17 != 0xFFFF)
          {
            v18 = *(a1 + 34);
            if (*(a1 + 34))
            {
              v19 = 4 * v17;
            }

            else
            {
              v19 = *(*(a1 + 24) + 2 * v15);
            }

            if (v15 >= 0xFFu && (v18 & 1) == 0)
            {
              sub_22113A218(a1);
              v14 = v30;
              v13 = v29;
              v16 = *(a1 + 32);
              v18 = 1;
            }

            if (v16 <= v15)
            {
              sub_221139CC8(a1, v15);
              v14 = v30;
              v13 = v29;
            }

            v20 = v19 + a5;
            if (v19 + a5 == 0x7FFFFFFFFFFFFFFFLL)
            {
              LOWORD(v20) = -1;
            }

            else if (v18)
            {
              v20 >>= 2;
            }

            *(*(a1 + 24) + 2 * v15) = v20;
          }
        }
      }

      ++v15;
    }

    while (v7 >= v15);
  }

  v21 = *(a1 + 34);
  if (v13 >= 0xFF && (*(a1 + 34) & 1) == 0)
  {
    v25 = v13;
    v26 = v14;
    sub_22113A218(a1);
    v14 = v26;
    v13 = v25;
    v21 = 1;
  }

  if (*(a1 + 32) <= v13)
  {
    v27 = v13;
    v28 = v14;
    sub_221139CC8(a1, v13);
    v14 = v28;
    v13 = v27;
  }

  v22 = v14 >> 2;
  if ((v21 & 1) == 0)
  {
    LOWORD(v22) = v14;
  }

  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = -1;
  }

  else
  {
    v23 = v22;
  }

  *(*(a1 + 24) + 2 * v13) = v23;
  return &v14[*a1];
}

uint64_t sub_22113A218(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 32))
  {
    v2 = *(result + 24);
    do
    {
      v3 = *v2;
      if ((v3 - 1) <= 0xFFFD)
      {
        if ((v3 & 3) != 0)
        {
          TSUSetCrashReporterInfo();
          v4 = MEMORY[0x277D81150];
          v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void _convertBufferToWideIndexes(TSTTableTileRowBuffer *)", v6, v7, "void _convertBufferToWideIndexes(TSTTableTileRowBuffer *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 287);
          v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v10, v11);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v8, v12, 287, 1, "Encountered a bad offset while widening!");

          TSUCrashBreakpoint();
          abort();
        }

        *v2 >>= 2;
      }

      ++v2;
      --v1;
    }

    while (v1);
  }

  *(result + 34) = 1;
  return result;
}

BOOL sub_22113C374(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (v5 != 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSTCellStorageVersionCheck(TSTCellStorage *)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 138, 0, "Can't parse cell storage header version %d!", v5);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return v5 == 5;
}

_BYTE *sub_22113C508(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t sub_22113C5B8(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  if (a2 && a3 != 0x7FFF)
  {
    if (a2 <= a3)
    {
      v6 = a2;
      while (1)
      {
        if (v6 != 0x7FFF && *(a1 + 32) > v6)
        {
          v8 = *(*(a1 + 24) + 2 * v6);
          if (v8 != 0xFFFF)
          {
            break;
          }
        }

        if (a3 + 1 == ++v6)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (*(a1 + 34))
      {
        return 4 * v8;
      }

      else
      {
        return *(*(a1 + 24) + 2 * v6);
      }
    }

    else
    {
      v4 = *(a1 + 8) - a4;
      if (*(a1 + 32) <= a3 || (v5 = *(*(a1 + 24) + 2 * a3), v5 == 0xFFFF))
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (*(a1 + 34))
      {
        v5 *= 4;
      }

      if (v4 <= v5)
      {
        TSUSetCrashReporterInfo();
        v10 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "NSUInteger _offsetForInsertInBuffer(TSTTableTileRowBuffer *, TSUColumnIndex, TSUColumnIndex, NSInteger)", v12, v13, "NSUInteger _offsetForInsertInBuffer(TSTTableTileRowBuffer *, TSUColumnIndex, TSUColumnIndex, NSInteger)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 531);
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v16, v17);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v19, v14, v18, 531, 1, "Computed impossible insertion point.");

        TSUCrashBreakpoint();
        abort();
      }
    }
  }

  return v4;
}

void *sub_22113C758(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[1];
  if (262140 - v8 <= a3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void _shiftCellStorageInBuffer(TSTTableTileRowBuffer *, NSUInteger, NSInteger)", a4, a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 505, 0, "Row storage buffer overflow!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = v8 - &a2[a3 & ~(a3 >> 63)];
  if (v20 < 0)
  {
    TSUSetCrashReporterInfo();
    v23 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "void _shiftCellStorageInBuffer(TSTTableTileRowBuffer *, NSUInteger, NSInteger)", v25, v26, "void _shiftCellStorageInBuffer(TSTTableTileRowBuffer *, NSUInteger, NSInteger)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", 512);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v29, v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v32, v27, v31, 512, 1, "Corrupt cellStorage shift. Crashing!");

    TSUCrashBreakpoint();
    abort();
  }

  v21 = &a2[*a1];

  return memmove(&v21[a3], v21, v20);
}

void sub_22113C904(uint64_t a1, unint64_t a2)
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

void sub_22113C9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22113CF38(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11._lower = a2;
  v11._upper = a3;
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 >= *v4)
  {
    if (v6 != *(v3 + 36))
    {
LABEL_7:
      *v4 = v6 + 1;
      v7 = MEMORY[0x223DA0360](*(v3 + 24));
      v8 = *(v3 + 32);
      v9 = *(v3 + 40) + 8 * v8;
      *(v3 + 32) = v8 + 1;
      *(v9 + 8) = v7;
      return TSKUIDStruct::saveToMessage(&v11, v7);
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24));
    v4 = *(v3 + 40);
    v6 = *v4;
    goto LABEL_7;
  }

  *(v3 + 32) = v5 + 1;
  v7 = *&v4[2 * v5 + 2];
  return TSKUIDStruct::saveToMessage(&v11, v7);
}

uint64_t sub_22113CFEC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v11._lower = a2;
  v11._upper = a3;
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 56);
  v6 = *v4;
  if (v5 >= *v4)
  {
    if (v6 != *(v3 + 60))
    {
LABEL_7:
      *v4 = v6 + 1;
      v7 = MEMORY[0x223DA0360](*(v3 + 48));
      v8 = *(v3 + 56);
      v9 = *(v3 + 64) + 8 * v8;
      *(v3 + 56) = v8 + 1;
      *(v9 + 8) = v7;
      return TSKUIDStruct::saveToMessage(&v11, v7);
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 48));
    v4 = *(v3 + 64);
    v6 = *v4;
    goto LABEL_7;
  }

  *(v3 + 56) = v5 + 1;
  v7 = *&v4[2 * v5 + 2];
  return TSKUIDStruct::saveToMessage(&v11, v7);
}

uint64_t sub_22113D1F8(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *a1 = &unk_2834A1FF0;
  *(a1 + 136) = 0;
  *(a1 + 138) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = v7;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 96) = 1;
  return a1;
}

void sub_22113D290(uint64_t a1, uint64_t a2)
{
  v3 = TSCEASTElement::tag(a2, a1) - 16;
  if (v3 > 0x32)
  {
    goto LABEL_5;
  }

  if (((1 << v3) & 0x4000000000015) != 0)
  {
    return;
  }

  if (v3 == 8)
  {
    v4[0] = 24;
    v5 = 0;
    sub_22113D334((a1 + 176), v4);
  }

  else
  {
LABEL_5:
    *(a1 + 138) = 1;
  }
}

uint64_t sub_22113D334(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_22113E3A8(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(v3 + 8) = v4;
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

TSCEASTNumberElement *sub_22113D388(TSCEASTIteratorBase *a1, TSCEASTNumberElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x277CCABB0];
  v16._decimal.w[0] = TSCEASTNumberElement::value(this, a1, a3, a4, a5);
  v16._decimal.w[1] = v8;
  v9 = TSUDecimal::truncateWithRounding(&v16);
  v13 = objc_msgSend_numberWithInteger_(v7, v10, v9, v11, v12);
  LOBYTE(v16._decimal.w[0]) = 18;
  v16._decimal.w[1] = v13;
  v14 = v13;
  sub_22113D334(a1 + 22, &v16);

  return this;
}

TSCEASTStringElement *sub_22113D434(TSCEASTIteratorBase *a1, TSCEASTStringElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TSCEASTStringElement::string(this, a1, a3, a4, a5);
  v10 = v9[0] = 20;
  v7 = v10;
  sub_22113D334(a1 + 22, v9);

  return this;
}

TSCEASTFunctionElement *sub_22113D4C0(id *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4, a5);
  if ((a1[17] & 1) != 0 || v7 != 298)
  {
    goto LABEL_16;
  }

  *(a1 + 136) = 1;
  v8 = (*(*this + 48))(this, a1);
  if (!v8 || (v9 = v8, v10 = a1[22], v11 = (a1[23] - v10) >> 4, v11 < v8))
  {
    *(a1 + 136) = 0;
    *(a1 + 138) = 1;
    return this;
  }

  v12 = &v10[16 * (v11 - v8)];
  if (*v12 != 20)
  {
    goto LABEL_15;
  }

  objc_storeStrong(a1 + 18, v12[1]);
  if (v9 == 1)
  {
    goto LABEL_8;
  }

  v15 = (a1[22] + 16 * (((a1[23] - a1[22]) >> 4) - v9));
  v16 = *(v15 + 16);
  if (v16 == 18)
  {
    v30 = v15[3];
    v35 = objc_msgSend_integerValue(v30, v31, v32, v33, v34);
    a1[19] = sub_221219994(v35);

    return this;
  }

  if (v16 == 24)
  {
LABEL_8:
    a1[19] = 24;
    return this;
  }

  if (v16 != 20)
  {
LABEL_15:
    *(a1 + 136) = 0;
LABEL_16:
    *(a1 + 138) = 1;
    return this;
  }

  v17 = a1[21];
  if (!v17)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "virtual TSCEASTElement *TSTCellSpecFormulaExtractor::functionNode(TSCEASTFunctionElement *)", v13, v14);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormulaSpec.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v24, v19, v23, 156, 0, "Need a locale to parse stock formulas.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    v17 = a1[21];
  }

  a1[19] = sub_22128EC98(v15[3], v17);
  return this;
}

TSCEASTCategoryRefElement *sub_22113D6B4(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 137) == 1)
  {
    *(a1 + 138) = 1;
  }

  else
  {
    *(a1 + 137) = 1;
    v7 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4, a5);
    *(a1 + 160) = objc_msgSend_type(v7, v8, v9, v10, v11);
  }

  v13[0] = 66;
  v14 = 0;
  sub_22113D334(a1 + 22, v13);

  return this;
}

void sub_22113D8C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_22113E2B4(va);
  _Unwind_Resume(a1);
}

void sub_22113DD38(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22113E064(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t sub_22113E22C(id *a1)
{
  *a1 = &unk_2834A1FF0;
  v4 = a1 + 22;
  sub_22113E320(&v4);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
  return MEMORY[0x223DA1450]();
}

void sub_22113E2B4(id *a1)
{
  *a1 = &unk_2834A1FF0;
  v3 = a1 + 22;
  sub_22113E320(&v3);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_22113E320(void ***a1)
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
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_22113E3A8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_22107C148();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    sub_22113E4C8(a1, v6);
  }

  v9 = 16 * v5;
  v15 = 0;
  v16 = v9;
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v9 + 8) = v10;
  v17 = (16 * v5 + 16);
  sub_22113E510(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_22113E580(&v15);
  return v14;
}

void sub_22113E4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22113E580(va);
  _Unwind_Resume(a1);
}

void sub_22113E4C8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_22113E510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 8) = v7;
      v6 += 16;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 16;
    }
  }
}

uint64_t sub_22113E580(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_22113E644(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v18._topLeft = __C(v5, v6);
  v18._bottomRight = v7;
  result = TSCERangeCoordinate::isValid(&v18);
  if (result)
  {
    result = TSCERangeCoordinate::isSpanning(&v18);
    if ((result & 1) == 0)
    {
      *&v17 = v18._topLeft.column | (v18._topLeft.row << 32);
      *(&v17 + 1) = v18._bottomRight.column | (v18._bottomRight.row << 32);
      return sub_22113E6C8(a1, &v17, a3, a1, 0, v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return result;
}

uint64_t sub_22113E6C8(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int **a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v15 = 0;
  v13 = sub_22113EC64(a1, a2, a3, *a4, a6, a7, a8, a9, a10, a11, a12, a13, &v15, a5);
  if (v13)
  {
    operator new();
  }

  return v13;
}

uint64_t sub_22113E774(unsigned int **a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v13._topLeft = __C(v5, v6);
  v13._bottomRight = v7;
  result = TSCERangeCoordinate::isValid(&v13);
  if (result)
  {
    result = TSCERangeCoordinate::isSpanning(&v13);
    if ((result & 1) == 0)
    {
      column = v13._topLeft.column;
      row = v13._topLeft.row;
      v11 = v13._bottomRight.column;
      v12 = v13._bottomRight.row;
      return sub_22113E7F4(a1, &column, a3, a1);
    }
  }

  return result;
}

uint64_t sub_22113E7F4(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int **a4)
{
  v22 = 0;
  v6 = sub_22113FA1C(a1, a2, a3, *a4, &v22);
  if ((v6 & 1) == 0)
  {
    for (i = v22; v22; i = v22)
    {
      v16 = i[1];
      if (*v16 <= 0)
      {
        v22 = *i;
      }

      else
      {
        v17 = 0;
        v18 = (v16 + 6);
        do
        {
          sub_22113E6C8(a1, (v18 - 16), v18, a4, v16[1], v7, v8, v9, v10, v11, v12, v13, v14);
          ++v17;
          v18 += 32;
        }

        while (v17 < *v16);
        i = v22;
        v16 = v22[1];
        v22 = *v22;
        if (!v16)
        {
          goto LABEL_10;
        }
      }

      MEMORY[0x223DA1450](v16, 0x1022C404B60D9C5);
LABEL_10:
      MEMORY[0x223DA1450](i, 0x20C40A4A59CD2);
    }

    v19 = *a4;
    if (**a4 == 1 && v19[1] >= 1)
    {
      v20 = *(v19 + 3);
      MEMORY[0x223DA1450]();
      *a4 = v20;
    }
  }

  return v6;
}

void sub_22113E934(int **a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *a2;
  v7 = *(a2 + 8);
  v13._topLeft = __C(v6, v7);
  v13._bottomRight = v8;
  if (TSCERangeCoordinate::isValid(&v13))
  {
    column = v13._topLeft.column;
    row = v13._topLeft.row;
    v11 = v13._bottomRight.column;
    v12 = v13._bottomRight.row;
    sub_22113E9D0(a1, *a1, &column, v5);
  }
}

uint64_t sub_22113E9D0(uint64_t a1, int *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *a2;
  if (a2[1] <= 0)
  {
    if (v8 >= 1)
    {
      v14 = 0;
      while (2)
      {
        v15 = 0;
        v16 = &a2[8 * v14 + 2];
        v17 = 1;
        while (1)
        {
          v18 = v17;
          if (*(a3 + 4 * v15) > v16->i32[v15 + 2] || v16->i32[v15] > *(a3 + 8 + 4 * v15))
          {
            break;
          }

          v17 = 0;
          v15 = 1;
          if ((v18 & 1) == 0)
          {
            v19.i64[0] = 0xFFFFFFFFFFFFLL;
            v19.i64[1] = 0xFFFFFFFFFFFFLL;
            v27 = vandq_s8(vsraq_n_u64(vshlq_n_s64(*v16, 0x20uLL), *v16, 0x20uLL), v19);
            v25 = 0;
            v26 = 0;
            TSCERangeCoordinate::asCellRect(&v27);
            v25 = v20;
            v26 = v21;
            v24 = 0;
            v7[2](v7, &v25, v16 + 1, &v24);
            if (v24)
            {
LABEL_23:
              v22 = 0;
              goto LABEL_22;
            }

            v8 = *a2;
            break;
          }
        }

        if (++v14 < v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      v10 = 0;
      v11 = &a2[8 * i + 2];
      v12 = 1;
      while (1)
      {
        v13 = v12;
        if (*(a3 + 4 * v10) > *(v11 + 8 + 4 * v10) || *(v11 + 4 * v10) > *(a3 + 8 + 4 * v10))
        {
          break;
        }

        v12 = 0;
        v10 = 1;
        if ((v13 & 1) == 0)
        {
          if (!sub_22113E9D0(a1, *(v11 + 16), a3, v7))
          {
            goto LABEL_23;
          }

          v8 = *a2;
          break;
        }
      }
    }
  }

  v22 = 1;
LABEL_22:

  return v22;
}

void sub_22113EBD4(uint64_t a1, int *a2)
{
  if (a2[1] >= 1 && *a2 >= 1)
  {
    v4 = 0;
    v5 = 6;
    do
    {
      sub_22113EBD4(a1, *&a2[v5]);
      ++v4;
      v5 += 8;
    }

    while (v4 < *a2);
  }

  JUMPOUT(0x223DA1450);
}

uint64_t sub_22113EC64(uint64_t a1, _OWORD *a2, uint64_t a3, unsigned int *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v42 = *MEMORY[0x277D85DE8];
  v18 = a4[1];
  if (v18 <= a14)
  {
    if (v18 != a14)
    {
      return 0;
    }

    v25 = *a2;
    v40 = *a2;
    *&v41 = *a3;
    DWORD2(v41) = *(a3 + 8);
    v30 = *a4;
    if (v30 <= 15)
    {
      result = 0;
      v37 = &a4[8 * v30];
      v38 = v40;
      *(v37 + 6) = v41;
      *(v37 + 2) = v38;
      goto LABEL_17;
    }

LABEL_8:
    sub_22113F094(a1, a4, &v40, *&v25, a6, a7, a8);
  }

  v39 = 0;
  v20 = &a4[8 * sub_22113EE40(a5, a6, a7, a8, a9, a10, a11, a12, a1, a2, a4) + 2];
  v21 = sub_22113EC64(a1, a2, a3, *(v20 + 16), &v39, a14);
  if (v21)
  {
    v22 = sub_22113EFCC(v21, *(v20 + 16));
    *v20 = v22;
    *(v20 + 8) = v23;
    *&v41 = v39;
    *&v40 = sub_22113EFCC(v22, v39);
    *(&v40 + 1) = v24;
    v26 = *a4;
    if (v26 <= 15)
    {
      result = 0;
      v28 = &a4[8 * v26 + 2];
      v29 = v41;
      *v28 = v40;
      *(v28 + 1) = v29;
LABEL_17:
      ++*a4;
      return result;
    }

    goto LABEL_8;
  }

  v31 = 0;
  v32 = &v40;
  v33 = 1;
  do
  {
    v34 = v33;
    v35 = *(v20 + 4 * v31);
    if (v35 >= *(a2 + v31))
    {
      v35 = *(a2 + v31);
    }

    v36 = *(a2 + v31 + 2);
    if (v36 <= *(v20 + 8 + 4 * v31))
    {
      v36 = *(v20 + 8 + 4 * v31);
    }

    *v32 = v35;
    *(&v40 + v31 + 2) = v36;
    v32 = &v40 + 1;
    v31 = 1;
    v33 = 0;
  }

  while ((v34 & 1) != 0);
  result = 0;
  *v20 = v40;
  return result;
}

uint64_t sub_22113EE40(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v11 = *a11;
  if (v11 < 1)
  {
    return 0;
  }

  v12 = 0;
  result = 0;
  v14 = a11 + 2;
  v15 = 0.0;
  v16 = -1.0;
  v17 = 1;
  do
  {
    v18 = 0;
    v19 = &v14[8 * v12];
    v20 = v19 + 2;
    v21 = 1;
    v22 = 0.0;
    do
    {
      v23 = v21;
      LODWORD(a6) = v20[v18];
      LODWORD(a7) = v19[v18];
      a7 = *&a7;
      a6 = (*&a6 - a7) * 0.5;
      v22 = v22 + a6 * a6;
      v18 = 1;
      v21 = 0;
    }

    while ((v23 & 1) != 0);
    v24 = 0;
    v25 = sqrt(v22);
    v26 = v25 * v25;
    v27 = &v41;
    v28 = 1;
    do
    {
      v29 = v28;
      v30 = v19[v24];
      if (v30 >= *(a10 + 4 * v24))
      {
        v30 = *(a10 + 4 * v24);
      }

      v31 = *(a10 + 8 + 4 * v24);
      if (v31 <= v20[v24])
      {
        v31 = v20[v24];
      }

      *v27 = v30;
      *(&v41 + v24 + 2) = v31;
      v27 = &v41 + 1;
      v24 = 1;
      v28 = 0;
    }

    while ((v29 & 1) != 0);
    v32 = 0;
    v40 = v41;
    v33 = 0.0;
    v34 = &v40;
    v35 = 1;
    do
    {
      v36 = v35;
      LODWORD(a7) = *(&v40 + v32 + 2);
      LODWORD(a8) = *v34;
      a8 = *&a8;
      a7 = (*&a7 - a8) * 0.5;
      v33 = v33 + a7 * a7;
      v34 = (&v40 + 4);
      v32 = 1;
      v35 = 0;
    }

    while ((v36 & 1) != 0);
    v37 = v26 * 3.141593;
    v38 = sqrt(v33);
    a6 = v38 * v38 * 3.141593 - v37;
    if ((a6 < v16) | v17 & 1 || (a6 == v16 ? (v39 = v37 < v15) : (v39 = 0), v39))
    {
      v15 = v37;
      result = v12;
      v16 = a6;
    }

    v17 = 0;
    ++v12;
  }

  while (v12 != v11);
  return result;
}

uint64_t sub_22113EFCC(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 + 2;
  do
  {
    v6 = &v5[8 * v3];
    if (v4)
    {
      v7 = 0;
      v8 = &v17;
      v9 = &v16;
      v10 = 1;
      do
      {
        v11 = *v9;
        if (v6[v7] < v11)
        {
          v11 = v6[v7];
        }

        v12 = *(&v16 + v7 + 2);
        if (v12 <= v6[v7 + 2])
        {
          v12 = v6[v7 + 2];
        }

        *(&v17 + v7 + 2) = v12;
        v13 = v10;
        *v8 = v11;
        v9 = &v16 + 1;
        v8 = &v17 + 1;
        v7 = 1;
        v10 = 0;
      }

      while ((v13 & 1) != 0);
      v14 = v17;
    }

    else
    {
      v14 = *v6;
    }

    v16 = v14;
    ++v3;
    v4 = 1;
  }

  while (v3 != v2);
  return v16;
}

void sub_22113F094(uint64_t a1, void *a2, _OWORD *a3, double a4, double a5, double a6, double a7)
{
  v8 = sub_22113F128(a4, a5, a6, a7, a1, a2, a3, v15);
  sub_22113F250(a1, v15, 8, v8, v9, v10, v11, v12, v13, v14);
  operator new();
}

double sub_22113F128(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, _OWORD *a7, uint64_t a8)
{
  v8 = 0;
  v9 = (a8 + 200);
  do
  {
    v10 = &v9[v8 / 2];
    v11 = *&a6[v8 + 3];
    *v10 = *&a6[v8 + 1];
    v10[1] = v11;
    v8 += 4;
  }

  while (v8 != 64);
  v12 = a7[1];
  *(a8 + 712) = *a7;
  *(a8 + 728) = v12;
  *(a8 + 744) = 17;
  v13 = (a8 + 748);
  *(a8 + 748) = *v9;
  v14 = a8 + 756;
  for (i = 1; i != 17; ++i)
  {
    v16 = 0;
    v17 = &v9[2 * i];
    v18 = &v29;
    v19 = 1;
    do
    {
      v20 = v19;
      v21 = *(v17 + v16);
      if (v21 >= *(v13 + v16))
      {
        v21 = *(v13 + v16);
      }

      v22 = *(v14 + 4 * v16);
      if (v22 <= *(v17 + v16 + 2))
      {
        v22 = *(v17 + v16 + 2);
      }

      *v18 = v21;
      *(&v29 + v16 + 2) = v22;
      v18 = &v29 + 1;
      v16 = 1;
      v19 = 0;
    }

    while ((v20 & 1) != 0);
    *v13 = v29;
  }

  v23 = 0;
  v24 = 0.0;
  v25 = 1;
  do
  {
    v26 = v25;
    LODWORD(a3) = *(v14 + 4 * v23);
    LODWORD(a4) = *(v13 + v23);
    a4 = *&a4;
    a3 = (*&a3 - a4) * 0.5;
    v24 = v24 + a3 * a3;
    v23 = 1;
    v25 = 0;
  }

  while ((v26 & 1) != 0);
  v27 = sqrt(v24);
  *(a8 + 768) = v27 * v27 * 3.141593;
  result = NAN;
  *a6 = 0xFFFFFFFF00000000;
  return result;
}

uint64_t sub_22113F250(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  *(a2 + 144) = 0;
  v10 = *(a2 + 744);
  *(a2 + 148) = 0;
  *(a2 + 184) = 0;
  v58 = (a2 + 184);
  v59 = a2 + 144;
  *(a2 + 192) = 0;
  *(a2 + 68) = v10;
  *(a2 + 72) = a3;
  if (v10 >= 1)
  {
    v11 = a2;
    do
    {
      v11[19] = 0;
      *v11++ = -1;
      --v10;
    }

    while (v10);
  }

  v12 = sub_22113F6AC(a1, a2, a4, a5, a6, a7, a8, a9, a10);
  result = a2;
  v19 = *(a2 + 144);
  v20 = *(a2 + 148);
  v21 = *(a2 + 68);
  if (v20 + v19 < v21)
  {
    v60 = 0;
    v22 = a2 + 76;
    v23 = a2 + 200;
    while (1)
    {
      v24 = v21 - *(result + 72);
      if (v19 >= v24 || v20 >= v24)
      {
        break;
      }

      if (v21 < 1)
      {
        v28 = v60;
        v27 = HIDWORD(v60);
      }

      else
      {
        v26 = 0;
        v12 = -1.0;
        v28 = v60;
        v27 = HIDWORD(v60);
        do
        {
          if (!*(v22 + 4 * v26))
          {
            v29 = 0;
            v30 = v23 + 32 * v26;
            v31 = v30 + 8;
            v32 = &v64;
            v33 = 1;
            do
            {
              v34 = v33;
              v35 = *(a2 + 152 + 4 * v29);
              if (v35 >= *(v30 + 4 * v29))
              {
                v35 = *(v30 + 4 * v29);
              }

              v36 = *(v31 + 4 * v29);
              if (v36 <= *(a2 + 160 + 4 * v29))
              {
                v36 = *(a2 + 160 + 4 * v29);
              }

              *v32 = v35;
              *(&v64 + v29 + 2) = v36;
              v32 = &v64 + 1;
              v29 = 1;
              v33 = 0;
            }

            while ((v34 & 1) != 0);
            v37 = 0;
            v63 = v64;
            v38 = &v64;
            v39 = 1;
            do
            {
              v40 = v39;
              v41 = *(a2 + 168 + 4 * v37);
              if (v41 >= *(v30 + 4 * v37))
              {
                v41 = *(v30 + 4 * v37);
              }

              v42 = *(v31 + 4 * v37);
              if (v42 <= *(a2 + 176 + 4 * v37))
              {
                v42 = *(a2 + 176 + 4 * v37);
              }

              *v38 = v41;
              *(&v64 + v37 + 2) = v42;
              v38 = &v64 + 1;
              v37 = 1;
              v39 = 0;
            }

            while ((v40 & 1) != 0);
            v43 = 0;
            v62 = v64;
            v44 = 0.0;
            v45 = &v63;
            v46 = 1;
            do
            {
              v47 = v46;
              LODWORD(v14) = *(&v63 + v43 + 2);
              LODWORD(v15) = *v45;
              v15 = *&v15;
              v14 = (*&v14 - v15) * 0.5;
              v44 = v44 + v14 * v14;
              v45 = (&v63 + 4);
              v43 = 1;
              v46 = 0;
            }

            while ((v47 & 1) != 0);
            v48 = 0;
            v49 = sqrt(v44);
            v50 = v49 * v49;
            v51 = 0.0;
            v52 = &v62;
            v53 = 1;
            do
            {
              v54 = v53;
              LODWORD(v16) = *(&v62 + v48 + 2);
              LODWORD(v17) = *v52;
              v17 = *&v17;
              v16 = (*&v16 - v17) * 0.5;
              v51 = v51 + v16 * v16;
              v52 = (&v62 + 4);
              v48 = 1;
              v53 = 0;
            }

            while ((v54 & 1) != 0);
            v55 = sqrt(v51);
            v15 = *(result + 192);
            v13 = v55 * v55 * 3.141593 - v15 - (v50 * 3.141593 - *v58);
            v14 = -v13;
            if (v13 >= 0.0)
            {
              v14 = v13;
            }

            if (v14 <= v12)
            {
              if (v14 == v12 && *(v59 + 4 * (v13 < 0.0)) < *(v59 + 4 * v28))
              {
                v28 = v13 < 0.0;
                v27 = v26;
              }
            }

            else
            {
              v28 = v13 < 0.0;
              v27 = v26;
              v12 = v14;
            }
          }

          ++v26;
        }

        while (v26 != v21);
      }

      v60 = __PAIR64__(v27, v28);
      v12 = sub_22113F90C(v12, v13, v14, v15, result, v27, v28, a2);
      v23 = a2 + 200;
      v22 = a2 + 76;
      result = a2;
      v19 = *(a2 + 144);
      v20 = *(a2 + 148);
      v21 = *(a2 + 68);
      if (v20 + v19 >= v21)
      {
        return result;
      }
    }

    v56 = v19 >= v24;
    if (v21 >= 1)
    {
      for (i = 0; i < v21; ++i)
      {
        if (!*(result + 4 * i + 76))
        {
          v12 = sub_22113F90C(v12, v13, v14, v15, result, i, v56, a2);
          result = a2;
          v21 = *(a2 + 68);
        }
      }
    }
  }

  return result;
}

uint64_t sub_22113F5B4(uint64_t result, int *a2, int *a3, uint64_t a4)
{
  if (*(a4 + 68) >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = (a4 + 200);
    v10 = a3 + 2;
    v11 = a2 + 2;
    while (1)
    {
      v12 = *(a4 + 4 * v8);
      if (v12 == 1)
      {
        break;
      }

      if (!v12)
      {
        v13 = *a2;
        if (v13 <= 15)
        {
          v17 = &v11[8 * v13];
          v18 = v9[1];
          *v17 = *v9;
          *(v17 + 1) = v18;
          ++*a2;
          goto LABEL_12;
        }

        v14 = v7;
        v15 = a2;
        goto LABEL_9;
      }

LABEL_12:
      ++v8;
      v9 += 2;
      if (v8 >= *(a4 + 68))
      {
        return result;
      }
    }

    v16 = *a3;
    if (v16 <= 15)
    {
      v19 = &v10[8 * v16];
      v20 = v9[1];
      *v19 = *v9;
      *(v19 + 1) = v20;
      ++*a3;
      goto LABEL_12;
    }

    v14 = v7;
    v15 = a3;
LABEL_9:
    result = sub_22113F094(v14, v15, v9, 0);
    goto LABEL_12;
  }

  return result;
}

double sub_22113F6AC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 68);
  if (v10 < 1)
  {
    goto LABEL_7;
  }

  v11 = 0;
  v12 = a2 + 200;
  a4 = 0.5;
  a3 = 3.141593;
  do
  {
    v13 = 0;
    v14 = v12 + 32 * v11;
    v15 = 0.0;
    v16 = 1;
    do
    {
      a1 = v16;
      LODWORD(a6) = *(v14 + 8 + 4 * v13);
      LODWORD(a7) = *(v14 + 4 * v13);
      a7 = *&a7;
      a6 = (*&a6 - a7) * 0.5;
      v15 = v15 + a6 * a6;
      v13 = 1;
      v16 = 0;
    }

    while ((a1 & 1) != 0);
    v17 = sqrt(v15);
    a5 = v17 * v17 * 3.141593;
    *(&v45[1] + v11++) = a5;
  }

  while (v11 != v10);
  if (v10 == 1)
  {
LABEL_7:
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v18 = 0;
    a4 = -1.0 - *(a2 + 768);
    v21 = 1;
    a5 = 0.5;
    do
    {
      a1 = v20++;
      v22 = v12 + 32 * a1;
      a6 = *(&v45[1] + a1);
      v23 = v21;
      do
      {
        v24 = 0;
        v25 = v12 + 32 * v23;
        v26 = v45;
        v27 = 1;
        do
        {
          v28 = v27;
          v29 = *(v25 + 4 * v24);
          if (v29 >= *(v22 + 4 * v24))
          {
            v29 = *(v22 + 4 * v24);
          }

          v30 = *(v22 + 8 + 4 * v24);
          if (v30 <= *(v25 + 8 + 4 * v24))
          {
            v30 = *(v25 + 8 + 4 * v24);
          }

          *v26 = v29;
          *(v45 + v24 + 2) = v30;
          v26 = v45 + 1;
          v24 = 1;
          v27 = 0;
        }

        while ((v28 & 1) != 0);
        v31 = 0;
        v44 = v45[0];
        v32 = 0.0;
        v33 = &v44;
        v34 = 1;
        do
        {
          v35 = v34;
          LODWORD(a8) = *(&v44 + v31 + 2);
          LODWORD(a9) = *v33;
          a9 = *&a9;
          a8 = (*&a8 - a9) * 0.5;
          v32 = v32 + a8 * a8;
          v33 = (&v44 + 4);
          v31 = 1;
          v34 = 0;
        }

        while ((v35 & 1) != 0);
        v36 = sqrt(v32);
        a8 = *(&v45[1] + v23);
        v37 = v36 * v36 * 3.141593 - a6 - a8;
        if (v37 > a4)
        {
          v18 = a1;
          v19 = v23;
          a4 = v37;
        }

        ++v23;
      }

      while (v23 != v10);
      ++v21;
    }

    while (v20 != v10 - 1);
  }

  v39 = sub_22113F90C(a3, a4, a5, a6, a1, v18, 0, a2);

  return sub_22113F90C(v39, v40, v41, v42, v38, v19, 1, a2);
}

double sub_22113F90C(double a1, double a2, double a3, double a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  v8 = (a8 + 4 * a6);
  *v8 = a7;
  v8[19] = 1;
  v9 = a7;
  v10 = (a8 + 32 * a6 + 200);
  v11 = (a8 + 16 * a7 + 152);
  if (*(a8 + 144 + 4 * a7))
  {
    v12 = 0;
    v13 = &v25;
    v14 = 1;
    do
    {
      v15 = v14;
      v16 = *(v11 + v12);
      if (v16 >= *(v10 + v12))
      {
        v16 = *(v10 + v12);
      }

      v17 = *(v10 + v12 + 2);
      if (v17 <= *(v11 + v12 + 2))
      {
        v17 = *(v11 + v12 + 2);
      }

      *v13 = v16;
      *(&v25 + v12 + 2) = v17;
      v13 = &v25 + 1;
      v12 = 1;
      v14 = 0;
    }

    while ((v15 & 1) != 0);
    v18 = v25;
  }

  else
  {
    v18 = *v10;
  }

  *v11 = v18;
  v19 = 0;
  v20 = 0.0;
  v21 = 1;
  do
  {
    v22 = v21;
    LODWORD(a3) = *(v11 + v19 + 2);
    LODWORD(a4) = *(v11 + v19);
    a4 = *&a4;
    a3 = (*&a3 - a4) * 0.5;
    v20 = v20 + a3 * a3;
    v19 = 1;
    v21 = 0;
  }

  while ((v22 & 1) != 0);
  v23 = sqrt(v20);
  result = v23 * v23 * 3.141593;
  *(a8 + 8 * v9 + 184) = result;
  ++*(a8 + 144 + 4 * v9);
  return result;
}

uint64_t sub_22113FA1C(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4, uint64_t a5)
{
  v8 = *a4;
  if (a4[1] <= 0)
  {
    if (v8 >= 1)
    {
      v18 = 0;
      v19 = a4 + 2;
      v20 = *a3;
      v21 = *(a3 + 4);
      while (2)
      {
        v22 = 0;
        v23 = &v19[8 * v18];
        v24 = 1;
        while (1)
        {
          v25 = v24;
          if (*(a2 + 4 * v22) != v23[v22] || *(a2 + 8 + 4 * v22) != v23[v22 + 2])
          {
            break;
          }

          v24 = 0;
          v22 = 1;
          if ((v25 & 1) == 0)
          {
            v26 = *(v23 + 2);
            if (v20 == v26 && ((v26 ^ v20) & 0x101FFFF00000000) == 0 && v21 == *(v23 + 12))
            {
              result = 0;
              v30 = &v19[8 * v8 - 8];
              v31 = *(v30 + 1);
              v32 = &v19[8 * v18];
              *v32 = *v30;
              *(v32 + 1) = v31;
              *a4 = v8 - 1;
              return result;
            }

            break;
          }
        }

        if (++v18 != v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (v8 >= 1)
  {
    v11 = 0;
    v12 = a4 + 2;
    while (2)
    {
      v13 = 0;
      v14 = &v12[8 * v11];
      v15 = 1;
      while (1)
      {
        v16 = v15;
        if (*(a2 + 4 * v13) > v14[v13 + 2] || v14[v13] > *(a2 + 8 + 4 * v13))
        {
          break;
        }

        v15 = 0;
        v13 = 1;
        if ((v16 & 1) == 0)
        {
          v17 = sub_22113FA1C(a1, a2, a3, *(v14 + 2), a5);
          if (!v17)
          {
            if (**(v14 + 2) < 8)
            {
              operator new();
            }

            v28 = sub_22113EFCC(v17, *(v14 + 2));
            result = 0;
            *v14 = v28;
            *(v14 + 1) = v29;
            return result;
          }

          LODWORD(v8) = *a4;
          break;
        }
      }

      if (++v11 < v8)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t sub_221140090(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (!a1)
  {
    goto LABEL_15;
  }

  v12 = objc_msgSend_length(v3, v4, v5, v6, v7);
  if (v12)
  {
    v13 = objc_msgSend_characterAtIndex_(v8, v9, 0, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  v17 = objc_msgSend_rangeOfCharacterFromSet_(v8, v9, *(a1 + 168), v10, v11);
  IsMember = v17 != 0x7FFFFFFFFFFFFFFFLL;
  if (v12 && v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (objc_msgSend_characterIsMember_(*(a1 + 136), v14, v13, v15, v16))
    {
      goto LABEL_12;
    }

    v22 = *(a1 + 136);
    v23 = objc_msgSend_characterAtIndex_(v8, v19, v12 - 1, v20, v21);
    if (objc_msgSend_characterIsMember_(v22, v24, v23, v25, v26) & 1) != 0 || (objc_msgSend_characterIsMember_(*(a1 + 104), v27, v13, v28, v29))
    {
      goto LABEL_12;
    }

    IsMember = objc_msgSend_characterIsMember_(*(a1 + 112), v30, v13, v31, v32);
  }

  if (IsMember)
  {
LABEL_12:
    LOBYTE(v33) = 1;
    goto LABEL_13;
  }

  if (objc_msgSend_rangeOfCharacterFromSet_(v8, v14, *(a1 + 104), v15, v16) == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_15:
    LOBYTE(v33) = 0;
    goto LABEL_13;
  }

  v42 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v35, v8, v36, v37);
  v33 = 0;
  while ((objc_msgSend_isAtEnd(v42, v38, v39, v40, v41) & 1) == 0)
  {
    objc_msgSend_scanUpToCharactersFromSet_intoString_(v42, v43, *(a1 + 136), 0, v44);
    objc_msgSend_scanCharactersFromSet_intoString_(v42, v45, *(a1 + 136), 0, v46);
    v33 |= objc_msgSend_scanCharactersFromSet_intoString_(v42, v47, *(a1 + 104), 0, v48);
  }

LABEL_13:
  return v33 & 1;
}

id sub_22114022C(uint64_t *a1, void *a2, char a3)
{
  v9 = a2;
  if (a1)
  {
    if ((a3 & 1) != 0 || sub_221140090(a1, v9))
    {
      v10 = objc_msgSend_mutableCopy(v9, v5, v6, v7, v8);
      v11 = a1[1];
      v12 = a1[2];
      v17 = objc_msgSend_length(v10, v13, v14, v15, v16);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v10, v18, v11, v12, 2, 0, v17);
      v19 = a1[3];
      v20 = a1[4];
      v25 = objc_msgSend_length(v10, v21, v22, v23, v24);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v10, v26, v19, v20, 2, 0, v25);
      v27 = a1[5];
      v28 = a1[6];
      v33 = objc_msgSend_length(v10, v29, v30, v31, v32);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v10, v34, v27, v28, 2, 0, v33);
      v35 = a1[7];
      v36 = a1[8];
      v41 = objc_msgSend_length(v10, v37, v38, v39, v40);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v10, v42, v35, v36, 2, 0, v41);
      objc_msgSend_insertString_atIndex_(v10, v43, a1[1], 0, v44);
      v45 = a1[1];
      v50 = objc_msgSend_length(v10, v46, v47, v48, v49);
      objc_msgSend_insertString_atIndex_(v10, v51, v45, v50, v52);
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t *sub_221140390(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_22114022C(a1, v3, 1);
  }

  return a1;
}

uint64_t *sub_2211403F8(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_22114022C(a1, v3, 0);
  }

  return a1;
}

id sub_221140460(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    if (objc_msgSend_length(v3, v4, v5, v6, v7))
    {
      v12 = objc_msgSend_characterAtIndex_(v8, v9, 0, v10, v11);
      IsMember = objc_msgSend_characterIsMember_(*(a1 + 144), v13, v12, v14, v15);
    }

    else
    {
      IsMember = objc_msgSend_characterIsMember_(*(a1 + 144), v9, 0, v10, v11);
    }

    if (IsMember)
    {
      v20 = objc_msgSend_stringByTrimmingCharactersInSet_(v8, v17, *(a1 + 136), v18, v19);
      v28 = objc_msgSend_length(v20, v21, v22, v23, v24);
      if (v28 >= 2 && (v29 = *(a1 + 104), v30 = objc_msgSend_characterAtIndex_(v20, v25, 0, v26, v27), objc_msgSend_characterIsMember_(v29, v31, v30, v32, v33)) && (v37 = *(a1 + 104), v38 = objc_msgSend_characterAtIndex_(v20, v34, v28 - 1, v35, v36), objc_msgSend_characterIsMember_(v37, v39, v38, v40, v41)))
      {
        v46 = objc_msgSend_mutableCopy(v20, v42, v43, v44, v45);
        v51 = objc_msgSend_length(v46, v47, v48, v49, v50);
        objc_msgSend_deleteCharactersInRange_(v46, v52, v51 - 1, 1, v53);
        objc_msgSend_deleteCharactersInRange_(v46, v54, 0, 1, v55);
        if (objc_msgSend_length(v46, v56, v57, v58, v59))
        {
          v65 = *(a1 + 8);
          v64 = *(a1 + 16);
          v66 = objc_msgSend_length(v46, v60, v61, v62, v63);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v46, v67, v64, v65, 2, 0, v66);
          v69 = *(a1 + 24);
          v68 = *(a1 + 32);
          v74 = objc_msgSend_length(v46, v70, v71, v72, v73);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v46, v75, v68, v69, 2, 0, v74);
          v77 = *(a1 + 40);
          v76 = *(a1 + 48);
          v82 = objc_msgSend_length(v46, v78, v79, v80, v81);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v46, v83, v76, v77, 2, 0, v82);
          v86 = a1 + 56;
          v84 = *(a1 + 56);
          v85 = *(v86 + 8);
          v91 = objc_msgSend_length(v46, v87, v88, v89, v90);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v46, v92, v85, v84, 2, 0, v91);
        }
      }

      else
      {
        v46 = v8;
      }
    }

    else
    {
      v46 = v8;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

uint64_t *sub_22114067C(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_2211406EC(a1, v3, 0, 1u);
  }

  return a1;
}

id sub_2211406EC(uint64_t *a1, void *a2, char a3, unsigned __int8 a4)
{
  v7 = a2;
  v11 = v7;
  if (a1)
  {
    v12 = objc_msgSend_stringByTrimmingCharactersInSet_(v7, v8, a1[17], v9, v10);
    v17 = objc_msgSend_length(v12, v13, v14, v15, v16);
    if (v17 >= objc_msgSend_length(v11, v18, v19, v20, v21))
    {
      v30 = &stru_2834BADA0;
    }

    else
    {
      v26 = objc_msgSend_length(v12, v22, v23, v24, v25);
      v30 = objc_msgSend_substringFromIndex_(v11, v27, v26, v28, v29);
    }

    if (objc_msgSend_length(v12, v22, v23, v24, v25))
    {
      v34 = a1[13];
      v35 = objc_msgSend_characterAtIndex_(v12, v31, 0, v32, v33);
      IsMember = objc_msgSend_characterIsMember_(v34, v36, v35, v37, v38);
      if (IsMember)
      {
        if ((a3 & 1) == 0 && objc_msgSend_length(v11, v39, v40, v41, v42) == 2)
        {
          v44 = a1[13];
          v45 = objc_msgSend_characterAtIndex_(v11, v39, 1, v41, v42);
          if (objc_msgSend_characterIsMember_(v44, v46, v45, v47, v48))
          {
            v49 = objc_msgSend_substringFromIndex_(v11, v39, 1, v41, v42);
LABEL_16:
            v122 = v49;
LABEL_26:

            goto LABEL_27;
          }
        }
      }

      if (IsMember)
      {
        v50 = objc_msgSend_mutableCopyWithZone_(v12, v39, 0, v41, v42);
        objc_msgSend_deleteCharactersInRange_(v50, v51, 0, 1, v52);
        if (objc_msgSend_length(v50, v53, v54, v55, v56))
        {
          objc_msgSend_rangeOfString_(v50, v57, a1[9], v58, v59);
          objc_msgSend_rangeOfString_(v50, v60, a1[10], v61, v62);
          objc_msgSend_rangeOfString_(v50, v63, a1[12], v64, v65);
          objc_msgSend_rangeOfString_(v50, v66, a1[11], v67, v68);
          v69 = a1[2];
          v70 = a1[9];
          v75 = objc_msgSend_length(v50, v71, v72, v73, v74);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v50, v76, v69, v70, 2, 0, v75);
          v77 = a1[4];
          v78 = a1[10];
          v83 = objc_msgSend_length(v50, v79, v80, v81, v82);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v50, v84, v77, v78, 2, 0, v83);
          v85 = a1[6];
          v86 = a1[12];
          v91 = objc_msgSend_length(v50, v87, v88, v89, v90);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v50, v92, v85, v86, 2, 0, v91);
          v93 = a1[8];
          v94 = a1[11];
          v99 = objc_msgSend_length(v50, v95, v96, v97, v98);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v50, v100, v93, v94, 2, 0, v99);
          v105 = objc_msgSend_length(v50, v101, v102, v103, v104);
          v106 = a1[13];
          v107 = v105 - 1;
          v111 = objc_msgSend_characterAtIndex_(v50, v108, v105 - 1, v109, v110);
          if (objc_msgSend_characterIsMember_(v106, v112, v111, v113, v114))
          {
            objc_msgSend_deleteCharactersInRange_(v50, v115, v107, 1, v117);
          }

          else
          {
            objc_msgSend_appendString_(v50, v115, v30, v116, v117);

            v30 = &stru_2834BADA0;
          }

          if (objc_msgSend_length(v50, v118, v119, v120, v121))
          {
            v127 = a1[9];
            v128 = a1[1];
            v129 = objc_msgSend_length(v50, v123, v124, v125, v126);
            objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v50, v130, v127, v128, 2, 0, v129);
            v131 = a1[10];
            v132 = a1[3];
            v137 = objc_msgSend_length(v50, v133, v134, v135, v136);
            objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v50, v138, v131, v132, 2, 0, v137);
            v139 = a1[12];
            v140 = a1[5];
            v145 = objc_msgSend_length(v50, v141, v142, v143, v144);
            objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v50, v146, v139, v140, 2, 0, v145);
            v147 = a1[11];
            v148 = a1[7];
            v153 = objc_msgSend_length(v50, v149, v150, v151, v152);
            objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v50, v154, v147, v148, 2, 0, v153);
          }
        }

        v155 = sub_221140390(a1, v50);
        v159 = objc_msgSend_stringByAppendingString_(v155, v156, v30, v157, v158);
        hasPrefix = objc_msgSend_hasPrefix_(v159, v160, v11, v161, v162);

        if (hasPrefix)
        {
          v167 = v50;
        }

        else
        {
          v167 = v11;
        }

        if (hasPrefix & a4)
        {
          objc_msgSend_appendString_(v50, v164, v30, v165, v166);
          v167 = v50;
        }

        v122 = v167;

        goto LABEL_26;
      }
    }

    v49 = v11;
    goto LABEL_16;
  }

  v122 = 0;
LABEL_27:

  return v122;
}

id sub_221140B28(void *a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (a1)
  {
    a1 = objc_msgSend_mutableCopyWithZone_(v3, v4, 0, v5, v6);
    if (objc_msgSend_length(a1, v8, v9, v10, v11))
    {
      v16 = objc_msgSend_length(a1, v12, v13, v14, v15);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(a1, v17, @"\\s+", @" ", 1024, 0, v16);
    }
  }

  return a1;
}

id sub_221140BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (a1)
  {
    v9 = objc_msgSend_length(v3, v4, v5, v6, v7);
    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v9)
    {
      v13 = 0;
      v14 = 0;
      v38 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = objc_msgSend_characterAtIndex_(v8, v10, v15, v11, v12, v36);
        IsMember = objc_msgSend_characterIsMember_(*(a1 + 104), v19, v18, v20, v21);
        v26 = objc_msgSend_characterIsMember_(*(a1 + 120), v23, v18, v24, v25);
        if (v17)
        {
          v16 = IsMember;
        }

        if (v16 & IsMember)
        {
          v17 = 0;
          v14 = 0;
          v13 ^= 1u;
          v16 = 1;
        }

        else if (v26)
        {
          if (v13)
          {
            v17 = 0;
            v14 = 0;
            v13 = 1;
          }

          else if (v14)
          {
            v27 = objc_msgSend_substringWithRange_(v8, v10, v38, ~v38 + v15, v12);
            objc_msgSend_addObject_(v36, v28, v27, v29, v30);
            v38 = v15 + 1;

            v16 = 0;
            v14 = 0;
            v13 = 0;
            v17 = 1;
          }

          else
          {
            v17 = 0;
            v13 = 0;
            v14 = 1;
          }
        }

        else
        {
          v17 = 0;
          v14 = 0;
        }

        ++v15;
      }

      while (v9 != v15);
    }

    else
    {
      v38 = 0;
    }

    v31 = objc_msgSend_substringWithRange_(v8, v10, v38, v9 - v38, v12, v36);
    objc_msgSend_addObject_(v37, v32, v31, v33, v34);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

void **sub_221140DD4(void **a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = a3;
  if (a1)
  {
    v11 = objc_msgSend_length(v5, v6, v7, v8, v9);
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v11)
    {
      v15 = 0;
      v43 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = objc_msgSend_characterAtIndex_(v5, v12, v16, v13, v14, v41);
        IsMember = objc_msgSend_characterIsMember_(a1[13], v20, v19, v21, v22);
        v27 = objc_msgSend_characterIsMember_(v10, v24, v19, v25, v26);
        if (v18)
        {
          v17 = IsMember;
        }

        if (v17 & IsMember)
        {
          v18 = 0;
          v15 ^= 1u;
          v17 = 1;
        }

        else if (v27)
        {
          if (v15)
          {
            v18 = 0;
            v15 = 1;
          }

          else
          {
            v28 = objc_msgSend_substringWithRange_(v5, v12, v43, v16 - v43, v14);
            objc_msgSend_addObject_(v41, v29, v28, v30, v31);
            v43 = v16 + 1;

            v17 = 0;
            v15 = 0;
            v18 = 1;
          }
        }

        else
        {
          v18 = 0;
        }

        ++v16;
      }

      while (v11 != v16);
    }

    else
    {
      v43 = 0;
    }

    v32 = objc_msgSend_substringWithRange_(v5, v12, v43, v11 - v43, v14, v41);
    objc_msgSend_addObject_(v42, v33, v32, v34, v35);
    a1 = objc_msgSend_copy(v42, v36, v37, v38, v39);
  }

  return a1;
}

void **sub_221140FC8(void **a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_221140DD4(a1, v3, a1[15]);
  }

  return a1;
}

void **sub_221141034(void **a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = sub_221140DD4(a1, v3, a1[16]);
  }

  return a1;
}

uint64_t sub_2211410A0(uint64_t a1, NSUInteger a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a1 && ((v14 = objc_msgSend_length(v5, v6, v7, v8, v9), v14 >= a2) ? (v27 = a2) : (v15 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEStringManipulator formulaQuoteContextAtCharIndex:inString:]", v12, v13), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStringManipulator.mm", v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v38.location = 0, v38.length = v14, NSStringFromRange(v38), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v16, v20, 527, 0, "charIndex %lu not within string range %@", a2, v21), v21, v20, v16, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26), v27 = v14), v27))
  {
    v28 = 0;
    LODWORD(v29) = 0;
    do
    {
      v30 = objc_msgSend_characterAtIndex_(v10, v11, v28, v12, v13);
      if (objc_msgSend_characterIsMember_(*(a1 + 152), v31, v30, v32, v33))
      {
        if (v29 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v29;
        }

        if (v29 == 1)
        {
          v29 = 0;
        }

        else
        {
          v29 = v34;
        }
      }

      else
      {
        IsMember = objc_msgSend_characterIsMember_(*(a1 + 160), v11, v30, v12, v13);
        if (v29)
        {
          v36 = v29;
        }

        else
        {
          v36 = 2;
        }

        if (v29 == 2)
        {
          v36 = 0;
        }

        if (IsMember)
        {
          v29 = v36;
        }

        else
        {
          v29 = v29;
        }
      }

      ++v28;
    }

    while (v27 != v28);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

id sub_221141254(uint64_t *a1, void *a2)
{
  v107 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = sub_221140B28(a1, v3);

    v98 = a1;
    v93 = v4;
    if (objc_msgSend_rangeOfCharacterFromSet_(v4, v5, a1[17], v6, v7) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = v4;
      v99 = v3;
    }

    else
    {
      v95 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v8, v4, v9, v10);
      v11 = objc_opt_new();
      objc_msgSend_setCharactersToBeSkipped_(v95, v12, v11, v13, v14);

      v94 = objc_opt_new();
      while ((objc_msgSend_isAtEnd(v95, v15, v16, v17, v18) & 1) == 0)
      {
        v21 = a1[17];
        v105 = 0;
        objc_msgSend_scanUpToCharactersFromSet_intoString_(v95, v19, v21, &v105, v20);
        v22 = v105;
        if (objc_msgSend_length(v22, v23, v24, v25, v26))
        {
          objc_msgSend_addObject_(v94, v27, v22, v28, v29);
        }

        v30 = a1[17];
        v104 = 0;
        objc_msgSend_scanCharactersFromSet_intoString_(v95, v31, v30, &v104, v32);
        v33 = v104;
        if (objc_msgSend_length(v33, v34, v35, v36, v37))
        {
          objc_msgSend_addObject_(v94, v38, v33, v39, v40);
        }
      }

      v99 = objc_opt_new();
      v45 = objc_msgSend_count(v94, v41, v42, v43, v44);
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      obj = v94;
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v100, v106, 16);
      if (v51)
      {
        v52 = 0;
        v53 = 0;
        v54 = *v101;
        v96 = v45 - 1;
        do
        {
          v55 = 0;
          do
          {
            if (*v101 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v56 = 0;
            v57 = *(*(&v100 + 1) + 8 * v55);
            if (v52 && v52 < v96)
            {
              v58 = *(v98 + 136);
              v59 = objc_msgSend_characterAtIndex_(*(*(&v100 + 1) + 8 * v55), v47, 0, v49, v50);
              if (objc_msgSend_characterIsMember_(v58, v60, v59, v61, v62))
              {
                v63 = objc_msgSend_objectAtIndexedSubscript_(obj, v47, v52 - 1, v49, v50);
                v67 = objc_msgSend_objectAtIndexedSubscript_(obj, v64, v52 + 1, v65, v66);
                v72 = objc_msgSend_length(v63, v68, v69, v70, v71);
                v76 = objc_msgSend_characterAtIndex_(v63, v73, v72 - 1, v74, v75);
                v80 = objc_msgSend_characterAtIndex_(v67, v77, 0, v78, v79);
                v56 = (objc_msgSend_characterIsMember_(*(v98 + 168), v81, v76, v82, v83) & 1) == 0 && (objc_msgSend_characterIsMember_(*(v98 + 168), v84, v80, v85, v86) & 1) == 0 && !TSUFormulaOperatorForChar() && !TSUFormulaOperatorForChar() && sub_2211410A0(v98, v53, v93) == 0;
              }

              else
              {
                v56 = 0;
              }
            }

            v90 = objc_msgSend_length(v57, v47, v48, v49, v50);
            if (v56)
            {
              objc_msgSend_appendString_(v99, v87, @" ∩ ", v88, v89);
            }

            else
            {
              objc_msgSend_appendString_(v99, v87, v57, v88, v89);
            }

            v53 += v90;
            ++v52;
            ++v55;
          }

          while (v51 != v55);
          v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v100, v106, 16);
          v51 = v91;
        }

        while (v91);
      }

      v3 = v93;
    }
  }

  else
  {
    v99 = 0;
  }

  return v99;
}

uint64_t sub_221141800(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *i)
  {
    if (i[3])
    {
      v3 = sub_221141800();
      MEMORY[0x223DA1450](v3, 0x10A0C40026B2379);
    }
  }

  return sub_2210BDEC0(a1);
}

uint64_t sub_221141878(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v12 = a1;
  sub_221142374(v13, &v12);
  v4 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    while (1)
    {
      v5 = *(*(*(&v13[0] + 1) + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF));
      *&v14 = v14 + 1;
      *(&v14 + 1) = v4 - 1;
      if (v14 >= 0x400)
      {
        operator delete(**(&v13[0] + 1));
        *(&v13[0] + 1) += 8;
        *&v14 = v14 - 512;
      }

      v6 = *(v5 + 40);
      if (v6)
      {
        v7 = v6;
        v3[2](v3, v7, &v15);
      }

      if (v15)
      {
        break;
      }

      for (i = (v5 + 16); ; sub_221142374(v13, i + 3))
      {
        i = *i;
        if (!i)
        {
          break;
        }
      }

      v9 = v15;
      v4 = *(&v14 + 1);
      if (!*(&v14 + 1) || (v15 & 1) != 0)
      {
        goto LABEL_15;
      }
    }

    v9 = 1;
LABEL_15:
    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  sub_221142278(v13);

  return v10 & 1;
}

void sub_2211419AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221142278(va);

  _Unwind_Resume(a1);
}

void sub_221141CA4(uint64_t a1, void *a2)
{
  v9 = a2;
  v7 = objc_msgSend_copy(v9, v3, v4, v5, v6);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
}

void sub_221142108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221142278(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_221142324(a1);
}

uint64_t sub_221142324(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_221142374(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_2211423FC(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *sub_2211423FC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_22107C1F0(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_2211425D0(a1, &v10);
}

void sub_221142584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_2211425D0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_22107C1F0(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_2211426D8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_22107C1F0(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_2211427E4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_22107C1F0(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_2211428EC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_22107C1F0(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t **sub_2211429F8(void *a1, unsigned __int16 *a2)
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

uint64_t *sub_221142C34(void *a1, unsigned __int16 *a2)
{
  result = sub_2210C3024(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

void sub_221143144(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_221143624(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0x2000;
  }

  else
  {
    return dword_2217E0498[a1];
  }
}

unsigned __int8 *sub_221143644(unsigned __int8 *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
    result = sub_221143678(result, a2, a3, a4, a5);
    if (result)
    {
      return *(v5 + 2);
    }
  }

  return result;
}

BOOL sub_221143678(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (v5 != 5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSTCellStorageVersionCheck(TSTCellStorage *)", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 138, 0, "Can't parse cell storage header version %d!", v5);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v14, v15, v16, v17);
  }

  return v5 == 5;
}

uint64_t sub_221143750(unsigned int a1)
{
  if (a1)
  {
    v1 = vdupq_n_s16(a1);
    v2.i64[0] = 0x4000400040004;
    v2.i64[1] = 0x4000400040004;
    v3 = vandq_s8(vshlq_u16(v1, xmmword_2217E0470), v2);
    v1.i64[0] = *&vshl_u16(*v1.i8, 0xFFF3FFF4FFF5FFF6) & 0xFFC4FFC4FFC4FFC4;
    v3.i16[0] = vaddvq_s16(v3);
    v1.i16[0] = vaddv_s16(*v1.i8);
    v4 = v3.i32[0] + v1.i32[0];
    v1.i16[0] = vaddv_s16(vand_s8(vmovn_s32(vshlq_u32(vdupq_n_s32(a1), xmmword_2217E0480)), 0x4000400040004));
    return (v4 + v1.i32[0] + ((a1 >> 18) & 4) + ((a1 >> 1) & 4 | (8 * ((a1 >> 2) & 1))) + (__rbit32(a1 & 3) >> 27));
  }

  else
  {
    LOWORD(v5) = 0;
  }

  return v5;
}

uint64_t sub_2211437F4(unsigned int a1)
{
  if (a1)
  {
    v1 = sub_221143750(a1);
    v5 = v1 + 12;
    if ((v1 & 3) != 0)
    {
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "UInt16 TSTCellStorageSizeForHeaderFlags(TSTCellStorageFieldFlags)", v3, v4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v9, v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 154, 0, "Storage size should be four-byte-aligned!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    }
  }

  else
  {
    return 12;
  }

  return v5;
}

uint64_t sub_2211438C8(void *a1)
{
  v1 = a1;
  v2 = sub_221143910(v1);
  v3 = sub_2211437F4(v2);

  return v3;
}

uint64_t sub_221143910(void *a1)
{
  v1 = a1;
  v6 = objc_msgSend_valueType(v1, v2, v3, v4, v5);
  hasCellStyle = objc_msgSend_hasCellStyle(v1, v7, v8, v9, v10);
  hasTextStyle = objc_msgSend_hasTextStyle(v1, v11, v12, v13, v14);
  hasConditionalStyle = objc_msgSend_hasConditionalStyle(v1, v15, v16, v17, v18);
  hasFormula = objc_msgSend_hasFormula(v1, v19, v20, v21, v22);
  hasControl = objc_msgSend_hasControl(v1, v23, v24, v25, v26);
  hasFormulaSyntaxError = objc_msgSend_hasFormulaSyntaxError(v1, v27, v28, v29, v30);
  v35 = objc_msgSend_cellFormatKind(v1, v31, v32, v33, v34);
  hasNumberFormat = objc_msgSend_hasNumberFormat(v1, v36, v37, v38, v39);
  hasCurrencyFormat = objc_msgSend_hasCurrencyFormat(v1, v41, v42, v43, v44);
  hasDateFormat = objc_msgSend_hasDateFormat(v1, v46, v47, v48, v49);
  hasDurationFormat = objc_msgSend_hasDurationFormat(v1, v51, v52, v53, v54);
  hasTextFormat = objc_msgSend_hasTextFormat(v1, v56, v57, v58, v59);
  hasBooleanFormat = objc_msgSend_hasBooleanFormat(v1, v61, v62, v63, v64);
  hasCommentStorage = objc_msgSend_hasCommentStorage(v1, v66, v67, v68, v69);
  hasImportWarningSet = objc_msgSend_hasImportWarningSet(v1, v71, v72, v73, v74);
  if ((v6 & 0xFFFFFFF7) == 2)
  {
    v76 = 3;
  }

  else
  {
    v76 = 2;
  }

  if ((v6 & 0xFE) == 6)
  {
    v77 = v76;
  }

  else
  {
    v77 = (v6 & 0xFFFFFFF7) == 2;
  }

  if (v6 == 5)
  {
    v77 |= 4u;
  }

  if (v6 == 3)
  {
    v77 |= 8u;
  }

  if (v6 == 9)
  {
    v77 |= 0x10u;
  }

  if (hasCellStyle)
  {
    v77 |= 0x20u;
  }

  if (hasTextStyle)
  {
    v77 |= 0x40u;
  }

  if (hasConditionalStyle)
  {
    v77 |= 0x180u;
  }

  if (hasFormula)
  {
    v77 |= 0x200u;
  }

  if (hasControl)
  {
    v77 |= 0x400u;
  }

  if (hasFormulaSyntaxError)
  {
    v77 |= 0x800u;
  }

  if (v35)
  {
    v77 |= 0x1000u;
  }

  if (hasNumberFormat)
  {
    v77 |= 0x2000u;
  }

  if (hasCurrencyFormat)
  {
    v77 |= 0x4000u;
  }

  if (hasDateFormat)
  {
    v77 |= 0x8000u;
  }

  if (hasDurationFormat)
  {
    v77 |= 0x10000u;
  }

  if (hasTextFormat)
  {
    v77 |= 0x20000u;
  }

  if (hasBooleanFormat)
  {
    v77 |= 0x40000u;
  }

  if (hasCommentStorage)
  {
    v77 |= 0x80000u;
  }

  if (hasImportWarningSet)
  {
    v78 = v77 | 0x100000;
  }

  else
  {
    v78 = v77;
  }

  return v78;
}

void sub_221143B30(void *a1, uint64_t a2)
{
  v3 = a1;
  *a2 = 5;
  v4 = sub_221143910(v3);
  *(a2 + 1) = objc_msgSend_valueType(v3, v5, v6, v7, v8);
  *(a2 + 4) = objc_msgSend_cellFlags(v3, v9, v10, v11, v12);
  *(a2 + 6) = objc_msgSend_explicitFormatFlags(v3, v13, v14, v15, v16);
  if (v4)
  {
    TSUDecimal::operator=();
    if (*(a2 + 1) == 10)
    {
      v28 = objc_msgSend_currencyDecimalValue(v3, v24, v25, v26, v27);
    }

    else
    {
      v28 = objc_msgSend_numberDecimalValue(v3, v24, v25, v26, v27);
    }

    v280._decimal.w[0] = v28;
    v280._decimal.w[1] = v29;
    *(a2 + 12) = TSUDecimal::low(&v280);
    *(a2 + 20) = TSUDecimal::high(&v280);
    v22 = v4 & 0x1FFFFE;
    v21 = 16;
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v22 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v21 = 0;
    v22 = v4;
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }
  }

  objc_msgSend_underlyingDoubleValue(v3, v17, v18, v19, v20);
  *(a2 + v21 + 12) = v30;
  v21 |= 8u;
  v22 &= 0x1FFFFDu;
  if ((v22 & 4) == 0)
  {
LABEL_4:
    if ((v22 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v31 = objc_msgSend_dateValue(v3, v17, v18, v19, v20);
  objc_msgSend_timeIntervalSinceReferenceDate(v31, v32, v33, v34, v35);
  v37 = v36;

  *(a2 + v21 + 12) = v37;
  v21 += 8;
  v22 = v22 & 0xFFFFFFFB;
  if ((v22 & 8) == 0)
  {
LABEL_5:
    v23 = v4;
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_29:
  v38 = objc_msgSend_stringID(v3, v17, v18, v19, v20);
  if (v38)
  {
    *(a2 + v21 + 12) = v38;
    v21 += 4;
    v23 = v4;
  }

  else
  {
    v104 = MEMORY[0x277D81150];
    v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v107, v108);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v110, v105, v109, 369, 0, "Cell claims to have a string, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v111, v112, v113, v114);
    v23 = v4 & 0x1FFFF7;
  }

  v22 = v22 & 0xFFFFFFF7;
  if ((v22 & 0x10) == 0)
  {
LABEL_6:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_32:
  v39 = objc_msgSend_richTextID(v3, v17, v18, v19, v20);
  if (v39)
  {
    *(a2 + v21 + 12) = v39;
    v21 += 4;
  }

  else
  {
    v115 = MEMORY[0x277D81150];
    v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v118, v119);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v121, v116, v120, 383, 0, "Cell claims to have rich text, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v122, v123, v124, v125);
    v23 &= ~0x10u;
  }

  v22 = v22 & 0xFFFFFFEF;
  if ((v22 & 0x20) == 0)
  {
LABEL_7:
    if ((v22 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_35:
  v40 = objc_msgSend_cellStyleID(v3, v17, v18, v19, v20);
  if (v40)
  {
    *(a2 + v21 + 12) = v40;
    v21 += 4;
  }

  else
  {
    v126 = MEMORY[0x277D81150];
    v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v129, v130);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v132, v127, v131, 397, 0, "Cell claims to have a cell style, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v134, v135, v136);
    v23 &= ~0x20u;
  }

  v22 = v22 & 0xFFFFFFDF;
  if ((v22 & 0x40) == 0)
  {
LABEL_8:
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_38:
  v41 = objc_msgSend_textStyleID(v3, v17, v18, v19, v20);
  if (v41)
  {
    *(a2 + v21 + 12) = v41;
    v21 += 4;
  }

  else
  {
    v137 = MEMORY[0x277D81150];
    v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v139, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v140, v141);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v137, v143, v138, v142, 411, 0, "Cell claims to have a text style, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v144, v145, v146, v147);
    v23 &= ~0x40u;
  }

  v22 = v22 & 0xFFFFFFBF;
  if ((v22 & 0x80) == 0)
  {
LABEL_9:
    if ((v22 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_41:
  v42 = objc_msgSend_conditionalStyleID(v3, v17, v18, v19, v20);
  if (v42)
  {
    *(a2 + v21 + 12) = v42;
    v21 += 4;
  }

  else
  {
    v148 = MEMORY[0x277D81150];
    v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v153 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v151, v152);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v148, v154, v149, v153, 425, 0, "Cell claims to have conditional style, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v155, v156, v157, v158);
    v23 &= ~0x80u;
  }

  v22 = v22 & 0xFFFFFF7F;
  if ((v22 & 0x100) == 0)
  {
LABEL_10:
    if ((v22 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_44:
  if (v3)
  {
    v43 = objc_msgSend_conditionalStyleAppliedRule(v3, v17, v18, v19, v20);
  }

  else
  {
    v43 = 15;
  }

  *(a2 + v21 + 12) = v43;
  v21 += 4;
  v22 = v22 & 0xFFFFFEFF;
  if ((v22 & 0x200) == 0)
  {
LABEL_11:
    if ((v22 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_48:
  v44 = objc_msgSend_formulaID(v3, v17, v18, v19, v20);
  if (v44)
  {
    *(a2 + v21 + 12) = v44;
    v21 += 4;
  }

  else
  {
    v159 = MEMORY[0x277D81150];
    v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v164 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v161, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v162, v163);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v159, v165, v160, v164, 447, 0, "Cell claims to have a formula, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v166, v167, v168, v169);
    v23 &= ~0x200u;
  }

  v22 = v22 & 0xFFFFFDFF;
  if ((v22 & 0x400) == 0)
  {
LABEL_12:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_51:
  v45 = objc_msgSend_controlCellSpecID(v3, v17, v18, v19, v20);
  if (v45)
  {
    *(a2 + v21 + 12) = v45;
    v21 += 4;
  }

  else
  {
    v170 = MEMORY[0x277D81150];
    v171 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v172, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v173, v174);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v170, v176, v171, v175, 461, 0, "Cell claims to have a control, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v177, v178, v179, v180);
    v23 &= ~0x400u;
  }

  v22 = v22 & 0xFFFFFBFF;
  if ((v22 & 0x800) == 0)
  {
LABEL_13:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_54:
  v46 = objc_msgSend_formulaSyntaxErrorID(v3, v17, v18, v19, v20);
  if (v46)
  {
    *(a2 + v21 + 12) = v46;
    v21 += 4;
  }

  else
  {
    v181 = MEMORY[0x277D81150];
    v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v184, v185);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v181, v187, v182, v186, 475, 0, "Cell claims to have a formula syntax error, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v188, v189, v190, v191);
    v23 &= ~0x800u;
  }

  v22 = v22 & 0xFFFFF7FF;
  if ((v22 & 0x1000) == 0)
  {
LABEL_14:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_57:
  v47 = objc_msgSend_cellFormatKind(v3, v17, v18, v19, v20);
  if (!v47)
  {
    v48 = MEMORY[0x277D81150];
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v51, v52);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 484, 0, "Can't archive a bad format kind!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v55, v56, v57, v58);
  }

  *(a2 + v21 + 12) = v47;
  v21 += 4;
  v22 = v22 & 0xFFFFEFFF;
  if ((v22 & 0x2000) == 0)
  {
LABEL_15:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_60:
  v59 = objc_msgSend_numberFormatID(v3, v17, v18, v19, v20);
  if (v59)
  {
    *(a2 + v21 + 12) = v59;
    LOWORD(v21) = v21 + 4;
  }

  else
  {
    v192 = MEMORY[0x277D81150];
    v193 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v197 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v194, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v195, v196);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v192, v198, v193, v197, 498, 0, "Cell claims to have a number format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v199, v200, v201, v202);
    v23 &= ~0x2000u;
  }

  v22 = v22 & 0xFFFFDFFF;
  if ((v22 & 0x4000) == 0)
  {
LABEL_16:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_63:
  v60 = objc_msgSend_currencyFormatID(v3, v17, v18, v19, v20);
  if (v60)
  {
    *(a2 + v21 + 12) = v60;
    LOWORD(v21) = v21 + 4;
  }

  else
  {
    v203 = MEMORY[0x277D81150];
    v204 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v208 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v205, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v206, v207);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v203, v209, v204, v208, 512, 0, "Cell claims to have a currency format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v210, v211, v212, v213);
    v23 &= ~0x4000u;
  }

  v22 = v22 & 0xFFFFBFFF;
  if ((v22 & 0x8000) == 0)
  {
LABEL_17:
    if ((v22 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_66:
  v61 = objc_msgSend_dateFormatID(v3, v17, v18, v19, v20);
  if (v61)
  {
    *(a2 + v21 + 12) = v61;
    LOWORD(v21) = v21 + 4;
  }

  else
  {
    v214 = MEMORY[0x277D81150];
    v215 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v219 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v216, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v217, v218);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v214, v220, v215, v219, 526, 0, "Cell claims to have a date format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v221, v222, v223, v224);
    v23 &= ~0x8000u;
  }

  v22 = v22 & 0xFFFF7FFF;
  if ((v22 & 0x10000) == 0)
  {
LABEL_18:
    if ((v22 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_69:
  v62 = objc_msgSend_durationFormatID(v3, v17, v18, v19, v20);
  if (v62)
  {
    *(a2 + v21 + 12) = v62;
    LOWORD(v21) = v21 + 4;
  }

  else
  {
    v225 = MEMORY[0x277D81150];
    v226 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v230 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v227, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v228, v229);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v225, v231, v226, v230, 540, 0, "Cell claims to have a duration format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v232, v233, v234, v235);
    v23 &= ~0x10000u;
  }

  v22 = v22 & 0xFFFEFFFF;
  if ((v22 & 0x20000) == 0)
  {
LABEL_19:
    if ((v22 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_75;
  }

LABEL_72:
  v63 = objc_msgSend_textFormatID(v3, v17, v18, v19, v20);
  if (v63)
  {
    *(a2 + v21 + 12) = v63;
    LOWORD(v21) = v21 + 4;
  }

  else
  {
    v236 = MEMORY[0x277D81150];
    v237 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v241 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v238, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v239, v240);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v236, v242, v237, v241, 554, 0, "Cell claims to have a text format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v243, v244, v245, v246);
    v23 &= ~0x20000u;
  }

  v22 = v22 & 0xFFFDFFFF;
  if ((v22 & 0x40000) == 0)
  {
LABEL_20:
    if ((v22 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_78;
  }

LABEL_75:
  v64 = objc_msgSend_BOOLeanFormatID(v3, v17, v18, v19, v20);
  if (v64)
  {
    *(a2 + v21 + 12) = v64;
    LOWORD(v21) = v21 + 4;
  }

  else
  {
    v247 = MEMORY[0x277D81150];
    v248 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v252 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v249, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v250, v251);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v247, v253, v248, v252, 568, 0, "Cell claims to have a BOOLean format, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v254, v255, v256, v257);
    v23 &= ~0x40000u;
  }

  v22 = v22 & 0xFFFBFFFF;
  if ((v22 & 0x80000) == 0)
  {
LABEL_21:
    if ((v22 & 0x100000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_81;
  }

LABEL_78:
  v65 = objc_msgSend_commentStorageID(v3, v17, v18, v19, v20);
  if (v65)
  {
    *(a2 + v21 + 12) = v65;
    LOWORD(v21) = v21 + 4;
  }

  else
  {
    v258 = MEMORY[0x277D81150];
    v259 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v263 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v260, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v261, v262);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v258, v264, v259, v263, 582, 0, "Cell claims to have a comment storage, but has no key for it!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v265, v266, v267, v268);
    v23 &= ~0x80000u;
  }

  v22 = v22 & 0xFFF7FFFF;
  if ((v22 & 0x100000) != 0)
  {
LABEL_81:
    v66 = objc_msgSend_importWarningSetID(v3, v17, v18, v19, v20);
    if (v66)
    {
      *(a2 + v21 + 12) = v66;
      LOWORD(v21) = v21 + 4;
    }

    else
    {
      v269 = MEMORY[0x277D81150];
      v270 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
      v274 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v271, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v272, v273);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v269, v275, v270, v274, 596, 0, "Cell claims to have an import warning set, but has no key for it!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v276, v277, v278, v279);
      v23 &= ~0x100000u;
    }

    v22 = v22 & 0xFFEFFFFF;
  }

LABEL_84:
  *(a2 + 8) = v23;
  if (v23 != v4)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v70, v71);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v73, v68, v72, 606, 0, "Could not archive all computed storage elements!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
  }

  if (v22)
  {
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v19, v20);
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v81, v82);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v84, v79, v83, 612, 0, "Failed to process all storage elements in TSTCellToCellStorage! Starting flags:%u Final flags:%u", v4, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
  }

  v89 = sub_221143678(a2, v17, v18, v19, v20);
  if (v89)
  {
    v89 = *(a2 + 8);
  }

  if (v21 + 12 != sub_2211437F4(v89))
  {
    v93 = MEMORY[0x277D81150];
    v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "void TSTCellToCellStorage(TSTCell *__strong, TSTCellStorage *)", v91, v92);
    v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v96, v97);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v93, v99, v94, v98, 615, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101, v102, v103);
  }
}

void sub_221144998(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_clear(v3, v4, v5, v6, v7);
  if (!a1 || !sub_221143678(a1, v8, v9, v10, v11))
  {
    goto LABEL_57;
  }

  v15 = *(a1 + 1);
  objc_msgSend_setValueType_(v3, v12, *(a1 + 1), v13, v14);
  objc_msgSend_setCellFlags_(v3, v16, *(a1 + 4), v17, v18);
  objc_msgSend_setExplicitFormatFlags_(v3, v19, *(a1 + 6), v20, v21);
  v26 = *(a1 + 8);
  if (v26)
  {
    TSUDecimal::TSUDecimal(&v49);
    if (v15 == 10)
    {
      objc_msgSend_setCurrencyDecimalValue_roundToDoublePrecision_(v3, v28, v49._decimal.w[0], v49._decimal.w[1], 0);
    }

    else
    {
      objc_msgSend_setNumberDecimalValue_roundToDoublePrecision_(v3, v28, v49._decimal.w[0], v49._decimal.w[1], 0);
    }

    v27 = 16;
    if ((v26 & 2) == 0)
    {
LABEL_5:
      if ((v26 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v27 = 0;
    if ((v26 & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  v29 = *(a1 + v27 + 12);
  if (v15 == 7)
  {
    objc_msgSend_setDurationTimeIntervalValue_(v3, v22, v23, v24, v25, v29);
  }

  else if (v15 == 6)
  {
    objc_msgSend_setBoolValue_(v3, v22, v29 != 0.0, v24, v25);
  }

  v27 |= 8u;
  if ((v26 & 4) == 0)
  {
LABEL_6:
    if ((v26 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  v30 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v22, v23, v24, v25, *(a1 + v27 + 12));
  objc_msgSend_setDateValue_(v3, v31, v30, v32, v33);

  v27 += 8;
  if ((v26 & 8) == 0)
  {
LABEL_7:
    if ((v26 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  objc_msgSend_setStringID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x10) == 0)
  {
LABEL_8:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  objc_msgSend_setRichTextID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x20) == 0)
  {
LABEL_9:
    if ((v26 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  objc_msgSend_setCellStyleID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x40) == 0)
  {
LABEL_10:
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  objc_msgSend_setTextStyleID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x80) == 0)
  {
LABEL_11:
    if ((v26 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  objc_msgSend_setConditionalStyleID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x100) == 0)
  {
LABEL_12:
    if ((v26 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  objc_msgSend_setConditionalStyleAppliedRule_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x200) == 0)
  {
LABEL_13:
    if ((v26 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  objc_msgSend_setFormulaID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x400) == 0)
  {
LABEL_14:
    if ((v26 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  objc_msgSend_setControlCellSpecID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x800) == 0)
  {
LABEL_15:
    if ((v26 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  objc_msgSend_setFormulaSyntaxErrorID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x1000) == 0)
  {
LABEL_16:
    if ((v26 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  objc_msgSend_suggestCellFormatKind_(v3, v22, *(a1 + v27 + 12), v24, v25);
  v27 += 4;
  if ((v26 & 0x2000) == 0)
  {
LABEL_17:
    if ((v26 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  objc_msgSend_setNumberFormatID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  LOWORD(v27) = v27 + 4;
  if ((v26 & 0x4000) == 0)
  {
LABEL_18:
    if ((v26 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  objc_msgSend_setCurrencyFormatID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  LOWORD(v27) = v27 + 4;
  if ((v26 & 0x8000) == 0)
  {
LABEL_19:
    if ((v26 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  objc_msgSend_setDateFormatID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  LOWORD(v27) = v27 + 4;
  if ((v26 & 0x10000) == 0)
  {
LABEL_20:
    if ((v26 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  objc_msgSend_setDurationFormatID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  LOWORD(v27) = v27 + 4;
  if ((v26 & 0x20000) == 0)
  {
LABEL_21:
    if ((v26 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  objc_msgSend_setTextFormatID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  LOWORD(v27) = v27 + 4;
  if ((v26 & 0x40000) == 0)
  {
LABEL_22:
    if ((v26 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  objc_msgSend_setBooleanFormatID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  LOWORD(v27) = v27 + 4;
  if ((v26 & 0x80000) == 0)
  {
LABEL_23:
    if ((v26 & 0x100000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_51:
  objc_msgSend_setCommentStorageID_(v3, v22, *(a1 + v27 + 12), v24, v25);
  LOWORD(v27) = v27 + 4;
  if ((v26 & 0x100000) != 0)
  {
LABEL_52:
    objc_msgSend_setImportWarningSetID_(v3, v22, *(a1 + v27 + 12), v24, v25);
    LOWORD(v27) = v27 + 4;
  }

LABEL_53:
  v34 = sub_221143678(a1, v22, v23, v24, v25);
  if (v34)
  {
    v34 = *(a1 + 8);
  }

  if (v27 + 12 != sub_2211437F4(v34))
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "void TSTCellStorageToCell(TSTCellStorage *, TSTCell *__strong)", v36, v37);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v41, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 823, 0, "Size miscalculation!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

LABEL_57:
}

uint64_t sub_221144DAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return -1;
  }

  sub_221143678(a1, a2, a3, a4, a5);
  v7 = *(a1 + 8);
  if ((v7 & a2) == 0)
  {
    return -1;
  }

  if (v7)
  {
    if (a2 == 1)
    {
      return 0;
    }

    v8 = 16;
    if ((v7 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    if ((v7 & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  if (a2 == 2)
  {
    return v8;
  }

  v8 |= 8u;
  if ((v7 & 4) == 0)
  {
LABEL_6:
    if ((v7 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_20:
  if (a2 == 4)
  {
    return v8;
  }

  v8 += 8;
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_22:
  if (a2 == 8)
  {
    return v8;
  }

  v8 += 4;
  if ((v7 & 0x10) == 0)
  {
LABEL_8:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_24:
  if (a2 == 16)
  {
    return v8;
  }

  v8 += 4;
  if ((v7 & 0x20) == 0)
  {
LABEL_9:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (a2 == 32)
  {
    return v8;
  }

  v8 += 4;
  if ((v7 & 0x40) == 0)
  {
LABEL_10:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_30:
    if (a2 == 128)
    {
      return v8;
    }

    v8 += 4;
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_28:
  if (a2 == 64)
  {
    return v8;
  }

  v8 += 4;
  if ((v7 & 0x80) != 0)
  {
    goto LABEL_30;
  }

LABEL_11:
  if ((v7 & 0x100) != 0)
  {
LABEL_32:
    if (a2 == 256)
    {
      return v8;
    }

    v8 += 4;
  }

LABEL_34:
  if ((v7 & 0x200) != 0)
  {
    if (a2 == 512)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x400) != 0)
  {
    if (a2 == 1024)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x800) != 0)
  {
    if (a2 == 2048)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x1000) != 0)
  {
    if (a2 == 4096)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x2000) != 0)
  {
    if (a2 == 0x2000)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x4000) != 0)
  {
    if (a2 == 0x4000)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x8000) != 0)
  {
    if (a2 == 0x8000)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x10000) != 0)
  {
    if (a2 == 0x10000)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x20000) != 0)
  {
    if (a2 == 0x20000)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x40000) != 0)
  {
    if (a2 == 0x40000)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x80000) != 0)
  {
    if (a2 == 0x80000)
    {
      return v8;
    }

    v8 += 4;
  }

  if ((v7 & 0x100000) == 0)
  {
    goto LABEL_70;
  }

  if (a2 != 0x100000)
  {
    v8 += 4;
LABEL_70:
    TSUSetCrashReporterInfo();
    v10 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "UInt16 p_OffsetForElementInStorage(TSTCellStorage *, TSTCellStorageFieldFlags)", v12, v13, "UInt16 p_OffsetForElementInStorage(TSTCellStorage *, TSTCellStorageFieldFlags)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", 1002, a2, v8);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.mm", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v19, v14, v18, 1002, 1, "Can't get offset for unknown element 0x%02x, offset:%hu!", a2, v8);

    TSUCrashBreakpoint();
    abort();
  }

  return v8;
}

unsigned __int8 *sub_22114503C(unsigned __int8 *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = a2;
    v6 = result;
    sub_221143678(result, a2, a3, a4, a5);
    return ((*(v6 + 2) & v5) != 0);
  }

  return result;
}

uint64_t sub_221145078(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_221144DAC(a1, a2, a3, a4, a5);
  if (v6 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + v6 + 12);
  }
}

double sub_2211450B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_221144DAC(a1, a2, a3, a4, a5);
  if (v6 == 0xFFFF)
  {
    return 0.0;
  }

  else
  {
    return *(a1 + v6 + 12);
  }
}

unint64_t sub_2211450F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_221144DAC(a1, a2, a3, a4, a5) == 0xFFFF)
  {
    TSUDecimal::operator=();
  }

  else
  {
    TSUDecimal::TSUDecimal(&v6);
  }

  return v6._decimal.w[0];
}

void sub_221145810(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t TSCERelativeCellCoordinate::offsetBy(TSCERelativeCellCoordinate *this, int a2, int a3, int a4, int a5)
{
  column = this->_column;
  if (a2)
  {
    v6 = column == 0x7FFF;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  row = this->_row;
  if (a3)
  {
    v9 = row == 0x7FFFFFFF;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = -32766 - a2 > column;
  if (a2 >= 0)
  {
    v11 = 0;
  }

  if (a2 >= 1)
  {
    v11 = 32766 - a2 < column;
  }

  v12 = !v11;
  if (v7)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if (a4)
  {
    v13 = 1;
  }

  v14 = a5 | v10;
  v15 = -2147483646 - a3 > row;
  if (a3 >= 0)
  {
    v15 = 0;
  }

  if (a3 >= 1)
  {
    v15 = 2147483646 - a3 < row;
  }

  v16 = !v15;
  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 & v17;
  if (v18 == 1)
  {
    if (column == 0x7FFF)
    {
      v19 = 1;
    }

    else
    {
      v19 = a4;
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = a2;
    }

    this->_column = v20 + column;
    if (row == 0x7FFFFFFF)
    {
      v21 = 1;
    }

    else
    {
      v21 = a5;
    }

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = a3;
    }

    this->_row = v22 + row;
  }

  return v18;
}

TSCERelativeCellCoordinate *TSCERelativeCellCoordinate::setPreserveFlags(TSCERelativeCellCoordinate *this, const TSUPreserveFlags *a2)
{
  flags = a2->_flags;
  this->_preserveColumn = a2->_flags & 1;
  this->_preserveRow = (flags & 2) != 0;
  return this;
}

unint64_t TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(TSCERelativeCellCoordinate *this, TSUCellCoord a2, TSUCellCoord a3, const TSUPreserveFlags *a4)
{
  if ((*&a2 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    v4 = *a3.row;
    v5 = 0x7FFF;
    v6 = 0x7FFFFFFFLL;
  }

  else
  {
    v4 = *a3.row;
    v7 = this >> 32;
    if (v4)
    {
      LOWORD(v7) = 0;
    }

    v8 = a2.column - v7;
    if (a2.column == 0x7FFF)
    {
      v5 = 0x7FFF;
    }

    else
    {
      v5 = v8;
    }

    v6 = 0x7FFFFFFFLL;
    if ((v4 & 2) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = this;
    }

    v10 = a2.row - v9;
    if (a2.row != 0x7FFFFFFF)
    {
      v6 = v10;
    }
  }

  return ((v4 & 1) << 56) | (((v4 >> 1) & 1) << 48) | (v5 << 32) | v6;
}

unint64_t TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(TSUCellCoord a1, const char *a2, const TSUPreserveFlags *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0x7FFF7FFFFFFFLL;
  if ((a2 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    flags = a3->_flags;
    if ((HIBYTE(a2) & 1) != (a3->_flags & 1))
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellCoord TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(TSUCellCoord, TSCERelativeCellCoordinate, const TSUPreserveFlags &)", a4, a5);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 119, 0, "Wrong sticky setting");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
      flags = a3->_flags;
    }

    if (((a2 >> 48) & 1) != (flags & 2) >> 1)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellCoord TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(TSUCellCoord, TSCERelativeCellCoordinate, const TSUPreserveFlags &)", a4, a5);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 120, 0, "Wrong sticky setting");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
    }

    v32 = WORD2(a2) + a1.column;
    if (WORD2(a2) == 0x7FFF)
    {
      v32 = 0x7FFF;
    }

    if ((a2 & 0x100000000000000) != 0)
    {
      v32 = WORD2(a2);
    }

    LODWORD(v33) = a2 + a1.row;
    if (a2 == 0x7FFFFFFF)
    {
      LODWORD(v33) = 0x7FFFFFFF;
    }

    if ((a2 & 0x1000000000000) != 0)
    {
      LODWORD(v33) = a2;
    }

    if (v33 < 0)
    {
      v33 = 0x7FFFFFFFLL;
    }

    else
    {
      v33 = v33;
    }

    if (v32 < 0)
    {
      v32 = 0x7FFF;
    }

    v34 = v33 != 0x7FFFFFFF || a2 == 0x7FFFFFFF;
    v35 = v32 != 0x7FFF || WORD2(a2) == 0x7FFF;
    if (v35 && v34)
    {
      return v33 | (v32 << 32);
    }
  }

  return v5;
}

__n128 TSCERelativeCellRef::cellRefForHostCoord@<Q0>(TSCERelativeCellRef *this@<X0>, const TSUCellCoord *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if ((*(this + 24) & 4) != 0)
  {
    if ((*(this + 24) & 8) == 0)
    {
      LODWORD(v11) = this->relativeCoord._column;
      if (*(this + 24))
      {
LABEL_6:
        v12 = 0;
LABEL_10:
        LODWORD(row) = 0x7FFFFFFF;
        goto LABEL_32;
      }

      if (v11 != 0x7FFF)
      {
        v14 = *a2;
        if (v11 < 1)
        {
          if ((v11 & 0x80000000) != 0 && -v11 > WORD2(v14))
          {
            goto LABEL_30;
          }
        }

        else if (999 - v11 < WORD2(v14))
        {
          goto LABEL_30;
        }

        LOWORD(v11) = v11 + WORD2(v14);
        if (v11 >= 0x7FFFu)
        {
          v15 = MEMORY[0x277D81150];
          v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", a3, a4);
          v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v18, v19);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 168, 0, "overflow in column");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
        }

        goto LABEL_6;
      }
    }

LABEL_30:
    v12 = 0;
    LODWORD(row) = 0x7FFFFFFF;
    goto LABEL_31;
  }

  v7 = *a2;
  if ((*(this + 24) & 8) != 0)
  {
    row = this->relativeCoord._row;
    if ((*(this + 24) & 2) != 0)
    {
      v12 = 0;
LABEL_31:
      LOWORD(v11) = 0x7FFF;
      goto LABEL_32;
    }

    if (row == 0x7FFFFFFF)
    {
      v12 = 0;
      LOWORD(v11) = 0x7FFF;
      goto LABEL_10;
    }

    if (row < 1)
    {
      if (row && v7.row < -row)
      {
        goto LABEL_30;
      }
    }

    else if ((999999 - row) < v7.row)
    {
      goto LABEL_30;
    }

    if (v7.row == 0x7FFFFFFF)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a3, a4);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v29, v30);
      v32 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v27, v31, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v32);
    }

    else
    {
      if ((row + v7.row) < 0x7FFFFFFF)
      {
        v12 = 0;
        LOWORD(v11) = 0x7FFF;
        LODWORD(row) = row + v7.row;
        goto LABEL_32;
      }

      v34 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a3, a4);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v36, v37);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v27, v31, 191, 0, "overflow in row, input row: %d with host row: %lu", row, v7.row);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
    goto LABEL_30;
  }

  relativeCoord = this->relativeCoord;
  v44._flags = *(this + 24) & 3;
  v9 = v7;
  v10 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v9, relativeCoord, &v44, a3, a4);
  v11 = HIDWORD(v10);
  v12 = v10 & 0xFFFF000000000000;
  LODWORD(row) = v10;
LABEL_32:
  *a5 = v12 | (v11 << 32) | row;
  result = this->tableUID;
  *(a5 + 8) = result;
  return result;
}

__CFString *TSCERelativeCellRef::description(TSCERelativeCellRef *this)
{
  v2 = *(this + 24);
  if ((v2 & 4) == 0)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = TSKUIDStruct::description(&this->tableUID);
    v8 = v4;
    if ((v2 & 8) != 0)
    {
      if ((*(this + 24) & 2) != 0)
      {
        objc_msgSend_stringWithFormat_(v3, v5, @"%@::(_,%@%d)", v6, v7, v4, @"$", this->relativeCoord._row);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v3, v5, @"%@::(_,%@%d)", v6, v7, v4, &stru_2834BADA0, this->relativeCoord._row);
      }
    }

    else
    {
      if (*(this + 24))
      {
        v9 = @"$";
      }

      else
      {
        v9 = &stru_2834BADA0;
      }

      column = this->relativeCoord._column;
      if ((*(this + 24) & 2) != 0)
      {
        objc_msgSend_stringWithFormat_(v3, v5, @"%@::(%@%d,%@%d)", v6, v7, v4, v9, column, @"$", this->relativeCoord._row);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v3, v5, @"%@::(%@%d,%@%d)", v6, v7, v4, v9, column, &stru_2834BADA0, this->relativeCoord._row);
      }
    }

    goto LABEL_16;
  }

  if ((*(this + 24) & 8) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = TSKUIDStruct::description(&this->tableUID);
    v8 = v12;
    if (*(this + 24))
    {
      objc_msgSend_stringWithFormat_(v11, v13, @"%@::(%@%d,_)", v14, v15, v12, @"$", this->relativeCoord._column);
    }

    else
    {
      objc_msgSend_stringWithFormat_(v11, v13, @"%@::(%@%d,_)", v14, v15, v12, &stru_2834BADA0, this->relativeCoord._column);
    }

    v16 = LABEL_16:;

    goto LABEL_18;
  }

  v16 = @"#REF!";
LABEL_18:

  return v16;
}

void sub_22114801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221148044(__n128 *a1, __n128 *a2)
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

void sub_221148068(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221148080(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v24 = v3;
  v9 = objc_msgSend_groupingColumnUid(v3, v5, v6, v7, v8);
  v11 = v10;
  v13 = v4[7];
  v12 = v4[8];
  if (v13 >= v12)
  {
    v15 = v4[6];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 4;
    v18 = v17 + 1;
    if ((v17 + 1) >> 60)
    {
      sub_22107C148();
    }

    v19 = v12 - v15;
    if (v19 >> 3 > v18)
    {
      v18 = v19 >> 3;
    }

    v20 = v19 >= 0x7FFFFFFFFFFFFFF0;
    v21 = 0xFFFFFFFFFFFFFFFLL;
    if (!v20)
    {
      v21 = v18;
    }

    if (v21)
    {
      sub_221086F74((v4 + 6), v21);
    }

    v22 = (16 * v17);
    *v22 = v9;
    v22[1] = v11;
    v14 = 16 * v17 + 16;
    memcpy(0, v15, v16);
    v23 = v4[6];
    v4[6] = 0;
    v4[7] = v14;
    v4[8] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v13 = v9;
    v13[1] = v10;
    v14 = (v13 + 2);
  }

  v4[7] = v14;
}

uint64_t *sub_22114847C(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v20._lower = a3;
  v20._upper = a4;
  v19._lower = a5;
  v19._upper = a6;
  v18._lower = a7;
  v18._upper = a8;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v10 = TSKUIDStruct::CFUUIDBytes(&v20);
  *a1 = v10 ^ v11;
  a1[1] = a2;
  v12 = TSKUIDStruct::CFUUIDBytes(&v19);
  v14 = v13;
  v15 = TSKUIDStruct::CFUUIDBytes(&v18);
  a1[2] = (((v15 + v16) >> 32) + v15 + v16) | (v12 ^ v14) & 0xFFFFFFFF00000000 ^ ((v12 ^ v14) << 32);
  return a1;
}

void TSCERandGenerator::TSCERandGenerator(TSCERandGenerator *this, uint64_t a2, const TSKUIDStruct *a3, const TSKUIDStruct *a4, const TSKUIDStruct *a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = sub_22114847C(this, a2, a3->_lower, a3->_upper, a4->_lower, a4->_upper, a5->_lower, a5->_upper);
  v6 = *v5;
  v7 = v5[2];
  sub_2212CBD1C((v5 + 3), &v6, 0x18u);
}

uint64_t TSCERandGenerator::setNewDocumentSeed(TSCERandGenerator *this, unint64_t a2)
{
  v3[3] = *MEMORY[0x277D85DE8];
  this->var0.var1 = a2;
  v3[0] = this->var0.var0;
  v3[1] = a2;
  v3[2] = this->var0.var2;
  return sub_2212CBD1C(&this->var1, v3, 0x18u);
}

void TSCERandGenerator::randomDouble(TSCERandGenerator *this)
{
    ;
  }
}

void TSCERandGenerator::randWithMinMax(TSCERandGenerator *this, double a2, double a3)
{
  if (a2 <= a3)
  {
    TSCERandGenerator::randomDouble(this);
  }
}

uint64_t TSCERandGenerator::randomUid(TSCERandGenerator *this)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_2212CBDCC(&this->var1.var0, v2, 0x10u);
  return v2[0];
}

id sub_221148718()
{
  v0 = TSUDefaultDateOnlyMediumFormat();
  v1 = objc_alloc(MEMORY[0x277D80658]);
  v5 = objc_msgSend_initWithFormatString_(v1, v2, v0, v3, v4);

  return v5;
}

id sub_221148774()
{
  v0 = TSUDefaultTimeOnlyShortFormat();
  v1 = objc_alloc(MEMORY[0x277D80658]);
  v5 = objc_msgSend_initWithFormatString_(v1, v2, v0, v3, v4);

  return v5;
}

uint64_t sub_2211487D0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MEMORY[0x277D811A0];
  v7 = objc_msgSend_formatString(a1, a2, a3, a4, a5);
  v11 = objc_msgSend_datePortionOfDateTimeFormatString_(v6, v8, v7, v9, v10);

  v16 = objc_msgSend_formatString(a1, v12, v13, v14, v15);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v17, v16, v18, v19);

  return isEqualToString;
}

BOOL sub_221148850(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_formatString(a1, a2, a3, a4, a5);
  v9 = objc_msgSend_rangeOfString_(v5, v6, @"a", v7, v8);

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

void sub_22114EED8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22114F320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v20 = *(v18 - 128);
  if (v20)
  {
    *(v18 - 120) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22114F414(uint64_t a1, const TSCEFormat *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_22114F468(a1, a2);
  }

  else
  {
    TSCEFormat::TSCEFormat(*(a1 + 8), a2);
    result = v3 + 32;
    *(a1 + 8) = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22114F468(uint64_t a1, const TSCEFormat *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_22107C148();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_22114F634(a1, v7);
  }

  __p = 0;
  v11 = 32 * v2;
  v13 = 0;
  TSCEFormat::TSCEFormat((32 * v2), a2);
  v12 = 32 * v2 + 32;
  sub_22114F594(a1, &__p);
  v8 = *(a1 + 8);
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 31) & 0xFFFFFFFFFFFFFFE0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_22114F55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

TSCEFormat *sub_22114F594(TSCEFormat *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  tskFormat = result->_tskFormat;
  v6 = *&result->_formatType;
  v7 = (v4 + result->_tskFormat - v6);
  if (v6 != result->_tskFormat)
  {
    result = (v4 + result->_tskFormat - v6);
    do
    {
      v8 = TSCEFormat::TSCEFormat(result, tskFormat++);
      result = v8 + 1;
    }

    while (tskFormat != v6);
    tskFormat = v3->_tskFormat;
  }

  a2[1] = v7;
  v3->_tskFormat = v7;
  *&v3->_formatType = tskFormat;
  a2[1] = tskFormat;
  v9 = *&v3->_formatType;
  *&v3->_formatType = a2[2];
  a2[2] = v9;
  v10 = *&v3->_durationFormat;
  *&v3->_durationFormat = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void sub_22114F634(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

TSCEASTStreamIterator *sub_22114F67C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v5 = &unk_2834A2160;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  v6 = a3->var1;
  v11 = v6;
  if (v6 && *(objc_msgSend_tableUIDMap(v6, v7, v8, v9, v10) + 24))
  {
    *(a1 + 17) = objc_msgSend_tableUIDMap(v11, v12, v13, v14, v15);
  }

  TSCEFormulaRewriteContext::setRestoreBadRefs(a3, 1);

  return a1;
}

TSCEASTRelativeCoordRefElement *sub_22114F72C(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v7 = TSCEASTElement::refFlags(a2, a1);
  if (v7)
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5, v6);
    upper = v11;
  }

  else
  {
    v8 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v8->var0.var0._tableUID._lower;
    upper = v8->var0.var0._tableUID._upper;
  }

  v78._lower = lower;
  v78._upper = upper;
  v77._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v76 = coordinate;
  if (v7)
  {
    v13 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (lower == v13->var0.var0._tableUID._lower && upper == v13->var0.var0._tableUID._upper)
    {
      v22 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v14, v15, v16);
      v23 = coordinate;
      v75 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v23, v22, &v77, v24, v25);
      v26 = (*(*a2 + 96))(a2, a1);
      TSCEASTIteratorBase::createLocalReference(a1, &v75, &v77, &v76, v26);
    }

    v18 = *(a1 + 136);
    if (v18)
    {
      v19 = sub_221119F90(v18, &v78);
      if (v19)
      {
        v78 = v19[2];
        TSCEASTRelativeCoordRefElement::setTableUID(a2, &v78, a1, v20, v21);
      }
    }
  }

  if (TSCEASTElement::hasUidTracts(a2, a1))
  {
    v27 = sub_221089E8C(a1);
    v31 = v27;
    if (!v27)
    {
      goto LABEL_36;
    }

    v32 = objc_msgSend_tableOrLinkedResolverForTableUID_(v27, v28, &v78, v29, v30);
    if (!v32)
    {
      goto LABEL_36;
    }

    (*(*a2 + 136))(&v75, a2, a1, &v76);
    v36 = TSCEASTElement::refFlags(a2, a1) & 0xC;
    if (v36 == 4)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v38 = objc_msgSend_columnUIDForColumnIndex_(v32, v33, v75.column, v34, v35);
      v39 = v33;
      v37 = (v38 | v33) == 0;
      if (v36 == 8)
      {
        if (v38 | v33)
        {
          v40 = 0;
          v41 = 0;
LABEL_25:
          v44 = TSCEASTElement::mutableUndoTractList(a2, a1);
          v45 = [TSCEUndoTract alloc];
          v47 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v45, v46, v38, v39, v40, v41, 4);
          objc_msgSend_appendUidTract_(v44, v48, v47, v49, v50);
          v51 = TSCEASTElement::refFlags(a2, a1);
          v77._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
          v53 = objc_msgSend_cellTractRefWithUidTractList_onTable_preserveFlags_rewriteContext_(TSCECellTractRef, v52, v44, &v78, v77._flags, *(a1 + 8));
          v58 = v53;
          if (v53)
          {
            if (objc_msgSend_isSingleCellOrSpanningRange(v53, v54, v55, v56, v57))
            {
              isRangeRef = TSCEFormulaRewriteContext::isRangeRef(*(a1 + 8));
            }

            else
            {
              isRangeRef = 1;
            }

            if (*(a1 + 144) == 1)
            {

              v44 = 0;
            }

            if (isRangeRef)
            {
              flags = v77._flags;
              objc_msgSend_setPreserveFlags_(v58, v59, v77._flags & 0xF, v61, v62);
              v65 = [TSCERelativeTractRef alloc];
              v68 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v65, v66, v58, &v76, v67);
              *&v74.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
              v69._flags = v51;
              v70 = v51 & 0xC0 | (16 * ((flags >> 2) & 3)) | 2;
              TSCEASTIteratorBase::createColonTractRef(a1, v69, v70, v68, v44, &v74);
            }

            v74.coordinate = objc_msgSend_topLeft(v58, v59, v60, v61, v62);
            v74._tableUID = v78;
            tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
            v71._flags = v51;
            TSCEASTIteratorBase::createReference(a1, &v74, v71, &tableUID, &v76, v44);
          }
        }

LABEL_35:

LABEL_36:
        return a2;
      }
    }

    v40 = objc_msgSend_rowUIDForRowIndex_(v32, v33, v75.row, v34, v35);
    v41 = v42;
    if (v40 | v42)
    {
      v43 = v37;
    }

    else
    {
      v43 = 1;
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  return a2;
}

TSCEASTColonTractElement *sub_22114FBA4(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  v12 = v7;
  if (v7)
  {
    if (objc_msgSend_hasTableUID(v7, v8, v9, v10, v11))
    {
      if (a1[17])
      {
        __p = objc_msgSend_tableUID(v12, v13, v14, v15, v16);
        __dst = v17;
        v18 = sub_221119F90(a1[17], &__p);
        if (v18)
        {
          objc_msgSend_setTableUID_(v12, v19, v18[4], v18[5], v20);
          TSCEASTColonTractElement::setRelativeTractRef(this, v12, 0, a1, 1);
        }
      }
    }
  }

  v21 = TSCEASTElement::mutableUndoTractList(this, a1);
  __p = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  v25 = objc_msgSend_absoluteCellTractRefForHostCell_(v12, v22, &__p, v23, v24);
  v198 = 0;
  if (objc_msgSend_hasTableUID(v12, v26, v27, v28, v29))
  {
    v198._lower = objc_msgSend_tableUID(v12, v30, v31, v32, v33);
  }

  else
  {
    v35 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    upper = v35->var0.var0._tableUID._upper;
    v198._lower = v35->var0.var0._tableUID._lower;
  }

  v198._upper = upper;
  v36 = sub_221089E8C(a1);
  v40 = v36;
  if (v36)
  {
    v45 = objc_msgSend_tableOrLinkedResolverForTableUID_(v36, v37, &v198, v38, v39);
    if (v45 && v25)
    {
      v182 = v21;
      v184 = objc_msgSend_spansAllRows(v25, v41, v42, v43, v44);
      v186 = objc_msgSend_spansAllColumns(v25, v46, v47, v48, v49);
      if ((v186 & v184) == 1)
      {
        v53 = MEMORY[0x277D81150];
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "virtual TSCEASTElement *TSCEASTRepairBadRefsRewriter::colonTractNode(TSCEASTColonTractElement *)", v51, v52);
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRepairBadRefsRewriter.mm", v56, v57);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v59, v54, v58, 154, 0, "Can't have a reference spanning both columns and rows");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62, v63);
      }

      __p = 0;
      __dst = 0;
      v197 = 0;
      v192 = 0;
      v193 = 0;
      v194 = 0;
      if (TSCEFormulaRewriteContext::tableSizeGrowing(a1[1]))
      {
        v183 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v64, v65, v66, v67);
        v188 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v68, v69, v70, v71);
      }

      else
      {
        v188 = 0;
        v183 = 0;
      }

      if (v186)
      {
        operator new();
      }

      v72 = objc_msgSend_columns(v25, v64, v65, v66, v67);
      v73 = TSUIndexSet::asNSIndexSet(v72);
      objc_msgSend_columnUIDsForColumnIndexes_(v45, v74, v73, v75, v76);
      if (v183)
      {
        v82 = __p;
        v81 = __dst;
        if (objc_msgSend_count(v73, v77, v78, v79, v80) > ((v81 - v82) >> 4))
        {
          v87 = objc_msgSend_mutableCopy(v73, v83, v84, v85, v86);
          v91 = objc_msgSend_mutableColumnIndexesForUIDs_(v45, v88, &v191, v89, v90);
          objc_msgSend_removeIndexes_(v87, v92, v91, v93, v94);
          objc_msgSend_addIndexes_(v183, v95, v87, v96, v97);
        }
      }

      sub_2210F0C88(&__p, __dst, *&v191.coordinate, v191._tableUID._lower, (v191._tableUID._lower - *&v191.coordinate) >> 4);
      if (v191.coordinate)
      {
        v191._tableUID._lower = v191.coordinate;
        operator delete(*&v191.coordinate);
      }

      if (v184)
      {
        operator new();
      }

      v102 = objc_msgSend_rows(v25, v98, v99, v100, v101);
      v103 = TSUIndexSet::asNSIndexSet(v102);
      objc_msgSend_rowUIDsForRowIndexes_(v45, v104, v103, v105, v106);
      if (v188)
      {
        coordinate = v191.coordinate;
        lower = v191._tableUID._lower;
        if (objc_msgSend_count(v103, v107, v108, v109, v110) > ((lower - *&coordinate) >> 4))
        {
          v117 = objc_msgSend_mutableCopy(v103, v113, v114, v115, v116);
          v121 = objc_msgSend_mutableRowIndexesForUIDs_(v45, v118, &v191, v119, v120);
          objc_msgSend_removeIndexes_(v117, v122, v121, v123, v124);
          objc_msgSend_addIndexes_(v188, v125, v117, v126, v127);
        }
      }

      sub_2210F0C88(&v192, v193, *&v191.coordinate, v191._tableUID._lower, (v191._tableUID._lower - *&v191.coordinate) >> 4);
      if (v191.coordinate)
      {
        v191._tableUID._lower = v191.coordinate;
        operator delete(*&v191.coordinate);
      }

      v21 = v182;
      if (!objc_msgSend_count(v188, v128, v129, v130, v131) && !objc_msgSend_count(v183, v132, v133, v134, v135) && v193 != v192 && __dst != __p)
      {
        v136 = [TSCEUndoTract alloc];
        v138 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v136, v137, &__p, &v192, 4);
        objc_msgSend_setIsRangeRef_(v138, v139, 1, v140, v141);
        isRectangularRange = objc_msgSend_isRectangularRange(v25, v142, v143, v144, v145);
        objc_msgSend_setPreserveRectangularRange_(v138, v147, isRectangularRange, v148, v149);
        objc_msgSend_appendUidTract_(v182, v150, v138, v151, v152);
        v153 = TSCEASTElement::refFlags(this, a1);
        v21 = v182;
        v185 = TSCEASTColonTractElement::colonTractFlags(this, a1, v154, v155, v156);
        v187 = v153;
        v161 = objc_msgSend_preserveFlags(v12, v157, v158, v159, v160);
        v163 = objc_msgSend_cellTractRefWithUidTractList_onTable_preserveFlags_rewriteContext_(TSCECellTractRef, v162, v182, &v198, v161, a1[1]);
        v168 = v163;
        if (v163)
        {
          if (objc_msgSend_isSingleCellOrSpanningRange(v163, v164, v165, v166, v167))
          {
            isRangeRef = TSCEFormulaRewriteContext::isRangeRef(a1[1]);
          }

          else
          {
            isRangeRef = 1;
          }

          if (*(a1 + 144) == 1)
          {

            v182 = 0;
          }

          if (isRangeRef)
          {
            objc_msgSend_setPreserveFlags_(v168, v169, v161 & 0xF, v171, v172);
            v174 = [TSCERelativeTractRef alloc];
            v191.coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
            v177 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v174, v175, v168, &v191, v176);
            *&v191.coordinate.row = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
            v178._flags = v187;
            v179._flags = v185;
            TSCEASTIteratorBase::createColonTractRef(a1, v178, v179, v177, v182, &v191);
          }

          v191.coordinate = objc_msgSend_topLeft(v168, v169, v170, v171, v172);
          v191._tableUID = v198;
          tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
          v189 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
          v180._flags = v187;
          TSCEASTIteratorBase::createReference(a1, &v191, v180, &tableUID, &v189, v182);
        }
      }

      if (v192)
      {
        v193 = v192;
        operator delete(v192);
      }

      if (__p)
      {
        __dst = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    v45 = 0;
  }

  return this;
}

void sub_221150250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2211503D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) == 1 && TSCEASTElement::hasUidTracts(a2, a1))
  {

    TSCEASTIteratorBase::createTagOnlyOp(a1, 0x1C, v4, v5, v6);
  }

  return a2;
}

uint64_t sub_221150438(uint64_t a1, uint64_t a2)
{
  v9[0] = (*(*a2 + 136))(a2, a1);
  v9[1] = v4;
  v5 = *(a1 + 136);
  if (v5)
  {
    v6 = sub_221119F90(v5, v9);
    if (v6)
    {
      v8 = *(v6 + 2);
      (*(*a2 + 144))(a2, &v8, a1);
    }
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_2211504E4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  tableUID._lower = 0;
  tableUID._upper = 0;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    tableUID._lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v4, v5, v6);
    tableUID._upper = v7;
    v8 = *(a1 + 136);
    if (v8)
    {
      v9 = sub_221119F90(v8, &tableUID);
      if (v9)
      {
        tableUID = v9[2];
        TSCEASTRelativeCoordRefElement::setTableUID(v2, &tableUID, a1, v10, v11);
        hasUidTracts = TSCEASTElement::hasUidTracts(v2, a1);
        goto LABEL_8;
      }
    }
  }

  else
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  if (!TSCEASTElement::hasUidTracts(v2, a1))
  {
    return v2;
  }

  hasUidTracts = 1;
LABEL_8:
  v13 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  if (*&v13->var0.var0.coordinate == 0x7FFFFFFF || (*&v13->var0.var0.coordinate & 0xFFFF00000000) == 0x7FFF00000000)
  {
    if (*(a1 + 144) & hasUidTracts)
    {
      TSCEASTIteratorBase::createReferenceError(a1, v14, v15, v16, v17);
    }
  }

  else
  {
    v19 = (*(*v2 + 16))(v2);
    v22 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    return TSCEASTIteratorBase::convertReferenceErrorToRef(a1, v19, &v22, &coordinate, 0);
  }

  return v2;
}

void sub_22115064C(uint64_t a1, TSCEASTUidReferenceElement *a2)
{
  v46.var0 = 0;
  v46.var1 = 0;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    v46.var0 = TSCEASTUidReferenceElement::tableUID(a2, a1, v4, v5, v6);
    v46.var1 = v7;
    v8 = *(a1 + 136);
    if (v8)
    {
      v9 = sub_221119F90(v8, &v46);
      if (v9)
      {
        *&v46.var0 = *(v9 + 2);
        TSCEASTUidReferenceElement::setTableUID(a2, &v46, a1, v10, v11);
      }
    }
  }

  else
  {
    *&v46.var0 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  v12 = TSCEASTElement::mutableUndoTractList(a2, a1);
  v16 = TSCEASTUidReferenceElement::preserveFlags(a2, a1, v13, v14, v15);
  v45._flags = v16;
  v18 = objc_msgSend_cellTractRefWithUidTractList_onTable_preserveFlags_rewriteContext_(TSCECellTractRef, v17, v12, &v46, v16, *(a1 + 8));
  v23 = v18;
  if (v18)
  {
    if (objc_msgSend_isSingleCellOrSpanningRange(v18, v19, v20, v21, v22))
    {
      isRangeRef = TSCEFormulaRewriteContext::isRangeRef(*(a1 + 8));
    }

    else
    {
      isRangeRef = 1;
    }

    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    v25 = TSCEASTElement::refFlags(a2, a1);
    v29 = TSCEASTUidReferenceElement::colonTractFlags(a2, a1, v26, v27, v28);
    if (isRangeRef)
    {
      v34 = v29;
      objc_msgSend_setPreserveFlags_(v23, v30, v16 & 0xF, v32, v33);
      v35 = [TSCERelativeTractRef alloc];
      v38 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v35, v36, v23, &coordinate, v37);
      *&v43.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      v39._flags = v25;
      v40._flags = v34;
      TSCEASTIteratorBase::createColonTractRef(a1, v39, v40, v38, v12, &v43);
    }

    v43.coordinate = objc_msgSend_topLeft(v23, v30, v31, v32, v33);
    v43._tableUID = *&v46.var0;
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
    v41._flags = v25;
    TSCEASTIteratorBase::createReference(a1, &v43, v41, &tableUID, &coordinate, v12);
  }

  TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v12, &v46, &v45);
}

TSCEASTCategoryRefElement *sub_2211508AC(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *a2)
{
  if (*(a1 + 17))
  {
    v15[0] = (*(*a2 + 136))(a2, a1);
    v15[1] = v4;
    v5 = sub_221119F90(*(a1 + 17), v15);
    if (v5)
    {
      v9 = v5[4];
      v10 = v5[5];
      v11 = TSCEASTCategoryRefElement::mutableCategoryRef(a2, a1, v6, v7, v8);
      objc_msgSend_setGroupByUid_(v11, v12, v9, v10, v13);
      TSCEASTCategoryRefElement::setCategoryRef(a2, v11, a1);
    }
  }

  return a2;
}

void sub_221150980(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_221151CB8(void *a1, unint64_t a2, id *a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 8 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 8);
        v4 -= 8;
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    sub_221159600(a1, v6, a3);
  }
}

void sub_2211527B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 + 205;
  v16 = objc_msgSend_groupingColumnsForOwnerIndex_(*(a1 + 32), a2, (a2 + 205), a4, a5);
  v9 = objc_msgSend_registerGroupByForColumns_ownerIndex_hiddenStates_groupBySet_(*(a1 + 40), v8, v16, v7, *(*(a1 + 32) + 40));
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 8 * a2);
  *(v10 + 8 * a2) = v9;
  v12 = v9;

  objc_msgSend_setAggregates_(v12, v13, *(*(a1 + 32) + 448), v14, v15);
}

void sub_221153170(_Unwind_Exception *a1)
{
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_2211531C0(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_22107C148();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2210874C4(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
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

void sub_2211539C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, TSUIndexSet *a12, void *__p, uint64_t a14, uint64_t a15, void *__pa)
{
  if (__pa)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_221153A98(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 16))
  {
    result = sub_22115A08C(a1);
  }

  else
  {
    sub_22115A034(a1);
    result = v2 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2211543D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = a3;
  if (*(result + 40) >= 2u)
  {
    v5 = result;
    v6 = 1;
    do
    {
      v7 = sub_2211A8E7C(&v10, v6, a3, a4, a5);
      result = objc_msgSend_addUUID_(*(v5 + 32), v8, v7, v8, v9, v10, v11);
      ++v6;
    }

    while (v6 < *(v5 + 40));
  }

  return result;
}

void sub_221156CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSUIndexSet::~TSUIndexSet(&a9);

  TSUIndexSet::~TSUIndexSet(v10);
  _Unwind_Resume(a1);
}

void sub_221156FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22115767C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2211576E4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_22115A320(a1, a2 - v2);
  }
}

void sub_221157A18(_Unwind_Exception *a1, TSUIndexSet *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  TSUIndexSet::~TSUIndexSet(&a10);
  sub_221087B80(va);
  v19 = *(v17 - 112);
  if (v19)
  {
    *(v17 - 104) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221157CEC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v14[0] = objc_msgSend_columnUIDForColumnIndex_(*(a1 + 32), a2, a2, a4, a5);
  v14[1] = v7;
  result = objc_msgSend_columnGroupLevelForColumnUID_(*(a1 + 40), v7, v14, v8, v9);
  if (result != *(a1 + 56))
  {
    return objc_msgSend_addIndex_(*(a1 + 48), v11, v5, v12, v13);
  }

  return result;
}

uint64_t sub_221157EE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v14[0] = objc_msgSend_rowUIDForRowIndex_(*(a1 + 32), a2, a2, a4, a5);
  v14[1] = v7;
  result = objc_msgSend_rowGroupLevelForRowUID_(*(a1 + 40), v7, v14, v8, v9);
  if (result != *(a1 + 56))
  {
    return objc_msgSend_addIndex_(*(a1 + 48), v11, v5, v12, v13);
  }

  return result;
}

uint64_t sub_2211580F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  result = objc_msgSend_aggregateIndexForColumnIndex_(*(a1 + 32), a2, a2, a4, a5);
  if (result != *(a1 + 48))
  {
    v11 = *(a1 + 40);

    return objc_msgSend_addIndex_(v11, v8, v5, v9, v10);
  }

  return result;
}

uint64_t sub_22115830C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  result = objc_msgSend_aggregateIndexForRowIndex_(*(a1 + 32), a2, a2, a4, a5);
  if (result != *(a1 + 48))
  {
    v11 = *(a1 + 40);

    return objc_msgSend_addIndex_(v11, v8, v6, v9, v10);
  }

  return result;
}

void sub_221158A6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = objc_msgSend_groupUid(v3, v5, v6, v7, v8);
  v16 = objc_msgSend_columnIndexForColumnUID_(v4, v10, v9, v10, v11);
  if (*(a1 + 72) == 1)
  {
    v17 = *(a1 + 40);
    v26[0] = objc_msgSend_groupUid(v3, v12, v13, v14, v15);
    v26[1] = v18;
    isColumnGroupUIDCollapsed = objc_msgSend_isColumnGroupUIDCollapsed_(v17, v18, v26, v19, v20);
  }

  else
  {
    isColumnGroupUIDCollapsed = 0;
  }

  if (v16 != 0x7FFF && (isColumnGroupUIDCollapsed & 1) == 0)
  {
    objc_msgSend_addIndex_(*(a1 + 48), v12, v16, v14, v15);
    if (*(*(a1 + 56) + 464) == 1)
    {
      v25 = v16 + *(a1 + 64);
      while (1)
      {
        LOWORD(v16) = v16 + 1;
        if (v16 >= v25)
        {
          break;
        }

        objc_msgSend_addIndex_(*(a1 + 48), v22, v16, v23, v24);
      }
    }
  }
}

void sub_221158B64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = objc_msgSend_groupUid(v3, v5, v6, v7, v8);
  v16 = objc_msgSend_rowIndexForRowUID_(v4, v10, v9, v10, v11);
  if (*(a1 + 72) == 1)
  {
    v17 = *(a1 + 40);
    v28[0] = objc_msgSend_groupUid(v3, v12, v13, v14, v15);
    v28[1] = v18;
    isRowGroupUIDCollapsed = objc_msgSend_isRowGroupUIDCollapsed_(v17, v18, v28, v19, v20);
  }

  else
  {
    isRowGroupUIDCollapsed = 0;
  }

  if (v16 != 0x7FFFFFFF && (isRowGroupUIDCollapsed & 1) == 0)
  {
    objc_msgSend_addIndex_(*(a1 + 48), v12, v16, v14, v15);
    if (!*(*(a1 + 56) + 464))
    {
      v25 = v16 + *(a1 + 64);
      for (i = v16 + 1; i < v25; i = v27)
      {
        v27 = i + 1;
        objc_msgSend_addIndex_(*(a1 + 48), v22, i, v23, v24);
      }
    }
  }
}

void *sub_221159600(void *result, unint64_t a2, id *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v7[a2];
      do
      {
        result = *a3;
        *v7++ = result;
        v12 -= 8;
      }

      while (v12);
      v7 = v13;
    }

    *(v5 + 8) = v7;
  }

  else
  {
    v8 = v7 - *result;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_22107C148();
    }

    v10 = v6 - *result;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v17[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v14 = (8 * (v8 >> 3));
    v17[0] = 0;
    v17[1] = v14;
    v17[3] = 0;
    v15 = 8 * a2;
    v16 = &v14[a2];
    do
    {
      *v14++ = *a3;
      v15 -= 8;
    }

    while (v15);
    v17[2] = v16;
    sub_22107C098(v5, v17);
    return sub_22107C26C(v17);
  }

  return result;
}

void sub_221159714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_221159728(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221159784(a1, *(a1 + 16));
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

void sub_221159784(uint64_t a1, id *a2)
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

void *sub_2211597C8(void *a1, void *a2)
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

void sub_221159A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221159A40(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_221159A8C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221159AE8(a1, *(a1 + 16));
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

void sub_221159AE8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        v2[5] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_221159B34(void *a1, void *a2)
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