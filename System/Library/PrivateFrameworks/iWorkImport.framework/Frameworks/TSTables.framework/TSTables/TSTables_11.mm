void sub_2212C9D28()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2212CB1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2212CB1FC(__n128 *a1, __n128 *a2)
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

void sub_2212CB220(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2212CB238(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a3 + a2 - 1;
  *&v4 = a2;
  *(&v4 + 1) = v3 | 0x3E700000000;
  if (a2 != 0x7FFFFFFFLL && v3 != 0x7FFFFFFFLL && a2 <= v3)
  {
    sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
  }
}

void sub_2212CB2A8(uint64_t a1, unsigned __int16 a2, __int16 a3)
{
  *&v4 = a2 << 32;
  *(&v4 + 1) = ((a3 + a2 - 1) << 32) | 0xF423F;
  if (a2 != 0x7FFFLL)
  {
    v3 = (a3 + a2 - 1);
    if (v3 != 0x7FFF && a2 <= v3)
    {
      sub_221083454(*(*(a1 + 32) + 8) + 48, &v4);
    }
  }
}

void sub_2212CB598(_Unwind_Exception *a1)
{
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_2212CB7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2212CB830(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_uuidsInRange_(v6, a2, a2, a3, a5);
    v7 = *__p;
  }

  else
  {
    v7 = 0uLL;
    __p[0] = 0;
  }

  sub_2210F0C88((*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56), v7, *(&v7 + 1), (*(&v7 + 1) - v7) >> 4);
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_2212CB8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2212CBA68(void *a1, unsigned int *a2)
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

uint64_t sub_2212CBCA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_2212CBD00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2212CBD1C(uint64_t a1, const void *a2, CC_LONG a3)
{
  if (a3 >= 0x14)
  {
    v4 = 20;
  }

  else
  {
    v4 = a3;
  }

  v5 = a1 + 96;
  if (a3)
  {
    memmove((a1 + 96), a2, v4);
    if (a3 <= 0x13)
    {
      bzero((v5 + v4), (20 - v4));
    }

    CC_SHA1_Init(a1);
    CC_SHA1_Update(a1, a2, a3);
  }

  else
  {
    bzero((v5 + v4), (20 - v4));
    CC_SHA1_Init(a1);
  }

  result = CC_SHA1_Final((a1 + 116), a1);
  *(a1 + 136) = 0;
  return result;
}

CC_SHA1_CTX *sub_2212CBDCC(CC_SHA1_CTX *c, char *__dst, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = c;
    p_Nl = &c[1].Nl;
    for (i = c[1].data[3]; ; i = 0)
    {
      if (i != 20)
      {
        if (v3 >= 20 - i)
        {
          v8 = 20 - i;
        }

        else
        {
          v8 = v3;
        }

        c = memmove(__dst, p_Nl + i, v8);
        v5[1].data[3] += v8;
        v3 -= v8;
        if (!v3)
        {
          return c;
        }

        __dst += v8;
      }

      CC_SHA1_Init(v5);
      CC_SHA1_Update(v5, p_Nl, 0x14u);
      CC_SHA1_Update(v5, &v5[1], 0x14u);
      CC_SHA1_Final(p_Nl, v5);
      v5[1].data[3] = 0;
    }
  }

  return c;
}

double sub_2212CBE94(CC_SHA1_CTX *a1)
{
  __dst = 0;
  sub_2212CBDCC(a1, &__dst, 8u);
  return __dst * 5.42101086e-20;
}

void sub_2212CD2D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_children(*(a1 + 32), a2, a3, a4, a5);
  *(*(a1 + 32) + 128) = objc_msgSend_count(v10, v6, v7, v8, v9) | 0x100000000;
}

TSCEASTRelativeCoordRefElement *sub_2212CE9E4(TSCEFormulaRewriteContext **a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::hasUidTracts(a2, a1))
  {
    if (TSCEASTElement::refFlags(a2, a1))
    {
      v7 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5, v6);
      v8 = v9;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v15.var0 = v7;
    v15.var1 = v8;
    v14 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v4, v5, v6);
    v13._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
    v10 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    if (v7 == v10->var0.var0._tableUID._lower && v8 == v10->var0.var0._tableUID._upper)
    {
      v15.var0 = 0;
      v15.var1 = 0;
    }

    TSCEASTIteratorBase::createRelativeCoordReference(a1, &v15, &v14, &v13, 0);
  }

  return a2;
}

uint64_t sub_2212CEAB8(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  if (TSCEASTElement::tagHasUidTractList(v4))
  {

    TSCEASTIteratorBase::createTagOnlyOp(a1, 0x1C, v5, v6, v7);
  }

  return a2;
}

TSCEASTColonTractElement *sub_2212CEB18(uint64_t a1, TSCEASTColonTractElement *a2)
{
  if (TSCEASTElement::hasUidTracts(a2, a1))
  {
    v7 = TSCEASTColonTractElement::relativeTractRef(a2, a1, v4, v5, v6);
    v8 = TSCEASTElement::refFlags(a2, a1);
    v12 = TSCEASTColonTractElement::colonTractFlags(a2, a1, v9, v10, v11);
    sub_22120CA10(a1, v13, v14, v15, v16);
    v17._flags = v12;
    TSCEASTColonTractElement::appendColonTractElement((a1 + 24), v8, v17, v7, 0, v18);
    operator new();
  }

  return a2;
}

uint64_t sub_2212CEC40(TSCEASTIteratorBase *a1, uint64_t a2)
{
  if (TSCEASTElement::hasUidTracts(a2, a1))
  {

    TSCEASTIteratorBase::createReferenceError(a1, v4, v5, v6, v7);
  }

  return a2;
}

void sub_2212CEC9C(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void TSCEEvaluationStack::TSCEEvaluationStack(TSCEEvaluationStack *this)
{
  this->_evaluationStack.__begin_ = 0;
  this->_evaluationStack.var0 = 0;
  this->_evaluationStack.var1 = 0;
  this->_argumentCount = -1;
}

{
  this->_evaluationStack.__begin_ = 0;
  this->_evaluationStack.var0 = 0;
  this->_evaluationStack.var1 = 0;
  this->_argumentCount = -1;
}

__end_ *TSCEEvaluationStack::at(TSCEEvaluationStack *this, unint64_t a2)
{
  if (a2 >= this->_evaluationStack.var0 - this->_evaluationStack.__begin_)
  {
    sub_2211E631C();
  }

  v3 = this->_evaluationStack.__begin_[a2];

  return v3;
}

void TSCEEvaluationStack::push_back(TSCEEvaluationStack *this, TSCEValue *a2)
{
  v17 = a2;
  if (!v17)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "void TSCEEvaluationStack::push_back(TSCEValue *__strong)", v4, v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 40, 0, "invalid nil value for '%{public}s'", "value", 0);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  sub_221179A54(this, &v17);
}

void TSCEEvaluationStack::pop_back(TSCEEvaluationStack *this)
{
  var0 = this->_evaluationStack.var0;

  this->_evaluationStack.var0 = var0 - 1;
}

void TSCEEvaluationStack::addValueArgs(TSCEEvaluationStack *a1, id **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *v2;
      TSCEEvaluationStack::push_back(a1, v5);

      ++v2;
    }

    while (v2 != v3);
  }
}

__end_ *TSCEEvaluationStack::rawArgumentAtIndex(TSCEEvaluationStack *this, uint64_t a2)
{
  v3 = this->_evaluationStack.var0 - this->_evaluationStack.__begin_;
  v4 = v3 - this->_argumentCount + a2;
  if (v3 <= v4)
  {
    sub_2211E631C();
  }

  v5 = this->_evaluationStack.__begin_[v4];

  return v5;
}

void TSCEEvaluationStack::replaceValueForArgumentAtIndexSingletonMode(void **a1, uint64_t a2, void *a3, void *a4, void *a5, const char *a6)
{
  v11 = a4;
  if (objc_msgSend_isThunk(*a1, v12, v13, v14, v15))
  {
    goto LABEL_60;
  }

  v20 = objc_msgSend_nativeType(*a1, v16, v17, v18, v19);
  v25 = v20;
  if (v20 == 9)
  {
    goto LABEL_60;
  }

  if (v20 != 6)
  {
    goto LABEL_16;
  }

  v26 = objc_msgSend_asReferenceValue(*a1, v21, v22, v23, v24);
  v31 = v26;
  if (a5)
  {
    v32 = objc_msgSend_referenceForGeometryOnly(a5, v27, v28, v29, v30);
    if (v31)
    {
      v33 = v32;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_15;
    }

LABEL_11:
    if (objc_msgSend_isOutputOfAFunction(v31, v27, v28, v29, v30))
    {
      objc_msgSend_anyRef(v31, v34, v35, v36, v37);
      if (LOWORD(v83._tskFormat) - 3 < 0x10)
      {
        v79 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "static void TSCEEvaluationStack::replaceValueForArgumentAtIndexSingletonMode(TSCEValue *__autoreleasing *, uint32_t, TSCEFunctionSpec *__unsafe_unretained, TSCEEvaluationContext *__strong, TSCEFunctionArgSpec *__unsafe_unretained, TSCEArgumentType, uint32_t)", v39, v40);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v43, v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v46, v41, v45, 109, 0, "unsupported computed reference type found. See TSCECalcEngine::referenceWasGuaranteedCleanAtRecalcCycleStart");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
      }

      objc_msgSend_addCalculatedPrecedent_(v11, v38, &v83, v39, v40);
    }

    goto LABEL_15;
  }

  if (v26)
  {
    goto LABEL_11;
  }

LABEL_15:

LABEL_16:
  v51 = a6;
  if (a6 != 1)
  {
    v51 = a6;
    if (a6 != 6)
    {
      v51 = objc_msgSend_deepType_(*a1, v21, v11, v23, v24);
    }
  }

  if (!TSCEArgumentAccessor::valueSufficesForArgumentType(*a1, a6, v25, v51, v11, 0))
  {
    goto LABEL_24;
  }

  if (a5)
  {
    v56 = 0;
    if (a6 == 1 || a6 == 6)
    {
      goto LABEL_35;
    }

    if (objc_msgSend_typeIsDisallowed_value_(a5, v52, v51, *a1, v55))
    {
LABEL_24:
      if (v51 == 9)
      {
        objc_msgSend_errorWithContext_(*a1, v52, v11, v54, v55);
      }

      else
      {
        objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v52, *a1, v11, a3, a2);
      }
      v57 = ;
      if (v57)
      {
        v58 = objc_msgSend_errorValue_(TSCEErrorValue, v52, v57, v54, v55);
LABEL_32:
        *a1 = v58;

        goto LABEL_60;
      }
    }
  }

  if (a6 == 8)
  {
    v59 = *a1;
    v82 = 0;
    v60 = TSCEArgumentAccessor::coerceValueToNumberOrDate(v59, v11, a3, a2, v51, &v82);
    v57 = v82;
    v61 = v60;
    *a1 = v60;
    if (v57)
    {
      v58 = objc_msgSend_errorValue_(TSCEErrorValue, v52, v57, v54, v55);
      goto LABEL_32;
    }

    v56 = 1;
  }

  else
  {
    v56 = 0;
  }

LABEL_35:
  if (objc_msgSend_isNil(*a1, v52, v53, v54, v55))
  {
    v65 = *a1;
    v81._tskFormat = 0;
    v81._formatType = 0;
    v81._formatState = 0;
    *&v81._durationFormat = *&v81._durationFormat & 0xC080 | 0x421;
    *(&v81._durationFormat + 2) = *(&v81._durationFormat + 2) & 0xF8 | 1;
    *&v81._baseFormat.base = -50266102;
    v81._numberFormat.decimalPlaces = -3;
    *(&v81._numberFormat + 1) &= 0xE0u;
    v81._numberFormat.currencyCodeIndex = 0;
    TSCEFormat::TSCEFormat(&v83, &v81);
    objc_msgSend_setFormat_(v65, v66, &v83, v67, v68);
  }

  if (a6 == 5)
  {
    if (v51 == 10 || v51 == 12)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v69 = v56 ^ 1;
    if (v51 != 5)
    {
      v69 = 1;
    }

    if (v69)
    {
      goto LABEL_46;
    }
  }

  v70 = TSCEArgumentAccessor::checkBoundsAndUnits(*a1, v11, a3, a5, a2, v51);
  if (v70)
  {
    *a1 = objc_msgSend_errorValue_(TSCEErrorValue, v62, v70, v63, v64);

    goto LABEL_60;
  }

LABEL_46:
  if (v51 != 2)
  {
    if (a6 != 7)
    {
      goto LABEL_60;
    }

    if (v51 != 7)
    {
      goto LABEL_60;
    }

    if (!*a1)
    {
      goto LABEL_60;
    }

    objc_msgSend_formatWithContext_(*a1, v62, v11, v63, v64);
    if (v83._formatType != 271)
    {
      goto LABEL_60;
    }

    v75 = *a1;
    v80 = 0;
    if (v75)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v75, v71, v11, a3, a2, &v80);
      v76 = v80;
      if (v76)
      {
        v77 = v76;
        v78 = objc_msgSend_errorValue_(TSCEErrorValue, v71, v76, v73, v74);
LABEL_59:
        *a1 = v78;

        goto LABEL_60;
      }
    }

    else
    {
      memset(&v83, 0, 24);
    }

    v77 = 0;
    v78 = sub_2210789F4(&v83, v71, v72, v73, v74);
    goto LABEL_59;
  }

  if (a6 == 8 || a6 == 5)
  {
    objc_msgSend_reportBoolToNumberConversionWarningInContext_(TSCEWarning, v62, v11, v63, v64);
  }

LABEL_60:
}

id TSCEEvaluationStack::valueForArgumentAtIndexSingletonMode(TSCEEvaluationStack *a1, uint64_t a2, void *a3, void *a4, void *a5, const char *a6)
{
  v14 = a4;
  if ((a2 - a1->_argumentCount + a1->_evaluationStack.var0 - a1->_evaluationStack.__begin_) < 0)
  {
    v21 = objc_msgSend_nilValue(TSCENilValue, a2, v11, v12, v13);
  }

  else
  {
    v15 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
    if ((objc_msgSend_isThunk(v15, v16, v17, v18, v19) & 1) == 0)
    {
      v23 = v15;
      TSCEEvaluationStack::replaceValueForArgumentAtIndexSingletonMode(&v23, a2, a3, v14, a5, a6);
      v20 = v23;

      v15 = v20;
    }

    v21 = v15;
  }

  return v21;
}

void TSCEEvaluationStack::replaceValueForArgumentAtIndexListLikeMode(void **a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a4;
  v16 = objc_msgSend_nativeType(*a1, v12, v13, v14, v15);
  v21 = v16;
  if (v16 == 9)
  {
    v22 = objc_msgSend_errorWithContext_(*a1, v17, v11, v19, v20);
    v26 = objc_msgSend_errorValue_(TSCEErrorValue, v23, v22, v24, v25);
LABEL_6:
    *a1 = v26;

    goto LABEL_7;
  }

  if (a6 == 6 && v16 != 6)
  {
    v22 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v17, *a1, v11, a3, a2);
    v26 = objc_msgSend_errorValue_(TSCEErrorValue, v27, v22, v28, v29);
    goto LABEL_6;
  }

  if (a5 && v16 == 10)
  {
    if (objc_msgSend_typeIsDisallowed_value_(a5, v17, 10, *a1, v20))
    {
      v22 = objc_msgSend_emptyArgumentSpecificErrorForArgumentNumber_(TSCEError, v17, (a2 + 1), v30, v31);
      v26 = objc_msgSend_errorValue_(TSCEErrorValue, v32, v22, v33, v34);
      goto LABEL_6;
    }
  }

  else if (v16 == 6 && (!a5 || (objc_msgSend_referenceForGeometryOnly(a5, v17, v18, v19, v20) & 1) == 0))
  {
    v35 = objc_msgSend_asReferenceValue(*a1, v17, v18, v19, v20);
    v40 = v35;
    if (v35 && objc_msgSend_isOutputOfAFunction(v35, v36, v37, v38, v39))
    {
      objc_msgSend_anyRef(v40, v41, v42, v43, v44);
      objc_msgSend_addCalculatedPrecedent_(v11, v45, v74, v46, v47);
    }
  }

  v48 = *a1;
  v73 = 0;
  v49 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v48, v17, v11, a3, a2, 1, &v73);
  v54 = v73;
  if (v54)
  {
    *a1 = objc_msgSend_errorValue_(TSCEErrorValue, v50, v54, v52, v53);
  }

  else if (v21 == 1 && objc_msgSend_gridKind(v49, v50, v51, v52, v53) == 1 && objc_msgSend_count(v49, v55, v56, v57, v58) >= 2 && (v63 = objc_msgSend_functionIndex(a3, v59, v60, v61, v62), v63 != 8) && v63 != 63)
  {
    v69 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v64, v65, v66, v67);
    *a1 = objc_msgSend_errorValue_(TSCEErrorValue, v70, v69, v71, v72);
  }

  else
  {
    v68 = v49;
    *a1 = v49;
  }

LABEL_7:
}

id TSCEEvaluationStack::valueForArgumentAtIndexListLikeMode(TSCEEvaluationStack *a1, uint64_t a2, void *a3, void *a4, void *a5, int a6)
{
  v11 = a4;
  v12 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
  v16 = v12;
  TSCEEvaluationStack::replaceValueForArgumentAtIndexListLikeMode(&v16, a2, a3, v11, a5, a6);
  v13 = v16;
  v14 = v16;

  return v13;
}

id TSCEEvaluationStack::valueForArgumentAtIndexRepeatingMode(TSCEEvaluationStack *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v144 = a4;
  if (a7 - 1 == a2)
  {
    v16 = a1->_evaluationStack.var0 - a1->_evaluationStack.__begin_;
    if (!v16 || (v16 >> 3) + a2 - a1->_argumentCount >= v16 >> 3)
    {
      v17 = objc_msgSend_invalidReferenceError(TSCEError, v12, v13, v14, v15);
      v96 = objc_msgSend_errorValue_(TSCEErrorValue, v93, v17, v94, v95);
LABEL_38:
      v97 = v96;
LABEL_39:

      goto LABEL_48;
    }

    v17 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
    if (!objc_msgSend_isError(v17, v18, v19, v20, v21))
    {
LABEL_60:
      if (objc_msgSend_isReferenceValue(v17, v22, v23, v24, v25) && (!a5 || (objc_msgSend_referenceForGeometryOnly(a5, v115, v116, v117, v118) & 1) == 0))
      {
        v119 = objc_msgSend_asReferenceValue(v17, v115, v116, v117, v118);
        v124 = v119;
        if (v119 && objc_msgSend_isOutputOfAFunction(v119, v120, v121, v122, v123))
        {
          objc_msgSend_anyRef(v124, v125, v126, v127, v128);
          objc_msgSend_addCalculatedPrecedent_(v144, v129, v158, v130, v131);
        }
      }

      if (objc_msgSend_isGridValue(v17, v115, v116, v117, v118))
      {
        v157 = 0;
        v133 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v17, v132, v144, a3, a2, 1, &v157);
        v137 = v157;
        if (v137)
        {
          v97 = objc_msgSend_errorValue_(TSCEErrorValue, v134, v137, v135, v136);

          goto LABEL_39;
        }

        *v158 = v144;
        *&v158[8] = a3;
        *&v158[16] = 0;
        *&v158[24] = a2;
        *&v158[28] = 0;
        *&v158[31] = 0;
        v159 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v160 = 0;
        v161 = 0;
        if (v133)
        {
          objc_msgSend_format(v133, v138, v139, v140, v141);
        }

        else
        {
          memset(&v156, 0, sizeof(v156));
        }

        v142 = objc_msgSend_flattenedGrid_format_(v133, v138, v158, &v156, v141);

        v17 = v142;
      }

      v96 = v17;
      v17 = v96;
      goto LABEL_38;
    }

    v30 = objc_msgSend_errorWithContext_(v17, v22, v144, v24, v25);
    if (a5)
    {
      v31 = objc_msgSend_argumentContext(a5, v26, v27, v28, v29);
      if ((v31 & 0xFFFFFFFE) == 8)
      {
        memset(&v156, 0, 24);
        v163[0] = objc_msgSend_errorValue_(TSCEErrorValue, v26, v30, v28, v29);
        sub_2210ED5B8(&v156, v163);

        v33 = [TSCEDenseGrid alloc];
        isFlattened = objc_msgSend_initWithValues_gridKind_isFlattened_(v33, v34, &v156, 0, 0);
        if (v17)
        {
          objc_msgSend_format(v17, v35, v36, v37, v38);
        }

        else
        {
          memset(v158, 0, 32);
        }

        v111 = objc_msgSend_gridValue_format_(TSCEGridValue, v35, isFlattened, v158, v38);

        *v158 = &v156;
        sub_22107C2C0(v158);
        v17 = v111;
        goto LABEL_56;
      }

      if ((v31 & 0xFFFFFFFD) == 0xC)
      {
LABEL_56:
        if (objc_msgSend_errorType(v30, v26, v32, v28, v29) == 25)
        {
          v110 = objc_msgSend_errorValue_(TSCEErrorValue, v112, v30, v113, v114);
          goto LABEL_58;
        }

        goto LABEL_60;
      }
    }

    v110 = objc_msgSend_errorValue_(TSCEErrorValue, v26, v30, v28, v29);
LABEL_58:
    v97 = v110;

    goto LABEL_39;
  }

  v153 = 0;
  v154 = 0;
  v155 = 0;
  __p = 0;
  v151 = 0;
  v152 = 0;
  if (a2 < a7)
  {
    a2 = a2;
    v143 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    while (1)
    {
      v40 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
      if ((objc_msgSend_isNil(v40, v41, v42, v43, v44) & 1) == 0)
      {
        v49 = objc_msgSend_nativeType(v40, v45, v46, v47, v48);
        if (v49 != 12)
        {
          if (v49 == 6 && (!a5 || (objc_msgSend_referenceForGeometryOnly(a5, v50, v51, v52, v53) & 1) == 0))
          {
            v54 = objc_msgSend_asReferenceValue(v40, v50, v51, v52, v53, *&v143);
            v59 = v54;
            if (v54 && objc_msgSend_isOutputOfAFunction(v54, v55, v56, v57, v58))
            {
              objc_msgSend_anyRef(v59, v60, v61, v62, v63);
              objc_msgSend_addCalculatedPrecedent_(v144, v64, v158, v65, v66);
            }
          }

          v149 = 0;
          v67 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v40, v50, v144, a3, a2, 1, &v149, *&v143);
          v72 = v149;
          if (v72)
          {
            if (!a5 || (objc_msgSend_argumentContext(a5, v68, v69, v70, v71) & 0xFFFFFFFE) != 8)
            {
              v97 = objc_msgSend_errorValue_(TSCEErrorValue, v68, v72, v70, v71);

              goto LABEL_45;
            }

            memset(v158, 0, 24);
            v148 = objc_msgSend_errorValue_(TSCEErrorValue, v68, v72, v70, v71);
            sub_2210ED5B8(v158, &v148);

            v73 = [TSCEDenseGrid alloc];
            v77 = objc_msgSend_initWithValues_(v73, v74, v158, v75, v76);
            v147 = objc_msgSend_gridValue_(TSCEGridValue, v78, v77, v79, v80);
            sub_2212D01C8(&v153, &v147);

            v156._tskFormat = v158;
            sub_22107C2C0(&v156);
          }

          else
          {
            *v158 = v144;
            *&v158[8] = a3;
            *&v158[16] = 0;
            *&v158[24] = a2;
            *&v158[28] = 0;
            *&v158[31] = 0;
            v159 = v143;
            v160 = 0;
            v161 = 0;
            if (v67)
            {
              objc_msgSend_format(v67, v81, v82, v83, v84);
            }

            else
            {
              memset(&v156, 0, sizeof(v156));
            }

            v146 = objc_msgSend_flattenedGrid_format_(v67, v81, v158, &v156, v84);
            sub_2212D01C8(&v153, &v146);

            if (v67)
            {
              objc_msgSend_format(v67, v85, v86, v87, v88);
            }

            else
            {
              memset(&v156, 0, sizeof(v156));
            }

            v89 = v151;
            if (v151 >= v152)
            {
              v90 = sub_22114F468(&__p, &v156);
            }

            else
            {
              TSCEFormat::TSCEFormat(v151, &v156);
              v90 = v89 + 1;
            }

            v151 = v90;
          }
        }
      }

      if (a7 == ++a2)
      {
        v91 = v153;
        v92 = v154;
        goto LABEL_41;
      }
    }
  }

  v91 = 0;
  v92 = 0;
LABEL_41:
  if (v92 - v91 == 8)
  {
    v97 = *v91;
  }

  else
  {
    v98 = [TSCEAggregateGrid alloc];
    v102 = objc_msgSend_initWithGrids_(v98, v99, &v153, v100, v101);
    v97 = objc_msgSend_gridValue_(TSCEGridValue, v103, v102, v104, v105);
  }

  sub_221256020(&__p, &v145);
  TSCEFormat::TSCEFormat(v158, &v145);
  objc_msgSend_setFormat_(v97, v106, v158, v107, v108);
LABEL_45:
  if (__p)
  {
    v151 = __p;
    operator delete(__p);
  }

  *v158 = &v153;
  sub_22107C2C0(v158);
LABEL_48:

  return v97;
}

void *sub_2212D01C8(void *result, uint64_t *a2)
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

void sub_2212D02AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id TSCEEvaluationStack::valueForArgumentAtIndexSwitch(TSCEEvaluationStack *a1, uint64_t a2, void *a3, void *a4, void *a5, const char *a6, uint64_t a7, int a8)
{
  v18 = a4;
  if (a7 > 2)
  {
    if (a7 == 3)
    {
      v19 = TSCEEvaluationStack::valueForArgumentAtIndexListLikeMode(a1, a2, a3, v18, a5, a6);
      goto LABEL_11;
    }

    if (a7 == 4)
    {
      v19 = TSCEEvaluationStack::valueForArgumentAtIndexRepeatingMode(a1, a2, a3, v18, a5, 0, a8);
      goto LABEL_11;
    }
  }

  else
  {
    if ((a7 - 1) < 2)
    {
      v19 = TSCEEvaluationStack::valueForArgumentAtIndexSingletonMode(a1, a2, a3, v18, a5, a6);
      goto LABEL_11;
    }

    if (!a7)
    {
      v19 = TSCEEvaluationStack::rawArgumentAtIndex(a1, a2);
      goto LABEL_11;
    }
  }

  v20 = MEMORY[0x277D81150];
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "TSCEValue *TSCEEvaluationStack::valueForArgumentAtIndexSwitch(uint32_t, TSCEFunctionSpec *__unsafe_unretained, TSCEEvaluationContext *__strong, TSCEFunctionArgSpec *__unsafe_unretained, TSCEArgumentType, TSCEArgumentAccessorMode, uint32_t)", v16, v17);
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v23, v24);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 478, 0, "Invalid accessorMode (%d)", a7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  v19 = objc_msgSend_nilValue(TSCENilValue, v31, v32, v33, v34);
LABEL_11:
  v35 = v19;

  return v35;
}

id TSCEEvaluationStack::typeCheckArgumentsForFunction(void *a1, void *a2, void *a3)
{
  v76 = a1;
  v78 = a3;
  v7 = a3[1] - *a3;
  if ((v7 >> 3) < 1)
  {
LABEL_34:
    v42 = 0;
    goto LABEL_36;
  }

  v8 = 0;
  v9 = 0;
  v75 = (v7 >> 3) & 0x7FFFFFFF;
  while (1)
  {
    v10 = objc_msgSend_argumentSpecForIndex_(a2, v4, v9, v5, v6, v75);
    v15 = v10;
    if (v10)
    {
      v16 = objc_msgSend_argumentType(v10, v11, v12, v13, v14);
      v21 = objc_msgSend_accessorMode(v15, v17, v18, v19, v20);
      v26 = objc_msgSend_argumentContext(v15, v22, v23, v24, v25);
      v31 = objc_msgSend_allowError(v15, v27, v28, v29, v30);
    }

    else
    {
      v16 = 0;
      v31 = 0;
      v21 = 1;
      v26 = 14;
    }

    v32 = *(*v78 + 8 * v9);
    if (objc_msgSend_unwrapThunk(v15, v33, v34, v35, v36) && objc_msgSend_isThunk(v32, v37, v38, v39, v40))
    {
      v41 = objc_msgSend_unwrapThunk_(v76, v37, v32, v39, v40);

      v32 = v41;
    }

    if ((v26 == 14) | v31 & 1)
    {
      v42 = 0;
    }

    else
    {
      v43 = *(*v78 + 8 * v9);
      if (objc_msgSend_isError(v43, v44, v45, v46, v47))
      {
        v42 = objc_msgSend_errorWithContext_(v43, v48, v76, v49, v50);
      }

      else
      {
        v42 = 0;
      }
    }

    if ((v21 - 1) >= 2)
    {
      break;
    }

    if (v26 != 14 && (!objc_msgSend_isTokenOrEmptyArg(v32, v37, v38, v39, v40) || (objc_msgSend_isOptional(v15, v51, v52, v53, v54) & 1) == 0))
    {
      v80 = v32;
      TSCEEvaluationStack::replaceValueForArgumentAtIndexSingletonMode(&v80, v9, a2, v76, v15, v16);
      v55 = v80;
      v56 = v80;

      objc_storeStrong((*v78 + v8), v55);
      if ((v31 & 1) == 0)
      {
        if (!objc_msgSend_isError(v56, v57, v58, v59, v60))
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_28;
    }

LABEL_25:
    if (!v31)
    {
      v56 = v32;
      goto LABEL_32;
    }

LABEL_29:

    v56 = v32;
LABEL_33:

    ++v9;
    v8 += 8;
    if (v75 == v9)
    {
      goto LABEL_34;
    }
  }

  if (v21 != 3 || objc_msgSend_isTokenOrEmptyArg(v32, v37, v38, v39, v40) && (objc_msgSend_isOptional(v15, v64, v65, v66, v67) & 1) != 0)
  {
    goto LABEL_25;
  }

  v79 = v32;
  TSCEEvaluationStack::replaceValueForArgumentAtIndexListLikeMode(&v79, v9, a2, v76, v15, v16);
  v68 = v79;
  v56 = v79;

  objc_storeStrong((*v78 + v8), v68);
  if (v31)
  {
LABEL_28:
    v32 = v56;
    goto LABEL_29;
  }

  if (!objc_msgSend_isError(v56, v69, v70, v71, v72))
  {
    goto LABEL_32;
  }

LABEL_31:
  v73 = objc_msgSend_errorWithContext_(v56, v61, v76, v62, v63);

  v42 = v73;
LABEL_32:
  if (!v42)
  {
    goto LABEL_33;
  }

LABEL_36:

  return v42;
}

id TSCEEvaluationStack::valueForArgumentAtIndex(TSCEEvaluationStack *this, uint64_t a2, TSCEFunctionSpec *a3, TSCEEvaluationContext *a4)
{
  v7 = a4;
  argumentCount = this->_argumentCount;
  v13 = objc_msgSend_maxArguments(a3, v9, v10, v11, v12);
  v18 = objc_msgSend_minArguments(a3, v14, v15, v16, v17);
  v22 = objc_msgSend_argumentSpecForIndex_(a3, v19, a2, v20, v21);
  v27 = v22;
  if (v22)
  {
    v28 = objc_msgSend_argumentType(v22, v23, v24, v25, v26);
    v33 = objc_msgSend_accessorMode(v27, v29, v30, v31, v32);
  }

  else
  {
    v28 = 0;
    v33 = 1;
  }

  if (v18 <= argumentCount && (v13 == -1 || v13 >= argumentCount) && (argumentCount > a2 || ((v33 & 0xFFFFFFFB) != 0 ? (v43 = v33 == 2) : (v43 = 1), !v43 ? (v44 = 0) : (v44 = 1), !a2 && v44 && !objc_msgSend_minArguments(a3, v23, v24, v25, v26))))
  {
    v41 = TSCEEvaluationStack::valueForArgumentAtIndexSwitch(this, a2, a3, v7, v27, v28, v33, argumentCount);
  }

  else
  {
    v34 = objc_msgSend_functionName(a3, v23, v24, v25, v26);
    v37 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v35, v34, argumentCount, v36);
    v41 = objc_msgSend_raiseErrorOrConvert_(v7, v38, v37, v39, v40);
  }

  return v41;
}

void TSCEEvaluationStack::replaceArgumentAtIndex(TSCEEvaluationStack *this, unsigned int a2, TSCEValue *a3)
{
  v8 = a3;
  argumentCount = this->_argumentCount;
  if (argumentCount <= a2)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void TSCEEvaluationStack::replaceArgumentAtIndex(uint32_t, TSCEValue *__strong)", v6, v7);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 590, 0, "cannot replace an invalid index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
    argumentCount = this->_argumentCount;
  }

  v21 = &this->_evaluationStack.__begin_[((this->_evaluationStack.var0 - this->_evaluationStack.__begin_) >> 3) - argumentCount];
  v22 = v21[a2];
  v21[a2] = v8;
}

void TSCEEvaluationStack::clearArgument(TSCEEvaluationStack *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = this->_evaluationStack.var0 - this->_evaluationStack.__begin_;
  argumentCount = this->_argumentCount;
  v8 = (v6 - argumentCount);
  if (v6 >= argumentCount)
  {
    sub_2212D0BF4(this, v8);
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void TSCEEvaluationStack::clearArgument()", a4, a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationStack.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 598, 0, "Messed up arguments on _evaluationStack");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
    begin = this->_evaluationStack.__begin_;
    for (i = this->_evaluationStack.var0; i != begin; --i)
    {
      v22 = *(i - 1);
    }

    this->_evaluationStack.var0 = begin;
  }

  this->_argumentCount = 0;
}

void sub_2212D0BF4(void *a1, unint64_t a2)
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

    sub_2212D0D48(a1, v5);
  }
}

void TSCEEvaluationStack::clearArgumentsAndPush(TSCEEvaluationStack *this, TSCEValue *a2)
{
  v4 = a2;
  v11 = v4;
  var0 = this->_evaluationStack.var0;
  if (this->_evaluationStack.__begin_ == var0)
  {
    sub_221179A54(this, &v11);
    v6 = v11;
  }

  else
  {
    v6 = v4;
    v7 = var0 - 1;
    objc_storeStrong(&var0[-(this->_argumentCount - 1) - 1], a2);
    argumentCount = this->_argumentCount;
    v9 = argumentCount >= 2;
    v10 = argumentCount - 2;
    if (v9)
    {
      sub_221165C5C(this, &v7[-v10], this->_evaluationStack.var0);
    }
  }

  this->_argumentCount = -1;
}

void sub_2212D0D48(uint64_t a1, unint64_t a2)
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

void sub_2212D0E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void TSCEASTStreamIterator::TSCEASTStreamIterator(TSCEASTStreamIterator *this, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTIteratorBase::TSCEASTIteratorBase(this, a2, a3);
  *v3 = &unk_2834A4338;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
}

{
  TSCEASTIteratorBase::TSCEASTIteratorBase(this, a2, a3);
  *v3 = &unk_2834A4338;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
}

void TSCEASTStreamIterator::~TSCEASTStreamIterator(TSCEASTStreamIterator *this, TSCEASTNodeArray *a2)
{
  *this = &unk_2834A4338;
  v3 = *(this + 13);
  if (v3)
  {
    TSCEASTNodeArray::~TSCEASTNodeArray(v3);
    MEMORY[0x223DA1450]();
  }

  v4 = *(this + 14);
  if (v4)
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    if (*v4 == v6)
    {
      goto LABEL_9;
    }

    do
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
      }

      ++v5;
    }

    while (v5 != v6);
    v4 = *(this + 14);
    if (v4)
    {
LABEL_9:
      v7 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v7;
        operator delete(v7);
      }

      MEMORY[0x223DA1450](v4, 0x80C40D6874129);
    }
  }

  v8 = *(this + 15);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      *(v8 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x223DA1450](v8, 0x80C40D6874129);
  }

  v10 = *(this + 16);
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      *(v10 + 8) = v11;
      operator delete(v11);
    }

    MEMORY[0x223DA1450](v10, 0x10C402FEFCB83);
  }

  TSCEASTIteratorBase::~TSCEASTIteratorBase(this, a2);
}

{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(this, a2);

  JUMPOUT(0x223DA1450);
}

void TSCEASTStreamIterator::deleteInDestructor(TSCEASTStreamIterator *this, TSCEASTElement *a2)
{
  if (a2)
  {
    v3 = *(this + 14);
    if (!v3)
    {
      operator new();
    }

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
        sub_221122DC8(v3, v10);
      }

      v11 = (8 * v7);
      *v11 = a2;
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
      *v5 = a2;
      v6 = (v5 + 1);
    }

    *(v3 + 8) = v6;
  }
}

void TSCEASTStreamIterator::pushEmbeddedSizeOffset(TSCEASTStreamIterator *this, uint64_t a2)
{
  v3 = *(this + 16);
  if (!v3)
  {
    operator new();
  }

  v5 = v3[1];
  v4 = v3[2];
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_22107C148();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_2210874C4(v3, v13);
    }

    *(8 * v9) = a2;
    v6 = 8 * v9 + 8;
    memcpy(0, v7, v8);
    v14 = *v3;
    *v3 = 0;
    v3[1] = v6;
    v3[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 8);
  }

  v3[1] = v6;
}

uint64_t TSCEASTStreamIterator::popEmbeddedSizeOffset(TSCEASTStreamIterator *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(this + 16);
  if (!v6 || *v6 == v6[1])
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "size_t TSCEASTStreamIterator::popEmbeddedSizeOffset()", a4, a5);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTStreamIterator.mm", v10, v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v12, 60, 0, "Mismatch in push/popEmbeddedSizeOffset");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    v6 = *(this + 16);
    if (!v6)
    {
      return 0;
    }
  }

  v18 = v6[1];
  result = *(v18 - 8);
  v6[1] = v18 - 8;
  return result;
}

void TSCEASTStreamIterator::pushIncompleteEmbeddedNode(TSCEASTStreamIterator *this, TSCEASTElementWithChildren *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(this + 15);
  if (!v6)
  {
    operator new();
  }

  v7 = *v6;
  v8 = *(v6 + 8);
  if (*v6 == v8 || *(v8 - 1) != a2)
  {
    v21 = *(v6 + 16);
    if (v8 >= v21)
    {
      v23 = (v8 - v7) >> 3;
      if ((v23 + 1) >> 61)
      {
        sub_22107C148();
      }

      v24 = v21 - v7;
      v25 = v24 >> 2;
      if (v24 >> 2 <= (v23 + 1))
      {
        v25 = v23 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        sub_221122DC8(v6, v26);
      }

      *(8 * v23) = a2;
      v22 = 8 * v23 + 8;
      v27 = *(v6 + 8) - *v6;
      v28 = (8 * v23 - v27);
      memcpy(v28, *v6, v27);
      v29 = *v6;
      *v6 = v28;
      *(v6 + 8) = v22;
      *(v6 + 16) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v8 = a2;
      v22 = (v8 + 8);
    }

    *(v6 + 8) = v22;
  }

  else
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTStreamIterator::pushIncompleteEmbeddedNode(TSCEASTElementWithChildren *)", a4, a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTStreamIterator.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 81, 0, "Why are we pushing an incomplete embeddedNode multiple times?");

    v20 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v20, v16, v17, v18, v19);
  }
}

uint64_t TSCEASTStreamIterator::popIncompleteEmbeddedNode(TSCEASTStreamIterator *this)
{
  v1 = *(this + 15);
  if (!v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (*v1 == v2)
  {
    return 0;
  }

  result = *(v2 - 8);
  v1[1] = v2 - 8;
  return result;
}

void TSCEASTStreamIterator::appendElement(TSCEASTNodeArray **this, TSCEASTElement *a2)
{
  if (a2)
  {
    v4 = TSCEASTElement::tag(a2, this);
    if (v4 == 56 || v4 == 27)
    {
      if ((this[12] & 1) == 0)
      {
        TSCEASTNodeArray::writeUInt8(this[13], v4, v5, v6, v7);
        TSCEASTStreamIterator::pushEmbeddedSizeOffset(this, this[13]->var1);
        v21 = 0;
        sub_22120D918(this[13], &v21, v8, v9, v10);
      }

      TSCEASTStreamIterator::pushIncompleteEmbeddedNode(this, a2, v5, v6, v7);
    }

    else if ((this[12] & 1) == 0)
    {
      v11 = (*(*a2 + 72))(a2, this);
      v15 = TSCEASTIteratorBase::readerForElement(this, a2, v12, v13, v14);
      v18 = this[13];
      v19 = v15[1];
      v20 = **v15;
      v15[1] = (v19 + v11);

      sub_22120D7E8(v18, v19 + v20, v11, v16, v17);
    }
  }
}

TSCEASTElement *TSCEASTStreamIterator::visitNode(TSCEASTNodeArray **this, TSCEASTElement *a2)
{
  *(a2 + 16) &= ~2u;
  (*&(*this)[9].var3)(this);

  return TSCEASTIteratorBase::visitNode(this, a2);
}

uint64_t TSCEASTStreamIterator::rewrite(TSCEASTStreamIterator *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(this + 2);
  v91 = v6;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  if (v6)
  {
    v6 = v6[1];
  }

  v93 = v6;
  if (!*(this + 13) && (*(this + 96) & 1) == 0)
  {
    operator new();
  }

  if ((*(this + 99) & 1) == 0)
  {
    v8 = "virtual void TSCEASTStreamIterator::rewrite()";
LABEL_9:
    if (v92 >= v93 || v94 && (v9 = v94[1], *v94 != v9) && v92 >= *(v9 - 8))
    {
      v10 = *(this + 15);
      if (!v10 || *v10 == v10[1])
      {
        return sub_22120E388(&v91);
      }
    }

    while (1)
    {
      if ((*(this + 99) & 1) != 0 || v92 < v93 && (!v94 || (v11 = v94[1], *v94 == v11) || v92 < *(v11 - 8)))
      {
LABEL_36:
        if (*(this + 99))
        {
          return sub_22120E388(&v91);
        }

        v33 = v92;
        if (v92 >= v93 || v94 && (v34 = v94[1], *v94 != v34) && v92 >= *(v34 - 8))
        {
          v35 = *(this + 15);
          if (!v35 || *v35 == v35[1])
          {
            return sub_22120E388(&v91);
          }
        }

        v36 = *(*v91 + v92++);
        switch(v36)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A54C8;
            v86 = v33;
            v37 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v37);
            goto LABEL_47;
          case 13:
          case 14:
          case 15:
          case 70:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A56D8;
            v86 = v33;
            v40 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v40);
LABEL_47:
            TSCEASTElementWithChildren::~TSCEASTElementWithChildren(&v85);
            goto LABEL_48;
          case 16:
          case 17:
          case 33:
          case 34:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A5D08;
            v86 = v33;
            v38 = TSCEASTFunctionElement::size(&v85, this, a3, a4, a5);
            v39 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v39);
            goto LABEL_66;
          case 18:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A5998;
            v86 = v33;
            v51 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v51);
            goto LABEL_58;
          case 19:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A5A48;
            v86 = v33;
            v53 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v53);
            goto LABEL_70;
          case 20:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A58E8;
            v86 = v33;
            v38 = TSCEASTStringElement::size(&v85, this, a3, a4, a5);
            v55 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v55);
            break;
          case 21:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A5AF8;
            v86 = v33;
            v38 = TSCEASTDateElement::size(&v85, this, a3, a4, a5);
            v52 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v52);
            break;
          case 22:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A5BA8;
            v86 = v33;
            v38 = TSCEASTDurationElement::size();
            v54 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v54);
            break;
          case 23:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A5838;
            v86 = v33;
            v50 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v50);
            goto LABEL_48;
          case 24:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A5C58;
            v86 = v33;
            v61 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v61);
            goto LABEL_70;
          case 25:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A6208;
            v86 = v33;
            v59 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v59);
            goto LABEL_72;
          case 26:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A62B8;
            v86 = v33;
            v62 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v62);
LABEL_72:
            TSCEASTElementWithChildren::~TSCEASTElementWithChildren(&v85);
            goto LABEL_74;
          case 27:
          case 56:
            operator new();
          case 28:
          case 45:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A5578;
            v86 = v33;
            v38 = TSCEASTColonElement::size(&v85, this);
            v45 = (*(*this + 40))(this, &v85);
            (*(*this + 72))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v45);
            goto LABEL_66;
          case 29:
          case 36:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A5F18;
            v86 = v33;
            v38 = TSCEASTRelativeCoordRefElement::size(&v85, this);
            v47 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v47);
            break;
          case 30:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A5DB8;
            v86 = v33;
            v38 = TSCEASTUnknownFunctionElement::size(&v85, this, a3, a4, a5);
            v56 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v56);
            goto LABEL_66;
          case 31:
          case 32:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A5E68;
            v86 = v33;
            v38 = TSCEASTWhitespaceElement::size(&v85, this, a3, a4, a5);
            v46 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v46);
            goto LABEL_66;
          case 50:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A60A8;
            v86 = v33;
            v38 = TSCEASTUidReferenceElement::size(&v85, this);
            v60 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v60);
            break;
          case 52:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A6418;
            v86 = v33;
            v38 = TSCEASTLetBindElement::size(&v85, this, a3, a4, a5);
            v58 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v58);
            goto LABEL_66;
          case 53:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A64C8;
            v86 = v33;
            v63 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v63);
LABEL_74:
            v38 = 5;
            break;
          case 54:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A6578;
            v86 = v33;
            v64 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v64);
LABEL_48:
            v38 = 1;
            break;
          case 55:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A6628;
            v86 = v33;
            v38 = TSCEASTLambdaElement::size(&v85, this, a3, a4, a5);
            v48 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v48);
LABEL_66:
            TSCEASTElementWithChildren::~TSCEASTElementWithChildren(&v85);
            break;
          case 63:
          case 64:
          case 65:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A5FE8;
            v86 = v33;
            v44 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v44);
LABEL_58:
            v38 = 17;
            break;
          case 66:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A66D8;
            v86 = v33;
            v38 = TSCEASTCategoryRefElement::size(&v85, this, a3, a4, a5);
            v66 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v66);
            break;
          case 67:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A5628;
            v86 = v33;
            v38 = TSCEASTColonTractElement::size(&v85, this, a3, a4, a5);
            v49 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v49);
            break;
          case 68:
            v87 = v87 & 0xF8 | 2;
            v85 = &unk_2834A6158;
            v86 = v33;
            v38 = TSCEASTViewTractRefElement::size(&v85, this);
            v65 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v65);
            break;
          case 69:
            v87 = v87 & 0xF8 | 2;
            v89 = 0;
            v90 = 0;
            v88 = 0;
            v85 = &unk_2834A5788;
            v86 = v33;
            v57 = (*(*this + 40))(this, &v85);
            TSCEASTStreamIterator::appendElement(this, v57);
            TSCEASTElementWithChildren::~TSCEASTElementWithChildren(&v85);
LABEL_70:
            v38 = 2;
            break;
          default:
            v67 = MEMORY[0x277D81150];
            v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v8, a4, a5);
            v68 = v8;
            v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTStreamIterator.mm", v70, v71);
            v73 = v92;
            v78 = TSCEASTNodeArray::codeString(*(this + 2), v74, v75, v76, v77);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v79, v84, v72, 398, 0, "%d is not a valid node tag, seen at offset: %lu, seen in %{public}@", v36, v73, v78);

            objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v80, v81, v82, v83);
            v8 = v68;
            v38 = 0;
            *(this + 99) = 1;
            break;
        }

        sub_22120C7F0(&v91, (v38 + v33), v41, v42, v43);
        if ((*(*this + 320))(this))
        {
          *(this + 99) = 1;
          return sub_22120E388(&v91);
        }

        if (*(this + 99))
        {
          return sub_22120E388(&v91);
        }

        goto LABEL_9;
      }

      v12 = *(this + 15);
      if (!v12 || (v13 = v12[1], *v12 == v13))
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v13 - 8);
        v12[1] = v13 - 8;
      }

      v15 = TSCEASTElement::tag(v14, this);
      if (v15 == 56)
      {
        break;
      }

      if (v15 == 52)
      {
        if (!v14 || (*(this + 96) & 1) != 0)
        {
          goto LABEL_34;
        }

LABEL_32:
        v20 = TSCEASTStreamIterator::popEmbeddedSizeOffset(this, v16, v17, v18, v19);
        *(**(this + 13) + v20) = *(*(this + 13) + 8) - v20 - 8;
        goto LABEL_34;
      }

      if (v15 == 27)
      {
        break;
      }

      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v8, v18, v19);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTStreamIterator.mm", v24, v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 175, 0, "Unexpected incomplete embedded node type found");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
LABEL_34:
      TSCEASTNodeArrayReader::popEndPoint(&v91);
      v32 = *(this + 15);
      if (!v32 || *v32 == v32[1])
      {
        goto LABEL_36;
      }
    }

    if (!v14)
    {
      goto LABEL_34;
    }

    (*(*this + 192))(this, v14);
    if (*(this + 96))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  return sub_22120E388(&v91);
}

void sub_2212D28C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_22120E388(va);
  _Unwind_Resume(a1);
}

void sub_2212D35A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_2212D3700(uint64_t a1, void *a2)
{
  v3 = a2;
  TSCEFormat::TSCEFormat(&v8, v3, 0);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    TSCEFormat::operator=(*(*(a1 + 40) + 8) + 48, &v8);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    TSCEFormat::formatByMergingWithFormat((*(*(a1 + 40) + 8) + 48), &v8, v4, v5, v6, v7);
    TSCEFormat::operator=(*(*(a1 + 40) + 8) + 48, v7);
  }
}

uint64_t sub_2212D4278(uint64_t a1, TSUIndexRange *this)
{
  v2 = *(a1 + 32);
  v4 = TSUIndexRange::asNSRange(this);

  return objc_msgSend_addIndexesInRange_(v2, v3, v4, v3, v5);
}

uint64_t sub_2212D44EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v6 = objc_msgSend_lookupKeyForRowUID_(*(a1 + 32), a2, v11, a4, a5);
  return objc_msgSend_addIndex_(*(a1 + 40), v7, v6, v8, v9);
}

void sub_2212D464C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  v10 = *(a1 + 40);
  v11 = *(v10 + 40);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *(v10 + 32);
  v13 = *v11;
  if (v12 < *v11)
  {
    *(v10 + 32) = v12 + 1;
    objc_msgSend_encodeToArchive_(v5, v6, *&v11[2 * v12 + 2], v7, v8);
    goto LABEL_8;
  }

  if (v13 == *(v10 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v10 + 24));
    v11 = *(v10 + 40);
    v13 = *v11;
  }

  *v11 = v13 + 1;
  v17 = MEMORY[0x223DA02D0](*(v10 + 24));
  v18 = *(v10 + 32);
  v19 = *(v10 + 40) + 8 * v18;
  *(v10 + 32) = v18 + 1;
  *(v19 + 8) = v17;
  objc_msgSend_encodeToArchive_(v5, v20, v17, v21, v22);
LABEL_8:
  if (!*(a1 + 32))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTGroupNodeFormatManager encodeToArchive:forGroupBy:backwardCompat:]_block_invoke", v15, v16);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNodeFormatManager.mm", v26, v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v28, 314, 0, "invalid nil value for '%{public}s'", "groupBy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  MEMORY[0x223D9F7A0](&v58, v9);
  v34 = *(a1 + 40);
  v35 = *(v34 + 88);
  if (!v35)
  {
    goto LABEL_15;
  }

  v36 = *(v34 + 80);
  v37 = *v35;
  if (v36 >= *v35)
  {
    if (v37 != *(v34 + 84))
    {
LABEL_16:
      *v35 = v37 + 1;
      v38 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(*(v34 + 72));
      v39 = *(v34 + 80);
      v40 = *(v34 + 88) + 8 * v39;
      *(v34 + 80) = v39 + 1;
      *(v40 + 8) = v38;
      goto LABEL_17;
    }

LABEL_15:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v34 + 72));
    v35 = *(v34 + 88);
    v37 = *v35;
    goto LABEL_16;
  }

  *(v34 + 80) = v36 + 1;
LABEL_17:
  sub_22126A644();
  if (*(a1 + 48) == 1 && (objc_msgSend_isForPivotTable(*(a1 + 32), v41, v42, v43, v44) & 1) == 0)
  {
    v45 = *(a1 + 40);
    v46 = *(v45 + 64);
    if (!v46)
    {
      goto LABEL_24;
    }

    v47 = *(v45 + 56);
    v48 = *v46;
    if (v47 < *v46)
    {
      *(v45 + 56) = v47 + 1;
      v49 = *&v46[2 * v47 + 2];
LABEL_26:
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_2212D49A8;
      v55[3] = &unk_278462B20;
      v56 = *(a1 + 32);
      v57 = v49;
      objc_msgSend_enumerateIndexesUsingBlock_(v9, v52, v55, v53, v54);

      goto LABEL_27;
    }

    if (v48 == *(v45 + 60))
    {
LABEL_24:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v45 + 48));
      v46 = *(v45 + 64);
      v48 = *v46;
    }

    *v46 = v48 + 1;
    v49 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive>(*(v45 + 48));
    v50 = *(v45 + 56);
    v51 = *(v45 + 64) + 8 * v50;
    *(v45 + 56) = v50 + 1;
    *(v51 + 8) = v49;
    goto LABEL_26;
  }

LABEL_27:
  TSUIndexSet::~TSUIndexSet(&v58);
}

void sub_2212D4954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, TSUIndexSet *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  TSUIndexSet::~TSUIndexSet(&a17);

  _Unwind_Resume(a1);
}

uint64_t sub_2212D49A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15._lower = objc_msgSend_rowUIDForLookupKey_(*(a1 + 32), a2, a2, a4, a5);
  v15._upper = v6;
  v7 = *(a1 + 40);
  v8 = *(v7 + 32);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *(v7 + 24);
  v10 = *v8;
  if (v9 >= *v8)
  {
    if (v10 != *(v7 + 28))
    {
LABEL_7:
      *v8 = v10 + 1;
      v11 = MEMORY[0x223DA0360](*(v7 + 16));
      v12 = *(v7 + 24);
      v13 = *(v7 + 32) + 8 * v12;
      *(v7 + 24) = v12 + 1;
      *(v13 + 8) = v11;
      return TSKUIDStruct::saveToMessage(&v15, v11);
    }

LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v7 + 16));
    v8 = *(v7 + 32);
    v10 = *v8;
    goto LABEL_7;
  }

  *(v7 + 24) = v9 + 1;
  v11 = *&v8[2 * v9 + 2];
  return TSKUIDStruct::saveToMessage(&v15, v11);
}

void sub_2212D5AF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, a3, a4, a5);
  byte_27CFB44B8 = objc_msgSend_tokenizeFormulaStringLiterals(v9, v5, v6, v7, v8);
}

void sub_2212D61D8(uint64_t a1, char *__s)
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

void sub_2212D62D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSTParser::TSTParser(TSTParser *this, TSCECalculationEngine *a2, TSWPStorage *a3, TSCEParseOptionsContext *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  *this = v10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = v9;
  *(this + 5) = 0;
  v15 = objc_msgSend_documentLocale(v10, v11, v12, v13, v14);
  v20 = objc_msgSend_listSeparator(v15, v16, v17, v18, v19);
  isEqualToString = objc_msgSend_isEqualToString_(v20, v21, @",", v22, v23);

  if (isEqualToString)
  {
    operator new();
  }

  operator new();
}

void sub_2212D64B0(_Unwind_Exception *a1)
{
  v7 = v6;
  MEMORY[0x223DA1450](v7, 0x10B3C40B8042996);

  _Unwind_Resume(a1);
}

void TSTParser::~TSTParser(TSTParser *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

id TSTParser::locale(void **this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_documentLocale(*this, a2, a3, a4, a5);

  return v5;
}

void *TSTParser::parse(TSTParser *this, TSTTableInfo *a2, const TSUModelCellCoord *a3)
{
  v5 = a2;
  dword_27CFB6C78 = 0;
  v10 = objc_autoreleasePoolPush();
  if (v5)
  {
    v11 = objc_msgSend_context(v5, v6, v7, v8, v9);
    v16 = objc_msgSend_objectLocale(v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = objc_msgSend_documentLocale(*this, v6, v7, v8, v9);
  }

  v17 = *(this + 3);
  *(this + 3) = 0;

  v18 = sub_2216F2CB8(this);
  v23 = *(this + 3);
  if (v18 == 1)
  {
    if (!v23)
    {
      v24 = sub_2212B889C(*(this + 1));
      if (objc_msgSend_length(v24, v25, v26, v27, v28))
      {
        v29 = sub_2212B889C(*(this + 1));
        v33 = objc_msgSend_characterAtIndex_(v29, v30, 0, v31, v32);
        isFormulaEqualsCharacter = objc_msgSend_isFormulaEqualsCharacter_(TSTFormula, v34, v33, v35, v36);

        if (isFormulaEqualsCharacter)
        {
          v42 = objc_msgSend_syntaxLeadingEqualError(TSCEError, v38, v39, v40, v41);
LABEL_15:
          v62 = *(this + 3);
          *(this + 3) = v42;

          goto LABEL_16;
        }
      }

      else
      {
      }

      v42 = objc_msgSend_syntaxError(TSCEError, v38, v39, v40, v41);
      goto LABEL_15;
    }

LABEL_16:
    isSyntaxError = 1;
    goto LABEL_17;
  }

  if (v23)
  {
    goto LABEL_16;
  }

  v43 = objc_msgSend_convertEmptyArgumentsToPlaceholders(*(this + 2), v19, v20, v21, v22);
  v44 = *(this + 2);
  *(this + 2) = v43;

  TSCESymbolTable::TSCESymbolTable(&v71, v16);
  v50 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(*(this + 2), v45, *this, v5, *a3, 0, &v71, 0);
  if (v50)
  {
    TSCESymbolTable::TSCESymbolTable(&v70, v16);
    v54 = objc_msgSend_variableUsageErrorWithSymbolTable_(v50, v51, &v70, v52, v53);
    v55 = *(this + 3);
    *(this + 3) = v54;

    v60 = *(this + 3);
    if (v60)
    {
      isSyntaxError = objc_msgSend_isSyntaxError(v60, v56, v57, v58, v59);
    }

    else
    {
      isSyntaxError = 0;
    }

    p_undoSymbolTableMaps = &v70._undoSymbolTableMaps;
    sub_2210C8268(&p_undoSymbolTableMaps);
    sub_221087B80(&v70._identifierMap);
    sub_2210C82EC(&v70._symbolTableMap);
  }

  else
  {
    v66 = objc_msgSend_syntaxError(TSCEError, v46, v47, v48, v49);
    v67 = *(this + 3);
    *(this + 3) = v66;

    isSyntaxError = *(this + 3) != 0;
  }

  v68 = *(this + 2);
  *(this + 2) = v50;
  v69 = v50;

  v70._locale = &v71._undoSymbolTableMaps;
  sub_2210C8268(&v70);
  sub_221087B80(&v71._identifierMap);
  sub_2210C82EC(&v71._symbolTableMap);

LABEL_17:
  objc_autoreleasePoolPop(v10);
  if (isSyntaxError)
  {
    v63 = 0;
  }

  else
  {
    v63 = *(this + 2);
  }

  v64 = v63;

  return v63;
}

void sub_2212D68B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_2210C8214(va);
  _Unwind_Resume(a1);
}

void sub_2212D696C(id *a1)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2212D6AB8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v6, a2, a2, a3, a5);
    v8 = v11[0];
    v7 = v11[1];
    v10 = *(&v12 + 1);
    v9 = v13;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v12 = 0u;
    v13 = 0u;
    *v11 = 0u;
  }

  if (((v9 - v10) >> 4) * ((v7 - v8) >> 4) && (v8 != v7 || v10 != v9))
  {
    sub_2210BAF64((*(a1 + 40) + 8), v11);
  }

  if (*(&v12 + 1))
  {
    *&v13 = *(&v12 + 1);
    operator delete(*(&v12 + 1));
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_2212D6CA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_columnRowUIDMap(*(a1 + 32), a2, a3, a4, a5);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_cellUIDRangeForCellRange_(v8, v9, a2, a3, v10);
  }

  else
  {
    *__p = 0u;
    v15 = 0u;
    *v13 = 0u;
  }

  v12 = __p[1];
  if (((v15 - __p[1]) >> 4) * ((v13[1] - v13[0]) >> 4) && (v13[0] != v13[1] || __p[1] != v15))
  {
    sub_2210BAF64((*(a1 + 40) + 8), v13);
    v12 = __p[1];
  }

  if (v12)
  {
    *&v15 = v12;
    operator delete(v12);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}

void sub_2212D7010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_2212D7224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2212D728C(__n128 *a1, __n128 *a2)
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

void sub_2212D72B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2212D72C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v6 = v4[7];
  v5 = v4[8];
  if (v6 >= v5)
  {
    v8 = v4[6];
    v9 = (v6 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_22107C148();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_221086F74((v4 + 6), v12);
    }

    v13 = (16 * v9);
    *v13 = a2;
    v13[1] = a3;
    v7 = 16 * v9 + 16;
    v14 = v4[6];
    v15 = v4[7] - v14;
    v16 = (16 * v9 - v15);
    memcpy(v16, v14, v15);
    v17 = v4[6];
    v4[6] = v16;
    v4[7] = v7;
    v4[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = a2;
    v6[1] = a3;
    v7 = (v6 + 2);
  }

  v4[7] = v7;
}

void sub_2212D7554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  a22 = (v24 - 56);
  sub_2210BC30C(&a22);

  _Unwind_Resume(a1);
}

void sub_2212D76D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212D79F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose((v24 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2212D7A68(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*a3 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_2212D7C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2210BDEC0(&a17);

  _Unwind_Resume(a1);
}

void sub_2212D7DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2210BDEC0(&a17);

  _Unwind_Resume(a1);
}

void sub_2212D7FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  sub_22109DBB8(&__p);
  sub_2210BC30C(&__p);
  __p = (v19 - 88);
  sub_2210BC30C(&__p);
  _Unwind_Resume(a1);
}

void sub_2212D81A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_22109DBB8(&a9);
  MEMORY[0x223D9FC70](&a16);

  _Unwind_Resume(a1);
}

uint64_t sub_2212D82F0(uint64_t a1, void *a2, uint64_t *a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_221086EBC(a2, *a3, a3[1], (a3[1] - *a3) >> 4);
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return sub_221086EBC((a2 + 3), a3[3], a3[4], (a3[4] - a3[3]) >> 4);
}

void sub_2212D834C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2212D8368(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC8C4(result, a4);
  }

  return result;
}

void sub_2212D83D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2210BC30C(&a9);
  _Unwind_Resume(a1);
}

void *sub_2212D83F0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_2212D82F0(a1, v4, v6);
      v6 += 6;
      v4 = v12 + 6;
      v12 += 6;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_2210BC734(v9);
  return v4;
}

void *sub_2212D849C(void *result, char *__src, char *a3, unint64_t a4)
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
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 16;
        *v15 = v16;
        v15 += 16;
        v14 += 16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_2212D94A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  TST::DateNodeArchive::~DateNodeArchive((v14 + 40));
  TST::DateNodeArchive::~DateNodeArchive(va);

  _Unwind_Resume(a1);
}

void sub_2212D94D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    v6 = *v6;
  }

  v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, a4, a5);
  v11 = objc_msgSend_objectLocale(*(a1 + 32), v7, v8, v9, v10);
  v12 = TSUCreateDateFromString();
  v13 = *(a1 + 32);
  v14 = *(v13 + 136);
  *(v13 + 136) = v12;

  *(*(a1 + 32) + 128) = 0;
  if ((*(*(a1 + 88) + 16) & 2) != 0)
  {
    v27 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v27 + 23) < 0)
    {
      v27 = *v27;
    }

    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v27, v17, v18);
    v29 = *(a1 + 32);
    v20 = *(v29 + 144);
    *(v29 + 144) = v28;
  }

  else
  {
    v19 = MEMORY[0x277D811A0];
    v20 = objc_msgSend_objectLocale(*(a1 + 32), v15, v16, v17, v18);
    v24 = objc_msgSend_defaultDateTimeFormatForLocale_(v19, v21, v20, v22, v23);
    v25 = *(a1 + 32);
    v26 = *(v25 + 144);
    *(v25 + 144) = v24;
  }
}

void sub_2212D9810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2212DBD48(_Unwind_Exception *a1)
{
  v7 = v3;

  _Unwind_Resume(a1);
}

void sub_2212DD1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2212DD2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v6;
  v7 = objc_msgSend_translator(*(a1 + 32), a2, a3, a4, a5);
  v11 = v7;
  if (v7)
  {
    objc_msgSend_chromeRangeRefForViewRangeRef_(v7, v8, v23, v9, v10);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  objc_msgSend_setAllowTableName_(*(a1 + 40), v12, (*(*(*(a1 + 64) + 8) + 24) & 1) == 0, v13, v14);
  v20 = objc_msgSend_nameForChromeRangeRef_namingContext_(*(a1 + 48), v15, v22, *(a1 + 40), v16);
  if (v20)
  {
    v21 = *(a1 + 56);
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      objc_msgSend_appendFormat_(v21, v17, @" | %@", v18, v19, v20);
    }

    else
    {
      objc_msgSend_appendString_(v21, v17, v20, v18, v19);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void sub_2212DF3A8(uint64_t a1, char *__s)
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

void sub_2212DF4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2212DFC38(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    sub_2212E11A0(a1, *(a2 + 16), 0);
  }

  return a1;
}

uint64_t sub_2212DFCA0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    sub_2212E11A0(a1, *(a2 + 16), 0);
  }

  return a1;
}

void sub_2212DFD38(void *a1, unsigned __int16 a2, TSCECellCoordSet *a3)
{
  v5 = a2;
  v6 = &v5;
  v4 = sub_2212E13E8(a1, &v5);
  TSCECellCoordSet::addCellCoords((v4 + 3), a3);
}

void sub_2212DFD90(void *a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_2212DFD38(a1, *(i + 8), (i + 3));
  }
}

uint64_t **sub_2212DFDD0(void *a1, uint64_t a2)
{
  result = sub_2210C3024(a1, (a2 + 8));
  if (result)
  {
    v5 = result;
    TSCECellCoordSet::removeCellCoord((result + 3), a2);
    result = TSCECellCoordSet::isEmpty((v5 + 3));
    if (result)
    {

      return sub_2212E10A8(a1, (a2 + 8));
    }
  }

  return result;
}

void sub_2212DFE4C(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_2212E0068;
  v2[3] = &unk_27845F588;
  v2[4] = a1;
  sub_2212DFEC0(a2, v2);
}

void sub_2212DFEC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4012000000;
  v18 = sub_2212E0328;
  v19 = nullsub_35;
  v20 = &unk_22188E88F;
  v4 = (a1 + 16);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    *(v16 + 28) = *(v4 + 8);
    v5 = objc_autoreleasePoolPush();
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_2212E0340;
    v7[3] = &unk_278462BE8;
    v9 = &v15;
    v8 = v3;
    v10 = &v11;
    TSCECellCoordSet::enumerateCoordsUsingBlock(v4 + 3, v7);
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
    objc_autoreleasePoolPop(v5);
  }

  while ((v6 & 1) == 0);
  _Block_object_dispose(&v15, 8);
}

void sub_2212E0030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t **sub_2212E0070(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  result = sub_2210C3024(a1, &v3);
  if (result)
  {
    return !TSCECellCoordSet::isEmpty((result + 3));
  }

  return result;
}

uint64_t **sub_2212E00A8(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  v4 = &v3;
  return sub_2212E13E8(a1, &v3) + 3;
}

unint64_t sub_2212E00EC(uint64_t a1)
{
  v1 = (a1 + 16);
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    if (!TSCECellCoordSet::isEmpty((v1 + 3)))
    {
      return TSCECellCoordSet::anyCellCoord((v1 + 3));
    }
  }

  return 0x7FFF7FFFFFFFLL;
}

unint64_t sub_2212E014C(void *a1)
{
  v4 = sub_2212E00EC(a1);
  v5 = v2;
  sub_2212DFDD0(a1, &v4);
  return v4;
}

uint64_t **sub_2212E0198(void *a1, uint64_t a2)
{
  result = sub_2210C3024(a1, (a2 + 8));
  if (result)
  {
    v4 = (result + 3);

    return TSCECellCoordSet::containsCellCoord(v4, a2);
  }

  return result;
}

uint64_t **sub_2212E01E8(void *a1, uint64_t a2)
{
  result = sub_2210C3024(a1, (a2 + 16));
  if (result)
  {
    v4 = (result + 3);

    return TSCECellCoordSet::intersectsRange(v4, a2);
  }

  return result;
}

uint64_t sub_2212E0238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v2 += TSCECellCoordSet::count((v1 + 3));
    v1 = *v1;
  }

  while (v1);
  return v2;
}

BOOL sub_2212E0280(uint64_t a1)
{
  v1 = (a1 + 16);
  do
  {
    v1 = *v1;
  }

  while (v1 && TSCECellCoordSet::isEmpty((v1 + 3)));
  return v1 == 0;
}

void sub_2212E02BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  for (i = *(a1 + 16); i; i = *i)
  {
    if (!TSCECellCoordSet::isEmpty((i + 3)))
    {
      sub_221266D14(a2, i + 8);
    }
  }
}

void sub_2212E030C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2212E0328(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

uint64_t sub_2212E0340(void *a1, void *a2, _BYTE *a3)
{
  *(*(a1[5] + 8) + 48) = *a2;
  result = (*(a1[4] + 16))();
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void sub_2212E03B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  v4 = (a1 + 16);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v3[2](v3, *(v4 + 8), (v4 + 3), &v5);
  }

  while ((v5 & 1) == 0);
}

void sub_2212E0430(uint64_t a1@<X0>, void *a2@<X1>, TSCECellRefSet *a3@<X8>)
{
  v5 = a2;
  v9 = v5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4812000000;
  v27 = sub_2212E061C;
  v28 = sub_2212E0628;
  v29 = &unk_22188E88F;
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  if (v5)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2212E0634;
    v21[3] = &unk_278462C10;
    v22 = v5;
    v23 = &v24;
    sub_2212E03B0(a1, v21);
  }

  else
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSCECellRefSet TSCEInternalCellRefSet::asCellRefSet(TSCEDependencyTracker *__strong) const", v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEInternalCellRefSet.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 212, 0, "Need a dependency tracker to do this conversion");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  TSCECellRefSet::TSCECellRefSet(a3, v25 + 2);
  _Block_object_dispose(&v24, 8);
  sub_22107C800(&v30, v31[0]);
}

void sub_2212E05CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a16, 8);
  sub_22107C800(v26 + 48, a23);

  _Unwind_Resume(a1);
}

void sub_2212E0634(uint64_t a1, const char *a2, TSCECellCoordSet *a3, uint64_t a4, uint64_t a5)
{
  v8._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(a1 + 32), a2, a2, a4, a5);
  v8._upper = v7;
  if (v8._lower | v7)
  {
    TSCECellRefSet::addCellRefs((*(*(a1 + 40) + 8) + 48), &v8, a3);
  }
}

void sub_2212E0690(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      v4 = *(v2 + 8);
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
      v11 = *(v8 + 16);
      *(v8 + 32) = v4;
      *(v8 + 16) = v11 | 3;
      v12 = *(v8 + 24);
      if (!v12)
      {
        v13 = *(v8 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v13);
        *(v8 + 24) = v12;
      }

      TSCECellCoordSet::encodeToArchive((v2 + 3), v12);
      v2 = *v2;
      if (!v2)
      {
        return;
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
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive_OwnerEntry>(*(a2 + 16));
    v9 = *(a2 + 24);
    v10 = *(a2 + 32) + 8 * v9;
    *(a2 + 24) = v9 + 1;
    *(v10 + 8) = v8;
    goto LABEL_9;
  }
}

void sub_2212E0790(void *a1, uint64_t a2)
{
  sub_2212E1650(a1);
  v4 = *(a2 + 24);
  if (v4 >= 1)
  {
    v5 = 8;
    do
    {
      v6 = *(*(a2 + 32) + v5);
      v9 = *(v6 + 32);
      v10 = &v9;
      v7 = sub_2212E13E8(a1, &v9);
      if (*(v6 + 24))
      {
        v8 = *(v6 + 24);
      }

      else
      {
        v8 = &TSCE::_CellCoordSetArchive_default_instance_;
      }

      TSCECellCoordSet::loadFromArchive((v7 + 3), v8);
      v5 += 8;
      --v4;
    }

    while (v4);
  }
}

void sub_2212E0848(uint64_t a1@<X0>, void *a2@<X1>, TSCECellRefSet *a3@<X8>)
{
  v5 = a2;
  v6 = v5;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = sub_2212E061C;
  v15 = sub_2212E0628;
  v16 = &unk_22188E88F;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2212E0A38;
    v8[3] = &unk_278462C60;
    v9 = v5;
    v10 = &v11;
    sub_2212E09A4(a1, v8);

    v7 = v12;
  }

  else
  {
    v7 = &v11;
  }

  TSCECellRefSet::TSCECellRefSet(a3, v7 + 2);
  _Block_object_dispose(&v11, 8);
  sub_22107C800(&v17, v18[0]);
}

void sub_2212E096C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  _Block_object_dispose(&a16, 8);
  sub_22107C800(v24 + 48, a23);

  _Unwind_Resume(a1);
}

void sub_2212E09A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = (a1 + 16);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v3[2](v3, (v5 + 2), (v5 + 3), &v6);
  }

  while ((v6 & 1) == 0);
  objc_autoreleasePoolPop(v4);
}

void sub_2212E0A38(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_msgSend_dependencyTracker(*(a1 + 32), a2, a3, a4, a5);
  v12 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(v8, v9, *a2, v10, v11);
  v14 = v13;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2212E0B08;
  v15[3] = &unk_278462C38;
  v15[4] = *(a1 + 40);
  v15[5] = v12;
  v15[6] = v14;
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v15);
}

TSCECellCoordSet *sub_2212E0B08(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4.coordinate.row = *a2;
  v4.coordinate.column = *(a2 + 4);
  v4._tableUID = *(a1 + 40);
  return TSCECellRefSet::addCellRef(v2 + 2, &v4);
}

uint64_t sub_2212E0D78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 40);
  v7 = *a2 & 0xFFFFFFFFFFFFLL;
  v8 = v5;
  return objc_msgSend_addCellRef_(*(a1 + 32), a2, &v7, a4, a5);
}

uint64_t sub_2212E0EB8(uint64_t a1, uint64_t *a2)
{
  sub_221123474((*(a1 + 32) + 48), a2);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t *sub_2212E10A8(void *a1, unsigned __int16 *a2)
{
  result = sub_2210C3024(a1, a2);
  if (result)
  {
    sub_2212E10E0(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2212E10E0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      sub_22107C860((v3 + 5), v3[6]);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_2212E1140(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C860((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_2212E11A0(void *a1, uint64_t *a2, uint64_t *a3)
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
        *(v8 + 8) = *(v4 + 8);
        TSCECellCoordSet::operator=((v8 + 3), (v4 + 3));
        v10 = *v8;
        v11 = *(v8 + 8);
        v8[1] = v11;
        v12 = sub_2211DC0DC(a1, v11, v8 + 8);
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

    sub_221122780(a1, v10);
  }

  if (v4 != a3)
  {
    sub_2212E12C0();
  }
}

void sub_2212E1290(void *a1)
{
  __cxa_begin_catch(a1);
  sub_221122780(v1, v2);
  __cxa_rethrow();
}

void sub_2212E131C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **a10, uint64_t a11)
{
  if (a10)
  {
    sub_2212E1140(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2212E13CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2212E1140(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_2212E13E8(void *a1, unsigned __int16 *a2)
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

void sub_2212E1650(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221122780(a1, *(a1 + 16));
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

uint64_t **sub_2212E16AC(void *a1, uint64_t *a2)
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

void sub_2212E1B5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_2212E22F0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    os_unfair_lock_unlock(*a1);
    *(a1 + 8) = 0;
  }

  return a1;
}

id sub_2212E2EB8(void *a1, id *a2)
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

void sub_2212E2F98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void *sub_2212E30F4(void *result, uint64_t *a2)
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

void sub_2212E31D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2212E351C(void *a1, unsigned int *a2)
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

void sub_2212E376C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2212E3780(void *a1, unsigned int *a2)
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

void sub_2212E39D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2212E4404(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_2212E44A8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_2212E44A8(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 8);
        if (v6 >= v9 && (v6 != v9 || v7 >= *(v8 + 18)))
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_13;
        }
      }

      if (v9 >= v6 && *(v8 + 18) >= v7)
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

LABEL_13:
  *a2 = v8;
  return result;
}

uint64_t sub_2212E4518(uint64_t a1, TSUCellRect *this)
{
  v2 = *sub_2212E45AC(a1, &v4, this);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_2212E45AC(uint64_t a1, void *a2, TSUCellRect *this)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = a1;
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_2212E4648(v7, this, (v4 + 28)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (!sub_2212E4648(v7, (v8 + 28), this))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_10:
  *a2 = v8;
  return v5;
}

uint64_t sub_2212E4648(int a1, TSUCellRect *this, TSUCellRect *a3)
{
  v3 = this->size.numberOfColumns * this->size.numberOfRows - a3->size.numberOfColumns * a3->size.numberOfRows;
  if (!v3)
  {
    Row = TSUCellRect::firstRow(this);
    v7 = TSUCellRect::firstRow(a3);
    v3 = Row - v7;
    if (Row == v7)
    {
      Column = TSUCellRect::firstColumn(this);
      v9 = TSUCellRect::firstColumn(a3);
      v3 = Column - v9;
      if (Column == v9)
      {
        v10 = TSUCellRect::numRows(this);
        v3 = v10 - TSUCellRect::numRows(a3);
      }
    }
  }

  return v3 >> 31;
}

uint64_t *sub_2212E46E0(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = v2;
  do
  {
    v8 = *(v3 + 8);
    if (v8 >= v5)
    {
      if (v8 == v5)
      {
        v9 = *(v3 + 18);
        v10 = v9 >= v6;
        v11 = v9 < v6;
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
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 8);
  if (v5 < v12 || v5 == v12 && v6 < *(v7 + 18))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_2212E4768(uint64_t **a1, TSUCellRect *a2)
{
  v3 = sub_2212E47BC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_22112C950(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_2212E47BC(uint64_t a1, TSUCellRect *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1;
  v6 = a1 + 8;
  do
  {
    v7 = sub_2212E4648(v5, (v3 + 28), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_2212E4648(v5, a2, (v6 + 28)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_2212E484C(uint64_t **a1, unsigned int *a2)
{
  v3 = sub_2212E46E0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_2212E4894(a1, v3);
  return 1;
}

uint64_t *sub_2212E4894(uint64_t **a1, uint64_t a2)
{
  v3 = sub_22112C950(a1, a2);
  sub_2210BC9F8(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

void sub_2212E4940(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2212E4940(a1, *a2);
    sub_2212E4940(a1, a2[1]);
    sub_2210BC9F8((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

TSCEASTStreamIterator *sub_2212E5ECC(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *a1 = &unk_2834A4698;
  *(a1 + 17) = v9;
  *(a1 + 18) = v10;
  return a1;
}

uint64_t *sub_2212E5F64(uint64_t a1, TSKUIDStruct *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  tableUID = *a2;
  if (tableUID == 0uLL)
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  v7 = objc_msgSend_isForTable_(*(a1 + 136), a2, &tableUID, a4, a5);
  v8 = *(a1 + 136);
  v63 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  result = objc_msgSend_isForTable_(v8, v9, &v63, v10, v11);
  v17 = result;
  if ((v7 & 1) != 0 || result)
  {
    lower = a2[1]._lower;
    LOBYTE(v19) = HIBYTE(lower) != 0;
    isRows = objc_msgSend_isRows(*(a1 + 144), v13, v14, v15, v16);
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    if (isRows)
    {
      result = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v25 = lower;
      if ((lower & 0x1000000000000) != 0)
      {
        goto LABEL_29;
      }

      v25 = 0x7FFFFFFFLL;
      if (lower == 0x7FFFFFFF)
      {
        goto LABEL_29;
      }

      v26 = *result;
      if (lower < 1)
      {
        if (lower && v26 < -lower)
        {
          goto LABEL_29;
        }
      }

      else if (999999 - lower < v26)
      {
        goto LABEL_29;
      }

      if (v26 == 0x7FFFFFFF)
      {
        v58 = MEMORY[0x277D81150];
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v23, v24);
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v30, v31);
        v33 = NSStringFromTSUCellCoord();
        v34 = v60;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v35, v60, v32, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v33);
      }

      else
      {
        v25 = (v26 + lower);
        if (v25 < 0x7FFFFFFF)
        {
LABEL_29:
          v19 = HIWORD(lower) & 1;
          v45 = v25 == 0x7FFFFFFF;
LABEL_30:
          v54 = 0;
          if (v7 && !v45)
          {
            result = objc_msgSend_offsetForRowIndex_(*(a1 + 144), v22, v25, v23, v24);
            v54 = result;
          }

          if (v19 & 1 | ((v17 & 1) == 0))
          {
            v55 = 0;
          }

          else
          {
            result = objc_msgSend_offsetForRowIndex_(*(a1 + 144), v22, coordinate, v23, v24);
            v55 = result;
          }

          if (v54 | v55)
          {
            result = objc_msgSend_isRows(*(a1 + 144), v22, v25, v23, v24);
            LOWORD(v56) = 0x7FFF;
            if (WORD2(lower) != 0x7FFF)
            {
              LOWORD(v56) = v54 + WORD2(lower) - v55;
            }

            if (lower == 0x7FFFFFFF)
            {
              LODWORD(v57) = 0x7FFFFFFF;
            }

            else
            {
              LODWORD(v57) = v54 + lower - v55;
            }

            if (result)
            {
              v56 = HIDWORD(lower);
              v57 = v57;
            }

            else
            {
              v57 = lower;
            }

            a2[1]._lower = (v56 << 32) | lower & 0xFFFF000000000000 | v57;
          }

          return result;
        }

        v62 = MEMORY[0x277D81150];
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v23, v24);
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v47, v48);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v49, v34, v32, 191, 0, "overflow in row, input row: %d with host row: %lu", lower, v26);
      }

      result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
      v25 = 0x7FFFFFFFLL;
      goto LABEL_29;
    }

    result = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    if (HIBYTE(lower))
    {
      v27 = HIDWORD(lower);
    }

    else
    {
      LOWORD(v27) = 0x7FFF;
      if (WORD2(lower) != 0x7FFF)
      {
        v28 = *result;
        if ((lower >> 16) >> 16 < 1)
        {
          if ((lower & 0x800000000000) != 0 && -SWORD2(lower) > WORD2(v28))
          {
            goto LABEL_25;
          }
        }

        else if (999 - SWORD2(lower) < WORD2(v28))
        {
          goto LABEL_25;
        }

        LOWORD(v27) = WORD2(v28) + WORD2(lower);
        if ((WORD2(v28) + WORD2(lower)) >= 0x7FFFu)
        {
          v59 = MEMORY[0x277D81150];
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v23, v24);
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v37, v38);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v40, v61, v39, 168, 0, "overflow in column");

          result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
        }
      }
    }

LABEL_25:
    coordinate = WORD2(coordinate);
    v25 = v27;
    v45 = v27 == 0x7FFF;
    goto LABEL_30;
  }

  return result;
}

TSCEASTRelativeCoordRefElement *sub_2212E638C(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  TSCEASTRelativeCoordRefElement::crossTableRef(this, a1, a3, a4, a5, &v13);
  sub_2212E5F64(a1, &v13, v7, v8, v9);
  TSCEASTRelativeCoordRefElement::setRelativeCoord(this, &v14, a1, v10, v11);
  return this;
}

void sub_2212E63F4(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v5 = *v2;
  lower = v2[1]._lower;
  if (v1)
  {
    objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v1, v3, 3, &v5, v4);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  operator new();
}

TSCEASTColonTractElement *sub_2212E6520(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  tableUID._lower = objc_msgSend_tableUID(v7, v8, v9, v10, v11);
  tableUID._upper = v12;
  if (!(tableUID._lower | v12))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  }

  v13 = *(a1 + 17);
  *&__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
  v17 = objc_msgSend_isForTable_(v13, v14, &__p, v15, v16);
  v25 = objc_msgSend_isForTable_(*(a1 + 17), v18, &tableUID, v19, v20);
  if ((v17 | v25))
  {
    v30 = objc_msgSend_rewriteType(*(a1 + 17), v21, v22, v23, v24);
    v31 = *(a1 + 17);
    if (v30 == 4)
    {
      v32 = objc_msgSend_rowColumnInfo(v31, v26, v27, v28, v29);
      v37 = objc_msgSend_auxRowColumnInfo(v32, v33, v34, v35, v36);
    }

    else
    {
      v37 = objc_msgSend_rowColumnInfo(v31, v26, v27, v28, v29);
    }

    v276 = v37;
    *&__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
    v41 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v38, &__p, v39, v40);
    v278 = TSCEASTElement::mutableUndoTractList(this, a1);
    isRectangularRange = objc_msgSend_isRectangularRange(v41, v42, v43, v44, v45);
    v275 = objc_msgSend_preserveRectangular(v41, v47, v48, v49, v50);
    if (v17)
    {
      v55 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      v56 = sub_2212C7330(v55);
      if (!v25)
      {
LABEL_9:
        v57 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v56 = 0;
      if (!v25)
      {
        goto LABEL_9;
      }
    }

    if (objc_msgSend_isRows(v37, v51, v52, v53, v54))
    {
      v62 = objc_msgSend_rowOrColumnUids(v37, v58, v59, v60, v61);
      v67 = objc_msgSend_indexes(v62, v63, v64, v65, v66);
      inserted = objc_msgSend_insertRowGapsAtIndexes_(v41, v68, v67, v69, v70);
    }

    else
    {
      v62 = objc_msgSend_rowOrColumnUids(v37, v58, v59, v60, v61);
      v67 = objc_msgSend_indexes(v62, v72, v73, v74, v75);
      inserted = objc_msgSend_insertColumnGapsAtIndexes_(v41, v76, v67, v77, v78);
    }

    v57 = inserted;

    v56 |= v57;
LABEL_15:
    v79 = *(a1 + 17);
    v80 = sub_221089E8C(a1);
    v277 = objc_msgSend_coordMapperForTableUID_calcEngine_(v79, v81, &tableUID, v80, v82);

    isRows = objc_msgSend_isRows(v37, v83, v84, v85, v86);
    if (v277)
    {
      v92 = isRows;
    }

    else
    {
      v92 = 0;
    }

    if (v92 == 1 && (objc_msgSend_isIdentityMapping(v277, v88, v89, v90, v91) & 1) == 0)
    {
      v106 = sub_221089E8C(a1);
      v109 = objc_msgSend_resolverForTableUID_(v106, v107, tableUID._lower, tableUID._upper, v108);

      v114 = objc_msgSend_insertAtUid(*(a1 + 18), v110, v111, v112, v113);
      objc_msgSend_rowIndexForRowUID_(v109, v115, v114, v115, v116);
      v121 = objc_msgSend_rows(v41, v117, v118, v119, v120);
      LODWORD(v106) = TSUIndexSet::containsIndex(v121);
      v126 = objc_msgSend_insertOppositeUid(*(a1 + 18), v122, v123, v124, v125);
      objc_msgSend_rowIndexForRowUID_(v109, v127, v126, v127, v128);
      v133 = objc_msgSend_rows(v41, v129, v130, v131, v132);
      if ((v106 & TSUIndexSet::containsIndex(v133)) == 1)
      {
        v138 = objc_msgSend_rowOrColumnUids(v37, v134, v135, v136, v137);
        v143 = objc_msgSend_indexes(v138, v139, v140, v141, v142);
        MEMORY[0x223D9F7A0](&__p, v143);
        objc_msgSend_addRows_(v41, v144, &__p, v145, v146);
        TSUIndexSet::~TSUIndexSet(&__p);

LABEL_37:
        v56 = 1;
      }
    }

    else
    {
      if ((v57 & isRectangularRange & v275) != 1)
      {
LABEL_39:
        if (isRectangularRange)
        {
          v179 = objc_msgSend_insertAtUid(*(a1 + 18), v88, v89, v90, v91);
          if (v179 | v88)
          {
            v180 = objc_msgSend_tableUID(*(a1 + 17), v88, v89, v90, v91);
            if (tableUID == __PAIR128__(v88, v180) && objc_msgSend_rewriteType(*(a1 + 17), v88, v89, v90, v91) == 3 && (*(a1 + 98) & 1) == 0 && objc_msgSend_isRows(*(a1 + 18), v88, v89, v90, v91))
            {
              v181 = sub_221089E8C(a1);
              *&__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID;
              v185 = objc_msgSend_tableResolverForTableUID_(v181, v182, &__p, v183, v184);

              if (v185)
              {
                v190 = objc_msgSend_footerRangeCoordinate(v185, v186, v187, v188, v189);
                v192 = v191;
                coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
                if (coordinate.column >= WORD2(v190) && coordinate.row <= v192 && coordinate.row >= v190 && coordinate.column <= WORD2(v192))
                {
                  v194 = sub_221089E8C(a1);
                  v197 = objc_msgSend_resolverForTableUID_(v194, v195, tableUID._lower, tableUID._upper, v196);

                  if (v197)
                  {
                    v202 = objc_msgSend_insertAtUid(*(a1 + 18), v198, v199, v200, v201);
                    objc_msgSend_rowIndexForRowUID_(v197, v203, v202, v203, v204);
                    v209 = objc_msgSend_rows(v41, v205, v206, v207, v208);
                    if (TSUIndexSet::containsIndex(v209))
                    {
                      v214 = objc_msgSend_rowOrColumnUids(*(a1 + 18), v210, v211, v212, v213);
                      v219 = objc_msgSend_indexes(v214, v215, v216, v217, v218);
                      v224 = objc_msgSend_isRows(*(a1 + 18), v220, v221, v222, v223);
                      v227 = objc_msgSend_edgeExpandUsingIndexes_forRows_(v41, v225, v219, v224, v226);

                      v56 |= objc_msgSend_count(v227, v228, v229, v230, v231) != 0;
                    }
                  }
                }
              }
            }
          }
        }

        v232 = objc_msgSend_rewriteType(*(a1 + 17), v88, v89, v90, v91) != 4;
        v233 = *(a1 + 98);
        v242 = objc_msgSend_includedUidsTract(v278, v234, v235, v236, v237);
        if (v242)
        {
          v243 = objc_msgSend_tableUID(*(a1 + 17), v238, v239, v240, v241);
          if (tableUID._lower == v243)
          {
            v245 = v244;
            upper = tableUID._upper;

            if (upper == v245)
            {
              if (((v232 | v233) & 1) == 0)
              {
                if (((v56 | objc_msgSend_edgeExpandUsingMovingUids_tractList_(v41, v238, v276, v278, v241)) & 1) == 0)
                {
                  goto LABEL_66;
                }

                goto LABEL_64;
              }

              if (v233)
              {
                v247 = sub_221089E8C(a1);
                v250 = objc_msgSend_resolverForTableUID_(v247, v248, tableUID._lower, tableUID._upper, v249);

                v255 = objc_msgSend_isRows(v276, v251, v252, v253, v254);
                v257 = v56 | objc_msgSend_edgeExpandTractUsingIncludeUidTract_resolver_forRows_isInverse_(v41, v256, v278, v250, v255, v275 ^ 1u);

                if ((v257 & 1) == 0)
                {
LABEL_66:
                  v262 = objc_msgSend_removedByMoveUidTract(v278, v238, v239, v240, v241);
                  v259 = v276;
                  if (v262)
                  {
                    objc_msgSend_dropTract_(v278, v271, v262, v272, v273);
                    TSCEASTColonTractElement::setUndoTractList(this, v278, a1);
                  }

                  goto LABEL_68;
                }

LABEL_64:
                v258 = [TSCERelativeTractRef alloc];
                v259 = v276;
                *&__p = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
                v262 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v258, v260, v41, &__p, v261);
                TSCEASTColonTractElement::setRelativeTractRef(this, v262, v7, a1, 0);
                v267 = objc_msgSend_removedByMoveUidTract(v278, v263, v264, v265, v266);
                objc_msgSend_dropTract_(v278, v268, v267, v269, v270);
                TSCEASTColonTractElement::setUndoTractList(this, v278, a1);

LABEL_68:
                goto LABEL_69;
              }
            }
          }

          else
          {
          }
        }

        if ((v56 & 1) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      if (objc_msgSend_isRows(v37, v88, v89, v90, v91))
      {
        v97 = objc_msgSend_rowOrColumnUids(v37, v93, v94, v95, v96);
        v102 = objc_msgSend_indexes(v97, v98, v99, v100, v101);
        objc_msgSend_fillInRowGapsUsingIndexes_(v41, v103, v102, v104, v105);
      }

      else
      {
        v97 = objc_msgSend_rowOrColumnUids(v37, v93, v94, v95, v96);
        v102 = objc_msgSend_indexes(v97, v147, v148, v149, v150);
        objc_msgSend_fillInColumnGapsUsingIndexes_(v41, v151, v102, v152, v153);
      }
      v109 = ;

      if (objc_msgSend_count(v109, v154, v155, v156, v157))
      {
        v162 = objc_msgSend_rowOrColumnUids(v37, v158, v159, v160, v161);
        v166 = v162;
        if (v162)
        {
          objc_msgSend_uidsForIndexes_(v162, v163, v109, v164, v165);
        }

        else
        {
          memset(&__p, 0, 24);
        }

        v171 = __p;
        if (__p._singleRange._begin != *&__p)
        {
          if (objc_msgSend_rewriteType(*(a1 + 17), v167, v168, v169, v170) == 4 && (*(a1 + 100) & 1) == 0)
          {
            v176 = objc_msgSend_isRows(v37, v172, v173, v174, v175);
            objc_msgSend_addToExcludedTractUids_isRows_(v278, v177, &__p, v176, v178);
          }

          v171 = __p;
        }

        if (v171)
        {
          __p._singleRange._begin = v171;
          operator delete(v171);
        }

        goto LABEL_37;
      }
    }

    goto LABEL_39;
  }

LABEL_69:

  return this;
}

void sub_2212E6E98(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_rewriteType(*(a1 + 136), a2, a3, a4, a5) != 4)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "virtual TSCEASTElement *TSCEASTInsertRowsRewriter::uidReferenceNode(TSCEASTUidReferenceElement *)", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTInsertRowsRewriter.mm", v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 336, 0, "TSCEASTInsertRowsRewriter - only move rows uses uuid-form references");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTUidReferenceElement::tableUID(a2, a1, v21, v22, v23);
  }

  else
  {
    v24 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v24->var0.var0._tableUID._lower;
    upper = v24->var0.var0._tableUID._upper;
  }

  v180.var0 = lower;
  v180.var1 = upper;
  v27 = TSCEASTElement::mutableUndoTractList(a2, a1);
  v32 = objc_msgSend_activeUidTract(v27, v28, v29, v30, v31);
  v37 = v32;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  if (v32)
  {
    v38 = objc_msgSend_columnUids(v32, v33, v34, v35, v36);
    if (&v177 != v38)
    {
      sub_2210BD068(&v177, *v38, v38[1], (v38[1] - *v38) >> 4);
    }

    v43 = objc_msgSend_rowUids(v37, v39, v40, v41, v42);
    if (&v174 != v43)
    {
      sub_2210BD068(&v174, *v43, v43[1], (v43[1] - *v43) >> 4);
    }

    v48 = objc_msgSend_preserveRectangularRange(v37, v44, v45, v46, v47);
  }

  else
  {
    v48 = 0;
  }

  objc_msgSend_dropTract_(v27, v33, v37, v35, v36);
  v52 = v178 - v177 == 16 && !*v177 && *(v177 + 1) == 0;
  v161 = v52;
  if (v175 - v174 == 16 && !*v174)
  {
    v53 = *(v174 + 1) == 0;
    if (v52 && v53)
    {
      v106 = MEMORY[0x277D81150];
      v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "virtual TSCEASTElement *TSCEASTInsertRowsRewriter::uidReferenceNode(TSCEASTUidReferenceElement *)", v50, v51);
      v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTInsertRowsRewriter.mm", v109, v110);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v112, v107, v111, 359, 0, "Can't be spanning on both row and column, tractList: %{public}@", v27);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114, v115, v116);
      v54 = 0;
      LOBYTE(v53) = 1;
LABEL_20:
      v172 = 0;
      v173 = 0;
      v55 = TSCEASTRelativeCoordRefElement::tractRefUsingUuids(a1, &v180, &v177, &v174, &v173, &v172, v48);
      if (objc_msgSend_count(v173, v56, v57, v58, v59))
      {
        isAllInvalid = objc_msgSend_isAllInvalid(v173, v60, v61, v62, v63);
      }

      else
      {
        isAllInvalid = 1;
      }

      if (objc_msgSend_count(v172, v60, v61, v62, v63))
      {
        v69 = objc_msgSend_isAllInvalid(v172, v65, v66, v67, v68);
      }

      else
      {
        v69 = 1;
      }

      isValid = objc_msgSend_isValid(v55, v65, v66, v67, v68);
      if (v54)
      {
        v74 = isValid & isAllInvalid & v69;
      }

      else
      {
        v74 = 0;
        v178 = v177;
        v175 = v174;
      }

      v75 = TSCEASTUidReferenceElement::preserveFlags(a2, a1, v71, v72, v73);
      v171._flags = v75;
      v76 = TSCEASTElement::refFlags(a2, a1);
      if (!v74)
      {
        objc_msgSend_addUuidsFromVector_(v173, v77, &v177, v79, v80);
        objc_msgSend_addUuidsFromVector_(v172, v99, &v174, v100, v101);
        if (v173)
        {
          objc_msgSend_uuidsAsVector(v173, v102, v103, v104, v105);
        }

        else
        {
          v168 = 0;
          __dst = 0;
          v170 = 0;
        }

        if (v172)
        {
          objc_msgSend_uuidsAsVector(v172, v102, v103, v104, v105);
        }

        else
        {
          memset(&__p, 0, sizeof(__p));
        }

        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_(v27, v102, &v168, &__p, v105);
        if (__p.coordinate)
        {
          __p._tableUID._lower = __p.coordinate;
          operator delete(*&__p.coordinate);
        }

        if (v168)
        {
          __dst = v168;
          operator delete(v168);
        }

        TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v27, &v180, &v171);
      }

      v81 = v76;
      v82 = objc_msgSend_includedUidsTract(v27, v77, v78, v79, v80);
      v87 = v82;
      if (v82 && *(a1 + 98) == 1)
      {
        v88 = objc_msgSend_rowUids(v82, v83, v84, v85, v86);
        v168 = 0;
        __dst = 0;
        v170 = 0;
        sub_221086EBC(&v168, *v88, v88[1], (v88[1] - *v88) >> 4);
        v93 = objc_msgSend_columnUids(v87, v89, v90, v91, v92);
        memset(&__p, 0, sizeof(__p));
        sub_221086EBC(&__p, *v93, v93[1], (v93[1] - *v93) >> 4);
        if (v172)
        {
          objc_msgSend_uuidsAsVector(v172, v94, v95, v96, v97);
          v98 = tableUID;
        }

        else
        {
          v166 = 0;
          v98 = 0;
          tableUID = 0;
        }

        sub_2210F0C88(&v168, __dst, v98._lower, v98._upper, (v98._upper - v98._lower) >> 4);
        if (tableUID._lower)
        {
          tableUID._upper = tableUID._lower;
          operator delete(tableUID._lower);
        }

        if (v173)
        {
          objc_msgSend_uuidsAsVector(v173, v117, v118, v119, v120);
          v121 = tableUID;
        }

        else
        {
          v166 = 0;
          v121 = 0;
          tableUID = 0;
        }

        sub_2210F0C88(&__p, __p._tableUID._lower, v121._lower, v121._upper, (v121._upper - v121._lower) >> 4);
        if (tableUID._lower)
        {
          tableUID._upper = tableUID._lower;
          operator delete(tableUID._lower);
        }

        tableUID._lower = 0;
        tableUID._upper = 0;
        v166 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v122 = TSCEASTRelativeCoordRefElement::expandTractRefUsingUuids(a1, &v180, v55, &v168, &tableUID, 1);
        if ((TSCEASTRelativeCoordRefElement::expandTractRefUsingUuids(a1, &v180, v55, &__p, &v162, 0) | v122))
        {
          objc_msgSend_removeAllUuids(v173, v83, v84, v85, v86);
          objc_msgSend_addUuidsFromVector_(v173, v123, &v162, v124, v125);
          objc_msgSend_removeAllUuids(v172, v126, v127, v128, v129);
          objc_msgSend_addUuidsFromVector_(v172, v130, &tableUID, v131, v132);
          objc_msgSend_dropTract_(v27, v133, v87, v134, v135);
        }

        if (v162)
        {
          v163 = v162;
          operator delete(*&v162);
        }

        if (tableUID._lower)
        {
          tableUID._upper = tableUID._lower;
          operator delete(tableUID._lower);
        }

        if (__p.coordinate)
        {
          __p._tableUID._lower = __p.coordinate;
          operator delete(*&__p.coordinate);
        }

        if (v168)
        {
          __dst = v168;
          operator delete(v168);
        }
      }

      if (v53)
      {
        if (v161)
        {
          v136 = 0;
          goto LABEL_71;
        }
      }

      else
      {
        v136 = objc_msgSend_count(v172, v83, v84, v85, v86) != 0;
        if (v136 || v161)
        {
          goto LABEL_71;
        }
      }

      v136 = objc_msgSend_count(v173, v83, v84, v85, v86) != 0;
LABEL_71:
      if (objc_msgSend_isRangeRef(v37, v83, v84, v85, v86))
      {
        v141 = 1;
      }

      else
      {
        v141 = objc_msgSend_isSingleCellOrSpanningRange(v55, v137, v138, v139, v140) ^ 1;
      }

      v142 = *(a1 + 144);
      __p = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0;
      if (v142)
      {
        objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v142, v143, 3, &__p, v146);
        v147 = v168;
      }

      else
      {
        v147 = 0;
        v168 = 0;
        __dst = 0;
        v170 = 0;
      }

      v162 = v147;
      if ((v136 | v141))
      {
        v148 = v75 & 3;
        if (v141)
        {
          v149 = (v75 >> 2) & 3;
        }

        else
        {
          v149 = v75 & 3;
        }

        if (v136)
        {
          if (v173)
          {
            objc_msgSend_uuidsAsVector(v173, v143, v144, v145, v146);
          }

          else
          {
            memset(&__p, 0, sizeof(__p));
          }

          if (v172)
          {
            objc_msgSend_uuidsAsVector(v172, v143, v144, v145, v146);
          }

          else
          {
            tableUID._lower = 0;
            tableUID._upper = 0;
            v166 = 0;
          }

          objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_(v27, v143, &__p, &tableUID, v146);
          if (tableUID._lower)
          {
            tableUID._upper = tableUID._lower;
            operator delete(tableUID._lower);
          }

          if (__p.coordinate)
          {
            __p._tableUID._lower = __p.coordinate;
            operator delete(*&__p.coordinate);
          }
        }

        objc_msgSend_setPreserveFlags_(v55, v143, v148 | (4 * v149), v145, v146);
        v151 = [TSCERelativeTractRef alloc];
        v154 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v151, v152, v55, &v162, v153);
        v158 = TSCEASTUidReferenceElement::colonTractFlags(a2, a1, v155, v156, v157);
        *&__p.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v159._flags = v81;
        v160._flags = v158;
        TSCEASTIteratorBase::createColonTractRef(a1, v159, v160, v154, v27, &__p);
      }

      __p.coordinate = objc_msgSend_topLeft(v55, v143, v144, v145, v146);
      __p._tableUID = *&v180.var0;
      tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      v150._flags = v81;
      TSCEASTIteratorBase::createReference(a1, &__p, v150, &tableUID, &v162, v27);
    }
  }

  else
  {
    LOBYTE(v53) = 0;
  }

  v54 = 1;
  goto LABEL_20;
}

void sub_2212E7670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  v34 = *(v32 - 128);
  if (v34)
  {
    *(v32 - 120) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_2212E7800(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_2212E801C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_2212E8C80(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"functionNameToLocalizedDictionary", a4, a5);
  if (!v6)
  {
    v360 = objc_alloc(MEMORY[0x277CBEAC0]);
    v689 = objc_msgSend_localizedStringForKey_value_table_(a1, v7, @"DATE", &stru_2834BADA0, @"TSCalculationEngine");
    v688 = objc_msgSend_localizedStringForKey_value_table_(a1, v8, @"DATEDIF", &stru_2834BADA0, @"TSCalculationEngine");
    v687 = objc_msgSend_localizedStringForKey_value_table_(a1, v9, @"DATEVALUE", &stru_2834BADA0, @"TSCalculationEngine");
    v686 = objc_msgSend_localizedStringForKey_value_table_(a1, v10, @"DAY", &stru_2834BADA0, @"TSCalculationEngine");
    v685 = objc_msgSend_localizedStringForKey_value_table_(a1, v11, @"DAYNAME", &stru_2834BADA0, @"TSCalculationEngine");
    v684 = objc_msgSend_localizedStringForKey_value_table_(a1, v12, @"DAYS360", &stru_2834BADA0, @"TSCalculationEngine");
    v683 = objc_msgSend_localizedStringForKey_value_table_(a1, v13, @"EDATE", &stru_2834BADA0, @"TSCalculationEngine");
    v682 = objc_msgSend_localizedStringForKey_value_table_(a1, v14, @"EOMONTH", &stru_2834BADA0, @"TSCalculationEngine");
    v681 = objc_msgSend_localizedStringForKey_value_table_(a1, v15, @"HOUR", &stru_2834BADA0, @"TSCalculationEngine");
    v680 = objc_msgSend_localizedStringForKey_value_table_(a1, v16, @"ISOWEEKNUM", &stru_2834BADA0, @"TSCalculationEngine");
    v679 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"MINUTE", &stru_2834BADA0, @"TSCalculationEngine");
    v678 = objc_msgSend_localizedStringForKey_value_table_(a1, v18, @"MONTH", &stru_2834BADA0, @"TSCalculationEngine");
    v677 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"MONTHNAME", &stru_2834BADA0, @"TSCalculationEngine");
    v676 = objc_msgSend_localizedStringForKey_value_table_(a1, v20, @"NETWORKDAYS", &stru_2834BADA0, @"TSCalculationEngine");
    v675 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"NOW", &stru_2834BADA0, @"TSCalculationEngine");
    v674 = objc_msgSend_localizedStringForKey_value_table_(a1, v22, @"SECOND", &stru_2834BADA0, @"TSCalculationEngine");
    v673 = objc_msgSend_localizedStringForKey_value_table_(a1, v23, @"TIME", &stru_2834BADA0, @"TSCalculationEngine");
    v672 = objc_msgSend_localizedStringForKey_value_table_(a1, v24, @"TIMEVALUE", &stru_2834BADA0, @"TSCalculationEngine");
    v671 = objc_msgSend_localizedStringForKey_value_table_(a1, v25, @"TODAY", &stru_2834BADA0, @"TSCalculationEngine");
    v670 = objc_msgSend_localizedStringForKey_value_table_(a1, v26, @"WEEKDAY", &stru_2834BADA0, @"TSCalculationEngine");
    v669 = objc_msgSend_localizedStringForKey_value_table_(a1, v27, @"WEEKNUM", &stru_2834BADA0, @"TSCalculationEngine");
    v668 = objc_msgSend_localizedStringForKey_value_table_(a1, v28, @"WORKDAY", &stru_2834BADA0, @"TSCalculationEngine");
    v667 = objc_msgSend_localizedStringForKey_value_table_(a1, v29, @"YEAR", &stru_2834BADA0, @"TSCalculationEngine");
    v666 = objc_msgSend_localizedStringForKey_value_table_(a1, v30, @"YEARFRAC", &stru_2834BADA0, @"TSCalculationEngine");
    v665 = objc_msgSend_localizedStringForKey_value_table_(a1, v31, @"DURATION", &stru_2834BADA0, @"TSCalculationEngine");
    v664 = objc_msgSend_localizedStringForKey_value_table_(a1, v32, @"DUR2DAYS", &stru_2834BADA0, @"TSCalculationEngine");
    v663 = objc_msgSend_localizedStringForKey_value_table_(a1, v33, @"DUR2HOURS", &stru_2834BADA0, @"TSCalculationEngine");
    v662 = objc_msgSend_localizedStringForKey_value_table_(a1, v34, @"DUR2MILLISECONDS", &stru_2834BADA0, @"TSCalculationEngine");
    v661 = objc_msgSend_localizedStringForKey_value_table_(a1, v35, @"DUR2MINUTES", &stru_2834BADA0, @"TSCalculationEngine");
    v660 = objc_msgSend_localizedStringForKey_value_table_(a1, v36, @"DUR2SECONDS", &stru_2834BADA0, @"TSCalculationEngine");
    v659 = objc_msgSend_localizedStringForKey_value_table_(a1, v37, @"DUR2WEEKS", &stru_2834BADA0, @"TSCalculationEngine");
    v658 = objc_msgSend_localizedStringForKey_value_table_(a1, v38, @"STRIPDURATION", &stru_2834BADA0, @"TSCalculationEngine");
    v657 = objc_msgSend_localizedStringForKey_value_table_(a1, v39, @"BASETONUM", &stru_2834BADA0, @"TSCalculationEngine");
    v656 = objc_msgSend_localizedStringForKey_value_table_(a1, v40, @"BESSELJ", &stru_2834BADA0, @"TSCalculationEngine");
    v655 = objc_msgSend_localizedStringForKey_value_table_(a1, v41, @"BESSELY", &stru_2834BADA0, @"TSCalculationEngine");
    v654 = objc_msgSend_localizedStringForKey_value_table_(a1, v42, @"BIN2DEC", &stru_2834BADA0, @"TSCalculationEngine");
    v653 = objc_msgSend_localizedStringForKey_value_table_(a1, v43, @"BIN2HEX", &stru_2834BADA0, @"TSCalculationEngine");
    v652 = objc_msgSend_localizedStringForKey_value_table_(a1, v44, @"BIN2OCT", &stru_2834BADA0, @"TSCalculationEngine");
    v651 = objc_msgSend_localizedStringForKey_value_table_(a1, v45, @"BITAND", &stru_2834BADA0, @"TSCalculationEngine");
    v650 = objc_msgSend_localizedStringForKey_value_table_(a1, v46, @"BITLSHIFT", &stru_2834BADA0, @"TSCalculationEngine");
    v649 = objc_msgSend_localizedStringForKey_value_table_(a1, v47, @"BITRSHIFT", &stru_2834BADA0, @"TSCalculationEngine");
    v648 = objc_msgSend_localizedStringForKey_value_table_(a1, v48, @"BITOR", &stru_2834BADA0, @"TSCalculationEngine");
    v647 = objc_msgSend_localizedStringForKey_value_table_(a1, v49, @"BITXOR", &stru_2834BADA0, @"TSCalculationEngine");
    v646 = objc_msgSend_localizedStringForKey_value_table_(a1, v50, @"CONVERT", &stru_2834BADA0, @"TSCalculationEngine");
    v645 = objc_msgSend_localizedStringForKey_value_table_(a1, v51, @"DEC2BIN", &stru_2834BADA0, @"TSCalculationEngine");
    v644 = objc_msgSend_localizedStringForKey_value_table_(a1, v52, @"DEC2HEX", &stru_2834BADA0, @"TSCalculationEngine");
    v643 = objc_msgSend_localizedStringForKey_value_table_(a1, v53, @"DEC2OCT", &stru_2834BADA0, @"TSCalculationEngine");
    v642 = objc_msgSend_localizedStringForKey_value_table_(a1, v54, @"DELTA", &stru_2834BADA0, @"TSCalculationEngine");
    v641 = objc_msgSend_localizedStringForKey_value_table_(a1, v55, @"ERF", &stru_2834BADA0, @"TSCalculationEngine");
    v640 = objc_msgSend_localizedStringForKey_value_table_(a1, v56, @"ERFC", &stru_2834BADA0, @"TSCalculationEngine");
    v639 = objc_msgSend_localizedStringForKey_value_table_(a1, v57, @"GESTEP", &stru_2834BADA0, @"TSCalculationEngine");
    v638 = objc_msgSend_localizedStringForKey_value_table_(a1, v58, @"HEX2BIN", &stru_2834BADA0, @"TSCalculationEngine");
    v637 = objc_msgSend_localizedStringForKey_value_table_(a1, v59, @"HEX2DEC", &stru_2834BADA0, @"TSCalculationEngine");
    v636 = objc_msgSend_localizedStringForKey_value_table_(a1, v60, @"HEX2OCT", &stru_2834BADA0, @"TSCalculationEngine");
    v635 = objc_msgSend_localizedStringForKey_value_table_(a1, v61, @"NUMTOBASE", &stru_2834BADA0, @"TSCalculationEngine");
    v634 = objc_msgSend_localizedStringForKey_value_table_(a1, v62, @"OCT2BIN", &stru_2834BADA0, @"TSCalculationEngine");
    v633 = objc_msgSend_localizedStringForKey_value_table_(a1, v63, @"OCT2DEC", &stru_2834BADA0, @"TSCalculationEngine");
    v632 = objc_msgSend_localizedStringForKey_value_table_(a1, v64, @"OCT2HEX", &stru_2834BADA0, @"TSCalculationEngine");
    v631 = objc_msgSend_localizedStringForKey_value_table_(a1, v65, @"ACCRINT", &stru_2834BADA0, @"TSCalculationEngine");
    v630 = objc_msgSend_localizedStringForKey_value_table_(a1, v66, @"ACCRINTM", &stru_2834BADA0, @"TSCalculationEngine");
    v629 = objc_msgSend_localizedStringForKey_value_table_(a1, v67, @"BONDDURATION", &stru_2834BADA0, @"TSCalculationEngine");
    v628 = objc_msgSend_localizedStringForKey_value_table_(a1, v68, @"BONDMDURATION", &stru_2834BADA0, @"TSCalculationEngine");
    v627 = objc_msgSend_localizedStringForKey_value_table_(a1, v69, @"COUPDAYBS", &stru_2834BADA0, @"TSCalculationEngine");
    v626 = objc_msgSend_localizedStringForKey_value_table_(a1, v70, @"COUPDAYS", &stru_2834BADA0, @"TSCalculationEngine");
    v625 = objc_msgSend_localizedStringForKey_value_table_(a1, v71, @"COUPDAYSNC", &stru_2834BADA0, @"TSCalculationEngine");
    v624 = objc_msgSend_localizedStringForKey_value_table_(a1, v72, @"COUPNUM", &stru_2834BADA0, @"TSCalculationEngine");
    v623 = objc_msgSend_localizedStringForKey_value_table_(a1, v73, @"CUMIPMT", &stru_2834BADA0, @"TSCalculationEngine");
    v622 = objc_msgSend_localizedStringForKey_value_table_(a1, v74, @"CUMPRINC", &stru_2834BADA0, @"TSCalculationEngine");
    v621 = objc_msgSend_localizedStringForKey_value_table_(a1, v75, @"CURRENCY", &stru_2834BADA0, @"TSCalculationEngine");
    v620 = objc_msgSend_localizedStringForKey_value_table_(a1, v76, @"CURRENCYCODE", &stru_2834BADA0, @"TSCalculationEngine");
    v619 = objc_msgSend_localizedStringForKey_value_table_(a1, v77, @"CURRENCYCONVERT", &stru_2834BADA0, @"TSCalculationEngine");
    v618 = objc_msgSend_localizedStringForKey_value_table_(a1, v78, @"CURRENCYH", &stru_2834BADA0, @"TSCalculationEngine");
    v617 = objc_msgSend_localizedStringForKey_value_table_(a1, v79, @"DB", &stru_2834BADA0, @"TSCalculationEngine");
    v616 = objc_msgSend_localizedStringForKey_value_table_(a1, v80, @"DDB", &stru_2834BADA0, @"TSCalculationEngine");
    v615 = objc_msgSend_localizedStringForKey_value_table_(a1, v81, @"DISC", &stru_2834BADA0, @"TSCalculationEngine");
    v614 = objc_msgSend_localizedStringForKey_value_table_(a1, v82, @"EFFECT", &stru_2834BADA0, @"TSCalculationEngine");
    v613 = objc_msgSend_localizedStringForKey_value_table_(a1, v83, @"FV", &stru_2834BADA0, @"TSCalculationEngine");
    v612 = objc_msgSend_localizedStringForKey_value_table_(a1, v84, @"INTRATE", &stru_2834BADA0, @"TSCalculationEngine");
    v611 = objc_msgSend_localizedStringForKey_value_table_(a1, v85, @"IPMT", &stru_2834BADA0, @"TSCalculationEngine");
    v610 = objc_msgSend_localizedStringForKey_value_table_(a1, v86, @"IRR", &stru_2834BADA0, @"TSCalculationEngine");
    v609 = objc_msgSend_localizedStringForKey_value_table_(a1, v87, @"ISPMT", &stru_2834BADA0, @"TSCalculationEngine");
    v608 = objc_msgSend_localizedStringForKey_value_table_(a1, v88, @"MIRR", &stru_2834BADA0, @"TSCalculationEngine");
    v607 = objc_msgSend_localizedStringForKey_value_table_(a1, v89, @"NOMINAL", &stru_2834BADA0, @"TSCalculationEngine");
    v606 = objc_msgSend_localizedStringForKey_value_table_(a1, v90, @"NPER", &stru_2834BADA0, @"TSCalculationEngine");
    v605 = objc_msgSend_localizedStringForKey_value_table_(a1, v91, @"NPV", &stru_2834BADA0, @"TSCalculationEngine");
    v604 = objc_msgSend_localizedStringForKey_value_table_(a1, v92, @"PMT", &stru_2834BADA0, @"TSCalculationEngine");
    v603 = objc_msgSend_localizedStringForKey_value_table_(a1, v93, @"PPMT", &stru_2834BADA0, @"TSCalculationEngine");
    v602 = objc_msgSend_localizedStringForKey_value_table_(a1, v94, @"PRICE", &stru_2834BADA0, @"TSCalculationEngine");
    v601 = objc_msgSend_localizedStringForKey_value_table_(a1, v95, @"PRICEDISC", &stru_2834BADA0, @"TSCalculationEngine");
    v600 = objc_msgSend_localizedStringForKey_value_table_(a1, v96, @"PRICEMAT", &stru_2834BADA0, @"TSCalculationEngine");
    v599 = objc_msgSend_localizedStringForKey_value_table_(a1, v97, @"PV", &stru_2834BADA0, @"TSCalculationEngine");
    v598 = objc_msgSend_localizedStringForKey_value_table_(a1, v98, @"RATE", &stru_2834BADA0, @"TSCalculationEngine");
    v597 = objc_msgSend_localizedStringForKey_value_table_(a1, v99, @"RECEIVED", &stru_2834BADA0, @"TSCalculationEngine");
    v596 = objc_msgSend_localizedStringForKey_value_table_(a1, v100, @"SLN", &stru_2834BADA0, @"TSCalculationEngine");
    v595 = objc_msgSend_localizedStringForKey_value_table_(a1, v101, @"STOCK", &stru_2834BADA0, @"TSCalculationEngine");
    v594 = objc_msgSend_localizedStringForKey_value_table_(a1, v102, @"STOCKH", &stru_2834BADA0, @"TSCalculationEngine");
    v593 = objc_msgSend_localizedStringForKey_value_table_(a1, v103, @"SYD", &stru_2834BADA0, @"TSCalculationEngine");
    v592 = objc_msgSend_localizedStringForKey_value_table_(a1, v104, @"VDB", &stru_2834BADA0, @"TSCalculationEngine");
    v591 = objc_msgSend_localizedStringForKey_value_table_(a1, v105, @"XIRR", &stru_2834BADA0, @"TSCalculationEngine");
    v590 = objc_msgSend_localizedStringForKey_value_table_(a1, v106, @"XNPV", &stru_2834BADA0, @"TSCalculationEngine");
    v589 = objc_msgSend_localizedStringForKey_value_table_(a1, v107, @"YIELD", &stru_2834BADA0, @"TSCalculationEngine");
    v588 = objc_msgSend_localizedStringForKey_value_table_(a1, v108, @"YIELDDISC", &stru_2834BADA0, @"TSCalculationEngine");
    v587 = objc_msgSend_localizedStringForKey_value_table_(a1, v109, @"YIELDMAT", &stru_2834BADA0, @"TSCalculationEngine");
    v586 = objc_msgSend_localizedStringForKey_value_table_(a1, v110, @"AND", &stru_2834BADA0, @"TSCalculationEngine");
    v585 = objc_msgSend_localizedStringForKey_value_table_(a1, v111, @"FALSE", &stru_2834BADA0, @"TSCalculationEngine");
    v584 = objc_msgSend_localizedStringForKey_value_table_(a1, v112, @"IF", &stru_2834BADA0, @"TSCalculationEngine");
    v583 = objc_msgSend_localizedStringForKey_value_table_(a1, v113, @"IFS", &stru_2834BADA0, @"TSCalculationEngine");
    v582 = objc_msgSend_localizedStringForKey_value_table_(a1, v114, @"IFERROR", &stru_2834BADA0, @"TSCalculationEngine");
    v581 = objc_msgSend_localizedStringForKey_value_table_(a1, v115, @"ISBLANK", &stru_2834BADA0, @"TSCalculationEngine");
    v580 = objc_msgSend_localizedStringForKey_value_table_(a1, v116, @"ISDATE", &stru_2834BADA0, @"TSCalculationEngine");
    v579 = objc_msgSend_localizedStringForKey_value_table_(a1, v117, @"ISERROR", &stru_2834BADA0, @"TSCalculationEngine");
    v578 = objc_msgSend_localizedStringForKey_value_table_(a1, v118, @"ISEVEN", &stru_2834BADA0, @"TSCalculationEngine");
    v577 = objc_msgSend_localizedStringForKey_value_table_(a1, v119, @"ISNUMBER", &stru_2834BADA0, @"TSCalculationEngine");
    v576 = objc_msgSend_localizedStringForKey_value_table_(a1, v120, @"ISNUMBERORDATE", &stru_2834BADA0, @"TSCalculationEngine");
    v575 = objc_msgSend_localizedStringForKey_value_table_(a1, v121, @"ISODD", &stru_2834BADA0, @"TSCalculationEngine");
    v574 = objc_msgSend_localizedStringForKey_value_table_(a1, v122, @"ISTEXT", &stru_2834BADA0, @"TSCalculationEngine");
    v573 = objc_msgSend_localizedStringForKey_value_table_(a1, v123, @"NOT", &stru_2834BADA0, @"TSCalculationEngine");
    v572 = objc_msgSend_localizedStringForKey_value_table_(a1, v124, @"OR", &stru_2834BADA0, @"TSCalculationEngine");
    v571 = objc_msgSend_localizedStringForKey_value_table_(a1, v125, @"SWITCH", &stru_2834BADA0, @"TSCalculationEngine");
    v570 = objc_msgSend_localizedStringForKey_value_table_(a1, v126, @"TRUE", &stru_2834BADA0, @"TSCalculationEngine");
    v569 = objc_msgSend_localizedStringForKey_value_table_(a1, v127, @"ADDRESS", &stru_2834BADA0, @"TSCalculationEngine");
    v568 = objc_msgSend_localizedStringForKey_value_table_(a1, v128, @"AREAS", &stru_2834BADA0, @"TSCalculationEngine");
    v567 = objc_msgSend_localizedStringForKey_value_table_(a1, v129, @"ARRAYTOTEXT", &stru_2834BADA0, @"TSCalculationEngine");
    v566 = objc_msgSend_localizedStringForKey_value_table_(a1, v130, @"BYCOL", &stru_2834BADA0, @"TSCalculationEngine");
    v565 = objc_msgSend_localizedStringForKey_value_table_(a1, v131, @"BYROW", &stru_2834BADA0, @"TSCalculationEngine");
    v564 = objc_msgSend_localizedStringForKey_value_table_(a1, v132, @"CHOOSE", &stru_2834BADA0, @"TSCalculationEngine");
    v563 = objc_msgSend_localizedStringForKey_value_table_(a1, v133, @"CHOOSECOLS", &stru_2834BADA0, @"TSCalculationEngine");
    v562 = objc_msgSend_localizedStringForKey_value_table_(a1, v134, @"CHOOSEROWS", &stru_2834BADA0, @"TSCalculationEngine");
    v561 = objc_msgSend_localizedStringForKey_value_table_(a1, v135, @"COLUMN", &stru_2834BADA0, @"TSCalculationEngine");
    v560 = objc_msgSend_localizedStringForKey_value_table_(a1, v136, @"COLUMNS", &stru_2834BADA0, @"TSCalculationEngine");
    v559 = objc_msgSend_localizedStringForKey_value_table_(a1, v137, @"DROP", &stru_2834BADA0, @"TSCalculationEngine");
    v558 = objc_msgSend_localizedStringForKey_value_table_(a1, v138, @"EXPAND", &stru_2834BADA0, @"TSCalculationEngine");
    v557 = objc_msgSend_localizedStringForKey_value_table_(a1, v139, @"FILTER", &stru_2834BADA0, @"TSCalculationEngine");
    v556 = objc_msgSend_localizedStringForKey_value_table_(a1, v140, @"FORMULATEXT", &stru_2834BADA0, @"TSCalculationEngine");
    v555 = objc_msgSend_localizedStringForKey_value_table_(a1, v141, @"GETPIVOTDATA", &stru_2834BADA0, @"TSCalculationEngine");
    v554 = objc_msgSend_localizedStringForKey_value_table_(a1, v142, @"HLOOKUP", &stru_2834BADA0, @"TSCalculationEngine");
    v553 = objc_msgSend_localizedStringForKey_value_table_(a1, v143, @"HSTACK", &stru_2834BADA0, @"TSCalculationEngine");
    v552 = objc_msgSend_localizedStringForKey_value_table_(a1, v144, @"HYPERLINK", &stru_2834BADA0, @"TSCalculationEngine");
    v551 = objc_msgSend_localizedStringForKey_value_table_(a1, v145, @"INDEX", &stru_2834BADA0, @"TSCalculationEngine");
    v550 = objc_msgSend_localizedStringForKey_value_table_(a1, v146, @"INDIRECT", &stru_2834BADA0, @"TSCalculationEngine");
    v549 = objc_msgSend_localizedStringForKey_value_table_(a1, v147, @"INTERSECT.RANGES", &stru_2834BADA0, @"TSCalculationEngine");
    v548 = objc_msgSend_localizedStringForKey_value_table_(a1, v148, @"ISOMITTED", &stru_2834BADA0, @"TSCalculationEngine");
    v547 = objc_msgSend_localizedStringForKey_value_table_(a1, v149, @"LOOKUP", &stru_2834BADA0, @"TSCalculationEngine");
    v546 = objc_msgSend_localizedStringForKey_value_table_(a1, v150, @"MAKEARRAY", &stru_2834BADA0, @"TSCalculationEngine");
    v545 = objc_msgSend_localizedStringForKey_value_table_(a1, v151, @"MAP", &stru_2834BADA0, @"TSCalculationEngine");
    v544 = objc_msgSend_localizedStringForKey_value_table_(a1, v152, @"MATCH", &stru_2834BADA0, @"TSCalculationEngine");
    v543 = objc_msgSend_localizedStringForKey_value_table_(a1, v153, @"OFFSET", &stru_2834BADA0, @"TSCalculationEngine");
    v542 = objc_msgSend_localizedStringForKey_value_table_(a1, v154, @"RANDARRAY", &stru_2834BADA0, @"TSCalculationEngine");
    v541 = objc_msgSend_localizedStringForKey_value_table_(a1, v155, @"REDUCE", &stru_2834BADA0, @"TSCalculationEngine");
    v540 = objc_msgSend_localizedStringForKey_value_table_(a1, v156, @"REFERENCE.NAME", &stru_2834BADA0, @"TSCalculationEngine");
    v539 = objc_msgSend_localizedStringForKey_value_table_(a1, v157, @"ROW", &stru_2834BADA0, @"TSCalculationEngine");
    v538 = objc_msgSend_localizedStringForKey_value_table_(a1, v158, @"ROWS", &stru_2834BADA0, @"TSCalculationEngine");
    v537 = objc_msgSend_localizedStringForKey_value_table_(a1, v159, @"SCAN", &stru_2834BADA0, @"TSCalculationEngine");
    v536 = objc_msgSend_localizedStringForKey_value_table_(a1, v160, @"SEQUENCE", &stru_2834BADA0, @"TSCalculationEngine");
    v535 = objc_msgSend_localizedStringForKey_value_table_(a1, v161, @"SORT", &stru_2834BADA0, @"TSCalculationEngine");
    v534 = objc_msgSend_localizedStringForKey_value_table_(a1, v162, @"SORTBY", &stru_2834BADA0, @"TSCalculationEngine");
    v533 = objc_msgSend_localizedStringForKey_value_table_(a1, v163, @"TAKE", &stru_2834BADA0, @"TSCalculationEngine");
    v532 = objc_msgSend_localizedStringForKey_value_table_(a1, v164, @"TOCOL", &stru_2834BADA0, @"TSCalculationEngine");
    v531 = objc_msgSend_localizedStringForKey_value_table_(a1, v165, @"TOROW", &stru_2834BADA0, @"TSCalculationEngine");
    v530 = objc_msgSend_localizedStringForKey_value_table_(a1, v166, @"TRANSPOSE", &stru_2834BADA0, @"TSCalculationEngine");
    v529 = objc_msgSend_localizedStringForKey_value_table_(a1, v167, @"UNION.RANGES", &stru_2834BADA0, @"TSCalculationEngine");
    v528 = objc_msgSend_localizedStringForKey_value_table_(a1, v168, @"UNIQUE", &stru_2834BADA0, @"TSCalculationEngine");
    v527 = objc_msgSend_localizedStringForKey_value_table_(a1, v169, @"VLOOKUP", &stru_2834BADA0, @"TSCalculationEngine");
    v526 = objc_msgSend_localizedStringForKey_value_table_(a1, v170, @"VSTACK", &stru_2834BADA0, @"TSCalculationEngine");
    v525 = objc_msgSend_localizedStringForKey_value_table_(a1, v171, @"WRAPCOLS", &stru_2834BADA0, @"TSCalculationEngine");
    v524 = objc_msgSend_localizedStringForKey_value_table_(a1, v172, @"WRAPROWS", &stru_2834BADA0, @"TSCalculationEngine");
    v523 = objc_msgSend_localizedStringForKey_value_table_(a1, v173, @"XLOOKUP", &stru_2834BADA0, @"TSCalculationEngine");
    v522 = objc_msgSend_localizedStringForKey_value_table_(a1, v174, @"XMATCH", &stru_2834BADA0, @"TSCalculationEngine");
    v521 = objc_msgSend_localizedStringForKey_value_table_(a1, v175, @"ABS", &stru_2834BADA0, @"TSCalculationEngine");
    v520 = objc_msgSend_localizedStringForKey_value_table_(a1, v176, @"ACOS", &stru_2834BADA0, @"TSCalculationEngine");
    v519 = objc_msgSend_localizedStringForKey_value_table_(a1, v177, @"ACOSH", &stru_2834BADA0, @"TSCalculationEngine");
    v518 = objc_msgSend_localizedStringForKey_value_table_(a1, v178, @"ASIN", &stru_2834BADA0, @"TSCalculationEngine");
    v517 = objc_msgSend_localizedStringForKey_value_table_(a1, v179, @"ASINH", &stru_2834BADA0, @"TSCalculationEngine");
    v516 = objc_msgSend_localizedStringForKey_value_table_(a1, v180, @"ATAN", &stru_2834BADA0, @"TSCalculationEngine");
    v515 = objc_msgSend_localizedStringForKey_value_table_(a1, v181, @"ATAN2", &stru_2834BADA0, @"TSCalculationEngine");
    v514 = objc_msgSend_localizedStringForKey_value_table_(a1, v182, @"ATANH", &stru_2834BADA0, @"TSCalculationEngine");
    v513 = objc_msgSend_localizedStringForKey_value_table_(a1, v183, @"CEILING", &stru_2834BADA0, @"TSCalculationEngine");
    v512 = objc_msgSend_localizedStringForKey_value_table_(a1, v184, @"COMBIN", &stru_2834BADA0, @"TSCalculationEngine");
    v511 = objc_msgSend_localizedStringForKey_value_table_(a1, v185, @"COS", &stru_2834BADA0, @"TSCalculationEngine");
    v510 = objc_msgSend_localizedStringForKey_value_table_(a1, v186, @"COSH", &stru_2834BADA0, @"TSCalculationEngine");
    v509 = objc_msgSend_localizedStringForKey_value_table_(a1, v187, @"DEGREES", &stru_2834BADA0, @"TSCalculationEngine");
    v508 = objc_msgSend_localizedStringForKey_value_table_(a1, v188, @"EVEN", &stru_2834BADA0, @"TSCalculationEngine");
    v507 = objc_msgSend_localizedStringForKey_value_table_(a1, v189, @"EXP", &stru_2834BADA0, @"TSCalculationEngine");
    v506 = objc_msgSend_localizedStringForKey_value_table_(a1, v190, @"FACT", &stru_2834BADA0, @"TSCalculationEngine");
    v505 = objc_msgSend_localizedStringForKey_value_table_(a1, v191, @"FACTDOUBLE", &stru_2834BADA0, @"TSCalculationEngine");
    v504 = objc_msgSend_localizedStringForKey_value_table_(a1, v192, @"FLOOR", &stru_2834BADA0, @"TSCalculationEngine");
    v503 = objc_msgSend_localizedStringForKey_value_table_(a1, v193, @"GCD", &stru_2834BADA0, @"TSCalculationEngine");
    v502 = objc_msgSend_localizedStringForKey_value_table_(a1, v194, @"INT", &stru_2834BADA0, @"TSCalculationEngine");
    v501 = objc_msgSend_localizedStringForKey_value_table_(a1, v195, @"LAMBDA", &stru_2834BADA0, @"TSCalculationEngine");
    v500 = objc_msgSend_localizedStringForKey_value_table_(a1, v196, @"LAMBDA.APPLY", &stru_2834BADA0, @"TSCalculationEngine");
    v499 = objc_msgSend_localizedStringForKey_value_table_(a1, v197, @"LCM", &stru_2834BADA0, @"TSCalculationEngine");
    v498 = objc_msgSend_localizedStringForKey_value_table_(a1, v198, @"LET", &stru_2834BADA0, @"TSCalculationEngine");
    v497 = objc_msgSend_localizedStringForKey_value_table_(a1, v199, @"LN", &stru_2834BADA0, @"TSCalculationEngine");
    v496 = objc_msgSend_localizedStringForKey_value_table_(a1, v200, @"LOG", &stru_2834BADA0, @"TSCalculationEngine");
    v495 = objc_msgSend_localizedStringForKey_value_table_(a1, v201, @"LOG10", &stru_2834BADA0, @"TSCalculationEngine");
    v494 = objc_msgSend_localizedStringForKey_value_table_(a1, v202, @"MDETERM", &stru_2834BADA0, @"TSCalculationEngine");
    v493 = objc_msgSend_localizedStringForKey_value_table_(a1, v203, @"MINVERSE", &stru_2834BADA0, @"TSCalculationEngine");
    v492 = objc_msgSend_localizedStringForKey_value_table_(a1, v204, @"MMULT", &stru_2834BADA0, @"TSCalculationEngine");
    v491 = objc_msgSend_localizedStringForKey_value_table_(a1, v205, @"MOD", &stru_2834BADA0, @"TSCalculationEngine");
    v490 = objc_msgSend_localizedStringForKey_value_table_(a1, v206, @"MROUND", &stru_2834BADA0, @"TSCalculationEngine");
    v489 = objc_msgSend_localizedStringForKey_value_table_(a1, v207, @"MULTINOMIAL", &stru_2834BADA0, @"TSCalculationEngine");
    v488 = objc_msgSend_localizedStringForKey_value_table_(a1, v208, @"MUNIT", &stru_2834BADA0, @"TSCalculationEngine");
    v487 = objc_msgSend_localizedStringForKey_value_table_(a1, v209, @"ODD", &stru_2834BADA0, @"TSCalculationEngine");
    v486 = objc_msgSend_localizedStringForKey_value_table_(a1, v210, @"PI", &stru_2834BADA0, @"TSCalculationEngine");
    v485 = objc_msgSend_localizedStringForKey_value_table_(a1, v211, @"POLYNOMIAL", &stru_2834BADA0, @"TSCalculationEngine");
    v484 = objc_msgSend_localizedStringForKey_value_table_(a1, v212, @"POWER", &stru_2834BADA0, @"TSCalculationEngine");
    v483 = objc_msgSend_localizedStringForKey_value_table_(a1, v213, @"PRODUCT", &stru_2834BADA0, @"TSCalculationEngine");
    v482 = objc_msgSend_localizedStringForKey_value_table_(a1, v214, @"QUOTIENT", &stru_2834BADA0, @"TSCalculationEngine");
    v481 = objc_msgSend_localizedStringForKey_value_table_(a1, v215, @"RADIANS", &stru_2834BADA0, @"TSCalculationEngine");
    v480 = objc_msgSend_localizedStringForKey_value_table_(a1, v216, @"RAND", &stru_2834BADA0, @"TSCalculationEngine");
    v479 = objc_msgSend_localizedStringForKey_value_table_(a1, v217, @"RANDBETWEEN", &stru_2834BADA0, @"TSCalculationEngine");
    v478 = objc_msgSend_localizedStringForKey_value_table_(a1, v218, @"ROMAN", &stru_2834BADA0, @"TSCalculationEngine");
    v477 = objc_msgSend_localizedStringForKey_value_table_(a1, v219, @"ROUND", &stru_2834BADA0, @"TSCalculationEngine");
    v476 = objc_msgSend_localizedStringForKey_value_table_(a1, v220, @"ROUNDDOWN", &stru_2834BADA0, @"TSCalculationEngine");
    v475 = objc_msgSend_localizedStringForKey_value_table_(a1, v221, @"ROUNDUP", &stru_2834BADA0, @"TSCalculationEngine");
    v474 = objc_msgSend_localizedStringForKey_value_table_(a1, v222, @"SERIESSUM", &stru_2834BADA0, @"TSCalculationEngine");
    v473 = objc_msgSend_localizedStringForKey_value_table_(a1, v223, @"SIGN", &stru_2834BADA0, @"TSCalculationEngine");
    v472 = objc_msgSend_localizedStringForKey_value_table_(a1, v224, @"SIN", &stru_2834BADA0, @"TSCalculationEngine");
    v471 = objc_msgSend_localizedStringForKey_value_table_(a1, v225, @"SINH", &stru_2834BADA0, @"TSCalculationEngine");
    v470 = objc_msgSend_localizedStringForKey_value_table_(a1, v226, @"SQRT", &stru_2834BADA0, @"TSCalculationEngine");
    v469 = objc_msgSend_localizedStringForKey_value_table_(a1, v227, @"SQRTPI", &stru_2834BADA0, @"TSCalculationEngine");
    v468 = objc_msgSend_localizedStringForKey_value_table_(a1, v228, @"SUBTOTAL", &stru_2834BADA0, @"TSCalculationEngine");
    v467 = objc_msgSend_localizedStringForKey_value_table_(a1, v229, @"SUM", &stru_2834BADA0, @"TSCalculationEngine");
    v466 = objc_msgSend_localizedStringForKey_value_table_(a1, v230, @"SUMIF", &stru_2834BADA0, @"TSCalculationEngine");
    v465 = objc_msgSend_localizedStringForKey_value_table_(a1, v231, @"SUMIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v464 = objc_msgSend_localizedStringForKey_value_table_(a1, v232, @"SUMPRODUCT", &stru_2834BADA0, @"TSCalculationEngine");
    v463 = objc_msgSend_localizedStringForKey_value_table_(a1, v233, @"SUMSQ", &stru_2834BADA0, @"TSCalculationEngine");
    v462 = objc_msgSend_localizedStringForKey_value_table_(a1, v234, @"SUMX2MY2", &stru_2834BADA0, @"TSCalculationEngine");
    v461 = objc_msgSend_localizedStringForKey_value_table_(a1, v235, @"SUMX2PY2", &stru_2834BADA0, @"TSCalculationEngine");
    v460 = objc_msgSend_localizedStringForKey_value_table_(a1, v236, @"SUMXMY2", &stru_2834BADA0, @"TSCalculationEngine");
    v459 = objc_msgSend_localizedStringForKey_value_table_(a1, v237, @"TAN", &stru_2834BADA0, @"TSCalculationEngine");
    v458 = objc_msgSend_localizedStringForKey_value_table_(a1, v238, @"TANH", &stru_2834BADA0, @"TSCalculationEngine");
    v457 = objc_msgSend_localizedStringForKey_value_table_(a1, v239, @"TRUNC", &stru_2834BADA0, @"TSCalculationEngine");
    v456 = objc_msgSend_localizedStringForKey_value_table_(a1, v240, @"AVEDEV", &stru_2834BADA0, @"TSCalculationEngine");
    v455 = objc_msgSend_localizedStringForKey_value_table_(a1, v241, @"AVERAGE", &stru_2834BADA0, @"TSCalculationEngine");
    v454 = objc_msgSend_localizedStringForKey_value_table_(a1, v242, @"AVERAGEA", &stru_2834BADA0, @"TSCalculationEngine");
    v453 = objc_msgSend_localizedStringForKey_value_table_(a1, v243, @"AVERAGEIF", &stru_2834BADA0, @"TSCalculationEngine");
    v452 = objc_msgSend_localizedStringForKey_value_table_(a1, v244, @"AVERAGEIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v451 = objc_msgSend_localizedStringForKey_value_table_(a1, v245, @"BETADIST", &stru_2834BADA0, @"TSCalculationEngine");
    v450 = objc_msgSend_localizedStringForKey_value_table_(a1, v246, @"BETAINV", &stru_2834BADA0, @"TSCalculationEngine");
    v449 = objc_msgSend_localizedStringForKey_value_table_(a1, v247, @"BINOMDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v448 = objc_msgSend_localizedStringForKey_value_table_(a1, v248, @"CHIDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v447 = objc_msgSend_localizedStringForKey_value_table_(a1, v249, @"CHIINV", &stru_2834BADA0, @"TSCalculationEngine");
    v446 = objc_msgSend_localizedStringForKey_value_table_(a1, v250, @"CHITEST", &stru_2834BADA0, @"TSCalculationEngine");
    v445 = objc_msgSend_localizedStringForKey_value_table_(a1, v251, @"CONFIDENCE", &stru_2834BADA0, @"TSCalculationEngine");
    v444 = objc_msgSend_localizedStringForKey_value_table_(a1, v252, @"CORREL", &stru_2834BADA0, @"TSCalculationEngine");
    v443 = objc_msgSend_localizedStringForKey_value_table_(a1, v253, @"COUNT", &stru_2834BADA0, @"TSCalculationEngine");
    v442 = objc_msgSend_localizedStringForKey_value_table_(a1, v254, @"COUNTA", &stru_2834BADA0, @"TSCalculationEngine");
    v441 = objc_msgSend_localizedStringForKey_value_table_(a1, v255, @"COUNTBLANK", &stru_2834BADA0, @"TSCalculationEngine");
    v440 = objc_msgSend_localizedStringForKey_value_table_(a1, v256, @"COUNTIF", &stru_2834BADA0, @"TSCalculationEngine");
    v439 = objc_msgSend_localizedStringForKey_value_table_(a1, v257, @"COUNTIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v438 = objc_msgSend_localizedStringForKey_value_table_(a1, v258, @"COVAR", &stru_2834BADA0, @"TSCalculationEngine");
    v437 = objc_msgSend_localizedStringForKey_value_table_(a1, v259, @"CRITBINOM", &stru_2834BADA0, @"TSCalculationEngine");
    v436 = objc_msgSend_localizedStringForKey_value_table_(a1, v260, @"DEVSQ", &stru_2834BADA0, @"TSCalculationEngine");
    v435 = objc_msgSend_localizedStringForKey_value_table_(a1, v261, @"EXPONDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v434 = objc_msgSend_localizedStringForKey_value_table_(a1, v262, @"FDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v433 = objc_msgSend_localizedStringForKey_value_table_(a1, v263, @"FINV", &stru_2834BADA0, @"TSCalculationEngine");
    v432 = objc_msgSend_localizedStringForKey_value_table_(a1, v264, @"FORECAST", &stru_2834BADA0, @"TSCalculationEngine");
    v431 = objc_msgSend_localizedStringForKey_value_table_(a1, v265, @"FREQUENCY", &stru_2834BADA0, @"TSCalculationEngine");
    v430 = objc_msgSend_localizedStringForKey_value_table_(a1, v266, @"GAMMADIST", &stru_2834BADA0, @"TSCalculationEngine");
    v429 = objc_msgSend_localizedStringForKey_value_table_(a1, v267, @"GAMMAINV", &stru_2834BADA0, @"TSCalculationEngine");
    v428 = objc_msgSend_localizedStringForKey_value_table_(a1, v268, @"GAMMALN", &stru_2834BADA0, @"TSCalculationEngine");
    v427 = objc_msgSend_localizedStringForKey_value_table_(a1, v269, @"GEOMEAN", &stru_2834BADA0, @"TSCalculationEngine");
    v426 = objc_msgSend_localizedStringForKey_value_table_(a1, v270, @"HARMEAN", &stru_2834BADA0, @"TSCalculationEngine");
    v425 = objc_msgSend_localizedStringForKey_value_table_(a1, v271, @"INTERCEPT", &stru_2834BADA0, @"TSCalculationEngine");
    v424 = objc_msgSend_localizedStringForKey_value_table_(a1, v272, @"LARGE", &stru_2834BADA0, @"TSCalculationEngine");
    v423 = objc_msgSend_localizedStringForKey_value_table_(a1, v273, @"LINEST", &stru_2834BADA0, @"TSCalculationEngine");
    v422 = objc_msgSend_localizedStringForKey_value_table_(a1, v274, @"LOGINV", &stru_2834BADA0, @"TSCalculationEngine");
    v421 = objc_msgSend_localizedStringForKey_value_table_(a1, v275, @"LOGNORMDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v420 = objc_msgSend_localizedStringForKey_value_table_(a1, v276, @"MAX", &stru_2834BADA0, @"TSCalculationEngine");
    v419 = objc_msgSend_localizedStringForKey_value_table_(a1, v277, @"MAXA", &stru_2834BADA0, @"TSCalculationEngine");
    v418 = objc_msgSend_localizedStringForKey_value_table_(a1, v278, @"MAXIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v417 = objc_msgSend_localizedStringForKey_value_table_(a1, v279, @"MEDIAN", &stru_2834BADA0, @"TSCalculationEngine");
    v416 = objc_msgSend_localizedStringForKey_value_table_(a1, v280, @"MIN", &stru_2834BADA0, @"TSCalculationEngine");
    v415 = objc_msgSend_localizedStringForKey_value_table_(a1, v281, @"MINA", &stru_2834BADA0, @"TSCalculationEngine");
    v414 = objc_msgSend_localizedStringForKey_value_table_(a1, v282, @"MINIFS", &stru_2834BADA0, @"TSCalculationEngine");
    v413 = objc_msgSend_localizedStringForKey_value_table_(a1, v283, @"MODE", &stru_2834BADA0, @"TSCalculationEngine");
    v412 = objc_msgSend_localizedStringForKey_value_table_(a1, v284, @"NEGBINOMDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v411 = objc_msgSend_localizedStringForKey_value_table_(a1, v285, @"NORMDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v410 = objc_msgSend_localizedStringForKey_value_table_(a1, v286, @"NORMINV", &stru_2834BADA0, @"TSCalculationEngine");
    v409 = objc_msgSend_localizedStringForKey_value_table_(a1, v287, @"NORMSDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v408 = objc_msgSend_localizedStringForKey_value_table_(a1, v288, @"NORMSINV", &stru_2834BADA0, @"TSCalculationEngine");
    v407 = objc_msgSend_localizedStringForKey_value_table_(a1, v289, @"PERCENTILE", &stru_2834BADA0, @"TSCalculationEngine");
    v406 = objc_msgSend_localizedStringForKey_value_table_(a1, v290, @"PERCENTRANK", &stru_2834BADA0, @"TSCalculationEngine");
    v405 = objc_msgSend_localizedStringForKey_value_table_(a1, v291, @"PERMUT", &stru_2834BADA0, @"TSCalculationEngine");
    v404 = objc_msgSend_localizedStringForKey_value_table_(a1, v292, @"POISSON", &stru_2834BADA0, @"TSCalculationEngine");
    v403 = objc_msgSend_localizedStringForKey_value_table_(a1, v293, @"PROB", &stru_2834BADA0, @"TSCalculationEngine");
    v402 = objc_msgSend_localizedStringForKey_value_table_(a1, v294, @"QUARTILE", &stru_2834BADA0, @"TSCalculationEngine");
    v401 = objc_msgSend_localizedStringForKey_value_table_(a1, v295, @"RANK", &stru_2834BADA0, @"TSCalculationEngine");
    v400 = objc_msgSend_localizedStringForKey_value_table_(a1, v296, @"SLOPE", &stru_2834BADA0, @"TSCalculationEngine");
    v399 = objc_msgSend_localizedStringForKey_value_table_(a1, v297, @"SMALL", &stru_2834BADA0, @"TSCalculationEngine");
    v398 = objc_msgSend_localizedStringForKey_value_table_(a1, v298, @"STANDARDIZE", &stru_2834BADA0, @"TSCalculationEngine");
    v397 = objc_msgSend_localizedStringForKey_value_table_(a1, v299, @"STDEV", &stru_2834BADA0, @"TSCalculationEngine");
    v396 = objc_msgSend_localizedStringForKey_value_table_(a1, v300, @"STDEVA", &stru_2834BADA0, @"TSCalculationEngine");
    v395 = objc_msgSend_localizedStringForKey_value_table_(a1, v301, @"STDEVP", &stru_2834BADA0, @"TSCalculationEngine");
    v394 = objc_msgSend_localizedStringForKey_value_table_(a1, v302, @"STDEVPA", &stru_2834BADA0, @"TSCalculationEngine");
    v393 = objc_msgSend_localizedStringForKey_value_table_(a1, v303, @"SUBTOTAL", &stru_2834BADA0, @"TSCalculationEngine");
    v392 = objc_msgSend_localizedStringForKey_value_table_(a1, v304, @"TDIST", &stru_2834BADA0, @"TSCalculationEngine");
    v391 = objc_msgSend_localizedStringForKey_value_table_(a1, v305, @"TINV", &stru_2834BADA0, @"TSCalculationEngine");
    v390 = objc_msgSend_localizedStringForKey_value_table_(a1, v306, @"TTEST", &stru_2834BADA0, @"TSCalculationEngine");
    v389 = objc_msgSend_localizedStringForKey_value_table_(a1, v307, @"VAR", &stru_2834BADA0, @"TSCalculationEngine");
    v388 = objc_msgSend_localizedStringForKey_value_table_(a1, v308, @"VARA", &stru_2834BADA0, @"TSCalculationEngine");
    v387 = objc_msgSend_localizedStringForKey_value_table_(a1, v309, @"VARP", &stru_2834BADA0, @"TSCalculationEngine");
    v386 = objc_msgSend_localizedStringForKey_value_table_(a1, v310, @"VARPA", &stru_2834BADA0, @"TSCalculationEngine");
    v385 = objc_msgSend_localizedStringForKey_value_table_(a1, v311, @"WEIBULL", &stru_2834BADA0, @"TSCalculationEngine");
    v384 = objc_msgSend_localizedStringForKey_value_table_(a1, v312, @"ZTEST", &stru_2834BADA0, @"TSCalculationEngine");
    v383 = objc_msgSend_localizedStringForKey_value_table_(a1, v313, @"CHAR", &stru_2834BADA0, @"TSCalculationEngine");
    v382 = objc_msgSend_localizedStringForKey_value_table_(a1, v314, @"CLEAN", &stru_2834BADA0, @"TSCalculationEngine");
    v381 = objc_msgSend_localizedStringForKey_value_table_(a1, v315, @"CODE", &stru_2834BADA0, @"TSCalculationEngine");
    v380 = objc_msgSend_localizedStringForKey_value_table_(a1, v316, @"CONCAT", &stru_2834BADA0, @"TSCalculationEngine");
    v379 = objc_msgSend_localizedStringForKey_value_table_(a1, v317, @"CONCATENATE", &stru_2834BADA0, @"TSCalculationEngine");
    v378 = objc_msgSend_localizedStringForKey_value_table_(a1, v318, @"COUNTMATCHES", &stru_2834BADA0, @"TSCalculationEngine");
    v377 = objc_msgSend_localizedStringForKey_value_table_(a1, v319, @"DOLLAR", &stru_2834BADA0, @"TSCalculationEngine");
    v376 = objc_msgSend_localizedStringForKey_value_table_(a1, v320, @"EXACT", &stru_2834BADA0, @"TSCalculationEngine");
    v375 = objc_msgSend_localizedStringForKey_value_table_(a1, v321, @"FIND", &stru_2834BADA0, @"TSCalculationEngine");
    v374 = objc_msgSend_localizedStringForKey_value_table_(a1, v322, @"FIXED", &stru_2834BADA0, @"TSCalculationEngine");
    v373 = objc_msgSend_localizedStringForKey_value_table_(a1, v323, @"LEFT", &stru_2834BADA0, @"TSCalculationEngine");
    v372 = objc_msgSend_localizedStringForKey_value_table_(a1, v324, @"LEN", &stru_2834BADA0, @"TSCalculationEngine");
    v371 = objc_msgSend_localizedStringForKey_value_table_(a1, v325, @"LOWER", &stru_2834BADA0, @"TSCalculationEngine");
    v370 = objc_msgSend_localizedStringForKey_value_table_(a1, v326, @"MID", &stru_2834BADA0, @"TSCalculationEngine");
    v369 = objc_msgSend_localizedStringForKey_value_table_(a1, v327, @"PLAINTEXT", &stru_2834BADA0, @"TSCalculationEngine");
    v368 = objc_msgSend_localizedStringForKey_value_table_(a1, v328, @"PROPER", &stru_2834BADA0, @"TSCalculationEngine");
    v367 = objc_msgSend_localizedStringForKey_value_table_(a1, v329, @"REGEX", &stru_2834BADA0, @"TSCalculationEngine");
    v366 = objc_msgSend_localizedStringForKey_value_table_(a1, v330, @"REGEX.EXTRACT", &stru_2834BADA0, @"TSCalculationEngine");
    v365 = objc_msgSend_localizedStringForKey_value_table_(a1, v331, @"REPLACE", &stru_2834BADA0, @"TSCalculationEngine");
    v364 = objc_msgSend_localizedStringForKey_value_table_(a1, v332, @"REPT", &stru_2834BADA0, @"TSCalculationEngine");
    v363 = objc_msgSend_localizedStringForKey_value_table_(a1, v333, @"RIGHT", &stru_2834BADA0, @"TSCalculationEngine");
    v362 = objc_msgSend_localizedStringForKey_value_table_(a1, v334, @"SEARCH", &stru_2834BADA0, @"TSCalculationEngine");
    v361 = objc_msgSend_localizedStringForKey_value_table_(a1, v335, @"SUBSTITUTE", &stru_2834BADA0, @"TSCalculationEngine");
    v359 = objc_msgSend_localizedStringForKey_value_table_(a1, v336, @"T", &stru_2834BADA0, @"TSCalculationEngine");
    v358 = objc_msgSend_localizedStringForKey_value_table_(a1, v337, @"TEXTAFTER", &stru_2834BADA0, @"TSCalculationEngine");
    v357 = objc_msgSend_localizedStringForKey_value_table_(a1, v338, @"TEXTBEFORE", &stru_2834BADA0, @"TSCalculationEngine");
    v356 = objc_msgSend_localizedStringForKey_value_table_(a1, v339, @"TEXTBETWEEN", &stru_2834BADA0, @"TSCalculationEngine");
    v355 = objc_msgSend_localizedStringForKey_value_table_(a1, v340, @"TEXTJOIN", &stru_2834BADA0, @"TSCalculationEngine");
    v354 = objc_msgSend_localizedStringForKey_value_table_(a1, v341, @"TEXTSPLIT", &stru_2834BADA0, @"TSCalculationEngine");
    v353 = objc_msgSend_localizedStringForKey_value_table_(a1, v342, @"TRIM", &stru_2834BADA0, @"TSCalculationEngine");
    v352 = objc_msgSend_localizedStringForKey_value_table_(a1, v343, @"UPPER", &stru_2834BADA0, @"TSCalculationEngine");
    v351 = objc_msgSend_localizedStringForKey_value_table_(a1, v344, @"VALUE", &stru_2834BADA0, @"TSCalculationEngine");
    v6 = objc_msgSend_initWithObjectsAndKeys_(v360, v345, v689, v346, v347, @"DATE", v688, @"DATEDIF", v687, @"DATEVALUE", v686, @"DAY", v685, @"DAYNAME", v684, @"DAYS360", v683, @"EDATE", v682, @"EOMONTH", v681, @"HOUR", v680, @"ISOWEEKNUM", v679, @"MINUTE", v678, @"MONTH", v677, @"MONTHNAME", v676, @"NETWORKDAYS", v675, @"NOW", v674, @"SECOND", v673, @"TIME", v672, @"TIMEVALUE", v671, @"TODAY", v670, @"WEEKDAY", v669, @"WEEKNUM", v668, @"WORKDAY", v667, @"YEAR", v666, @"YEARFRAC", v665, @"DURATION", v664, @"DUR2DAYS", v663, @"DUR2HOURS", v662, @"DUR2MILLISECONDS", v661, @"DUR2MINUTES", v660);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v348, v6, @"functionNameToLocalizedDictionary", v349);
  }

  return v6;
}

id sub_2212EFD74(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedFunctionNameToEnglishDictionary", a4, a5);
  if (!v9)
  {
    v33 = objc_msgSend_functionNameForwardLocalizationDictionary(a1, v5, v6, v7, v8);
    v10 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v33;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v35, v39, 16);
    if (v16)
    {
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = objc_msgSend_objectForKey_(v11, v13, v19, v14, v15, v33);
          v24 = objc_msgSend_objectForKeyedSubscript_(v10, v21, v20, v22, v23);
          v25 = v24 == 0;

          if (v25 || (objc_msgSend_isEqualToString_(v19, v26, @"op_Subtract", v27, v28) & 1) != 0 || objc_msgSend_isEqualToString_(v19, v26, @"op_Add", v29, v28))
          {
            objc_msgSend_setObject_forKeyedSubscript_(v10, v26, v19, v20, v28);
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v35, v39, 16);
      }

      while (v16);
    }

    v9 = v10;
    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v30, v9, @"localizedFunctionNameToEnglishDictionary", v31);
  }

  return v9;
}

id sub_2212EFFAC(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_uppercaseString(a3, a2, a3, a4, a5);
  v11 = objc_msgSend_functionLocalizationDictionary(a1, v7, v8, v9, v10);
  v15 = objc_msgSend_objectForKey_(v11, v12, v6, v13, v14);

  return v15;
}

id sub_2212F003C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_functionLocalizationDictionary(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_allKeys(v5, v6, v7, v8, v9);

  return v10;
}

id sub_2212F0098(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"mappings_localizedTypeStringForArgumentType", a4, a5);
  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x277CBEAC0]);
    v103 = objc_msgSend_localizedStringForKey_value_table_(a1, v11, @"an error", &stru_2834BADA0, @"TSCalculationEngine");
    v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, 9, v13, v14);
    v17 = objc_msgSend_localizedStringForKey_value_table_(a1, v16, @"an empty cell", &stru_2834BADA0, @"TSCalculationEngine");
    v125 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v18, 0, v19, v20);
    v22 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"empty", &stru_2834BADA0, @"TSCalculationEngine");
    objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v23, 10, v24, v25);
    v123 = v22;
    v124 = v102 = a3;
    v27 = objc_msgSend_localizedStringForKey_value_table_(a1, v26, @"a number", &stru_2834BADA0, @"TSCalculationEngine");
    v122 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v28, 5, v29, v30);
    v121 = objc_msgSend_localizedStringForKey_value_table_(a1, v31, @"a string", &stru_2834BADA0, @"TSCalculationEngine");
    v120 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v32, 7, v33, v34);
    v119 = objc_msgSend_localizedStringForKey_value_table_(a1, v35, @"a Boolean", &stru_2834BADA0, @"TSCalculationEngine");
    v118 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v36, 2, v37, v38);
    v117 = objc_msgSend_localizedStringForKey_value_table_(a1, v39, @"a date", &stru_2834BADA0, @"TSCalculationEngine");
    v116 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v40, 3, v41, v42);
    v115 = objc_msgSend_localizedStringForKey_value_table_(a1, v43, @"a reference", &stru_2834BADA0, @"TSCalculationEngine");
    v114 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v44, 6, v45, v46);
    v113 = objc_msgSend_localizedStringForKey_value_table_(a1, v47, @"an array", &stru_2834BADA0, @"TSCalculationEngine");
    v112 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v48, 1, v49, v50);
    v111 = objc_msgSend_localizedStringForKey_value_table_(a1, v51, @"an array", &stru_2834BADA0, @"TSCalculationEngine");
    v110 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v52, 16, v53, v54);
    v109 = objc_msgSend_localizedStringForKey_value_table_(a1, v55, @"a duration", &stru_2834BADA0, @"TSCalculationEngine");
    v108 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v56, 4, v57, v58);
    v107 = objc_msgSend_localizedStringForKey_value_table_(a1, v59, @"anything", &stru_2834BADA0, @"TSCalculationEngine");
    v106 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v60, 0xFFFFFFFFLL, v61, v62);
    v105 = objc_msgSend_localizedStringForKey_value_table_(a1, v63, @"a number, date, or duration", &stru_2834BADA0, @"TSCalculationEngine");
    v104 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v64, 8, v65, v66);
    v101 = objc_msgSend_localizedStringForKey_value_table_(a1, v67, @"a variable", &stru_2834BADA0, @"TSCalculationEngine");
    v100 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v68, 18, v69, v70);
    v99 = objc_msgSend_localizedStringForKey_value_table_(a1, v71, @"an identifier", &stru_2834BADA0, @"TSCalculationEngine");
    v98 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v72, 20, v73, v74);
    v76 = objc_msgSend_localizedStringForKey_value_table_(a1, v75, @"a lambda", &stru_2834BADA0, @"TSCalculationEngine");
    v97 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v77, 19, v78, v79);
    v81 = objc_msgSend_localizedStringForKey_value_table_(a1, v80, @"a number, or BOOLean", &stru_2834BADA0, @"TSCalculationEngine");
    v85 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v82, 21, v83, v84);
    v9 = objc_msgSend_initWithObjectsAndKeys_(v10, v86, v103, v87, v88, v15, v17, v125, v22, v124, v27, v122, v121, v120, v119, v118, v117, v116, v115, v114, v113, v112, v111, v110, v109, v108, v107, v106, v105, v104, v101, v100, v99, v98, v76, v97, v81, v85, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v89, v9, @"mappings_localizedTypeStringForArgumentType", v90);
    a3 = v102;
  }

  v91 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, a3, v7, v8);
  v95 = objc_msgSend_objectForKey_(v9, v92, v91, v93, v94);

  return v95;
}

void sub_2212F07A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50, uint64_t a51, void *a52, void *a53, void *a54)
{
  v58 = *(v57 - 120);

  _Unwind_Resume(a1);
}

uint64_t sub_2212F0A40(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_localizedTrueString(a1, v5, v6, v7, v8);
  IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(a1, v10, v4, v9, v11);

  return IsEqual_toString;
}

id sub_2212F0ABC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"sLocalizedTrue", a4, a5);
  if (!v7)
  {
    v7 = objc_msgSend_localizedStringForKey_value_table_(a1, v6, @"TRUE", &stru_2834BADA0, @"TSCalculationEngine");
    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v8, v7, @"sLocalizedTrue", v9);
  }

  return v7;
}

uint64_t sub_2212F0B64(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_localizedFalseString(a1, v5, v6, v7, v8);
  IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(a1, v10, v4, v9, v11);

  return IsEqual_toString;
}

id sub_2212F0BE0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"sLocalizedFalse", a4, a5);
  if (!v7)
  {
    v7 = objc_msgSend_localizedStringForKey_value_table_(a1, v6, @"FALSE", &stru_2834BADA0, @"TSCalculationEngine");
    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v8, v7, @"sLocalizedFalse", v9);
  }

  return v7;
}

id sub_2212F0C88(void *a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedFunctionNameForMenuTag", a4, a5);
  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x277CBEA60]);
    v44 = objc_msgSend_localizedStringForKey_value_table_(a1, v11, @"SUM", &stru_2834BADA0, @"TSCalculationEngine");
    v13 = objc_msgSend_localizedStringForKey_value_table_(a1, v12, @"AVERAGE", &stru_2834BADA0, @"TSCalculationEngine");
    v15 = objc_msgSend_localizedStringForKey_value_table_(a1, v14, @"COUNT", &stru_2834BADA0, @"TSCalculationEngine");
    v41 = objc_msgSend_localizedStringForKey_value_table_(a1, v16, @"MAX", &stru_2834BADA0, @"TSCalculationEngine");
    v18 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"MIN", &stru_2834BADA0, @"TSCalculationEngine");
    v43 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"PRODUCT", &stru_2834BADA0, @"TSCalculationEngine");
    v42 = objc_msgSend_localizedStringForKey_value_table_(a1, v20, @"STDEVA", &stru_2834BADA0, @"TSCalculationEngine");
    v40 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"STDEVPA", &stru_2834BADA0, @"TSCalculationEngine");
    v39 = objc_msgSend_localizedStringForKey_value_table_(a1, v22, @"VARA", &stru_2834BADA0, @"TSCalculationEngine");
    v38 = objc_msgSend_localizedStringForKey_value_table_(a1, v23, @"VARPA", &stru_2834BADA0, @"TSCalculationEngine");
    v37 = objc_msgSend_localizedStringForKey_value_table_(a1, v24, @"Mean", &stru_2834BADA0, @"TSCalculationEngine");
    v36 = objc_msgSend_localizedStringForKey_value_table_(a1, v25, @"Median", &stru_2834BADA0, @"TSCalculationEngine");
    v35 = v15;
    v27 = objc_msgSend_localizedStringForKey_value_table_(a1, v26, @"Mode", &stru_2834BADA0, @"TSCalculationEngine");
    v9 = objc_msgSend_initWithObjects_(v10, v28, v44, v29, v30, v13, v35, v41, v18, v43, v42, v40, v39, v38, v37, v36, v27, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v31, v9, @"localizedFunctionNameForMenuTag", v32);
  }

  v33 = objc_msgSend_objectAtIndex_(v9, v6, a3, v7, v8);

  return v33;
}

void sub_2212F0FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27, void *a28)
{
  v32 = *(v30 - 120);
  v31 = *(v30 - 112);
  v33 = *(v30 - 128);

  _Unwind_Resume(a1);
}

id sub_2212F1160(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_functionNameForwardLocalizationDictionary(a1, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKey_(v9, v10, v4, v11, v12);

  if (v4 && !v13)
  {
    if (objc_msgSend_hasPrefix_(v4, v14, @"__", v15, v16))
    {
      v13 = 0;
    }

    else
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSULocale(TSCELocalization) localizedNameForFunction:]", v18, v19);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELocalization.mm", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 597, 0, "ERROR: No localized name found for '%{public}@', reverting to english name.", v4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
      v13 = v4;
    }
  }

  return v13;
}

id sub_2212F12B0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_TOOLTIP", a4, a5, a3);
  v10 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8, v9);

  return v10;
}

id sub_2212F1334(void *a1, uint64_t a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v44 = v4;
  v11 = objc_msgSend_localeSpecificStorageForKey_(a1, v5, @"localizedCategoryForFunction:", v6, v7);
  if (!v11)
  {
    v43 = a1;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = objc_msgSend_localizedFunctionCategoryDictionary(v43, v13, v14, v15, v16);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = objc_msgSend_allKeys(v17, v18, v19, v20, v21);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v50, v55, 16);
    if (v27)
    {
      v28 = *v51;
      obj = v22;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v50 + 1) + 8 * i);
          v31 = objc_msgSend_objectForKey_(v17, v24, v30, v25, v26);
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v32 = v31;
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v46, v54, 16);
          if (v36)
          {
            v37 = *v47;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v47 != v37)
                {
                  objc_enumerationMutation(v32);
                }

                objc_msgSend_setObject_forKey_(v12, v34, v30, *(*(&v46 + 1) + 8 * j), v35);
              }

              v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v46, v54, 16);
            }

            while (v36);
          }
        }

        v22 = obj;
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v50, v55, 16);
      }

      while (v27);
    }

    objc_msgSend_setLocaleSpecificStorage_forKey_(v43, v39, v12, @"localizedCategoryForFunction:", v40);
    v11 = v12;
    v4 = v44;
  }

  v41 = objc_msgSend_objectForKey_(v11, v8, v4, v9, v10);

  return v41;
}

id sub_2212F15F8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu", a4, a5, a4, a3);
  v10 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8, v9);

  return v10;
}

id sub_2212F167C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_TOOLTIP", a4, a5, a4, a3);
  v10 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8, v9);

  return v10;
}

id sub_2212F1700(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_MODE_%d", a4, a5, a5, a3, a4);
  v10 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8, v9);

  return v10;
}

id sub_2212F178C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_MODE_%d_TOOLTIP", a4, a5, a5, a3, a4);
  v10 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8, v9);

  return v10;
}

id sub_2212F1818(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_LAMBDA_%d", a4, a5, a5, a3, a4);
  v10 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8, v9);

  return v10;
}

id sub_2212F18A4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@_ARGUMENT_%lu_LAMBDA_%d_TOOLTIP", a4, a5, a5, a3, a4);
  v10 = objc_msgSend__localizedStringFromArgumentsTable_(a1, v7, v6, v8, v9);

  return v10;
}

id sub_2212F1930(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(a1, a2, a3, &stru_2834BADA0, @"arguments");

  return v3;
}

void sub_2212F196C(void *a1)
{
  v79 = sub_2212F6DF8();
  v76 = objc_msgSend_localizations(v79, v1, v2, v3, v4);
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_count(v76, v6, v7, v8, v9);
  v78 = objc_msgSend_initWithCapacity_(v5, v11, v10, v12, v13);
  v14 = objc_alloc(MEMORY[0x277CBEB18]);
  v19 = objc_msgSend_count(v76, v15, v16, v17, v18);
  v77 = objc_msgSend_initWithCapacity_(v14, v20, v19, v21, v22);
  v80 = objc_msgSend_objectEnumerator(v76, v23, v24, v25, v26);
  for (i = 0; ; i = v32)
  {
    v32 = objc_msgSend_nextObject(v80, v27, v28, v29, v30);

    if (!v32)
    {
      break;
    }

    v37 = objc_msgSend_pathForResource_ofType_inDirectory_forLocalization_(v79, v33, @"Localizable", @"strings", 0, v32);
    v41 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v38, v37, v39, v40);
    v45 = objc_msgSend_objectForKey_(v41, v42, @"TRUE", v43, v44);
    v52 = objc_msgSend_objectForKey_(v41, v46, @"FALSE", v47, v48);
    if (v45)
    {
      objc_msgSend_addObject_(v78, v49, v45, v50, v51);
    }

    if (v52)
    {
      objc_msgSend_addObject_(v77, v49, v52, v50, v51);
    }
  }

  if (!v78 || !objc_msgSend_count(v78, v33, v34, v35, v36))
  {
    v57 = sub_2212F6DF8();
    v59 = objc_msgSend_localizedStringForKey_value_table_(v57, v58, @"TRUE", &stru_2834BADA0, @"TSCalculationEngine");

    if (v59)
    {
      v60 = objc_alloc(MEMORY[0x277CBEB18]);
      v78 = objc_msgSend_initWithObjects_(v60, v61, v59, v62, v63, 0);
    }

    else
    {
      v78 = 0;
    }
  }

  if (!v77 || !objc_msgSend_count(v77, v53, v54, v55, v56))
  {
    v66 = sub_2212F6DF8();
    v68 = objc_msgSend_localizedStringForKey_value_table_(v66, v67, @"FALSE", &stru_2834BADA0, @"TSCalculationEngine");

    if (v68)
    {
      v69 = objc_alloc(MEMORY[0x277CBEB18]);
      v77 = objc_msgSend_initWithObjects_(v69, v70, v68, v71, v72, 0);
    }

    else
    {
      v77 = 0;
    }
  }

  __dmb(0xBu);
  objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v64, v78, @"sLocalizedTrueStrings", v65);
  objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v73, v77, @"sLocalizedFalseStrings", v74);
}

id sub_2212F1D28(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"sLocalizedTrueStrings", a4, a5);
  if (!v6)
  {
    v7 = a1;
    objc_sync_enter(v7);
    objc_msgSend_loadLocalizedStrings(v7, v8, v9, v10, v11);
    objc_sync_exit(v7);

    v6 = objc_msgSend_localizedTrueStrings(v7, v12, v13, v14, v15);
  }

  return v6;
}

void sub_2212F1D98(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_2212F1DB0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"sLocalizedFalseStrings", a4, a5);
  if (!v6)
  {
    v7 = a1;
    objc_sync_enter(v7);
    objc_msgSend_loadLocalizedStrings(v7, v8, v9, v10, v11);
    objc_sync_exit(v7);

    v6 = objc_msgSend_localizedFalseStrings(v7, v12, v13, v14, v15);
  }

  return v6;
}

void sub_2212F1E20(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_2212F1E38(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_count(v4, v6, v7, v8, v9);
  v14 = objc_msgSend_initWithCapacity_(v5, v11, v10, v12, v13);
  v50 = v4;
  v23 = objc_msgSend_objectEnumerator(v4, v15, v16, v17, v18);
  for (i = 0; ; i = v25)
  {
    v25 = objc_msgSend_nextObject(v23, v19, v20, v21, v22);

    if (!v25)
    {
      break;
    }

    v32 = objc_msgSend_localizedNameForFunction_(a1, v26, v25, v27, v28);
    if (v32)
    {
      v33 = objc_msgSend_localizedNameForFunction_(a1, v29, v25, v30, v31);
      objc_msgSend_addObject_(v14, v34, v33, v35, v36);
    }

    else
    {
      v37 = MEMORY[0x277D81150];
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSULocale(TSCELocalization) localizedNamesForFunctions:]", v30, v31);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCELocalization.mm", v40, v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v43, v38, v42, 763, 0, "Either %@ was translated improperly, or some other function was translated to the same name.", v25);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
    }
  }

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_2212F2090;
  v51[3] = &unk_278462D28;
  v51[4] = a1;
  v48 = objc_msgSend_sortedArrayUsingComparator_(v14, v26, v51, v27, v28);

  return v48;
}

id sub_2212F20A0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedFunctionCategoryDictionary", a4, a5);
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v105 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v7, @"DATE", v8, v9, @"DATEDIF", @"DATEVALUE", @"DAY", @"DAYNAME", @"DAYS360", @"EDATE", @"EOMONTH", @"HOUR", @"ISOWEEKNUM", @"MINUTE", @"MONTH", @"MONTHNAME", @"NETWORKDAYS", @"NOW", @"SECOND", @"TIME", @"TIMEVALUE", @"TODAY", @"WEEKDAY", @"WEEKNUM", @"WORKDAY", @"YEAR", @"YEARFRAC", 0);
    v13 = objc_msgSend_localizedNamesForFunctions_(a1, v10, v105, v11, v12);
    v113 = objc_msgSend_localizedStringForKey_value_table_(a1, v14, @"Date and Time", &stru_2834BADA0, @"TSCalculationEngine");
    v104 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v15, @"DURATION", v16, v17, @"DUR2DAYS", @"DUR2HOURS", @"DUR2MILLISECONDS", @"DUR2MINUTES", @"DUR2SECONDS", @"DUR2WEEKS", @"STRIPDURATION", 0);
    v112 = objc_msgSend_localizedNamesForFunctions_(a1, v18, v104, v19, v20);
    v103 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"Duration", &stru_2834BADA0, @"TSCalculationEngine");
    v102 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v22, @"BASETONUM", v23, v24, @"BESSELJ", @"BESSELY", @"BIN2DEC", @"BIN2HEX", @"BIN2OCT", @"BITAND", @"BITLSHIFT", @"BITOR", @"BITRSHIFT", @"BITXOR", @"CONVERT", @"DEC2BIN", @"DEC2HEX", @"DEC2OCT", @"DELTA", @"ERF", @"ERFC", @"GESTEP", @"HEX2BIN", @"HEX2DEC", @"HEX2OCT", @"NUMTOBASE", @"OCT2BIN", @"OCT2DEC", @"OCT2HEX", 0);
    v101 = objc_msgSend_localizedNamesForFunctions_(a1, v25, v102, v26, v27);
    v111 = objc_msgSend_localizedStringForKey_value_table_(a1, v28, @"Engineering", &stru_2834BADA0, @"TSCalculationEngine");
    v100 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v29, @"ACCRINT", v30, v31, @"ACCRINTM", @"BONDDURATION", @"BONDMDURATION", @"COUPDAYBS", @"COUPDAYS", @"COUPDAYSNC", @"COUPNUM", @"CUMIPMT", @"CUMPRINC", @"CURRENCY", @"CURRENCYCODE", @"CURRENCYCONVERT", @"CURRENCYH", @"DB", @"DDB", @"DISC", @"EFFECT", @"FV", @"INTRATE", @"IPMT", @"IRR", @"ISPMT", @"MIRR", @"NOMINAL", @"NPER", @"NPV", @"PMT", @"PPMT", @"PRICE", @"PRICEDISC", @"PRICEMAT", @"PV", @"RATE", @"RECEIVED", @"SLN", @"STOCK", @"STOCKH", @"SYD", @"VDB", @"XIRR", @"XNPV", @"YIELD", @"YIELDDISC", @"YIELDMAT", 0);
    v99 = objc_msgSend_localizedNamesForFunctions_(a1, v32, v100, v33, v34);
    v36 = objc_msgSend_localizedStringForKey_value_table_(a1, v35, @"Financial", &stru_2834BADA0, @"TSCalculationEngine");
    v98 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v37, @"AND", v38, v39, @"BYCOL", @"BYROW", @"FALSE", @"IF", @"IFS", @"IFERROR", @"ISBLANK", @"ISDATE", @"ISERROR", @"ISEVEN", @"ISNUMBER", @"ISNUMBERORDATE", @"ISODD", @"ISOMITTED", @"ISTEXT", @"LAMBDA", @"LAMBDA.APPLY", @"LET", @"MAKEARRAY", @"MAP", @"NOT", @"OR", @"REDUCE", @"SCAN", @"SWITCH", @"TRUE", 0);
    v97 = objc_msgSend_localizedNamesForFunctions_(a1, v40, v98, v41, v42);
    v96 = objc_msgSend_localizedStringForKey_value_table_(a1, v43, @"Logical and Information", &stru_2834BADA0, @"TSCalculationEngine");
    v95 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v44, @"ADDRESS", v45, v46, @"AREAS", @"CHOOSE", @"CHOOSECOLS", @"CHOOSEROWS", @"COLUMN", @"COLUMNS", @"DROP", @"EXPAND", @"FILTER", @"FORMULATEXT", @"GETPIVOTDATA", @"HLOOKUP", @"HSTACK", @"HYPERLINK", @"INDEX", @"INDIRECT", @"INTERSECT.RANGES", @"LOOKUP", @"MATCH", @"OFFSET", @"REFERENCE.NAME", @"ROW", @"ROWS", @"SEQUENCE", @"SORT", @"SORTBY", @"TAKE", @"TOCOL", @"TOROW", @"TRANSPOSE", @"UNION.RANGES", @"UNIQUE", @"VLOOKUP", @"VSTACK", @"WRAPCOLS", @"WRAPROWS", @"XLOOKUP", @"XMATCH", 0);
    v110 = objc_msgSend_localizedNamesForFunctions_(a1, v47, v95, v48, v49);
    v109 = objc_msgSend_localizedStringForKey_value_table_(a1, v50, @"Reference", &stru_2834BADA0, @"TSCalculationEngine");
    v94 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v51, @"ABS", v52, v53, @"CEILING", @"COMBIN", @"EVEN", @"EXP", @"FACT", @"FACTDOUBLE", @"FLOOR", @"GCD", @"INT", @"LCM", @"LN", @"LOG", @"LOG10", @"MDETERM", @"MINVERSE", @"MMULT", @"MOD", @"MROUND", @"MULTINOMIAL", @"MUNIT", @"ODD", @"PI", @"POLYNOMIAL", @"POWER", @"PRODUCT", @"QUOTIENT", @"RAND", @"RANDARRAY", @"RANDBETWEEN", @"ROMAN", @"ROUND", @"ROUNDDOWN", @"ROUNDUP", @"SERIESSUM", @"SIGN", @"SQRT", @"SQRTPI", @"SUBTOTAL", @"SUM", @"SUMIF", @"SUMIFS", @"SUMPRODUCT", @"SUMSQ", @"SUMX2MY2", @"SUMX2PY2", @"SUMXMY2", @"TRUNC", 0);
    v108 = objc_msgSend_localizedNamesForFunctions_(a1, v54, v94, v55, v56);
    v107 = objc_msgSend_localizedStringForKey_value_table_(a1, v57, @"Numeric", &stru_2834BADA0, @"TSCalculationEngine");
    v93 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v58, @"ACOS", v59, v60, @"ACOSH", @"ASIN", @"ASINH", @"ATAN", @"ATAN2", @"ATANH", @"COS", @"COSH", @"DEGREES", @"RADIANS", @"SIN", @"SINH", @"TAN", @"TANH", 0);
    v92 = objc_msgSend_localizedNamesForFunctions_(a1, v61, v93, v62, v63);
    v65 = objc_msgSend_localizedStringForKey_value_table_(a1, v64, @"Trigonometric", &stru_2834BADA0, @"TSCalculationEngine");
    v91 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v66, @"AVEDEV", v67, v68, @"AVERAGE", @"AVERAGEA", @"AVERAGEIF", @"AVERAGEIFS", @"BETADIST", @"BETAINV", @"BINOMDIST", @"CHIDIST", @"CHIINV", @"CHITEST", @"CONFIDENCE", @"CORREL", @"COUNT", @"COUNTA", @"COUNTBLANK", @"COUNTIF", @"COUNTIFS", @"COVAR", @"CRITBINOM", @"DEVSQ", @"EXPONDIST", @"FDIST", @"FINV", @"FORECAST", @"FREQUENCY", @"GAMMADIST", @"GAMMAINV", @"GAMMALN", @"GEOMEAN", @"HARMEAN", @"INTERCEPT", @"LARGE", @"LINEST", @"LOGINV", @"LOGNORMDIST", @"MAX", @"MAXA", @"MAXIFS", @"MEDIAN", @"MIN", @"MINA", @"MINIFS", @"MODE", @"NEGBINOMDIST", @"NORMDIST", @"NORMINV", @"NORMSDIST", @"NORMSINV", @"PERCENTILE", @"PERCENTRANK", @"PERMUT", @"POISSON", @"PROB", @"QUARTILE", @"RANK", @"SLOPE", @"SMALL", @"STANDARDIZE");
    v90 = objc_msgSend_localizedNamesForFunctions_(a1, v69, v91, v70, v71);
    v89 = objc_msgSend_localizedStringForKey_value_table_(a1, v72, @"Statistical", &stru_2834BADA0, @"TSCalculationEngine");
    v88 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v73, @"ARRAYTOTEXT", v74, v75, @"CHAR", @"CLEAN", @"CODE", @"COUNTMATCHES", @"DOLLAR", @"FIXED", @"CONCAT", @"CONCATENATE", @"EXACT", @"FIND", @"LEFT", @"LEN", @"LOWER", @"MID", @"PLAINTEXT", @"PROPER", @"REGEX", @"REGEX.EXTRACT", @"REPLACE", @"REPT", @"RIGHT", @"SEARCH", @"SUBSTITUTE", @"T", @"TEXTAFTER", @"TEXTBEFORE", @"TEXTBETWEEN", @"TEXTJOIN", @"TEXTSPLIT", @"TRIM", @"UPPER", @"VALUE", 0);
    v87 = objc_msgSend_localizedNamesForFunctions_(a1, v76, v88, v77, v78);
    v106 = v13;
    v80 = objc_msgSend_localizedStringForKey_value_table_(a1, v79, @"Text", &stru_2834BADA0, @"TSCalculationEngine");
    v5 = objc_msgSend_initWithObjectsAndKeys_(v6, v81, v13, v82, v83, v113, v112, v103, v101, v111, v99, v36, v97, v96, v110, v109, v108, v107, v92, v65, v90, v89, v87, v80, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v84, v5, @"localizedFunctionCategoryDictionary", v85);
  }

  return v5;
}

void sub_2212F331C(_Unwind_Exception *a1)
{
  v3 = STACK[0x240];
  v4 = STACK[0x248];
  v5 = *(v2 - 160);

  _Unwind_Resume(a1);
}

id sub_2212F3568(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedCategoryArray", a4, a5);
  if (!v10)
  {
    v11 = objc_msgSend_localizedFunctionCategoryDictionary(a1, v6, v7, v8, v9);
    v16 = objc_msgSend_allKeys(v11, v12, v13, v14, v15);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2212F367C;
    v23[3] = &unk_278462D28;
    v23[4] = a1;
    v10 = objc_msgSend_sortedArrayUsingComparator_(v16, v17, v23, v18, v19);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v20, v10, @"localizedCategoryArray", v21);
  }

  return v10;
}

id sub_2212F368C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"allLocalizedFunctions", a4, a5);
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_msgSend_localizedFunctionCategoryDictionary(a1, v8, v9, v10, v11);
    v17 = objc_msgSend_allValues(v12, v13, v14, v15, v16);

    v25 = objc_msgSend_count(v17, v18, v19, v20, v21);
    if (v25)
    {
      for (i = 0; i != v25; ++i)
      {
        v27 = objc_msgSend_objectAtIndex_(v17, v22, i, v23, v24);
        objc_msgSend_addObjectsFromArray_(v7, v28, v27, v29, v30);
      }
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_2212F3824;
    v34[3] = &unk_278462D28;
    v34[4] = a1;
    v6 = objc_msgSend_sortedArrayUsingComparator_(v7, v22, v34, v23, v24);
    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v31, v6, @"allLocalizedFunctions", v32);
  }

  return v6;
}

__CFString *sub_2212F3834(void *a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedLabelForAggType", a4, a5);
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x277CBEA60]);
    v61 = objc_msgSend_localizedStringForKey_value_table_(a1, v12, @"No Summary", &stru_2834BADA0, @"TSCalculationEngine");
    v77 = objc_msgSend_localizedStringForKey_value_table_(a1, v13, @"Count (All)", &stru_2834BADA0, @"TSCalculationEngine");
    v15 = objc_msgSend_localizedStringForKey_value_table_(a1, v14, @"Sum", &stru_2834BADA0, @"TSCalculationEngine");
    v76 = objc_msgSend_localizedStringForKey_value_table_(a1, v16, @"Average (All)", &stru_2834BADA0, @"TSCalculationEngine");
    v75 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"Minimum", &stru_2834BADA0, @"TSCalculationEngine");
    v74 = objc_msgSend_localizedStringForKey_value_table_(a1, v18, @"Maximum", &stru_2834BADA0, @"TSCalculationEngine");
    v20 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"Category", &stru_2834BADA0, @"TSCalculationEngine");
    v73 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"Group Name", &stru_2834BADA0, @"TSCalculationEngine");
    v72 = objc_msgSend_localizedStringForKey_value_table_(a1, v22, @"Body", &stru_2834BADA0, @"TSCalculationEngine");
    v71 = objc_msgSend_localizedStringForKey_value_table_(a1, v23, @"Label", &stru_2834BADA0, @"TSCalculationEngine");
    v25 = objc_msgSend_localizedStringForKey_value_table_(a1, v24, @"Count", &stru_2834BADA0, @"TSCalculationEngine");
    v70 = objc_msgSend_localizedStringForKey_value_table_(a1, v26, @"Count (Unique)", &stru_2834BADA0, @"TSCalculationEngine");
    v69 = objc_msgSend_localizedStringForKey_value_table_(a1, v27, @"Rows", &stru_2834BADA0, @"TSCalculationEngine");
    v68 = objc_msgSend_localizedStringForKey_value_table_(a1, v28, @"Count (Duplicates)", &stru_2834BADA0, @"TSCalculationEngine");
    v30 = objc_msgSend_localizedStringForKey_value_table_(a1, v29, @"Count (Blank)", &stru_2834BADA0, @"TSCalculationEngine");
    v67 = objc_msgSend_localizedStringForKey_value_table_(a1, v31, @"Average", &stru_2834BADA0, @"TSCalculationEngine");
    v66 = objc_msgSend_localizedStringForKey_value_table_(a1, v32, @"Median", &stru_2834BADA0, @"TSCalculationEngine");
    v65 = objc_msgSend_localizedStringForKey_value_table_(a1, v33, @"MODE", &stru_2834BADA0, @"TSCalculationEngine");
    v64 = objc_msgSend_localizedStringForKey_value_table_(a1, v34, @"Product", &stru_2834BADA0, @"TSCalculationEngine");
    v63 = objc_msgSend_localizedStringForKey_value_table_(a1, v35, @"RANGE", &stru_2834BADA0, @"TSCalculationEngine");
    v62 = objc_msgSend_localizedStringForKey_value_table_(a1, v36, @"STDEV", &stru_2834BADA0, @"TSCalculationEngine");
    v60 = objc_msgSend_localizedStringForKey_value_table_(a1, v37, @"STDEVA", &stru_2834BADA0, @"TSCalculationEngine");
    v59 = objc_msgSend_localizedStringForKey_value_table_(a1, v38, @"STDEVP", &stru_2834BADA0, @"TSCalculationEngine");
    v58 = objc_msgSend_localizedStringForKey_value_table_(a1, v39, @"STDEVPA", &stru_2834BADA0, @"TSCalculationEngine");
    v57 = objc_msgSend_localizedStringForKey_value_table_(a1, v40, @"VAR", &stru_2834BADA0, @"TSCalculationEngine");
    v56 = objc_msgSend_localizedStringForKey_value_table_(a1, v41, @"VARA", &stru_2834BADA0, @"TSCalculationEngine");
    v55 = objc_msgSend_localizedStringForKey_value_table_(a1, v42, @"VARP", &stru_2834BADA0, @"TSCalculationEngine");
    v44 = objc_msgSend_localizedStringForKey_value_table_(a1, v43, @"VARPA", &stru_2834BADA0, @"TSCalculationEngine");
    v10 = objc_msgSend_initWithObjects_(v11, v45, v61, v46, v47, v77, v15, v76, v75, v74, &stru_2834BADA0, v20, &stru_2834BADA0, v73, v72, &stru_2834BADA0, v71, v25, v70, v69, v68, v30, v67, v66, v65, v64, v63, &stru_2834BADA0, &stru_2834BADA0, &stru_2834BADA0, v62, v60, v59, v58, v57, v56, v55, v44, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v48, v10, @"localizedLabelForAggType", v49);
  }

  if (objc_msgSend_count(v10, v6, v7, v8, v9) <= a3)
  {
    v53 = &stru_2834BADA0;
  }

  else
  {
    v53 = objc_msgSend_objectAtIndex_(v10, v50, a3, v51, v52);
  }

  return v53;
}

void sub_2212F3F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50)
{
  v53 = *(v51 - 248);
  v52 = *(v51 - 240);
  v55 = *(v51 - 112);
  v54 = *(v51 - 104);
  v56 = *(v51 - 232);

  _Unwind_Resume(a1);
}

__CFString *sub_2212F4184(void *a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_localeSpecificStorageForKey_(a1, a2, @"localizedShortLabelForAggType", a4, a5);
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x277CBEA60]);
    v61 = objc_msgSend_localizedStringForKey_value_table_(a1, v12, @"No Summary", &stru_2834BADA0, @"TSCalculationEngine");
    v77 = objc_msgSend_localizedStringForKey_value_table_(a1, v13, @"Count All", &stru_2834BADA0, @"TSCalculationEngine");
    v15 = objc_msgSend_localizedStringForKey_value_table_(a1, v14, @"Sum", &stru_2834BADA0, @"TSCalculationEngine");
    v76 = objc_msgSend_localizedStringForKey_value_table_(a1, v16, @"Average All", &stru_2834BADA0, @"TSCalculationEngine");
    v75 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"Min.", &stru_2834BADA0, @"TSCalculationEngine");
    v74 = objc_msgSend_localizedStringForKey_value_table_(a1, v18, @"Max.", &stru_2834BADA0, @"TSCalculationEngine");
    v20 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"Category", &stru_2834BADA0, @"TSCalculationEngine");
    v73 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"Group Name", &stru_2834BADA0, @"TSCalculationEngine");
    v72 = objc_msgSend_localizedStringForKey_value_table_(a1, v22, @"Body", &stru_2834BADA0, @"TSCalculationEngine");
    v71 = objc_msgSend_localizedStringForKey_value_table_(a1, v23, @"Label", &stru_2834BADA0, @"TSCalculationEngine");
    v25 = objc_msgSend_localizedStringForKey_value_table_(a1, v24, @"Count", &stru_2834BADA0, @"TSCalculationEngine");
    v70 = objc_msgSend_localizedStringForKey_value_table_(a1, v26, @"Unique", &stru_2834BADA0, @"TSCalculationEngine");
    v69 = objc_msgSend_localizedStringForKey_value_table_(a1, v27, @"Rows", &stru_2834BADA0, @"TSCalculationEngine");
    v68 = objc_msgSend_localizedStringForKey_value_table_(a1, v28, @"Count Duplicates", &stru_2834BADA0, @"TSCalculationEngine");
    v30 = objc_msgSend_localizedStringForKey_value_table_(a1, v29, @"Count Blank", &stru_2834BADA0, @"TSCalculationEngine");
    v67 = objc_msgSend_localizedStringForKey_value_table_(a1, v31, @"Average", &stru_2834BADA0, @"TSCalculationEngine");
    v66 = objc_msgSend_localizedStringForKey_value_table_(a1, v32, @"Median", &stru_2834BADA0, @"TSCalculationEngine");
    v65 = objc_msgSend_localizedStringForKey_value_table_(a1, v33, @"MODE", &stru_2834BADA0, @"TSCalculationEngine");
    v64 = objc_msgSend_localizedStringForKey_value_table_(a1, v34, @"Product", &stru_2834BADA0, @"TSCalculationEngine");
    v63 = objc_msgSend_localizedStringForKey_value_table_(a1, v35, @"RANGE", &stru_2834BADA0, @"TSCalculationEngine");
    v62 = objc_msgSend_localizedStringForKey_value_table_(a1, v36, @"STDEV", &stru_2834BADA0, @"TSCalculationEngine");
    v60 = objc_msgSend_localizedStringForKey_value_table_(a1, v37, @"STDEVA", &stru_2834BADA0, @"TSCalculationEngine");
    v59 = objc_msgSend_localizedStringForKey_value_table_(a1, v38, @"STDEVP", &stru_2834BADA0, @"TSCalculationEngine");
    v58 = objc_msgSend_localizedStringForKey_value_table_(a1, v39, @"STDEVPA", &stru_2834BADA0, @"TSCalculationEngine");
    v57 = objc_msgSend_localizedStringForKey_value_table_(a1, v40, @"VAR", &stru_2834BADA0, @"TSCalculationEngine");
    v56 = objc_msgSend_localizedStringForKey_value_table_(a1, v41, @"VARA", &stru_2834BADA0, @"TSCalculationEngine");
    v55 = objc_msgSend_localizedStringForKey_value_table_(a1, v42, @"VARP", &stru_2834BADA0, @"TSCalculationEngine");
    v44 = objc_msgSend_localizedStringForKey_value_table_(a1, v43, @"VARPA", &stru_2834BADA0, @"TSCalculationEngine");
    v10 = objc_msgSend_initWithObjects_(v11, v45, v61, v46, v47, v77, v15, v76, v75, v74, &stru_2834BADA0, v20, &stru_2834BADA0, v73, v72, &stru_2834BADA0, v71, v25, v70, v69, v68, v30, v67, v66, v65, v64, v63, &stru_2834BADA0, &stru_2834BADA0, &stru_2834BADA0, v62, v60, v59, v58, v57, v56, v55, v44, 0);

    objc_msgSend_setLocaleSpecificStorage_forKey_(a1, v48, v10, @"localizedShortLabelForAggType", v49);
  }

  if (objc_msgSend_count(v10, v6, v7, v8, v9) <= a3)
  {
    v53 = &stru_2834BADA0;
  }

  else
  {
    v53 = objc_msgSend_objectAtIndex_(v10, v50, a3, v51, v52);
  }

  return v53;
}

void sub_2212F486C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50)
{
  v53 = *(v51 - 248);
  v52 = *(v51 - 240);
  v55 = *(v51 - 112);
  v54 = *(v51 - 104);
  v56 = *(v51 - 232);

  _Unwind_Resume(a1);
}

__CFString *sub_2212F4AD4(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = objc_msgSend_localizedStringForKey_value_table_(a1, v5, @"Base Value", &stru_2834BADA0, @"TSCalculationEngine");
  v8 = objc_msgSend_localizedStringForKey_value_table_(a1, v7, @"% of Grand Total", &stru_2834BADA0, @"TSCalculationEngine");
  v10 = objc_msgSend_localizedStringForKey_value_table_(a1, v9, @"% of Column Total", &stru_2834BADA0, @"TSCalculationEngine");
  v12 = objc_msgSend_localizedStringForKey_value_table_(a1, v11, @"% of Row Total", &stru_2834BADA0, @"TSCalculationEngine");
  v14 = objc_msgSend_localizedStringForKey_value_table_(a1, v13, @"% of Parent Column Total", &stru_2834BADA0, @"TSCalculationEngine");
  v16 = objc_msgSend_localizedStringForKey_value_table_(a1, v15, @"% of Parent Row Total", &stru_2834BADA0, @"TSCalculationEngine");
  v18 = objc_msgSend_localizedStringForKey_value_table_(a1, v17, @"Running Total In…", &stru_2834BADA0, @"TSCalculationEngine");
  v20 = objc_msgSend_localizedStringForKey_value_table_(a1, v19, @"% of Running Total In…", &stru_2834BADA0, @"TSCalculationEngine");
  v22 = objc_msgSend_localizedStringForKey_value_table_(a1, v21, @"Index", &stru_2834BADA0, @"TSCalculationEngine");
  v26 = objc_msgSend_initWithObjects_(v4, v23, v6, v24, v25, v8, v10, v12, v14, v16, v18, v20, v22, 0);

  if (objc_msgSend_count(v26, v27, v28, v29, v30) <= a3)
  {
    v34 = &stru_2834BADA0;
  }

  else
  {
    v34 = objc_msgSend_objectAtIndex_(v26, v31, a3, v32, v33);
  }

  return v34;
}

int *sub_2212F4DA8(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) |= 1u;
  v4 = *(a2 + 24);
  if (!v4)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeCoordinateArchive>(v5);
    *(a2 + 24) = v4;
  }

  result = sub_221269844(a1, v4);
  v7 = *(a1 + 16);
  *(a2 + 16) |= 2u;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_2212F4E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = &TSCE::_RangeCoordinateArchive_default_instance_;
  }

  result = sub_22126987C(v4);
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = *(a1 + 32);
  return result;
}

double sub_2212F4E64(long double a1, long double a2, long double a3)
{
  if (a1 <= 0.0 || a2 <= 0.0)
  {
    goto LABEL_9;
  }

  if (a3 > 0.0 && a3 < 1.0)
  {
    if (a3 <= 0.95 && a2 * a3 <= 1.0)
    {

      return sub_2212F537C(a1, a2, a3);
    }

    v9 = 1.0 - a3;
    v10 = a1 + a2;
    v11 = a1 / (a1 + a2);
    if (v11 >= a3)
    {
      v12 = a1;
    }

    else
    {
      v12 = a2;
    }

    if (v11 >= a3)
    {
      v13 = a2;
    }

    else
    {
      v13 = a1;
    }

    if (v11 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = 1.0 - a3;
    }

    if (v11 >= a3)
    {
      v15 = 1.0 - a3;
    }

    else
    {
      v15 = a3;
    }

    if (v11 >= a3 || (v9 <= 0.95 ? (v16 = v9 * a1 > 1.0) : (v16 = 1), v16))
    {
      __y = v13;
      v85 = a1 / (a1 + a2);
      v17 = v12 + 1.0;
      if (-(v12 + -1.0 - v14 * (v10 + -2.0)) >= 0.0)
      {
        v46 = v14 / (1.0 - v14);
        v47 = xmmword_2217E1230;
        __asm { FMOV            V26.2D, #1.0 }

        v49 = 300;
        v50 = vdupq_n_s64(0x3CB0000000000000uLL);
        v51 = vdupq_n_s64(0x4330000000000000uLL);
        v52 = v12;
        v53 = v13;
        v54 = v12;
        v55 = 1.0;
        v56 = v10;
        v57 = v12 + 1.0;
        v58 = v12;
        v59 = 1.0;
        v60 = 1.0;
        do
        {
          v53 = v53 + -1.0;
          v58 = v58 + 2.0;
          v61 = vmlaq_n_f64(_Q26, v47, v52 * -v46 * v53 / (v54 * v17));
          v62 = vmlaq_n_f64(v61, _Q26, v46 * v55 * v56 / (v57 * v58));
          *&v63 = *&vdivq_f64(vdupq_laneq_s64(v62, 1), v62);
          if (v62.f64[0] != 0.0)
          {
            v59 = v63;
          }

          v64 = fabs((v60 - v59) / v59);
          if (v59 == 0.0)
          {
            v64 = 1.0;
          }

          else
          {
            v60 = v59;
          }

          if (v64 < *&qword_27CFB4C50 * 3.0)
          {
            break;
          }

          v52 = v52 + 1.0;
          v54 = v54 + 2.0;
          v17 = v17 + 2.0;
          v55 = v55 + 1.0;
          v56 = v56 + 1.0;
          v65 = vabsq_f64(v62);
          v4.f64[0] = 4.50359963e15;
          v66 = vdupq_lane_s64(vcgtq_f64(vaddq_f64(v65, vdupq_laneq_s64(v65, 1)), v4).i64[0], 0);
          v67 = vbslq_s8(v66, vmulq_f64(v62, v50), v62);
          v68 = vbslq_s8(v66, vmulq_f64(v61, v50), v61);
          *&v65.f64[0] = vmovn_s64(vcgtq_f64(v50, v65));
          v57 = v57 + 2.0;
          v69 = vorr_s8(*&v65.f64[0], vdup_lane_s32(*&v65.f64[0], 1)).u8[0];
          v70 = vmulq_f64(v68, v51);
          v71 = vmulq_f64(v67, v51);
          v72 = (v69 & 1) != 0 ? -1 : 0;
          v4 = vdupq_n_s64(v72);
          _Q26 = vbslq_s8(v4, v71, v67);
          v47 = vbslq_s8(v4, v70, v68);
          --v49;
        }

        while (v49);
        v33 = v60 / v15;
      }

      else
      {
        v18 = xmmword_2217E1230;
        __asm { FMOV            V23.2D, #1.0 }

        v23 = 300;
        v24 = vdupq_n_s64(0x3CB0000000000000uLL);
        v25 = vdupq_n_s64(0x4330000000000000uLL);
        v26 = v12;
        v27 = v10;
        v28 = v12;
        v29 = 1.0;
        v30 = v12 + 1.0;
        v31 = v12;
        v32 = 1.0;
        v33 = 1.0;
        do
        {
          v13 = v13 + -1.0;
          v31 = v31 + 2.0;
          v34 = vmlaq_n_f64(_Q23, v18, -(v26 * v14) * v27 / (v28 * v17));
          v35 = vmlaq_n_f64(v34, _Q23, v14 * v29 * v13 / (v30 * v31));
          *&v36 = *&vdivq_f64(vdupq_laneq_s64(v35, 1), v35);
          if (v35.f64[0] != 0.0)
          {
            v32 = v36;
          }

          v37 = fabs((v33 - v32) / v32);
          if (v32 == 0.0)
          {
            v37 = 1.0;
          }

          else
          {
            v33 = v32;
          }

          if (v37 < *&qword_27CFB4C50 * 3.0)
          {
            break;
          }

          v26 = v26 + 1.0;
          v27 = v27 + 1.0;
          v28 = v28 + 2.0;
          v17 = v17 + 2.0;
          v29 = v29 + 1.0;
          v38 = vabsq_f64(v35);
          v3.f64[0] = 4.50359963e15;
          v39 = vdupq_lane_s64(vcgtq_f64(vaddq_f64(v38, vdupq_laneq_s64(v38, 1)), v3).i64[0], 0);
          v40 = vbslq_s8(v39, vmulq_f64(v35, v24), v35);
          v41 = vbslq_s8(v39, vmulq_f64(v34, v24), v34);
          *&v38.f64[0] = vmovn_s64(vcgtq_f64(v24, v38));
          v30 = v30 + 2.0;
          v42 = vorr_s8(*&v38.f64[0], vdup_lane_s32(*&v38.f64[0], 1)).u8[0];
          v43 = vmulq_f64(v41, v25);
          v44 = vmulq_f64(v40, v25);
          v45 = (v42 & 1) != 0 ? -1 : 0;
          v3 = vdupq_n_s64(v45);
          _Q23 = vbslq_s8(v3, v44, v40);
          v18 = vbslq_s8(v3, v43, v41);
          --v23;
        }

        while (v23);
      }

      v73 = v12 * log(v14);
      v74 = v15;
      v75 = __y * log(v15);
      if (v10 >= 171.624377 || fabs(v73) >= *&qword_27CFB4C58 || fabs(v75) >= *&qword_27CFB4C58)
      {
        v80 = v75 + sub_221289DC8(v10);
        v81 = v80 - sub_221289DC8(v12);
        v82 = v73 + v81 - sub_221289DC8(__y);
        v83 = log(v33 / v12) + v82;
        result = 0.0;
        if (v83 >= *&qword_27CFB4C60)
        {
          result = exp(v83);
        }
      }

      else
      {
        v76 = pow(v74, __y);
        v77 = v76 * pow(v14, v12) / v12 * v33;
        v78 = sub_221289AE8(v10);
        v79 = sub_221289AE8(v12);
        result = v77 * (v78 / (v79 * sub_221289AE8(__y)));
      }

      if (v85 >= a3)
      {
        return result;
      }
    }

    else
    {
      result = sub_2212F537C(a2, a1, v9);
    }

    if (result <= *&qword_27CFB4C50)
    {
      return 1.0 - *&qword_27CFB4C50;
    }

    else
    {
      return 1.0 - result;
    }
  }

  result = 0.0;
  if (a3 != 0.0)
  {
    result = 1.0;
    if (a3 != 1.0)
    {
LABEL_9:
      sub_22137A674("incbet", 1);
      return 0.0;
    }
  }

  return result;
}

double sub_2212F537C(long double a1, long double a2, long double a3)
{
  v6 = 1.0 / a1;
  v7 = (1.0 - a2) * a3;
  v8 = v7 / (a1 + 1.0);
  v9 = 0.0;
  if (fabs(v8) > v6 * *&qword_27CFB4C50)
  {
    v10 = 2.0;
    do
    {
      v7 = v7 * ((v10 - a2) * a3 / v10);
      v11 = v7 / (v10 + a1);
      v9 = v9 + v11;
      v10 = v10 + 1.0;
    }

    while (fabs(v11) > v6 * *&qword_27CFB4C50);
  }

  v12 = v6 + v8 + v9;
  v13 = log(a3) * a1;
  v14 = a1 + a2;
  if (a1 + a2 >= 171.624377 || fabs(v13) >= *&qword_27CFB4C58)
  {
    v19 = sub_221289DC8(v14);
    v20 = v19 - sub_221289DC8(a1);
    v21 = v13 + v20 - sub_221289DC8(a2);
    v22 = log(v12) + v21;
    result = 0.0;
    if (v22 >= *&qword_27CFB4C60)
    {

      return exp(v22);
    }
  }

  else
  {
    v15 = sub_221289AE8(v14);
    v16 = sub_221289AE8(a1);
    v17 = v12 * (v15 / (v16 * sub_221289AE8(a2)));
    return pow(a3, a1) * v17;
  }

  return result;
}

uint64_t sub_2212F6D90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_gregorianCalendar(TSCECalendar, a2, a3, a4, a5);
  v9 = objc_msgSend_components_fromDate_(v6, v7, 4, a1, v8);
  v14 = objc_msgSend_year(v9, v10, v11, v12, v13);

  return v14;
}

id sub_2212F6DF8()
{
  if (qword_27CFB5410 != -1)
  {
    sub_2216F76EC();
  }

  v1 = qword_27CFB5408;

  return v1;
}

void sub_2212F6E3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, a3, a4, a5);
  v6 = qword_27CFB5408;
  qword_27CFB5408 = v5;
}

TSCEASTRewriter *sub_2212F7968(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A4828;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_2212F79EC(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  if (v4)
  {
    v8 = v4;
    v9 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v5, v6, v7);
    v11 = v10;
    v80.var0 = v9;
    v80.var1 = v10;
    if (v9 == objc_msgSend_tableUID(*(a1 + 200), v10, v12, v13, v14) && v11 == v15)
    {
      v20 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v16, v17, v18);
      v21 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if ((v8 & 0x20) != 0)
      {
        v25 = v20;
        goto LABEL_13;
      }

      v25 = 0x7FFFFFFFLL;
      if (v20 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

      coordinate = v21->var0.var0.coordinate;
      if (v20 < 1)
      {
        if (v20 && coordinate.row < -v20)
        {
          goto LABEL_13;
        }
      }

      else if ((999999 - v20) < coordinate.row)
      {
        goto LABEL_13;
      }

      if (coordinate.row == 0x7FFFFFFF)
      {
        v51 = MEMORY[0x277D81150];
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v23, v24);
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v54, v55);
        v57 = NSStringFromTSUCellCoord();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v58, v52, v56, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v57);
      }

      else
      {
        v25 = (coordinate.row + v20);
        if (v25 < 0x7FFFFFFF)
        {
          goto LABEL_13;
        }

        v70 = MEMORY[0x277D81150];
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", v23, v24);
        v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v72, v73);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v74, v52, v56, 191, 0, "overflow in row, input row: %d with host row: %lu", v20, coordinate.row);
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76, v77, v78);
      v25 = 0x7FFFFFFFLL;
LABEL_13:
      v27 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      if ((v8 & 0x10) != 0)
      {
        v31 = HIDWORD(v20);
        goto LABEL_19;
      }

      LOWORD(v31) = 0x7FFF;
      if (WORD2(v20) == 0x7FFF)
      {
        goto LABEL_19;
      }

      v32 = v27->var0.var0.coordinate;
      if ((v20 >> 16) >> 16 < 1)
      {
        if ((v20 & 0x800000000000) != 0 && -SWORD2(v20) > v32.column)
        {
          goto LABEL_19;
        }
      }

      else if (999 - SWORD2(v20) < v32.column)
      {
        goto LABEL_19;
      }

      LOWORD(v31) = v32.column + WORD2(v20);
      if ((v32.column + WORD2(v20)) >= 0x7FFFu)
      {
        v59 = MEMORY[0x277D81150];
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v29, v30);
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v62, v63);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v65, v60, v64, 168, 0, "overflow in column");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69);
      }

LABEL_19:
      v33 = sub_221089E8C(a1);
      v35 = objc_msgSend_uuidForTableUID_andIndex_direction_(v33, v34, v9, v11, v25, 1);
      v37 = v36;

      v38 = sub_221089E8C(a1);
      v40 = objc_msgSend_uuidForTableUID_andIndex_direction_(v38, v39, v9, v11, v31, 0);
      v42 = v41;

      if ((v8 & 0xC) == 4)
      {
        if (!(v35 | v37))
        {
          return a2;
        }
      }

      else if (((v8 & 0xC) != 8 || !(v40 | v42)) && (!(v35 | v37) || !(v40 | v42)))
      {
        return a2;
      }

      v43 = TSCEASTElement::mutableUndoTractList(a2, a1);
      objc_msgSend_addToIncludedUidsTractColumnUid_rowUid_(v43, v44, v40, v42, v35, v37);
      v45 = sub_221089E8C(a1);
      v80.var0 = objc_msgSend_mapOwnerUID_(v45, v46, &v80, v47, v48);
      v80.var1 = v49;

      v79._flags = (v8 >> 4) & 3;
      TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v43, &v80, &v79);
    }
  }

  return a2;
}

TSCEASTElementWithChildren *sub_2212F7E8C(uint64_t a1, TSCEASTElementWithChildren *this)
{
  v4 = TSCEASTElementWithChildren::child(this, 0);
  v5 = TSCEASTElementWithChildren::child(this, 1u);
  if (v4)
  {
    v6 = v5;
    if (v5)
    {
      v7 = (*(*v4 + 40))(v4, a1);
      v8 = (*(*v6 + 40))(v6, a1);
      v9 = TSCEASTElement::tag(v7, a1);
      v10 = TSCEASTElement::tag(v8, a1);
      v11 = TSCEASTElement::simpleTagForTag(v9);
      if (v11 == TSCEASTElement::simpleTagForTag(v10) && v9 == 36 && (TSCEASTElement::refFlags(v7, a1) & 1) != 0 && (TSCEASTElement::refFlags(v8, a1) & 1) != 0)
      {
        v63.var2 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v7 + 136))(&v64, v7, a1, &v63.var2);
        v59[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
        (*(*v8 + 136))(&v63.var2, v8, a1, v59);
        upper = *(&v65 + 1);
        lower = v65;
        if (v65 == 0)
        {
          v19 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
          lower = v19->var0.var0._tableUID._lower;
          upper = v19->var0.var0._tableUID._upper;
        }

        v63.var0 = lower;
        v63.var1 = upper;
        if (lower == objc_msgSend_tableUID(*(a1 + 200), v13, v14, v15, v16) && upper == v20 && (*&v64 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && sub_2212F83DC(&v64, &v63.var2))
        {
          v21 = TSCEASTRelativeCoordRefElement::preserveFlags(v7, a1);
          v62._flags = v21 & 3 | (4 * (TSCEASTRelativeCoordRefElement::preserveFlags(v8, a1) & 3));
          v61._topLeft = v64;
          v61._bottomRight = v63.var2;
          TSCERangeCoordinate::fixInversions(&v61, &v62);
          row = v64.row;
          if (v64.row != v61._topLeft.row || ((*&v61._topLeft ^ *&v64) & 0x101FFFF00000000) != 0)
          {
            TSCEASTElementWithChildren::setChildAtIndex(this, v6, 0, a1, v22);
            TSCEASTElementWithChildren::setChildAtIndex(this, v4, 1, a1, v24);
            row = v61._topLeft.row;
          }

          v25 = v61._bottomRight.row;
          v59[0] = 0;
          v59[1] = 0;
          v60 = 0;
          if (row == 0x7FFFFFFF)
          {
            sub_2212F8464(__p);
          }

          v26 = sub_221089E8C(a1);
          v31 = objc_msgSend_tableUID(*(a1 + 200), v27, v28, v29, v30);
          v34 = objc_msgSend_resolverForTableUID_(v26, v32, v31, v32, v33);

          if (v34)
          {
            objc_msgSend_UIDsForRange_isRows_(v34, v35, row, v25 - row + 1, 1);
          }

          else
          {
            __p[0] = 0;
            __p[1] = 0;
            v58 = 0;
          }

          *v59 = *__p;
          v60 = v58;

          column = v61._topLeft.column;
          v37 = v61._bottomRight.column;
          __p[0] = 0;
          __p[1] = 0;
          v58 = 0;
          if (v61._topLeft.column == 0x7FFFLL)
          {
            sub_2212F8464(&v55);
          }

          v38 = sub_221089E8C(a1);
          v43 = objc_msgSend_tableUID(*(a1 + 200), v39, v40, v41, v42);
          v46 = objc_msgSend_resolverForTableUID_(v38, v44, v43, v44, v45);

          if (v46)
          {
            objc_msgSend_UIDsForRange_isRows_(v46, v47, column, (v37 - column + 1), 0);
          }

          else
          {
            v55 = 0uLL;
            v56 = 0;
          }

          *__p = v55;
          v58 = v56;

          v48 = TSCEASTElement::mutableUndoTractList(this, a1);
          objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v48, v49, __p, v59, 1, 1);
          v50 = sub_221089E8C(a1);
          v63.var0 = objc_msgSend_mapOwnerUID_(v50, v51, &v63, v52, v53);
          v63.var1 = v54;

          TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v48, &v63, &v62);
        }
      }
    }
  }

  return this;
}

void sub_2212F8354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2212F83DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || (*a2 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    return 0;
  }

  v5 = (v2 & 0xFFFF00000000) != 0x7FFF00000000 || v2 == 0x7FFFFFFFLL;
  v6 = !v5;
  v7 = (v3 & 0xFFFF00000000) != 0x7FFF00000000 || v3 == 0x7FFFFFFFLL;
  v8 = !v7;
  if (v6 != v8)
  {
    return 0;
  }

  v11 = v2 == 0x7FFFFFFFLL && (v2 & 0xFFFF00000000) != 0x7FFF00000000;
  v13 = v3 != 0x7FFFFFFFLL || (v3 & 0xFFFF00000000) == 0x7FFF00000000;
  return v11 ^ v13;
}

void sub_2212F8464(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_221086F74(a1, 1uLL);
}

void sub_2212F84DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

TSCEASTColonTractElement *sub_2212F84F8(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  v104[0] = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  v11 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v8, v104, v9, v10);
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
      v22 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
      lower = v22->var0.var0._tableUID._lower;
      upper = v22->var0.var0._tableUID._upper;
    }
  }

  v106.var0 = lower;
  v106.var1 = upper;
  v23 = objc_msgSend_topLeft(v11, v16, v17, v18, v19);
  v28 = objc_msgSend_bottomRight(v11, v24, v25, v26, v27);
  if (lower == objc_msgSend_tableUID(*(a1 + 25), v29, v30, v31, v32) && upper == v33 && (v23 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && (v28 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v37 = (v23 & 0xFFFF00000000) != 0x7FFF00000000 || v23 == 0x7FFFFFFFLL;
    v38 = !v37;
    v39 = (v28 & 0xFFFF00000000) != 0x7FFF00000000 || v28 == 0x7FFFFFFFLL;
    v40 = !v39;
    if (v38 == v40)
    {
      v41 = v23 != 0x7FFFFFFFLL || (v23 & 0xFFFF00000000) == 0x7FFF00000000;
      v42 = !v41;
      v43 = v28 != 0x7FFFFFFFLL || (v28 & 0xFFFF00000000) == 0x7FFF00000000;
      v44 = v43;
      if (v42 != v44)
      {
        v104[0] = 0;
        v104[1] = 0;
        v105 = 0;
        if (objc_msgSend_spansAllRows(v11, v33, v34, v35, v36))
        {
          operator new();
        }

        v45 = sub_221089E8C(a1);
        v50 = objc_msgSend_tableUID(*(a1 + 25), v46, v47, v48, v49);
        v53 = objc_msgSend_resolverForTableUID_(v45, v51, v50, v51, v52);

        v58 = objc_msgSend_rows(v11, v54, v55, v56, v57);
        v61 = TSUIndexSet::asNSIndexSet(v58);
        if (v53)
        {
          objc_msgSend_UIDsForIndexes_isRows_(v53, v59, v61, 1, v60);
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v103 = 0;
        }

        *v104 = *__p;
        v105 = v103;

        __p[0] = 0;
        __p[1] = 0;
        v103 = 0;
        if (objc_msgSend_spansAllColumns(v11, v62, v63, v64, v65))
        {
          operator new();
        }

        v66 = sub_221089E8C(a1);
        v71 = objc_msgSend_tableUID(*(a1 + 25), v67, v68, v69, v70);
        v74 = objc_msgSend_resolverForTableUID_(v66, v72, v71, v72, v73);

        v79 = objc_msgSend_columns(v11, v75, v76, v77, v78);
        v82 = TSUIndexSet::asNSIndexSet(v79);
        if (v74)
        {
          objc_msgSend_UIDsForIndexes_isRows_(v74, v80, v82, 0, v81);
        }

        else
        {
          memset(v100, 0, sizeof(v100));
          v101 = 0;
        }

        *__p = *&v100[0]._flags;
        v103 = v101;
        v101 = 0;
        memset(v100, 0, sizeof(v100));

        v83 = TSCEASTElement::mutableUndoTractList(this, a1);
        isRectangularRange = objc_msgSend_isRectangularRange(v11, v84, v85, v86, v87);
        objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(v83, v89, __p, v104, 1, isRectangularRange);
        v90 = sub_221089E8C(a1);
        v106.var0 = objc_msgSend_mapOwnerUID_(v90, v91, &v106, v92, v93);
        v106.var1 = v94;

        v100[0]._flags = objc_msgSend_preserveFlags(v11, v95, v96, v97, v98);
        TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v83, &v106, v100);
      }
    }
  }

  return this;
}

void sub_2212F88CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2212F89A8(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2212F89E4(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2212FA10C(uint64_t *a1, const char *a2)
{
  v2 = 16;
  if (a2 == 1)
  {
    v2 = 15;
  }

  if (!a2)
  {
    v2 = 4;
  }

  return objc_msgSend_applyStroke_atIndexes_order_applyStroke_atIndexes_order_applyStroke_atIndexes_order_applyStroke_atIndexes_order_applyStroke_atIndexes_order_(a1[v2], a2, a1[5], a1[6], 1, a1[7], a1[8], 1, a1[9], a1[10], 1, a1[11], a1[12], 1, a1[13], a1[14], 1);
}

id sub_2213000E8(void *a1, id *a2)
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

void sub_2213001C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_2213001DC(void *a1, id *a2)
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

void sub_2213002BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2213008C8(void *a1, unsigned __int8 *a2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **sub_221300B0C(void *a1, unsigned __int16 *a2)
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

uint64_t **sub_221300D50(void *a1, unsigned __int16 *a2)
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

void sub_221300FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221300FC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221300FC8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_221087AA4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_221301014(void *a1, void *a2)
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

void sub_221301268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22130127C(uint64_t a1)
{
  sub_2213012B8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2213012B8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_221087AA4((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_221301328(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_availableCurrencyCodes(MEMORY[0x277D81228], a2, a3, a4, a5);
  objc_msgSend_count(v9, v5, v6, v7, v8);
  operator new();
}

void sub_221307314(_Unwind_Exception *a1)
{
  v2 = STACK[0x9E8];
  v3 = STACK[0x9F0];
  v4 = STACK[0xEC0];
  v5 = STACK[0x9E0];

  v7 = STACK[0xED0];
  v8 = STACK[0xE08];
  v9 = STACK[0xE00];
  v10 = STACK[0xDF8];
  v11 = STACK[0xDF0];

  v12 = STACK[0xEB8];
  sub_2211AF274((v1 - 208));

  _Unwind_Resume(a1);
}

uint64_t **sub_2213097B8(void *a1, unsigned __int16 *a2)
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

uint64_t **sub_2213099F4(void *a1, unsigned __int16 *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_221309C20();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 8) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_221309C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221309CA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_221309CBC(void *a1, unsigned __int16 *a2)
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

uint64_t **sub_221309EF8(void *a1, unsigned __int16 *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_22130A124();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 8) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_22130A108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22130A1A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

double sub_22130ABA8(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v3 = &unk_2834A49B0;
  result = 0.0;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 1065353216;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 1065353216;
  *(v3 + 96) = 1;
  return result;
}

TSCEASTRelativeCoordRefElement *sub_22130AC00(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4, a5);
  v9[1] = v7;
  if (v9[0] | v7)
  {
    sub_2210C2B00(a1 + 17, v9);
  }

  return this;
}

TSCEASTRelativeCoordRefElement *sub_22130AC58(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4, a5);
  v9[1] = v7;
  if (v9[0] | v7)
  {
    sub_2210C2B00(a1 + 17, v9);
  }

  return this;
}

uint64_t sub_22130ACB0(uint64_t a1, uint64_t a2)
{
  v6[0] = (*(*a2 + 136))(a2, a1);
  v6[1] = v4;
  if (v6[0] | v4)
  {
    sub_2210C2B00((a1 + 136), v6);
  }

  return a2;
}

TSCEASTUidReferenceElement *sub_22130AD28(TSCEASTIteratorBase *a1, TSCEASTUidReferenceElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = TSCEASTUidReferenceElement::tableUID(this, a1, a3, a4, a5);
  v9[1] = v7;
  if (v9[0] | v7)
  {
    sub_2210C2B00(a1 + 17, v9);
  }

  return this;
}

TSCEASTCategoryRefElement *sub_22130AD80(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4, a5);
  v19[0] = objc_msgSend_pivotTableUid(v7, v8, v9, v10, v11);
  v19[1] = v12;
  if (v19[0] | v12)
  {
    sub_2210C2B00(a1 + 17, v19);
  }

  else
  {
    v18[0] = objc_msgSend_groupByUid(v7, v12, v13, v14, v15);
    v18[1] = v16;
    if (v18[0] | v16)
    {
      sub_2210C2B00(a1 + 22, v18);
    }
  }

  return this;
}

TSCEASTColonTractElement *sub_22130AE2C(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  v12 = objc_msgSend_tableUID(v7, v8, v9, v10, v11);
  if (v12 | v13)
  {
    v19[0] = objc_msgSend_tableUID(v7, v13, v14, v15, v16);
    v19[1] = v17;
    sub_2211D6484(a1 + 17, v19);
  }

  return this;
}

TSCEASTViewTractRefElement *sub_22130AEB8(TSCEASTIteratorBase *a1, TSCEASTViewTractRefElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = TSCEASTViewTractRefElement::tableUID(this, a1, a3, a4, a5);
  v9[1] = v7;
  if (v9[0] | v7)
  {
    sub_2210C2B00(a1 + 17, v9);
  }

  return this;
}

void sub_22130AF10(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A49B0;
  v2 = a1 + 136;
  sub_2210BDEC0(a1 + 176);
  sub_2210BDEC0(v2);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v3);
}

void sub_22130AF74(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A49B0;
  v2 = a1 + 136;
  sub_2210BDEC0(a1 + 176);
  sub_2210BDEC0(v2);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v3);

  JUMPOUT(0x223DA1450);
}

void sub_22130B75C(void *a1, unint64_t a2, id *a3)
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

    sub_22130BE9C(a1, v6, a3);
  }
}

void sub_22130B9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22107C26C(va);

  _Unwind_Resume(a1);
}

id sub_22130BAC8(void *a1, id *a2)
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

void sub_22130BBA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22130BC80(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_syntaxError(TSCEError, a2, a3, a4, a5);
  v8 = objc_msgSend_errorValue_(TSCEErrorValue, v5, v10, v6, v7);
  v9 = qword_27CFB5450;
  qword_27CFB5450 = v8;
}

void *sub_22130BE9C(void *result, unint64_t a2, id *a3)
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

void sub_22130BFB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22130C3B0(void *a1, uint64_t *a2)
{
  v2 = a1[18];
  if (v2 && (*v2 & 1) == 0)
  {
    if (!a1[22])
    {
      v9 = a1[17];
      if (*(v9 + 24))
      {
        for (i = *(v9 + 16); i; i = *i)
        {
          sub_2210C2B00(a1 + 19, i + 2);
          sub_2210C2B00(a1 + 19, i + 4);
        }
      }
    }

    if (!sub_2210875C4(a1 + 19, a2))
    {
      v5 = sub_221089E8C(a1);
      IsRegistered = objc_msgSend_ownerIsRegistered_(v5, v6, *a2, a2[1], v7);

      if ((IsRegistered & 1) == 0)
      {
        *a1[18] = 1;
      }
    }
  }
}

TSCEASTColonTractElement *sub_22130C484(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12.n128_u64[0] = TSCEASTColonTractElement::tableUID(this, a1, a3, a4, a5);
  v12.n128_u64[1] = v7;
  if (v12.n128_u64[0] | v7)
  {
    if (sub_2210875C4(*(a1 + 17), &v12))
    {
      v8 = *(a1 + 17);
      v13 = &v12;
      v12 = *(sub_221230440(v8, &v12) + 2);
      TSCEASTColonTractElement::setTableUID(this, &v12, a1, v9, v10);
    }

    else
    {
      sub_22130C3B0(a1, &v12);
    }
  }

  return this;
}

TSCEASTViewTractRefElement *sub_22130C530(TSCEASTIteratorBase *a1, TSCEASTViewTractRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    v13[0] = TSCEASTViewTractRefElement::tableUID(a2, a1, v4, v5, v6);
    v13[1] = v7;
    if (sub_2210875C4(*(a1 + 17), v13))
    {
      v8 = *(a1 + 17);
      v12._lower = v13;
      v12 = *(sub_221230440(v8, v13) + 2);
      TSCEASTViewTractRefElement::setTableUID(a2, &v12, a1, v9, v10);
    }
  }

  return a2;
}

TSCEASTRelativeCoordRefElement *sub_22130C5D4(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    v13[0] = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5, v6);
    v13[1] = v7;
    if (sub_2210875C4(*(a1 + 17), v13))
    {
      v8 = *(a1 + 17);
      v12._lower = v13;
      v12 = *(sub_221230440(v8, v13) + 2);
      TSCEASTRelativeCoordRefElement::setTableUID(a2, &v12, a1, v9, v10);
    }

    else
    {
      sub_22130C3B0(a1, v13);
    }
  }

  return a2;
}