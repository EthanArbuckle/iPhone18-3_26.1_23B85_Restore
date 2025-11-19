uint64_t **TSCEASTNodeArrayReader::skipUndoTractList(uint64_t **this)
{
  v1 = this[1];
  v2 = **this;
  v3 = *(v1 + v2);
  v4 = v1 + 1;
  this[1] = v4;
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v6 = v4 + 16 * *(v2 + v4) + 4;
      this[1] = v6;
      v4 = v6 + 16 * *(v2 + v6) + 7;
      this[1] = v4;
    }
  }

  this[1] = (v4 + 1);
  return this;
}

uint64_t TSCEASTNodeArrayReader::readIndexSet@<X0>(uint64_t **this@<X0>, TSUIndexSet *a2@<X8>)
{
  TSUIndexSet::TSUIndexSet(a2);
  v4 = this[1];
  v5 = *(v4 + **this);
  this[1] = (v4 + 4);
  for (result = TSUIndexSet::ensureRangeCapacity(a2); v5; --v5)
  {
    v7 = this[1];
    v8 = **this;
    v9 = *(v7 + v8);
    this[1] = (v7 + 4);
    v10 = *(v7 + v8 + 4);
    this[1] = v7 + 1;
    v11._begin = v9;
    v11._end = v10;
    result = TSUIndexSet::addIndexesInRange(a2, &v11);
  }

  return result;
}

void *TSCEASTNodeArrayReader::skipIndexSet(void *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = this;
  v6 = *this;
  v7 = this[1];
  v8 = *(*this + 8);
  v9 = *(**this + v7);
  v7 += 4;
  this[1] = v7;
  v10 = v7 + 8 * v9;
  if (v10 > v8 || v10 > *(v6 + 16))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArrayReader::skipIndexSet()", a4, a5);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.mm", v14, v15);
    v21 = TSCEASTNodeArray::codeString(*v5, v17, v18, v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v22, v12, v16, 584, 0, "skipIndexSet going off rails, numRanges: %lu for formula: %{public}@", v9, v21);

    this = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v8 = *(*v5 + 8);
  }

  if (v10 <= v8)
  {
    *(v5 + 8) = v10;
  }

  return this;
}

uint64_t TSCEASTNodeArrayReader::readTableUIDForRelativeTractRef(TSCEASTNodeArrayReader *this, TSCEASTRefFlags a2)
{
  if ((a2._flags & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 1);
  v4 = **this;
  *(this + 1) = v3 + 1;
  v2 = *(v4 + v3 + 1);
  *(this + 1) = v3 + 17;
  return v2;
}

id TSCEASTNodeArrayReader::readRelativeTractRef(uint64_t **this, TSCEASTRefFlags a2)
{
  v42 = 0uLL;
  v4 = this[1];
  v5 = **this;
  v6 = *(v4 + v5);
  this[1] = (v4 + 1);
  if (a2._flags)
  {
    v42 = *(v4 + v5 + 1);
    this[1] = (v4 + 17);
  }

  v41 = (v6 >> 2) & 0xC | (a2._flags >> 4) & 3;
  v7 = [TSCERelativeTractRef alloc];
  v10 = objc_msgSend_initWithTableUID_preserveFlags_(v7, v8, &v42, &v41, v9);
  objc_msgSend_setPreserveRectangular_(v10, v11, (v6 >> 1) & 1, v12, v13);
  TSUIndexSet::TSUIndexSet(&v40);
  v17 = a2._flags & 0xC;
  if (v17 == 4)
  {
    objc_msgSend_setSpansAllColumns_(v10, v14, 1, v15, v16);
  }

  else
  {
    TSCEASTNodeArrayReader::readIndexSet(this, &v39);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v39);
    objc_msgSend_setRelativeColumns_(v10, v18, &v40, v19, v20);
    if (v17 == 8)
    {
      v24 = 1;
      objc_msgSend_setSpansAllRows_(v10, v21, 1, v22, v23);
      goto LABEL_9;
    }
  }

  TSCEASTNodeArrayReader::readIndexSet(this, &v39);
  TSUIndexSet::operator=();
  TSUIndexSet::~TSUIndexSet(&v39);
  objc_msgSend_setRelativeRows_(v10, v25, &v40, v26, v27);
  if (v17 != 4)
  {
    v24 = 0;
LABEL_9:
    TSCEASTNodeArrayReader::readIndexSet(this, &v39);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v39);
    objc_msgSend_setColumns_(v10, v28, &v40, v29, v30);
    if (v24)
    {
      goto LABEL_11;
    }
  }

  TSCEASTNodeArrayReader::readIndexSet(this, &v39);
  TSUIndexSet::operator=();
  TSUIndexSet::~TSUIndexSet(&v39);
  objc_msgSend_setRows_(v10, v35, &v40, v36, v37);
LABEL_11:
  objc_msgSend_normalizeSpanningSettings(v10, v31, v32, v33, v34);
  TSUIndexSet::~TSUIndexSet(&v40);

  return v10;
}

void sub_22122D994(_Unwind_Exception *a1, TSUIndexSet *a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  TSUIndexSet::~TSUIndexSet(&a10);
  TSUIndexSet::~TSUIndexSet(&a14);

  _Unwind_Resume(a1);
}

void TSCEASTNodeArrayReader::readLocalUidReference(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  v6 = TSCEASTNodeArrayReader::readUndoTractList(this);
  v4 = this[1];
  v5 = *(v4 + **this);
  this[1] = (v4 + 1);
  v7 = v5;
  sub_22122B8B4(a2, v6, &v7);
}

__n128 TSCEASTNodeArrayReader::readCrossTableUidReference@<Q0>(uint64_t **this@<X0>, uint64_t a2@<X8>)
{
  TSCEASTNodeArrayReader::readLocalUidReference(this, a2);
  v4 = this[1];
  result = *(v4 + **this);
  *(a2 + 8) = result;
  this[1] = v4 + 2;
  return result;
}

id TSCEASTNodeArrayReader::readCategoryRef(uint64_t **this)
{
  v1 = this[1];
  v2 = **this;
  v19 = *(v1 + v2);
  this[1] = v1 + 2;
  v18 = *(v1 + v2 + 16);
  this[1] = v1 + 4;
  v17 = *(v1 + v2 + 32);
  this[1] = v1 + 6;
  v16 = *(v1 + v2 + 48);
  this[1] = v1 + 8;
  v3 = *(v1 + v2 + 64);
  this[1] = (v1 + 65);
  v4 = *(v1 + v2 + 65);
  this[1] = (v1 + 66);
  v5 = *(v1 + v2 + 66);
  this[1] = (v1 + 67);
  v6 = *(v1 + v2 + 67);
  this[1] = (v1 + 69);
  v7 = *(v1 + v2 + 69);
  this[1] = (v1 + 71);
  v8 = *(v1 + v2 + 71);
  this[1] = v1 + 9;
  v15 = v3;
  v9 = [TSCECategoryRef alloc];
  BYTE2(v14) = v8;
  LOWORD(v14) = v7;
  v13 = v6;
  v11 = objc_msgSend_initWithGroupByUID_relGroupUID_absGroupUid_columnUid_aggType_groupLevel_aggrIndexLevel_preserveFlags_relativeColumn_options_(v9, v10, &v19, &v17, &v16, &v18, v4, v5, v13, &v15, v14);

  return v11;
}

void sub_22122DC28(TSCEASTNodeArray *a1, void *a2)
{
  v7 = a2;
  if (objc_msgSend_length(v7, v3, v4, v5, v6))
  {
    TSCEASTWhitespaceElement::appendWhitespaceElement(a1, 31, v7);
  }
}

uint64_t **sub_22122DC98(void *a1, unsigned __int8 *a2)
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

uint64_t **sub_22122DECC(void *a1, unsigned __int8 *a2)
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
      if (*(result + 16) == v3)
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

void *sub_221230440(void *a1, void *a2)
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

void *sub_22123067C(void *a1, void *a2)
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

void sub_2212308B8(unsigned __int16 *a1, uint64_t a2, void *a3)
{
  v26 = a3;
  *a1 = *(a2 + 8);
  sub_221230A4C((a1 + 4), a2);
  v6 = objc_msgSend_evaluationInfoForCell_outHasDynamicPrecedents_outIsInCycle_(v26, v5, *(a1 + 2) - 32, (a1 + 40), a1 + 81);
  *(a1 + 9) = v6;

  if (*a1 == -1)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSCERecalcPhaseState::addNewLeaf(const TSCECellToEvaluate &, TSCEDependencyTracker *__strong)", v8, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v13, v14);
    v16 = sub_2215C3854(a2);
    v17 = objc_opt_class();
    if (objc_msgSend_ownerIDIsRegistered_(v26, v18, *a1, v19, v20))
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v11, v15, 135, 0, "Invalid ownerId for solving, leaf: %@ for formulaOwner %@ %@", v16, v17, &stru_2834BADA0);
    }

    else
    {
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v11, v15, 135, 0, "Invalid ownerId for solving, leaf: %@ for formulaOwner %@ %@", v16, v17, @"(UNREGISTERED)");
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }
}

void sub_221230A4C(uint64_t a1, _OWORD *a2)
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
      sub_22123E9D0(a1, v11);
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

void sub_2212310C0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_221231978(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_221231990(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (!v7)
  {
    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_9:
    v12 = objc_msgSend_ownerForOwnerUID_(*(a1 + 32), a2, v9, v10, a5);
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v19 = objc_msgSend_linkedResolver(*(*(*(a1 + 40) + 8) + 40), v15, v16, v17, v18);
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v25 = objc_msgSend_tableResolverForRefResolver_(*(a1 + 32), v22, *(*(*(a1 + 48) + 8) + 40), v23, v24);
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    goto LABEL_10;
  }

  v8 = objc_msgSend_ownerUID(v7, a2, a3, a4, a5);
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  if (v8 != v9 || a2 != v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v28 = *(*(*(a1 + 56) + 8) + 40);
  v30 = *a2;
  return objc_msgSend_resetAllFormulaDependenciesForCell_calcEngine_(v28, a2, &v30, *(a1 + 32), a5);
}

void sub_2212321D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TSCECalculationEngine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2212323B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_22123406C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  TSCEReferenceSet::~TSCEReferenceSet(&a26);

  TSCEReferenceSet::~TSCEReferenceSet(&a43);
  _Block_object_dispose(&a60, 8);
  TSCEReferenceSet::~TSCEReferenceSet(&a71);
  _Block_object_dispose(&STACK[0x280], 8);
  TSCEReferenceSet::~TSCEReferenceSet(&STACK[0x2A0]);
  _Block_object_dispose((v75 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_22123416C(uint64_t a1, TSCEAnyRef *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = (*(a1 + 192) & 0x42) == 64;
  refType = a2->_refType;
  if (!a2->_refType)
  {
    if (TSCEReferenceSet::containsAnyRef((a1 + 56), a2, a3, a4, a5))
    {
      goto LABEL_16;
    }

    v10 = objc_msgSend_ownerKindForOwnerUID_(*(a1 + 32), a2, a2->_spanningRef.rangeRef._tableUID._lower, a2->_spanningRef.rangeRef._tableUID._upper, a5);
    if (v10 == 35 || v10 == 12)
    {
      v12 = *(*(a1 + 40) + 8);
LABEL_15:
      *(v12 + 24) = 1;
      goto LABEL_16;
    }

LABEL_14:
    v12 = v26;
    goto LABEL_15;
  }

  if (refType == 1)
  {
    if (TSCEReferenceSet::containsAnyRef((a1 + 56), a2, a3, a4, a5))
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (refType == 2)
  {
    tableUID = a2->_spanningRef.rangeRef._tableUID;
    v23[0] = a2->_spanningRef.rangeRef.range;
    v23[1] = tableUID;
    v24 = *&a2->_spanningRef.rangeContext;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3321888768;
    v19 = sub_2212343B4;
    v20 = &unk_2834A3630;
    TSCEReferenceSet::TSCEReferenceSet(&v22, (a1 + 56));
    v21 = &v25;
    sub_22126A810(v23, &v17);
    TSCEReferenceSet::~TSCEReferenceSet(&v22);
  }

LABEL_16:
  if (*(v26 + 24) != 1)
  {
    goto LABEL_27;
  }

  v13 = objc_msgSend_ownerKindForOwnerUID_(*(a1 + 32), a2, a2->_spanningRef.rangeRef._tableUID._lower, a2->_spanningRef.rangeRef._tableUID._upper, a5);
  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 != 9)
      {
        goto LABEL_20;
      }

LABEL_23:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_25;
    }
  }

  else if (v13 != 1)
  {
    if (v13 != 2)
    {
LABEL_20:
      *(*(*(a1 + 48) + 8) + 24) = 0;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_referenceWasGuaranteedCleanAtRecalcCycleStart_(*(a1 + 32), v14, a2, v15, v16, v17, v18, v19, v20) ^ 1;
LABEL_25:
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

LABEL_27:
  _Block_object_dispose(&v25, 8);
}

void *sub_2212343B4(uint64_t a1, const TSCESpanningRangeRef *a2, _BYTE *a3)
{
  result = TSCEReferenceSet::containsRef((a1 + 40), a2);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_221234420(uint64_t a1, unsigned __int16 *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  if (v7 == 2)
  {
    v8 = *(a2 + 12);
    v11[0] = *(a2 + 4);
    v11[1] = v8;
    v12 = *(a2 + 5);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3321888768;
    v9[2] = sub_22123453C;
    v9[3] = &unk_2834A3630;
    TSCEReferenceSet::TSCEReferenceSet(&v10, (a1 + 40));
    v9[4] = *(a1 + 32);
    sub_22126A810(v11, v9);
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      *a3 = 1;
    }

    TSCEReferenceSet::~TSCEReferenceSet(&v10);
  }

  else if (v7 <= 1 && (TSCEReferenceSet::containsAnyRef((a1 + 40), a2, a3, a4, a5) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void *sub_22123453C(uint64_t a1, const TSCESpanningRangeRef *a2, _BYTE *a3)
{
  result = TSCEReferenceSet::containsRef((a1 + 40), a2);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_221235264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2210BDEC0(&a9);

  _Unwind_Resume(a1);
}

void -[TSCECalculationEngine p_blockUntilRecalcIsCompleteOnNewThreadWithTimeout:](TSCECalculationEngine *self, SEL a2, id a3)
{
  v23 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v23)
  {
    objc_msgSend_timeoutInterval(v23, v23, v4, v5, v6);
    if (v8 == 0.0)
    {
      v9 = -1;
    }

    else
    {
      v9 = dispatch_time(0, (v8 * 1000000000.0));
    }

    dispatch_group_wait(self->_recalcLoopGroup, v9);
    v14 = objc_msgSend_blockingIdentifier(v23, v15, v16, v17, v18);
  }

  else
  {
    dispatch_group_wait(self->_recalcLoopGroup, 0xFFFFFFFFFFFFFFFFLL);
    v14 = @"kTSCERecalcLoopGroupEmpty";
  }

  v19 = objc_msgSend_accessController(self, v10, v11, v12, v13);
  objc_msgSend_signalIdentifier_(v19, v20, v14, v21, v22);

  objc_autoreleasePoolPop(v7);
}

void -[TSCECalculationEngine p_blockUntilRecalcTaskExitedWithTimeout:](TSCECalculationEngine *self, SEL a2, double a3)
{
  self->_blockingUntilRecalcIsComplete = 1;
  v5 = [TSCECalcTimeoutObject alloc];
  v44 = objc_msgSend_initWithTimeout_(v5, v6, v7, v8, v9, a3);
  objc_msgSend_detachNewThreadSelector_toTarget_withObject_(MEMORY[0x277CCACC8], v10, sel_p_blockUntilRecalcIsCompleteOnNewThreadWithTimeout_, self, v44);
  WeakRetained = objc_loadWeakRetained(&self->_accessController);

  if (!WeakRetained)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCECalculationEngine p_blockUntilRecalcTaskExitedWithTimeout:]", v13, v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 2424, 0, "Can't block without an access controller");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  v26 = objc_loadWeakRetained(&self->_accessController);
  v31 = objc_msgSend_blockingIdentifier(v44, v27, v28, v29, v30);
  v36 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v32, v33, v34, v35);
  v37 = objc_loadWeakRetained(&self->_accessController);
  v42 = objc_msgSend_hasRead(v37, v38, v39, v40, v41);
  objc_msgSend_waitOnIdentifier_untilDate_releaseReadWhileWaiting_(v26, v43, v31, v36, v42);

  self->_blockingUntilRecalcIsComplete = 0;
}

void -[TSCECalculationEngine p_blockUntilRecalcIsCompleteWithTimeout:](TSCECalculationEngine *self, SEL a2, double a3)
{
  if (objc_msgSend_isRecalculationStarted(self, a2, v3, v4, v5))
  {
    calculationPauseCount = self->_calculationPauseCount;
    if (calculationPauseCount == 1)
    {
      objc_msgSend_resumeRecalculation(self, v8, v9, v10, v11);
    }

    v13 = objc_msgSend_threadState(self, v8, v9, v10, v11);
    if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_13;
      }

      if (objc_msgSend_hasDirtyCells(self->_dependencyTracker, v14, v15, v16, v17))
      {
        objc_msgSend_startRecalcTaskIfNecessary(self, v18, v19, v20, v21);
      }

      else
      {
        v34 = objc_msgSend_referencesToDirty(self, v18, v19, v20, v21);
        isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v34, v35, v36, v37, v38);

        objc_msgSend_startRecalcTaskIfNecessary(self, v40, v41, v42, v43);
        if (isEmptyForDirtying)
        {
          goto LABEL_13;
        }
      }
    }

    objc_msgSend_p_blockUntilRecalcTaskExitedWithTimeout_(self, v14, v15, v16, v17, a3);
LABEL_13:
    if (calculationPauseCount == 1)
    {

      objc_msgSend_pauseRecalculationSometimeSoon(self, v14, v15, v16, v17);
    }

    return;
  }

  v22 = MEMORY[0x277D81150];
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCECalculationEngine p_blockUntilRecalcIsCompleteWithTimeout:]", v10, v11);
  v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v25, v26);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v28, v23, v27, 2433, 0, "Can't block on the calc-engine before it is started up.");

  v33 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v33, v29, v30, v31, v32);
}

void sub_221236AD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_referencesToDirty(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_flushAllDirtyReferences(v9, v5, v6, v7, v8);
}

void sub_221236B34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_referencesToDirty(*(a1 + 32), a2, a3, a4, a5);
  objc_msgSend_flushAllDirtyReferences(v9, v5, v6, v7, v8);
}

intptr_t sub_221237274(uint64_t a1)
{
  while (1)
  {
    v2 = objc_autoreleasePoolPush();
    v7 = objc_msgSend_referencesToDirty(*(a1 + 40), v3, v4, v5, v6);
    objc_msgSend_clearInProgressCalcCellRefs(v7, v8, v9, v10, v11);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 968));

    v13 = objc_loadWeakRetained((*(a1 + 40) + 968));
    v14 = v13;
    if (WeakRetained)
    {
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = sub_2212377AC;
      v70[3] = &unk_278461BC8;
      v71 = *(a1 + 40);
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = sub_2212377B4;
      v68[3] = &unk_27845FEF0;
      v68[4] = v71;
      v69 = v7;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = sub_2212377F0;
      v67[3] = &unk_278461BF0;
      v67[4] = *(a1 + 40);
      objc_msgSend_performReadAllowingOverlappingImplicitRead_thenWrite_thenReadOnPrimaryThread_(v14, v15, v70, v68, v67);
    }

    else
    {

      if (!v14)
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSCECalculationEngine startRecalculationTask]_block_invoke", v22, v23);
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v27, v28);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 2690, 0, "no access controller!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
      }

      objc_msgSend_recalcHoldingReadLock(*(a1 + 40), v20, v21, v22, v23);
      objc_msgSend_recalcHoldingWriteLock(*(a1 + 40), v35, v36, v37, v38);
      objc_msgSend_clearInProgressCalcCellRefs(v7, v39, v40, v41, v42);
    }

    hasDirtyCells = objc_msgSend_hasDirtyCells(*(*(a1 + 40) + 80), v16, v17, v18, v19);
    v48 = *(a1 + 40);
    if (hasDirtyCells)
    {
      hasBackgroundTasks = 1;
    }

    else
    {
      v50 = objc_msgSend_referencesToDirty(v48, v43, v44, v45, v46);
      isEmptyForDirtying = objc_msgSend_isEmptyForDirtying(v50, v51, v52, v53, v54);

      v48 = *(a1 + 40);
      v60 = *(v48 + 112);
      hasBackgroundTasks = v60 & isEmptyForDirtying ^ 1;
      if ((v60 & 1) == 0 && ((isEmptyForDirtying ^ 1) & 1) == 0)
      {
        hasBackgroundTasks = objc_msgSend_hasBackgroundTasks(v48, v56, v57, v58, v59);
        v48 = *(a1 + 40);
      }
    }

    if ((*(v48 + 96) & 1) != 0 || !hasBackgroundTasks)
    {
      break;
    }

    objc_autoreleasePoolPop(v2);
  }

  os_unfair_lock_lock((v48 + 92));
  *(*(a1 + 40) + 88) = 1;
  os_unfair_lock_unlock((*(a1 + 40) + 92));
  if ((hasBackgroundTasks & 1) == 0)
  {
    v65 = *(a1 + 40);
    if (v65[696] == 1)
    {
      objc_msgSend_notifyObserversOfRecalcProgress(v65, v61, v62, v63, v64);
    }
  }

  objc_autoreleasePoolPop(v2);
  return dispatch_group_wait(*(*(a1 + 40) + 128), 0xFFFFFFFFFFFFFFFFLL);
}

void sub_221237730(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

uint64_t sub_2212377B4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_recalcHoldingWriteLock(*(a1 + 32), a2, a3, a4, a5);
  v10 = *(a1 + 40);

  return objc_msgSend_clearInProgressCalcCellRefs(v10, v6, v7, v8, v9);
}

void sub_221237D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_221237D50(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_evaluateWithContext_(*(a1 + 32), a2, *(a1 + 40), a4, a5);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  atomic_fetch_add(&dword_27CFB52E4, 0xFFFFFFFF);
}

void sub_2212386CC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_221238770(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_221238DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221239048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221122744(va);
  _Unwind_Resume(a1);
}

void sub_22123919C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_22107C860(v16 + 16, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_22107C800(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void sub_2212393A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose(&a17, 8);
  sub_22107C800(v24 + 48, a24);
  sub_22107C800(v25 - 56, *(v25 - 48));
  _Unwind_Resume(a1);
}

void sub_2212393EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_precedentsOfCell_(v6, a2, a2, a4, a5);
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2212394B8;
  v7[3] = &unk_278461C18;
  v8 = *(a1 + 40);
  TSCEReferenceSet::foreachCellRef(&v9, v7);
  TSCEReferenceSet::~TSCEReferenceSet(&v9);
}

TSCECellCoordSet *sub_2212394B8(TSCECellCoordSet *result, const TSCECellRef *a2)
{
  origin = result[1]._rectRepresentation.origin;
  if (a2->_tableUID._lower == *origin && a2->_tableUID._upper == origin[1])
  {
    return TSCECellRefSet::addCellRef((*(result->_rowsPerColumn.__tree_.__size_ + 8) + 48), a2);
  }

  return result;
}

unint64_t sub_2212396EC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[7];
  v14 = *a2;
  v15 = *v7;
  result = objc_msgSend_spillSizeForCell_(*(a1[4] + 80), a2, &v14, a4, a5);
  v13.origin = *a2;
  v13.size = result;
  if (result >> 33)
  {
    v9 = a1[5];
    v10 = TSUCellRect::rows(&v13);
    result = objc_msgSend_intersectsIndexesInRange_(v9, v11, v10, v11, v12);
    if (result)
    {
      return TSCECellCoordSet::addCellCoord((*(a1[6] + 8) + 48), a2);
    }
  }

  return result;
}

uint64_t sub_2212398F0(void *a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[7];
  v16 = *a2;
  v17 = *v8;
  v9 = objc_msgSend_spillSizeForCell_(*(a1[4] + 80), a2, &v16, a4, a5);
  v15.origin = *a2;
  v15.size = v9;
  v10 = a1[5];
  v11 = TSUCellRect::rows(&v15);
  result = objc_msgSend_intersectsIndexesInRange_(v10, v12, v11, v12, v13);
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_22123A354(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_documentRoot(*(a1 + 32), a2, a3, a4, a5);
  v11 = objc_msgSend_documentLocale(v6, v7, v8, v9, v10);
  v12 = *(*(a1 + 32) + 72);
  v13 = v12 != v11;
  v18 = objc_msgSend_localeIdentifier(v12, v14, v15, v16, v17);
  v23 = objc_msgSend_localeIdentifier(v11, v19, v20, v21, v22);
  isEqualToString = objc_msgSend_isEqualToString_(v18, v24, v23, v25, v26);

  if (isEqualToString)
  {
    v32 = objc_msgSend_formattingSymbols(*(*(a1 + 32) + 72), v28, v29, v30, v31);
    v37 = objc_msgSend_formattingSymbols(v11, v33, v34, v35, v36);
    v13 = objc_msgSend_isEqual_(v32, v38, v37, v39, v40) ^ 1;
  }

  objc_msgSend_pauseRecalculation(*(a1 + 32), v28, v29, v30, v31);
  objc_storeStrong((*(a1 + 32) + 72), v11);
  objc_msgSend_resumeRecalculation(*(a1 + 32), v41, v42, v43, v44);
  if (v13)
  {
    objc_msgSend_markLocaleVolatileFunctionsAsDirty(*(a1 + 32), v45, v46, v47, v48);
  }

  objc_msgSend_allRefResolverOwnerUIDs(*(a1 + 32), v45, v46, v47, v48);
  v52 = *(*(a1 + 32) + 792);
  if (v52)
  {
    for (i = __p; i != v64; i += 16)
    {
      v54 = objc_msgSend_tableResolverForTableUID_(*(a1 + 32), v49, i, v50, v51);
      v59 = v54;
      if (v54)
      {
        objc_msgSend_documentLocaleDidChange(v54, v55, v56, v57, v58);
        if (v13)
        {
          objc_msgSend_updateTrackedHeadersForDocumentLocaleChange_(v52, v60, i, v61, v62);
        }
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_22123ABDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22123AC64(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = *(a1 + 48);
  *(v3 + 16) |= 8u;
  v4 = *(v3 + 96);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DependencyTrackerArchive>(v5);
    *(v3 + 96) = v4;
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 57);

  return MEMORY[0x2821F9670](v2, sel_encodeToArchive_save31FormatAlso_embiggenedFormatOnly_archiver_, v4, v6, v7);
}

uint64_t sub_22123ACF4(TSKUIDStruct **a1, int **this)
{
  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this);
  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    v7 = this[2];
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = *(this + 2);
    v9 = *v7;
    if (v8 < *v7)
    {
      *(this + 2) = v8 + 1;
      v10 = *&v7[2 * v8 + 2];
      goto LABEL_10;
    }

    if (v9 == *(this + 3))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this);
      v7 = this[2];
      v9 = *v7;
    }

    *v7 = v9 + 1;
    v10 = MEMORY[0x223DA0360](*this);
    v11 = *(this + 2);
    v12 = &this[2][2 * v11];
    *(this + 2) = v11 + 1;
    *(v12 + 8) = v10;
LABEL_10:
    result = TSKUIDStruct::saveToMessage(v5++, v10);
  }

  return result;
}

void *sub_22123B8D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 792);
  v23[0] = objc_msgSend_formulaOwnerUID(*(v6 + 800), a2, a3, a4, a5);
  v23[1] = v8;
  objc_msgSend_setNRM_formulaOwnerUID_(v7, v8, v23, v9, v10);
  objc_msgSend_setCalculationEngine_(*(*(a1 + 32) + 800), v11, *(a1 + 32), v12, v13);
  v18 = *(a1 + 32);
  result = v18[100];
  if (result)
  {
    v20 = objc_msgSend_formulaOwnerUID(result, v14, v15, v16, v17);
    return objc_msgSend_markOwnerAsDirty_(v18, v21, v20, v21, v22);
  }

  return result;
}

uint64_t sub_22123B98C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setCalcEngine_(*(*(a1 + 32) + 792), a2, *(a1 + 32), a4, a5);
  v10 = objc_msgSend_idMap(*(*(a1 + 32) + 80), v6, v7, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22123BA40;
  v16[3] = &unk_278461D30;
  v16[4] = *(a1 + 32);
  v16[5] = v10;
  sub_2212601E0(v10, v16);
  return objc_msgSend_markIndirectCallsAsDirty(*(a1 + 32), v11, v12, v13, v14);
}

uint64_t sub_22123BA40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  result = objc_msgSend_ownerKindForOwnerID_(*(*(a1 + 32) + 80), a2, a2, a4, a5);
  if (result == 1)
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 792);
    v13[0] = sub_22125FFE0(v8, v5);
    v13[1] = v10;
    return objc_msgSend_beginTrackingNamesInTable_(v9, v10, v13, v11, v12);
  }

  return result;
}

uint64_t sub_22123BAF0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 656);
  if (v7)
  {
    objc_msgSend_originalTableUIDs(v7, a2, a3, a4, a5);
    v10 = v23;
    if (v23 != v24)
    {
      do
      {
        if (objc_msgSend_ownerIsRegistered_(*(a1 + 32), v8, *v10, v10[1], v9))
        {
          objc_msgSend_tableWasAdded_(*(*(a1 + 32) + 656), v8, v10, v11, v9);
        }

        v10 += 2;
      }

      while (v10 != v24);
      v10 = v23;
    }

    if (v10)
    {
      operator delete(v10);
    }

    v6 = *(a1 + 32);
  }

  sub_221576500((v6 + 320));
  objc_msgSend_setCalculationEngine_(*(*(a1 + 32) + 784), v12, *(a1 + 32), v13, v14);
  objc_msgSend_setShouldPerformDetectAndRepairConsistencyViolations_(*(*(a1 + 32) + 784), v15, 1, v16, v17);
  result = objc_msgSend_hasEmbiggenedCoords(*(*(a1 + 32) + 80), v18, v19, v20, v21);
  *(*(a1 + 32) + 759) = result;
  return result;
}

void sub_22123BBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22123C0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_22123C410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_22107C2C0(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_22123CAD4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_recalcPhaseHoldingReadLock_(*(a1 + 32), a2, *(a1 + 40), a4, a5);
  v7 = *(a1 + 40);
  if (*v7 == -1 || *(v7 + 1) == *(v7 + 2))
  {
    *(v7 + 82) = 0;
  }

  atomic_fetch_add(&dword_27CFB52E4, 0xFFFFFFFF);
  return result;
}

void sub_22123CB48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 3)
  {
    v13 = *__cxa_get_exception_ptr(a1);
    a10 = v13;
    __cxa_begin_catch(a1);
    v14 = v13;
    v15 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSCECalculationEngine dispatchOnePhase:]_block_invoke", v17, v18);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECalculationEngine.mm", v21, v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v24, v19, v23, 4298, 0, "Unexpected calc-engine exception passed up to enqueueTaskForCell: %{public}@");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
    sub_221595E98(&a10);
  }

  else
  {
    v30 = __cxa_begin_catch(a1);
    v31 = *(v10 + 32);
    if (a2 == 2)
    {
      objc_msgSend_assertNonCalcEngineException_exception_evaluatingFormula_(v31, v29, @"dispatchOnePhase", v30, 0);
    }

    else
    {
      objc_msgSend_assertNonCalcEngineException_exception_evaluatingFormula_(v31, v29, @"dispatchOnePhase", 0, 0);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x22123CB00);
}

uint64_t sub_22123D884(uint64_t a1)
{
  sub_221576500((*(a1 + 32) + 320));
  v5 = *(*(a1 + 32) + 792);

  return MEMORY[0x2821F9670](v5, sel_integrateReservedPrecedents, v2, v3, v4);
}

void sub_22123DBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void __C(void *a1)
{
  v27 = a1;
  v1 = TSCE::CalculationEngineArchive::default_instance(v27);
  google::protobuf::internal::AssignDescriptors();
  v3 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v2, 4000, v1, off_2812E2AC8[178], "TSCECalculationEngine");
  v4 = TSCE::NamedReferenceManagerArchive::default_instance(v3);
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v5, 4003, v4, off_2812E2AC8[162], "TSCENamedReferenceManager");
  v7 = TSCE::TrackedReferenceStoreArchive::default_instance(v6);
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v8, 4004, v7, off_2812E2AC8[286], "TSCETrackedReferenceStore");
  v10 = TSCE::TrackedReferenceArchive::default_instance(v9);
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v11, 4005, v10, off_2812E2AC8[282], "TSCETrackedReferenceTSPObjectDeprecated");
  v13 = TSCE::RemoteDataStoreArchive::default_instance(v12);
  google::protobuf::internal::AssignDescriptors();
  v15 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v14, 4007, v13, off_2812E2AC8[156], "TSCERemoteDataStore");
  v16 = TSCE::FormulaOwnerDependenciesArchive::default_instance(v15);
  google::protobuf::internal::AssignDescriptors();
  v18 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v17, 4008, v16, off_2812E2AC8[132], "TSCEFormulaOwnerDependencies");
  v19 = TSCE::CellRecordTileArchive::default_instance(v18);
  google::protobuf::internal::AssignDescriptors();
  v21 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v20, 4009, v19, off_2812E2AC8[62], "TSCECellRecordTile");
  v22 = TSCE::RangePrecedentsTileArchive::default_instance(v21);
  google::protobuf::internal::AssignDescriptors();
  v24 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v23, 4010, v22, off_2812E2AC8[84], "TSCERangePrecedentsTile");
  v25 = TSCE::ReferencesToDirtyArchive::default_instance(v24);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v27, v26, 4011, v25, off_2812E2AC8[38], "TSCEReferencesToDirty");
}

uint64_t sub_22123E714(uint64_t a1)
{
  sub_22123E750(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22123E750(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **sub_22123E79C(void *a1, unsigned __int16 *a2)
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

void sub_22123E9D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

const void **sub_22123EA84(const void **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_221083368(a1, *(a2 + 8));
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = 8 * v6;
    do
    {
      TSP::UUIDData::UUIDData(&v19, *v5);
      v9 = a1[1];
      v8 = a1[2];
      if (v9 >= v8)
      {
        v11 = *a1;
        v12 = v9 - *a1;
        v13 = v12 >> 4;
        v14 = (v12 >> 4) + 1;
        if (v14 >> 60)
        {
          sub_22107C148();
        }

        v15 = v8 - v11;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_221086F74(a1, v16);
        }

        *(16 * v13) = v19;
        v10 = 16 * v13 + 16;
        memcpy(0, v11, v12);
        v17 = *a1;
        *a1 = 0;
        a1[1] = v10;
        a1[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v19;
        v10 = (v9 + 16);
      }

      a1[1] = v10;
      ++v5;
      v7 -= 8;
    }

    while (v7);
  }

  return a1;
}

void sub_22123EBCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22123F514(uint64_t a1, unint64_t a2, unint64_t a3)
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

void *sub_22123F6E0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_22116D40C(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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

void sub_221241484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22124149C(uint64_t a1, void *a2)
{
  v14 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v10 = objc_msgSend_integerValue(v3, v6, v7, v8, v9);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_maskForStrokePreset_(v4, v11, v10, v12, v13) | v5;
}

void sub_221243310(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v6 = a2;
  if (objc_msgSend_isRows(*(*(a1 + 32) + 96), a2, a3, a4, a5))
  {
    v11 = v6 | (*(a1 + 84) << 32);
    v12 = (v5 + v6 - 1) | (*(a1 + 92) << 32);
  }

  else
  {
    v11 = *(a1 + 80) | (v6 << 32);
    v12 = *(a1 + 88) | (((v6 + v5) << 32) + 0xFFFF00000000) & 0xFFFF00000000;
  }

  v38[0] = v11;
  v38[1] = v12;
  v13 = *(a1 + 40);
  if (v13)
  {
    objc_msgSend_mergeRangesIntersectingCellRange_(v13, v8, v38, v9, v10);
    v18 = v32;
    if (*(&v32 + 1) != v32)
    {
      v19 = *(a1 + 48);
      *&v32 = objc_msgSend_resolverUID(*(a1 + 56), v14, v15, v16, v17);
      *(&v32 + 1) = v20;
      if (v19)
      {
        objc_msgSend_formulaCoordsInRange_inOwner_(v19, v20, v38, &v32, v21);
        v22 = __p;
        v23 = v36;
        v32 = 0u;
        v33 = 0u;
        v34 = 1065353216;
        if (__p != v36)
        {
          do
          {
            sub_2210CE644(&v32, v22);
            v22 += 2;
          }

          while (v22 != v23);
          if (*(&v33 + 1))
          {
            v24 = v18;
            do
            {
              v25 = *v24;
              v26 = v24[1];
              v31 = *v24;
              if (sub_221087F14(&v32, &v31))
              {
                v27 = *(a1 + 32);
                v29 = v31;
                v30 = *(a1 + 64);
                v38[3] = &v29;
                v28 = sub_221244C3C((v27 + 224), &v29);
                v28[5] = v25;
                v28[6] = v26;
              }

              v24 += 2;
            }

            while (v24 != *(&v18 + 1));
          }
        }
      }

      else
      {
        __p = 0;
        v36 = 0;
        v37 = 0;
        v32 = 0u;
        v33 = 0u;
        v34 = 1065353216;
      }

      sub_2210BDEC0(&v32);
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }
    }

    if (v18)
    {
      operator delete(v18);
    }
  }
}

void sub_2212434D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_221244808(void *a1, void *a2)
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

void sub_221244A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

void *sub_221244A70(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2 + 16 * *(a2 + 2);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
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
    v8 = *a2;
    do
    {
      v9 = result[1];
      if (v3 == v9)
      {
        v10 = result[2];
        v12 = v10 == v8;
        v11 = (v8 ^ v10) & 0x101FFFF00000000;
        v12 = v12 && v11 == 0;
        if (v12)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
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

        if (v9 != v5)
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

void *sub_221244B44(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 ^ v4 ^ (*(a2 + 2) + (*a2 << 15));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ v4 ^ (*(a2 + 2) + (*a2 << 15));
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
    v10 = *a2;
    do
    {
      v11 = result[1];
      if (v11 == v5)
      {
        v12 = result[2];
        v14 = v12 == v10;
        v13 = (v10 ^ v12) & 0x101FFFF00000000;
        v14 = v14 && v13 == 0;
        if (v14 && result[3] == v3 && result[4] == v4)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v11 >= *&v2)
          {
            v11 %= *&v2;
          }
        }

        else
        {
          v11 &= *&v2 - 1;
        }

        if (v11 != v7)
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

void *sub_221244C3C(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = v2 ^ v3 ^ (*(a2 + 2) + (*a2 << 15));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_25;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 ^ v3 ^ (*(a2 + 2) + (*a2 << 15));
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
LABEL_25:
    operator new();
  }

  v10 = *a2;
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_25;
    }

LABEL_24:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14 || v9[3] != v2 || v9[4] != v3)
  {
    goto LABEL_24;
  }

  return v9;
}

BOOL sub_2212454A8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(a1, v8, v7, v9, v10);
  v15 = objc_msgSend_tsce_stringByFoldingForNamedReferenceMatchingWithLocale_(v6, v12, v7, v13, v14);
  v20 = objc_msgSend_length(v11, v16, v17, v18, v19);
  v25 = objc_msgSend_length(v15, v21, v22, v23, v24);
  if (v20 >= v25)
  {
    v27 = objc_msgSend_rangeOfString_options_range_locale_(v11, v26, v15, 8, 0, v25, v7);
  }

  else
  {
    v27 = objc_msgSend_rangeOfString_options_range_locale_(v11, v26, v15, 8, 0, v20, v7);
  }

  if (v27)
  {
    v32 = objc_msgSend_uppercaseString(v11, v28, v29, v30, v31);
    v37 = objc_msgSend_lowercaseString(v32, v33, v34, v35, v36);

    v42 = objc_msgSend_uppercaseString(v15, v38, v39, v40, v41);
    v47 = objc_msgSend_lowercaseString(v42, v43, v44, v45, v46);

    v52 = objc_msgSend_length(v37, v48, v49, v50, v51);
    if (v52 >= objc_msgSend_length(v47, v53, v54, v55, v56))
    {
      v62 = objc_msgSend_length(v47, v57, v58, v59, v60);
      v61 = objc_msgSend_rangeOfString_options_range_locale_(v37, v63, v47, 8, 0, v62, v7) == 0;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 1;
  }

  return v61;
}

void sub_221246AA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  if (*(Message + 24) >= 1)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_221246BFC;
    v14[3] = &unk_27845D8D8;
    v14[4] = a1;
    v10 = v5;
    v11 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v10, v12, Message + 16, v11, 0, v14);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221246C14;
  v13[3] = &unk_27845E3F8;
  v13[4] = a1;
  objc_msgSend_addFinalizeHandler_(v5, v6, v13, v7, v8);
}

void sub_221246C14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *MEMORY[0x277D80BA8];
  v7 = objc_msgSend_presetsOfKind_(*(a1 + 32), a2, *MEMORY[0x277D80BA8], a4, a5);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_221246D20;
  v13[3] = &unk_278461E70;
  v13[4] = *(a1 + 32);
  v13[5] = &v14;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v8, v13, v9, v10);
  if (*(v15 + 24) == 1)
  {
    objc_msgSend_setPresets_ofKind_(*(a1 + 32), v11, v7, v6, v12);
  }

  _Block_object_dispose(&v14, 8);
}

void sub_221246D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_221246D20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = objc_msgSend_styleNetwork(v5, v6, v7, v8, v9);

  v15 = &unk_2217E0000;
  if (!v10)
  {
    v16 = *(a1 + 32);
    v311[0] = MEMORY[0x277D85DD0];
    v311[1] = 3221225472;
    v311[2] = sub_221247798;
    v311[3] = &unk_278461E20;
    v314 = a3;
    v311[4] = v16;
    v17 = v5;
    v18 = *(a1 + 40);
    v312 = v17;
    v313 = v18;
    objc_msgSend_upgradeStylesWithBlock_(v16, v19, v311, v20, v21);
  }

  v22 = objc_msgSend_styleNetwork(v5, v11, v12, v13, v14);
  v31 = objc_msgSend_categoryLevel1CellStyle(v22, v23, v24, v25, v26);
  if (!v31)
  {
    goto LABEL_27;
  }

  v32 = objc_msgSend_styleNetwork(v5, v27, v28, v29, v30);
  v41 = objc_msgSend_categoryLevel2CellStyle(v32, v33, v34, v35, v36);
  if (!v41)
  {
LABEL_26:

LABEL_27:
LABEL_28:
    v186 = *(a1 + 32);
    v307[0] = MEMORY[0x277D85DD0];
    v307[1] = v15[40];
    v307[2] = sub_221247AB8;
    v307[3] = &unk_278461E48;
    v187 = v5;
    v188 = *(a1 + 40);
    v308 = v187;
    v309 = v188;
    v310 = a3;
    objc_msgSend_upgradeStylesWithBlock_(v186, v189, v307, v190, v191);

    goto LABEL_29;
  }

  v42 = objc_msgSend_styleNetwork(v5, v37, v38, v39, v40);
  v51 = objc_msgSend_categoryLevel3CellStyle(v42, v43, v44, v45, v46);
  if (!v51)
  {
LABEL_25:

    goto LABEL_26;
  }

  v302 = objc_msgSend_styleNetwork(v5, v47, v48, v49, v50);
  v301 = objc_msgSend_categoryLevel4CellStyle(v302, v52, v53, v54, v55);
  if (!v301)
  {
LABEL_24:

    goto LABEL_25;
  }

  v300 = objc_msgSend_styleNetwork(v5, v56, v57, v58, v59);
  v299 = objc_msgSend_categoryLevel5CellStyle(v300, v60, v61, v62, v63);
  if (!v299)
  {

    goto LABEL_24;
  }

  v298 = objc_msgSend_styleNetwork(v5, v64, v65, v66, v67);
  v297 = objc_msgSend_labelLevel1CellStyle(v298, v68, v69, v70, v71);
  if (v297)
  {
    v296 = objc_msgSend_styleNetwork(v5, v72, v73, v74, v75);
    v295 = objc_msgSend_labelLevel2CellStyle(v296, v76, v77, v78, v79);
    if (v295)
    {
      v293 = objc_msgSend_styleNetwork(v5, v80, v81, v82, v83);
      v292 = objc_msgSend_labelLevel3CellStyle(v293, v84, v85, v86, v87);
      if (v292)
      {
        v291 = objc_msgSend_styleNetwork(v5, v88, v89, v90, v91);
        v290 = objc_msgSend_labelLevel4CellStyle(v291, v92, v93, v94, v95);
        if (v290)
        {
          v289 = objc_msgSend_styleNetwork(v5, v96, v97, v98, v99);
          v288 = objc_msgSend_labelLevel5CellStyle(v289, v100, v101, v102, v103);
          if (v288)
          {
            v287 = objc_msgSend_styleNetwork(v5, v104, v105, v106, v107);
            v286 = objc_msgSend_categoryLevel1TextStyle(v287, v108, v109, v110, v111);
            if (v286)
            {
              v285 = objc_msgSend_styleNetwork(v5, v112, v113, v114, v115);
              v284 = objc_msgSend_categoryLevel2TextStyle(v285, v116, v117, v118, v119);
              if (v284)
              {
                v283 = objc_msgSend_styleNetwork(v5, v120, v121, v122, v123);
                v282 = objc_msgSend_categoryLevel3TextStyle(v283, v124, v125, v126, v127);
                if (v282)
                {
                  v281 = objc_msgSend_styleNetwork(v5, v128, v129, v130, v131);
                  v280 = objc_msgSend_categoryLevel4TextStyle(v281, v132, v133, v134, v135);
                  if (v280)
                  {
                    v279 = objc_msgSend_styleNetwork(v5, v136, v137, v138, v139);
                    v278 = objc_msgSend_categoryLevel5TextStyle(v279, v140, v141, v142, v143);
                    if (v278)
                    {
                      v277 = objc_msgSend_styleNetwork(v5, v144, v145, v146, v147);
                      v276 = objc_msgSend_labelLevel1TextStyle(v277, v148, v149, v150, v151);
                      if (v276)
                      {
                        v156 = objc_msgSend_styleNetwork(v5, v152, v153, v154, v155);
                        v275 = objc_msgSend_labelLevel2TextStyle(v156, v157, v158, v159, v160);
                        if (v275)
                        {
                          v274 = objc_msgSend_styleNetwork(v5, v161, v162, v163, v164);
                          v273 = objc_msgSend_labelLevel3TextStyle(v274, v165, v166, v167, v168);
                          if (v273)
                          {
                            v272 = objc_msgSend_styleNetwork(v5, v169, v170, v171, v172);
                            v271 = objc_msgSend_labelLevel4TextStyle(v272, v173, v174, v175, v176);
                            if (v271)
                            {
                              v270 = objc_msgSend_styleNetwork(v5, v177, v178, v179, v180);
                              v185 = objc_msgSend_labelLevel5TextStyle(v270, v181, v182, v183, v184);
                              v294 = v185 == 0;
                            }

                            else
                            {
                              v294 = 1;
                            }
                          }

                          else
                          {
                            v294 = 1;
                          }
                        }

                        else
                        {
                          v294 = 1;
                        }
                      }

                      else
                      {
                        v294 = 1;
                      }
                    }

                    else
                    {
                      v294 = 1;
                    }
                  }

                  else
                  {
                    v294 = 1;
                  }
                }

                else
                {
                  v294 = 1;
                }
              }

              else
              {
                v294 = 1;
              }
            }

            else
            {
              v294 = 1;
            }
          }

          else
          {
            v294 = 1;
          }

          v266 = v41;
        }

        else
        {
          v266 = v41;
          v294 = 1;
        }

        v267 = v42;
      }

      else
      {
        v266 = v41;
        v267 = v42;
        v294 = 1;
      }

      v268 = v51;
    }

    else
    {
      v266 = v41;
      v267 = v42;
      v268 = v51;
      v294 = 1;
    }

    v269 = v294;
  }

  else
  {
    v266 = v41;
    v267 = v42;
    v268 = v51;
    v269 = 1;
  }

  v15 = &unk_2217E0000;
  if (v269)
  {
    goto LABEL_28;
  }

LABEL_29:
  v196 = objc_msgSend_styleNetwork(v5, v192, v193, v194, v195);
  v205 = objc_msgSend_pivotBodySummaryRowCellStyle(v196, v197, v198, v199, v200);
  if (v205)
  {
    v206 = objc_msgSend_styleNetwork(v5, v201, v202, v203, v204);
    v215 = objc_msgSend_pivotBodySummaryColumnCellStyle(v206, v207, v208, v209, v210);
    if (v215)
    {
      v216 = objc_msgSend_styleNetwork(v5, v211, v212, v213, v214);
      v221 = objc_msgSend_pivotHeaderColumnSummaryCellStyle(v216, v217, v218, v219, v220);

      if (v221)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

LABEL_35:
  v226 = *(a1 + 32);
  v303[0] = MEMORY[0x277D85DD0];
  v303[1] = v15[40];
  v303[2] = sub_221247DE4;
  v303[3] = &unk_278461E48;
  v227 = v5;
  v228 = *(a1 + 40);
  v304 = v227;
  v305 = v228;
  v306 = a3;
  objc_msgSend_upgradeStylesWithBlock_(v226, v229, v303, v230, v231);

LABEL_36:
  v232 = objc_msgSend_styleNetwork(v5, v222, v223, v224, v225);
  objc_msgSend_upgradeIfNecessary(v232, v233, v234, v235, v236);

  v241 = objc_msgSend_styleNetwork(v5, v237, v238, v239, v240);
  v246 = objc_msgSend_valid(v241, v242, v243, v244, v245);

  if ((v246 & 1) == 0)
  {
    v250 = MEMORY[0x277D81150];
    v251 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v247, "[TSSTheme(TSTArchiving) tstLoadFromArchive:unarchiver:]_block_invoke_3", v248, v249);
    v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v252, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSSTheme_TSTArchiving.mm", v253, v254);
    v260 = objc_msgSend_styleNetwork(v5, v256, v257, v258, v259);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v250, v261, v251, v255, 180, 0, "Preset style network is missing styles when unarchiving. %{public}@", v260);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v262, v263, v264, v265);
  }
}

void sub_221247798(uint64_t a1, void *a2)
{
  v70 = a2;
  objc_opt_class();
  v6 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v3, *(a1 + 56), v4, v5);
  v10 = objc_msgSend_cascadedStyleWithIdentifier_(v70, v7, v6, v8, v9);
  v11 = TSUDynamicCast();

  if (!v11)
  {
    objc_msgSend_willModifyForUpgrade(v70, v12, v13, v14, v15);
    v20 = objc_msgSend_context(*(a1 + 32), v16, v17, v18, v19);
    v24 = objc_msgSend_defaultTableNameShapeStyleWithContext_(TSTTableStyleNetwork, v21, v20, v22, v23);

    v28 = objc_msgSend_tableNameShapeStyleIDForPreset_(TSTTableStyleNetwork, v25, *(a1 + 56), v26, v27);
    objc_msgSend_addStyle_withIdentifier_(v70, v29, v24, v28, v30);
  }

  objc_opt_class();
  v34 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v31, *(a1 + 56), v32, v33);
  v38 = objc_msgSend_cascadedStyleWithIdentifier_(v70, v35, v34, v36, v37);
  v39 = TSUDynamicCast();

  if (!v39)
  {
    objc_msgSend_willModifyForUpgrade(v70, v40, v41, v42, v43);
    objc_opt_class();
    v46 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v44, *(a1 + 56), 1, v45);
    v50 = objc_msgSend_cascadedStyleWithIdentifier_(v70, v47, v46, v48, v49);
    v51 = TSUDynamicCast();

    if (!v51)
    {
      v51 = objc_msgSend_defaultParagraphStyle(*(a1 + 32), v52, v53, v54, v55);
    }

    v56 = objc_msgSend_copy(v51, v52, v53, v54, v55);
    v60 = objc_msgSend_tableNameStyleIDForPreset_(TSTTableStyleNetwork, v57, *(a1 + 56), v58, v59);
    objc_msgSend_addStyle_withIdentifier_(v70, v61, v56, v60, v62);
  }

  v63 = objc_msgSend_presetID(*(a1 + 40), v40, v41, v42, v43);
  v66 = objc_msgSend_networkFromStylesheet_presetID_(TSTTableStyleNetwork, v64, v70, v63, v65);
  objc_msgSend_setStyleNetwork_(*(a1 + 40), v67, v66, v68, v69);

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_221247AB8(uint64_t a1, void *a2)
{
  v69 = a2;
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), v3, v4, v5, v6);
  v14 = objc_msgSend_styleNetwork(*(a1 + 32), v7, v8, v9, v10);
  for (i = 5; i != 15; ++i)
  {
    v16 = objc_msgSend_cellStyleForTableStyleArea_(v14, v11, i, v12, v13);

    if (!v16)
    {
      v20 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v17, *(a1 + 48), i, v19);
      objc_opt_class();
      v24 = objc_msgSend_cascadedStyleWithIdentifier_(v69, v21, v20, v22, v23);
      v25 = TSUDynamicCast();

      if (!v25)
      {
        v28 = objc_msgSend_deriveCategoryCellStyleForTableStyleArea_connectedToStylesheet_(v14, v26, i, 1, v27);
        v33 = objc_msgSend_stylesheet(v28, v29, v30, v31, v32);
        v38 = objc_msgSend_rootAncestor(v33, v34, v35, v36, v37);
        v43 = objc_msgSend_rootAncestor(v69, v39, v40, v41, v42);

        if (v38 == v43)
        {
          v25 = v28;
        }

        else
        {
          v25 = v28;
          objc_msgSend_addStyle_withIdentifier_(v69, v26, v28, v20, v27);
        }
      }

      objc_msgSend_setCellStyle_forTableStyleArea_(v14, v26, v25, i, v27);
    }

    v44 = objc_msgSend_textStyleForTableStyleArea_(v14, v17, i, v18, v19);

    if (!v44)
    {
      v45 = objc_msgSend_textStyleIDForPreset_andTableStyleArea_(TSTCellStyle, v11, *(a1 + 48), i, v13);
      objc_opt_class();
      v49 = objc_msgSend_cascadedStyleWithIdentifier_(v69, v46, v45, v47, v48);
      v50 = TSUDynamicCast();

      if (!v50)
      {
        v53 = objc_msgSend_deriveCategoryTextStyleForTableStyleArea_connectedToStylesheet_(v14, v51, i, 1, v52);
        v58 = objc_msgSend_stylesheet(v53, v54, v55, v56, v57);
        v63 = objc_msgSend_rootAncestor(v58, v59, v60, v61, v62);
        v68 = objc_msgSend_rootAncestor(v69, v64, v65, v66, v67);

        if (v63 == v68)
        {
          v50 = v53;
        }

        else
        {
          v50 = v53;
          objc_msgSend_addStyle_withIdentifier_(v69, v51, v53, v45, v52);
        }
      }

      objc_msgSend_setTextStyle_forTableStyleArea_(v14, v51, v50, i, v52);
    }
  }

  objc_msgSend_setStyleNetwork_(*(a1 + 32), v11, v14, v12, v13);
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_221247DE4(uint64_t a1, void *a2)
{
  v45 = a2;
  objc_msgSend_willModifyForUpgrade(*(a1 + 32), v3, v4, v5, v6);
  v11 = objc_msgSend_styleNetwork(*(a1 + 32), v7, v8, v9, v10);
  objc_msgSend_generatePivotStylesConnectedToStylesheet_(v11, v12, 1, v13, v14);
  for (i = 15; i != 18; ++i)
  {
    v19 = objc_msgSend_cellStyleForTableStyleArea_(v11, v15, i, v16, v17);
    v24 = objc_msgSend_stylesheet(v19, v20, v21, v22, v23);
    v29 = objc_msgSend_rootAncestor(v24, v25, v26, v27, v28);
    v34 = objc_msgSend_rootAncestor(v45, v30, v31, v32, v33);

    if (v29 != v34)
    {
      v37 = objc_msgSend_styleIDForPreset_andTableStyleArea_(TSTCellStyle, v35, *(a1 + 48), i, v36);
      objc_opt_class();
      v41 = objc_msgSend_cascadedStyleWithIdentifier_(v45, v38, v37, v39, v40);
      v42 = TSUDynamicCast();

      if (v42)
      {
        objc_msgSend_setCellStyle_forTableStyleArea_(v11, v43, v42, i, v44);
      }

      else
      {
        objc_msgSend_addStyle_withIdentifier_(v45, v43, v19, v37, v44);
      }
    }
  }

  objc_msgSend_setStyleNetwork_(*(a1 + 32), v15, v11, v16, v17);
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_221247FCC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  sub_2216E24E8();
  v5 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v11 = objc_msgSend_presetsOfKind_(a1, v6, *MEMORY[0x277D80BA8], v7, v8);
  if (v11)
  {
    objc_msgSend_setStrongReferenceArray_message_(v12, v9, v11, v5 + 16, v10);
  }
}

uint64_t sub_2212480A4(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](a1, sel_registerPresetSourceClass_, v2, v3, v4);
}

void sub_22124B51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22124B558(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22124B570(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v8 = objc_msgSend_mostSpecificNodeContainingIndex_correspondingIndex_(v9, v6, a1[5], a1[6], v7);
  if (v8)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), v8);
    *a4 = 1;
  }
}

uint64_t sub_22124BEDC(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_22107C148();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    sub_22124BFEC(a1, v7);
  }

  v8 = (16 * v2);
  v17 = 0;
  v18 = v8;
  *(&v19 + 1) = 0;
  v9 = *a2;
  v10 = *(a2 + 8);
  *v8 = v9;
  v8[1] = v10;
  *&v19 = v8 + 2;
  v11 = *(a1 + 8);
  v12 = (v8 + *a1 - v11);
  sub_22124C034(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_22124C090(&v17);
  return v16;
}

void sub_22124BFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22124C090(va);
  _Unwind_Resume(a1);
}

void sub_22124BFEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_22124C034(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      *v6 = 0;
      v6 += 2;
      *a4 = v7;
      a4[1] = v8;
      a4 += 2;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v9 = *v5;
      v5 += 2;
    }
  }
}

uint64_t sub_22124C090(uint64_t a1)
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

void sub_22124C0E4(void ***a1)
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
        v6 = *(v4 - 2);
        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_22124C6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSTFormula;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_22124D130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  TSTParser::~TSTParser(&a9);

  _Unwind_Resume(a1);
}

void sub_22124D1D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCA900];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"'%C%C", a4, a5, 65287, 8217);
  v9 = objc_msgSend_characterSetWithCharactersInString_(v5, v6, v11, v7, v8);
  v10 = qword_27CFB52E8;
  qword_27CFB52E8 = v9;
}

void sub_22124D2B8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCA900];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"'%C%C%C%C", a4, a5, 65287, 8216, 8217, 8218);
  v9 = objc_msgSend_characterSetWithCharactersInString_(v5, v6, v11, v7, v8);
  v10 = qword_27CFB52F8;
  qword_27CFB52F8 = v9;
}

void sub_22124D3A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCA900];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%C%C%C%C%C%C%C%C%C%C%C", a4, a5, 34, 8216, 8218, 8220, 8221, 8222, 171, 187, 12300, 12301, 1524);
  v9 = objc_msgSend_characterSetWithCharactersInString_(v5, v6, v11, v7, v8);
  v10 = qword_27CFB5308;
  qword_27CFB5308 = v9;
}

void sub_22124D4BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCA900];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(%C"), a4, a5, 65288;
  v9 = objc_msgSend_characterSetWithCharactersInString_(v5, v6, v11, v7, v8);
  v10 = qword_27CFB5318;
  qword_27CFB5318 = v9;
}

void sub_22124D598(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCA900];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%C"), a4, a5, 65289);
  v9 = objc_msgSend_characterSetWithCharactersInString_(v5, v6, v11, v7, v8);
  v10 = qword_27CFB5328;
  qword_27CFB5328 = v9;
}

void sub_22124DCB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCAB50], a2, @"+-*/^&=><:", a4, a5);
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%C%C%C%C%C%C%C%C", v6, v7, 45, 8722, 65123, 65293, 12540, 43, 65122, 65291);
  objc_msgSend_addCharactersInString_(v32, v9, v8, v10, v11);

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%C%C%C%C%C%C%C%C%C%C", v13, v14, 65290, 65295, 65342, 65285, 65306, 65309, 65308, 65310, 65284, 1642);
  objc_msgSend_addCharactersInString_(v32, v16, v15, v17, v18);

  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%C%C%C%C%C", v20, v21, *MEMORY[0x277D81580], *MEMORY[0x277D81548], *MEMORY[0x277D81578], *MEMORY[0x277D81560], *MEMORY[0x277D81588]);
  objc_msgSend_addCharactersInString_(v32, v23, v22, v24, v25);

  v30 = objc_msgSend_copy(v32, v26, v27, v28, v29);
  v31 = qword_27CFB5338;
  qword_27CFB5338 = v30;
}

void sub_22124DE50(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_22124E808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  _Block_object_dispose((v20 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_22124EA24(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  objc_opt_class();
  v9 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 32), v6, a2, v7, v8);
  v16 = TSUDynamicCast();

  if (!v16)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (a3)
    {
      *a3 = 1;
    }
  }

  v14 = objc_msgSend_formulaPlainText(v16, v10, v11, v12, v13);
  objc_msgSend_replaceCharactersInRange_withString_undoTransaction_(*(a1 + 32), v15, a2, 1, v14, 0);
}

void sub_22124EB24(uint64_t a1, void *a2)
{
  v18 = a2;
  if (objc_msgSend_firstIndex(v18, v3, v4, v5, v6) >= *(a1 + 32))
  {
    objc_msgSend_setLastIndex_(v18, v18, 0x7FFFFFFFFFFFFFFFLL, v8, v9);
    objc_msgSend_setFirstIndex_(v18, v15, 0x7FFFFFFFFFFFFFFFLL, v16, v17);
  }

  else
  {
    Index = objc_msgSend_lastIndex(v18, v18, v7, v8, v9);
    v14 = *(a1 + 32);
    if (Index >= v14)
    {
      objc_msgSend_setLastIndex_(v18, v11, v14 - 1, v12, v13);
    }
  }
}

uint64_t sub_22124EEF4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_length(a1, a2, a3, a4, a5);
  if (result)
  {
    v11 = objc_msgSend_characterAtIndex_(a1, v7, 0, v8, v9);

    return objc_msgSend_isFormulaEqualsCharacter_(TSTFormula, v10, v11, v12, v13);
  }

  return result;
}

uint64_t sub_22124EF54(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_length(a1, a2, a3, a4, a5) != 1)
  {
    return 0;
  }

  v10 = objc_msgSend_characterAtIndex_(a1, v6, 0, v7, v8);

  return objc_msgSend_isFormulaEqualsCharacter_(TSTFormula, v9, v10, v11, v12);
}

uint64_t sub_22124EFBC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_leadingSingleQuoteEscapeCharacters(TSTFormula, a2, a3, a4, a5);
  hasLeadingCharacterInSet = objc_msgSend_tst_hasLeadingCharacterInSet_(a1, v7, v6, v8, v9);

  return hasLeadingCharacterInSet;
}

uint64_t sub_22124F018(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_length(a1, v5, v6, v7, v8) == 1)
  {
    hasLeadingCharacterInSet = objc_msgSend_tst_hasLeadingCharacterInSet_(a1, v9, v4, v10, v11);
  }

  else
  {
    hasLeadingCharacterInSet = 0;
  }

  return hasLeadingCharacterInSet;
}

uint64_t sub_22124F080(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_length(a1, v5, v6, v7, v8))
  {
    v12 = objc_msgSend_characterAtIndex_(a1, v9, 0, v10, v11);
    IsMember = objc_msgSend_characterIsMember_(v4, v13, v12, v14, v15);
  }

  else
  {
    IsMember = 0;
  }

  return IsMember;
}

uint64_t sub_22124F0F0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27CFB5350 != -1)
  {
    sub_2216F7524();
  }

  v6 = qword_27CFB5348;

  return objc_msgSend_tsu_stringByRemovingCharactersInSet_(a1, a2, v6, a4, a5);
}

void sub_22124F144(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_characterSetWithRange_(MEMORY[0x277CCA900], a2, 65532, 1, a5);
  v6 = qword_27CFB5348;
  qword_27CFB5348 = v5;
}

void sub_221250360(unsigned int a1, double a2)
{
  if (a1 <= 0)
  {
    sub_22137A674("stdtr", 1);
  }

  else if (a2 != 0.0)
  {
    if (a2 >= -2.0)
    {
      v4 = -a2;
      if (a2 >= 0.0)
      {
        v4 = a2;
      }

      v5 = 1.0;
      v6 = v4 * v4 / a1 + 1.0;
      if (a1)
      {
        atan(v4 / sqrt(a1));
        if (a1 != 1)
        {
          v9 = 1.0;
          if (a1 >= 5)
          {
            v10 = 1.0;
            v11 = 3;
            do
            {
              if (v10 / v9 <= *&qword_27CFB4C50)
              {
                break;
              }

              v10 = v10 * ((v11 - 1) / (v6 * v11));
              v9 = v9 + v10;
              v11 += 2;
            }

            while (v11 <= (a1 - 2));
          }
        }
      }

      else if (a1 >= 4)
      {
        v7 = 1.0;
        v8 = 2;
        do
        {
          if (v7 / v5 <= *&qword_27CFB4C50)
          {
            break;
          }

          v7 = v7 * ((v8 - 1) / (v6 * v8));
          v5 = v5 + v7;
          v8 += 2;
        }

        while (v8 <= (a1 - 2));
      }
    }

    else
    {
      sub_2212F4E64(vcvtd_n_f64_u32(a1, 1uLL), 0.5, a1 / (a1 + a2 * a2));
    }
  }
}

void sub_221250524(unsigned int a1, double a2)
{
  v2 = a2 >= 1.0 || a1 < 1;
  if (v2 || a2 <= 0.0)
  {
    sub_22137A674("stdtri", 1);
  }

  else
  {
    v3 = a1;
    if (a2 > 0.25 && a2 < 0.75)
    {
      if (a2 != 0.5)
      {
        sub_221125004(0.5, v3 * 0.5, fabs(a2 * -2.0 + 1.0));
      }
    }

    else
    {
      v5 = 1.0 - a2;
      if (a2 < 0.5)
      {
        v5 = a2;
      }

      sub_221125004(v3 * 0.5, 0.5, v5 + v5);
    }
  }
}

void sub_22125063C(void *a1, void *a2)
{
  v3 = a1;
  v8 = a2;
  if (v3)
  {
    *&v181 = objc_msgSend_tableUID(v3, v4, v5, v6, v7);
    *(&v181 + 1) = v9;
    if (!(v181 | v9))
    {
      v181 = *objc_msgSend_containingTable(v8, v9, v10, v11, v12);
    }

    v13 = objc_msgSend_calcEngine(v8, v9, v10, v11, v12);
    v17 = objc_msgSend_tableResolverWrapperForTableUID_(v13, v14, &v181, v15, v16);

    if (v17)
    {
      v22 = objc_msgSend_tableUID(v3, v18, v19, v20, v21);
      if (!(v22 | v23))
      {
        v27 = objc_msgSend_containingTable(v8, v23, v24, v25, v26);
        objc_msgSend_setTableUID_(v3, v28, *v27, v27[1], v29);
      }

      if (TSCETableResolverWrapper::isPivotTable(v17, v23, v24, v25, v26))
      {
        objc_msgSend_setPreserveFlags_(v3, v30, 15, v32, v33);
      }

      v34 = &v179;
      v180[0] = 0;
      v180[1] = 0;
      v179 = v180;
      if (!objc_msgSend_wantsCalculatedPrecedents(v8, v30, v31, v32, v33))
      {
        v34 = 0;
      }

      v39 = objc_msgSend_hidingActionMask(v8, v35, v36, v37, v38);
      v178 = 0;
      v44 = objc_msgSend_isForChartFormulas(v8, v40, v41, v42, v43);
      v45 = TSCETableResolverWrapper::valuesForViewTractRef(&v17->var0, v3, v39, &v178, v34, v44 ^ 1u);
      v46 = v178;
      v50 = TSCETableResolverWrapper::cellTractRefForViewTractRef(v17, v3, v47, v48, v49);
      v55 = objc_msgSend_boundingRange(v50, v51, v52, v53, v54);
      v57 = v56;
      objc_msgSend_addCalculatedPrecedents_(v8, v56, &v179, v58, v59);
      if (v46)
      {
        v64 = objc_msgSend_evaluationStack(v8, v60, v61, v62, v63);
        v68 = objc_msgSend_errorValue_(TSCEErrorValue, v65, v46, v66, v67);
        TSCEEvaluationStack::push_back(v64, v68);
LABEL_13:

        sub_22107C800(&v179, v180[0]);
LABEL_24:

        goto LABEL_25;
      }

      if (v45)
      {
        if (objc_msgSend_numberOfRows(v45, v60, v61, v62, v63) == 1 && objc_msgSend_numberOfColumns(v45, v80, v81, v82, v83) == 1 && (objc_msgSend_spansAllRows(v3, v80, v81, v82, v83) & 1) == 0)
        {
          v84 = objc_msgSend_spansAllColumns(v3, v80, v81, v82, v83) ^ 1;
        }

        else
        {
          v84 = 0;
        }

        if (objc_msgSend_pivotRefsReturnsValueGrid(v8, v80, v81, v82, v83))
        {
          v89 = objc_msgSend_evaluationStack(v8, v85, v86, v87, v88);
          v68 = objc_msgSend_valueGridValue_(TSCEValueGridValue, v90, v45, v91, v92);
          TSCEEvaluationStack::push_back(v89, v68);
        }

        else if (v84)
        {
          v102 = [TSCEReferenceValue alloc];
          *&v173 = v55;
          v173._singleRange._begin = v57;
          *&v173._singleRange._end = v181;
          v177 = objc_msgSend_preserveFlags(v3, v103, v104, v105, v106);
          v111 = objc_msgSend_firstValue(v45, v107, v108, v109, v110);
          v68 = objc_msgSend_initWithContext_rangeRef_preserveFlags_cacheValue_wasFetchedWithRichTextAttributes_(v102, v112, v8, &v173, &v177, v111, 1);

          v117 = objc_msgSend_evaluationStack(v8, v113, v114, v115, v116);
          TSCEEvaluationStack::push_back(v117, v68);
        }

        else
        {
          v68 = objc_msgSend_valueGridValue_(TSCEValueGridValue, v85, v45, v87, v88);
          if (objc_msgSend_spansAllRows(v3, v118, v119, v120, v121))
          {
            if (WORD2(v57) == WORD2(v55))
            {
              *(&v126 + 1) = *objc_msgSend_containingCell(v8, v122, v123, v124, v125);
              *&v126 = v55;
              objc_msgSend_setImplicitIntersectionCoord_(v68, v127, (v126 >> 32) & 0xFFFFFFFF0000FFFFLL, v128, v129);
              *&v173 = v55 & 0xFFFF00000000 | *(&v126 + 1);
              v173._singleRange._begin = v173;
              *&v173._singleRange._end = v181;
              if ((TSCETableResolverWrapper::rangeIsWithinTableInView(v17, &v173, v130, v131, v132) & 1) == 0)
              {
                objc_msgSend_setImplicitIntersectionOffTable_(v68, v122, 1, v124, v125);
              }
            }

            objc_msgSend_setSpansAllRows_(v50, v122, 1, v124, v125);
          }

          else if (objc_msgSend_spansAllColumns(v3, v122, v123, v124, v125))
          {
            if (v57 == v55)
            {
              v137 = *(objc_msgSend_containingCell(v8, v133, v134, v135, v136) + 4);
              objc_msgSend_setImplicitIntersectionCoord_(v68, v138, v137 | (v55 << 32), v139, v140);
              *&v173 = v55;
              *(&v173 + 1) = v137;
              v173._singleRange._begin = v173;
              *&v173._singleRange._end = v181;
              if ((TSCETableResolverWrapper::rangeIsWithinTableInView(v17, &v173, v141, v142, v143) & 1) == 0)
              {
                objc_msgSend_setImplicitIntersectionOffTable_(v68, v133, 1, v135, v136);
              }
            }

            objc_msgSend_setSpansAllColumns_(v50, v133, 1, v135, v136);
          }

          v148 = [TSCEEvalRef alloc];
          if (v50)
          {
            objc_msgSend_cppCellTractRef(v50, v144, v145, v146, v147);
          }

          else
          {
            v176 = 0;
            v175 = 0u;
            memset(&v174, 0, sizeof(v174));
            memset(&v173, 0, sizeof(v173));
          }

          v149 = objc_msgSend_initWithTableResolver_tractRefCore_(v148, v144, v17, &v173, v147);
          TSUIndexSet::~TSUIndexSet(&v174);
          TSUIndexSet::~TSUIndexSet(&v173);
          objc_msgSend_setCachedValue_(v149, v150, v68, v151, v152);
          objc_msgSend_setCachedValueWasFetchedWithRichTextAttributes_(v149, v153, 1, v154, v155);
          v156 = [TSCEReferenceValue alloc];
          v161 = objc_msgSend_containingCell(v8, v157, v158, v159, v160);
          *&v173 = objc_msgSend_preserveFlags(v3, v162, v163, v164, v165);
          isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v156, v166, v149, v161, &v173, 0, 0);
          v172 = objc_msgSend_evaluationStack(v8, v168, v169, v170, v171);
          TSCEEvaluationStack::push_back(v172, isOutputOfAFunction);
        }

        goto LABEL_13;
      }

      sub_22107C800(&v179, v180[0]);
    }

    v93 = objc_msgSend_invalidReferenceError(TSCEError, v18, v19, v20, v21);
    v46 = objc_msgSend_errorValue_(TSCEErrorValue, v94, v93, v95, v96);

    v101 = objc_msgSend_evaluationStack(v8, v97, v98, v99, v100);
    TSCEEvaluationStack::push_back(v101, v46);
    goto LABEL_24;
  }

  v69 = MEMORY[0x277D81150];
  v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "void TSCEEvaluateViewTractRefWithContext(TSCEViewTractRef *__strong, TSCEEvaluationContext *__strong)", v6, v7);
  v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v72, v73);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v75, v70, v74, 44, 0, "invalid nil value for '%{public}s'", "vtr");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79);
LABEL_25:
}

void sub_221250BAC(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, void *a25)
{
  sub_22107C800(&a24, a25);

  _Unwind_Resume(a1);
}

id sub_221250CB8(TSCEASTNodeArray *a1, void *a2, void *a3)
{
  v1203 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v1180 = v7;
  if (!a1 || !a1->var1)
  {
    objc_msgSend_addPartialResult_(v7, v8, 0, v9, v10);
    i = objc_msgSend_nilValue(TSCENilValue, v21, v22, v23, v24);
    goto LABEL_271;
  }

  v11 = objc_autoreleasePoolPush();
  memset(v1199, 0, sizeof(v1199));
  v1200 = 1065353216;
  v20 = objc_msgSend_calcEngine(v6, v12, v13, v14, v15);
  context = v11;
  if (v6)
  {
    objc_msgSend_containingCellRef(v6, v16, v17, v18, v19);
  }

  else
  {
    memset(&v1193, 0, 24);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v1198, v20, &v1193);

  v25 = [TSCEEvaluationState alloc];
  v27 = objc_msgSend_initWithAST_rewriteContext_warnings_(v25, v26, a1, &v1198, 0);
  v1196 = 0;
  v1197 = v27;
  v1194 = 0;
  v1195 = 0;
  sub_2212543AC(&v1194, &v1197);
  v29 = v1194;
  v28 = v1195;
  if (v1194 == v1195)
  {
LABEL_261:
    while (v28 != v29)
    {
      v1100 = *(v28 - 8);
      v28 -= 8;
    }

    v1195 = v29;
    v1101 = 1;
    goto LABEL_264;
  }

  v1177 = 0;
  v1178 = 0;
  while (2)
  {
    v30 = *(v28 - 8);
    v35 = objc_msgSend_elementIterator(v30, v31, v32, v33, v34);
    for (i = sub_22134B3CC(v35); !i || (*(*i + 128))(i); i = sub_22134B3CC(v35))
    {
      v40 = objc_msgSend_warnings(v30, v36, v37, v38, v39);
      v41 = v40 == 0;

      if (!v41)
      {
        i = objc_msgSend_evaluationStack(v6, v42, v43, v44, v45);
        if (TSCEEvaluationStack::size(i))
        {
          v46 = TSCEEvaluationStack::back(i);
          TSCEEvaluationStack::pop_back(i);
          v51 = objc_msgSend_warnings(v30, v47, v48, v49, v50);
          objc_msgSend_attachWarnings_(v46, v52, v51, v53, v54);

          TSCEEvaluationStack::push_back(i, v46);
        }
      }

      v55 = v1195 - 8;

      v1195 = v55;
      if (v1194 == v1195)
      {
        goto LABEL_260;
      }

      v30 = *(v1195 - 8);
      v35 = objc_msgSend_elementIterator(v30, v56, v57, v58, v59);
      v64 = objc_msgSend_evaluationStack(v6, v60, v61, v62, v63);
      if (TSCEEvaluationStack::size(v64))
      {
        v69 = objc_msgSend_evaluationStack(v6, v65, v66, v67, v68);
        v70 = TSCEEvaluationStack::back(v69);
        if (objc_msgSend_isReferenceValue(v70, v71, v72, v73, v74))
        {
          v79 = objc_msgSend_asReferenceValue(v70, v75, v76, v77, v78);
          v84 = v79;
          if (v79)
          {
            if ((objc_msgSend_isOutputOfAFunction(v79, v80, v81, v82, v83) & 1) == 0)
            {
              v89 = objc_msgSend_copy(v84, v85, v86, v87, v88);
              objc_msgSend_setIsOutputOfAFunction_(v89, v90, 1, v91, v92);
              v97 = objc_msgSend_evaluationStack(v6, v93, v94, v95, v96);
              TSCEEvaluationStack::pop_back(v97);
              v102 = objc_msgSend_evaluationStack(v6, v98, v99, v100, v101);
              TSCEEvaluationStack::push_back(v102, v89);
            }
          }
        }
      }
    }

    if (v1194 == v1195)
    {

LABEL_260:
      v29 = v1194;
      v28 = v1195;
      goto LABEL_261;
    }

    v107 = TSCEASTElement::tag(i, v35);
    v1176 = *(i + 8);
    switch(v107)
    {
      case 1:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Add, v103, v6, 2, v106);
        v302 = objc_msgSend_evaluationStack(v6, v298, v299, v300, v301);
        TSCEEvaluationStack::push_back(v302, v125);
        if (v1180)
        {
          v303 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v303, v304, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v305, i, v306, v307);
        }

        goto LABEL_134;
      case 2:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Subtract, v103, v6, 2, v106);
        v342 = objc_msgSend_evaluationStack(v6, v338, v339, v340, v341);
        TSCEEvaluationStack::push_back(v342, v125);
        if (v1180)
        {
          v343 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v343, v344, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v345, i, v346, v347);
        }

        goto LABEL_134;
      case 3:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Multiply, v103, v6, 2, v106);
        v312 = objc_msgSend_evaluationStack(v6, v308, v309, v310, v311);
        TSCEEvaluationStack::push_back(v312, v125);
        if (v1180)
        {
          v313 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v313, v314, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v315, i, v316, v317);
        }

        goto LABEL_134;
      case 4:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Divide, v103, v6, 2, v106);
        v382 = objc_msgSend_evaluationStack(v6, v378, v379, v380, v381);
        TSCEEvaluationStack::push_back(v382, v125);
        if (v1180)
        {
          v383 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v383, v384, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v385, i, v386, v387);
        }

        goto LABEL_134;
      case 5:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Power, v103, v6, 2, v106);
        v392 = objc_msgSend_evaluationStack(v6, v388, v389, v390, v391);
        TSCEEvaluationStack::push_back(v392, v125);
        if (v1180)
        {
          v393 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v393, v394, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v395, i, v396, v397);
        }

        goto LABEL_134;
      case 6:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Concat, v103, v6, 2, v106);
        v352 = objc_msgSend_evaluationStack(v6, v348, v349, v350, v351);
        TSCEEvaluationStack::push_back(v352, v125);
        if (v1180)
        {
          v353 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v353, v354, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v355, i, v356, v357);
        }

        goto LABEL_134;
      case 7:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_GT, v103, v6, 2, v106);
        v372 = objc_msgSend_evaluationStack(v6, v368, v369, v370, v371);
        TSCEEvaluationStack::push_back(v372, v125);
        if (v1180)
        {
          v373 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v373, v374, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v375, i, v376, v377);
        }

        goto LABEL_134;
      case 8:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_GE, v103, v6, 2, v106);
        v322 = objc_msgSend_evaluationStack(v6, v318, v319, v320, v321);
        TSCEEvaluationStack::push_back(v322, v125);
        if (v1180)
        {
          v323 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v323, v324, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v325, i, v326, v327);
        }

        goto LABEL_134;
      case 9:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_LT, v103, v6, 2, v106);
        v362 = objc_msgSend_evaluationStack(v6, v358, v359, v360, v361);
        TSCEEvaluationStack::push_back(v362, v125);
        if (v1180)
        {
          v363 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v363, v364, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v365, i, v366, v367);
        }

        goto LABEL_134;
      case 10:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_LE, v103, v6, 2, v106);
        v412 = objc_msgSend_evaluationStack(v6, v408, v409, v410, v411);
        TSCEEvaluationStack::push_back(v412, v125);
        if (v1180)
        {
          v413 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v413, v414, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v415, i, v416, v417);
        }

        goto LABEL_134;
      case 11:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_EQ, v103, v6, 2, v106);
        v402 = objc_msgSend_evaluationStack(v6, v398, v399, v400, v401);
        TSCEEvaluationStack::push_back(v402, v125);
        if (v1180)
        {
          v403 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v403, v404, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v405, i, v406, v407);
        }

        goto LABEL_134;
      case 12:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_NE, v103, v6, 2, v106);
        v332 = objc_msgSend_evaluationStack(v6, v328, v329, v330, v331);
        TSCEEvaluationStack::push_back(v332, v125);
        if (v1180)
        {
          v333 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v333, v334, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v335, i, v336, v337);
        }

        goto LABEL_134;
      case 13:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Negate, v103, v6, 1, v106);
        v531 = objc_msgSend_evaluationStack(v6, v527, v528, v529, v530);
        TSCEEvaluationStack::push_back(v531, v125);
        if (v1180)
        {
          v532 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v532, v533, v125, 1, v1176);
          objc_msgSend_addPartialResult_(v1180, v534, i, v535, v536);
        }

        goto LABEL_134;
      case 14:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_PlusSign, v103, v6, 1, v106);
        v541 = objc_msgSend_evaluationStack(v6, v537, v538, v539, v540);
        TSCEEvaluationStack::push_back(v541, v125);
        if (v1180)
        {
          v542 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v542, v543, v125, 1, v1176);
          objc_msgSend_addPartialResult_(v1180, v544, i, v545, v546);
        }

        goto LABEL_134;
      case 15:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Percent, v103, v6, 1, v106);
        v204 = objc_msgSend_evaluationStack(v6, v200, v201, v202, v203);
        TSCEEvaluationStack::push_back(v204, v125);
        if (v1180)
        {
          v205 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v205, v206, v125, 1, v1176);
          objc_msgSend_addPartialResult_(v1180, v207, i, v208, v209);
        }

        goto LABEL_134;
      case 16:
      case 17:
      case 33:
      case 34:
        v108 = TSCEASTFunctionElement::functionIndex(i, v35, v104, v105, v106);
        v109 = (*(*i + 48))(i, v35);
        v110 = sub_2212544A0(v6, v108, v109, 0);
        i = objc_msgSend_isThunk(v110, v111, v112, v113, v114);
        if (i)
        {
          v119 = objc_msgSend_asThunkValue(v110, v115, v116, v117, v118);
          v124 = objc_msgSend_ast(v119, v120, v121, v122, v123);
          TSCEASTNodeArray::shallowCopy(v124);
        }

        v157 = objc_msgSend_evaluationStack(v6, v115, v116, v117, v118);
        TSCEEvaluationStack::push_back(v157, v110);
        if (v1180)
        {
          v158 = [TSCEPartialResult alloc];
          v160 = objc_msgSend_initWithValue_numArgs_offset_(v158, v159, v110, v109, v1176);
          objc_msgSend_addPartialResult_(v1180, v161, v160, v162, v163);

          v164 = 1;
        }

        else
        {
          v164 = 0;
        }

        goto LABEL_250;
      case 18:
        v1193.range._topLeft = TSCEASTNumberElement::value(i, v35, v104, v105, v106);
        v1193.range._bottomRight = v418;
        v421 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v418, &v1193, v419, v420);
        v426 = objc_msgSend_evaluationStack(v6, v422, v423, v424, v425);
        TSCEEvaluationStack::push_back(v426, v421);

        goto LABEL_249;
      case 19:
        v547 = TSCEASTBooleanElement::value(i, v35, v104, v105, v106);
        v551 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v548, v547, v549, v550);
        v556 = objc_msgSend_evaluationStack(v6, v552, v553, v554, v555);
        TSCEEvaluationStack::push_back(v556, v551);

        goto LABEL_249;
      case 20:
        v493 = TSCEASTStringElement::string(i, v35, v104, v105, v106);
        v1193.range._topLeft = 0;
        v1193.range._bottomRight.row = 0;
        LOBYTE(v1193.range._bottomRight.column) = 0;
        LOWORD(v1193._tableUID._lower) = v1193._tableUID._lower & 0xC080 | 0x421;
        BYTE2(v1193._tableUID._lower) = BYTE2(v1193._tableUID._lower) & 0xF8 | 1;
        HIDWORD(v1193._tableUID._lower) = -50266102;
        LOBYTE(v1193._tableUID._upper) = -3;
        BYTE1(v1193._tableUID._upper) &= 0xE0u;
        WORD1(v1193._tableUID._upper) = 0;
        i = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v494, v493, &v1193, 0, 0, 1);
        v499 = objc_msgSend_evaluationStack(v6, v495, v496, v497, v498);
        TSCEEvaluationStack::push_back(v499, i);

        goto LABEL_249;
      case 21:
        v599 = TSCEASTDateElement::valueAsIntervalSinceReferenceDate(i, v35, v104, v105, v106);
        v603 = TSCEASTDateElement::dateTimeFormat(i, v35, v600, v601, v602);
        v607 = TSCEASTDateElement::suppressDateFormat(i, v35, v604, v605, v606);
        v615 = TSCEASTDateElement::suppressTimeFormat(i, v35, v608, v609, v610);
        v1193.range._topLeft = 0;
        v1193.range._bottomRight.row = 0;
        LOBYTE(v1193.range._bottomRight.column) = 0;
        LOWORD(v1193._tableUID._lower) = v1193._tableUID._lower & 0xC080 | 0x421;
        BYTE2(v1193._tableUID._lower) = BYTE2(v1193._tableUID._lower) & 0xF8 | 1;
        HIDWORD(v1193._tableUID._lower) = -50266102;
        LOBYTE(v1193._tableUID._upper) = -3;
        BYTE1(v1193._tableUID._upper) &= 0xE0u;
        WORD1(v1193._tableUID._upper) = 0;
        if (!((v603 != 0) | (v607 | v615) & 1))
        {
          goto LABEL_215;
        }

        if (v603)
        {
          v619 = v603;
        }

        else
        {
          v973 = objc_msgSend_locale(v6, v611, v612, v613, v614);
          v619 = TSUDefaultDateTimeFormat();
        }

        if (v607)
        {
          v974 = objc_msgSend_timePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], v616, v619, v617, v618);
LABEL_198:
          v975 = v974;

          goto LABEL_214;
        }

        if (v615)
        {
          v974 = objc_msgSend_datePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], v616, v619, v617, v618);
          goto LABEL_198;
        }

        v975 = v619;
LABEL_214:
        v1007 = objc_alloc(MEMORY[0x277D80658]);
        v1011 = objc_msgSend_initWithFormatString_(v1007, v1008, v975, v1009, v1010);
        TSCEFormat::TSCEFormat(&v1192, v1011, 0);
        TSCEFormat::operator=(&v1193, &v1192);

LABEL_215:
        i = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v611, v612, v613, v614, v599);
        v1014 = objc_msgSend_dateValue_format_(TSCEDateValue, v1012, i, &v1193, v1013);

        v1019 = objc_msgSend_evaluationStack(v6, v1015, v1016, v1017, v1018);
        TSCEEvaluationStack::push_back(v1019, v1014);

        goto LABEL_249;
      case 22:
        TSCEASTDurationElement::unitNum(i, v35, v104, v105, v106);
        v430 = TSCEASTDurationElement::unit(i, v35, v427, v428, v429);
        v434 = TSCEASTDurationElement::durationFormat(i, v35, v431, v432, v433);
        *v1188 = v434;
        *(v1188 + 2) = BYTE2(v434);
        v435 = TSCEDurationFormat::asTSKDurationFormat(v1188);
        v436 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        TSCEFormat::TSCEFormat(&v1193, v435, 0);
        i = objc_msgSend_initWithDecimal_format_baseUnit_(v436, v437, &v1192, &v1193, v430);
        v442 = objc_msgSend_evaluationStack(v6, v438, v439, v440, v441);
        TSCEEvaluationStack::push_back(v442, i);

        goto LABEL_249;
      case 23:
        v284 = objc_msgSend_evaluationStack(v6, v103, v104, v105, v106);
        v289 = objc_msgSend_emptyArgumentValue(TSCEEmptyArgumentValue, v285, v286, v287, v288);
        TSCEEvaluationStack::push_back(v284, v289);

        goto LABEL_249;
      case 24:
        if (TSCEASTTokenElement::isOptional(i, v35, v104, v105, v106))
        {
          v241 = objc_msgSend_tokenValue(TSCETokenValue, v233, v234, v235, v236);
        }

        else
        {
          i = objc_msgSend_requiredArgumentMissingError(TSCEError, v233, v234, v235, v236);
          v241 = objc_msgSend_errorValue_(TSCEErrorValue, v801, i, v802, v803);
        }

        goto LABEL_52;
      case 25:
        v443 = TSCEASTArrayElement::numColumns(i, v35, v104, v105, v106);
        v447 = TSCEASTArrayElement::numRows(i, v35, v444, v445, v446);
        v452 = objc_msgSend_evaluationStack(v6, v448, v449, v450, v451);
        v453 = v447 * v443;
        TSCEEvaluationStack::setArgumentCount(v452, v447 * v443);
        memset(&v1193, 0, 24);
        if (v453)
        {
          v458 = -v453;
          do
          {
            v459 = objc_msgSend_evaluationStack(v6, v454, v455, v456, v457);
            v464 = objc_msgSend_evaluationStack(v6, v460, v461, v462, v463);
            v465 = TSCEEvaluationStack::size(v464);
            v1192._tskFormat = TSCEEvaluationStack::at(v459, v458 + v465);
            sub_221179A54(&v1193, &v1192._tskFormat);

            v466 = __CFADD__(v458++, 1);
          }

          while (!v466);
        }

        v1192._tskFormat = __PAIR64__(v447, v443);
        v467 = [TSCEDenseGrid alloc];
        i = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v467, v468, &v1193, 0, 0, &v1192);
        v472 = objc_msgSend_gridValue_(TSCEGridValue, v469, i, v470, v471);
        v477 = objc_msgSend_evaluationStack(v6, v473, v474, v475, v476);
        TSCEEvaluationStack::clearArgument(v477, v478, v479, v480, v481);
        v486 = objc_msgSend_evaluationStack(v6, v482, v483, v484, v485);
        TSCEEvaluationStack::push_back(v486, v472);
        if (v1180)
        {
          v487 = [TSCEPartialResult alloc];
          v489 = objc_msgSend_initWithValue_numArgs_offset_(v487, v488, v472, v453, v1176);
          objc_msgSend_addPartialResult_(v1180, v490, v489, v491, v492);
        }

        goto LABEL_163;
      case 26:
        v516 = (*(*i + 48))(i, v35);
        if (v516 != 1)
        {
          v804 = objc_msgSend_evaluationStack(v6, v103, v104, v105, v106);
          TSCEEvaluationStack::setArgumentCount(v804, v516);
          memset(&v1193, 0, 24);
          if (v516)
          {
            v809 = -v516;
            do
            {
              v810 = objc_msgSend_evaluationStack(v6, v805, v806, v807, v808);
              v815 = objc_msgSend_evaluationStack(v6, v811, v812, v813, v814);
              v816 = TSCEEvaluationStack::size(v815);
              v1192._tskFormat = TSCEEvaluationStack::at(v810, v809 + v816);
              sub_221179A54(&v1193, &v1192._tskFormat);

              v466 = __CFADD__(v809++, 1);
            }

            while (!v466);
          }

          v817 = [TSCEDenseGrid alloc];
          i = objc_msgSend_initWithValues_gridKind_isFlattened_(v817, v818, &v1193, 1, 0);
          v472 = objc_msgSend_gridValue_(TSCEGridValue, v819, i, v820, v821);
          v826 = objc_msgSend_evaluationStack(v6, v822, v823, v824, v825);
          TSCEEvaluationStack::clearArgument(v826, v827, v828, v829, v830);
          v835 = objc_msgSend_evaluationStack(v6, v831, v832, v833, v834);
          TSCEEvaluationStack::push_back(v835, v472);
          if (v1180)
          {
            v836 = [TSCEPartialResult alloc];
            v838 = objc_msgSend_initWithValue_numArgs_offset_(v836, v837, v472, v516, v1176);
            objc_msgSend_addPartialResult_(v1180, v839, v838, v840, v841);
          }

LABEL_163:

          v1192._tskFormat = &v1193;
          sub_22107C2C0(&v1192);
LABEL_185:
          v164 = v1180 != 0;
          goto LABEL_250;
        }

        if (!v1180)
        {
          goto LABEL_256;
        }

        v517 = [TSCEPartialResult alloc];
        v522 = objc_msgSend_evaluationStack(v6, v518, v519, v520, v521);
        i = TSCEEvaluationStack::back(v522);
        v512 = objc_msgSend_initWithValue_numArgs_offset_(v517, v523, i, 1, v1176);

        objc_msgSend_addPartialResult_(v1180, v524, v512, v525, v526);
        goto LABEL_254;
      case 27:
      case 56:
        TSCEASTThunkElement::nodeArray(i, v35, 1, v105, v106);
      case 28:
      case 45:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_Colon, v103, v6, 2, v106);
        v130 = objc_msgSend_evaluationStack(v6, v126, v127, v128, v129);
        TSCEEvaluationStack::push_back(v130, v125);
        if (v1180)
        {
          v131 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v131, v132, v125, 2, v1176);
          objc_msgSend_addPartialResult_(v1180, v133, i, v134, v135);
        }

        goto LABEL_134;
      case 29:
        goto LABEL_166;
      case 30:
        v166 = TSCEASTUnknownFunctionElement::unknownFunctionName(i, v35, v104, v105, v106);
        v167 = (*(*i + 48))(i, v35);
        v172 = objc_msgSend_evaluationStack(v6, v168, v169, v170, v171);
        TSCEEvaluationStack::setArgumentCount(v172, v167);
        v177 = objc_msgSend_evaluationStack(v6, v173, v174, v175, v176);
        TSCEEvaluationStack::clearArgument(v177, v178, v179, v180, v181);
        v185 = objc_msgSend_unknownFunctionError_(TSCEError, v182, v166, v183, v184);
        i = objc_msgSend_errorValue_(TSCEErrorValue, v186, v185, v187, v188);

        v193 = objc_msgSend_evaluationStack(v6, v189, v190, v191, v192);
        TSCEEvaluationStack::push_back(v193, i);
        if (v1180)
        {
          v194 = [TSCEPartialResult alloc];
          v196 = objc_msgSend_initWithValue_numArgs_offset_(v194, v195, i, v167, v1176);
          objc_msgSend_addPartialResult_(v1180, v197, v196, v198, v199);
        }

        goto LABEL_185;
      case 31:
      case 32:
        goto LABEL_256;
      case 36:
        v290 = TSCEASTElement::refFlags(i, v35);
        *v1188 = TSCEASTRelativeCoordRefElement::relativeCoord(i, v35, v291, v292, v293);
        v1192._tskFormat = 0;
        *&v1192._formatType = 0;
        if (v290)
        {
          v1192._tskFormat = TSCEASTRelativeCoordRefElement::tableUID(i, v35, v295, v296, v297);
          *&v1192._formatType = v103;
        }

        else
        {
          *&v1192._tskFormat = *objc_msgSend_containingTable(v6, v294, v295, v296, v297);
        }

        v842 = v290 & 0xC;
        if (v842 == 12)
        {
LABEL_166:
          i = objc_msgSend_invalidReferenceError(TSCEError, v103, v104, v105, v106);
          v846 = objc_msgSend_errorValue_(TSCEErrorValue, v843, i, v844, v845);

          v851 = objc_msgSend_evaluationStack(v6, v847, v848, v849, v850);
          TSCEEvaluationStack::push_back(v851, v846);

          goto LABEL_249;
        }

        v852 = TSCEASTRelativeCoordRefElement::preserveFlags(i, v35);
        LOBYTE(v1191) = v852 & 3 | (4 * (v852 & 3));
        if (sub_2210875C4(v1199, &v1192))
        {
          goto LABEL_168;
        }

        if (v290)
        {
          v1036 = objc_msgSend_calcEngine(v6, v853, v854, v855, v856);
          v1040 = objc_msgSend_tableResolverWrapperForTableUID_(v1036, v1037, &v1192, v1038, v1039);

          if (!v1040)
          {
            goto LABEL_236;
          }

          sub_2210C2B00(v1199, &v1192);
        }

        else
        {
          if (v1178)
          {
            v1178 = 1;
            if ((v1177 & 1) == 0)
            {
              v1177 = 0;
LABEL_236:
              i = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v853, v1192._tskFormat, *&v1192._formatType, v856);
              v863 = objc_msgSend_errorValue_(TSCEErrorValue, v1057, i, v1058, v1059);

              v1064 = objc_msgSend_evaluationStack(v6, v1060, v1061, v1062, v1063);
              TSCEEvaluationStack::push_back(v1064, v863);
              goto LABEL_237;
            }
          }

          else
          {
            if (!objc_msgSend_containingTableResolverWrapper(v6, v853, v854, v855, v856))
            {
              v1177 = 0;
              v1178 = 1;
              goto LABEL_236;
            }

            sub_2210C2B00(v1199, &v1192);
            v1178 = 1;
          }

          v1177 = 1;
        }

LABEL_168:
        if (v842 == 8)
        {
          v986 = objc_msgSend_containingCell(v6, v853, v854, v855, v856);
          v989 = sub_221255F08(*v986, *&v1188[1], (v290 & 0x10) != 0, v987, v988);
          v990 = [TSCEReferenceValue alloc];
          v1193.range._topLeft = ((v989 << 32) | 0x7FFFFFFF);
          v1193.range._bottomRight = v1193.range._topLeft;
          v1193._tableUID = *&v1192._tskFormat;
          v863 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v990, v991, v6, &v1193, &v1191);
          if (objc_msgSend_rangeContextOverride(v30, v992, v993, v994, v995) != 3)
          {
            v996 = objc_msgSend_rangeContextOverride(v30, v868, v869, v870, v871);
            objc_msgSend_setRangeContextOverride_(v863, v997, v996, v998, v999);
          }

          goto LABEL_172;
        }

        if (v842 == 4)
        {
          v857 = objc_msgSend_containingCell(v6, v853, v854, v855, v856);
          v860 = sub_221255D48(*v857, v1188[0], (v290 & 0x20) != 0, v858, v859);
          v861 = [TSCEReferenceValue alloc];
          v1193.range._topLeft = (v860 | 0x7FFF00000000);
          v1193.range._bottomRight = v1193.range._topLeft;
          v1193._tableUID = *&v1192._tskFormat;
          v863 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v861, v862, v6, &v1193, &v1191);
          if (objc_msgSend_rangeContextOverride(v30, v864, v865, v866, v867) != 3)
          {
            v872 = objc_msgSend_rangeContextOverride(v30, v868, v869, v870, v871);
            objc_msgSend_setRangeContextOverride_(v863, v873, v872, v874, v875);
          }

LABEL_172:
          v876 = objc_msgSend_evaluationStack(v6, v868, v869, v870, v871);
          TSCEEvaluationStack::push_back(v876, v863);
          goto LABEL_237;
        }

        v1000 = [TSCEReferenceValue alloc];
        v863 = objc_msgSend_initWithContext_tableUID_relativeCellCoord_preserveFlags_(v1000, v1001, v6, &v1192, v1188, &v1191);
        v1006 = objc_msgSend_evaluationStack(v6, v1002, v1003, v1004, v1005);
        TSCEEvaluationStack::push_back(v1006, v863);
LABEL_237:

LABEL_249:
        v164 = 0;
        goto LABEL_250;
      case 50:
        v636 = objc_msgSend_invalidReferenceError(TSCEError, v103, v104, v105, v106);
        v640 = objc_msgSend_errorValue_(TSCEErrorValue, v637, v636, v638, v639);

        v645 = objc_msgSend_evaluationStack(v6, v641, v642, v643, v644);
        TSCEEvaluationStack::push_back(v645, v640);
        v646 = MEMORY[0x277D81150];
        i = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v647, "TSCEValue *TSCEEvaluateASTNodeArrayWithContext(const TSCEASTNodeArray *, TSCEEvaluationContext *__strong, TSCEPartialResultTree *__strong)", v648, v649);
        v653 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v650, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v651, v652);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v646, v654, i, v653, 825, 0, "Not expecting to see UID references during evaluation.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v655, v656, v657, v658);
        goto LABEL_249;
      case 52:
        v243 = objc_msgSend_symbolTable(v6, v103, v104, v105, v106);
        TSCESymbolTable::beginScope(v243);
        v247 = TSCEASTLetBindElement::identifier(i, v35, v244, v245, v246);
        v1193.range._topLeft.row = TSCEASTLetBindElement::symbol(i, v35, v248, v249, v250);
        v255 = objc_msgSend_evaluationStack(v6, v251, v252, v253, v254);
        if (!TSCEEvaluationStack::size(v255))
        {
          v164 = 0;
LABEL_192:

LABEL_250:
          if (v1180 && !v164)
          {
            v1082 = objc_msgSend_evaluationStack(v6, v103, v104, v105, v106);
            if (TSCEEvaluationStack::size(v1082))
            {
              v1086 = [TSCEPartialResult alloc];
              v1091 = objc_msgSend_evaluationStack(v6, v1087, v1088, v1089, v1090);
              i = TSCEEvaluationStack::back(v1091);
              v512 = objc_msgSend_initWithValue_numArgs_offset_(v1086, v1092, i, 0, v1176);

              objc_msgSend_addPartialResult_(v1180, v1093, v512, v1094, v1095);
LABEL_254:
            }

            else
            {
              objc_msgSend_addPartialResult_(v1180, v1083, 0, v1084, v1085);
            }
          }

LABEL_256:
          if (objc_msgSend_evaluationAborted(v6, v103, v104, v105, v106))
          {
            i = objc_msgSend_abortError(TSCEError, v1096, v1097, v1098, v1099);
            v1150 = objc_msgSend_errorValue_(TSCEErrorValue, v1147, i, v1148, v1149);

            v1155 = objc_msgSend_evaluationStack(v6, v1151, v1152, v1153, v1154);
            TSCEEvaluationStack::push_back(v1155, v1150);

            v29 = v1194;
            v28 = v1195;
            goto LABEL_261;
          }

          v29 = v1194;
          v28 = v1195;
          if (v1194 == v1195)
          {
            goto LABEL_261;
          }

          continue;
        }

        v260 = objc_msgSend_evaluationStack(v6, v256, v257, v258, v259);
        v265 = TSCEEvaluationStack::back(v260);
        if (v1193.range._topLeft.row)
        {
          v266 = objc_msgSend_symbolTable(v6, v261, v262, v263, v264);
          TSCESymbolTable::setSymbol(v266, v1193.range._topLeft.row, v247);
          v270 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v267, 363, v268, v269);
          i = objc_msgSend_argumentSpecForIndex_numArgs_(v270, v271, 1, 3, v272);
          if (objc_msgSend_rangeContext(i, v273, v274, v275, v276) == 3)
          {
            v281 = objc_msgSend_valueBindingEnvironment(v6, v277, v278, v279, v280);
            objc_msgSend_bindValue_atSymbol_(v281, v282, v265, &v1193, v283);
          }

          else
          {
            v281 = objc_msgSend_copy(v265, v277, v278, v279, v280);
            v947 = objc_msgSend_rangeContext(i, v943, v944, v945, v946);
            objc_msgSend_setRangeContextOverride_(v281, v948, v947, v949, v950);
            v955 = objc_msgSend_valueBindingEnvironment(v6, v951, v952, v953, v954);
            objc_msgSend_bindValue_atSymbol_(v955, v956, v281, &v1193, v957);
          }

          if (v1180)
          {
            objc_msgSend_addSymbol_mappedToIdentifier_(v1180, v958, v1193.range._topLeft.row, v247, v961);
            v962 = [TSCEPartialResult alloc];
            v966 = objc_msgSend_stringValue_(TSCEStringValue, v963, v247, v964, v965);
            v968 = objc_msgSend_initWithValue_numArgs_offset_(v962, v967, v966, 1, v1176);

            objc_msgSend_addPartialResult_(v1180, v969, v968, v970, v971);
          }

          v972 = objc_msgSend_evaluationStack(v6, v958, v959, v960, v961);
          TSCEEvaluationStack::pop_back(v972);

          v164 = v1180 != 0;
          goto LABEL_192;
        }

        v1156 = MEMORY[0x277D81150];
        v1157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v261, "TSCEValue *TSCEEvaluateASTNodeArrayWithContext(const TSCEASTNodeArray *, TSCEEvaluationContext *__strong, TSCEPartialResultTree *__strong)", v263, v264);
        v1161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1158, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v1159, v1160);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1156, v1162, v1157, v1161, 919, 0, "Should not be choosing a variable symbol during evaluation - likely an older Madrox LET() format in use here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v1163, v1164, v1165, v1166);
        v1171 = objc_msgSend_syntaxError(TSCEError, v1167, v1168, v1169, v1170);
        i = objc_msgSend_raiseErrorOrConvert_(v6, v1172, v1171, v1173, v1174);

        v1101 = 0;
LABEL_264:
        v1193.range._topLeft = &v1194;
        sub_22107C2C0(&v1193);

        sub_2210BDEC0(v1199);
        objc_autoreleasePoolPop(context);
        if (v1101)
        {
          v1106 = objc_msgSend_evaluationStack(v6, v1102, v1103, v1104, v1105);
          if (TSCEEvaluationStack::size(v1106))
          {
            v1111 = objc_msgSend_evaluationStack(v6, v1107, v1108, v1109, v1110);
            v1112 = TSCEEvaluationStack::back(v1111);
            v1117 = objc_msgSend_evaluationStack(v6, v1113, v1114, v1115, v1116);
            i = v1112;
            TSCEEvaluationStack::pop_back(v1117);
          }

          else
          {
            v1122 = MEMORY[0x277D81150];
            v1123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1107, "TSCEValue *TSCEEvaluateASTNodeArrayWithContext(const TSCEASTNodeArray *, TSCEEvaluationContext *__strong, TSCEPartialResultTree *__strong)", v1109, v1110);
            v1127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1124, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v1125, v1126);
            v1128 = TSCEASTNodeArray::description(a1);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v1122, v1129, v1123, v1127, 1046, 0, "TSCEEvaluateASTNodeArrayWithContext ended up with an empty evaluation stack for %@", v1128);

            i = 0;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v1130, v1131, v1132, v1133);
          }

          if (objc_msgSend_hasWarnings(v6, v1118, v1119, v1120, v1121) && objc_msgSend_nativeType(i, v1134, v1135, v1136, v1137) != 16)
          {
            v1142 = objc_msgSend_warningsSet(v6, v1138, v1139, v1140, v1141);
            objc_msgSend_attachWarnings_(i, v1143, v1142, v1144, v1145);
          }
        }

LABEL_271:

        return i;
      case 53:
        v1193.range._topLeft.row = TSCEASTVariableElement::symbol(i, v35, v104, v105, v106);
        i = objc_msgSend_evaluationStack(v6, v220, v221, v222, v223);
        v228 = objc_msgSend_valueBindingEnvironment(v6, v224, v225, v226, v227);
        v232 = objc_msgSend_lookup_(v228, v229, &v1193, v230, v231);
        TSCEEvaluationStack::push_back(i, v232);

        goto LABEL_249;
      case 54:
        v500 = objc_msgSend_symbolTable(v6, v103, v104, v105, v106);
        TSCESymbolTable::endScope(v500, v501, v502, v503, v504);
        if (!v1180)
        {
          goto LABEL_256;
        }

        objc_msgSend_addPartialResult_(v1180, v103, 0, v105, v106);
        v505 = [TSCEPartialResult alloc];
        v510 = objc_msgSend_evaluationStack(v6, v506, v507, v508, v509);
        i = TSCEEvaluationStack::back(v510);
        v512 = objc_msgSend_initWithValue_numArgs_offset_(v505, v511, i, 3, v1176);

        objc_msgSend_addPartialResult_(v1180, v513, v512, v514, v515);
        goto LABEL_254;
      case 55:
        Symbol = TSCEASTLambdaElement::firstSymbol(i, v35, v104, v105, v106);
        v565 = TSCEASTLambdaElement::numIdentifiers(i, v35, v558, v559, v560);
        if (v1180)
        {
          v566 = TSCEASTLambdaElement::identifiers(i, v35, v562, v563, v564);
          v1183 = 0u;
          v1184 = 0u;
          v1181 = 0u;
          v1182 = 0u;
          v567 = v566;
          v571 = objc_msgSend_countByEnumeratingWithState_objects_count_(v567, v568, &v1181, v1202, 16);
          v1175 = v565;
          if (v571)
          {
            v572 = *v1182;
            v573 = Symbol;
            do
            {
              for (j = 0; j != v571; ++j)
              {
                if (*v1182 != v572)
                {
                  objc_enumerationMutation(v567);
                }

                objc_msgSend_addSymbol_mappedToIdentifier_(v1180, v569, v573, *(*(&v1181 + 1) + 8 * j), v570);
                v573 = (v573 + 1);
              }

              v571 = objc_msgSend_countByEnumeratingWithState_objects_count_(v567, v569, &v1181, v1202, 16);
            }

            while (v571);
          }

          v565 = v1175;
        }

        v575 = objc_msgSend_evaluationStack(v6, v561, v562, v563, v564);
        v576 = TSCEEvaluationStack::back(v575);
        i = objc_msgSend_asThunkValue(v576, v577, v578, v579, v580);
        if (i)
        {
          TSCEFunctor::TSCEFunctor(&v1193, i, v565, Symbol);
          v589 = objc_msgSend_evaluationStack(v6, v585, v586, v587, v588);
          TSCEEvaluationStack::pop_back(v589);
          v594 = objc_msgSend_evaluationStack(v6, v590, v591, v592, v593);
          v598 = objc_msgSend_functorValue_(TSCEFunctorValue, v595, &v1193, v596, v597);
          TSCEEvaluationStack::push_back(v594, v598);
        }

        else
        {
          v914 = objc_msgSend_unsupportedFunctionError(TSCEError, v581, v582, v583, v584);
          v919 = objc_msgSend_evaluationStack(v6, v915, v916, v917, v918);
          v923 = objc_msgSend_errorValue_(TSCEErrorValue, v920, v914, v921, v922);
          TSCEEvaluationStack::push_back(v919, v923);
        }

        if (v1180)
        {
          v924 = [TSCEPartialResult alloc];
          v929 = objc_msgSend_evaluationStack(v6, v925, v926, v927, v928);
          v930 = TSCEEvaluationStack::back(v929);
          v932 = objc_msgSend_initWithValue_numArgs_offset_(v924, v931, v930, 0, v1176);

          objc_msgSend_addPartialResult_(v1180, v933, v932, v934, v935);
        }

        goto LABEL_185;
      case 63:
        v1191 = 0uLL;
        *&v1191 = (*(*i + 136))(i, v35);
        *(&v1191 + 1) = v721;
        v1201 = 0x101000000000000;
        v725 = objc_msgSend_calcEngine(v6, v721, v722, v723, v724);
        v729 = objc_msgSend_tableResolverForTableUID_(v725, v726, &v1191, v727, v728);

        if (v729)
        {
          if (objc_msgSend_isPivotTable(v729, v730, v731, v732, v733))
          {
            i = objc_msgSend_tableTranslator(v729, v734, v735, v736, v737);
            v742 = objc_msgSend_containingCell(v6, v738, v739, v740, v741);
            v746 = objc_msgSend_viewCellCoordForBaseCellCoord_(i, v743, *v742, v744, v745);
            v751 = *objc_msgSend_containingCell(v6, v747, v748, v749, v750);
            objc_msgSend_columnUIDForBaseColumnIndex_(i, v752, WORD2(v751), v753, v754);
            objc_msgSend_rowUIDForBaseRowIndex_(i, v755, v751, v756, v757);
            memset(&v1193, 0, sizeof(v1193));
            TSKMakeUIDStructCoord();
            *v1188 = 0x7FFF7FFFFFFFLL;
            v1189 = 0;
            v1190 = 0;
            v759 = objc_msgSend_valueForCellUID_outGeometricPrecedent_fetchRichTextAttributesIfPlainText_(v729, v758, &v1193, v1188, 0);
            v760 = [TSCEReferenceValue alloc];
            v1192._tskFormat = v746;
            *&v1192._formatType = v746;
            *&v1192._durationFormat = v1191;
            v1187 = 0;
            v762 = objc_msgSend_initWithContext_rangeRef_preserveFlags_cacheValue_wasFetchedWithRichTextAttributes_(v760, v761, v6, &v1192, &v1187, v759, 1);
            v767 = objc_msgSend_evaluationStack(v6, v763, v764, v765, v766);
            TSCEEvaluationStack::push_back(v767, v762);
          }

          else
          {
            v936 = [TSCEReferenceValue alloc];
            LOBYTE(v1193.range._topLeft.row) = 0;
            i = objc_msgSend_initWithContext_tableUID_relativeCellCoord_preserveFlags_(v936, v937, v6, &v1191, &v1201, &v1193);
            v942 = objc_msgSend_evaluationStack(v6, v938, v939, v940, v941);
            TSCEEvaluationStack::push_back(v942, i);
          }
        }

        else
        {
          v905 = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v730, v1191, *(&v1191 + 1), v733);
          i = objc_msgSend_errorValue_(TSCEErrorValue, v906, v905, v907, v908);

          v913 = objc_msgSend_evaluationStack(v6, v909, v910, v911, v912);
          TSCEEvaluationStack::push_back(v913, i);
        }

        goto LABEL_249;
      case 64:
      case 65:
        v1192._tskFormat = 0;
        *&v1192._formatType = 0;
        v1192._tskFormat = (*(*i + 136))(i, v35);
        *&v1192._formatType = v136;
        if (v107 == 64)
        {
          v144 = *objc_msgSend_containingCell(v6, v136, v137, v138, v139);
          if (WORD2(v144) >= 0x7FFFu)
          {
            v145 = MEMORY[0x277D81150];
            v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", v142, v143);
            v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v148, v149);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v151, v146, v150, 168, 0, "overflow in column");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153, v154, v155);
          }

          v156 = v144 & 0xFFFF00000000 | 0x7FFFFFFF;
        }

        else
        {
          v786 = objc_msgSend_containingCell(v6, v136, v137, v138, v139);
          v156 = sub_221255D48(*v786, 0, 0, v787, v788) | 0x7FFF00000000;
        }

        v789 = objc_msgSend_calcEngine(v6, v140, v141, v142, v143);
        v793 = objc_msgSend_tableResolverForTableUID_(v789, v790, &v1192, v791, v792);
        i = v793 == 0;

        if (i)
        {
          i = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v794, v1192._tskFormat, *&v1192._formatType, v795);
          v241 = objc_msgSend_errorValue_(TSCEErrorValue, v798, i, v799, v800);
        }

        else
        {
          v796 = [TSCEReferenceValue alloc];
          v1193.range._topLeft = v156;
          v1193.range._bottomRight = v156;
          v1193._tableUID = *&v1192._tskFormat;
          *v1188 = 0;
          v241 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v796, v797, v6, &v1193, v1188);
        }

LABEL_52:
        v242 = objc_msgSend_evaluationStack(v6, v237, v238, v239, v240);
        TSCEEvaluationStack::push_back(v242, v241);

        goto LABEL_249;
      case 66:
        v659 = TSCEASTCategoryRefElement::categoryRef(i, v35, v104, v105, v106);
        v1191 = 0uLL;
        v664 = objc_msgSend_relativeGroupUid(v659, v660, v661, v662, v663);
        if (v664 | v665)
        {
          *&v1191 = objc_msgSend_containingRowUid(v6, v665, v666, v667, v668);
          *(&v1191 + 1) = v665;
        }

        if (!objc_msgSend_pivotRefsReturnsValueGrid(v6, v665, v666, v667, v668))
        {
          v877 = objc_msgSend_calcEngine(v6, v669, v670, v671, v672);
          v882 = objc_msgSend_hidingActionMask(v6, v878, v879, v880, v881);
          v1185 = 0;
          if (v877)
          {
            objc_msgSend_valuesForCategoryRef_atRowUid_hidingActionMask_error_(v877, v883, v659, &v1191, v882, &v1185);
            v681 = v1185;

            if (v681)
            {
              if (objc_msgSend_isCircularReferenceError(v681, v883, v884, v885, v886))
              {
                v891 = objc_msgSend_calcEngine(v6, v887, v888, v889, v890);
                v896 = objc_msgSend_containingTable(v6, v892, v893, v894, v895);
                v899 = objc_msgSend_ownerKindForOwnerUID_(v891, v897, *v896, v896[1], v898);

                if (v899 == 1)
                {
                  v904 = objc_msgSend_calcEngine(v6, v887, v888, v889, v890);
                  if (v6)
                  {
                    objc_msgSend_containingCellRef(v6, v900, v901, v902, v903);
                  }

                  else
                  {
                    memset(&v1193, 0, 24);
                  }

                  v1051 = objc_msgSend_cellIsInACycle_(v904, v900, &v1193, v902, v903);

                  if ((v1051 & 1) == 0)
                  {
                    v1052 = objc_msgSend_calcEngine(v6, v887, v888, v889, v890);
                    v1056 = v1052;
                    if (v1052)
                    {
                      objc_msgSend_aggregateRangeRefForCategoryRef_(v1052, v1053, v659, v1054, v1055);
                    }

                    else
                    {
                      memset(&v1193, 0, sizeof(v1193));
                    }

                    if (TSCERangeRef::isValid(&v1193))
                    {
                      v1192 = v1193;
                      v1073 = objc_msgSend_containingTable(v6, v887, v888, v889, v890);
                      v1076 = objc_msgSend_indirectErrorForRangeReference_hostTableUID_(TSCEError, v1074, &v1192, v1073, v1075);

                      v681 = v1076;
                    }
                  }
                }
              }

              v1077 = objc_msgSend_evaluationStack(v6, v887, v888, v889, v890);
              v1081 = objc_msgSend_errorValue_(TSCEErrorValue, v1078, v681, v1079, v1080);
              TSCEEvaluationStack::push_back(v1077, v1081);

              goto LABEL_247;
            }
          }

          else
          {
            *v1188 = 0;
            v1189 = 0;
            v1190 = 0;
          }

          v976 = (v1189 - *v1188) >> 3;
          if (v976)
          {
            if (v976 == 1)
            {
              v977 = objc_msgSend_evaluationStack(v6, v883, v884, v885, v886);
              v681 = 0;
              TSCEEvaluationStack::push_back(v977, **v1188);
LABEL_247:
              v1193.range._topLeft = v1188;
              sub_22107C2C0(&v1193);
              goto LABEL_248;
            }

            v1193.range._topLeft.row = 1;
            *&v1193.range._topLeft.column = (v1189 - *v1188) >> 3;
            v1025 = [TSCEDenseGrid alloc];
            isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v1025, v1026, v1188, 0, 1, &v1193);
            i = objc_msgSend_gridValue_(TSCEGridValue, v1028, isFlattened_dimensions, v1029, v1030);
            v1035 = objc_msgSend_evaluationStack(v6, v1031, v1032, v1033, v1034);
            TSCEEvaluationStack::push_back(v1035, i);
          }

          else
          {
            i = objc_msgSend_evaluationStack(v6, v883, v884, v885, v886);
            v1024 = objc_msgSend_nilValue(TSCENilValue, v1020, v1021, v1022, v1023);
            TSCEEvaluationStack::push_back(i, v1024);
          }

          v681 = 0;
          goto LABEL_247;
        }

        v673 = objc_msgSend_calcEngine(v6, v669, v670, v671, v672);
        v678 = objc_msgSend_hidingActionMask(v6, v674, v675, v676, v677);
        v1186 = 0;
        v680 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_error_(v673, v679, v659, &v1191, v678, &v1186);
        v681 = v1186;

        if (v681)
        {
          if (objc_msgSend_isCircularReferenceError(v681, v682, v683, v684, v685))
          {
            v690 = objc_msgSend_calcEngine(v6, v686, v687, v688, v689);
            v695 = objc_msgSend_containingTable(v6, v691, v692, v693, v694);
            v698 = objc_msgSend_ownerKindForOwnerUID_(v690, v696, *v695, v695[1], v697);

            if (v698 == 1)
            {
              v703 = objc_msgSend_calcEngine(v6, v686, v687, v688, v689);
              if (v6)
              {
                objc_msgSend_containingCellRef(v6, v699, v700, v701, v702);
              }

              else
              {
                memset(&v1193, 0, 24);
              }

              v1045 = objc_msgSend_cellIsInACycle_(v703, v699, &v1193, v701, v702);

              if ((v1045 & 1) == 0)
              {
                v1046 = objc_msgSend_calcEngine(v6, v686, v687, v688, v689);
                v1050 = v1046;
                if (v1046)
                {
                  objc_msgSend_aggregateRangeRefForCategoryRef_(v1046, v1047, v659, v1048, v1049);
                }

                else
                {
                  memset(&v1193, 0, sizeof(v1193));
                }

                if (TSCERangeRef::isValid(&v1193))
                {
                  v1192 = v1193;
                  v1065 = objc_msgSend_containingTable(v6, v686, v687, v688, v689);
                  v1068 = objc_msgSend_indirectErrorForRangeReference_hostTableUID_(TSCEError, v1066, &v1192, v1065, v1067);

                  v681 = v1068;
                }
              }
            }
          }

          v1069 = objc_msgSend_evaluationStack(v6, v686, v687, v688, v689);
          i = objc_msgSend_errorValue_(TSCEErrorValue, v1070, v681, v1071, v1072);
          TSCEEvaluationStack::push_back(v1069, i);
        }

        else
        {
          if (objc_msgSend_count(v680, v682, v683, v684, v685))
          {
            v982 = objc_msgSend_evaluationStack(v6, v978, v979, v980, v981);
            objc_msgSend_valueGridValue_(TSCEValueGridValue, v983, v680, v984, v985);
          }

          else
          {
            v982 = objc_msgSend_evaluationStack(v6, v978, v979, v980, v981);
            objc_msgSend_nilValue(TSCENilValue, v1041, v1042, v1043, v1044);
          }
          i = ;
          TSCEEvaluationStack::push_back(v982, i);
          v681 = 0;
        }

LABEL_248:
        goto LABEL_249;
      case 67:
        v704 = TSCEASTColonTractElement::relativeTractRef(i, v35, v104, v105, v106);
        if ((objc_msgSend_hasTableUID(v704, v705, v706, v707, v708) & 1) == 0)
        {
          v713 = objc_msgSend_containingTable(v6, v709, v710, v711, v712);
          objc_msgSend_setTableUID_(v704, v714, *v713, v713[1], v715);
        }

        i = objc_msgSend_evaluateWithContext_relativeTractRef_(TSCEFunction_op_Colon, v709, v6, v704, v712);
        v720 = objc_msgSend_evaluationStack(v6, v716, v717, v718, v719);
        TSCEEvaluationStack::push_back(v720, i);

        goto LABEL_249;
      case 68:
        v165 = TSCEASTViewTractRefElement::viewTractRef(i, v35, v104, v105, v106);
        sub_22125063C(v165, v6);

        goto LABEL_249;
      case 69:
        v620 = TSCEASTIntersectionElement::rangeContext(i, v35, v104, v105, v106);
        objc_msgSend_setIntersectionRangeContext_(v6, v621, v620, v622, v623);
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_ExplicitIntersection, v624, v6, 1, v625);
        v630 = objc_msgSend_evaluationStack(v6, v626, v627, v628, v629);
        TSCEEvaluationStack::push_back(v630, v125);
        if (v1180)
        {
          v631 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v631, v632, v125, 1, v1176);
          objc_msgSend_addPartialResult_(v1180, v633, i, v634, v635);
        }

        goto LABEL_134;
      case 70:
        v125 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(TSCEFunction_op_SpillRange, v103, v6, 1, v106);
        v214 = objc_msgSend_evaluationStack(v6, v210, v211, v212, v213);
        TSCEEvaluationStack::push_back(v214, v125);
        if (v1180)
        {
          v215 = [TSCEPartialResult alloc];
          i = objc_msgSend_initWithValue_numArgs_offset_(v215, v216, v125, 1, v1176);
          objc_msgSend_addPartialResult_(v1180, v217, i, v218, v219);
        }

LABEL_134:

        goto LABEL_185;
      default:
        v768 = MEMORY[0x277D81150];
        v769 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "TSCEValue *TSCEEvaluateASTNodeArrayWithContext(const TSCEASTNodeArray *, TSCEEvaluationContext *__strong, TSCEPartialResultTree *__strong)", v105, v106);
        i = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v770, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v771, v772);
        v777 = TSCEASTNodeArray::codeString(a1, v773, v774, v775, v776);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v768, v778, v769, i, 1010, 0, "%d is not a valid node tag, seen in: %{public}@", v107, v777);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v779, v780, v781, v782);
        objc_msgSend_addPartialResult_(v1180, v783, 0, v784, v785);
        goto LABEL_256;
    }
  }
}

void sub_2212537A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, id a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  a28 = &a42;
  sub_22107C2C0(&a28);

  sub_2210BDEC0(&a59);
  _Unwind_Resume(a1);
}

id sub_2212543AC(void *a1, id *a2)
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

void sub_22125448C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_2212544A0(void *a1, int a2, unsigned int a3, int a4)
{
  v11 = a1;
  v12 = 0;
  v13 = off_27845CC80;
  switch(a2)
  {
    case 0:
      goto LABEL_367;
    case 1:
      v13 = off_27845C1A8;
      goto LABEL_366;
    case 2:
      v13 = off_27845C1B0;
      goto LABEL_366;
    case 3:
      v13 = off_27845C1B8;
      goto LABEL_366;
    case 4:
      v13 = off_27845C1C0;
      goto LABEL_366;
    case 5:
      v13 = off_27845C1C8;
      goto LABEL_366;
    case 6:
      v13 = off_27845C1D0;
      goto LABEL_366;
    case 7:
      v13 = off_27845C1D8;
      goto LABEL_366;
    case 8:
      v13 = off_27845C1E0;
      goto LABEL_366;
    case 9:
      v13 = off_27845C1F0;
      goto LABEL_366;
    case 10:
      v13 = off_27845C1F8;
      goto LABEL_366;
    case 11:
      v13 = off_27845C200;
      goto LABEL_366;
    case 12:
      v13 = off_27845C208;
      goto LABEL_366;
    case 13:
      v13 = off_27845C210;
      goto LABEL_366;
    case 14:
      v13 = off_27845C218;
      goto LABEL_366;
    case 15:
      v13 = off_27845C220;
      goto LABEL_366;
    case 16:
      v13 = off_27845C228;
      goto LABEL_366;
    case 17:
      v13 = off_27845C2D0;
      goto LABEL_366;
    case 18:
      v13 = off_27845C2D8;
      goto LABEL_366;
    case 19:
      v13 = off_27845C2F8;
      goto LABEL_366;
    case 20:
      v13 = off_27845C310;
      goto LABEL_366;
    case 21:
      v13 = off_27845C318;
      goto LABEL_366;
    case 22:
      v13 = off_27845C320;
      goto LABEL_366;
    case 23:
      v13 = off_27845C328;
      goto LABEL_366;
    case 24:
      v13 = off_27845C330;
      goto LABEL_366;
    case 25:
      v13 = off_27845C340;
      goto LABEL_366;
    case 26:
      v13 = off_27845C348;
      goto LABEL_366;
    case 27:
      v13 = off_27845C360;
      goto LABEL_366;
    case 28:
      v13 = off_27845C368;
      goto LABEL_366;
    case 29:
      v13 = off_27845C370;
      goto LABEL_366;
    case 30:
      v13 = off_27845C378;
      goto LABEL_366;
    case 31:
      v13 = off_27845C380;
      goto LABEL_366;
    case 32:
      v13 = off_27845C388;
      goto LABEL_366;
    case 33:
      v13 = off_27845C390;
      goto LABEL_366;
    case 34:
      v13 = off_27845C3A8;
      goto LABEL_366;
    case 35:
      v13 = off_27845C3B0;
      goto LABEL_366;
    case 36:
      v13 = off_27845C3B8;
      goto LABEL_366;
    case 37:
      v13 = off_27845C3C0;
      goto LABEL_366;
    case 38:
      v13 = off_27845C3C8;
      goto LABEL_366;
    case 39:
      v13 = off_27845C410;
      goto LABEL_366;
    case 40:
      v13 = off_27845C418;
      goto LABEL_366;
    case 41:
      v13 = off_27845C428;
      goto LABEL_366;
    case 42:
      v13 = off_27845C440;
      goto LABEL_366;
    case 43:
      v13 = off_27845C448;
      goto LABEL_366;
    case 44:
      v13 = off_27845C468;
      goto LABEL_366;
    case 45:
      v13 = off_27845C480;
      goto LABEL_366;
    case 46:
      v13 = off_27845C488;
      goto LABEL_366;
    case 47:
      v13 = off_27845C4D0;
      goto LABEL_366;
    case 48:
      v13 = off_27845C4F8;
      goto LABEL_366;
    case 49:
      v13 = off_27845C500;
      goto LABEL_366;
    case 50:
      v13 = off_27845C508;
      goto LABEL_366;
    case 51:
      v13 = off_27845C520;
      goto LABEL_366;
    case 52:
      v13 = off_27845C530;
      goto LABEL_366;
    case 53:
      v13 = off_27845C548;
      goto LABEL_366;
    case 54:
      v13 = off_27845C560;
      goto LABEL_366;
    case 55:
      v13 = off_27845C568;
      goto LABEL_366;
    case 56:
      v13 = off_27845C570;
      goto LABEL_366;
    case 57:
      v13 = off_27845C588;
      goto LABEL_366;
    case 58:
      v13 = off_27845C5A8;
      goto LABEL_366;
    case 59:
      v13 = off_27845C5E8;
      goto LABEL_366;
    case 60:
      v13 = off_27845C5F0;
      goto LABEL_366;
    case 61:
      v13 = off_27845C600;
      goto LABEL_366;
    case 62:
      v13 = off_27845C608;
      goto LABEL_366;
    case 63:
      v13 = off_27845C620;
      goto LABEL_366;
    case 64:
      v13 = off_27845C628;
      goto LABEL_366;
    case 65:
      v13 = off_27845C630;
      goto LABEL_366;
    case 66:
      v13 = off_27845C638;
      goto LABEL_366;
    case 67:
      v13 = off_27845C650;
      goto LABEL_366;
    case 68:
      v13 = off_27845C658;
      goto LABEL_366;
    case 69:
      v13 = off_27845C660;
      goto LABEL_366;
    case 70:
      v13 = off_27845C670;
      goto LABEL_366;
    case 71:
      v13 = off_27845C678;
      goto LABEL_366;
    case 72:
      v13 = off_27845C690;
      goto LABEL_366;
    case 73:
      v13 = off_27845C6A8;
      goto LABEL_366;
    case 74:
      v13 = off_27845C6C0;
      goto LABEL_366;
    case 75:
      v13 = off_27845C6C8;
      goto LABEL_366;
    case 76:
      v13 = off_27845C6D0;
      goto LABEL_366;
    case 77:
      v13 = off_27845C6D8;
      goto LABEL_366;
    case 78:
      v13 = off_27845C6E8;
      goto LABEL_366;
    case 79:
      v13 = off_27845C6F0;
      goto LABEL_366;
    case 80:
      v13 = off_27845C6F8;
      goto LABEL_366;
    case 81:
      v13 = off_27845C710;
      goto LABEL_366;
    case 82:
      v13 = off_27845C718;
      goto LABEL_366;
    case 83:
      v13 = off_27845C730;
      goto LABEL_366;
    case 84:
      v13 = off_27845C738;
      goto LABEL_366;
    case 85:
      v13 = off_27845C740;
      goto LABEL_366;
    case 86:
      v13 = off_27845C758;
      goto LABEL_366;
    case 87:
      v13 = off_27845C760;
      goto LABEL_366;
    case 88:
      v13 = off_27845C768;
      goto LABEL_366;
    case 89:
      v13 = off_27845C770;
      goto LABEL_366;
    case 90:
      v13 = off_27845C780;
      goto LABEL_366;
    case 91:
      v13 = off_27845C790;
      goto LABEL_366;
    case 92:
      v13 = off_27845C7A0;
      goto LABEL_366;
    case 93:
      v13 = off_27845C7A8;
      goto LABEL_366;
    case 94:
      v13 = off_27845C7B8;
      goto LABEL_366;
    case 95:
      v13 = off_27845C7C8;
      goto LABEL_366;
    case 96:
      v13 = off_27845C818;
      goto LABEL_366;
    case 97:
      v13 = off_27845C820;
      goto LABEL_366;
    case 98:
      v13 = off_27845C828;
      goto LABEL_366;
    case 99:
      v13 = off_27845C830;
      goto LABEL_366;
    case 100:
      v13 = off_27845C858;
      goto LABEL_366;
    case 101:
      v13 = off_27845C860;
      goto LABEL_366;
    case 102:
      v13 = off_27845C868;
      goto LABEL_366;
    case 103:
      v13 = off_27845C870;
      goto LABEL_366;
    case 104:
      v13 = off_27845C898;
      goto LABEL_366;
    case 105:
      v13 = off_27845C8A8;
      goto LABEL_366;
    case 106:
      v13 = off_27845C8B0;
      goto LABEL_366;
    case 107:
      v13 = off_27845C8C0;
      goto LABEL_366;
    case 108:
      v13 = off_27845C8C8;
      goto LABEL_366;
    case 109:
      v13 = off_27845C8D0;
      goto LABEL_366;
    case 110:
      v13 = off_27845C8D8;
      goto LABEL_366;
    case 111:
      v13 = off_27845C8E0;
      goto LABEL_366;
    case 112:
      v13 = off_27845C8E8;
      goto LABEL_366;
    case 113:
      v13 = off_27845C8F0;
      goto LABEL_366;
    case 114:
      v13 = off_27845C8F8;
      goto LABEL_366;
    case 115:
      v13 = off_27845C900;
      goto LABEL_366;
    case 116:
      v13 = off_27845C918;
      goto LABEL_366;
    case 117:
      v13 = off_27845C920;
      goto LABEL_366;
    case 118:
      v13 = off_27845C928;
      goto LABEL_366;
    case 119:
      v13 = off_27845C938;
      goto LABEL_366;
    case 120:
      v13 = off_27845C940;
      goto LABEL_366;
    case 121:
      v13 = off_27845C950;
      goto LABEL_366;
    case 122:
      v13 = off_27845C980;
      goto LABEL_366;
    case 123:
      v13 = off_27845C988;
      goto LABEL_366;
    case 124:
      v13 = off_27845C990;
      goto LABEL_366;
    case 125:
      v13 = off_27845C998;
      goto LABEL_366;
    case 126:
      v13 = off_27845C9A0;
      goto LABEL_366;
    case 127:
      v13 = off_27845C9A8;
      goto LABEL_366;
    case 128:
      v13 = off_27845C9B0;
      goto LABEL_366;
    case 129:
      v13 = off_27845C9B8;
      goto LABEL_366;
    case 130:
      v13 = off_27845C9C0;
      goto LABEL_366;
    case 131:
      v13 = off_27845C9D0;
      goto LABEL_366;
    case 132:
      v13 = off_27845C9D8;
      goto LABEL_366;
    case 133:
      v13 = off_27845C9F0;
      goto LABEL_366;
    case 134:
      v13 = off_27845C9F8;
      goto LABEL_366;
    case 135:
      v13 = off_27845CA00;
      goto LABEL_366;
    case 136:
      v13 = off_27845CA08;
      goto LABEL_366;
    case 137:
      v13 = off_27845CA10;
      goto LABEL_366;
    case 138:
      v13 = off_27845CA18;
      goto LABEL_366;
    case 139:
      v13 = off_27845CA38;
      goto LABEL_366;
    case 140:
      v13 = off_27845CA50;
      goto LABEL_366;
    case 141:
      v13 = off_27845CA58;
      goto LABEL_366;
    case 142:
      v13 = off_27845CA60;
      goto LABEL_366;
    case 143:
      v13 = off_27845CA68;
      goto LABEL_366;
    case 144:
      v13 = off_27845CA88;
      goto LABEL_366;
    case 145:
      v13 = off_27845CAA0;
      goto LABEL_366;
    case 146:
      v13 = off_27845CAB0;
      goto LABEL_366;
    case 147:
      v13 = off_27845CAB8;
      goto LABEL_366;
    case 148:
      v13 = off_27845CAE0;
      goto LABEL_366;
    case 149:
      v13 = off_27845CAE8;
      goto LABEL_366;
    case 150:
      v13 = off_27845CAF8;
      goto LABEL_366;
    case 151:
      v13 = off_27845CB00;
      goto LABEL_366;
    case 152:
      v13 = off_27845CB38;
      goto LABEL_366;
    case 153:
      v13 = off_27845CB40;
      goto LABEL_366;
    case 154:
      v13 = off_27845CB58;
      goto LABEL_366;
    case 155:
      v13 = off_27845CB70;
      goto LABEL_366;
    case 156:
      v13 = off_27845CB78;
      goto LABEL_366;
    case 157:
      v13 = off_27845CB80;
      goto LABEL_366;
    case 158:
      v13 = off_27845CBA0;
      goto LABEL_366;
    case 159:
      v13 = off_27845CBA8;
      goto LABEL_366;
    case 160:
      v13 = off_27845CBB0;
      goto LABEL_366;
    case 161:
      v13 = off_27845CBB8;
      goto LABEL_366;
    case 162:
      v13 = off_27845CBC0;
      goto LABEL_366;
    case 163:
      v13 = off_27845CBC8;
      goto LABEL_366;
    case 164:
      v13 = off_27845CBD0;
      goto LABEL_366;
    case 165:
      v13 = off_27845CBD8;
      goto LABEL_366;
    case 166:
      v13 = off_27845CBE8;
      goto LABEL_366;
    case 167:
      v13 = off_27845CC38;
      goto LABEL_366;
    case 168:
      v13 = off_27845CA98;
      goto LABEL_366;
    case 169:
      v13 = off_27845CCD0;
      goto LABEL_366;
    case 170:
      v13 = off_27845CC98;
      goto LABEL_366;
    case 171:
      v13 = off_27845CCF8;
      goto LABEL_366;
    case 172:
      v13 = off_27845CCE8;
      goto LABEL_366;
    case 173:
      v13 = off_27845CCF0;
      goto LABEL_366;
    case 174:
      v13 = off_27845CCE0;
      goto LABEL_366;
    case 175:
      v13 = off_27845CC70;
      goto LABEL_366;
    case 176:
      goto LABEL_366;
    case 177:
      v13 = off_27845CD08;
      goto LABEL_366;
    case 178:
      v13 = off_27845CC90;
      goto LABEL_366;
    case 179:
      v13 = off_27845CCC8;
      goto LABEL_366;
    case 180:
      v13 = off_27845CCB8;
      goto LABEL_366;
    case 181:
      v13 = off_27845CCC0;
      goto LABEL_366;
    case 182:
      v13 = off_27845CCB0;
      goto LABEL_366;
    case 183:
      v13 = off_27845CCA0;
      goto LABEL_366;
    case 184:
      v13 = off_27845CCD8;
      goto LABEL_366;
    case 185:
      v13 = off_27845C4D8;
      goto LABEL_366;
    case 186:
      v13 = off_27845C7F0;
      goto LABEL_366;
    case 187:
      v13 = off_27845C7F8;
      goto LABEL_366;
    case 188:
      v13 = off_27845C808;
      goto LABEL_366;
    case 189:
      v13 = off_27845C800;
      goto LABEL_366;
    case 190:
      v13 = off_27845C810;
      goto LABEL_366;
    case 191:
      v13 = off_27845CC48;
      goto LABEL_366;
    case 192:
      v13 = off_27845CC50;
      goto LABEL_366;
    case 193:
      v13 = off_27845CC58;
      goto LABEL_366;
    case 194:
      v13 = off_27845C2B0;
      goto LABEL_366;
    case 195:
      v13 = off_27845C2B8;
      goto LABEL_366;
    case 196:
      v13 = off_27845C4E8;
      goto LABEL_366;
    case 197:
      v13 = off_27845C4F0;
      goto LABEL_366;
    case 198:
      v13 = off_27845CA48;
      goto LABEL_366;
    case 199:
      v13 = off_27845C648;
      goto LABEL_366;
    case 200:
      v13 = off_27845C958;
      goto LABEL_366;
    case 201:
      v13 = off_27845C3E0;
      goto LABEL_366;
    case 202:
      v13 = off_27845C3E8;
      goto LABEL_366;
    case 203:
      v13 = off_27845C4E0;
      goto LABEL_366;
    case 204:
      v13 = off_27845CC00;
      goto LABEL_366;
    case 205:
      v13 = off_27845C7C0;
      goto LABEL_366;
    case 206:
      v13 = off_27845CBF0;
      goto LABEL_366;
    case 207:
      v13 = off_27845C4A0;
      goto LABEL_366;
    case 208:
      v13 = off_27845C4B0;
      goto LABEL_366;
    case 209:
      v13 = off_27845C4B8;
      goto LABEL_366;
    case 210:
      v13 = off_27845C498;
      goto LABEL_366;
    case 211:
      v13 = off_27845C4C0;
      goto LABEL_366;
    case 212:
      v13 = off_27845C4C8;
      goto LABEL_366;
    case 213:
      v13 = off_27845C518;
      goto LABEL_366;
    case 214:
      v13 = off_27845CC40;
      goto LABEL_366;
    case 215:
      v13 = off_27845CC60;
      goto LABEL_366;
    case 216:
      v13 = off_27845CAC0;
      goto LABEL_366;
    case 217:
      v13 = off_27845CAC8;
      goto LABEL_366;
    case 218:
      v13 = off_27845CAD0;
      goto LABEL_366;
    case 219:
      v13 = off_27845CA40;
      goto LABEL_366;
    case 220:
      v13 = off_27845CB68;
      goto LABEL_366;
    case 221:
      v13 = off_27845C478;
      goto LABEL_366;
    case 222:
      v13 = off_27845C580;
      goto LABEL_366;
    case 223:
      v13 = off_27845C470;
      goto LABEL_366;
    case 224:
      v13 = off_27845C528;
      goto LABEL_366;
    case 225:
      v13 = off_27845C5B8;
      goto LABEL_366;
    case 226:
      v13 = off_27845C880;
      goto LABEL_366;
    case 227:
      v13 = off_27845C5A0;
      goto LABEL_366;
    case 228:
      v13 = off_27845C420;
      goto LABEL_366;
    case 229:
      v13 = off_27845C590;
      goto LABEL_366;
    case 230:
      v13 = off_27845C598;
      goto LABEL_366;
    case 231:
      v13 = off_27845CAA8;
      goto LABEL_366;
    case 232:
      v13 = off_27845C238;
      goto LABEL_366;
    case 233:
      v13 = off_27845C398;
      goto LABEL_366;
    case 234:
      v13 = off_27845C230;
      goto LABEL_366;
    case 235:
      v13 = off_27845C610;
      goto LABEL_366;
    case 236:
      v13 = off_27845C430;
      goto LABEL_366;
    case 237:
      v13 = off_27845C248;
      goto LABEL_366;
    case 238:
      v13 = off_27845C250;
      goto LABEL_366;
    case 239:
      v13 = off_27845C708;
      goto LABEL_366;
    case 240:
      v13 = off_27845C700;
      goto LABEL_366;
    case 241:
      v13 = off_27845CB08;
      goto LABEL_366;
    case 242:
      v13 = off_27845C280;
      goto LABEL_366;
    case 243:
      v13 = off_27845C7E0;
      goto LABEL_366;
    case 244:
      v13 = off_27845C538;
      goto LABEL_366;
    case 245:
      v13 = off_27845C890;
      goto LABEL_366;
    case 246:
      v13 = off_27845C2E0;
      goto LABEL_366;
    case 247:
      v13 = off_27845C2F0;
      goto LABEL_366;
    case 248:
      v13 = off_27845CB88;
      goto LABEL_366;
    case 249:
      v13 = off_27845C908;
      goto LABEL_366;
    case 250:
      v13 = off_27845C7D0;
      goto LABEL_366;
    case 251:
      v13 = off_27845C3D8;
      goto LABEL_366;
    case 252:
      v13 = off_27845C240;
      goto LABEL_366;
    case 253:
      v13 = off_27845C838;
      goto LABEL_366;
    case 254:
      v13 = off_27845CB48;
      goto LABEL_366;
    case 255:
      v13 = off_27845C358;
      goto LABEL_366;
    case 256:
      v13 = off_27845C2E8;
      goto LABEL_366;
    case 257:
      v13 = off_27845C558;
      goto LABEL_366;
    case 258:
      v13 = off_27845C258;
      goto LABEL_366;
    case 259:
      v13 = off_27845C260;
      goto LABEL_366;
    case 260:
      v13 = off_27845C7E8;
      goto LABEL_366;
    case 261:
      v13 = off_27845C438;
      goto LABEL_366;
    case 262:
      v13 = off_27845C5C8;
      goto LABEL_366;
    case 263:
      v13 = off_27845C5B0;
      goto LABEL_366;
    case 264:
      v13 = off_27845C458;
      goto LABEL_366;
    case 265:
      v13 = off_27845C450;
      goto LABEL_366;
    case 266:
      v13 = off_27845C460;
      goto LABEL_366;
    case 267:
      v13 = off_27845C270;
      goto LABEL_366;
    case 268:
      v13 = off_27845C268;
      goto LABEL_366;
    case 269:
      v13 = off_27845C278;
      goto LABEL_366;
    case 270:
      v13 = off_27845C840;
      goto LABEL_366;
    case 271:
      v13 = off_27845C848;
      goto LABEL_366;
    case 272:
      v13 = off_27845C850;
      goto LABEL_366;
    case 273:
      v13 = off_27845C5D0;
      goto LABEL_366;
    case 274:
      v13 = off_27845C5D8;
      goto LABEL_366;
    case 275:
      v13 = off_27845C5E0;
      goto LABEL_366;
    case 276:
      v13 = off_27845C6E0;
      goto LABEL_366;
    case 277:
      v13 = off_27845C4A8;
      goto LABEL_366;
    case 278:
      v13 = off_27845CA80;
      goto LABEL_366;
    case 279:
      v13 = off_27845CC88;
      goto LABEL_366;
    case 280:
      v13 = off_27845C640;
      goto LABEL_366;
    case 285:
      v13 = off_27845CB90;
      goto LABEL_366;
    case 286:
      v13 = off_27845C9E8;
      goto LABEL_366;
    case 287:
      v13 = off_27845C8B8;
      goto LABEL_366;
    case 288:
      v13 = off_27845CBF8;
      goto LABEL_366;
    case 289:
      v13 = off_27845C350;
      goto LABEL_366;
    case 290:
      v13 = off_27845C3D0;
      goto LABEL_366;
    case 291:
      v13 = off_27845C7B0;
      goto LABEL_366;
    case 292:
      v13 = off_27845C878;
      goto LABEL_366;
    case 293:
      v13 = off_27845C888;
      goto LABEL_366;
    case 294:
      v13 = off_27845C910;
      goto LABEL_366;
    case 295:
      v13 = off_27845C948;
      goto LABEL_366;
    case 296:
      v13 = off_27845C550;
      goto LABEL_366;
    case 297:
      v13 = off_27845C8A0;
      goto LABEL_366;
    case 298:
      v13 = off_27845CA70;
      goto LABEL_366;
    case 299:
      v13 = off_27845CA78;
      goto LABEL_366;
    case 300:
      v13 = off_27845C3F0;
      goto LABEL_366;
    case 301:
      v13 = off_27845C408;
      goto LABEL_366;
    case 302:
      v13 = off_27845C400;
      goto LABEL_366;
    case 303:
      v13 = off_27845C3F8;
      goto LABEL_366;
    case 304:
      v13 = off_27845C680;
      goto LABEL_366;
    case 305:
      v13 = off_27845C6B0;
      goto LABEL_366;
    case 306:
      v13 = off_27845C668;
      goto LABEL_366;
    case 309:
      v13 = off_27845C748;
      goto LABEL_366;
    case 310:
      v13 = off_27845C778;
      goto LABEL_366;
    case 311:
      v13 = off_27845CC18;
      goto LABEL_366;
    case 312:
      v13 = off_27845CC30;
      goto LABEL_366;
    case 313:
      v13 = off_27845C618;
      goto LABEL_366;
    case 314:
      v13 = off_27845CC20;
      goto LABEL_366;
    case 315:
      v13 = off_27845CC28;
      goto LABEL_366;
    case 316:
      v13 = off_27845CA90;
      goto LABEL_366;
    case 317:
      v13 = off_27845C3A0;
      goto LABEL_366;
    case 318:
      v13 = off_27845CB18;
      goto LABEL_366;
    case 319:
      v13 = off_27845CB20;
      goto LABEL_366;
    case 320:
      v13 = off_27845CB10;
      goto LABEL_366;
    case 321:
      v13 = off_27845C970;
      goto LABEL_366;
    case 322:
      v13 = off_27845C968;
      goto LABEL_366;
    case 323:
      v13 = off_27845C578;
      goto LABEL_366;
    case 324:
      v13 = off_27845C978;
      goto LABEL_366;
    case 325:
      v13 = off_27845C5C0;
      goto LABEL_366;
    case 326:
      v13 = off_27845CC78;
      goto LABEL_366;
    case 327:
      v13 = off_27845CC68;
      goto LABEL_366;
    case 328:
      v13 = off_27845CB28;
      goto LABEL_366;
    case 329:
      v13 = off_27845C338;
      goto LABEL_366;
    case 330:
      v13 = off_27845C288;
      goto LABEL_366;
    case 331:
      v13 = off_27845C298;
      goto LABEL_366;
    case 332:
      v13 = off_27845C2A8;
      goto LABEL_366;
    case 333:
      v13 = off_27845C290;
      goto LABEL_366;
    case 334:
      v13 = off_27845C2A0;
      goto LABEL_366;
    case 335:
      v13 = off_27845C6A0;
      goto LABEL_366;
    case 336:
      v13 = off_27845CAD8;
      goto LABEL_366;
    case 337:
      v13 = off_27845CA30;
      goto LABEL_366;
    case 338:
      v13 = off_27845C9E0;
      goto LABEL_366;
    case 339:
      v13 = off_27845CCA8;
      goto LABEL_366;
    case 340:
      v13 = off_27845CD00;
      goto LABEL_366;
    case 341:
      v13 = off_27845C1E8;
      goto LABEL_366;
    case 342:
      v13 = off_27845C540;
      goto LABEL_366;
    case 343:
      v13 = off_27845CA20;
      goto LABEL_366;
    case 344:
      v13 = off_27845CA28;
      goto LABEL_366;
    case 345:
      v13 = off_27845CB98;
      goto LABEL_366;
    case 346:
      v13 = off_27845C930;
      goto LABEL_366;
    case 347:
      v13 = off_27845CB30;
      goto LABEL_366;
    case 348:
      v13 = off_27845CB50;
      goto LABEL_366;
    case 349:
      v13 = off_27845CB60;
      goto LABEL_366;
    case 350:
      v13 = off_27845CAF0;
      goto LABEL_366;
    case 351:
      v13 = off_27845C490;
      goto LABEL_366;
    case 352:
      v13 = off_27845C510;
      goto LABEL_366;
    case 353:
      v13 = off_27845C308;
      goto LABEL_366;
    case 354:
      v13 = off_27845C300;
      goto LABEL_366;
    case 355:
      v13 = off_27845C5F8;
      goto LABEL_366;
    case 356:
      v13 = off_27845CBE0;
      goto LABEL_366;
    case 357:
      v13 = off_27845CC08;
      goto LABEL_366;
    case 358:
      v13 = off_27845CC10;
      goto LABEL_366;
    case 359:
      v13 = off_27845C750;
      goto LABEL_366;
    case 360:
      v13 = off_27845C788;
      goto LABEL_366;
    case 361:
      v13 = off_27845C798;
      goto LABEL_366;
    case 362:
      v13 = off_27845C7D8;
      goto LABEL_366;
    case 365:
      v13 = off_27845C720;
      goto LABEL_366;
    case 366:
      v13 = off_27845C728;
      goto LABEL_366;
    case 367:
      v13 = off_27845C960;
      goto LABEL_366;
    case 368:
      v13 = off_27845C9C8;
      goto LABEL_366;
    case 369:
      v13 = off_27845C2C8;
      goto LABEL_366;
    case 370:
      v13 = off_27845C2C0;
      goto LABEL_366;
    case 371:
      v13 = off_27845C698;
      goto LABEL_366;
    case 372:
      v13 = off_27845C6B8;
      goto LABEL_366;
    case 373:
      v13 = off_27845C688;
LABEL_366:
      v12 = objc_msgSend_evaluateWithArrayModeFanout_numArgs_(*v13, v7, v11, a3, v10);
LABEL_367:
      if (!a4 || !objc_msgSend_isThunk(v12, v7, v8, v9, v10))
      {
        goto LABEL_371;
      }

      v18 = objc_msgSend_copy(v11, v14, v15, v16, v17);
      v23 = objc_msgSend_asThunkValue(v12, v19, v20, v21, v22);
      v28 = objc_msgSend_ast(v23, v24, v25, v26, v27);
      v29 = sub_221250CB8(v28, v18, 0);
      v34 = objc_msgSend_warnings(v12, v30, v31, v32, v33);
      objc_msgSend_attachWarnings_(v29, v35, v34, v36, v37);

      v38 = v29;
      objc_msgSend_takeSideEffectsFrom_(v11, v39, v18, v40, v41);

LABEL_370:
      v12 = v38;
LABEL_371:

      return v12;
    default:
      v18 = objc_msgSend_unsupportedFunctionError(TSCEError, v7, v8, v9, v10);
      v38 = objc_msgSend_raiseErrorOrConvert_(v11, v43, v18, v44, v45);
      goto LABEL_370;
  }
}

uint64_t sub_221255D48(unsigned int a1, const char *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return a2;
  }

  result = 0x7FFFFFFFLL;
  if (a2 != 0x7FFFFFFF)
  {
    if (a2 < 1)
    {
      if (a2 && a1 < -a2)
      {
        return result;
      }
    }

    else if (999999 - a2 < a1)
    {
      return result;
    }

    if (a1 == 0x7FFFFFFF)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4, a5);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v11, v12);
      v14 = NSStringFromTSUCellCoord();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v13, 195, 0, "Calling TSCEMakeAbsoluteRowFromRelativeRow with an invalid hostCell row: %@", v14);
    }

    else
    {
      result = a1 + a2;
      if (result < 0x7FFFFFFF)
      {
        return result;
      }

      v16 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSURowIndex TSCEMakeAbsoluteRowFromRelativeRow(TSUCellCoord, TSURelativeRowIndex, BOOL)", a4, a5);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v18, v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v9, v13, 191, 0, "overflow in row, input row: %d with host row: %lu", a2, a1);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    return 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t sub_221255F08(uint64_t a1, const char *a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return a2;
  }

  v5 = 0x7FFF;
  if (a2 == 0x7FFF)
  {
    return v5;
  }

  if (a2 < 1)
  {
    if ((a2 & 0x80000000) != 0 && -a2 > WORD2(a1))
    {
      return v5;
    }
  }

  else if (999 - a2 < WORD2(a1))
  {
    return v5;
  }

  v5 = WORD2(a1) + a2;
  if ((WORD2(a1) + a2) >= 0x7FFFu)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUColumnIndex TSCEMakeAbsoluteColumnFromRelativeColumn(TSUCellCoord, TSURelativeColumnIndex, BOOL)", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERelativeTypes.h", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 168, 0, "overflow in column");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return v5;
}

uint64_t *sub_221256020@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = *(a2 + 16) & 0xC080 | 0x421;
  *(a2 + 18) = *(a2 + 18) & 0xF8 | 1;
  *(a2 + 20) = -50266102;
  *(a2 + 24) = -3;
  *(a2 + 25) &= 0xE0u;
  *(a2 + 26) = 0;
  v3 = *result;
  v4 = result[1];
  if (v4 != *result)
  {
    result = TSCEFormat::operator=(a2, v3);
    for (i = (v3 + 32); i != v4; ++i)
    {
      TSCEFormat::formatByMergingWithFormat(a2, i, v5, v6, v7, v9);
      result = TSCEFormat::operator=(a2, v9);
    }
  }

  return result;
}

uint64_t sub_2212560F4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a3;
  TSUDecimal::operator=();
  if (objc_msgSend_deepType_(v10, v11, v9, v12, v13) == 3)
  {
    v15 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v10, v14, v9, a2, a4, a5);
    objc_msgSend_mapDateToDouble_(TSCECalendar, v16, v15, v17, v18);
    TSUDecimal::operator=();
  }

  else
  {
    v15 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v14, v9, a2, a4, a5);
    if ((objc_msgSend_isNil(v15, v19, v20, v21, v22) & 1) == 0)
    {
      v28 = *objc_msgSend_rawDecimalValue(v15, v23, v24, v25, v26);
    }
  }

  return v28;
}

id sub_22125621C(TSUDecimal *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  if (objc_msgSend_deepType_(v9, v11, v10, v12, v13) == 3)
  {
    TSUDecimal::doubleValue(a1);
    v19 = objc_msgSend_dateValueWithDays_(TSCEDateValue, v15, v16, v17, v18);
  }

  else
  {
    v39 = 0;
    v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v14, v10, a4, a5, &v39);
    v25 = v39;
    if (v25)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(v10, v21, v25, v23, v24);

      v20 = v25;
    }

    else
    {
      if (objc_msgSend_hasUnits(v20, v21, v22, v23, v24))
      {
        v29 = [TSCENumberValue alloc];
        v34 = objc_msgSend_unit(v20, v30, v31, v32, v33);
        v37 = objc_msgSend_initWithDecimal_baseUnit_(v29, v35, a1, v34, v36);
      }

      else
      {
        v37 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v26, a1, v27, v28);
      }

      v19 = v37;
    }
  }

  return v19;
}

id sub_221256390(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = a1;
  v12 = [TSCEEvaluationContext alloc];
  v14 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v12, v13, v11, a3, a2, 0);
  v19 = objc_msgSend_calcEngine(v14, v15, v16, v17, v18);
  IsRegistered = objc_msgSend_ownerIsRegistered_(v19, v20, *a6, a6[1], v21);

  if (IsRegistered)
  {
    v26 = [TSCEReferenceValue alloc];
    v88[0] = a4;
    v88[1] = a5;
    v89 = *a6;
    v87 = 0;
    v28 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v26, v27, v14, v88, &v87);
    v33 = objc_msgSend_evaluationStack(v14, v29, v30, v31, v32);
    TSCEEvaluationStack::push_back(v33, v28);
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "TSCEValue *TSCEEvaluateAverageIgnoringError(TSCECalculationEngine *__strong, TSUCellCoord, const TSCEOwnerUID &, TSCERangeCoordinate, const TSCEOwnerUID &)", v24, v25);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v41, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 1190, 0, "Unregistered tableUID found when calculating average");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  v49 = objc_msgSend_evaluationStack(v14, v34, v35, v36, v37);
  TSCEEvaluationStack::setArgumentCount(v49, 1u);
  v53 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v50, 15, v51, v52);
  v58 = objc_msgSend_evaluationStack(v14, v54, v55, v56, v57);
  v59 = TSCEEvaluationStack::valueForArgumentAtIndex(v58, 0, v53, v14);
  v86 = 0;
  v61 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v59, v60, v14, v53, 0, 1, &v86);
  v62 = v86;
  v67 = objc_msgSend_evaluationStack(v14, v63, v64, v65, v66);
  TSCEEvaluationStack::clearArgument(v67, v68, v69, v70, v71);
  if (v62)
  {
    v75 = objc_msgSend_errorValue_(TSCEErrorValue, v72, v62, v73, v74);
  }

  else
  {
    v75 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, v72, v14, v53, v61, 0, 0, 0, 1);
    if (objc_msgSend_isError(v75, v76, v77, v78, v79))
    {
      v84 = objc_msgSend_nilValue(TSCENilValue, v80, v81, v82, v83);

      v75 = v84;
    }
  }

  return v75;
}

id sub_22125668C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = a1;
  v12 = [TSCEEvaluationContext alloc];
  v14 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v12, v13, v11, a3, a2, 0);
  v19 = objc_msgSend_calcEngine(v14, v15, v16, v17, v18);
  IsRegistered = objc_msgSend_ownerIsRegistered_(v19, v20, *a6, a6[1], v21);

  if (IsRegistered)
  {
    v26 = [TSCEReferenceValue alloc];
    v89[0] = a4;
    v89[1] = a5;
    v90 = *a6;
    v88 = 0;
    v28 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v26, v27, v14, v89, &v88);
    v33 = objc_msgSend_evaluationStack(v14, v29, v30, v31, v32);
    TSCEEvaluationStack::push_back(v33, v28);
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "NSDictionary<NSString *,NSMutableIndexSet *> *TSCEEvaluateUniqueIgnoringError(TSCECalculationEngine *__strong, TSUCellCoord, const TSCEOwnerUID &, TSCERangeCoordinate, const TSCEOwnerUID &)", v24, v25);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v41, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 1235, 0, "Unregistered tableUID found when calculating unique");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  v49 = objc_msgSend_evaluationStack(v14, v34, v35, v36, v37);
  TSCEEvaluationStack::setArgumentCount(v49, 1u);
  v53 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v50, 297, v51, v52);
  v58 = objc_msgSend_evaluationStack(v14, v54, v55, v56, v57);
  v59 = TSCEEvaluationStack::valueForArgumentAtIndex(v58, 0, v53, v14);
  v64 = objc_msgSend_evaluationStack(v14, v60, v61, v62, v63);
  TSCEEvaluationStack::clearArgument(v64, v65, v66, v67, v68);
  v87 = 0;
  v70 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v59, v69, v14, v53, 0, 0, &v87);
  v71 = v87;
  v75 = objc_msgSend_tableResolverForTableUID_(v11, v72, a6, v73, v74);
  v80 = v75;
  if (v75)
  {
    v81 = objc_msgSend_bodyRangeCoordinate(v75, v76, v77, v78, v79);
  }

  else
  {
    v81 = 0;
  }

  if (a5 == 0x7FFFFFFF && (a5 & 0xFFFF00000000) != 0x7FFF00000000 && (a4 & 0xFFFF00000000) != 0x7FFF00000000 && a4 == 0x7FFFFFFFLL)
  {
    objc_msgSend_uniqueIndexForGrid_functionSpec_argumentIndex_considerTypeForUnique_rowOffset_(v70, v76, v14, v53, 0, 0, v81);
  }

  else
  {
    objc_msgSend_uniqueIndexForGrid_functionSpec_argumentIndex_considerTypeForUnique_rowOffset_(v70, v76, v14, v53, 0, 0, a4);
  }
  v85 = ;

  return v85;
}

id sub_221256984(void *a1, uint64_t a2, uint64_t a3, void **a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v16 = [TSCEEvaluationContext alloc];
  v18 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v16, v17, v15, a3, a2, 0);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v23 = objc_msgSend_calcEngine(v18, v19, v20, v21, v22);
  IsRegistered = objc_msgSend_ownerIsRegistered_(v23, v24, *a6, a6[1], v25);

  if (IsRegistered)
  {
    v30 = [TSCEReferenceValue alloc];
    v76 = a4;
    v77 = a5;
    v78 = *a6;
    LOBYTE(v75) = 0;
    v32 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v30, v31, v18, &v76, &v75);
    v44 = (v73 - v72) >> 3;
    if ((v44 + 1) >> 61)
    {
      sub_22107C148();
    }

    v45 = (v74 - v72) >> 2;
    if (v45 <= v44 + 1)
    {
      v45 = v44 + 1;
    }

    if ((v74 - v72) >= 0x7FFFFFFFFFFFFFF8)
    {
      v46 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v46 = v45;
    }

    v79 = &v72;
    if (v46)
    {
      sub_22107C1F0(&v72, v46);
    }

    v76 = 0;
    v77 = (8 * v44);
    *(&v78 + 1) = 0;
    *v77 = v32;
    *&v78 = 8 * v44 + 8;
    sub_22107C098(&v72, &v76);
    v47 = v73;
    sub_22107C26C(&v76);
    v73 = v47;
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "TSCEValue *TSCEEvaluateLargeOrSmallIgnoringError(TSCECalculationEngine *__strong, TSUCellCoord, const TSCEOwnerUID &, TSCERangeCoordinate, const TSCEOwnerUID &, BOOL, double, BOOL)", v28, v29);
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v36, v37);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v38, 1276, 0, "Unregistered tableUID found when calculating large/small");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42, v43);
  }

  TSUDecimal::operator=();
  v75 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v48, &v76, v49, v50);
  sub_221179A54(&v72, &v75);
  if (a7)
  {
    v54 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v51, @"LARGE", v52, v53);
  }

  else
  {
    v54 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v51, @"SMALL", v52, v53);
  }

  v55 = v54;
  v57 = objc_msgSend_evaluateForArgsWithContext_functionSpec_arguments_isLarge_ignoreError_ignoreDuplicate_(TSCEFunction_LARGE, v56, v18, v55, &v72, a7, 1, a8);
  if (objc_msgSend_isNumberValue(v57, v58, v59, v60, v61))
  {
    v71 = 0;
    v64 = objc_msgSend_asNumber_outError_(v57, v62, v18, &v71, v63);
    v65 = v71;
    objc_msgSend_rawDoubleValue(v64, v66, v67, v68, v69);
  }

  else
  {
    v65 = 0;
  }

  v76 = &v72;
  sub_22107C2C0(&v76);

  return v57;
}

void sub_221256D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_22107C2C0(&a14);

  _Unwind_Resume(a1);
}

id sub_221256DB8(void *a1, uint64_t a2, uint64_t a3, TSKFormat *a4, uint64_t a5, uint64_t *a6)
{
  v11 = a1;
  v12 = [TSCEEvaluationContext alloc];
  v14 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v12, v13, v11, a3, a2, 0);
  v19 = objc_msgSend_calcEngine(v14, v15, v16, v17, v18);
  IsRegistered = objc_msgSend_ownerIsRegistered_(v19, v20, *a6, a6[1], v21);

  if (IsRegistered)
  {
    v26 = [TSCEReferenceValue alloc];
    v90._tskFormat = a4;
    *&v90._formatType = a5;
    *&v90._durationFormat = *a6;
    v89 = 0;
    v28 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v26, v27, v14, &v90, &v89);
    v33 = objc_msgSend_evaluationStack(v14, v29, v30, v31, v32);
    TSCEEvaluationStack::push_back(v33, v28);
  }

  else
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "TSCEValue *TSCEEvaluateCountIgnoringError(TSCECalculationEngine *__strong, TSUCellCoord, const TSCEOwnerUID &, TSCERangeCoordinate, const TSCEOwnerUID &)", v24, v25);
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v41, v42);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v44, v39, v43, 1320, 0, "Unregistered tableUID found when calculating count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47, v48);
  }

  v49 = objc_msgSend_evaluationStack(v14, v34, v35, v36, v37);
  TSCEEvaluationStack::setArgumentCount(v49, 1u);
  v53 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v50, 30, v51, v52);
  v58 = objc_msgSend_evaluationStack(v14, v54, v55, v56, v57);
  v59 = TSCEEvaluationStack::valueForArgumentAtIndex(v58, 0, v53, v14);
  v64 = objc_msgSend_evaluationStack(v14, v60, v61, v62, v63);
  TSCEEvaluationStack::clearArgument(v64, v65, v66, v67, v68);
  v88 = 0;
  v70 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v59, v69, v14, v53, 0, 0, &v88);
  v71 = v88;
  v73 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v72, v70, v14, v53, 0, 0);
  v77 = objc_msgSend_errorWithContext_(v73, v74, v14, v75, v76);

  if (v77)
  {
    v82 = objc_msgSend_nilValue(TSCENilValue, v78, v79, v80, v81);

    v73 = v82;
  }

  else
  {
    TSCEFormat::TSCEFormat(&v87, 256);
    TSCEFormat::TSCEFormat(&v90, &v87);
    objc_msgSend_setFormat_(v73, v83, &v90, v84, v85);
  }

  return v73;
}

id sub_2212570BC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v97 = 0;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v13, v9, a2, 0, &v97);
  v15 = v97;
  v20 = objc_msgSend_floor(v14, v16, v17, v18, v19);

  if (v15)
  {
    v24 = objc_msgSend_raiseErrorOrConvert_(v9, v21, v15, v22, v23);
    goto LABEL_27;
  }

  v29 = objc_msgSend_errorForDuration_argumentIndex_(v20, v21, a2, 0, v23);
  if (v29)
  {
    v24 = objc_msgSend_raiseErrorOrConvert_(v9, v25, v29, v27, v28);
    v15 = v29;
    goto LABEL_27;
  }

  v89 = v11;
  v90 = objc_msgSend_zero(TSCENumberValue, v25, v26, v27, v28);
  if (objc_msgSend_lt_(v12, v30, v90, v31, v32))
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "TSCEValue *TSCEMultifactorial(TSCEEvaluationContext *__strong, TSCEFunctionSpec *__unsafe_unretained, TSCEValue *__strong, TSCENumberValue *__strong, TSCENumberValue *__strong)", v34, v35);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTEvaluation.mm", v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 1363, 0, "Multifactorial shouldn't have i less than zero.  Please file a bug.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  v47 = v20;
  v96 = 0;
  v50 = objc_msgSend_eq_outError_(v47, v48, v90, &v96, v49);
  v51 = v96;
  v54 = v51;
  if (v50)
  {
    goto LABEL_10;
  }

  v95 = v51;
  v55 = objc_msgSend_eq_outError_(v47, v52, v12, &v95, v53);
  v56 = v95;

  if (v55)
  {
    v54 = v56;
LABEL_10:
    TSUDecimal::operator=();
    v61 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v58, &v92, v59, v60);

    v65 = v47;
    v47 = v61;
    goto LABEL_11;
  }

  v94 = v56;
  v67 = objc_msgSend_subtract_functionSpec_outError_(v47, v57, v89, a2, &v94);
  v54 = v94;

  v65 = v67;
  while (objc_msgSend_gt_(v65, v68, v90, v69, v70) && objc_msgSend_gt_(v65, v71, v12, v73, v74) && (objc_msgSend_isInf(v47, v71, v72, v73, v74) & 1) == 0)
  {
    v66 = objc_msgSend_multiply_context_(v47, v71, v65, v9, v74);

    v93 = v54;
    v20 = objc_msgSend_subtract_functionSpec_outError_(v65, v75, v89, a2, &v93);
    v15 = v93;

    v54 = 0;
    v65 = v20;
    v47 = v66;
    if (v15)
    {
      v24 = objc_msgSend_raiseErrorOrConvert_(v9, v68, v15, v69, v70);
      goto LABEL_26;
    }
  }

  if (objc_msgSend_isInf(v47, v71, v72, v73, v74))
  {
    v77 = objc_msgSend_functionName(a2, v62, v76, v63, v64);
    v81 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v78, v77, v79, v80);
    v24 = objc_msgSend_raiseErrorOrConvert_(v9, v82, v81, v83, v84);

    goto LABEL_13;
  }

LABEL_11:
  if (!v54)
  {
    if (v10)
    {
      objc_msgSend_formatWithContext_(v10, v62, v9, v63, v64);
    }

    else
    {
      memset(&v91, 0, sizeof(v91));
    }

    TSCEFormat::TSCEFormat(&v92, &v91);
    objc_msgSend_setFormat_(v47, v85, &v92, v86, v87);
    v24 = v47;
    v15 = 0;
    v20 = v65;
    v66 = v24;
    goto LABEL_26;
  }

  v24 = objc_msgSend_raiseErrorOrConvert_(v9, v62, v54, v63, v64);
LABEL_13:
  v15 = v54;
  v20 = v65;
  v66 = v47;
LABEL_26:

  v11 = v89;
LABEL_27:

  return v24;
}

TSUCellCoord sub_2212575BC(void *a1, TSCERangeRef *this, uint64_t a3)
{
  if (TSCERangeRef::isSingleCell(this) && !TSCERangeRef::isSpanning(this))
  {
    return this->range._topLeft;
  }

  v9 = objc_msgSend_tableResolverForTableUID_(a1, v6, &this->_tableUID, v7, v8);
  if (!v9)
  {
    return this->range._topLeft;
  }

  v11 = v9;
  v12 = objc_msgSend_resolvedCellCoordForIntersection_hostCell_useImplicitIntersection_(v9, v10, this, a3, 1);

  return v12;
}

void sub_221257650(void *a1, uint64_t a2, void *a3, void *a4)
{
  v27 = a3;
  v6 = a4;
  v11 = objc_msgSend_length(a1, v7, v8, v9, v10);
  v17 = objc_msgSend_length(v6, v12, v13, v14, v15);
  for (i = 0; i != 0x7FFFFFFFFFFFFFFFLL; v11 = objc_msgSend_length(a1, v23, v24, v25, v26) - i)
  {
    v19 = objc_msgSend_rangeOfCharacterFromSet_options_range_(a1, v16, v27, 0, i, v11);
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v21 = v19;
    v22 = v20;
    objc_msgSend_replaceCharactersInRange_withString_(a1, v20, v19, v20, v6);
    i = &v22[v21 + &v22[-v17]];
  }
}

void sub_221257730()
{
  if (!qword_27CFB5358)
  {
    obj = objc_opt_class();
    objc_sync_enter(obj);
    if (!qword_27CFB5358)
    {
      v0 = objc_alloc(MEMORY[0x277CCACA8]);
      v4 = objc_msgSend_initWithFormat_(v0, v1, @"'%C", v2, v3, 65287);
      v5 = qword_27CFB5360;
      qword_27CFB5360 = v4;

      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = objc_msgSend_initWithFormat_(v6, v7, @"%C", v8, v9, 8217);
      v11 = qword_27CFB5368;
      qword_27CFB5368 = v10;

      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = objc_msgSend_initWithFormat_(v12, v13, @"'%C", v14, v15, 8217);
      v17 = qword_27CFB5370;
      qword_27CFB5370 = v16;

      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v22 = objc_msgSend_initWithFormat_(v18, v19, @"%C", v20, v21, 8216);
      v23 = qword_27CFB5378;
      qword_27CFB5378 = v22;

      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v28 = objc_msgSend_initWithFormat_(v24, v25, @"'%C", v26, v27, 8216);
      v29 = qword_27CFB5380;
      qword_27CFB5380 = v28;

      v30 = objc_alloc(MEMORY[0x277CCACA8]);
      v34 = objc_msgSend_initWithFormat_(v30, v31, @"%C", v32, v33, 65287);
      v35 = qword_27CFB5358;
      qword_27CFB5358 = v34;

      v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"%C%C%C%%C", v37, v38, 0xFFFFLL, 65520, 65520);
      v40 = objc_alloc(MEMORY[0x277CCACA8]);
      v44 = objc_msgSend_initWithFormat_(v40, v41, v39, v42, v43, 65532);
      v45 = qword_27CFB5388;
      qword_27CFB5388 = v44;

      v46 = objc_alloc(MEMORY[0x277CCACA8]);
      v50 = objc_msgSend_initWithFormat_(v46, v47, v39, v48, v49, 65533);
      v51 = qword_27CFB5390;
      qword_27CFB5390 = v50;

      v52 = objc_alloc(MEMORY[0x277CCACA8]);
      v56 = objc_msgSend_initWithFormat_(v52, v53, v39, v54, v55, 65534);
      v57 = qword_27CFB5398;
      qword_27CFB5398 = v56;

      v58 = objc_alloc(MEMORY[0x277CCACA8]);
      v62 = objc_msgSend_initWithFormat_(v58, v59, v39, v60, v61, 0xFFFFLL);
      v63 = qword_27CFB53A0;
      qword_27CFB53A0 = v62;

      __dmb(0xBu);
    }

    objc_sync_exit(obj);
  }
}

uint64_t sub_221257994(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_tsce_p_initializeQuotes(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_tsce_characterSetRequiringSingleQuotes(MEMORY[0x277CCA900], v6, v7, v8, v9);
  v15 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v11, v12, v13, v14);
  v20 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v16, v17, v18, v19);
  v25 = objc_msgSend_length(a1, v21, v22, v23, v24);
  if (objc_msgSend_rangeOfCharacterFromSet_(a1, v26, v10, v27, v28) != 0x7FFFFFFFFFFFFFFFLL || v25 && ((v32 = objc_msgSend_characterAtIndex_(a1, v29, 0, v30, v31), (objc_msgSend_characterIsMember_(v15, v33, v32, v34, v35) & 1) != 0) || (v40 = objc_msgSend_length(a1, v36, v37, v38, v39), v44 = objc_msgSend_characterAtIndex_(a1, v41, v40 - 1, v42, v43), (objc_msgSend_characterIsMember_(v15, v45, v44, v46, v47) & 1) != 0) || (v51 = objc_msgSend_characterAtIndex_(a1, v48, 0, v49, v50), (objc_msgSend_characterIsMember_(v20, v52, v51, v53, v54) & 1) != 0) || (objc_msgSend_tsce_periodCharacterSet(MEMORY[0x277CCA900], v55, v56, v57, v58), v59 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend_characterAtIndex_(a1, v60, 0, v61, v62), IsMember = objc_msgSend_characterIsMember_(v59, v64, v63, v65, v66), v59, (IsMember & 1) != 0)))
  {
    LOBYTE(v68) = 1;
  }

  else
  {
    v69 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v29, a1, v30, v31);
    v68 = 0;
    if ((objc_msgSend_isAtEnd(v69, v70, v71, v72, v73) & 1) == 0)
    {
      do
      {
        objc_msgSend_scanUpToCharactersFromSet_intoString_(v69, v74, v15, 0, v75);
        objc_msgSend_scanCharactersFromSet_intoString_(v69, v76, v15, 0, v77);
        v68 |= objc_msgSend_scanCharactersFromSet_intoString_(v69, v78, v20, 0, v79);
      }

      while (!objc_msgSend_isAtEnd(v69, v80, v81, v82, v83));
    }
  }

  return v68 & 1;
}

id sub_221257B34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  if ((a3 & 1) != 0 || (v6 = objc_msgSend_tsce_needsReferenceSingleQuoteEscaping(a1, a1, a3, a4, a5), v5 = a1, v6))
  {
    v7 = objc_msgSend_mutableCopyWithZone_(v5, v5, 0, a4, a5);
    v12 = objc_msgSend_length(v7, v8, v9, v10, v11);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v7, v13, @"'", @"''", 2, 0, v12);
    v14 = qword_27CFB5358;
    v15 = qword_27CFB5360;
    v20 = objc_msgSend_length(v7, v16, v17, v18, v19);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v7, v21, v14, v15, 2, 0, v20);
    v22 = qword_27CFB5368;
    v23 = qword_27CFB5370;
    v28 = objc_msgSend_length(v7, v24, v25, v26, v27);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v7, v29, v22, v23, 2, 0, v28);
    v30 = qword_27CFB5378;
    v31 = qword_27CFB5380;
    v36 = objc_msgSend_length(v7, v32, v33, v34, v35);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v7, v37, v30, v31, 2, 0, v36);
    objc_msgSend_insertString_atIndex_(v7, v38, @"'", 0, v39);
    v44 = objc_msgSend_length(v7, v40, v41, v42, v43);
    objc_msgSend_insertString_atIndex_(v7, v45, @"'", v44, v46);
    return v7;
  }

  else
  {

    return a1;
  }
}

id sub_221257CA4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(a1, a2, 1, a4, a5);

  return v5;
}

id sub_221257CD0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(a1, a2, 0, a4, a5);

  return v5;
}

id sub_221257CFC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(a1, a2, a3, a4, a5);

  return v5;
}

id sub_221257D2C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_tsce_p_initializeQuotes(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v6, v7, v8, v9);
  v15 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v11, v12, v13, v14);
  v19 = objc_msgSend_stringByTrimmingCharactersInSet_(a1, v16, v15, v17, v18);

  if (objc_msgSend_length(v19, v20, v21, v22, v23) >= 2 && (v27 = objc_msgSend_characterAtIndex_(v19, v24, 0, v25, v26), objc_msgSend_characterIsMember_(v10, v28, v27, v29, v30)) && (v35 = objc_msgSend_length(v19, v31, v32, v33, v34), v39 = objc_msgSend_characterAtIndex_(v19, v36, v35 - 1, v37, v38), objc_msgSend_characterIsMember_(v10, v40, v39, v41, v42)))
  {
    v46 = objc_msgSend_mutableCopyWithZone_(v19, v43, 0, v44, v45);
    v51 = objc_msgSend_length(v46, v47, v48, v49, v50);
    objc_msgSend_deleteCharactersInRange_(v46, v52, v51 - 1, 1, v53);
    objc_msgSend_deleteCharactersInRange_(v46, v54, 0, 1, v55);
    if (objc_msgSend_length(v46, v56, v57, v58, v59))
    {
      v64 = objc_msgSend_length(v46, v60, v61, v62, v63);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v46, v65, @"''", @"'", 2, 0, v64);
      v66 = qword_27CFB5360;
      v67 = qword_27CFB5358;
      v72 = objc_msgSend_length(v46, v68, v69, v70, v71);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v46, v73, v66, v67, 2, 0, v72);
      v74 = qword_27CFB5370;
      v75 = qword_27CFB5368;
      v80 = objc_msgSend_length(v46, v76, v77, v78, v79);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v46, v81, v74, v75, 2, 0, v80);
      v82 = qword_27CFB5380;
      v83 = qword_27CFB5378;
      v88 = objc_msgSend_length(v46, v84, v85, v86, v87);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v46, v89, v82, v83, 2, 0, v88);
    }
  }

  else
  {
    v46 = a1;
  }

  return v46;
}

uint64_t sub_221257F1C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], a2, a3, a4, a5);
  if (objc_msgSend_length(a1, v7, v8, v9, v10) >= 2 && (v14 = objc_msgSend_characterAtIndex_(a1, v11, 0, v12, v13), objc_msgSend_characterIsMember_(v6, v15, v14, v16, v17)))
  {
    v22 = objc_msgSend_length(a1, v18, v19, v20, v21);
    v26 = objc_msgSend_characterAtIndex_(a1, v23, v22 - 1, v24, v25);
    IsMember = objc_msgSend_characterIsMember_(v6, v27, v26, v28, v29);
  }

  else
  {
    IsMember = 0;
  }

  return IsMember;
}

id sub_221257FC4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  objc_msgSend_tsce_p_initializeQuotes(a1, a2, a3, a4, a5);
  v12 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v8, v9, v10, v11);
  v17 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v13, v14, v15, v16);
  v21 = objc_msgSend_stringByTrimmingCharactersInSet_(a1, v18, v17, v19, v20);

  v26 = objc_msgSend_length(v21, v22, v23, v24, v25);
  if (v26 >= objc_msgSend_length(a1, v27, v28, v29, v30))
  {
    v39 = &stru_2834BADA0;
  }

  else
  {
    v35 = objc_msgSend_length(v21, v31, v32, v33, v34);
    v39 = objc_msgSend_substringFromIndex_(a1, v36, v35, v37, v38);
  }

  if (!objc_msgSend_length(v21, v31, v32, v33, v34))
  {
    goto LABEL_14;
  }

  v43 = objc_msgSend_characterAtIndex_(v21, v40, 0, v41, v42);
  IsMember = objc_msgSend_characterIsMember_(v12, v44, v43, v45, v46);
  if (IsMember)
  {
    if ((v6 & 1) == 0 && objc_msgSend_length(a1, v47, v48, v49, v50) == 2)
    {
      v52 = objc_msgSend_characterAtIndex_(a1, v47, 1, v49, v50);
      if (objc_msgSend_characterIsMember_(v12, v53, v52, v54, v55))
      {
        v56 = objc_msgSend_substringFromIndex_(a1, v47, 1, v49, v50);
LABEL_15:
        v127 = v56;
        goto LABEL_26;
      }
    }
  }

  if (!IsMember)
  {
LABEL_14:
    v56 = a1;
    goto LABEL_15;
  }

  v57 = objc_msgSend_mutableCopyWithZone_(v21, v47, 0, v49, v50);
  objc_msgSend_deleteCharactersInRange_(v57, v58, 0, 1, v59);
  if (objc_msgSend_length(v57, v60, v61, v62, v63))
  {
    objc_msgSend_rangeOfString_(v57, v64, qword_27CFB5388, v66, v67);
    objc_msgSend_rangeOfString_(v57, v68, qword_27CFB5390, v69, v70);
    objc_msgSend_rangeOfString_(v57, v71, qword_27CFB53A0, v72, v73);
    objc_msgSend_rangeOfString_(v57, v74, qword_27CFB5398, v75, v76);
    v77 = qword_27CFB5388;
    v82 = objc_msgSend_length(v57, v78, v79, v80, v81);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v83, @"''", v77, 2, 0, v82);
    v84 = qword_27CFB5360;
    v85 = qword_27CFB5390;
    v90 = objc_msgSend_length(v57, v86, v87, v88, v89);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v91, v84, v85, 2, 0, v90);
    v92 = qword_27CFB5370;
    v93 = qword_27CFB53A0;
    v98 = objc_msgSend_length(v57, v94, v95, v96, v97);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v99, v92, v93, 2, 0, v98);
    v100 = qword_27CFB5380;
    v101 = qword_27CFB5398;
    v106 = objc_msgSend_length(v57, v102, v103, v104, v105);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v107, v100, v101, 2, 0, v106);
    v112 = objc_msgSend_length(v57, v108, v109, v110, v111) - 1;
    v116 = objc_msgSend_characterAtIndex_(v57, v113, v112, v114, v115);
    if (objc_msgSend_characterIsMember_(v12, v117, v116, v118, v119))
    {
      objc_msgSend_deleteCharactersInRange_(v57, v120, v112, 1, v122);
    }

    else
    {
      objc_msgSend_appendString_(v57, v120, v39, v121, v122);

      v39 = &stru_2834BADA0;
    }

    if (objc_msgSend_length(v57, v123, v124, v125, v126))
    {
      v128 = qword_27CFB5388;
      v129 = objc_msgSend_length(v57, v64, v65, v66, v67);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v130, v128, @"'", 2, 0, v129);
      v131 = qword_27CFB5390;
      v132 = qword_27CFB5358;
      v137 = objc_msgSend_length(v57, v133, v134, v135, v136);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v138, v131, v132, 2, 0, v137);
      v139 = qword_27CFB53A0;
      v140 = qword_27CFB5368;
      v145 = objc_msgSend_length(v57, v141, v142, v143, v144);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v146, v139, v140, 2, 0, v145);
      v147 = qword_27CFB5398;
      v148 = qword_27CFB5378;
      v153 = objc_msgSend_length(v57, v149, v150, v151, v152);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v57, v154, v147, v148, 2, 0, v153);
    }
  }

  v155 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapes(v57, v64, v65, v66, v67);
  v159 = objc_msgSend_stringByAppendingString_(v155, v156, v39, v157, v158);
  hasPrefix = objc_msgSend_hasPrefix_(v159, v160, a1, v161, v162);

  if (hasPrefix)
  {
    v167 = v57;
  }

  else
  {
    v167 = a1;
  }

  if (hasPrefix && v5)
  {
    objc_msgSend_appendString_(v57, v164, v39, v165, v166);
    v167 = v57;
  }

  v127 = v167;

LABEL_26:

  return v127;
}

void *sub_2212583E0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_mutableCopy(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_length(v5, v6, v7, v8, v9);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v5, v11, @"", @"", 2, 0, v10);
  return v5;
}

id sub_221258430(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_mutableCopyWithZone_(a1, a2, 0, a4, a5);
  if (objc_msgSend_length(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_length(v5, v10, v11, v12, v13);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v5, v15, @"\\s+", @" ", 1024, 0, v14);
  }

  return v5;
}

id sub_2212584A0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_mutableCopyWithZone_(a1, a2, 0, a4, a5);
  if (objc_msgSend_length(v5, v6, v7, v8, v9))
  {
    v14 = objc_msgSend_length(v5, v10, v11, v12, v13);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v5, v15, @"\n", &stru_2834BADA0, 2, 0, v14);
  }

  return v5;
}

id sub_221258510(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_length(a1, a2, a3, a4, a5);
  v44 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v7, v8, v9, v10);
  v15 = objc_msgSend_tsce_internationalColonCharacterSet(MEMORY[0x277CCA900], v11, v12, v13, v14);
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v6)
  {
    v19 = 0;
    v20 = 0;
    v43 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
    do
    {
      v24 = objc_msgSend_characterAtIndex_(a1, v16, v21, v17, v18);
      IsMember = objc_msgSend_characterIsMember_(v44, v25, v24, v26, v27);
      v32 = objc_msgSend_characterIsMember_(v15, v29, v24, v30, v31);
      if (v23)
      {
        v22 = IsMember;
      }

      if ((v22 & 1) != 0 && IsMember)
      {
        v23 = 0;
        v20 = 0;
        v19 ^= 1u;
        v22 = 1;
      }

      else if (v32)
      {
        if (v19)
        {
          v23 = 0;
          v20 = 0;
          v19 = 1;
        }

        else if (v20)
        {
          v33 = objc_msgSend_substringWithRange_(a1, v16, v43, ~v43 + v21, v18);
          objc_msgSend_addObject_(v42, v34, v33, v35, v36);
          v43 = v21 + 1;

          v22 = 0;
          v20 = 0;
          v19 = 0;
          v23 = 1;
        }

        else
        {
          v23 = 0;
          v19 = 0;
          v20 = 1;
        }
      }

      else
      {
        v23 = 0;
        v20 = 0;
      }

      ++v21;
    }

    while (v6 != v21);
  }

  else
  {
    v43 = 0;
  }

  v37 = objc_msgSend_substringWithRange_(a1, v16, v43, v6 - v43, v18);
  objc_msgSend_addObject_(v42, v38, v37, v39, v40);

  return v42;
}

id sub_2212586DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_length(a1, v5, v6, v7, v8);
  v14 = objc_msgSend_tsce_singleQuoteCharacterSet(MEMORY[0x277CCA900], v10, v11, v12, v13);
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v9)
  {
    v18 = 0;
    v47 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    do
    {
      v22 = objc_msgSend_characterAtIndex_(a1, v15, v19, v16, v17, v45);
      IsMember = objc_msgSend_characterIsMember_(v14, v23, v22, v24, v25);
      v30 = objc_msgSend_characterIsMember_(v4, v27, v22, v28, v29);
      if (v21)
      {
        v20 = IsMember;
      }

      if ((v20 & 1) != 0 && IsMember)
      {
        v21 = 0;
        v18 ^= 1u;
        v20 = 1;
      }

      else if (v30)
      {
        if (v18)
        {
          v21 = 0;
          v18 = 1;
        }

        else
        {
          v31 = objc_msgSend_substringWithRange_(a1, v15, v47, v19 - v47, v17);
          objc_msgSend_addObject_(v45, v32, v31, v33, v34);
          v47 = v19 + 1;

          v20 = 0;
          v18 = 0;
          v21 = 1;
        }
      }

      else
      {
        v21 = 0;
      }

      ++v19;
    }

    while (v9 != v19);
  }

  else
  {
    v47 = 0;
  }

  v35 = objc_msgSend_substringWithRange_(a1, v15, v47, v9 - v47, v17, v45);
  objc_msgSend_addObject_(v46, v36, v35, v37, v38);
  v43 = objc_msgSend_copy(v46, v39, v40, v41, v42);

  return v43;
}

id sub_221258884(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_tsce_internationalColonCharacterSet(MEMORY[0x277CCA900], a2, a3, a4, a5);
  v10 = objc_msgSend_ptsce_referenceComponentsSeparatedByCharacterInSet_(a1, v7, v6, v8, v9);

  return v10;
}

id sub_2212588E4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], a2, @" ", a4, a5);
  v10 = objc_msgSend_ptsce_referenceComponentsSeparatedByCharacterInSet_(a1, v7, v6, v8, v9);

  return v10;
}

id sub_22125894C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_stringByFoldingWithOptions_locale_(a1, a2, 385, a3, a5);
  if (qword_27CFB53B8 != -1)
  {
    sub_2216F7538();
  }

  v10 = objc_msgSend_mutableCopy(v9, v5, v6, v7, v8);
  objc_msgSend_tsce_replaceCharactersInSet_withString_(v10, v11, qword_27CFB53A8, @"", v12);
  objc_msgSend_tsce_replaceCharactersInSet_withString_(v10, v13, qword_27CFB53B0, @"'", v14);

  return v10;
}

void sub_2212589E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%C%C%C%C%C%C%C%C%C", a4, a5, 8220, 8221, 171, 187, 8222, 8223, 12317, 12318, 1524);
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"'%C%C%C%C%C%C%C", v6, v7, 65287, 8217, 8216, 8218, 8219, 8249, 8250);
  v12 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v9, v19, v10, v11);
  v13 = qword_27CFB53A8;
  qword_27CFB53A8 = v12;

  v17 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v14, v8, v15, v16);
  v18 = qword_27CFB53B0;
  qword_27CFB53B0 = v17;
}

void sub_221258E28(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id sub_22125B3AC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    v12 = a2;
    if (!v12 || (v17 = v12, (objc_msgSend_isNil(v12, v13, v14, v15, v16) & 1) == 0) && (v20 = objc_msgSend_deepType_outError_(v17, v18, a3, a7, v19), !*a7) && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v21, v17, v20, a3, a4, a5, a7), v22 = objc_claimAutoreleasedReturnValue(), v17, (v17 = v22) == 0))
    {
      v17 = objc_msgSend_nilValue(TSCENilValue, v13, v14, v15, v16);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

TSCEArgumentAccessor *sub_22125B498(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  v13 = a2;
  v18 = objc_msgSend_nativeType(v13, v14, v15, v16, v17);
  v21 = objc_msgSend_deepType_outError_(v13, v19, a3, a7, v20);
  if (TSCEArgumentAccessor::isFromAReference(v13, a6, v22, v23, v24))
  {
    if ((v21 & 0xFFFFFFFB) == 3)
    {

LABEL_19:
      v13 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v29 = objc_msgSend_locale(a3, v25, v26, v27, v28);
  if (v18 == 3)
  {
    *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v25, v13, a3, a4, a5);
LABEL_10:
    if (!v13)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (v18 != 7)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v35 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v25, a3, a4, a5, a7);
  if (*a7)
  {
    v36 = objc_msgSend_nilValue(TSCENilValue, v31, v32, v33, v34);

    v13 = v36;
    goto LABEL_20;
  }

  if ((objc_msgSend_localizedStringIsTrue_(v30, v31, v35, v33, v34) & 1) == 0 && (objc_msgSend_localizedStringIsFalse_(v30, v39, v35, v40, v41) & 1) == 0)
  {
    *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v42, v13, a3, a4, a5);
  }

  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_11:
  if ((objc_msgSend_isNil(v13, v25, v26, v27, v28) & 1) == 0 && !*a7)
  {
    v38 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v37, v13, v21, a3, a4, a5, a7);

    v13 = v38;
    if (!v38)
    {
      goto LABEL_19;
    }
  }

LABEL_20:

  return v13;
}

TSCEArgumentAccessor *sub_22125B6D4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v13 = a2;
  v18 = objc_msgSend_nativeType(v13, v14, v15, v16, v17);
  v21 = objc_msgSend_deepType_outError_(v13, v19, a3, a7, v20);
  if (TSCEArgumentAccessor::isFromAReference(v13, a6, v22, v23, v24))
  {
    if (v21 == 7 || v21 == 2)
    {
      v29 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);

      v13 = v29;
      if (!v29)
      {
        goto LABEL_29;
      }

      goto LABEL_13;
    }

LABEL_12:
    if (!v13)
    {
LABEL_29:
      v13 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);
      goto LABEL_30;
    }

    goto LABEL_13;
  }

  v30 = objc_msgSend_locale(a3, v25, v26, v27, v28);
  if (v18 == 2)
  {
    *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v25, v13, a3, a4, a5);
    goto LABEL_12;
  }

  if (v18 != 7)
  {
    goto LABEL_12;
  }

  v31 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v25, a3, a4, a5, a7);
  v36 = v31;
  if (*a7)
  {
    v37 = objc_msgSend_nilValue(TSCENilValue, v32, v33, v34, v35);

    v13 = v37;
    goto LABEL_30;
  }

  if (objc_msgSend_length(v31, v32, v33, v34, v35))
  {
    v44 = TSUCreateDateFromString();
    if (v44)
    {
      v45 = objc_msgSend_dateValue_(TSCEDateValue, v40, v44, v42, v43);

      v21 = 3;
      v13 = v45;
    }

    else
    {
      v46 = objc_msgSend_asStringValue(v13, v40, v41, v42, v43);
      if (v46)
      {
        v57 = 0;
        v56 = v46;
        v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v46, v47, a3, a4, a5, &v57);
        v48 = v57;

        if (v48)
        {
          v54 = objc_msgSend_nilValue(TSCENilValue, v49, v50, v51, v52);

          v13 = v54;
        }

        else
        {
          v21 = 5;
          v13 = v55;
        }

        v46 = v56;
      }
    }
  }

  else
  {

    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_13:
  if ((objc_msgSend_isNil(v13, v25, v26, v27, v28) & 1) == 0 && !*a7)
  {
    v39 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v38, v13, v21, a3, a4, a5, a7);

    v13 = v39;
    if (!v39)
    {
      goto LABEL_29;
    }
  }

LABEL_30:

  return v13;
}

TSCEArgumentAccessor *sub_22125BA08(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v13 = a2;
  v18 = objc_msgSend_nativeType(v13, v14, v15, v16, v17);
  v21 = objc_msgSend_deepType_outError_(v13, v19, a3, a7, v20);
  if (TSCEArgumentAccessor::isFromAReference(v13, a6, v22, v23, v24))
  {
    if (v21 == 7 || v21 == 2)
    {

LABEL_29:
      v13 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  v29 = objc_msgSend_locale(a3, v25, v26, v27, v28);
  if (v18 <= 6u)
  {
    if (v18 == 2 || v18 == 3)
    {
      *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v25, v13, a3, a4, a5);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (v18 == 10)
  {
    v37 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);

    v13 = v37;
    goto LABEL_17;
  }

  if (v18 != 7)
  {
    goto LABEL_17;
  }

  v30 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v25, a3, a4, a5, a7);
  v35 = v30;
  if (*a7)
  {
    v36 = objc_msgSend_nilValue(TSCENilValue, v31, v32, v33, v34);

    v13 = v36;
    goto LABEL_30;
  }

  if (objc_msgSend_length(v30, v31, v32, v33, v34))
  {
    v43 = TSUCreateDateFromString();
    if (v43)
    {
      v44 = objc_msgSend_dateValue_(TSCEDateValue, v40, v43, v41, v42);
      v21 = 3;
    }

    else
    {
      v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v13, v40, a3, a4, a5, a7);
      v21 = 5;
    }
  }

  else
  {
    v21 = 0;
    v44 = 0;
    v43 = v13;
  }

  v13 = v44;
  if (!v44)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((objc_msgSend_isNil(v13, v25, v26, v27, v28) & 1) == 0 && !*a7)
  {
    v39 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v38, v13, v21, a3, a4, a5, a7);

    v13 = v39;
    if (!v39)
    {
      goto LABEL_29;
    }
  }

LABEL_30:

  return v13;
}

TSCEArgumentAccessor *sub_22125BCF8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, TSCEValue *a6, void *a7, uint64_t a8)
{
  v65 = a5;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_41;
  }

  v13 = a2;
  v18 = objc_msgSend_nativeType(v13, v14, v15, v16, v17);
  v21 = objc_msgSend_deepType_outError_(v13, v19, a3, a7, v20);
  v26 = objc_msgSend_argumentType(a1, v22, v23, v24, v25);
  v34 = v18;
  if (objc_msgSend_valueIsEmptyWithContext_(v13, v27, a3, v28, v29))
  {
    if (v18 != 6 || (v34 = 6, v26 != 6) && v26 != 255)
    {
      if ((TSCERangeRef::isReferenceRange(a8) & 1) == 0)
      {
        v48 = objc_msgSend_functionName(a4, v35, v36, v37, v38);
        v49 = *(a8 + 16);
        v67[0] = *a8;
        v67[1] = v49;
        *a7 = objc_msgSend_referenceToEmptyCellErrorForFunctionName_rangeReference_(TSCEError, v50, v48, v67, v51);

        v47 = objc_msgSend_nilValue(TSCENilValue, v52, v53, v54, v55);
        goto LABEL_25;
      }

      if (v18 != 6 || (objc_msgSend_referenceForGeometryOnly(a1, v35, v36, v37, v38) & 1) == 0)
      {

        goto LABEL_40;
      }

      v34 = 6;
    }
  }

  if (!v13)
  {
    goto LABEL_40;
  }

  if (!TSCEArgumentAccessor::isFromAReference(v13, a6, v31, v32, v33))
  {
    if (v34 == 2)
    {
LABEL_28:
      v56 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v30, v13, a3, a4, v65, v65);
LABEL_30:
      *a7 = v56;
      goto LABEL_31;
    }

    if (v34 == 10)
    {
      v56 = objc_msgSend_emptyArgumentError(TSCEError, v30, v31, v32, v33);
      goto LABEL_30;
    }

    if (v34 != 7)
    {
      goto LABEL_31;
    }

    v39 = objc_msgSend_locale(a3, v30, v31, v32, v33);
    v41 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v40, a3, a4, v65, a7);
    v46 = v41;
    if (!*a7)
    {
      if (objc_msgSend_length(v41, v42, v43, v44, v45))
      {
        v62 = TSUCreateDateFromString();
        if (v62)
        {
          v63 = objc_msgSend_dateValue_(TSCEDateValue, v59, v62, v60, v61);
          v21 = 3;
        }

        else
        {
          v63 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v13, v59, a3, a4, v65, a7);
          v21 = 5;
        }

        v13 = v63;
        if (!v63)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      v13 = v46;
LABEL_39:

LABEL_40:
      v13 = objc_msgSend_nilValue(TSCENilValue, v30, v31, v32, v33, v65);
      goto LABEL_41;
    }

    v47 = objc_msgSend_nilValue(TSCENilValue, v42, v43, v44, v45);

LABEL_25:
    v13 = v47;
    goto LABEL_41;
  }

  if (!v21)
  {
    goto LABEL_39;
  }

  if (v21 == 2 || v21 == 7)
  {
    if (TSCERangeRef::isReferenceRange(a8))
    {
      if (v21 != 2 && v21 != 7)
      {
        goto LABEL_31;
      }

      goto LABEL_39;
    }

    goto LABEL_28;
  }

LABEL_31:
  if ((objc_msgSend_isNil(v13, v30, v31, v32, v33, v65) & 1) == 0 && !*a7)
  {
    v58 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v57, v13, v21, a3, a4, v65, a7);

    v13 = v58;
    if (!v58)
    {
      goto LABEL_40;
    }
  }

LABEL_41:

  return v13;
}

TSCEArgumentAccessor *sub_22125C0A8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7, TSCERangeRef *a8)
{
  if (!a1)
  {
    v14 = 0;
    goto LABEL_27;
  }

  v14 = a2;
  v18 = TSCEArgumentAccessor::isFromAReference(v14, a6, v15, v16, v17);
  v23 = objc_msgSend_nativeType(v14, v19, v20, v21, v22);
  v26 = objc_msgSend_deepType_outError_(v14, v24, a3, a7, v25);
  if (sub_2216F754C(a1, v14, a3, v27, v28))
  {
    v33 = objc_msgSend_nilValue(TSCENilValue, v29, v30, v31, v32);

    v14 = v33;
  }

  if (v18)
  {
    if (TSCERangeRef::isReferenceRange(a8))
    {
      if (objc_msgSend_isNil(v14, v29, v30, v31, v32))
      {
        v34 = objc_msgSend_zero(TSCENumberValue, v29, v30, v31, v32);
LABEL_20:
        v41 = v34;

        v26 = 5;
        goto LABEL_21;
      }

      if (v26 == 7)
      {
        v42 = objc_msgSend_locale(a3, v29, v30, v31, v32);
        TSUDecimal::operator=();
        v43 = MEMORY[0x277D81290];
        v45 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v44, a3, a4, a5, a7);
        v47 = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v43, v46, v45, v42, v56);

        if ((v47 & 1) == 0)
        {
          *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v48, v14, a3, a4, a5);
        }

        v34 = objc_msgSend_zero(TSCENumberValue, v48, v49, v50, v51);
        goto LABEL_20;
      }

      if ((v26 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    if (!v23)
    {
      v41 = objc_msgSend_nilValue(TSCENilValue, v29, v30, v31, v32);

LABEL_21:
      v14 = v41;
    }
  }

  else if (v23 == 7)
  {
    v35 = objc_msgSend_locale(a3, v29, v30, v31, v32);
    TSUDecimal::operator=();
    v36 = MEMORY[0x277D81290];
    v38 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v14, v37, a3, a4, a5, a7);
    LOBYTE(v35) = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v36, v39, v38, v35, v56);

    if ((v35 & 1) == 0)
    {
      v40 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v29, v14, a3, a4, a5);
LABEL_13:
      *a7 = v40;
    }
  }

  else if ((v23 & 0xFFFFFFFE) == 2)
  {
LABEL_12:
    v40 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v29, v14, a3, a4, a5);
    goto LABEL_13;
  }

LABEL_22:
  if (!v14 || (objc_msgSend_isNil(v14, v29, v30, v31, v32) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v52, v14, v26, a3, a4, a5, a7), v53 = objc_claimAutoreleasedReturnValue(), v14, (v14 = v53) == 0))
  {
    v14 = objc_msgSend_nilValue(TSCENilValue, v29, v30, v31, v32);
  }

LABEL_27:

  return v14;
}

TSCEArgumentAccessor *sub_22125C434(_DWORD *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v12 = 0;
    goto LABEL_28;
  }

  v12 = a2;
  v17 = objc_msgSend_nativeType(v12, v13, v14, v15, v16);
  v20 = objc_msgSend_deepType_outError_(v12, v18, a3, a7, v19);
  v24 = TSCEArgumentAccessor::isFromAReference(v12, a6, v21, v22, v23);
  v29 = a1[11];
  if (v29 == 6)
  {
    if (!v24)
    {
      if (v17 == 2)
      {
        *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v25, v12, a3, a4, a5);
        goto LABEL_23;
      }

      if (v17 != 7)
      {
        goto LABEL_23;
      }

      v50 = objc_msgSend_locale(a3, v25, v26, v27, v28);
      v52 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v51, a3, a4, a5, a7);
      v49 = v52;
      if (*a7)
      {
LABEL_20:
        v53 = objc_msgSend_nilValue(TSCENilValue, v45, v46, v47, v48);

        v12 = v53;
        goto LABEL_28;
      }

      if (objc_msgSend_length(v52, v45, v46, v47, v48))
      {
        v64 = TSUCreateDateFromString();
        if (v64)
        {
          v65 = objc_msgSend_dateValue_(TSCEDateValue, v66, v64, v67, v68);

          v20 = 3;
          goto LABEL_46;
        }

        v65 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v66, a3, a4, a5, a7);

        if (*a7)
        {
LABEL_44:
          *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v69, v12, a3, a4, a5);
          v20 = 9;
          goto LABEL_46;
        }

LABEL_45:
        v20 = 5;
        goto LABEL_46;
      }

LABEL_40:
      v65 = objc_msgSend_nilValue(TSCENilValue, v57, v58, v59, v60);
      v20 = 0;
LABEL_47:

      v12 = v65;
      goto LABEL_23;
    }

    if (v20 != 7 && v20 != 2)
    {
      goto LABEL_23;
    }

LABEL_11:
    v30 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);

    goto LABEL_22;
  }

  if (v29 != 7)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCEFunctionArgSpec _convertToNilIfIgnoring_Stat:context:functionSpec:argIndex:fromInsideArray:outError:]", v27, v28);
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v34, v35);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 1076, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
    goto LABEL_23;
  }

  if (!v24)
  {
    if (v17 != 2)
    {
      if (v17 != 7)
      {
        goto LABEL_23;
      }

      v42 = objc_msgSend_locale(a3, v25, v26, v27, v28);
      v44 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v43, a3, a4, a5, a7);
      v49 = v44;
      if (*a7)
      {
        goto LABEL_20;
      }

      if (objc_msgSend_length(v44, v45, v46, v47, v48))
      {
        v64 = TSUCreateDateFromString();
        if (v64)
        {
          v65 = objc_msgSend_dateValue_(TSCEDateValue, v61, v64, v62, v63);

LABEL_46:
          v12 = v64;
          goto LABEL_47;
        }

        v65 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v61, a3, a4, a5, a7);

        if (*a7)
        {
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      goto LABEL_40;
    }

    if (!a6)
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v20 == 7)
  {
    v30 = objc_msgSend_zero(TSCENumberValue, v25, v26, v27, v28);

    v20 = 5;
    goto LABEL_22;
  }

  if (!v20)
  {
    v30 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);

    v20 = 0;
LABEL_22:
    v12 = v30;
  }

LABEL_23:
  if (!v12 || (objc_msgSend_isNil(v12, v25, v26, v27, v28) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v54, v12, v20, a3, a4, a5, a7), v55 = objc_claimAutoreleasedReturnValue(), v12, (v12 = v55) == 0))
  {
    v12 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);
  }

LABEL_28:

  return v12;
}

TSCEArgumentAccessor *sub_22125C95C(_DWORD *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, TSCEValue *a6, uint64_t *a7)
{
  if (!a1)
  {
    v12 = 0;
    goto LABEL_35;
  }

  v12 = a2;
  v17 = objc_msgSend_nativeType(v12, v13, v14, v15, v16);
  v20 = objc_msgSend_deepType_outError_(v12, v18, a3, a7, v19);
  v24 = TSCEArgumentAccessor::isFromAReference(v12, a6, v21, v22, v23);
  v29 = a1[11];
  if (v29 == 8)
  {
    if (!v20 || v24 && (v20 == 7 || v20 == 2))
    {
      v32 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);

      v12 = v32;
    }

    isNil = objc_msgSend_isNil(v12, v25, v26, v27, v28);
    if (v17 == 9)
    {
      v38 = 1;
    }

    else
    {
      v38 = isNil;
    }

    if ((v38 & 1) == 0 && (TSCEArgumentAccessor::valueSufficesForArgumentType(v12, 5, v17, v20, a3, 0) & 1) == 0 && (TSCEArgumentAccessor::valueSufficesForArgumentType(v12, 3, v17, v20, a3, 0) & 1) == 0)
    {
      v39 = objc_msgSend_nilValue(TSCENilValue, v34, v35, v36, v37);

      v12 = v39;
    }

    if (objc_msgSend_isNil(v12, v34, v35, v36, v37))
    {
      goto LABEL_30;
    }

    if (v20 == 2)
    {
      objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v12, v25, a3, a4, a5, a7);
    }

    else
    {
      v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v25, a3, a4, a5, a7);
    }

    if ((objc_msgSend_isInvalidReferenceError(*a7, v40, v41, v42, v43) & 1) != 0 || objc_msgSend_isCircularReferenceError(*a7, v25, v56, v27, v28))
    {
      v31 = objc_msgSend_errorValue_(TSCEErrorValue, v25, *a7, v27, v28);
      goto LABEL_29;
    }

    if (*a7)
    {
      if (v20 == 3)
      {
        *a7 = 0;
        v61 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v12, v25, a3, a4, a5, a7);
        if (*a7)
        {
LABEL_8:
          v31 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);
LABEL_29:
          v57 = v31;

          v12 = v57;
        }
      }
    }
  }

  else if (v29 == 9)
  {
    if (v20)
    {
      v30 = 0;
    }

    else
    {
      v30 = v24;
    }

    if (v30 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCEFunctionArgSpec _convertToNilIfIgnoring_Count:context:functionSpec:argIndex:fromInsideArray:outError:]", v27, v28);
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v47, v48);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v50, v45, v49, 1162, 0, "Wrong context for this method.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54);
  }

LABEL_30:
  if (!v12 || (objc_msgSend_isNil(v12, v25, v26, v27, v28) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v58, v12, v20, a3, a4, a5, a7), v59 = objc_claimAutoreleasedReturnValue(), v12, (v12 = v59) == 0))
  {
    v12 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);
  }

LABEL_35:

  return v12;
}

TSCEArgumentAccessor *sub_22125CCD0(_DWORD *a1, void *a2, void *a3, void *a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (!a1)
  {
    v12 = 0;
    goto LABEL_48;
  }

  v12 = a2;
  v17 = objc_msgSend_nativeType(v12, v13, v14, v15, v16);
  v20 = objc_msgSend_deepType_outError_(v12, v18, a3, a7, v19);
  v24 = TSCEArgumentAccessor::isFromAReference(v12, a6, v21, v22, v23);
  v29 = a1[11];
  if (v29 != 10)
  {
    if (v29 != 11)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSCEFunctionArgSpec _convertToNilIfIgnoring_Var:context:functionSpec:argIndex:fromInsideArray:outError:]", v27, v28);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFunctionArgSpec.mm", v34, v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 1277, 0, "Wrong context for this method.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
      goto LABEL_32;
    }

    if (v24)
    {
      if (v20 == 7)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

    if (v17 != 2)
    {
      if (v17 != 3)
      {
        if (v17 != 7)
        {
          goto LABEL_32;
        }

        v42 = objc_msgSend_locale(a3, v25, v26, v27, v28);
        v44 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v43, a3, a4, a5, a7);
        v49 = v44;
        if (*a7)
        {
          goto LABEL_22;
        }

        if (objc_msgSend_length(v44, v45, v46, v47, v48))
        {
          v71 = TSUCreateDateFromString();
          if (v71)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_31:
      *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v25, v12, a3, a4, a5);
      goto LABEL_32;
    }

    if (!a6)
    {
      goto LABEL_32;
    }

LABEL_11:
    v30 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);

    goto LABEL_27;
  }

  if (v24)
  {
    if (v20 != 2)
    {
      if (v20 == 9)
      {
        v54 = objc_msgSend_functionName(a4, v25, v26, v27, v28);
        *a7 = objc_msgSend_argumentErrorForFunctionName_(TSCEError, v55, v54, v56, v57);

        v53 = objc_msgSend_nilValue(TSCENilValue, v58, v59, v60, v61);
        goto LABEL_25;
      }

      if (v20 != 7)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_11;
  }

  if (v17 == 2)
  {
    goto LABEL_31;
  }

  if (v17 == 10)
  {
LABEL_26:
    v30 = objc_msgSend_zero(TSCENumberValue, v25, v26, v27, v28);

    v20 = 5;
LABEL_27:
    v12 = v30;
    if (!v30)
    {
      goto LABEL_47;
    }

    goto LABEL_33;
  }

  if (v17 == 7)
  {
    v50 = objc_msgSend_locale(a3, v25, v26, v27, v28);
    v52 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v51, a3, a4, a5, a7);
    v49 = v52;
    if (*a7)
    {
LABEL_22:
      v53 = objc_msgSend_nilValue(TSCENilValue, v45, v46, v47, v48);

LABEL_25:
      v12 = v53;
      goto LABEL_48;
    }

    if (objc_msgSend_length(v52, v45, v46, v47, v48))
    {
      v71 = TSUCreateDateFromString();
      if (v71)
      {
LABEL_42:
        v72 = objc_msgSend_dateValue_(TSCEDateValue, v68, v71, v69, v70);
        v20 = 3;
LABEL_45:

LABEL_46:
        v12 = v72;
        if (v72)
        {
          goto LABEL_33;
        }

LABEL_47:
        v12 = objc_msgSend_nilValue(TSCENilValue, v25, v26, v27, v28);
        goto LABEL_48;
      }

LABEL_44:
      v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v68, a3, a4, a5, a7);
      v20 = 5;
      goto LABEL_45;
    }

LABEL_43:
    v72 = objc_msgSend_nilValue(TSCENilValue, v64, v65, v66, v67);
    v20 = 0;
    v71 = v12;
    goto LABEL_46;
  }

LABEL_32:
  if (!v12)
  {
    goto LABEL_47;
  }

LABEL_33:
  if ((objc_msgSend_isNil(v12, v25, v26, v27, v28) & 1) == 0 && !*a7)
  {
    v63 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v62, v12, v20, a3, a4, a5, a7);

    v12 = v63;
    if (!v63)
    {
      goto LABEL_47;
    }
  }

LABEL_48:

  return v12;
}

TSCEArgumentAccessor *sub_22125D204(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (a1)
  {
    v13 = a2;
    v16 = objc_msgSend_deepType_outError_(v13, v14, a3, a7, v15);
    v20 = TSCEArgumentAccessor::isFromAReference(v13, a6, v17, v18, v19);
    if (v16)
    {
      v25 = 0;
    }

    else
    {
      v25 = v20;
    }

    if (v25 == 1)
    {

LABEL_11:
      v13 = objc_msgSend_nilValue(TSCENilValue, v21, v22, v23, v24);
      goto LABEL_12;
    }

    if (!v13)
    {
      goto LABEL_11;
    }

    if ((objc_msgSend_isNil(v13, v21, v22, v23, v24) & 1) == 0 && !*a7)
    {
      v27 = objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v26, v13, v16, a3, a4, a5, a7);

      v13 = v27;
      if (!v27)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_12:

  return v13;
}

TSCEArgumentAccessor *sub_22125D324(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, TSCEValue *a6, void *a7)
{
  if (a1)
  {
    v13 = a2;
    v16 = objc_msgSend_deepType_outError_(v13, v14, a3, a7, v15);
    v20 = TSCEArgumentAccessor::isFromAReference(v13, a6, v17, v18, v19);
    if (v16 == 2)
    {
      v25 = v20;
    }

    else
    {
      v25 = 0;
    }

    if (v25 == 1)
    {
      *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v21, v13, a3, a4, a5);
    }

    if (!v13 || (objc_msgSend_isNil(v13, v21, v22, v23, v24) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v26, v13, v16, a3, a4, a5, a7), v27 = objc_claimAutoreleasedReturnValue(), v13, (v13 = v27) == 0))
    {
      v13 = objc_msgSend_nilValue(TSCENilValue, v21, v22, v23, v24);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_22125D468(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    v12 = a2;
    v15 = objc_msgSend_deepType_outError_(v12, v13, a3, a7, v14);
    v20 = v15;
    if (v15 && v15 != 5)
    {
      *a7 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v16, v12, a3, a4, a5);
    }

    if (!v12 || (objc_msgSend_isNil(v12, v16, v17, v18, v19) & 1) == 0 && !*a7 && (objc_msgSend_boundsCheckAndCoerce_valueDeepType_context_functionSpec_argIndex_outError_(a1, v21, v12, v20, a3, a4, a5, a7), v22 = objc_claimAutoreleasedReturnValue(), v12, (v12 = v22) == 0))
    {
      v12 = objc_msgSend_nilValue(TSCENilValue, v16, v17, v18, v19);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void TSCEFormulaRewriteContextRecord::TSCEFormulaRewriteContextRecord(TSCEFormulaRewriteContextRecord *this, TSCEFormulaContainingCell *a2)
{
  sub_2212C72BC(this, a2);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 256;
  *(v2 + 82) = 0;
  *(v2 + 86) = 0;
}

{
  sub_2212C72BC(this, a2);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 256;
  *(v2 + 82) = 0;
  *(v2 + 86) = 0;
}

TSCEFormulaRewriteContextRecord *TSCEFormulaRewriteContextRecord::reset(TSCEFormulaRewriteContextRecord *this)
{
  this->var2 = 0;
  *&this->var3 = 256;
  *&this->var5 = 0;
  this->var9 = 0;
  return this;
}

uint64_t TSCEFormulaRewriteContextRecord::operator=(uint64_t a1, uint64_t a2)
{
  sub_2212C72E8(a1, a2);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 86) = *(a2 + 86);
  return a1;
}

void TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(TSCEFormulaRewriteContext *this)
{
  this->var0 = 0;
  this->var1 = 0;
  sub_2212C7250(v2);
  sub_2212C72BC(&this->var2, v2);
  this->var2.var1._lower = 0;
  this->var2.var1._upper = 0;
  this->var2.var2 = 0;
  *&this->var2.var3 = 256;
  *&this->var2.var5 = 0;
  *&this->var2.var8 = 0;
}

void TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(TSCEFormulaRewriteContext *this, TSCECalculationEngine *a2, __n128 *a3)
{
  this->var0 = a2;
  this->var1 = 0;
  sub_2212C7294(v4, a3);
  sub_2212C72BC(&this->var2, v4);
  this->var2.var1._lower = 0;
  this->var2.var1._upper = 0;
  this->var2.var2 = 0;
  *&this->var2.var3 = 256;
  *&this->var2.var5 = 0;
  *&this->var2.var8 = 0;
}

void TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(TSCEFormulaRewriteContext *this, TSCECalculationEngine *a2, TSCEFormulaContainingCell *a3)
{
  this->var0 = a2;
  this->var1 = 0;
  sub_2212C72BC(v4, a3);
  sub_2212C72BC(&this->var2, v4);
  this->var2.var1._lower = 0;
  this->var2.var1._upper = 0;
  this->var2.var2 = 0;
  *&this->var2.var3 = 256;
  *&this->var2.var5 = 0;
  *&this->var2.var8 = 0;
}

__n128 TSCEFormulaRewriteContext::setResolverTableUID(TSCEFormulaRewriteContext *this, const TSKUIDStruct *a2)
{
  result = *a2;
  this->var2.var1 = *a2;
  return result;
}

uint64_t sub_22125F1C8(TSUIndexSet *a1)
{
  if (!TSUIndexSet::count(a1))
  {
    v3 = 1;
    goto LABEL_7;
  }

  Index = TSUIndexSet::lastIndex(a1);
  v3 = Index + 1;
  if (Index != 65534)
  {
LABEL_7:
    TSUIndexSet::addIndex(a1);
    return v3;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0xFFFFLL;
  TSUIndexSet::enumerateRangesUsingBlock();
  v3 = -1;
  if (v6[3] != 0xFFFF)
  {
    TSUIndexSet::addIndex(a1);
    v3 = *(v6 + 12);
  }

  _Block_object_dispose(&v5, 8);
  return v3;
}

void sub_22125F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22125F2E0(uint64_t result, uint64_t *a2, _BYTE *a3)
{
  if (*a2 < 2)
  {
    v4 = a2[1];
    if (v4 > 65533)
    {
      return result;
    }

    v3 = v4 + 1;
  }

  else
  {
    v3 = *a2 - 1;
  }

  *(*(*(result + 32) + 8) + 24) = v3;
  *a3 = 1;
  return result;
}

uint64_t sub_22125F320(uint64_t a1)
{
  TSUIndexSet::TSUIndexSet((a1 + 8));
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *a1 = 0;
  __dmb(0xBu);
  return a1;
}

void sub_22125F390(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v27[0] = 0;
  v27[1] = 0;
  v25[1] = 0;
  v26 = v27;
  v24 = v25;
  v25[0] = 0;
  for (i = *(a1 + 56); i; i = *i)
  {
    v28 = i + 2;
    *(sub_221260474(&v26, i + 8) + 5) = *(i + 3);
  }

  for (j = *(a1 + 216); j; j = *j)
  {
    LOWORD(v28) = *(j + 8);
    sub_221260548(&v24, &v28);
  }

  os_unfair_lock_unlock(a1);
  v6 = v26;
  if (v26 != v27)
  {
    while (1)
    {
      v7 = *(a2 + 32);
      if (!v7)
      {
        goto LABEL_11;
      }

      v8 = *(a2 + 24);
      v9 = *v7;
      if (v8 >= *v7)
      {
        break;
      }

      *(a2 + 24) = v8 + 1;
      v10 = *&v7[2 * v8 + 2];
LABEL_13:
      v13 = *(v10 + 16);
      *(v10 + 32) = *(v6 + 16);
      *(v10 + 16) = v13 | 3;
      v14 = *(v10 + 24);
      if (!v14)
      {
        v15 = *(v10 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x223DA0300](v15);
        *(v10 + 24) = v14;
      }

      TSKUIDStruct::saveToMessage((v6 + 5), v14);
      v16 = v6[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v6[2];
          v18 = *v17 == v6;
          v6 = v17;
        }

        while (!v18);
      }

      v6 = v17;
      if (v17 == v27)
      {
        goto LABEL_23;
      }
    }

    if (v9 == *(a2 + 28))
    {
LABEL_11:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
      v7 = *(a2 + 32);
      v9 = *v7;
    }

    *v7 = v9 + 1;
    v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry>(*(a2 + 16));
    v11 = *(a2 + 24);
    v12 = *(a2 + 32) + 8 * v11;
    *(a2 + 24) = v11 + 1;
    *(v12 + 8) = v10;
    goto LABEL_13;
  }

LABEL_23:
  v19 = v24;
  if (v24 != v25)
  {
    v20 = *(a2 + 40);
    do
    {
      v21 = *(v19 + 13);
      if (v20 == *(a2 + 44))
      {
        sub_2210BBC64((a2 + 40), v20 + 1);
      }

      *(*(a2 + 48) + 4 * v20++) = v21;
      *(a2 + 40) = v20;
      v22 = v19[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v19[2];
          v18 = *v23 == v19;
          v19 = v23;
        }

        while (!v18);
      }

      v19 = v23;
    }

    while (v23 != v25);
  }

  sub_2210BC9F8(&v24, v25[0]);
  sub_2210BC9F8(&v26, v27[0]);
}

void sub_22125F610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  sub_2210BC9F8(&a9, a10);
  sub_2210BC9F8(&a12, a13);
  _Unwind_Resume(a1);
}

void sub_22125F640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0x277D81000uLL;
    do
    {
      v43 = *(*(*(a2 + 32) + 8 * v5 + 8) + 32);
      *&v42[2] = 0uLL;
      *&v42[2] = TSKUIDStruct::loadFromMessage();
      *&v42[6] = v7;
      if (*&v42[2] | v7)
      {
        if (sub_2210875C4((a1 + 80), &v42[2]))
        {
          v42[1] = *(sub_2210875C4((a1 + 80), &v42[2]) + 16);
          v10 = v42[1];
          if (v42[1] >= v43)
          {
            v11 = v43;
          }

          else
          {
            v11 = v42[1];
          }

          v42[0] = v11;
          if (v43 > v42[1])
          {
            v10 = v43;
          }

          v41 = v10;
          v12 = TSKUIDStruct::description(&v42[2]);
          NSLog(&cfstr_FoundDuplicate.isa, v12, v43, v42[1]);

          if (v42[1] == v41)
          {
            sub_221142C34((a1 + 40), &v42[1]);
            v44 = v42;
            v13 = sub_221260614((a1 + 40), v42);
            *(v13 + 3) = *&v42[2];
          }

          v14 = v42[0];
          v44 = &v42[2];
          *(sub_221260850((a1 + 80), &v42[2]) + 16) = v14;
          v15 = *(a1 + 136);
          v16 = v42[0];
          if (v15)
          {
            v17 = v41;
            do
            {
              if (*(v15 + 9) == v17)
              {
                *(v15 + 9) = v16;
              }

              v15 = *v15;
            }

            while (v15);
          }

          v44 = &v41;
          *(sub_2211DBBEC((a1 + 120), &v41) + 9) = v16;
          v18 = v42[0];
          v43 = v42[0];
        }

        else
        {
          v44 = &v43;
          v31 = sub_221260614((a1 + 40), &v43);
          *(v31 + 3) = *&v42[2];
          v32 = v43;
          v44 = &v42[2];
          *(sub_221260850((a1 + 80), &v42[2]) + 16) = v32;
          v18 = v43;
        }

        if (v18 != 0xFFFF)
        {
          TSUIndexSet::addIndex((a1 + 8));
        }
      }

      else
      {
        v19 = v6;
        v20 = *(v6 + 336);
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSCEIDMap::loadFromArchive(const TSCE::OwnerIDMapArchive &)", v8, v9);
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEIDMap.mm", v23, v24);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 141, 0, "Got an invalid ownerUID during loadFromArchive, internalOwnerID: %lu", v43);

        v6 = v19;
        objc_msgSend_logBacktraceThrottled(*(v19 + 336), v27, v28, v29, v30);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  v33 = *(a2 + 40);
  if (v33 >= 1)
  {
    v34 = 0;
    v35 = 4 * v33;
    do
    {
      v42[2] = *(*(a2 + 48) + v34);
      sub_22123E79C((a1 + 200), &v42[2]);
      if (v42[2] != 0xFFFFLL)
      {
        TSUIndexSet::addIndex((a1 + 8));
      }

      v34 += 4;
    }

    while (v35 != v34);
  }

  if (*(a1 + 144))
  {
    NSLog(&cfstr_RepairedDuplic.isa);
    for (i = *(a1 + 136); i; i = *i)
    {
      v37 = i[9];
      v38 = i[8];
      *&v42[2] = i + 9;
      v39 = sub_221260614((a1 + 40), i + 9);
      v40 = TSKUIDStruct::description((v39 + 3));
      NSLog(&cfstr_DD_0.isa, v38, v37, v40);
    }
  }
}

uint64_t sub_22125FA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  if (!(a2 | a3))
  {
    return 0xFFFFLL;
  }

  os_unfair_lock_lock(a1);
  v4 = sub_221119F90((a1 + 80), v7);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0xFFFFLL;
  }

  os_unfair_lock_unlock(a1);
  return v5;
}

uint64_t sub_22125FA70(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v65._lower = a2;
  v65._upper = a3;
  if (!(a2 | a3))
  {
    return 0xFFFFLL;
  }

  os_unfair_lock_lock(a1);
  v4 = sub_2210875C4((a1 + 80), &v65);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v6 = sub_22125F1C8((a1 + 8));
    v64 = v6;
    if (v6 == 0xFFFF)
    {
      v52 = MEMORY[0x277D81150];
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "TSCEInternalFormulaOwnerID TSCEIDMap::registerUID(TSCEOwnerUID)", v8, v9);
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEIDMap.mm", v55, v56);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v58, v53, v57, 195, 0, "Warning: internal ownerID map is full - too many owners.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61, v62);
    }

    else
    {
      if (sub_2210C3024((a1 + 40), &v64))
      {
        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "TSCEInternalFormulaOwnerID TSCEIDMap::registerUID(TSCEOwnerUID)", v11, v12);
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEIDMap.mm", v16, v17);
        v19 = v64;
        v66 = &v64;
        v20 = sub_221260614((a1 + 40), &v64);
        v21 = TSKUIDStruct::description((v20 + 3));
        v22 = TSKUIDStruct::description(&v65);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v23, v14, v18, 202, 0, "new ID %lu is already in use by %@ - attempted reuse by %@", v19, v21, v22);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
      }

      v66 = &v64;
      v28 = sub_221260614((a1 + 40), &v64);
      *(v28 + 3) = v65;
      if (sub_2210875C4((a1 + 80), &v65))
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "TSCEInternalFormulaOwnerID TSCEIDMap::registerUID(TSCEOwnerUID)", v30, v31);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEIDMap.mm", v35, v36);
        v66 = &v65;
        v38 = *(sub_221260850((a1 + 80), &v65) + 16);
        v39 = v64;
        v40 = TSKUIDStruct::description(&v65);
        v45 = sub_22125FDC8(a1, v41, v42, v43, v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v46, v33, v37, 205, 0, "About to overwrite a reference in _uidToInternalIDMap: %d -> %d for ownerUID: %{public}@ in Map: %{public}@", v38, v39, v40, v45);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
      }

      v51 = v64;
      v66 = &v65;
      *(sub_221260850((a1 + 80), &v65) + 16) = v51;
    }

    v5 = v64;
  }

  os_unfair_lock_unlock(a1);
  return v5;
}

id sub_22125FDC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"TSCEIDMap:\n", a4, a5);
  os_unfair_lock_lock(a1);
  for (i = *(a1 + 56); i; i = *i)
  {
    v11 = *(i + 8);
    v12 = TSKUIDStruct::description((i + 3));
    objc_msgSend_appendFormat_(v6, v13, @"  %d -> %@\n", v14, v15, v11, v12);
  }

  for (j = (a1 + 216); ; objc_msgSend_appendFormat_(v6, v7, @"  %d -> <UNREGISTERED>\n", v8, v9, *(j + 8)))
  {
    j = *j;
    if (!j)
    {
      break;
    }
  }

  os_unfair_lock_unlock(a1);

  return v6;
}

uint64_t sub_22125FECC(os_unfair_lock_t lock, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  result = 0xFFFFLL;
  v6 = -1;
  if (a2 | a3)
  {
    os_unfair_lock_lock(lock);
    v5 = sub_2210875C4(&lock[20]._os_unfair_lock_opaque, v7);
    if (v5)
    {
      v6 = *(v5 + 16);
      sub_2211F2EF4(&lock[20]._os_unfair_lock_opaque, v7);
      sub_221142C34(&lock[10]._os_unfair_lock_opaque, &v6);
      sub_22123E79C(&lock[50]._os_unfair_lock_opaque, &v6);
    }

    os_unfair_lock_unlock(lock);
    return v6;
  }

  return result;
}

uint64_t **sub_22125FF5C(uint64_t **result, int a2)
{
  v5 = a2;
  if (a2 != 0xFFFF)
  {
    v2 = result;
    v3 = sub_22125FFE0(result, a2);
    if (v3 | v4)
    {

      return sub_22125FECC(v2, v3, v4);
    }

    else
    {
      return sub_22123E79C(v2 + 25, &v5);
    }
  }

  return result;
}