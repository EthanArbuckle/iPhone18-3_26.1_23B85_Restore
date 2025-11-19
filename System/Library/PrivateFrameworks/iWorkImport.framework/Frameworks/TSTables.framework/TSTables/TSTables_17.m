void sub_22141E15C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22141E170(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22141E170(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2210BDEC0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_22141E1BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_22141E234(a1, i + 2);
  }

  return a1;
}

void *sub_22141E234(void *a1, void *a2)
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
    sub_22141E470();
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

void sub_22141E45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22141DE78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22141E4F8(uint64_t a1)
{
  sub_22141E534(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22141E534(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_221122744((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_22141E578(void *a1, void *a2)
{
  result = sub_2210875C4(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_22141DE78(v4);
    return 1;
  }

  return result;
}

uint64_t sub_22141E5C4(uint64_t a1)
{
  sub_22141E600(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22141E600(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2210BDEC0((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_22141EAB0(int a1, double a2)
{
  v2 = fabs(a2);
  if (a1 < 0)
  {
    v2 = -v2;
  }

  v3 = floor(v2 * 128.0 + 0.5) * 0.0078125;
  v4 = v3 * v3;
  v5 = (v2 - v3) * (v2 - v3) + (v3 + v3) * (v2 - v3);
  v6 = -(v3 * v3);
  if (a1 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (a1 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = -v5;
  }

  if (v7 + v8 <= *&qword_27CFB4C58)
  {
    exp(v7);
    exp(v8);
  }
}

uint64_t sub_22141ED50(uint64_t a1, uint64_t a2)
{
  v2 = *sub_22141EDF4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_22141EDF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *(a3 + 56);
    v7 = *(a3 + 60);
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 22);
        if (v6 >= v9 && (v6 != v9 || v7 >= *(v8 + 46)))
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

      if (v9 >= v6 && *(v8 + 46) >= v7)
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

__n128 sub_22141FF04(__n128 *a1, __n128 *a2)
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

void sub_22141FF28(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

double sub_22141FF40(uint64_t a1, const char *a2)
{
  v4 = a2 - *(*(a1 + 32) + 160);
  objc_msgSend_heightOfRow_skipDynamicSwap_withStrokeHeights_returnZeroIfHidden_clampToPartitionSize_maximumPartitionSize_outIsFitting_(*(a1 + 40), a2, a2, 0, 1, 1, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
  *(*(*(*(a1 + 48) + 8) + 48) + 8 * v4) = v9;
  v10 = *(*(*(a1 + 48) + 8) + 48);
  v11 = *(v10 + 8 * v4);
  if (v11 == 0.0)
  {
    *(*(*(*(a1 + 56) + 8) + 48) + 8 * v4) = 0;
    --*(*(a1 + 32) + 168);
  }

  else
  {
    *(v10 + 8 * v4) = v11 / *(a1 + 96);
    v12 = objc_msgSend_tableRowsBehavior(*(a1 + 40), v5, v6, v7, v8);
    v16 = 8.0;
    if (v12 == 1 && (*(a1 + 104) & 1) == 0)
    {
      objc_msgSend_fittingHeightOfRow_(*(a1 + 40), v13, a2, v14, v15, 8.0);
    }

    *(*(*(*(a1 + 56) + 8) + 48) + 8 * v4) = v16;
    v17 = *(*(*(a1 + 56) + 8) + 48);
    *(v17 + 8 * v4) = *(v17 + 8 * v4) / *(a1 + 96);
    if (*(*(*(a1 + 64) + 8) + 24) < 0.0 || *(*(*(a1 + 72) + 8) + 24) != a2 - 1)
    {
      objc_msgSend_strokeHeightOfGridRow_inColumnRange_(*(a1 + 40), v13, a2, 0, 2147483646);
      *(*(*(a1 + 64) + 8) + 24) = v18;
      *(*(*(a1 + 72) + 8) + 24) = a2;
    }

    objc_msgSend_strokeHeightOfGridRow_inColumnRange_(*(a1 + 40), v13, (a2 + 1), 0, 2147483646);
    *(*(*(a1 + 80) + 8) + 24) = v19;
    v20 = *(*(*(a1 + 56) + 8) + 48);
    *(v20 + 8 * v4) = (*(*(*(a1 + 64) + 8) + 24) + *(*(*(a1 + 80) + 8) + 24)) * 0.5 + *(v20 + 8 * v4);
    *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24);
  }

  v21 = *(*(a1 + 88) + 8);
  result = *(*(*(*(a1 + 48) + 8) + 48) + 8 * v4) + *(v21 + 24);
  *(v21 + 24) = result;
  return result;
}

double sub_221420138(uint64_t a1, const char *a2)
{
  v4 = a2 - *(*(a1 + 32) + 154);
  objc_msgSend_widthOfColumn_skipDynamicSwap_returnZeroIfHidden_outIsFitting_(*(a1 + 40), a2, a2, 1, 1, 0);
  *(*(*(*(a1 + 48) + 8) + 48) + 8 * v4) = v6;
  v7 = *(*(*(a1 + 48) + 8) + 48);
  v8 = *(v7 + 8 * v4);
  if (v8 == 0.0)
  {
    *(*(*(*(a1 + 56) + 8) + 48) + 8 * v4) = 0;
    --*(*(a1 + 32) + 176);
  }

  else
  {
    *(v7 + 8 * v4) = v8 / *(a1 + 96);
    *(*(*(*(a1 + 56) + 8) + 48) + 8 * v4) = 0x4020000000000000;
    if (*(*(*(a1 + 64) + 8) + 24) < 0.0 || a2 - 1 != *(*(*(a1 + 72) + 8) + 24))
    {
      objc_msgSend_strokeWidthOfGridColumn_inRowRange_(*(a1 + 40), v5, a2, 0, 2147483646);
      *(*(*(a1 + 64) + 8) + 24) = v9;
      *(*(*(a1 + 72) + 8) + 24) = a2;
    }

    objc_msgSend_strokeWidthOfGridColumn_inRowRange_(*(a1 + 40), v5, (a2 + 1), 0, 2147483646);
    *(*(*(a1 + 80) + 8) + 24) = v10;
    v11 = *(*(*(a1 + 56) + 8) + 48);
    *(v11 + 8 * v4) = (*(*(*(a1 + 64) + 8) + 24) + *(*(*(a1 + 80) + 8) + 24)) * 0.5 + *(v11 + 8 * v4);
    *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24);
  }

  v12 = *(*(a1 + 88) + 8);
  result = *(*(*(*(a1 + 48) + 8) + 48) + 8 * v4) + *(v12 + 24);
  *(v12 + 24) = result;
  return result;
}

void sub_221420820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221420840(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221420858(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, a3, a4, a5);
  objc_msgSend_addObject_(v5, v6, v9, v7, v8);
}

void sub_2214209D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2214209F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, a3, a4, a5);
  objc_msgSend_addObject_(v5, v6, v9, v7, v8);
}

void *sub_221420DAC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_221123150(result, a2);
  }

  return result;
}

void sub_221420E68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_22142210C(uint64_t **result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = result;
    v11 = a2;
    v6 = result[4][13];
    v7 = objc_msgSend_columnUIDForViewColumnIndex_(v6, a2, a2, a4, a5);
    LOWORD(v6) = objc_msgSend_baseColumnIndexForColumnUID_(v6, v8, v7, v8, v9);
    v10 = v5[4];
    v12 = &v11;
    result = sub_221423DD0(v10 + 1, &v11);
    *(result + 9) = v6;
  }

  return result;
}

void sub_22142225C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSTCategoryStoreIterator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t **sub_221423DD0(void *a1, unsigned __int16 *a2)
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

uint64_t **sub_22142400C(void *a1, unsigned __int16 *a2)
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

unint64_t sub_22142575C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_attributeArrayForKind_(a1, a2, 10, a4, a5);
  if (!v5)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  if (TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v5) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPStorage(TablesAdditions) hyperlinkCellID]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSWPStorage_TablesAdditions.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 63, 0, "cell attribute array should not be empty");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  v20 = TSWPAttributeRecord::paragraphData();
  return *v20 | (v20[1] << 32);
}

uint64_t sub_221425860(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_hyperlinkCellID(a1, a2, a3, a4, a5);
  if (a3 != result || ((result ^ a3) & 0xFFFF00000000) != 0)
  {
    result = objc_msgSend_attributeArrayForKind_withCreate_(a1, v8, 10, 1, v9);
    if (result)
    {
      (*(*result + 64))(result, 0, *(result + 24), 0);
      TSWPAttributeRecord::TSWPAttributeRecord();
      return TSWPAttributeArray::nonUndoableInsertAttribute();
    }
  }

  return result;
}

void sub_22142591C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend_length(a1, v5, v6, v7, v8);
  objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(a1, v10, v4, v9, 0, 0);
  v13 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v4, v11, 0, v41, v12);
  v16 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(a1, v14, v9, 0, v15);
  v21 = objc_msgSend_propertyMap(v13, v17, v18, v19, v20);
  v26 = objc_msgSend_properties(MEMORY[0x277D80DB0], v22, v23, v24, v25);
  v30 = objc_msgSend_propertyMapWithProperties_(v21, v27, v26, v28, v29);

  v31 = v41[0];
  v32 = v41[1];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_221425AF0;
  v36[3] = &unk_278464E70;
  v37 = v30;
  v38 = a1;
  v33 = v16;
  v39 = v33;
  v40 = v9;
  v34 = v30;
  objc_msgSend_enumerateWithAttributeKind_inRange_usingBlock_(v4, v35, 3, v31, v32, v36);
}

void sub_221425AF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v15 = objc_msgSend_copy(*(a1 + 32), v7, v8, v9, v10);
  if (v24)
  {
    v16 = objc_msgSend_propertyMap(v24, v11, v12, v13, v14);
    objc_msgSend_addValuesFromPropertyMap_(v15, v17, v16, v18, v19);
  }

  v20 = objc_msgSend_stylesheet(*(a1 + 40), v11, v12, v13, v14);
  v22 = objc_msgSend_variationOfCharacterStyle_paragraphStyle_propertyMap_(v20, v21, v24, *(a1 + 48), v15);

  objc_msgSend_setCharacterStyle_range_undoTransaction_(*(a1 + 40), v23, v22, *(a1 + 56) + a3, a4, 0);
}

BOOL sub_221425C10(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_attachmentCount(a1, a2, a3, a4, a5);
  if (v6)
  {
    v9 = v6;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v7, v10, 0, v8);
      v17 = objc_msgSend_changesWithPageCount(v12, v13, v14, v15, v16);

      if (v17)
      {
        break;
      }

      v11 = ++v10 < v9;
    }

    while (v9 != v10);
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t sub_221425CAC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_attachmentCount(a1, a2, a3, a4, a5);
  if (!v6)
  {
    return 0;
  }

  v9 = 0;
  v10 = v6 - 1;
  while (1)
  {
    v11 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(a1, v7, v9, 0, v8);
    if (objc_msgSend_changesWithPageNumber(v11, v12, v13, v14, v15))
    {
      break;
    }

    v20 = objc_msgSend_changesWithPageCount(v11, v16, v17, v18, v19);

    if (v10 == v9++)
    {
      v22 = 1;
    }

    else
    {
      v22 = v20;
    }

    if (v22 == 1)
    {
      return v20;
    }
  }

  return 1;
}

void sub_2214265F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

BOOL sub_221426BFC(uint64_t a1)
{
  v1 = (a1 + 24);
  do
  {
    v1 = *v1;
  }

  while (v1 && v1[3] == v1[4]);
  return v1 == 0;
}

uint64_t sub_221426C20(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += (v1[4] - v1[3]) >> 5;
    v1 = *v1;
  }

  while (v1);
  return result;
}

void sub_221426C4C(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = 0;
    do
    {
      v5 = a2[2];
      if (v4 >= v5)
      {
        v6 = *a2;
        v7 = v4 - *a2;
        v8 = v7 >> 1;
        if (v7 >> 1 <= -2)
        {
          sub_22107C148();
        }

        v9 = v5 - v6;
        if (v9 <= v8 + 1)
        {
          v10 = v8 + 1;
        }

        else
        {
          v10 = v9;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          sub_22115DB94(a2, v11);
        }

        *(2 * v8) = *(v2 + 8);
        v4 = (2 * v8 + 2);
        memcpy(0, v6, v7);
        v12 = *a2;
        *a2 = 0;
        a2[1] = v4;
        a2[2] = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v4 = *(v2 + 8);
        v4 += 2;
      }

      a2[1] = v4;
      v2 = *v2;
    }

    while (v2);
  }
}

void sub_221426D54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_221426D74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (a1 + 24);
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v7 = v6[4];
    if (v6[3] != v7)
    {
      return v7 - 32;
    }
  }

  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "const TSCECellToEvaluate &TSCEInProgressQueue::back()", a4, a5);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEInProgressQueue.mm", v12, v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 80, 0, "Shouldn't call back() from empty in-progress queue");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  return a1 + 48;
}

uint64_t sub_221426E50(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = result;
    while (1)
    {
      v3 = v1[4];
      if (v1[3] != v3)
      {
        break;
      }

      result = sub_2214270C4((v2 + 8), v1);
      v1 = *(v2 + 24);
      if (!v1)
      {
        return result;
      }
    }

    v1[4] = v3 - 32;
  }

  return result;
}

void sub_221426EA4(uint64_t a1, uint64_t a2)
{
  if (*a2 != 0x7FFFFFFF && (*a2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v10 = v2;
    v11 = v3;
    v8 = *(a2 + 8);
    v7 = sub_2210C3024((a1 + 8), &v8);
    if (!v7)
    {
      v9 = &v8;
      v7 = sub_221427174((a1 + 8), &v8);
    }

    sub_221230A4C((v7 + 3), a2);
  }
}

void sub_221426F40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  for (i = (a1 + 24); ; sub_2214273D0(a2, *(a2 + 8), i[3], i[4], (i[4] - i[3]) >> 5))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  sub_221427068(a1 + 8);
}

void sub_221426FB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_221426FCC@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, uint64_t **a3@<X8>)
{
  v7 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_2210C3024((a1 + 8), &v7);
  v6 = result;
  if (result)
  {
    if (result + 3 != a3)
    {
      sub_2214275D0(a3, result[3], result[4], (result[4] - result[3]) >> 5);
    }

    return sub_2214270C4((a1 + 8), v6);
  }

  return result;
}

void sub_22142704C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221427068(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_22123E750(a1, *(a1 + 16));
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

uint64_t sub_2214270C4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_221427110(&v6, v3);
  }

  return v2;
}

void sub_221427110(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **sub_221427174(void *a1, unsigned __int16 *a2)
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

char *sub_2214273D0(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 5);
    if (v12 >> 59)
    {
      sub_22107C148();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      sub_22123E9D0(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = v7[1];
      v7 += 2;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, a1[1] - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + a1[1] - v5;
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = (v10 - __dst) >> 5;
  if (v17 >= a5)
  {
    v23 = &__dst[32 * a5];
    v24 = &v10[-32 * a5];
    v25 = a1[1];
    while (v24 < v10)
    {
      v26 = *v24;
      v27 = *(v24 + 1);
      v24 += 32;
      *v25 = v26;
      v25[1] = v27;
      v25 += 2;
    }

    a1[1] = v25;
    if (v10 != v23)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v23);
    }

    v33 = 32 * a5;
    v34 = v5;
    v35 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v22 = *(v18 + 1);
    v18 += 32;
    *v20 = v21;
    *(v20 + 1) = v22;
    v20 += 32;
    v19 += 32;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v28 = &__dst[32 * a5];
    v29 = &v19[-32 * a5];
    v30 = v19;
    while (v29 < v10)
    {
      v31 = *v29;
      v32 = *(v29 + 1);
      v29 += 32;
      *v30 = v31;
      *(v30 + 1) = v32;
      v30 += 32;
    }

    a1[1] = v30;
    if (v20 != v28)
    {
      memmove(&__dst[32 * a5], __dst, v19 - v28);
    }

    if (v10 != v5)
    {
      v34 = v5;
      v35 = v7;
      v33 = v10 - v5;
LABEL_34:
      memmove(v34, v35, v33);
    }
  }

  return v5;
}

void *sub_2214275D0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221377718(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
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

void sub_221427DE8(void *a1, unsigned int *a2)
{
  LOWORD(v13) = *(a2 + 4);
  BYTE2(v13) = *(a2 + 10);
  v4 = sub_22142D154(a1, &v13);
  if (v4)
  {
    v5 = v4[3];
    objc_msgSend_addIndexesInRange_(v5, v6, *a2, a2[1] - *a2 + 1, v7);
  }

  else
  {
    v8 = objc_opt_new();
    v11 = v13;
    v5 = v8;
    v12 = v5;
    sub_22142D220(a1, &v11);

    objc_msgSend_addIndexesInRange_(v5, v9, *a2, a2[1] - *a2 + 1, v10);
  }
}

void sub_221427EC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = (a1 + 16);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v6 = *(v5 + 8);
    v7 = *(v5 + 18);
    v8 = v5[3];
    v18 = 0x7FFFFFFF;
    v19 = v6;
    v20 = v7;
    for (i = objc_msgSend_firstIndex(v8, v9, v10, v11, v12); ; i = objc_msgSend_indexGreaterThanIndex_(v8, v15, i, v16, v17))
    {
      v14 = v21;
      if (i == 0x7FFFFFFFFFFFFFFFLL || (v21 & 1) != 0)
      {
        break;
      }

      v18 = i;
      v3[2](v3, &v18, &v21);
    }
  }

  while ((v14 & 1) == 0);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_221427FD0(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  while (1)
  {
    v4 = *(v2 + 3);
    result = sub_22142D4A0(a2, v2 + 8);
    if (!result)
    {
      break;
    }

    v9 = *(result + 24);
    if (v4 != v9)
    {
      result = objc_msgSend_isEqualToIndexSet_(v4, v6, v9, v7, v8);
      if (!result)
      {
        break;
      }
    }

    v2 = *v2;
    if (!v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t **sub_221428054(void *a1, unsigned int *a2)
{
  v7 = *(a2 + 2);
  v8 = *(a2 + 6);
  result = sub_22142D4A0(a1, &v7);
  if (result)
  {
    return objc_msgSend_containsIndex_(result[3], v4, *a2, v5, v6);
  }

  return result;
}

uint64_t sub_2214280A4(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22142816C;
  v4[3] = &unk_278464E98;
  v4[4] = &v5;
  v4[5] = a1;
  sub_221427EC4(a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_221428154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t **sub_22142816C(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  result = sub_221428054(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

void sub_2214281BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  context = objc_autoreleasePoolPush();
  v4 = (a1 + 16);
  do
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 8);
    v6 = *(v4 + 18);
    v7 = v4[3];
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x4012000000;
    v16[3] = sub_221428390;
    v16[4] = nullsub_76;
    v16[5] = &unk_22188E88F;
    v16[6] = 0x8000000080000000;
    v17 = v5;
    v18 = v6;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2214283A8;
    v12[3] = &unk_278464EC0;
    v14 = v16;
    v13 = v3;
    v15 = &v19;
    objc_msgSend_enumerateRangesUsingBlock_(v7, v8, v12, v9, v10);
    LOBYTE(v5) = *(v20 + 24);

    _Block_object_dispose(v16, 8);
  }

  while ((v5 & 1) == 0);
  objc_autoreleasePoolPop(context);
  _Block_object_dispose(&v19, 8);
}

void sub_221428354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221428390(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 55) = *(a2 + 55);
  *(result + 48) = v2;
  return result;
}

uint64_t sub_2214283A8(void *a1, int a2, int a3, _BYTE *a4)
{
  *(*(a1[5] + 8) + 48) = a2;
  *(*(a1[5] + 8) + 52) = a2 + a3 - 1;
  result = (*(a1[4] + 16))();
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void sub_221428428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      v18 = v2[2];
      if (v2[6])
      {
        break;
      }

LABEL_15:
      v2 = *v2;
      if (!v2)
      {
        return;
      }
    }

    v4 = *(a2 + 40);
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = *(a2 + 32);
    v6 = *v4;
    if (v5 < *v4)
    {
      *(a2 + 32) = v5 + 1;
      v7 = *&v4[2 * v5 + 2];
LABEL_10:
      *(v7 + 16) |= 1u;
      v10 = *(v7 + 48);
      if (!v10)
      {
        v11 = *(v7 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v11);
        *(v7 + 48) = v10;
      }

      sub_221269820(&v18, v10);
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2020000000;
      v17 = 0;
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2020000000;
      v15 = 0;
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v13[3] = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_22142863C;
      v12[3] = &unk_278464EE8;
      v12[4] = v13;
      v12[5] = v16;
      v12[6] = v14;
      v12[7] = v7;
      sub_2214281BC((v2 + 3), v12);
      _Block_object_dispose(v13, 8);
      _Block_object_dispose(v14, 8);
      _Block_object_dispose(v16, 8);
      goto LABEL_15;
    }

    if (v6 == *(a2 + 36))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 24));
      v4 = *(a2 + 40);
      v6 = *v4;
    }

    *v4 = v6 + 1;
    v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents>(*(a2 + 24));
    v8 = *(a2 + 32);
    v9 = *(a2 + 40) + 8 * v8;
    *(a2 + 32) = v8 + 1;
    *(v9 + 8) = v7;
    goto LABEL_10;
  }
}

void sub_22142860C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

_DWORD *sub_22142863C(void *a1, int *a2)
{
  v4 = *(*(a1[4] + 8) + 24);
  if (v4 && *(a2 + 4) == *(*(a1[5] + 8) + 24) && *(*(a1[6] + 8) + 24) == *(a2 + 10))
  {
    goto LABEL_12;
  }

  v5 = a1[7];
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v5 + 32);
  v8 = *v6;
  if (v7 >= *v6)
  {
    if (v8 != *(v5 + 36))
    {
LABEL_10:
      *v6 = v8 + 1;
      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext>(*(v5 + 24));
      v10 = *(v5 + 32);
      v11 = *(v5 + 40) + 8 * v10;
      *(v5 + 32) = v10 + 1;
      *(v11 + 8) = v9;
      goto LABEL_11;
    }

LABEL_9:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
    v6 = *(v5 + 40);
    v8 = *v6;
    goto LABEL_10;
  }

  *(v5 + 32) = v7 + 1;
  v9 = *&v6[2 * v7 + 2];
LABEL_11:
  *(*(a1[4] + 8) + 24) = v9;
  v12 = *(*(a1[4] + 8) + 24);
  v13 = *(a2 + 4);
  *(v12 + 16) |= 1u;
  *(v12 + 48) = v13;
  v14 = *(*(a1[4] + 8) + 24);
  v15 = *(a2 + 10);
  *(v14 + 16) |= 2u;
  *(v14 + 52) = v15 != 0;
  *(*(a1[5] + 8) + 24) = v13;
  *(*(a1[6] + 8) + 24) = v15;
  v4 = *(*(a1[4] + 8) + 24);
LABEL_12:
  v16 = *(v4 + 40);
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = *(v4 + 32);
  v18 = *v16;
  if (v17 < *v16)
  {
    *(v4 + 32) = v17 + 1;
    result = *&v16[2 * v17 + 2];
    goto LABEL_19;
  }

  if (v18 == *(v4 + 36))
  {
LABEL_17:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 24));
    v16 = *(v4 + 40);
    v18 = *v16;
  }

  *v16 = v18 + 1;
  result = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpanningDependenciesExpandedArchive_ExtentRange>(*(v4 + 24));
  v20 = *(v4 + 32);
  v21 = *(v4 + 40) + 8 * v20;
  *(v4 + 32) = v20 + 1;
  *(v21 + 8) = result;
LABEL_19:
  v22 = *a2;
  v23 = result[4];
  result[4] = v23 | 1;
  result[6] = v22;
  v24 = a2[1];
  if (*a2 != v24)
  {
    result[4] = v23 | 3;
    result[7] = v24;
  }

  return result;
}

void sub_221428848(void *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      v5 = *(*(a2 + 40) + 8 * i + 8);
      v26 = 0;
      if (*(v5 + 48))
      {
        v6 = *(v5 + 48);
      }

      else
      {
        v6 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      v26 = sub_2212697C0(v6);
      v23 = &v26;
      v7 = sub_22142D56C(a1, &v26);
      v12 = *(v5 + 32);
      if (v12 >= 1)
      {
        v13 = v7;
        for (j = 0; j != v12; ++j)
        {
          v15 = *(*(v5 + 40) + 8 * j + 8);
          v16 = *(v15 + 52);
          v24 = *(v15 + 48);
          v22 = v16;
          v25 = sub_22142898C(&v22, v8, v9, v10, v11);
          v17 = *(v15 + 32);
          if (v17 >= 1)
          {
            v18 = 8;
            do
            {
              v19 = *(*(v15 + 40) + v18);
              v20 = *(v19 + 24);
              LODWORD(v23) = v20;
              if ((*(v19 + 16) & 2) != 0)
              {
                v20 = *(v19 + 28);
              }

              HIDWORD(v23) = v20;
              sub_221427DE8(v13 + 3, &v23);
              v18 += 8;
              --v17;
            }

            while (v17);
          }
        }
      }
    }
  }
}

uint64_t sub_22142898C(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      return 1;
    }

    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCERangeContext formulaRangeContextForArchivedContext(const TSCE::SpanningDependenciesExpandedArchive::RangeContext &)", a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESpanningDependencies.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 48, 0, "unknown range dependency context found in archive! Archive is corrupt.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  return 0;
}

void sub_221428A54(void *a1, uint64_t a2, int *a3)
{
  v5 = a3;
  v4 = sub_22142D56C(a1, a3);
  v6 = *(a2 + 4);
  v7 = *(a2 + 6);
  LODWORD(v5) = *a2;
  HIDWORD(v5) = v5;
  sub_221427DE8(v4 + 3, &v5);
}

void sub_221428AC0(void *a1, int *a2, void *a3)
{
  v5 = a3;
  v6 = sub_2213A0F08(a1, a2);
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_221428BA8;
    v8[3] = &unk_278464F10;
    v9 = v5;
    v10 = a2;
    sub_221427EC4((v6 + 3), v8);

    objc_autoreleasePoolPop(v7);
  }
}

void sub_221428BC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = (a1 + 16);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v6 = v5[2];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_221428CF4;
    v8[3] = &unk_278464F38;
    v7 = v3;
    v10 = &v12;
    v11 = v6;
    v9 = v7;
    sub_2214281BC((v5 + 3), v8);
    LOBYTE(v6) = *(v13 + 24);
  }

  while ((v6 & 1) == 0);
  objc_autoreleasePoolPop(v4);
  _Block_object_dispose(&v12, 8);
}

void sub_221428CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221428CF4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
  return result;
}

void sub_2214291F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22142922C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t **sub_221429244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *a2;
  v26 = *(a2 + 6);
  v6 = *(a2 + 4);
  if (v6 == *(a1 + 64))
  {
    v7 = *(a1 + 32);
    v23 = &v25;
    v8 = sub_22142D88C((v7 + 120), &v25);
    return TSCECellCoordSet::removeCellCoord((v8 + 3), *(a1 + 56));
  }

  else
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (!v10 || objc_msgSend_formulaOwnerId(v10, a2, a3, a4, a5) != v6)
    {
      v11 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, v6, a4, a5);
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v18 = *(*(*(a1 + 40) + 8) + 40);
      if (*(*(a1 + 32) + 34) == 1)
      {
        objc_msgSend_spanningColumnDependencies(v18, v14, v15, v16, v17);
      }

      else
      {
        objc_msgSend_spanningRowDependencies(v18, v14, v15, v16, v17);
      }
      v19 = ;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v19);
    }

    v20 = *(*(*(a1 + 48) + 8) + 40);
    v23 = &v25;
    v21 = sub_22142DAFC((v20 + 160), &v25);
    v22 = *(a1 + 64);
    v23 = (**(a1 + 56) & 0xFFFFFFFFFFFFLL);
    v24 = v22;
    return sub_2212DFDD0(v21 + 3, &v23);
  }
}

uint64_t sub_22142A10C(uint64_t result, const char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = result;
  v10 = a3;
  v11 = a4;
  if (((a2 & 0xFF00000000) == 0x100000000 || (*(result + 56) & 1) == 0) && (*(result + 57) != 1 || (result = objc_msgSend_dgl_findCellRecordInternal_willModifyOnTile_(*(*(result + 32) + 8), a2, &v10, 0, a5)) == 0 || *(v5 + 57) != 1 || (*(result + 38) & 2) == 0))
  {
    v6 = *(v5 + 40);
    v7 = *(*(v5 + 32) + 32);
    v8 = **(v5 + 48) & 0xFFFFFFFFFFFFLL;
    v9 = v7;
    return objc_msgSend_addCellRef_fromCellRef_(v6, a2, &v10, &v8, a5);
  }

  return result;
}

TSCECellCoordSet *sub_22142A230(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a3;
  v12 = a4;
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    result = objc_msgSend_cellRefForInternalCellReference_(result, a2, &v11, a4, a5);
    lower = v10._tableUID._lower;
  }

  else
  {
    lower = 0;
    memset(&v10, 0, sizeof(v10));
  }

  v8 = *(a1 + 40);
  if (lower != *v8)
  {
    return TSCECellRefSet::addCellRef(*(a1 + 48), &v10);
  }

  if (v10._tableUID._upper != v8[1])
  {
    return TSCECellRefSet::addCellRef(*(a1 + 48), &v10);
  }

  v9 = *(a1 + 56);
  if (v10.coordinate.column < WORD2(v9) || v10.coordinate.row > *(a1 + 64) || v10.coordinate.row < v9 || v10.coordinate.column > *(a1 + 68))
  {
    return TSCECellRefSet::addCellRef(*(a1 + 48), &v10);
  }

  return result;
}

TSCECellCoordSet *sub_22142A650(TSCECellCoordSet *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  if (result[1]._rectRepresentation.size.numberOfColumns <= a2)
  {
    v5 = result;
    if (result[1]._rectRepresentation.size.numberOfRows >= a2)
    {
      v6 = *(result->_rowsPerColumn.__tree_.__size_ + 8);
      if (v6)
      {
        objc_msgSend_cellRefForInternalCellReference_(v6, a2, &v8, a4, a5);
      }

      else
      {
        memset(&v7, 0, sizeof(v7));
      }

      return TSCECellRefSet::addCellRef(*&v5[1]._rectRepresentation.origin, &v7);
    }
  }

  return result;
}

TSCECellCoordSet *sub_22142A74C(TSCECellCoordSet *result, unsigned int a2, uint64_t a3, int a4)
{
  v4 = a3;
  v5 = a4;
  if (result[1]._rectRepresentation.origin.row <= a2 && *&result[1]._rectRepresentation.origin.column >= a2)
  {
    return sub_2212DFCE8(result->_rowsPerColumn.__tree_.__size_, &v4);
  }

  return result;
}

uint64_t sub_22142A9BC(uint64_t result, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = *(result + 32);
  if (*(v5 + 34) == 1)
  {
    if (*(result + 44) > a2 || *(result + 52) < a2)
    {
      return result;
    }

    return objc_msgSend_scheduleMarkIntCellRefAsDirty_(*(v5 + 8), a2, a3, a4, a5);
  }

  if (*(result + 40) <= a2 && *(result + 48) >= a2)
  {
    return objc_msgSend_scheduleMarkIntCellRefAsDirty_(*(v5 + 8), a2, a3, a4, a5);
  }

  return result;
}

void sub_22142AB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22142AB50(uint64_t result, uint64_t a2)
{
  if ((a2 & 0xFF00000000) == 0x100000000 || (*(result + 40) & 1) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_22142AC64(uint64_t result, const char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a3;
  v6 = a4;
  if ((a2 & 0xFF00000000) == 0x100000000 || (*(result + 48) & 1) == 0)
  {
    return objc_msgSend_processNextCellForDFS_cellRef_(*(result + 32), a2, *(result + 40), &v5, a5);
  }

  return result;
}

void sub_22142AEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v15 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_22142AF34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v37 = a2;
  v38 = a3;
  v7 = *(a1 + 48);
  v9 = v7 == a2;
  v8 = (v7 ^ a2) & 0x101FFFF00000000;
  v9 = v9 && v8 == 0;
  if (!v9 || *(a1 + 56) != a3)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    if (!v10 || objc_msgSend_internalOwnerID(v10, a2, a3, a4, a5) != a3)
    {
      v11 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, v5, a4, a5);
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v14 = *(*(*(a1 + 40) + 8) + 40);
    if (v14)
    {
      CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v14, a2, &v37, 1, a5);
      if (CellRecord_willModifyOnTile)
      {
        v19 = CellRecord_willModifyOnTile;
        v20 = *(CellRecord_willModifyOnTile + 38);
        if ((v20 & 0x100) == 0)
        {
          if ((v20 & 2) == 0 || (*(a1 + 60) & 1) == 0)
          {
            if (*(CellRecord_willModifyOnTile + 16))
            {
              objc_msgSend_decrDirtySelfPlusPrecedentsCount_(*(*(*(a1 + 40) + 8) + 40), v16, CellRecord_willModifyOnTile, v17, v18);
            }

            else
            {
              v21 = *(*(a1 + 32) + 8);
              v22 = v38;
              v23 = MEMORY[0x277CCACA8];
              v24 = NSStringFromTSUCellCoord();
              v36._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(*(a1 + 32) + 8), v25, v38, v26, v27);
              v36._upper = v28;
              v29 = TSKUIDStruct::description(&v36);
              v33 = objc_msgSend_stringWithFormat_(v23, v30, @"dirty precedents count consistency error - cell: %@ in table: %@", v31, v32, v24, v29);
              objc_msgSend_assertForInconsistentDependGraph_assertMessage_(v21, v34, v22, v33, v35);
            }
          }

          if (*(v19 + 16) == 1)
          {
            objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(*(*(a1 + 32) + 8), v16, &v37, v19, 0);
          }
        }
      }
    }
  }
}

uint64_t sub_22142B114(uint64_t result, uint64_t a2)
{
  if ((a2 & 0xFF00000000) == 0x100000000 || (*(result + 40) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_22142B244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22142B25C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_calcEngine(*(*(a1 + 32) + 8), a2, a3, a4, a5);
  v11 = objc_msgSend_tableResolverWrapperForTableID_(v7, v8, *(a2 + 2), v9, v10);

  if (!v11)
  {
    v31 = objc_msgSend_calcEngine(*(*(a1 + 32) + 8), v12, v13, v14, v15);
    v36 = objc_msgSend_upgradingFormulasMinion(v31, v32, v33, v34, v35);
    v37 = *(a1 + 32);
    *v47 = *(a1 + 48);
    *&v47[8] = *(v37 + 16);
    objc_msgSend_resetFormulaAt_(v36, v38, v47, v39, v40);

LABEL_6:
    return;
  }

  v16 = TSCETableResolverWrapper::bodyRangeCoordinate(v11, v12, v13, v14, v15);
  v18 = v17;
  v22 = TSCETableResolverWrapper::tableRangeCoordinate(v11, v17, v19, v20, v21);
  *v47 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v26 = *(a1 + 32);
  if (a2[6])
  {
    v27 = *a2;
    if (*(v26 + 34))
    {
      v28 = *a2;
      v29 = v22 | (v28 << 32);
      v30 = v23;
LABEL_10:
      v41 = v30 | (v28 << 32);
LABEL_15:
      *v47 = v29;
      *&v47[8] = v41;
      goto LABEL_16;
    }

    v29 = v22 & 0xFFFF00000000 | v27;
    v42 = v23 & 0xFFFF00000000;
LABEL_14:
    v41 = v42 | v27;
    goto LABEL_15;
  }

  v41 = 0x7FFF7FFFFFFFLL;
  if (*(v26 + 34))
  {
    v29 = 0x7FFF7FFFFFFFLL;
    if (v16 <= v18)
    {
      v28 = *a2;
      v29 = v16 | (v28 << 32);
      v30 = v18;
      goto LABEL_10;
    }
  }

  else
  {
    v29 = 0x7FFF7FFFFFFFLL;
    if (WORD2(v16) <= WORD2(v18))
    {
      v27 = *a2;
      v29 = v16 & 0xFFFF00000000 | v27;
      v42 = v18 & 0xFFFF00000000;
      goto LABEL_14;
    }
  }

LABEL_16:
  if (v29 != 0x7FFFFFFF && (v29 & 0xFFFF00000000) != 0x7FFF00000000 && v41 != 0x7FFFFFFF && (v41 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v29) <= HIDWORD(v41) && v29 <= v41)
  {
    v43 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(v26 + 8), v23, *(a2 + 2), v24, v25, *v47);
    v31 = v43;
    if (v43)
    {
      if (*(a1 + 56))
      {
        v46 = objc_msgSend_countRecordsInRange_cellRestrictions_(v43, v44, v47, 6, v45);
      }

      else
      {
        v46 = objc_msgSend_countRecordsInRange_cellRestrictions_(v43, v44, v47, 2, v45);
      }

      *(*(*(a1 + 40) + 8) + 24) += v46;
    }

    goto LABEL_6;
  }
}

void sub_22142B688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22142B6A8(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v15 = a3;
  LODWORD(v16) = a4;
  if ((a2 & 0xFF00000000) == 0)
  {
    v6 = result;
    v7 = *(*(*(result + 40) + 8) + 40);
    if (!v7 || objc_msgSend_internalOwnerID(v7, a2, a3, a4, a5) != a4)
    {
      v8 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(v6 + 32) + 8), a2, v5, a4, a5, v15, v16);
      v9 = *(*(v6 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = *(*(*(v6 + 40) + 8) + 40);
    if (v11)
    {
      CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v11, a2, &v15, 1, a5);
      v13 = CellRecord_willModifyOnTile;
      if (CellRecord_willModifyOnTile)
      {
        if ((*(CellRecord_willModifyOnTile + 38) & 2) != 0)
        {
          objc_msgSend_dgl_clearCycleFlagsOnCellAndDependents_startCellRecord_(*(*(v6 + 32) + 8), a2, v15, v16, CellRecord_willModifyOnTile);
          objc_msgSend_dgl_markCellRefAsDirty_cellDependencies_cellRecord_(*(*(v6 + 32) + 8), v14, &v15, *(*(*(v6 + 40) + 8) + 40), v13);
        }
      }
    }

    else
    {
      v13 = 0;
    }

    return objc_msgSend_dgl_updateNumberOfDirtyPrecedents_cellDependencies_cellRecord_(*(*(v6 + 32) + 8), a2, &v15, *(*(*(v6 + 40) + 8) + 40), v13);
  }

  return result;
}

TSCECellCoordSet *sub_22142B8E0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_dgl_cellIsInACycle_(*(*(a1 + 32) + 8), a2, a2, a4, a5);
  if (result)
  {
    v8 = *(a1 + 40);

    return sub_2212DFCE8(v8, a2);
  }

  return result;
}

void sub_22142BA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22142BA20(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

void *sub_22142BADC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(*(a1 + 32) + 8), a2, *(a2 + 2), a4, a5);
  v12 = *(a1 + 40);
  if (*(*(a1 + 32) + 34))
  {
    v13 = ((*a2 << 32) | 0x7FFFFFFF);
  }

  else
  {
    v13 = (*a2 | 0x7FFF00000000);
  }

  v14 = *(a2 + 6);
  v16.rangeRef.range._topLeft = v13;
  v16.rangeRef.range._bottomRight = v13;
  v16.rangeRef._tableUID._lower = v7;
  v16.rangeRef._tableUID._upper = v8;
  v16.rangeContext = v14;
  return TSCEReferenceSet::insertRef(v12, &v16, v9, v10, v11);
}

uint64_t sub_22142BC20(uint64_t result, unsigned int *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(result + 48);
  if (*(a2 + 2) == *(v6 + 16))
  {
    v19 = v4;
    v20 = v5;
    v8 = result;
    v9 = *a2;
    if (*(*(result + 32) + 34) == 1)
    {
      v18._topLeft = ((*a2 << 32) | 0x7FFFFFFF);
      v18._bottomRight = v18._topLeft;
      v10 = *v6;
      v11 = *(v6 + 8);
      v18._topLeft.row = v10;
      v18._bottomRight.row = v11;
    }

    else
    {
      v18._topLeft = (v9 | 0x7FFF00000000);
      v18._bottomRight = (v9 | 0x7FFF00000000);
      v18._topLeft.column = *(v6 + 4);
      v18._bottomRight.column = *(v6 + 12);
    }

    TSCERangeCoordinate::asCellRect(&v18);
    v17.origin = v12;
    v17.size = v13;
    TSCERangeCoordinate::asCellRect(*(v8 + 48));
    v16.origin = v14;
    v16.size = v15;
    result = TSUCellRect::intersects(&v17, &v16);
    *(*(*(v8 + 40) + 8) + 24) = result;
    if (*(*(*(v8 + 40) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }

  return result;
}

int *sub_22142C274(uint64_t a1, int *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 32) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24));
    v4 = *(v3 + 40);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(v3 + 24));
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 8 * v8;
  *(v3 + 32) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:

  return sub_221269820(a2, v7);
}

int *sub_22142C32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 32);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(v3 + 32) = v5 + 1;
    v7 = *&v4[2 * v5 + 2];
    goto LABEL_8;
  }

  if (v6 == *(v3 + 36))
  {
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 24));
    v4 = *(v3 + 40);
    v6 = *v4;
  }

  *v4 = v6 + 1;
  v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(*(v3 + 24));
  v8 = *(v3 + 32);
  v9 = *(v3 + 40) + 8 * v8;
  *(v3 + 32) = v8 + 1;
  *(v9 + 8) = v7;
LABEL_8:

  return sub_2215C38E0(a2, v7);
}

void sub_22142C8BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v49 = a3;
  v50 = a4;
  v46 = a2;
  v48 = BYTE4(a2);
  v7 = *(a1 + 32);
  v47 = *(v7 + 32);
  v8 = *(v7 + 8);
  if (v8 || (v9 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCESpanningDependencies readFromArchive:]_block_invoke", a4, a5), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESpanningDependencies.mm", v12, v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1523, 0, "invalid nil value for '%{public}s'", "_dependencyTracker"), v14, v10, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19), v7 = *(a1 + 32), (v8 = *(v7 + 8)) != 0))
  {
    if (*(v7 + 34))
    {
      objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(v8, a2, v5, a4, a5);
    }

    else
    {
      objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(v8, a2, v5, a4, a5);
    }
    v22 = ;
    if (v22)
    {
      goto LABEL_11;
    }

    objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(*(*(a1 + 32) + 8), v20, v5, 0, 0);
    v26 = *(a1 + 32);
    v27 = *(v26 + 8);
    if (*(v26 + 34) == 1)
    {
      objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(v27, v23, v5, v24, v25);
    }

    else
    {
      objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(v27, v23, v5, v24, v25);
    }
    v22 = ;
    if (v22)
    {
LABEL_11:
      objc_msgSend_insertReferringColumnRef_fromCoord_(v22, v20, &v46, &v49, v21);
    }

    else
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSCESpanningDependencies readFromArchive:]_block_invoke", v28, v21);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESpanningDependencies.mm", v32, v33);
      v45._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(*(a1 + 32) + 8), v35, v5, v36, v37);
      v45._upper = v38;
      v39 = TSKUIDStruct::description(&v45);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v40, v30, v34, 1533, 0, "NULL spanning dependencies for table: %{public}@", v39);

      v22 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
    }
  }
}

void sub_22142CD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_22142CD60(uint64_t a1, uint64_t a2, const TSUCellCoord *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 8);
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (!v9 || objc_msgSend_internalOwnerID(v9, a2, a3, a4, a5) != v8)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    if (*(v11 + 34) == 1)
    {
      objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(v12, a2, v8, a4, a5);
    }

    else
    {
      objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(v12, a2, v8, a4, a5);
    }
    v13 = ;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v13);
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_14;
  }

  v43._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(*(a1 + 32) + 8), a2, v8, a4, a5);
  v43._upper = v14;
  objc_msgSend_dgl_registerOwnerUID_owner_ownerIndex_(*(*(a1 + 32) + 8), v14, &v43, 0, 0);
  v18 = *(a1 + 32);
  v19 = *(v18 + 8);
  if (*(v18 + 34) == 1)
  {
    objc_msgSend_dgl_spanningColumnDependenciesForOwnerID_(v19, v15, v8, v16, v17);
  }

  else
  {
    objc_msgSend_dgl_spanningRowDependenciesForOwnerID_(v19, v15, v8, v16, v17);
  }
  v20 = ;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v20);

  v21 = *(a1 + 40);
  if (!*(*(v21 + 8) + 40))
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCESpanningDependencies unpackAfterUnarchive]_block_invoke", a4, a5);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESpanningDependencies.mm", v25, v26);
    v28 = TSKUIDStruct::description(&v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v29, v23, v27, 1677, 0, "NULL spanning dependencies for table: %{public}@", v28);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
    v21 = *(a1 + 40);
  }

  if (*(*(v21 + 8) + 40))
  {
LABEL_14:
    v34 = *(*(a1 + 32) + 32);
    v43._lower = *a3 & 0xFFFFFFFFFFFFLL;
    LODWORD(v43._upper) = v34;
    for (i = *a2; i <= *(a2 + 4); ++i)
    {
      v41 = i;
      v42 = *(a2 + 10);
      v36 = *(*(a1 + 32) + 32);
      v37 = objc_msgSend_internalOwnerID(*(*(*(a1 + 40) + 8) + 40), a2, v10, a4, a5);
      v38 = *(*(*(a1 + 40) + 8) + 40);
      v44 = &v41;
      if (v36 == v37)
      {
        v39 = sub_22142D88C((v38 + 120), &v41);
        TSCECellCoordSet::addCellCoord((v39 + 3), a3);
      }

      else
      {
        v40 = sub_22142DAFC((v38 + 160), &v41);
        sub_2212DFCE8(v40 + 3, &v43);
      }
    }
  }
}

uint64_t sub_22142D0D4(uint64_t a1)
{
  sub_22142D110(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22142D110(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_221087B80((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **sub_22142D154(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = v3 | (v4 << 16);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5 >= *&v2 ? v5 % v2.i32[0] : v3 | (v4 << 16);
  }

  else
  {
    v7 = v5 & (*&v2 + 0xFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 8) == v3 && *(result + 18) == v4)
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
  }

  return result;
}

uint64_t **sub_22142D220(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  v4 = v2 | (v3 << 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 | (v3 << 16);
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = v4 & (*&v5 + 0xFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 8) != v2 || *(v9 + 18) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_22142D48C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_22142D4A0(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = v3 | (v4 << 16);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5 >= *&v2 ? v5 % v2.i32[0] : v3 | (v4 << 16);
  }

  else
  {
    v7 = v5 & (*&v2 + 0xFFFFFFLL);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v5 == v10)
    {
      if (*(result + 8) == v3 && *(result + 18) == v4)
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
  }

  return result;
}

uint64_t *sub_22142D56C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  v4 = (*a2 + (v3 << 16));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v2 + (v3 << 16));
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 10) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_22142D7E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22142D7F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22142D7F4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_221087B80(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_22142D840(void *a1, int *a2)
{
  result = sub_2213A0F08(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_22142D7F4(v4);
    return 1;
  }

  return result;
}

uint64_t *sub_22142D88C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  v4 = *a2 ^ (v3 << 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 ^ (v3 << 16);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 20) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t *sub_22142DAFC(void *a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  v4 = *a2 ^ (v3 << 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 ^ (v3 << 16);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 20) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_22142DD6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22142DD80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22142DD80(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_221122744(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_22142DDCC(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *a2 ^ (v4 << 16);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ (v4 << 16);
    if (*&v2 <= v5)
    {
      v7 = v5 % v2.i32[0];
    }
  }

  else
  {
    v7 = (v2.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 4) == v3 && *(result + 20) == v4)
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
  }

  return result;
}

uint64_t sub_22142DE90(uint64_t a1)
{
  sub_22142DECC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22142DECC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_221122744((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_22142DF10(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v3 = &unk_2834A8028;
  v3[17] = 0;
}

uint64_t sub_22142DF48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_221089E8C(a1);
  v9 = objc_msgSend_resolverForTableUID_(v6, v7, *a2, a2[1], v8);

  v14 = *(a1 + 136);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = objc_msgSend_rowColumnInfo(v14, v10, v11, v12, v13);
  if (!objc_msgSend_isColumns(v15, v16, v17, v18, v19))
  {

LABEL_9:
    v24 = 0;
LABEL_10:
    v30 = objc_msgSend_columnUIDForColumnIndex_(v9, v10, a3, v12, v13);
    goto LABEL_11;
  }

  v24 = objc_msgSend_rowColumnInfo(*(a1 + 136), v20, v21, v22, v23);

  if (!v24)
  {
    goto LABEL_10;
  }

  v26 = objc_msgSend_tableUID(v24, v10, v25, v12, v13);
  if (*a2 != *v26 || a2[1] != v26[1])
  {
    goto LABEL_10;
  }

  if (objc_msgSend_indexIsAffected_(v24, v10, a3, v12, v13))
  {
    v30 = objc_msgSend_uuidForIndex_(v24, v27, a3, v28, v29);
  }

  else
  {
    v33 = *(a1 + 136);
    v35 = a3 << 32;
    v36 = *a2;
    if (v33)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(v33, v27, &v35, v28, v29);
      v34 = WORD2(v37);
    }

    else
    {
      v34 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
    }

    v30 = objc_msgSend_columnUIDForColumnIndex_(v9, v27, v34, v28, v29, v35, v36, v37, v38, v39);
  }

LABEL_11:
  v31 = v30;

  return v31;
}

uint64_t sub_22142E0DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_221089E8C(a1);
  v9 = objc_msgSend_resolverForTableUID_(v6, v7, *a2, a2[1], v8);

  v14 = *(a1 + 136);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = objc_msgSend_rowColumnInfo(v14, v10, v11, v12, v13);
  if (!objc_msgSend_isRows(v15, v16, v17, v18, v19))
  {

LABEL_9:
    v24 = 0;
LABEL_10:
    v30 = objc_msgSend_rowUIDForRowIndex_(v9, v10, a3, v12, v13);
    goto LABEL_11;
  }

  v24 = objc_msgSend_rowColumnInfo(*(a1 + 136), v20, v21, v22, v23);

  if (!v24)
  {
    goto LABEL_10;
  }

  v26 = objc_msgSend_tableUID(v24, v10, v25, v12, v13);
  if (*a2 != *v26 || a2[1] != v26[1])
  {
    goto LABEL_10;
  }

  if (objc_msgSend_indexIsAffected_(v24, v10, a3, v12, v13))
  {
    v30 = objc_msgSend_uuidForIndex_(v24, v27, a3, v28, v29);
  }

  else
  {
    v33 = *(a1 + 136);
    v37 = a3;
    v38 = *a2;
    if (v33)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(v33, v27, &v37, v28, v29);
      v30 = objc_msgSend_rowUIDForRowIndex_(v9, v34, v39, v35, v36, v37, v38, v39, v40, v41);
    }

    else
    {
      v30 = objc_msgSend_rowUIDForRowIndex_(v9, v27, 0, v28, v29, v37, v38, 0, 0, 0);
    }
  }

LABEL_11:
  v31 = v30;

  return v31;
}

void sub_22142E26C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v9 = a3;
  v10 = a4;
  v11 = sub_221089E8C(a1);
  v14 = objc_msgSend_resolverForTableUID_(v11, v12, *a2, a2[1], v13);

  v19 = *(a1 + 136);
  if (v19)
  {
    v20 = objc_msgSend_rowColumnInfo(v19, v15, v16, v17, v18);
    if (objc_msgSend_isColumns(v20, v21, v22, v23, v24))
    {
      v29 = objc_msgSend_rowColumnInfo(*(a1 + 136), v25, v26, v27, v28);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x4812000000;
  v73 = sub_22142E628;
  v74 = sub_22142E64C;
  v75 = 0u;
  v76 = 0u;
  if (v29)
  {
    v30 = objc_msgSend_tableUID(v29, v15, v16, v17, v18);
    if (*a2 == *v30 && a2[1] == v30[1])
    {
      v31 = objc_msgSend_rowOrColumnIndices(v29, v15, v16, v17, v18);
      objc_msgSend_uuidsForIndexes_(v29, v32, v9, v33, v34);
      v35 = v71;
      v37 = v71 + 6;
      v36 = v71[6];
      if (v36)
      {
        v71[7] = v36;
        operator delete(v36);
        *v37 = 0;
        v37[1] = 0;
        v37[2] = 0;
      }

      *(v35 + 3) = v68;
      v35[8] = v69;
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = sub_22142E664;
      v62[3] = &unk_278462D00;
      v66 = a1;
      v38 = v31;
      v63 = v38;
      v67 = a2;
      v64 = v14;
      v65 = &v70;
      objc_msgSend_enumerateIndexesUsingBlock_(v9, v39, v62, v40, v41);

      v42 = v63;
      goto LABEL_21;
    }
  }

  if (v14)
  {
    objc_msgSend_UIDsForIndexes_isRows_(v14, v15, v9, 0, v18);
  }

  else
  {
    v68 = 0uLL;
    v69 = 0;
  }

  v43 = v71;
  v45 = v71 + 6;
  v44 = v71[6];
  if (v44)
  {
    v71[7] = v44;
    operator delete(v44);
    *v45 = 0;
    v45[1] = 0;
    v45[2] = 0;
  }

  *(v43 + 3) = v68;
  v43[8] = v69;
  if (v10)
  {
    v47 = v71[6];
    v46 = v71[7];
    if (objc_msgSend_count(v9, v15, v16, v17, v18) > ((v46 - v47) >> 4))
    {
      v38 = objc_msgSend_mutableCopy(v9, v48, v49, v50, v51);
      v42 = objc_msgSend_mutableColumnIndexesForUIDs_(v14, v52, (v71 + 6), v53, v54);
      objc_msgSend_removeIndexes_(v38, v55, v42, v56, v57);
      objc_msgSend_addIndexes_(v10, v58, v38, v59, v60);
LABEL_21:
    }
  }

  v61 = v71;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  sub_221086EBC(a5, v61[6], v61[7], (v61[7] - v61[6]) >> 4);
  _Block_object_dispose(&v70, 8);
  if (*(&v75 + 1))
  {
    *&v76 = *(&v75 + 1);
    operator delete(*(&v75 + 1));
  }
}

void sub_22142E580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22142E628(__n128 *a1, __n128 *a2)
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

void sub_22142E64C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22142E664(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = *(a1 + 56);
  if ((objc_msgSend_containsIndex_(*(a1 + 32), a2, a2, a4, a5) & 1) == 0)
  {
    v11 = *(v7 + 136);
    v12 = *(a1 + 64);
    v15 = v5 << 32;
    v16 = *v12;
    if (v11)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(v11, v8, &v15, v9, v10);
      v13 = WORD2(v17);
    }

    else
    {
      v13 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    v15 = objc_msgSend_columnUIDForColumnIndex_(*(a1 + 40), v8, v13, v9, v10, v15, v16, v17, v18, v19);
    *&v16 = v14;
    sub_221083454(*(*(a1 + 48) + 8) + 48, &v15);
  }
}

void sub_22142E70C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v14 = a5;
  v13 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v11, a3, a4, v12);
  sub_22142E26C(a1, a2, v13, v14, a6);
}

void sub_22142E7C8(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v9 = a3;
  v10 = a4;
  v11 = sub_221089E8C(a1);
  v14 = objc_msgSend_resolverForTableUID_(v11, v12, *a2, a2[1], v13);

  v19 = *(a1 + 136);
  if (v19)
  {
    v20 = objc_msgSend_rowColumnInfo(v19, v15, v16, v17, v18);
    if (objc_msgSend_isRows(v20, v21, v22, v23, v24))
    {
      v29 = objc_msgSend_rowColumnInfo(*(a1 + 136), v25, v26, v27, v28);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v70 = 0;
  v71 = &v70;
  v72 = 0x4812000000;
  v73 = sub_22142E628;
  v74 = sub_22142E64C;
  v75 = 0u;
  v76 = 0u;
  if (v29)
  {
    v30 = objc_msgSend_tableUID(v29, v15, v16, v17, v18);
    if (*a2 == *v30 && a2[1] == v30[1])
    {
      v31 = objc_msgSend_rowOrColumnIndices(v29, v15, v16, v17, v18);
      objc_msgSend_uuidsForIndexes_(v29, v32, v9, v33, v34);
      v35 = v71;
      v37 = v71 + 6;
      v36 = v71[6];
      if (v36)
      {
        v71[7] = v36;
        operator delete(v36);
        *v37 = 0;
        v37[1] = 0;
        v37[2] = 0;
      }

      *(v35 + 3) = v68;
      v35[8] = v69;
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = sub_22142EB84;
      v62[3] = &unk_278462D00;
      v66 = a1;
      v38 = v31;
      v63 = v38;
      v67 = a2;
      v64 = v14;
      v65 = &v70;
      objc_msgSend_enumerateIndexesUsingBlock_(v9, v39, v62, v40, v41);

      v42 = v63;
      goto LABEL_21;
    }
  }

  if (v14)
  {
    objc_msgSend_UIDsForIndexes_isRows_(v14, v15, v9, 1, v18);
  }

  else
  {
    v68 = 0uLL;
    v69 = 0;
  }

  v43 = v71;
  v45 = v71 + 6;
  v44 = v71[6];
  if (v44)
  {
    v71[7] = v44;
    operator delete(v44);
    *v45 = 0;
    v45[1] = 0;
    v45[2] = 0;
  }

  *(v43 + 3) = v68;
  v43[8] = v69;
  if (v10)
  {
    v47 = v71[6];
    v46 = v71[7];
    if (objc_msgSend_count(v9, v15, v16, v17, v18) > ((v46 - v47) >> 4))
    {
      v38 = objc_msgSend_mutableCopy(v9, v48, v49, v50, v51);
      v42 = objc_msgSend_mutableRowIndexesForUIDs_(v14, v52, (v71 + 6), v53, v54);
      objc_msgSend_removeIndexes_(v38, v55, v42, v56, v57);
      objc_msgSend_addIndexes_(v10, v58, v38, v59, v60);
LABEL_21:
    }
  }

  v61 = v71;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  sub_221086EBC(a5, v61[6], v61[7], (v61[7] - v61[6]) >> 4);
  _Block_object_dispose(&v70, 8);
  if (*(&v75 + 1))
  {
    *&v76 = *(&v75 + 1);
    operator delete(*(&v75 + 1));
  }
}

void sub_22142EADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22142EB84(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = *(a1 + 56);
  if ((objc_msgSend_containsIndex_(*(a1 + 32), a2, a2, a4, a5) & 1) == 0)
  {
    v11 = *(v7 + 136);
    v12 = *(a1 + 64);
    v18 = v5;
    v19 = *v12;
    if (v11)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(v11, v8, &v18, v9, v10);
      v16 = objc_msgSend_rowUIDForRowIndex_(*(a1 + 40), v13, v20, v14, v15, v18, v19, v20, v21, v22);
    }

    else
    {
      v16 = objc_msgSend_rowUIDForRowIndex_(*(a1 + 40), v8, 0, v9, v10, v18, v19, 0, 0, 0);
    }

    v18 = v16;
    *&v19 = v17;
    sub_221083454(*(*(a1 + 48) + 8) + 48, &v18);
  }
}

void sub_22142EC28(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v14 = a5;
  v13 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v11, a3, a4, v12);
  sub_22142E7C8(a1, a2, v13, v14, a6);
}

TSCEASTRelativeCoordRefElement *sub_22142ECE4(TSCEFormulaRewriteContext **a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  v45.var0 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  (*(*a2 + 136))(&v45.var2, a2, a1, &v45);
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v5, v6, v7);
  }

  else
  {
    v8 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    lower = v8->var0.var0._tableUID._lower;
    upper = v8->var0.var0._tableUID._upper;
  }

  v45.var0 = lower;
  v45.var1 = upper;
  v11 = TSCEASTElement::refFlags(a2, a1);
  if (v4 != 36)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "virtual TSCEASTElement *TSCEASTConvertToUidRefsRewriter::anyReferenceNode(TSCEASTRelativeCoordRefElement *)", v13, v14);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTConvertToUidRefsRewriter.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 173, 0, "Unhandled reference type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
    v18 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  v15 = v11 & 0xC;
  if (v15 != 4)
  {
    v18 = sub_22142DF48(a1, &v45, WORD2(v45.var2));
    v17 = v32;
    v16 = (v18 | v32) == 0;
    if (v15 != 8)
    {
      goto LABEL_12;
    }

    if (!(v18 | v32))
    {
      return a2;
    }

LABEL_8:
    v30 = 0;
    v31 = 0;
    goto LABEL_15;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_12:
  v33 = sub_22142E0DC(a1, &v45, LODWORD(v45.var2));
  if (!v16 && v33 | v34)
  {
    v30 = v33;
    v31 = v34;
LABEL_15:
    v44._flags = TSCEASTElement::refFlags(a2, a1);
    v35 = TSCEASTElement::mutableUndoTractList(a2, a1);
    v36 = [TSCEUndoTract alloc];
    v38 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v36, v37, v18, v17, v30, v31, 4);
    objc_msgSend_appendUidTract_(v35, v39, v38, v40, v41);
    v43._flags = 0;
    TSCEASTIteratorBase::createUidReference(a1, &v45, &v44, &v43, v35);
  }

  return a2;
}

TSCEASTColonElement *sub_22142EFA0(TSCEFormulaRewriteContext **a1, TSCEASTColonElement *a2)
{
  v46._flags = 0;
  coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  TSCEASTColonElement::rangeReference(a2, a1, &v46, &coordinate, v45);
  v44 = v45[0];
  if (TSCERangeCoordinate::isValid(&v44))
  {
    v43 = v45[1];
    v4 = *&v44._topLeft & 0xFFFF00000000;
    v5 = v44._bottomRight.row != 0x7FFFFFFF;
    if ((*&v44._bottomRight & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v5 = 0;
    }

    if (v4 != 0x7FFF00000000)
    {
      v5 = 0;
    }

    if (v44._topLeft.row == 0x7FFFFFFFLL)
    {
      v5 = 0;
      v6 = v4 == 0x7FFF00000000;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6 || (*&v44._bottomRight & 0xFFFF00000000) == 0x7FFF00000000;
    v8 = !v7 && v44._bottomRight.row == 0x7FFFFFFF;
    v9 = v7 && v5;
    v13 = TSCEASTElement::mutableUndoTractList(a2, a1);
    __p = 0;
    __dst = 0;
    v42 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    if (v9)
    {
      operator new();
    }

    if (v44._topLeft.column != 0x7FFFLL && v44._bottomRight.column != 0x7FFF)
    {
      sub_22142E70C(a1, &v43, v44._topLeft.column, v44._bottomRight.column - v44._topLeft.column + 1, 0, &coordinate);
      sub_2210F0C88(&__p, __dst, coordinate, v36, (v36 - coordinate) >> 4);
      if (coordinate)
      {
        v36 = coordinate;
        operator delete(coordinate);
      }
    }

    if (v8)
    {
      operator new();
    }

    row = v44._topLeft.row;
    if (v44._topLeft.row != 0x7FFFFFFF && v44._bottomRight.row != 0x7FFFFFFF)
    {
      sub_22142EC28(a1, &v43, v44._topLeft.row, v44._bottomRight.row - v44._topLeft.row + 1, 0, &coordinate);
      sub_2210F0C88(&v37, v38, coordinate, v36, (v36 - coordinate) >> 4);
      if (coordinate)
      {
        v36 = coordinate;
        operator delete(coordinate);
      }
    }

    if (!objc_msgSend_count(0, v10, row, v11, v12) && !objc_msgSend_count(0, v15, v16, v17, v18) && v38 != v37 && __dst != __p)
    {
      v19 = [TSCEUndoTract alloc];
      v21 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v19, v20, &__p, &v37, 4);
      objc_msgSend_setIsRangeRef_(v21, v22, 1, v23, v24);
      objc_msgSend_setPreserveRectangularRange_(v21, v25, 1, v26, v27);
      objc_msgSend_appendUidTract_(v13, v28, v21, v29, v30);
      sub_22122B9B8(&coordinate, &v43, v13, &v46);
      TSCEASTIteratorBase::createUidReference(a1, &coordinate, v31, v32, v33);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }
  }

  return a2;
}

void sub_22142F318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

TSCEASTElement *sub_22142F39C(TSCEFormulaRewriteContext **a1, TSCEASTElement *this)
{
  v4 = TSCEASTElement::mutableUndoTractList(this, a1);
  v8 = TSCEASTColonTractElement::relativeTractRef(this, a1, v5, v6, v7);
  __p = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  v12 = objc_msgSend_absoluteCellTractRefForHostCell_(v8, v9, &__p, v10, v11);
  if (objc_msgSend_isValid(v12, v13, v14, v15, v16))
  {
    v102.var0 = 0;
    v102.var1 = 0;
    v91 = v4;
    if (objc_msgSend_hasTableUID(v8, v17, v18, v19, v20))
    {
      v102.var0 = objc_msgSend_tableUID(v8, v21, v22, v23, v24);
    }

    else
    {
      v29 = TSCEFormulaRewriteContext::containingCell(a1[1]);
      upper = v29->var0.var0._tableUID._upper;
      v102.var0 = v29->var0.var0._tableUID._lower;
    }

    v102.var1 = upper;
    v30 = objc_msgSend_spansAllRows(v12, upper, v26, v27, v28);
    v38 = objc_msgSend_spansAllColumns(v12, v31, v32, v33, v34);
    if ((v38 & v30) == 1)
    {
      v39 = MEMORY[0x277D81150];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "virtual TSCEASTElement *TSCEASTConvertToUidRefsRewriter::colonTractNode(TSCEASTColonTractElement *)", v36, v37);
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTConvertToUidRefsRewriter.mm", v42, v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v45, v40, v44, 289, 0, "Can't have a reference spanning both columns and rows");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48, v49);
    }

    v101._flags = TSCEASTElement::refFlags(this, a1);
    v100._flags = TSCEASTColonTractElement::colonTractFlags(this, a1, v50, v51, v52);
    __p = 0;
    __dst = 0;
    v99 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    if (v38)
    {
      operator new();
    }

    v57 = objc_msgSend_columns(v12, v53, v54, v55, v56);
    v58 = TSUIndexSet::asNSIndexSet(v57);
    v4 = v91;
    sub_22142E26C(a1, &v102, v58, 0, &v92);

    sub_2210F0C88(&__p, __dst, v92, v93, (v93 - v92) >> 4);
    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (v30)
    {
      operator new();
    }

    v63 = objc_msgSend_rows(v12, v59, v60, v61, v62);
    v64 = TSUIndexSet::asNSIndexSet(v63);
    sub_22142E7C8(a1, &v102, v64, 0, &v92);

    sub_2210F0C88(&v94, v95, v92, v93, (v93 - v92) >> 4);
    if (v92)
    {
      v93 = v92;
      operator delete(v92);
    }

    if (!objc_msgSend_count(0, v65, v66, v67, v68) && !objc_msgSend_count(0, v69, v70, v71, v72))
    {
      if (v95 != v94 && __dst != __p)
      {
        v73 = [TSCEUndoTract alloc];
        v75 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v73, v74, &__p, &v94, 4);
        objc_msgSend_setIsRangeRef_(v75, v76, 1, v77, v78);
        isRectangularRange = objc_msgSend_isRectangularRange(v12, v79, v80, v81, v82);
        objc_msgSend_setPreserveRectangularRange_(v75, v84, isRectangularRange, v85, v86);
        objc_msgSend_appendUidTract_(v91, v87, v75, v88, v89);
        TSCEASTIteratorBase::createUidReference(a1, &v102, &v101, &v100, v91);
      }
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }
  }

  return this;
}

void sub_22142F7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

TSCEASTElement *sub_22142F870(TSCEFormulaRewriteContext **a1, TSCEASTElement *this)
{
  v4 = TSCEASTElement::mutableUndoTractList(this, a1);
  if (objc_msgSend_tractCount(v4, v5, v6, v7, v8))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
    v18 = TSCEASTRelativeCoordRefElement::preserveFlags(this, a1);
    if (TSCEASTElement::refFlags(this, a1))
    {
      tableUID._lower = TSCEASTRelativeCoordRefElement::tableUID(this, a1, v9, v10, v11);
      tableUID._upper = v12;
    }

    sub_22122B9B8(v17, &tableUID, v4, &v18);
    TSCEASTIteratorBase::createUidReference(a1, v17, v13, v14, v15);
  }

  return this;
}

void sub_22142F994(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_22142F9D0(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_221430D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v16 = v10;

  _Unwind_Resume(a1);
}

void sub_2214317C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22143188C;
  v9[3] = &unk_27845F1F0;
  v10 = *(a1 + 32);
  v11 = v4;
  v12 = *(a1 + 40);
  v5 = v4;
  objc_msgSend_processCustomFormatsWithBlock_(v5, v6, v9, v7, v8);
}

void sub_22143188C(void **a1, void *a2)
{
  v37 = a2;
  v7 = objc_msgSend_customFormatKey(v37, v3, v4, v5, v6);
  v15 = objc_msgSend_objectForKeyedSubscript_(a1[4], v8, v7, v9, v10);
  if (!v15)
  {
    v15 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v11, v12, v13, v14);
    objc_msgSend_setObject_forKey_(a1[4], v16, v15, v7, v17);
  }

  v18 = objc_alloc(MEMORY[0x277D80650]);
  v23 = objc_msgSend_formatType(v37, v19, v20, v21, v22);
  v28 = objc_msgSend_customFormat(v37, v24, v25, v26, v27);
  v30 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v18, v29, v23, v15, v28);

  objc_msgSend_updateCustomFormatFromPaste_(a1[5], v31, v30, v32, v33);
  objc_msgSend_setHasCustomFormatsToPaste_(a1[6], v34, 1, v35, v36);
}

void sub_221431B30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221431C10;
  v9[3] = &unk_27845F1F0;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v4;
  v5 = v4;
  objc_msgSend_processCustomFormatsWithBlock_(v5, v6, v9, v7, v8);
}

void sub_221431C10(void **a1, void *a2)
{
  v31 = a2;
  v7 = objc_msgSend_customFormatKey(v31, v3, v4, v5, v6);
  v15 = objc_msgSend_objectForKeyedSubscript_(a1[4], v8, v7, v9, v10);
  if (!v15)
  {
    v16 = a1[5];
    v17 = objc_msgSend_customFormat(v31, v11, v12, v13, v14);
    v15 = objc_msgSend_addCustomFormat_oldKey_fuzzyNameMatching_(v16, v18, v17, v7, 1);
  }

  v19 = objc_msgSend_customFormatForKey_(a1[5], v11, v15, v13, v14);
  v20 = objc_alloc(MEMORY[0x277D80650]);
  v25 = objc_msgSend_formatType(v31, v21, v22, v23, v24);
  v27 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v20, v26, v25, v15, v19);
  objc_msgSend_updateCustomFormatFromPaste_(a1[6], v28, v27, v29, v30);
}

uint64_t sub_221432460(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_2214324E4((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_2214324E4(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

BOOL sub_2214324E4(void *a1, void *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 != v6)
  {
    return 0;
  }

  v7 = a1[1];
  v8 = a2[1];
  if (v7 < v8)
  {
    return 1;
  }

  if (v7 == v8)
  {
    return *a1 < *a2;
  }

  return 0;
}

uint64_t sub_221432548(uint64_t a1, void *a2)
{
  v2 = *sub_221432600(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_221432600(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_2214324E4(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_2214324E4(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_221432688(uint64_t a1)
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

uint64_t sub_2214326D4(uint64_t **a1, void *a2)
{
  v3 = sub_221432460(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_22143271C(a1, v3);
  return 1;
}

uint64_t *sub_22143271C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_22112C950(a1, a2);

  operator delete(a2);
  return v3;
}

void sub_2214327C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2214327C4(a1, *a2);
    sub_2214327C4(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_2214334C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 96), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22143354C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_tableUID(*(a1 + 32), a2, a3, a4, a5);
  result = TSKUIDStructIsEqual();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(a2 + 4);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_2214335CC(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = *(a2 + 4);
  *a3 = 1;
  return result;
}

void sub_221433D1C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_221433E78(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

__n128 sub_221436B60(__n128 *a1, __n128 *a2)
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

void sub_221436B84(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

id sub_221436B9C(void *a1, void *a2, void *a3)
{
  for (i = a3; a1 != a2; ++a1)
  {
    i[2](i, *a1);
  }

  v6 = MEMORY[0x223DA1C10](i);

  return v6;
}

void sub_221436C2C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2 - *(*(*(a1 + 40) + 8) + 24);
  sub_2211531C0((v4 + 48), &v5);
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

uint64_t sub_221436C88(uint64_t result, unint64_t a2)
{
  v2 = *(*(result + 32) + 88);
  v3 = *(*(result + 32) + 96);
  if (v3 != v2)
  {
    v4 = (v3 - v2) >> 3;
    v3 = *(*(result + 32) + 88);
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[8 * (v4 >> 1)];
      v8 = *v6;
      v7 = (v6 + 1);
      v4 += ~(v4 >> 1);
      if (v8 > a2)
      {
        v4 = v5;
      }

      else
      {
        v3 = v7;
      }
    }

    while (v4);
  }

  v9 = v3 - v2 + *(*(*(result + 40) + 8) + 48);
  --*(v9 - 8);
  return result;
}

void *sub_221436CF8(void *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      sub_221123150(a1, v8);
    }

    sub_22107C148();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_2217E0F60)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 >= v10;
  v19 = a2 - v10;
  if (v19 != 0 && v18)
  {
    v20 = 0;
    v21 = v9 + 8 * v19;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v9 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_2217E0F60)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v20 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v20);
    a1[1] = v21;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void sub_221436EEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) += a2;
    sub_2211531C0((*(a1 + 32) + 88), (*(*(a1 + 40) + 8) + 24));
  }
}

char *sub_221437618(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_22107C148();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_2210874C4(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_221439784(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_2214377B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221438994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214389C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2214389E0(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = objc_msgSend_filteringTableModel(*(a1 + 32), v6, v7, v8, v9);
  v14 = objc_msgSend_baseColumnIndexForFilterRuleInTableModel_(v5, v11, v10, v12, v13);
  v15 = *(a1 + 48);

  if (v15 == v14)
  {
    objc_msgSend_addIndex_(*(*(*(a1 + 40) + 8) + 40), v16, a3, v17, v18);
  }
}

void sub_221438D50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221439638(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = (v3 + 48);
  v5 = *(v3 + 48);
  if (*(v3 + 48) == *(v3 + 52))
  {
    v6 = v5 + 1;
    sub_2210BBC64(v4, v5 + 1);
    *(*(v3 + 56) + 4 * v5) = a2;
  }

  else
  {
    *(*(v3 + 56) + 4 * v5) = a2;
    v6 = v5 + 1;
  }

  *v4 = v6;
}

void *sub_221439784(void *result, void *a2)
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

      sub_2210874C4(result[4], v11);
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
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void sub_22144136C(TSCEFormulaCreator *a1@<X0>, uint64_t *x8_0@<X8>)
{
  TSCEFormulaCreator::TSCEFormulaCreator(&v3, a1);
  TSCEFormulaCreationMagic::arg(0, v4, &v3, x8_0);
}

void sub_2214413CC(TSCEFormulaCreator *a1@<X0>, uint64_t *x8_0@<X8>)
{
  TSCEFormulaCreator::TSCEFormulaCreator(&v3, a1);
  TSCEFormulaCreationMagic::arg(1, v4, &v3, x8_0);
}

void sub_22144142C(TSCEFormulaCreator *a1@<X0>, uint64_t *x8_0@<X8>)
{
  TSCEFormulaCreator::TSCEFormulaCreator(&v3, a1);
  TSCEFormulaCreationMagic::arg(2, v4, &v3, x8_0);
}

id sub_2214415B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByRewritingReferencesToUidForm_(a2, a2, a3, a4, a5);

  return v5;
}

id sub_2214415E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(a2, a2, a3, a4, a5);

  return v5;
}

uint64_t sub_221441A20(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return byte_2217E1C70[a1];
  }
}

uint64_t sub_221441A40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, a2, a2, a1, a5);
  v11 = objc_msgSend_range(v6, v7, v8, v9, v10);
  if (v12 >> 32)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = v11 & 0xFFFF00000000;
    if (v11 != 0x7FFFFFFFLL || v16 == 0x7FFF00000000)
    {
      v19 = v11 == 0x7FFFFFFF && v16 != 0x7FFF00000000;
      if (v11 > a3 && !v19)
      {
        goto LABEL_33;
      }

      v21 = v11 + HIDWORD(v12) - 1;
      if (v11 == 0x7FFFFFFF)
      {
        v21 = 0x7FFFFFFF;
      }

      if (v21 < a3)
      {
        goto LABEL_33;
      }

      if (v11 != 0x7FFFFFFFLL && v16 == 0x7FFF00000000)
      {
        goto LABEL_35;
      }
    }

    if (WORD2(v11) <= WORD2(a3))
    {
      v22 = WORD2(v11) == 0x7FFF || v12 == 0;
      v23 = v22 ? 0x7FFF : v12 + WORD2(v11) - 1;
      if (v23 >= WORD2(a3))
      {
LABEL_35:
        v26 = objc_msgSend_cellValueTypeAtBaseCellCoord_(v6, v12, a3, v13, v14);
        v24 = sub_221441A20(v26);
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v24 = 0;
LABEL_34:

  return v24;
}

void sub_221442B38(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_msgSend_type(v3, v4, v5, v6, v7) == 4)
  {
    v12 = objc_msgSend_hostCellCoord(v3, v8, v9, v10, v11);
    if (v12 == 0x7FFFFFFF || (v12 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      objc_msgSend_setHostCellCoord_(v3, v13, a2, v15, v16);
    }

    if (v3)
    {
      objc_msgSend_crossTableRef(v3, v13, v14, v15, v16);
      v17 = v35;
      if (BYTE6(v35))
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18 | HIBYTE(v35);
    }

    else
    {
      v17 = 0;
      v19 = 0;
      v34 = 0uLL;
      v35 = 0;
    }

    v33._flags = v19;
    v20 = a2;
    v21 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v20, v17, &v33, v15, v16);
    if ((v21 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
    {
      v30 = v17;
      v31 = v34;
      if (BYTE6(v35))
      {
        v25 = 2;
      }

      else
      {
        v25 = 0;
      }

      v32 = v25 | HIBYTE(v35);
      objc_msgSend_setRelativeCellRef_(v3, v22, &v30, v23, v24);
    }

    else
    {
      v31 = v34;
      v30 = v21;
      objc_msgSend_setBaseCellRef_(v3, v22, &v30, v23, v24);
      if (BYTE6(v35))
      {
        v29 = 2;
      }

      else
      {
        v29 = 0;
      }

      objc_msgSend_setPreserveFlags_(v3, v26, (v29 | HIBYTE(v35)) & 3, v27, v28);
    }
  }
}

id sub_2214430E4(uint64_t *a1, void *a2)
{
  v2 = objc_msgSend_copyByRemappingOwnerUIDs_rewriteContext_outBadRefFound_(a2, a2, a1[4], a1[5], a1[6]);

  return v2;
}

id sub_221443188(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByRewritingNumberToDurationForSageImport_durationUnitLargest_(a2, a2, *(a1 + 32), *(a1 + 40), a5);

  return v5;
}

id sub_2214432A8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = 0;
  v4 = objc_msgSend_copyByRemappingHostCellAgnosticOwnerUIDs_rewriteContext_outError_(a2, a2, *(a1 + 32), a3, &v7);
  if (v7 == 1)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      *v5 = 1;
    }
  }

  return v4;
}

id sub_221443524(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_convertFromBaseToChromeForCategorizedTableMove_containingCell_(*(a1 + 32), a2, a2, a1 + 40, a5);

  return v5;
}

id sub_221443780(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_convertFromChromeToBaseForCategorizedTableMove_containingCell_(*(a1 + 32), a2, a2, a1 + 40, a5);

  return v5;
}

id sub_221443A38(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_copyByRewritingWithSpec_calcEngine_containingCell_(a2, a2, *(a1 + 32), *(a1 + 40), a1 + 48);

  return v2;
}

id sub_221443B08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByOffsettingRelativeReferences_(a2, a2, *(a1 + 32), a4, a5);

  return v5;
}

void sub_221443F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_221443F5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByUpdatingLinkedTable_outfoundLinkedRef_(a2, a2, *(a1 + 40), *(*(a1 + 32) + 8) + 24, a5);

  return v5;
}

id sub_221444080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_copyByClearingUids_containingTableUID_(a2, a2, *(a1 + 32), *(a1 + 40), a5);

  return v5;
}

void sub_221445240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id sub_2214453B4(void *a1)
{
  v4 = a1;
  if (qword_27CFB5588 != -1)
  {
    sub_2216F7BBC();
  }

  v8 = objc_msgSend_objectForKey_(qword_27CFB5580, v1, v4, v2, v3);
  if (!v8)
  {
    v9 = objc_msgSend_imageNamed_(MEMORY[0x277D811F8], v5, v4, v6, v7);
    if (v9)
    {
      v8 = v9;
      objc_msgSend_setObject_forKey_(qword_27CFB5580, v10, v9, v4, v12);
    }

    else
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "TSUImage *TSTTableBadgeCachedImageForName(NSString *__strong)", v11, v12);
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableBadge.m", v16, v17);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 64, 0, "TSTTableBadge failed to load image %@", v4);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
      v8 = 0;
    }
  }

  return v8;
}

void sub_2214454E0()
{
  v0 = objc_alloc(MEMORY[0x277D81190]);
  v4 = objc_msgSend_initWithName_(v0, v1, @"TSTTableBadgeImageCache", v2, v3);
  v5 = qword_27CFB5580;
  qword_27CFB5580 = v4;
}

double sub_221445528(CGFloat a1, CGFloat a2, double a3, double a4)
{
  v6 = fmin(a3, a4) * 0.899999976;
  v7 = 2.0;
  if (v6 < 2.0)
  {
    return *MEMORY[0x277CBF3A0];
  }

  if (v6 >= 4.0)
  {
    v7 = 4.0;
    if (v6 >= 8.0)
    {
      v7 = 8.0;
      if (v6 >= 16.0)
      {
        v7 = 16.0;
        if (v6 >= 32.0)
        {
          v7 = 32.0;
        }
      }
    }
  }

  v11 = a1;
  v8 = CGRectGetMidX(*(&a2 - 1)) - v7 * 0.5;
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetMidY(v13);
  TSURoundedSize();
  return v8;
}

CGPath *sub_2214458D8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMinY(v10);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathAddLineToPointSafe();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

void sub_221445B44(CGContext *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v16 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, a2, a3, a4, a5);
  v21 = objc_msgSend_showsCellOverflowIndicator(v16, v17, v18, v19, v20);

  if (v21)
  {
    TSDCGContextAssociatedScreenScale();
    v23 = v22;
    if (a6 >= 0.75)
    {
      v25 = v22 * 12.5;
      v26 = v23 * 2.5;
      v27 = v23 * 11.0;
      v28 = v23 * 7.0;
      if (a6 < 1.0)
      {
        v29 = v23 * 5.0;
      }

      else
      {
        v29 = v23 * 7.0;
      }

      if (a6 < 1.0)
      {
        v28 = v23 * 5.0;
        v27 = v23 * 8.0;
      }

      v95 = v27;
      v96 = v29;
      if (a6 < 1.0)
      {
        v30 = v23 * 3.0;
      }

      else
      {
        v30 = v23 * 4.0;
      }

      if (a6 < 1.0)
      {
        v31 = v23 * 6.0;
      }

      else
      {
        v31 = v23 * 8.0;
      }

      v91 = v31;
      v93 = v28;
      if (a6 < 1.0)
      {
        v24 = v23 * 8.0;
      }

      else
      {
        v24 = v23 * 10.0;
      }

      if (a6 < 1.0)
      {
        v26 = v23 * 1.5;
      }

      v87 = v26;
      v89 = v30;
      if (a6 < 1.0)
      {
        v25 = v23 * 9.5;
      }

      v85 = v25;
    }

    else
    {
      v85 = v22 * 7.5;
      v87 = v22 * 1.5;
      v24 = v22 * 6.0;
      v91 = v22 * 5.0;
      v93 = v22 * 4.0;
      v95 = v22 * 6.0;
      v96 = v22 * 3.0;
      v89 = v22 * 3.0;
    }

    v94 = 1.0 / a6;
    CGContextSaveGState(a1);
    CGContextClipToRectSafe();
    memset(&v99, 0, sizeof(v99));
    CGContextGetCTM(&v99, a1);
    v99.tx = ceil(v99.tx) - v99.tx;
    v99.ty = v99.ty - ceil(v99.ty);
    v97 = v99;
    memset(&v98, 0, sizeof(v98));
    CGAffineTransformInvert(&v98, &v97);
    v97 = v99;
    v100.origin.x = a7;
    v100.origin.y = a8;
    v100.size.width = a9;
    v100.size.height = a10;
    v101 = CGRectApplyAffineTransform(v100, &v97);
    y = v101.origin.y;
    width = v23 * v98.c + v98.a * v23;
    v33 = v101.origin.x + v101.size.width;
    v101.origin.x = v101.origin.x + v101.size.width - v85;
    v101.origin.y = v87 + v101.origin.y;
    v97 = v98;
    v101.size.width = v24;
    v101.size.height = v24;
    v102 = CGRectApplyAffineTransform(v101, &v97);
    x = v102.origin.x;
    v35 = v102.origin.y;
    v36 = v102.size.width;
    height = v102.size.height;
    v102.origin.x = v33 - v91;
    v102.origin.y = v89 + y;
    v97 = v98;
    v102.size.width = v23;
    v102.size.height = v96;
    v103 = CGRectApplyAffineTransform(v102, &v97);
    v90 = v103.origin.y;
    v92 = v103.origin.x;
    v86 = v103.size.height;
    v88 = v103.size.width;
    v103.origin.x = v33 - v95;
    v103.origin.y = v93 + y;
    v97 = v98;
    v103.size.width = v96;
    v103.size.height = v23;
    v104 = CGRectApplyAffineTransform(v103, &v97);
    v38 = v104.origin.x;
    v39 = v104.origin.y;
    v40 = v104.size.width;
    v41 = v104.size.height;
    CGContextSetLineWidth(a1, width);
    v46 = objc_msgSend_bezierPathWithLegacyRoundedRect_cornerRadius_(MEMORY[0x277D81160], v42, v43, v44, v45, x, v35, v36, height, v94);
    v47 = v46;
    v52 = objc_msgSend_CGPath(v47, v48, v49, v50, v51);
    v53 = CGPathRetain(v52);

    CGContextSaveGState(a1);
    v58 = objc_msgSend_blackColor(MEMORY[0x277D81180], v54, v55, v56, v57);
    v63 = objc_msgSend_CGColor(v58, v59, v60, v61, v62);
    CGContextSetStrokeColorWithColor(a1, v63);

    v68 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v64, v65, v66, v67);
    v73 = objc_msgSend_CGColor(v68, v69, v70, v71, v72);
    CGContextSetFillColorWithColor(a1, v73);

    CGContextAddPathSafe();
    CGContextDrawPath(a1, kCGPathFillStroke);
    CGContextRestoreGState(a1);
    CGContextSaveGState(a1);
    v78 = objc_msgSend_blackColor(MEMORY[0x277D81180], v74, v75, v76, v77);
    v83 = objc_msgSend_CGColor(v78, v79, v80, v81, v82);
    CGContextSetFillColorWithColor(a1, v83);

    v105.origin.y = v90;
    v105.origin.x = v92;
    v105.size.height = v86;
    v105.size.width = v88;
    CGContextFillRect(a1, v105);
    v106.origin.x = v38;
    v106.origin.y = v39;
    v106.size.width = v40;
    v106.size.height = v41;
    CGContextFillRect(a1, v106);
    CGContextRestoreGState(a1);
    CGPathRelease(v53);
    CGContextRestoreGState(a1);
  }
}

void sub_2214460DC(CGContext *a1, int a2, CGFloat a3, double a4, CGFloat a5, double a6, CGFloat a7)
{
  TSDCGContextAssociatedScreenScale();
  if (v14 == 1.0)
  {
    v15 = &unk_2217E1CE0;
  }

  else
  {
    v15 = &unk_2217E1D08;
  }

  v16 = a4 + a7 * 0.5;
  v17 = a6 + a7 * 0.5;
  if (v14 == 1.0)
  {
    v18 = 5;
  }

  else
  {
    v18 = 10;
  }

  do
  {
    if (a2 == 2)
    {
      a5 = a5 + a7;
    }

    CGContextSaveGState(a1);
    CGContextBeginPath(a1);
    CGContextMoveToPoint(a1, a3, v16);
    CGContextAddLineToPoint(a1, a5, v17);
    CGContextSetLineWidth(a1, a7);
    v23 = objc_msgSend_blackColor(MEMORY[0x277D81180], v19, v20, v21, v22);
    v24 = *v15++;
    v29 = objc_msgSend_colorWithAlphaComponent_(v23, v25, v26, v27, v28, v24);
    v34 = objc_msgSend_CGColor(v29, v30, v31, v32, v33);
    CGContextSetStrokeColorWithColor(a1, v34);

    CGContextStrokePath(a1);
    CGContextRestoreGState(a1);
    v16 = v16 + a7;
    v17 = v17 + a7;
    --v18;
  }

  while (v18);
}

void sub_221446224(CGContext *a1, int a2, int a3, double a4, CGFloat a5, double a6, CGFloat a7, CGFloat a8)
{
  TSDCGContextAssociatedScreenScale();
  v17 = -(a8 * 0.5);
  if (a3)
  {
    v17 = a8 * 0.5;
    v18 = a8;
  }

  else
  {
    v18 = -a8;
  }

  if (v16 == 1.0)
  {
    v19 = &unk_2217E1CE0;
  }

  else
  {
    v19 = &unk_2217E1D08;
  }

  v20 = a6 + v17;
  v21 = a4 + v17;
  if (v16 == 1.0)
  {
    v22 = 5;
  }

  else
  {
    v22 = 10;
  }

  do
  {
    CGContextSaveGState(a1);
    CGContextBeginPath(a1);
    CGContextMoveToPoint(a1, v21, a5);
    CGContextAddLineToPoint(a1, v20, a7);
    CGContextSetLineWidth(a1, a8);
    v27 = objc_msgSend_blackColor(MEMORY[0x277D81180], v23, v24, v25, v26);
    v28 = *v19++;
    v33 = objc_msgSend_colorWithAlphaComponent_(v27, v29, v30, v31, v32, v28);
    v38 = objc_msgSend_CGColor(v33, v34, v35, v36, v37);
    CGContextSetStrokeColorWithColor(a1, v38);

    CGContextStrokePath(a1);
    CGContextRestoreGState(a1);
    v20 = v18 + v20;
    v21 = v18 + v21;
    if (a2 == 2)
    {
      a7 = a7 + a8;
    }

    --v22;
  }

  while (v22);
}

id sub_221446560()
{
  if (qword_27CFB5598 != -1)
  {
    sub_2216F7BD0();
  }

  v1 = qword_27CFB5590;

  return v1;
}

void sub_2214465A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCA900];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"'%C%C%C%C", a4, a5, 65287, 8216, 8217, 1523);
  obj = objc_msgSend_characterSetWithCharactersInString_(v5, v7, v6, v8, v9);

  objc_storeStrong(&qword_27CFB5590, obj);
  if (!qword_27CFB5590)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[NSCharacterSet(TSCEAdditions) tsce_singleQuoteCharacterSet]_block_invoke", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/NSCharacterSetAdditions.m", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 25, 0, "invalid nil value for '%{public}s'", "set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }
}

id sub_2214466C8()
{
  if (qword_27CFB55A8 != -1)
  {
    sub_2216F7BE4();
  }

  v1 = qword_27CFB55A0;

  return v1;
}

void sub_22144670C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCAB50], a2, @"(){}+-*/^%:,!&=><$'#|", a4, a5);;
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%C%C%C", v6, v7, 12289, 12300, 12301);
  objc_msgSend_addCharactersInString_(v47, v9, v8, v10, v11);

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%C%C%C%C%C%C%C", v13, v14, 8218, 8219, 8220, 8221, 8222, 8223, 1524);
  objc_msgSend_addCharactersInString_(v47, v16, v15, v17, v18);

  v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"\n\r%C%C", v20, v21, 8232, 8233);
  objc_msgSend_addCharactersInString_(v47, v23, v22, v24, v25);

  v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v26, @"%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C%C", v27, v28, 65288, 65289, 65291, 65122, 65293, 8722, 12540, 65123, 65290, 65295, 65342, 65285, 65306, 65292, 65281, 65286, 65309, 65308, 65310, 65307, 1563, 1642);
  objc_msgSend_addCharactersInString_(v47, v30, v29, v31, v32);

  objc_storeStrong(&qword_27CFB55A0, v47);
  if (!qword_27CFB55A0)
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "+[NSCharacterSet(TSCEAdditions) tsce_characterSetRequiringSingleQuotes]_block_invoke", v34, v35);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/NSCharacterSetAdditions.m", v39, v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v42, v37, v41, 53, 0, "invalid nil value for '%{public}s'", "set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }
}

id sub_22144696C()
{
  if (qword_27CFB55B8 != -1)
  {
    sub_2216F7BF8();
  }

  v1 = qword_27CFB55B0;

  return v1;
}

void sub_2214469B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCAB50];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @".%C%C", a4, a5, 65294, 1643);
  obj = objc_msgSend_characterSetWithCharactersInString_(v5, v7, v6, v8, v9);

  objc_storeStrong(&qword_27CFB55B0, obj);
  if (!qword_27CFB55B0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[NSCharacterSet(TSCEAdditions) tsce_periodCharacterSet]_block_invoke", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/NSCharacterSetAdditions.m", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 66, 0, "invalid nil value for '%{public}s'", "set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }
}

id sub_221446AC8()
{
  if (qword_27CFB55C8 != -1)
  {
    sub_2216F7C0C();
  }

  v1 = qword_27CFB55C0;

  return v1;
}

void sub_221446B0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  obj = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCAB50], a2, a3, a4, a5);
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"%C%C%C", v6, v7, 160, 5760, 6158);
  objc_msgSend_addCharactersInString_(obj, v9, v8, v10, v11);

  objc_msgSend_addCharactersInRange_(obj, v12, 0x2000, 11, v13);
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%C%C%C", v15, v16, 8239, 8287, 12288);
  objc_msgSend_addCharactersInString_(obj, v18, v17, v19, v20);

  objc_storeStrong(&qword_27CFB55C0, obj);
  if (!qword_27CFB55C0)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "+[NSCharacterSet(TSCEAdditions) tsce_internationalWhitespaceCharacterSet]_block_invoke", v22, v23);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/NSCharacterSetAdditions.m", v27, v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v29, 89, 0, "invalid nil value for '%{public}s'", "set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
  }
}

id sub_221446C7C()
{
  if (qword_27CFB55D8 != -1)
  {
    sub_2216F7C20();
  }

  v1 = qword_27CFB55D0;

  return v1;
}

void sub_221446CC0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  obj = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCAB50], a2, a3, a4, a5);
  v9 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v5, v6, v7, v8);
  objc_msgSend_formUnionWithCharacterSet_(obj, v10, v9, v11, v12);

  objc_storeStrong(&qword_27CFB55D0, obj);
  if (!qword_27CFB55D0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[NSCharacterSet(TSCEAdditions) tsce_internationalWhitespaceAndNewlineCharacterSet]_block_invoke", v14, v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/NSCharacterSetAdditions.m", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 105, 0, "invalid nil value for '%{public}s'", "set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }
}

id sub_221446DCC()
{
  if (qword_27CFB55E8 != -1)
  {
    sub_2216F7C34();
  }

  v1 = qword_27CFB55E0;

  return v1;
}

void sub_221446E10(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCA900];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @":%C", a4, a5, 65306);
  obj = objc_msgSend_characterSetWithCharactersInString_(v5, v7, v6, v8, v9);

  objc_storeStrong(&qword_27CFB55E0, obj);
  if (!qword_27CFB55E0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[NSCharacterSet(TSCEAdditions) tsce_internationalColonCharacterSet]_block_invoke", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/NSCharacterSetAdditions.m", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 119, 0, "invalid nil value for '%{public}s'", "set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }
}

id sub_221446F24()
{
  if (qword_27CFB55F8 != -1)
  {
    sub_2216F7C48();
  }

  v1 = qword_27CFB55F0;

  return v1;
}

void sub_221446F68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCA900];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"$%C", a4, a5, 65284);
  obj = objc_msgSend_characterSetWithCharactersInString_(v5, v7, v6, v8, v9);

  objc_storeStrong(&qword_27CFB55F0, obj);
  if (!qword_27CFB55F0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[NSCharacterSet(TSCEAdditions) tsce_dollarSignCharacterSet]_block_invoke", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/NSCharacterSetAdditions.m", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 133, 0, "invalid nil value for '%{public}s'", "set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }
}

id sub_22144707C()
{
  if (qword_27CFB5608 != -1)
  {
    sub_2216F7C5C();
  }

  v1 = qword_27CFB5600;

  return v1;
}

void sub_2214470C0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CCA900];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @",%C%C%C%C%C", a4, a5, 65104, 65292, 65108, 65307, 1563);;
  obj = objc_msgSend_characterSetWithCharactersInString_(v5, v7, v6, v8, v9);

  objc_storeStrong(&qword_27CFB5600, obj);
  if (!qword_27CFB5600)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "+[NSCharacterSet(TSCEAdditions) tsce_listDelimiterCharacterSet]_block_invoke", v11, v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/NSCharacterSetAdditions.m", v16, v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v19, v14, v18, 147, 0, "invalid nil value for '%{public}s'", "set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }
}

void sub_22144758C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2214475B4(__n128 *a1, __n128 *a2)
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

void sub_2214475D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221447668(uint64_t a1, TSUIndexRange *this)
{
  v3 = *(a1 + 40);
  v4 = TSUIndexRange::asNSRange(this);
  v15.origin = sub_221447778(v3, 1, v4, v5, v6);
  v15.size = v7;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 56);
  if (*(v8 + 48) != v9)
  {
    v14 = *(v9 - 16);
    if (TSUCellRect::lastColumn(&v14) + 1 == *(a1 + 40))
    {
      v10 = TSUCellRect::firstRow(&v14);
      if (v10 == TSUCellRect::firstRow(&v15))
      {
        v11 = TSUCellRect::lastRow(&v14);
        if (v11 == TSUCellRect::lastRow(&v15))
        {
          *(*(*(a1 + 32) + 8) + 56) -= 16;
          origin = v14.origin;
          v13 = TSUCellRect::bottomRight(&v15);
          v15.origin = origin;
          v15.size = (((WORD2(v13) - origin.column + 1) | ((v13 - origin.row) << 32)) + 0x100000000);
        }
      }
    }

    v8 = *(*(a1 + 32) + 8);
  }

  sub_221083454(v8 + 48, &v15);
}

uint64_t sub_221447778(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4, a5);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 168, 0, "Invalid column range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSUCellRect TSUMakeCellRectFromNSRanges(NSRange, NSRange)", a4, a5);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 169, 0, "Invalid row range");
    v27 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  else
  {
    v32 = a3 | (a1 << 32);
    if (!a4)
    {
      v32 = 0x7FFF7FFFFFFFLL;
    }

    if (!a2)
    {
      v32 = 0x7FFF7FFFFFFFLL;
    }

    if (a1 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFF7FFFFFFFLL;
    }

    else
    {
      return v32;
    }
  }

  return v27;
}

void sub_221447E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221447FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221448100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_221448248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_2214484B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  sub_221087B80(&a13);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_2214485A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2214486E8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v11 = objc_msgSend_uidRanges(v6, v7, v8, v9, v10);
    v15 = *v11;
    v16 = v11[1];
    if (*v11 != v16)
    {
      do
      {
        v17 = objc_msgSend_cellRegionForUIDRange_(*(a1 + 32), v12, v15, v13, v14);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = sub_22144883C;
        v21[3] = &unk_278461548;
        v22 = *(a1 + 40);
        objc_msgSend_enumerateCellRangesUsingBlock_(v17, v18, v21, v19, v20);

        v15 += 48;
      }

      while (v15 != v16);
    }
  }
}

uint64_t sub_22144893C(uint64_t a1, TSCERangeCoordinate *this)
{
  TSCERangeCoordinate::asCellRect(this);
  v6 = v5;
  v7 = *(a1 + 32);

  return objc_msgSend_p_insertRangeIntoRegion_(v7, v3, v6, v3, v4);
}

void sub_221448AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
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

uint64_t sub_221448D74(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = result;
  v57 = *MEMORY[0x277D85DE8];
  v8 = *(result + 56);
  v9 = *(result + 64);
  if (HIDWORD(v9))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || HIDWORD(a3) == 0 || a3 == 0)
  {
    goto LABEL_12;
  }

  v17 = v8 & 0xFFFF00000000;
  if (v8 == 0x7FFFFFFFLL && v17 != 0x7FFF00000000)
  {
    goto LABEL_44;
  }

  v20 = v8 == 0x7FFFFFFF && v17 != 0x7FFF00000000;
  if (v8 > a2 && !v20)
  {
    goto LABEL_12;
  }

  v21 = v8 + HIDWORD(v9) - 1;
  if (v8 == 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  if (v21 < a2)
  {
    goto LABEL_12;
  }

  if (v8 != 0x7FFFFFFFLL && v17 == 0x7FFF00000000)
  {
    v22 = v9 + 32766;
    v23 = HIDWORD(a2);
    v24 = 0x7FFF;
  }

  else
  {
LABEL_44:
    v23 = HIDWORD(a2);
    v24 = WORD2(v8);
    if (WORD2(v8) > WORD2(a2))
    {
      goto LABEL_12;
    }

    v25 = WORD2(v8) == 0x7FFF || v9 == 0;
    v22 = v9 - 1 + WORD2(v8);
    v26 = v25 ? 0x7FFF : v9 - 1 + WORD2(v8);
    if (v26 < WORD2(a2))
    {
      goto LABEL_12;
    }
  }

  if (v24 == 0x7FFF || v9 == 0)
  {
    v28 = 0x7FFF;
  }

  else
  {
    v28 = v22;
  }

  v29 = v23;
  v30 = a3 + v23 - 1;
  if (v29 == 0x7FFF || a3 == 0)
  {
    v30 = 0x7FFF;
  }

  if (v28 >= v30)
  {
    v32 = v8 + HIDWORD(v9) - 1;
    if (v8 == 0x7FFFFFFF)
    {
      v32 = 0x7FFFFFFF;
    }

    v33 = a2 == 0x7FFFFFFF ? 0x7FFFFFFF : a2 + HIDWORD(a3) - 1;
    if (v32 >= v33)
    {
      goto LABEL_115;
    }
  }

LABEL_12:
  result = sub_221119E0C(a2, a3, v8, v9);
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(a2) && a2)
  {
    if ((v6 & 0xFFFF00000000) != 0x7FFF00000000 && v6 == 0x7FFFFFFF)
    {
      v14 = 0;
    }

    else
    {
      v14 = v6;
    }

    v15 = result >= v14;
    v16 = result - v14;
    if (v16 != 0 && v15)
    {
      *&v53 = v6;
      *(&v53 + 1) = __PAIR64__(v16, a3);
      v34 = v16 + v6;
      a3 = a3 | ((HIDWORD(a3) - v16) << 32);
    }

    else
    {
      v53 = xmmword_2217E0780;
      v34 = v6;
    }

    v35 = result + HIDWORD(a2) - 1;
    v36 = v6 & 0xFFFFFFFF00000000 | v34;
    if (HIDWORD(a3))
    {
      v37 = v34 == 0x7FFFFFFF;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      v38 = 0x7FFFFFFF;
    }

    else
    {
      v38 = v34 + HIDWORD(a3) - 1;
    }

    v15 = v38 >= v35;
    v39 = v38 - v35;
    if (v39 != 0 && v15)
    {
      *(&v54 + 4) = __PAIR64__(a3, (v6 & 0xFFFFFFFF00000000) >> 32);
      LODWORD(v54) = result + HIDWORD(a2);
      HIDWORD(v54) = v39;
      a3 = a3 | ((HIDWORD(a3) - v39) << 32);
    }

    else
    {
      v54 = xmmword_2217E0780;
    }

    if (v34 != 0x7FFFFFFF && (v6 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v41 = 0;
    }

    else
    {
      v41 = WORD2(v6);
    }

    v15 = WORD2(result) >= v41;
    v42 = WORD2(result) - v41;
    if (v42 != 0 && v15)
    {
      *&v55 = v36;
      *(&v55 + 1) = __PAIR64__(HIDWORD(a3), v42);
    }

    else
    {
      v55 = xmmword_2217E0780;
    }

    if (WORD2(result) == 0x7FFF || a2 == 0)
    {
      v44 = 0x7FFF;
    }

    else
    {
      v44 = a2 + WORD2(result) - 1;
    }

    if (a3)
    {
      v45 = WORD2(v6) == 0x7FFF;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      v46 = 0x7FFF;
    }

    else
    {
      v46 = WORD2(v6) + a3 - 1;
    }

    if (v44 >= v46)
    {
      v56 = xmmword_2217E0780;
    }

    else
    {
      *&v56 = v36;
      HIDWORD(v56) = HIDWORD(a3);
      WORD2(v56) = v44 + 1;
      DWORD2(v56) = v46 - v44;
    }

    v47 = &v53;
    v48 = 4;
    do
    {
      if (*v47 != 0x7FFFFFFF && (*v47 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v50 = *(v47 + 1);
        if (HIDWORD(v50) && v50 != 0)
        {
          result = malloc_type_realloc(*(*(v7[6] + 8) + 24), 16 * ++*(*(v7[5] + 8) + 24), 0x1000040451B5BE8uLL);
          *(*(v7[6] + 8) + 24) = result;
          *(*(*(v7[6] + 8) + 24) + 16 * *(*(v7[5] + 8) + 24) - 16) = *v47;
        }
      }

      ++v47;
      --v48;
    }

    while (v48);
LABEL_115:
    a3 = 0;
    v6 = 0x7FFF7FFFFFFFLL;
  }

  if (v6 != 0x7FFFFFFF && (v6 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(a3) && a3)
  {
    v52 = v7[4];

    return objc_msgSend_p_insertRangeIntoRegion_(v52, a2, v6, a3, a5);
  }

  return result;
}

unint64_t sub_221449540(void *a1, unint64_t a2, unint64_t a3)
{
  result = sub_221119E0C(a2, a3, a1[5], a1[6]);
  v7 = result;
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v5) != 0 && v5 != 0)
  {
    v11 = a1[4];

    return objc_msgSend_p_insertRangeIntoRegion_(v11, v5, v7, v5, v6);
  }

  return result;
}

void sub_221449778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  _Block_object_dispose(&a19, 8);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  v30 = *(v28 - 56);
  if (v30)
  {
    *(v28 - 48) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_2214497E4(void *a1, unint64_t a2, unint64_t a3)
{
  *&v5 = sub_2211C1FC4(a2, a3, a1[5], a1[6]);
  *(&v5 + 1) = v4;
  sub_221083454(*(a1[4] + 8) + 48, &v5);
}

void sub_221449A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void sub_221449BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221449C00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221449C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_class();
  v8 = objc_msgSend_region_subtractingRange_(v6, v7, *(*(*(a1 + 32) + 8) + 40), a2, a3);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_221449DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_221449DFC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v13 = objc_msgSend_regionByIntersectingRange_(*(a1 + 32), a2, a2, a3, a5);
  v10 = objc_msgSend_regionByAddingRegion_(v6, v7, v13, v8, v9);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_22144A04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_22144A098(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_22144A0A8(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 40) + 8) + 52) = a2;
  *(*(*(a1 + 40) + 8) + 56) = a3;
  return objc_msgSend_p_insertRangeIntoRegion_(*(a1 + 32), a2, *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56), a5);
}

void sub_22144A240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22144A28C(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 40) + 8) + 48) = a2;
  *(*(*(a1 + 40) + 8) + 60) = a3;
  return objc_msgSend_p_insertRangeIntoRegion_(*(a1 + 32), a2, *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56), a5);
}

void sub_22144A8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22144A970;
  v9[3] = &unk_278465598;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v12 = a3;
  objc_msgSend_enumerateRangesUsingBlock_(v5, v6, v9, v7, v8);
}

uint64_t sub_22144A970(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[4];
  v7 = sub_221447778(a2, a3, a1[5], a1[6], a5);

  return objc_msgSend_p_insertRangeIntoRegion_(v5, v6, v7, v6, v8);
}

void sub_22144B1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22144B1FC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a3 = xmmword_2217E0780;
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = sub_221119E0C(*a1, v6, *a2, v9);
  if (v10 == 0x7FFFFFFF || (v10 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  if (!HIDWORD(v11) || v11 == 0)
  {
    return 0;
  }

  v15 = 0;
  v16 = v7 == 0x7FFFFFFF;
  if (v16 && (v7 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v17 = 0;
  }

  else
  {
    v17 = v7;
  }

  v18 = v8 == 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF && (v8 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v20 = 0;
  }

  else
  {
    v20 = WORD2(v8);
  }

  if (v18 && (v8 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v21 = 0;
  }

  else
  {
    v21 = v8;
  }

  if (!HIDWORD(v6))
  {
    v16 = 1;
  }

  v22 = v7 + HIDWORD(v6) - 1;
  if (v16)
  {
    v22 = 0x7FFFFFFF;
  }

  if (!HIDWORD(v9))
  {
    v18 = 1;
  }

  v23 = v8 + HIDWORD(v9) - 1;
  if (v18)
  {
    v23 = 0x7FFFFFFF;
  }

  if (v7 != 0x7FFFFFFF && (v7 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v25 = 0;
  }

  else
  {
    v25 = WORD2(v7);
  }

  v26 = v6 + WORD2(v7) - 1;
  if (v6)
  {
    v27 = WORD2(v7) == 0x7FFF;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v26 = 0x7FFF;
  }

  if (v9)
  {
    v28 = WORD2(v8) == 0x7FFF;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    v29 = 0x7FFF;
  }

  else
  {
    v29 = v9 + WORD2(v8) - 1;
  }

  v51 = xmmword_2217E0780;
  if (v10 == 0x7FFFFFFF)
  {
    v30 = 0;
  }

  else
  {
    v30 = v10;
  }

  if (v30 > v21)
  {
    *&v51 = *a2;
    DWORD2(v51) = *(a2 + 8);
    HIDWORD(v51) = v30 - v21;
    v15 = 1;
  }

  v50 = xmmword_2217E0780;
  v31 = v10 + HIDWORD(v11) - 1;
  if (v10 == 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  v32 = v23 - v31;
  if (v23 <= v31)
  {
    v32 = 0;
  }

  else
  {
    *&v50 = *a2;
    DWORD2(v50) = *(a2 + 8);
    HIDWORD(v50) = v23 - v31;
    LODWORD(v50) = v31 + 1;
    ++v15;
  }

  v49 = xmmword_2217E0780;
  if (v20 < WORD2(v10))
  {
    v49 = *a2;
    DWORD2(v49) = WORD2(v10) - v20;
    ++v15;
  }

  v48 = xmmword_2217E0780;
  if (v11)
  {
    v33 = WORD2(v10) == 0x7FFF;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    v34 = 0x7FFF;
  }

  else
  {
    v34 = v11 + WORD2(v10) - 1;
  }

  if (v34 >= v29)
  {
    v35 = 0;
  }

  else
  {
    v48 = *a2;
    WORD2(v48) = v34 + 1;
    v35 = v29 - v34;
    DWORD2(v48) = v35;
    ++v15;
  }

  if (v15 != 3)
  {
    if (v15 != 2)
    {
      if (v15 == 1)
      {
        v36 = v23 > v31 || v30 > v21;
        if (v36 && v25 == v20 && v26 == v29 || (v34 >= v29 ? (v37 = v20 >= WORD2(v10)) : (v37 = 0), !v37 && v17 == v21 && v22 == v23))
        {
          v38 = sub_2211C1FC4(v7, v6, v8, v9);
          *a1 = xmmword_2217E0780;
          *a2 = v38;
          *(a2 + 8) = v39;
        }

        else
        {
          v43 = &v48;
          if (v20 < WORD2(v10))
          {
            v43 = &v49;
          }

          if (v23 > v31)
          {
            v43 = &v50;
          }

          if (v30 > v21)
          {
            v43 = &v51;
          }

          *a2 = *v43;
        }
      }

      return 1;
    }

    if (v30 > v21 && v23 > v31)
    {
      v40 = v51;
LABEL_89:
      *a2 = v40;
      v41 = v50;
LABEL_99:
      *a3 = v41;
      return 1;
    }

    if (v20 < WORD2(v10) && v34 < v29)
    {
      *a2 = v49;
LABEL_98:
      v41 = v48;
      goto LABEL_99;
    }

    if (v30 <= v21 || v34 >= v29)
    {
      if (v23 <= v31 || v34 >= v29)
      {
        if (v23 <= v31 || v20 >= WORD2(v10))
        {
          if (v20 >= WORD2(v10) || v30 <= v21)
          {
            return 1;
          }

          if (v22 == v23)
          {
            *a2 = *a1;
            *(a2 + 4) -= v25 - v20;
            v42 = *(a2 + 8) + v25 - v20;
LABEL_117:
            *(a2 + 8) = v42;
            v44 = v51;
LABEL_128:
            *a3 = v44;
            *a1 = xmmword_2217E0780;
            return 1;
          }

          if (v26 != v29)
          {
            *a2 = v51;
            LODWORD(v49) = v17;
            HIDWORD(v49) = HIDWORD(v11);
            v41 = v49;
            goto LABEL_99;
          }

          *a2 = *a1;
          *a2 -= v17 - v21;
          v47 = *(a2 + 12) + v17 - v21;
LABEL_136:
          *(a2 + 12) = v47;
          v44 = v49;
          goto LABEL_128;
        }

        if (v17 != v21)
        {
          if (v26 != v29)
          {
            HIDWORD(v49) -= v32;
            v40 = v49;
            goto LABEL_89;
          }

          *a2 = *a1;
          v47 = *(a2 + 12) + v32;
          goto LABEL_136;
        }

        *a2 = *a1;
        *(a2 + 4) -= v25 - v20;
        v45 = *(a2 + 8) + v25 - v20;
LABEL_124:
        *(a2 + 8) = v45;
        v44 = v50;
        goto LABEL_128;
      }

      if (v17 == v21)
      {
        *a2 = *a1;
        v45 = *(a2 + 8) + v35;
        goto LABEL_124;
      }

      if (v25 != v20)
      {
        HIDWORD(v48) -= v32;
        v40 = v48;
        goto LABEL_89;
      }

      *a2 = *a1;
      v46 = *(a2 + 12) + v32;
    }

    else
    {
      if (v22 == v23)
      {
        *a2 = *a1;
        v42 = *(a2 + 8) + v35;
        goto LABEL_117;
      }

      if (v25 != v20)
      {
        *a2 = v51;
        LODWORD(v48) = v17;
        HIDWORD(v48) = HIDWORD(v11);
        goto LABEL_98;
      }

      *a2 = *a1;
      *a2 -= v17 - v21;
      v46 = *(a2 + 12) + v17 - v21;
    }

    *(a2 + 12) = v46;
    v44 = v48;
    goto LABEL_128;
  }

  if (v30 > v21)
  {
    if (v23 > v31)
    {
      if (v20 < WORD2(v10))
      {
        *(a1 + 4) = WORD2(v7) + v11;
      }

      *(a1 + 8) = v6 - v11;
      return 1;
    }

    *a1 = v7 + HIDWORD(v11);
  }

  *(a1 + 12) = HIDWORD(v6) - HIDWORD(v11);
  return 1;
}

void sub_22144C1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_22144C234(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 48) + 8) + 24) += *(*(*(a1 + 56) + 8) + 24) - a2;
  *(*(*(a1 + 56) + 8) + 24) = &a2[a3];
  v6 = *(*(*(a1 + 48) + 8) + 24) << 32;
  v7 = objc_msgSend_regionByIntersectingRange_(*(a1 + 32), a2, a2, (a3 << 32) | 0x3E8, a5);
  v11 = objc_msgSend_regionOffsetBy_(v7, v8, v6, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22144C364;
  v15[3] = &unk_278461548;
  v16 = *(a1 + 40);
  objc_msgSend_enumerateCellRangesUsingBlock_(v11, v12, v15, v13, v14);
}

void sub_22144C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_22144C568(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 48) + 8) + 24) += *(*(*(a1 + 56) + 8) + 24) - a2;
  *(*(*(a1 + 56) + 8) + 24) = &a2[a3];
  v6 = *(*(*(a1 + 48) + 8) + 24);
  v7 = objc_msgSend_regionByIntersectingRange_(*(a1 + 32), a2, a2 << 32, a3 | 0xF424000000000, a5);
  v11 = objc_msgSend_regionOffsetBy_(v7, v8, v6, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22144C698;
  v15[3] = &unk_278461548;
  v16 = *(a1 + 40);
  objc_msgSend_enumerateCellRangesUsingBlock_(v11, v12, v15, v13, v14);
}

void sub_22144C834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_22144C89C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  if ((a2 & 0xFFFF00000000) != 0x7FFF00000000 && a2 == 0x7FFFFFFFLL)
  {
    objc_msgSend_countOfIndexesInRange_(v7, a2, 0, 0, a5);
  }

  else
  {
    objc_msgSend_countOfIndexesInRange_(v7, a2, 0, a2, a5);
  }

  v9 = TSUOffsetColumnRowCoordinate();
  v12 = objc_msgSend_regionByAddingRange_(*(*(*(a1 + 40) + 8) + 40), v10, v9, a3, v11);
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_22144CAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_22144CB30(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  if (a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    objc_msgSend_countOfIndexesInRange_(v7, a2, 0, 0, a5);
  }

  else
  {
    objc_msgSend_countOfIndexesInRange_(v7, a2, 0, WORD2(a2), a5);
  }

  v9 = TSUOffsetColumnRowCoordinate();
  v12 = objc_msgSend_regionByAddingRange_(*(*(*(a1 + 40) + 8) + 40), v10, v9, a3, v11);
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_22144CD20(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22144CDCC;
  v7[3] = &unk_2784654F8;
  v9 = a2;
  v10 = (a3 << 32) | 0x3E8;
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  objc_msgSend_enumerateCellRangesUsingBlock_(v3, v4, v7, v5, v6);
}

unint64_t sub_22144CDCC(void *a1, unint64_t a2, unint64_t a3)
{
  result = sub_221119E0C(a2, a3, a1[5], a1[6]);
  v7 = result;
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v5) != 0 && v5 != 0)
  {
    v11 = a1[4];

    return objc_msgSend_p_insertRangeIntoRegion_(v11, v5, v7, v5, v6);
  }

  return result;
}

void sub_22144CF94(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22144D044;
  v7[3] = &unk_2784654F8;
  v9 = a2 << 32;
  v10 = a3 | 0xF424000000000;
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  objc_msgSend_enumerateCellRangesUsingBlock_(v3, v4, v7, v5, v6);
}

unint64_t sub_22144D044(void *a1, unint64_t a2, unint64_t a3)
{
  result = sub_221119E0C(a2, a3, a1[5], a1[6]);
  v7 = result;
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v5) != 0 && v5 != 0)
  {
    v11 = a1[4];

    return objc_msgSend_p_insertRangeIntoRegion_(v11, v5, v7, v5, v6);
  }

  return result;
}

void sub_22144D21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_22144D258(void *a1, int a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 24);
  v7 = v6 + a2;
  *(v5 + 24) = v6 + a3;
  v8 = objc_alloc_init(TSTCellRegion);
  v9 = *(*(a1[6] + 8) + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22144D364;
  v17[3] = &unk_2784655E8;
  v17[4] = a1[4];
  v19 = v7;
  v20 = v3;
  v10 = v8;
  v18 = v10;
  objc_msgSend_enumerateCellRangesUsingBlock_(v9, v11, v17, v12, v13);
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v10;
  v16 = v10;
}

uint64_t sub_22144D364(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v8 = a2;
  v9 = HIDWORD(a3);
  v10 = *(a1 + 48);
  v11 = a2 + HIDWORD(a3) - 1;
  if (HIDWORD(a3))
  {
    v12 = a2 == 0x7FFFFFFF;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v11 = 0x7FFFFFFF;
  }

  if (v11 >= v10)
  {
    if ((a2 & 0xFFFF00000000) != 0x7FFF00000000 && a2 == 0x7FFFFFFF)
    {
      v17 = 0;
    }

    else
    {
      v17 = a2;
    }

    v18 = *(a1 + 52);
    v19 = v17 >= v10;
    v20 = v18 + HIDWORD(a3);
    v21 = v18 + a2;
    if (v19)
    {
      v8 = v21;
    }

    else
    {
      v8 = a2;
    }

    if (!v19)
    {
      LODWORD(v9) = v20;
    }
  }

  else if (v11 + 1 == v10)
  {
    v13 = objc_msgSend_regionByIntersectingRange_(*(a1 + 32), a2, a2 & 0xFFFF00000000 | v10, a3 | 0x100000000, a5);
    if (objc_msgSend_equalsCellRange_(v13, v14, a2 & 0xFFFF00000000 | v10, v5 | 0x100000000, v15))
    {
      LODWORD(v9) = *(a1 + 52) + v9;
    }

    else
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_22144D500;
      v26[3] = &unk_278461548;
      v27 = *(a1 + 40);
      objc_msgSend_enumerateCellRangesUsingBlock_(v13, v22, v26, v23, v24);
    }
  }

  return objc_msgSend_p_insertRangeIntoRegion_(*(a1 + 40), a2, a2 & 0xFFFFFFFF00000000 | v8, v5 | (v9 << 32), a5);
}

void sub_22144D664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_22144D6A0(void *a1, __int16 a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 24);
  v7 = v6 + a2;
  *(v5 + 24) = v6 + a3;
  v8 = objc_alloc_init(TSTCellRegion);
  v9 = *(*(a1[6] + 8) + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22144D7B0;
  v17[3] = &unk_278465638;
  v20 = v7;
  v17[4] = a1[4];
  v19 = v3;
  v10 = v8;
  v18 = v10;
  objc_msgSend_enumerateCellRangesUsingBlock_(v9, v11, v17, v12, v13);
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v10;
  v16 = v10;
}

uint64_t sub_22144D7B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v8 = a2 >> 32;
  v9 = a3 & 0xFFFFFFFF00000000;
  v10 = *(a1 + 52);
  if (a3)
  {
    v11 = WORD2(a2) == 0x7FFF;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0x7FFF;
  }

  else
  {
    v12 = a3 + WORD2(a2) - 1;
  }

  if (v10 <= v12)
  {
    if (a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v18 = 0;
    }

    else
    {
      v18 = WORD2(a2);
    }

    v19 = *(a1 + 48);
    if (v10 > v18)
    {
      v5 = v19 + a3;
    }

    else
    {
      LOWORD(v8) = v19 + WORD2(a2);
      v5 = a3;
    }
  }

  else if (v12 + 1 == v10)
  {
    v13 = a2 | (v10 << 32);
    v14 = objc_msgSend_regionByIntersectingRange_(*(a1 + 32), a2, v13, v9 | 1, a5);
    if (objc_msgSend_equalsCellRange_(v14, v15, v13, v9 | 1, v16))
    {
      v5 += *(a1 + 48);
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_22144D948;
      v24[3] = &unk_278461548;
      v25 = *(a1 + 40);
      objc_msgSend_enumerateCellRangesUsingBlock_(v14, v20, v24, v21, v22);
    }
  }

  return objc_msgSend_p_insertRangeIntoRegion_(*(a1 + 40), a2, a2 & 0xFFFF0000FFFFFFFFLL | (v8 << 32), v9 | v5, a5);
}

uint64_t sub_22144DA90(uint64_t result, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 == 0x7FFFFFFF;
  v6 = a2 & 0xFFFF00000000;
  if (v5 && (a2 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  if (!HIDWORD(a3))
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = a2 + HIDWORD(a3) - 1;
  }

  if (v7 <= v8)
  {
    v9 = result;
    v10 = a3 | 0x100000000;
    do
    {
      v11 = objc_msgSend_mapIndex_(*(v9 + 32), a2, v7, a4, a5);
      result = objc_msgSend_p_insertRangeIntoRegion_(*(v9 + 40), v12, v6 | v11, v10, v13);
      v7 = (v7 + 1);
    }

    while (v7 <= v8);
  }

  return result;
}

void sub_22144DFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_22144DFEC(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v8 = HIDWORD(a3);
  v9 = a2;
  v10 = objc_msgSend_tsu_indexSetByIntersectingWithRange_(*(a1 + 32), a2, a2, HIDWORD(a3), a5);
  v14 = a2 & 0xFFFF00000000;
  if ((a2 & 0xFFFF00000000) != 0x7FFF00000000 && a2 == 0x7FFFFFFF)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2;
  }

  v56 = v10;
  v20 = objc_msgSend_indexGreaterThanOrEqualToIndex_(v10, v11, v16, v12, v13);
  v21 = a2 + v8 - 1;
  if (v8)
  {
    v22 = a2 == 0x7FFFFFFF;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0x7FFFFFFF;
    v24 = objc_msgSend_indexLessThanOrEqualToIndex_(v56, v17, 0x7FFFFFFFLL, v18, v19);
  }

  else
  {
    v23 = a2 + v8 - 1;
    v24 = objc_msgSend_indexLessThanOrEqualToIndex_(v56, v17, v21, v18, v19);
  }

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = v24;
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (HIDWORD(v20))
      {
        v54 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTCellRegion regionByTrimmingAroundRowIndices:]_block_invoke", v26, v27);
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v37, v38);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v40, v20, v39, 1270, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
        LODWORD(v20) = -1;
      }

      if (HIDWORD(v28))
      {
        v55 = MEMORY[0x277D81150];
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTCellRegion regionByTrimmingAroundRowIndices:]_block_invoke", v26, v27);
        v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v46, v47);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v49, v28, v48, 1271, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
        LODWORD(v28) = -1;
      }

      if (v20 > v16)
      {
        v29 = v9 != 0x7FFFFFFF && v14 == 0x7FFF00000000;
        v30 = v29 ? 0 : a2 & 0xFFFF00000000;
        if (objc_msgSend_intersectsCellRange_(*(a1 + 40), v25, v30 | (v20 - 1), v5 | 0x100000000, v27))
        {
          LODWORD(v20) = v16;
        }
      }

      if (v28 < v23)
      {
        v31 = v9 != 0x7FFFFFFF && v14 == 0x7FFF00000000;
        v32 = v31 ? 0 : a2 & 0xFFFF00000000;
        if (objc_msgSend_intersectsCellRange_(*(a1 + 40), v25, v32 | (v28 + 1), v5 | 0x100000000, v27))
        {
          LODWORD(v28) = v23;
        }
      }

      v33 = objc_msgSend_regionByAddingRange_(*(*(*(a1 + 48) + 8) + 40), v25, a2 & 0xFFFFFFFF00000000 | v20, v5 | ((v28 - v20 + 1) << 32), v27);
      v34 = *(*(a1 + 48) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v33;
    }
  }
}

void sub_22144E404(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2 >> 32;
  v9 = WORD2(a2);
  v10 = objc_msgSend_tsu_indexSetByIntersectingWithRange_(a1[4], a2, WORD2(a2), a3, a5);
  v14 = a2 & 0xFFFF00000000;
  if (a2 != 0x7FFFFFFFLL && v14 == 0x7FFF00000000)
  {
    v16 = 0;
  }

  else
  {
    v16 = v8;
  }

  v53 = v10;
  v20 = objc_msgSend_indexGreaterThanOrEqualToIndex_(v10, v11, v16, v12, v13);
  if (a3)
  {
    v21 = v9 == 0x7FFF;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0x7FFF;
  }

  else
  {
    v22 = a3 + v8 - 1;
  }

  v23 = objc_msgSend_indexLessThanOrEqualToIndex_(v53, v17, v22, v18, v19);
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = v23;
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v20 >= 0x10000)
      {
        v51 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCellRegion regionByTrimmingAroundColumnIndices:]_block_invoke", v25, v26);
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v34, v35);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v37, v20, v36, 1315, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
        LOWORD(v20) = -1;
      }

      if (v27 >= 0x10000)
      {
        v52 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCellRegion regionByTrimmingAroundColumnIndices:]_block_invoke", v25, v26);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v43, v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v46, v27, v45, 1316, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
        LOWORD(v27) = -1;
      }

      v28 = a3 & 0xFFFFFFFF00000000;
      if (v20 > v16)
      {
        v29 = v14 != 0x7FFF00000000 && a2 == 0x7FFFFFFFLL;
        v30 = v29 ? 0 : a2;
        if (objc_msgSend_intersectsCellRange_(a1[5], v24, v30 | ((v20 - 1) << 32), v28 | 1, v26))
        {
          LOWORD(v20) = v16;
        }
      }

      if (v27 < v22)
      {
        v31 = v14 != 0x7FFF00000000 && a2 == 0x7FFFFFFFLL;
        v32 = v31 ? 0 : a2;
        if (objc_msgSend_intersectsCellRange_(a1[5], v24, v32 | ((v27 + 1) << 32), v28 | 1, v26))
        {
          LOWORD(v27) = v22;
        }
      }

      objc_msgSend_addRange_(a1[6], v24, a2 & 0xFFFF0000FFFFFFFFLL | (v20 << 32), (v27 - v20 + 1) | v28, v26);
    }
  }
}

uint64_t sub_22144EACC(uint64_t result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  if (a2 == 0x7FFFFFFFLL)
  {
    return result;
  }

  v7 = result;
  result = objc_msgSend_containsIndex_(*(result + 32), a2, a2, a4, a5);
  v11 = result;
  if (result)
  {
    if (*(v7 + 88) == 1 && (*(v7 + 89) & 1) != 0)
    {
      return result;
    }
  }

  else
  {
    result = objc_msgSend_containsIndex_(*(v7 + 40), v8, v6, v9, v10);
    if (result && (*(v7 + 90) & 1) != 0)
    {
      return result;
    }
  }

  if ((a2 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return result;
  }

  v12 = WORD2(a2);
  result = objc_msgSend_containsIndex_(*(v7 + 48), v8, WORD2(a2), v9, v10);
  if (result)
  {
    if (!v11 || *(v7 + 89) == 1) && (*(v7 + 91))
    {
      return result;
    }
  }

  else
  {
    result = objc_msgSend_containsIndex_(*(v7 + 56), v13, WORD2(a2), v14, v15);
    if (result || v11) && (*(v7 + 88))
    {
      return result;
    }
  }

  v16 = a2 & 0xFFFF000000000000;
  if (v12 == 0x7FFF || (*(v7 + 92) & 1) == 0 || (result = objc_msgSend_hasMergeFragmentAtCellID_(*(v7 + 64), v13, v16 | (v12 << 32) | v6, v14, v15), (result & 1) == 0))
  {
    v17 = *(v7 + 80);
    if (v17)
    {
      v18 = v16 | (v12 << 32) | v6;
      result = (*(v17 + 16))(v17, v18);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v18 = v16 | (v12 << 32) | v6;
    }

    v19 = *(v7 + 72);

    return objc_msgSend_p_insertRangeIntoRegion_(v19, v13, v18, 0x100000001, v15);
  }

  return result;
}

void sub_22144ED78(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v10[0] = a2;
  v10[1] = a3;
  v6 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], a2, v10, 16, a5);
  objc_msgSend_addObject_(v5, v7, v6, v8, v9);
}

void sub_22144EED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  _Block_object_dispose(&a14, 8);
  sub_22107C860(v23 + 64, a23);
  _Unwind_Resume(a1);
}

void sub_22144EF10(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v3.origin = a2;
  v3.size = a3;
  TSCECellCoordSet::addCellCoords((*(*(a1 + 32) + 8) + 48), &v3);
}

void sub_22144F02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22144F4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22144F4BC(void *a1, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v25.origin = sub_221119E0C(a1[5], a1[6], a2, a3);
  v25.size = v6;
  result = TSUCellRect::isValid(&v25);
  if (result)
  {
    v11 = *(a1[4] + 8);
    v12 = *(v11 + 24);
    v13 = v25.size.numberOfColumns * v25.size.numberOfRows;
    if (v12 < v13)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellRegion containsCellRange:]_block_invoke", v9, v10);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v17, v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v20, v15, v19, 1558, 0, "areaRemaining should be greater than the intersection area");

      result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
      v11 = *(a1[4] + 8);
      v12 = *(v11 + 24);
      v13 = v25.size.numberOfColumns * v25.size.numberOfRows;
    }

    *(v11 + 24) = v12 - v13;
    if (!*(*(a1[4] + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

void sub_22144FEE4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 48), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22144FF08(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  result = objc_msgSend_intersectsCellRange_(*(a1 + 32), a2, a2, a3, a5);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_221450250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);

  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v40 - 184), 8);
  _Block_object_dispose((v40 - 128), 8);
  _Block_object_dispose((v40 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_2214502FC(uint64_t a1, unint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_msgSend_mergeRangeAtCellID_(*(a1 + 32), a2, a2, a4, a5);
  v14 = v11 == 0x7FFFFFFF || (v11 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(v8) == 0 || v8 == 0;
  if (v14 || (v39 = objc_msgSend_containsCellRange_(*(a1 + 40), v8, v11, v8, v10), v39 ? (v40 = a2 == v11) : (v40 = 0), v40 ? (v41 = ((v11 ^ a2) & 0xFFFF00000000) == 0) : (v41 = 0), v41))
  {
    v15 = HIDWORD(a2);
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 48);
    if (v17 != 0x7FFFFFFF && (v17 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      if (*(*(*(a1 + 56) + 8) + 24) == 1 && v17 == a2)
      {
        v20 = objc_msgSend_indexOfVisibleColumnBeforeColumnAtIndex_(*(a1 + 32), v8, WORD2(a2), v9, v10);
        v16 = *(*(a1 + 48) + 8);
        if (v20 == *(v16 + 52))
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
          v16 = *(*(a1 + 48) + 8);
        }
      }

      v21 = *(v16 + 48);
      if (v21 != a2)
      {
        *(*(*(a1 + 64) + 8) + 24) = v21;
        objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 80) + 8) + 40));
        v26 = objc_msgSend_set(MEMORY[0x277CBEB58], v22, v23, v24, v25);
        v27 = *(*(a1 + 80) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;
      }

      if (*(*(*(a1 + 88) + 8) + 24) == 1 && *(*(*(a1 + 64) + 8) + 24) != 0x7FFFFFFF && objc_msgSend_indexOfVisibleRowBeforeRowAtIndex_(*(a1 + 32), v8, a2, v9, v10) == *(*(*(a1 + 64) + 8) + 24))
      {
        v29 = *(*(*(a1 + 72) + 8) + 40);
        v30 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v8, WORD2(a2), v9, v10);
        LODWORD(v29) = objc_msgSend_containsObject_(v29, v31, v30, v32, v33);

        if (v29)
        {
          *(*(*(a1 + 88) + 8) + 24) = 0;
        }
      }
    }

    *(*(*(a1 + 48) + 8) + 48) = a2;
    v34 = *(*(*(a1 + 80) + 8) + 40);
    v35 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v8, v15, v9, v10);
    objc_msgSend_addObject_(v34, v36, v35, v37, v38);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

unint64_t sub_2214510E0(void *a1, unint64_t a2, unint64_t a3)
{
  result = sub_221119E0C(a2, a3, a1[5], a1[6]);
  v7 = result;
  if (result != 0x7FFFFFFFLL && (result & 0xFFFF00000000) != 0x7FFF00000000 && v5 >> 32 != 0 && v5 != 0)
  {
    v11 = a1[4];

    return objc_msgSend_addIndexesInRange_(v11, v5, v7, v5 >> 32, v6);
  }

  return result;
}

unint64_t sub_221451260(void *a1, unint64_t a2, unint64_t a3)
{
  result = sub_221119E0C(a2, a3, a1[5], a1[6]);
  v7 = result;
  if (result != 0x7FFFFFFFLL && (result & 0xFFFF00000000) != 0x7FFF00000000 && v5 >> 32 != 0 && v5 != 0)
  {
    v11 = a1[4];

    return objc_msgSend_removeIndexesInRange_(v11, v5, v7, v5 >> 32, v6);
  }

  return result;
}

unint64_t sub_2214513D8(void *a1, unint64_t a2, unint64_t a3)
{
  result = sub_221119E0C(a2, a3, a1[5], a1[6]);
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000 && v5 >> 32 != 0 && v5 != 0)
  {
    v10 = WORD2(result);
    v11 = a1[4];

    return objc_msgSend_addIndexesInRange_(v11, v5, v10, v5, v6);
  }

  return result;
}

unint64_t sub_221451554(void *a1, unint64_t a2, unint64_t a3)
{
  result = sub_221119E0C(a2, a3, a1[5], a1[6]);
  if (result != 0x7FFFFFFF && (result & 0xFFFF00000000) != 0x7FFF00000000 && v5 >> 32 != 0 && v5 != 0)
  {
    v10 = WORD2(result);
    v11 = a1[4];

    return objc_msgSend_removeIndexesInRange_(v11, v5, v10, v5, v6);
  }

  return result;
}

void sub_221451694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2214516B8(uint64_t result, unsigned int a2, int a3, _BYTE *a4)
{
  v4 = *(*(result + 40) + 8);
  if (*(v4 + 24) == a2)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = a2;
  }

  v6 = a2 + a3;
  if (v5 <= a2 + a3)
  {
    v8 = result;
    do
    {
      if (*a4)
      {
        break;
      }

      result = (*(*(v8 + 32) + 16))();
      ++v5;
    }

    while (v5 <= v6);
    v4 = *(*(v8 + 40) + 8);
  }

  *(v4 + 24) = v5;
  return result;
}

void sub_2214517FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221451820(uint64_t result, unsigned int a2, int a3, _BYTE *a4)
{
  v4 = *(*(result + 40) + 8);
  if (*(v4 + 24) == a2)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = a2;
  }

  v6 = a2 + a3;
  if (v5 <= a2 + a3)
  {
    v8 = result;
    do
    {
      if (*a4)
      {
        break;
      }

      result = (*(*(v8 + 32) + 16))();
      ++v5;
    }

    while (v5 <= v6);
    v4 = *(*(v8 + 40) + 8);
  }

  *(v4 + 24) = v5;
  return result;
}

__CFString *sub_221451D44(uint64_t a1, unint64_t a2)
{
  v2 = @"#REF!:#REF!";
  if ((a1 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && HIDWORD(a2) && a2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = NSStringFromTSUCellCoord();
    v5 = NSStringFromTSUCellCoord();
    v2 = objc_msgSend_stringWithFormat_(v3, v6, @"%@:%@", v7, v8, v4, v5);
  }

  return v2;
}

void sub_221452440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221452510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2214528AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 64);
  if (v21)
  {
    *(v19 - 56) = v21;
    operator delete(v21);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_221452A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
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

void sub_221452B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_221452BA0(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  v7 = v6 + a2;
  *(v5 + 24) = v6 + a3;
  v8 = objc_alloc_init(TSTCellRegion);
  v9 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221452C98;
  v17[3] = &unk_278465638;
  v20 = v7;
  v17[4] = v9;
  v19 = v3;
  v10 = v8;
  v18 = v10;
  objc_msgSend_enumerateCellRangesUsingBlock_(v9, v11, v17, v12, v13);
  objc_msgSend_p_copyFromRegion_(*(a1 + 32), v14, v10, v15, v16);
}

uint64_t sub_221452C98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v8 = a2 >> 32;
  v9 = a3 & 0xFFFFFFFF00000000;
  v10 = *(a1 + 52);
  if (a3)
  {
    v11 = WORD2(a2) == 0x7FFF;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0x7FFF;
  }

  else
  {
    v12 = a3 + WORD2(a2) - 1;
  }

  if (v10 <= v12)
  {
    if (a2 != 0x7FFFFFFF && (a2 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v18 = 0;
    }

    else
    {
      v18 = WORD2(a2);
    }

    v19 = *(a1 + 48);
    if (v10 > v18)
    {
      v5 = v19 + a3;
    }

    else
    {
      LOWORD(v8) = v19 + WORD2(a2);
      v5 = a3;
    }
  }

  else if (v12 + 1 == v10)
  {
    v13 = a2 | (v10 << 32);
    v14 = objc_msgSend_regionByIntersectingRange_(*(a1 + 32), a2, v13, v9 | 1, a5);
    if (objc_msgSend_equalsCellRange_(v14, v15, v13, v9 | 1, v16))
    {
      v5 += *(a1 + 48);
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_221452E30;
      v24[3] = &unk_278461548;
      v25 = *(a1 + 40);
      objc_msgSend_enumerateCellRangesUsingBlock_(v14, v20, v24, v21, v22);
    }
  }

  return objc_msgSend_p_insertRangeIntoRegion_(*(a1 + 40), a2, a2 & 0xFFFF0000FFFFFFFFLL | (v8 << 32), v9 | v5, a5);
}

void sub_221452EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_221452F18(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  v7 = v6 + a2;
  *(v5 + 24) = v6 + a3;
  v8 = objc_alloc_init(TSTCellRegion);
  v9 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22145300C;
  v17[3] = &unk_2784655E8;
  v17[4] = v9;
  v19 = v7;
  v20 = v3;
  v10 = v8;
  v18 = v10;
  objc_msgSend_enumerateCellRangesUsingBlock_(v9, v11, v17, v12, v13);
  objc_msgSend_p_copyFromRegion_(*(a1 + 32), v14, v10, v15, v16);
}

uint64_t sub_22145300C(uint64_t a1, const char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v8 = a2;
  v9 = HIDWORD(a3);
  v10 = *(a1 + 48);
  v11 = a2 + HIDWORD(a3) - 1;
  if (HIDWORD(a3))
  {
    v12 = a2 == 0x7FFFFFFF;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v11 = 0x7FFFFFFF;
  }

  if (v11 >= v10)
  {
    if ((a2 & 0xFFFF00000000) != 0x7FFF00000000 && a2 == 0x7FFFFFFF)
    {
      v17 = 0;
    }

    else
    {
      v17 = a2;
    }

    v18 = *(a1 + 52);
    v19 = v17 >= v10;
    v20 = v18 + HIDWORD(a3);
    v21 = v18 + a2;
    if (v19)
    {
      v8 = v21;
    }

    else
    {
      v8 = a2;
    }

    if (!v19)
    {
      LODWORD(v9) = v20;
    }
  }

  else if (v11 + 1 == v10)
  {
    v13 = objc_msgSend_regionByIntersectingRange_(*(a1 + 32), a2, a2 & 0xFFFF00000000 | v10, a3 | 0x100000000, a5);
    if (objc_msgSend_equalsCellRange_(v13, v14, a2 & 0xFFFF00000000 | v10, v5 | 0x100000000, v15))
    {
      LODWORD(v9) = *(a1 + 52) + v9;
    }

    else
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_2214531A8;
      v26[3] = &unk_278461548;
      v27 = *(a1 + 40);
      objc_msgSend_enumerateCellRangesUsingBlock_(v13, v22, v26, v23, v24);
    }
  }

  return objc_msgSend_p_insertRangeIntoRegion_(*(a1 + 40), a2, a2 & 0xFFFFFFFF00000000 | v8, v5 | (v9 << 32), a5);
}

void sub_221453318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_221453378(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 48) + 8) + 24) += *(*(*(a1 + 56) + 8) + 24) - a2;
  *(*(*(a1 + 56) + 8) + 24) = &a2[a3];
  v6 = *(*(*(a1 + 48) + 8) + 24) << 32;
  v7 = objc_msgSend_regionByIntersectingRange_(*(a1 + 32), a2, a2, (a3 << 32) | 0x3E8, a5);
  v11 = objc_msgSend_regionOffsetBy_(v7, v8, v6, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221453490;
  v15[3] = &unk_278461548;
  v15[4] = *(a1 + 40);
  objc_msgSend_enumerateCellRangesUsingBlock_(v11, v12, v15, v13, v14);
}

void sub_22145360C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_22145366C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(*(a1 + 48) + 8) + 24) += *(*(*(a1 + 56) + 8) + 24) - a2;
  *(*(*(a1 + 56) + 8) + 24) = &a2[a3];
  v6 = *(*(*(a1 + 48) + 8) + 24);
  v7 = objc_msgSend_regionByIntersectingRange_(*(a1 + 32), a2, a2 << 32, a3 | 0xF424000000000, a5);
  v11 = objc_msgSend_regionOffsetBy_(v7, v8, v6, v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221453784;
  v15[3] = &unk_278461548;
  v15[4] = *(a1 + 40);
  objc_msgSend_enumerateCellRangesUsingBlock_(v11, v12, v15, v13, v14);
}

void *sub_221453794(void *a1, unint64_t *a2)
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

void sub_2214539DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2214539F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_221453A48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2214546F4(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_221454788(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_221454788(uint64_t a1, void *a2, unsigned int *a3)
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
        v9 = *(v4 + 7);
        v10 = *(v8 + 16);
        v11 = v7 < v10;
        if (v6 != v9)
        {
          v11 = v6 < v9;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      v12 = v10 < v7;
      if (v6 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < v6;
      }

      if (!v13)
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

LABEL_15:
  *a2 = v8;
  return result;
}

uint64_t sub_22145480C(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_2214548A0(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_2214548A0(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *(a3 + 2);
    v7 = *a3;
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 16);
        v10 = *(v8 + 7);
        v11 = v7 < v10;
        if (v6 != v9)
        {
          v11 = v6 < v9;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      v12 = v10 < v7;
      if (v6 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < v6;
      }

      if (!v13)
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

LABEL_15:
  *a2 = v8;
  return result;
}

void sub_2214553C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221455BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void sub_22145620C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_221456498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2214566C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2214569C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221456BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void sub_221456D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void sub_221456E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2210BDEC0(&a9);

  _Unwind_Resume(a1);
}

void sub_221456EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2210BDEC0(&a9);

  _Unwind_Resume(a1);
}

void sub_22145864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v12 = va_arg(va1, void **);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);

  va_copy(v12, va1);
  sub_221458FFC(va);
  sub_2210C8214(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_221458860(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2214590A4(a1, a2);
  }

  else
  {
    v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *v3 = v4;
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_221458CF4(_Unwind_Exception *a1, uint64_t a2, void *a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);

  va_copy(v10, va1);
  sub_221458FFC(va);
  sub_2210C8214(va2);
  _Unwind_Resume(a1);
}

void sub_221458FFC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_221459050(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_221459050(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {

    v5 = *(i - 24);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_2214590A4(uint64_t *a1, __int128 *a2)
{
  v3 = 0xAAAAAAAAAAAAAAALL;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_22107C148();
  }

  if (0x5555555555555556 * ((a1[2] - v4) >> 3) > v7)
  {
    v7 = 0x5555555555555556 * ((a1[2] - v4) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v4) >> 3) < 0x555555555555555)
  {
    v3 = v7;
  }

  v19 = a1;
  if (v3)
  {
    sub_2214591E0(a1, v3);
  }

  v9 = 8 * (v6 >> 3);
  v16 = 0;
  v17 = v9;
  *(&v18 + 1) = 0;
  v10 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *v9 = v10;
  *(v9 + 16) = *(a2 + 2);
  *&v18 = v9 + 24;
  v11 = v9 - v6;
  sub_221459238(a1, v4, v5, v9 - v6);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_2214593AC(&v16);
  return v15;
}

void sub_2214591CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2214593AC(va);
  _Unwind_Resume(a1);
}

void sub_2214591E0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t sub_221459238(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      *a4 = v5;
      *(a4 + 16) = v4[2];
      v4 += 3;
      a4 += 24;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  sub_2214592D0(a1, a2, a3);
  return sub_221459318(v7);
}

void sub_2214592D0(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 3;
    }

    while (v4 != a3);
  }
}

uint64_t sub_221459318(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_221459364(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_221459364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 24);
      v6 -= 24;
    }

    while (v6 != a5);
  }
}

uint64_t sub_2214593AC(uint64_t a1)
{
  sub_2214593E4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2214593E4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }
}

void sub_221459BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22145A0CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22145A63C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_22145AC4C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    sub_221126E28(a1, &v2);
  }
}

void sub_22145C318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a33, 8);

  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  sub_221122744(v46 - 256);
  _Block_object_dispose((v46 - 216), 8);
  sub_221122744(v46 - 168);

  _Unwind_Resume(a1);
}

uint64_t sub_22145C434(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22145C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 8);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (!v8 || objc_msgSend_internalOwnerID(v8, a2, a3, a4, a5) != v7)
  {
    v9 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(*(a1 + 32), a2, v7, a4, a5);
    v14 = objc_msgSend_cellDependencies(v9, v10, v11, v12, v13);
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(*(a1 + 32), a2, v7, 0, 0);
      v20 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(a1 + 32), v17, v7, v18, v19);
      v21 = *(*(a1 + 40) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(a1 + 32), a2, *(a2 + 8), a4, a5);
  }

  if (sub_2212E0198((*(*(a1 + 48) + 8) + 48), a2))
  {
    v25 = (*(*(a1 + 48) + 8) + 48);

    sub_2212DFDD0(v25, a2);
  }

  else
  {
    v26 = *(a1 + 72);
    if (v26 == *a2 && ((*a2 ^ v26) & 0x101FFFF00000000) == 0 && *(a1 + 80) == *(a2 + 8))
    {
      ++*(*(*(a1 + 56) + 8) + 24);
    }

    else
    {
      v27 = *(*(*(a1 + 40) + 8) + 40);
      if (v27)
      {
        CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v27, v23, a2, 1, v24);
        if (!CellRecord_willModifyOnTile)
        {
          operator new();
        }

        sub_2215C52D0(CellRecord_willModifyOnTile, (a1 + 72), 0);
      }
    }
  }
}

void sub_22145C6D8(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 56) == a2 || a2 == 0xFFFF)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
LABEL_9:
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = sub_22145C88C;
      v27[3] = &unk_278465798;
      v13 = *(a1 + 60);
      v28 = v9;
      v29 = v13;
      v30 = *(a1 + 68);
      v14 = v9;
      TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v27);
    }
  }

  else
  {
    v8 = a2;
    v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(a1 + 40), a2, a2, a4, a5);
    if (v9)
    {
      goto LABEL_9;
    }

    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSCECellRecordTile replaceCellRecord:cellDependencies:]_block_invoke_2", v11, v12);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v21, v16, v20, 689, 0, "edge pointing to nonexistant table found: %lu", v8);

    v26 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v26, v22, v23, v24, v25);
  }
}

void sub_22145CA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212E22F0(&a9);

  _Unwind_Resume(a1);
}

void sub_22145CCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2212E22F0(va);

  _Unwind_Resume(a1);
}

void sub_22145CCE8(void *a1, unint64_t a2)
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
    sub_22145E0F0(a1, a2 - v2);
  }
}

void sub_22145CDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22145D010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v14 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

char *sub_22145D054(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_22107C148();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_221122DC8(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_221345280(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_22145D1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22145D474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22145D488(uint64_t a1, uint64_t a2)
{
  if (!a2 || (*(a2 + 38) & 4) == 0)
  {
    return;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 40);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *(v4 + 32);
  v7 = *v5;
  if (v6 >= *v5)
  {
    if (v7 != *(v4 + 36))
    {
LABEL_9:
      *v5 = v7 + 1;
      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRecordExpandedArchive>(*(v4 + 24));
      v9 = *(v4 + 32);
      v10 = *(v4 + 40) + 8 * v9;
      *(v4 + 32) = v9 + 1;
      *(v10 + 8) = v8;
      goto LABEL_10;
    }

LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 24));
    v5 = *(v4 + 40);
    v7 = *v5;
    goto LABEL_9;
  }

  *(v4 + 32) = v6 + 1;
  v8 = *&v5[2 * v6 + 2];
LABEL_10:
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
  v19[2] = sub_22145D634;
  v19[3] = &unk_27845F218;
  v19[4] = *(a1 + 32);
  v19[5] = v17;
  sub_2215C574C(a2, v19);
}

void sub_22145D8F0(uint64_t a1, uint64_t a2)
{
  v7 = NSStringFromTSUCellCoord();
  v8 = *(a2 + 8);
  if (v8 == *(*(a1 + 32) + 64))
  {
    v9 = 0;
    objc_msgSend_addPrecedentWithCellID_forOwner_(*(a1 + 48), v4, v7, 0, v6);
  }

  else
  {
    v13._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(a1 + 40), v4, v8, v5, v6);
    v13._upper = v10;
    v9 = TSKUIDStruct::description(&v13);
    objc_msgSend_addPrecedentWithCellID_forOwner_(*(a1 + 48), v11, v7, v9, v12);
  }
}

void sub_22145D9A8(uint64_t a1, uint64_t a2)
{
  v7 = NSStringFromTSUCellCoord();
  v8 = *(a2 + 8);
  if (v8 == *(*(a1 + 32) + 64))
  {
    v9 = 0;
    objc_msgSend_addDependentWithCellID_forOwner_(*(a1 + 48), v4, v7, 0, v6);
  }

  else
  {
    v13._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(a1 + 40), v4, v8, v5, v6);
    v13._upper = v10;
    v9 = TSKUIDStruct::description(&v13);
    objc_msgSend_addDependentWithCellID_forOwner_(*(a1 + 48), v11, v7, v9, v12);
  }
}

void sub_22145E0F0(uint64_t a1, unint64_t a2)
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

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_221122DC8(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_22145ED8C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_221463C6C(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A83C8;
  *(a1 + 200) = v7;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1065353216;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_221463D00(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5, v6);
    upper = v8;
  }

  else
  {
    v7 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v7->var0.var0._tableUID._lower;
    upper = v7->var0.var0._tableUID._upper;
  }

  v113.var0 = lower;
  v113.var1 = upper;
  v105 = objc_msgSend_mergeInfo(*(a1 + 200), v8, v9, v10, v11);
  v18 = objc_msgSend_mergeRegion(v105, v14, v15, v16, v17);
  v25 = lower == objc_msgSend_tableUID(v18, v19, v20, v21, v22) && upper == v23;
  v26 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v27 = v26->var0.var0._tableUID._lower;
  v28 = v26->var0.var0._tableUID._upper;
  if (v27 == objc_msgSend_tableUID(v18, v29, v30, v31, v32) && v28 == v33)
  {
    v47 = 1;
    goto LABEL_26;
  }

  v38 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v39 = v38->var0.var0._tableUID._lower;
  v40 = v38->var0.var0._tableUID._upper;
  v46 = v39 == objc_msgSend_condStyleOwnerUID(v18, v41, v42, v43, v44) && v40 == v45;
  v47 = v46;
  v48 = v46 || v25;
  if (v48 == 1)
  {
LABEL_26:
    v49 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v34, v35, v36);
    v50 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
    v112._flags = v50;
    v51 = *(a1 + 200);
    coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    v53 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v107 = coordinate;
    tableUID = v53->var0.var0._tableUID;
    if (v51)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(*&v51, v54, &v107, v55, v56);
      v51 = v109;
    }

    else
    {
      v109 = 0;
      v110 = 0;
      v111 = 0;
    }

    v107 = v51;
    v57 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    v64 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v57, v49, &v112, v58, v59);
    if (v25)
    {
      v65 = objc_msgSend_columnUids(v18, v60, v61, v62, v63);
      if (objc_msgSend_containsIndex_(v65, v66, WORD2(v64), v67, v68))
      {
        v73 = objc_msgSend_rowUids(v18, v69, v70, v71, v72);
        v77 = objc_msgSend_containsIndex_(v73, v74, v64, v75, v76);
      }

      else
      {
        v77 = 0;
      }

      if (!v47)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v77 = 0;
      if (!v47)
      {
LABEL_38:
        LODWORD(v80) = 0;
        goto LABEL_39;
      }
    }

    v78 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    if (v78.row == v51.row && (v79 = *&v51 ^ *&v78, (v79 & 0x1FFFF00000000) == 0))
    {
      v80 = HIBYTE(v79) & 1;
    }

    else
    {
      LODWORD(v80) = 1;
    }

LABEL_39:
    v106 = a2;
    if (sub_2210CDC18((a1 + 208), &v106))
    {
      v106 = a2;
      sub_2210CDD04((a1 + 208), &v106);
      if (!v80)
      {
        goto LABEL_50;
      }

      v85 = v64 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      if (((v77 | v80) & 1) == 0)
      {
        goto LABEL_50;
      }

      v85 = v64 & 0xFFFFFFFFFFFFLL;
      v106 = (v64 & 0xFFFFFFFFFFFFLL);
      if (!v77)
      {
LABEL_46:
        v86 = TSCEASTElement::mutableUndoTractList(a2, a1);
        v87 = [TSCEUndoTract alloc];
        v88 = (*(*a2 + 152))(a2, a1);
        v90 = v89;
        v91 = (*(*a2 + 160))(a2, a1);
        v93 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v87, v92, v88, v90, v91, v92, 1);
        objc_msgSend_setPreserveFlags_(v86, v94, v112._flags & 3 | (4 * (v112._flags & 3)), v95, v96);
        objc_msgSend_appendUidTract_(v86, v97, v93, v98, v99);
        if ((TSCEASTElement::refFlags(a2, a1) & 1) == 0)
        {
          TSCEASTIteratorBase::createLocalReference(a1, &v106, &v112, &v107, v86);
        }

        v101 = &v112;
        v102 = v85;
        RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&v51, v102, v101, v100);
        TSCEASTIteratorBase::createCrossTableCellReference(a1, RelativeCellCoordinateFromAbsoluteCoordinates, (v50 & 1), (v50 >> 1) & 1, &v113, v86);
      }

      v85 = objc_msgSend_topLeftCellCoord(v18, v81, v82, v83, v84);
    }

    v106 = v85;
    goto LABEL_46;
  }

LABEL_50:

  return a2;
}