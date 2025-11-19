uint64_t sub_22158E740(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_hidingActionForRowAtIndex_(*(a1 + 32), a2, a2, a4, a5);
  if ((*(a1 + 56) & result) != 0)
  {
    result = objc_msgSend_removeIndex_(*(a1 + 40), v8, a2, v9, v10);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_22158E798(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_hidingActionForColumnAtIndex_(*(a1 + 32), a2, a2, a4, a5);
  if ((*(a1 + 56) & result) != 0)
  {
    result = objc_msgSend_removeIndex_(*(a1 + 40), v8, a2, v9, v10);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

void sub_22158EE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, id a31, id a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  sub_22107C800(&a23, a24);

  _Block_object_dispose(&a35, 8);
  sub_221087B80(&a41);
  _Block_object_dispose((v44 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_22158F0C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v24[0] = objc_msgSend_columnUIDForGroupingColumnName_(*(a1 + 32), v9, v7, v10, v11);
  v24[1] = v12;
  v18 = objc_msgSend_groupingIndexForColumnUID_(*(a1 + 32), v12, v24, v13, v14);
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setMissingDataFieldAtIndex_(*(a1 + 48), v15, a2, v16, v17);
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v19 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v15, v8, *(a1 + 40), v17);
    v20 = *(*(a1 + 56) + 8);
    v23 = v18;
    v24[3] = &v23;
    v21 = sub_22158FA00((v20 + 48), &v23);
    v22 = v21[3];
    v21[3] = v19;
  }
}

void sub_22158F914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  sub_22109DBB8(&a17);

  _Unwind_Resume(a1);
}

void *sub_22158FA00(void *a1, unint64_t *a2)
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

void sub_22158FC48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2215922E4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = objc_msgSend_warningType(v4, v6, v7, v8, v9);
  if (v10 >= objc_msgSend_warningType(v5, v11, v12, v13, v14))
  {
    v20 = objc_msgSend_warningType(v4, v15, v16, v17, v18);
    v19 = v20 > objc_msgSend_warningType(v5, v21, v22, v23, v24);
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

void sub_22159298C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221592EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  TST::CellRefImportWarningSetPairArchive::~CellRefImportWarningSetPairArchive(va);
  _Unwind_Resume(a1);
}

void *sub_2215930C4(void *a1, uint64_t *a2)
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

void sub_221593358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

void sub_221593550(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_221593BD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v28 = v5;
  if (v5)
  {
    v10 = objc_msgSend_expressionNode(v5, v6, v7, v8, v9);
    objc_msgSend_setFirstIndex_(v10, v11, a4, v12, v13);
    objc_msgSend_setLastIndex_(v10, v14, a4, v15, v16);
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTWrappedFormula reparseWithStorage:adjustExpressionTree:]_block_invoke", v8, v9);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v23, v18, v22, 76, 0, "Unexpected attachment passed to block");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }
}

void sub_221593CF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v75 = v3;
  if (*(a1 + 32) == v3)
  {
    if (objc_msgSend_firstIndex(v3, v4, v5, v6, v7))
    {
      v47 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTWrappedFormula reparseWithStorage:adjustExpressionTree:]_block_invoke_2", v45, v46);
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v50, v51);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 118, 0, "Expected top function node to be at index 0");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
    }

    if (objc_msgSend_lastIndex(v75, v43, v44, v45, v46) != *(a1 + 40) - 1)
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSTWrappedFormula reparseWithStorage:adjustExpressionTree:]_block_invoke_2", v59, v60);
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v64, v65);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v67, v62, v66, 120, 0, "Expected top function node to end at index %lu", *(a1 + 40) - 1);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
    }

    objc_msgSend_setLastIndex_(v75, v58, 0x7FFFFFFFFFFFFFFFLL, v59, v60);
    objc_msgSend_setFirstIndex_(v75, v72, 0x7FFFFFFFFFFFFFFFLL, v73, v74);
  }

  else if (objc_msgSend_firstIndex(v3, v4, v5, v6, v7) != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_lastIndex(v75, v8, v9, v10, v11) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (objc_msgSend_firstIndex(v75, v12, v13, v14, v15) < *(a1 + 40))
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTWrappedFormula reparseWithStorage:adjustExpressionTree:]_block_invoke_2", v18, v19);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTWrappedFormula.mm", v23, v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v26, v21, v25, 123, 0, "expected non-top node to be past index %lu", *(a1 + 40));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
    }

    Index = objc_msgSend_firstIndex(v75, v16, v17, v18, v19);
    objc_msgSend_setFirstIndex_(v75, v32, Index - *(a1 + 40), v33, v34);
    v39 = objc_msgSend_lastIndex(v75, v35, v36, v37, v38);
    objc_msgSend_setLastIndex_(v75, v40, v39 - *(a1 + 40), v41, v42);
  }
}

id *sub_221595E98(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

id sub_22159A004(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Unknown error.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A04C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Unsupported feature.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A094(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"\\U201C%@\\U201D isn\\U2019t a valid cell reference.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A0DC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"\\U201C%@\\U201D isn\\U2019t a valid function name.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A124(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Numbers can\\U2019t be divided by zero.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A16C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula calculates zero to the power of zero, which can\\U2019t be computed.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A1B4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula contains a syntax error.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A1FC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula should not begin with an equals sign.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A244(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"This formula can\\U2019t reference its own cell, or depend on another formula that references this cell.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A28C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Running Total In requires field to be a grouping column.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A2D4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must refer to a pivot table.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A31C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must refer to an aggregate value of the pivot table.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A364(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must refer to a grouping column of the pivot table.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A3AC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"one argument", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A3F4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%d arguments", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A43C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires at least %@.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A484(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires at least %@, but was given %@.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A4CC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires between %d and %d arguments, but was given %@.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A514(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires %@, but was given %@.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A55C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires its arguments to result in a number within the valid range.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A5A4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula contains a number outside the valid range.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A5EC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula contains an invalid reference.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A634(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ is invalid.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A67C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula contains a page number or page count, which aren\\U2019t allowed in formulas.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A6C4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula refers to a cell with a shape or media file. This isn\\U2019t supported.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A70C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Missing table.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A754(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"There are no cells in the intersection of the ranges \\U201C%@.\\U201D", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A79C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ must have a cell or range reference as an argument.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A7E4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ must have a cell reference as an argument.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A82C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ must have a range reference as an argument.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A874(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requested occurrence %d of the value “%@” after finding a match for the regular expression “%@”, but only %d match(es) was found.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A8BC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requested occurrence %d of the value “%@” after finding a match for the value “%@”, but only %d match(es) was found.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A904(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ couldn’t find the value “%@” after successfully finding a match for the regular expression “%@”.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A94C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ couldn’t find the value “%@” after successfully finding a match for the value “%@”.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A994(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requested occurrence %d of the value “%@”, but only %d match(es) was found.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159A9DC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ couldn\\U2019t find the value \\U201C%@\\U201D.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AA24(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requested occurrence %d of the regular expression “%@” after finding a match for the regular expression “%@”, but only %d match(es) was found.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AA6C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requested occurrence %d of the regular expression “%@” after finding a match for the value “%@”, but only %d match(es) was found.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AAB4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ couldn’t find the regular expression “%@” after successfully finding a match for the regular expression “%@”.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AAFC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ couldn’t find the regular expression “%@” after successfully finding a match for the value “%@”.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AB44(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requested occurrence %d of the regular expression “%@”, but only %d match(es) was found.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AB8C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ couldn’t find a match for the regular expression “%@”.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159ABD4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ must begin searching from a number within the length of the search text.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AC1C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arguments %d and later", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AC64(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159ACAC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ in %@ must be greater than or equal to %g.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159ACF4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ in %@ must be greater than %g.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AD3C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ in %@ must be less than or equal to %g.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AD84(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ in %@ must be less than %g.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159ADCC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ in %@ must be greater than or equal to %g and less than or equal to %g.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AE14(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ in %@ must be greater than or equal to %g and less than %g.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AE5C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ in %@ must be greater than %g and less than or equal to %g.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AEA4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ in %@ must be greater than %g and less than %g.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AEEC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arrays can contain only constant values.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AF34(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ couldn\\U2019t find the requested value.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AF7C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The two ranges in %@ must be the same size.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159AFC4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula contains an array where a single argument is expected.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B00C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula\\U2019s arguments can only include one date value.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B054(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires all arguments to be of the same type, either dates, numbers, or durations.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B09C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"MODE requires that its arguments contain repeated values.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B0E4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"You must specify a value for all the required arguments.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B12C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The function doesn\\U2019t allow empty arguments.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B174(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d can\\U2019t be empty.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B1BC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The link is invalid.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B204(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"All arguments to %@ must be the same length.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B24C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula can\\U2019t be calculated because the resulting text would be too long.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B294(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arrays of references can\\U2019t intersect.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B2DC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires %@, but none were found.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B324(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"no bigger than", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B36C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"at least as big as", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B3B4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"smaller than", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B3FC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"larger than", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B444(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d must be %@ argument %d.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B48C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d must be different from argument %d.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B4D4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The first argument of %@ must be an index of another argument, but there is no argument at index %d.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B51C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"An empty string can\\U2019t be used as an argument of %@.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B564(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires a string specifying a number, but found \\U201C%@\\U201D instead.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B5AC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires a string specifying a date/time value, but found \\U201C%@\\U201D instead.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B5F4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires both arguments to be positive or negative.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B63C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must sum to 1.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B684(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"R1C1-style references aren\\U2019t supported.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B6CC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The date returned by the formula isn\\U2019t valid.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B714(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The time returned by the formula isn\\U2019t valid.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B75C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Array argument can contain only one row or column.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B7A4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires that all arguments be between 0 and 1.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B7EC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"All arguments must be equal to or larger than zero.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B834(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ can\\U2019t be equal to zero.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B87C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires the position argument to be smaller than or equal to the size of the array.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B8C4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must be equal to 1, 2, or 4.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B90C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must be equal to 0 or 1.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B954(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must be equal to 1 or 2.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B99C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"SUBTOTAL requires that its first argument be between 1 and 11 or 101 and 111.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159B9E4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ couldn\\U2019t reach a result.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BA2C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ couldn\\U2019t reach a result. Try adjusting the estimate argument.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BA74(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires multiple pairs of cash-flows and dates.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BABC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires dates to be on or after the starting date.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BB04(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires at least one positive and one negative argument.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BB4C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The operator \\U201C-\\U201D can\\U2019t subtract a date from a number.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BB94(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Different currency types can\\U2019t be compared.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BBDC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Durations can\\U2019t be compared to other data types.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BC24(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires that its arguments use the same type of unit.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BC6C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires that arguments %@ use the same type of unit.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BCB4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ can\\U2019t be a currency or duration.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BCFC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arguments %d and later of %@ can\\U2019t contain currency or duration values.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BD44(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ can\\U2019t be a currency.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BD8C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arguments %d and later of %@ can\\U2019t be currency values.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BDD4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ can\\U2019t be a duration.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BE1C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The function \\U201C%@\\U201D expects %@ but found a duration.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BE64(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires that all monetary values use the same currency.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BEAC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Values being summed by %@ must be either all durations or all numbers, unless one value is a date.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BEF4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ requires at least %@ values.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BF3C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires an odd number of arguments, at least three.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BF84(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires an even number of arguments.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159BFCC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires that all range arguments are the same size.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C014(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arrays can\\U2019t be empty.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C05C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"\\U2018%@\\U2019 isn\\U2019t a valid character in the base %d numeral system.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C0A4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"\\U201C%@\\U201D isn\\U2019t a valid unit.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C0EC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires that all its arguments have the same type of unit (for example, time or temperature).", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C134(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Prefixes require metric units. The unit \\U201C%@\\U201D isn\\U2019t metric.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C17C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The number to convert has units that conflict with the units to convert from.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C1C4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The index position in the array must contain data.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C20C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The x and y arrays must have the same length and width.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C254(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The x and y arrays must have the same length.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C29C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The x and y arrays must have the same width.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C2E4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"RECEIVED must evaluate to a value greater than zero.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C32C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"MATCH requires the third argument to be equal to 1, 0, or -1.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C374(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Formulas can\\U2019t be longer than 8,192 characters.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C3BC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"RANDBETWEEN requires that both durations have the same maximum unit.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C404(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires all values in argument %d to be numbers.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C44C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The first argument of CHAR must represent a valid character, generally between 32 and 65535.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C494(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"When using duration values with NORMDIST, the cumulative argument must be TRUE.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C4DC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"An x variable is too highly correlated with one or more other x variables for LINEST to calculate a result.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C524(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"You can\\U2019t compare %@ with %@ because their data types are different.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C56C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ can\\U2019t be given multiple durations.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C5B4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"LINEST requires more data points to calculate a result.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C5FC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires all numbers in argument %d to be positive.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C644(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"PERCENTRANK requires that argument 2 be within the range specified in argument 1.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C68C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"PERCENTRANK.EXC requires that argument 2 be within the range specified in argument 1.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C6D4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Location services are not enabled on the device.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C71C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Bearing information can\\U2019t be determined right now.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C764(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Location service is unable to obtain a location value right now.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C7AC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Access to the location service was denied by the user.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C7F4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The network was unavailable or a network error occurred.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C83C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Bearing information can\\U2019t be determined due to strong interference from nearby magnetic fields.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C884(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The latitude and longitude values are invalid", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C8CC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The altitude value is invalid", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C914(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The bearing value is invalid", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C95C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"“%@” isn’t a valid regular expression.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C9A4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula contains an unsupported function", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159C9EC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ requires at least one TRUE condition, but none were found.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CA34(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The requested STOCK attribute is invalid.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CA7C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The requested CURRENCY attribute is invalid.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CAC4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The requested STOCKH attribute is invalid.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CB0C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The requested CURRENCYH attribute is invalid.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CB54(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The requested historical date is invalid or is in the future.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CB9C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"There is no historical data on the requested date. The next available is on %@.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CBE4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"There is no historical data in the entire year of the requested date. Historical data may not be available for all securities.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CC2C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"There is no security named “%@”.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CC74(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"No information about the specified currency pair.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CCBC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Unable to retrieve information from the remote data server.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CD04(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Data for the \\U2018%@\\U2019 attribute isn\\U2019t available for the selected symbol.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CD4C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"\\U2026", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CD94(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Ask Price data is not available.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CDDC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Bid Price data is not available.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CE24(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Ask Size data is not available.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CE6C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Bid Size data is not available.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CEB4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula refers to a cell without a formula.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CEFC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The requested REFERENCE.NAME attribute is invalid.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CF44(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must be an integer, not a decimal number.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CF8C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arguments %d and %d of %@ must be integers, not decimal numbers.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159CFD4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arguments %d, %d, and %d of %@ must be integers, not decimal numbers.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D01C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Cell %@ must be empty to spill the formula’s results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D064(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Cells %@ must be empty to spill the formula’s results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D0AC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula can’t spill its results because %@ contains merged cells.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D0F4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Formulas can’t return nested arrays.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D13C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula’s input array dimensions don't produce an array of results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D184(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Categorized tables can’t contain formulas that spill results across rows.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D1CC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must be one-dimensional.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D214(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arguments of %@ must be ranges of the same size.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D25C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"This cell’s spilled formula contains a function with an empty pad-with argument.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D2A4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Incorrect matrix sizes for matrix multiplication.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D2EC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must be a square matrix.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D334(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The input matrix has no inverse.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D37C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"An input matrix must contain only numbers.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D3C4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ can’t be a LAMBDA function.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D40C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ must be a LAMBDA function.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D454(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%1$@ requires a LAMBDA function with %2$d argument, but was given %3$d", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D49C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%1$@ requires a LAMBDA function with %2$d arguments, but was given %3$d", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D4E4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"A formula can't return a LAMBDA function.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D52C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of LET must be a variable name.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D574(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of LAMBDA must be a parameter name.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D5BC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Argument %d of %@ contains an invalid character.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D604(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Variable names can’t be repeated in the same function.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D64C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Parameter names can’t be repeated in the same function.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D694(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ is not defined as a name for LET.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D6DC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"%@ is not defined as a parameter for LAMBDA.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D724(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Don't Care identifier %@ is not valid here.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D76C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula calculated an array that exceeds the limit of %d rows and %d columns.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D7B4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula exceeded the bounds of an array.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D7FC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"No column or row delimiter provided in %@", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D844(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Number of variables exceeds amount permitted.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D88C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Matrix maximum size exceeded in %@.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D8D4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Recursion limit exceeded in %@.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D91C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"Arguments %d and %d of %@ must use the same data format.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159D964(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"When array is only one row or column, sort-index must be equal to 1.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159EC34(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @", but found %@.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159EC7C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @" but found an empty cell.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159ECC4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula needs %1$d more column to spill its results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159ED0C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula needs %1$d more columns to spill its results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159ED54(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula needs %1$d more row to spill its results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159ED9C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula needs %1$d more row and %1$d more column to spill its results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159EDE4(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula needs 1 more row and %1$d more columns to spill its results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159EE2C(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula needs %1$d more rows to spill its results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159EE74(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula needs %1$d more rows and 1 more column to spill its results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159EEBC(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula needs %1$d more rows and %2$d more columns to spill its results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

id sub_22159EF04(uint64_t a1, void *a2)
{
  v2 = objc_msgSend_localizedStringForKey_value_table_(a2, a2, @"The formula needs more room to spill its results.", &stru_2834BADA0, @"TSCalculationEngine");

  return v2;
}

void sub_2215A1D5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2215A2D64(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = sub_2215A2DF4(*(a1 + 32), v9, 1);
  objc_msgSend_setObject_forKey_(v6, v7, v5, v9, v8);
}

id sub_2215A2DF4(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v11 = objc_msgSend_year(v6, v7, v8, v9, v10);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v5[6];
  }

  else
  {
    v12 = sub_2215A33A0(v5 + 1, v11, a3);
  }

  v13 = v12;

  return v13;
}

void sub_2215A2F7C(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = a2;
  v4 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_msgSend_addEntriesFromDictionary_(v8, v5, v4, v6, v7);
  sub_2215A48D4((*(a1 + 32) + 8), &v9);
}

void sub_2215A30C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2215A30D8(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_count(v8, v4, v5, v6, v7);
}

void sub_2215A3320(uint64_t a1, unint64_t a2, void *a3)
{
  v9 = a3;
  v5 = sub_2215A33A0((*(a1 + 32) + 8), a2, 1);
  objc_msgSend_addEntriesFromDictionary_(v5, v6, v9, v7, v8);
}

id sub_2215A33A0(void *a1, unint64_t a2, int a3)
{
  v9 = 0;
  v10 = a2;
  v5 = sub_2210BE30C(a1, &v10);
  if (v5)
  {
    v6 = v5[3];
    v9 = v6;
  }

  else if (a3)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sub_2215A48D4(a1, &v10);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v7;
}

void sub_2215A3578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2215A35A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2215A35BC(uint64_t a1, void *a2, void *a3)
{
  v35 = a2;
  v5 = a3;
  v6 = sub_2215A2DF4(*(a1 + 32), v35, 1);
  isCold = objc_msgSend_isCold(v35, v7, v8, v9, v10);
  if (v6)
  {
    v15 = 0;
  }

  else
  {
    v15 = isCold;
  }

  if (v15 == 1)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCERemoteDataValueMap updateWithValuesFromMap:overwriteValues:]_block_invoke", v13, v14);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataValueMap.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 168, 0, "invalid nil value for '%{public}s'", "map");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(v6, v12, v35, v13, v14);
  if (!v31 || *(a1 + 48) == 1 && objc_msgSend_valueType(v5, v27, v28, v29, v30))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v6, v27, v5, v35, v30);
    objc_msgSend_insertSpecifier_(*(*(*(a1 + 40) + 8) + 40), v32, v35, v33, v34);
  }
}

void sub_2215A3AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2215A3B0C(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  result = objc_msgSend_containsValueForSpecifier_(*(a1 + 32), a2, a2, a4, a5);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void sub_2215A3D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void sub_2215A3E24(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a2;
  v7 = a3;
  if (objc_msgSend_containsIndex_(*(a1 + 32), v8, a2, v9, v10))
  {
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
    v37 = v15;
    objc_msgSend_coldSpecifierArrayForYear_(*(a1 + 40), v16, a2, v17, v18);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v19 = v34 = 0u;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v33, v39, 16);
    if (v24)
    {
      v25 = *v34;
LABEL_4:
      v26 = 0;
      while (1)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v33 + 1) + 8 * v26);
        v28 = objc_msgSend_objectForKey_(v7, v21, v27, v22, v23, v33);
        if (v28)
        {
          objc_msgSend_setObject_forKey_(v15, v21, v28, v27, v23);
          if (!--*(*(*(a1 + 56) + 8) + 24))
          {
            break;
          }
        }

        if (v24 == ++v26)
        {
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v33, v39, 16);
          if (v24)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (objc_msgSend_count(v15, v29, v30, v31, v32))
    {
      sub_2215A48D4((*(a1 + 48) + 8), &v38);
    }

    if (!*(*(*(a1 + 56) + 8) + 24))
    {
      *a4 = 1;
    }
  }
}

void sub_2215A40D8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2215A422C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2215A4254(uint64_t a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v9 = objc_msgSend_allKeys(a3, a2, a3, a4, a5);
  objc_msgSend_insertSpecifiersFromArray_(v5, v6, v9, v7, v8);
}

void sub_2215A4650(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  if (!objc_msgSend_valueType(v5, v6, v7, v8, v9))
  {
    goto LABEL_18;
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 32);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v13 + 24);
  v16 = *v14;
  if (v15 >= *v14)
  {
    if (v16 != *(v13 + 28))
    {
LABEL_8:
      *v14 = v16 + 1;
      v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry>(*(v13 + 16));
      v18 = *(v13 + 24);
      v19 = *(v13 + 32) + 8 * v18;
      *(v13 + 24) = v18 + 1;
      *(v19 + 8) = v17;
      goto LABEL_9;
    }

LABEL_7:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v13 + 16));
    v14 = *(v13 + 32);
    v16 = *v14;
    goto LABEL_8;
  }

  *(v13 + 24) = v15 + 1;
  v17 = *&v14[2 * v15 + 2];
LABEL_9:
  *(v17 + 16) |= 1u;
  v20 = *(v17 + 24);
  if (!v20)
  {
    v21 = *(v17 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataSpecifierArchive>(v21);
    *(v17 + 24) = v20;
  }

  objc_msgSend_encodeToArchive_(v27, v10, v20, v11, v12);
  *(v17 + 16) |= 2u;
  v25 = *(v17 + 32);
  if (!v25)
  {
    v26 = *(v17 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v26);
    *(v17 + 32) = v25;
  }

  objc_msgSend_encodeCellValueToArchive_(v5, v22, v25, v23, v24);
LABEL_18:
}

void *sub_2215A48D4(void *a1, unint64_t *a2)
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

void sub_2215A4B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void sub_2215A4C10(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_2215A6FF4(a1, a2 - v2);
  }
}

void sub_2215A50CC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_2215A5D94(void *a1, id *a2)
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

void sub_2215A5E74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_2215A6B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  *(v29 - 160) = &a29;
  sub_22107C2C0((v29 - 160));
  _Unwind_Resume(a1);
}

void sub_2215A6FF4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      v11 = v5 + 16 * a2;
      do
      {
        TSUDecimal::operator=();
        v5 += 16;
        v10 -= 16;
      }

      while (v10);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_22107C148();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_221086F74(a1, v9);
    }

    v12 = 16 * (v6 >> 4);
    v13 = 16 * a2;
    v14 = v12;
    v15 = v12 + 16 * a2;
    do
    {
      TSUDecimal::operator=();
      v14 += 16;
      v13 -= 16;
    }

    while (v13);
    v16 = *(a1 + 8) - *a1;
    v17 = v12 - v16;
    memcpy((v12 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

id sub_2215A723C(uint64_t a1, void *a2)
{
  v2 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2215A7340;
  v10[3] = &unk_2784673A0;
  v11 = v2;
  v12 = &v13;
  v3 = v2;
  objc_msgSend_enumerateExpressionNodesUsingBlock_(v3, v4, v10, v5, v6);
  if (*(v14 + 24))
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_2215A731C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2215A7340(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (*(a1 + 32) != v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a3 = 1;
        }
      }
    }
  }
}

TSCEASTRewriter *sub_2215A7410(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834B1AB8;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_2215A7494(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    v4 = *(a1 + 200);
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
    if (objc_msgSend_isForTable_(v4, v5, &tableUID, v6, v7))
    {
      if (!TSCEASTRelativeCoordRefElement::spansAllRows(a2, a1))
      {
        v11 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v8, v9, v10);
        v13 = v12;
        v14 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        lower = v14->var0.var0._tableUID._lower;
        upper = v14->var0.var0._tableUID._upper;
        if (lower == objc_msgSend_conditionalStyleOwnerUID(*(a1 + 200), v17, v18, v19, v20) && upper == v21)
        {
          v28 = v11 == objc_msgSend_affectedOwnerUID(*(a1 + 200), v21, v22, v23, v24) && v13 == v27;
          v26 = !v28;
        }

        else
        {
          v26 = 1;
        }

        v29 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
        v33 = v13 == v29->var0.var0._tableUID._upper && v11 == v29->var0.var0._tableUID._lower;
        if (!v33 && v26)
        {
          v35 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v30, v31, v32);
          v36 = v35;
          v51 = v35;
          if ((TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1) & 2) == 0)
          {
            v37 = *(a1 + 200);
            coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
            v39 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
            v47 = coordinate;
            v48 = v39->var0.var0._tableUID;
            if (v37)
            {
              objc_msgSend_updatedCellRefForOriginalCellRef_(v37, v40, &v47, v41, v42);
              LODWORD(v37) = tableUID._lower;
            }

            else
            {
              tableUID = 0;
              v50 = 0;
            }

            v43 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
            if (v43->var0.var0.coordinate.row != v37)
            {
              v51._row = v43->var0.var0.coordinate.row - v37 + v36;
              TSCEASTRelativeCoordRefElement::setRelativeCoord(a2, &v51, a1, v44, v45);
            }
          }
        }
      }
    }
  }

  return a2;
}

TSCEASTColonTractElement *sub_2215A761C(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  if (objc_msgSend_hasTableUID(v7, v8, v9, v10, v11))
  {
    lower = objc_msgSend_tableUID(v7, v12, v13, v14, v15);
    upper = v17;
  }

  else
  {
    v19 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    lower = v19->var0.var0._tableUID._lower;
    upper = v19->var0.var0._tableUID._upper;
  }

  v20 = a1[25];
  tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
  if (objc_msgSend_isForTable_(v20, v21, &tableUID, v22, v23))
  {
    v24 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    if (lower == v24->var0.var0._tableUID._lower && upper == v24->var0.var0._tableUID._upper)
    {
      tableUID._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
      v29 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v38, &tableUID, v39, v40);
      if (!objc_msgSend_isValid(v29, v41, v42, v43, v44) || !objc_msgSend_isRectangularRange(v29, v45, v46, v47, v48))
      {
        goto LABEL_16;
      }

      tableUID._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1.coordinate;
      v37 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v49, &tableUID, v50, v51);
      if ((objc_msgSend_isRectangularRange(v37, v52, v53, v54, v55) & 1) == 0)
      {
        v60 = MEMORY[0x277CCAA78];
        v61 = objc_msgSend_topLeft(v37, v56, v57, v58, v59);
        v66 = objc_msgSend_bottomRight(v37, v62, v63, v64, v65);
        v69 = objc_msgSend_indexSetWithIndexesInRange_(v60, v67, v61, v66, v68);
        v73 = objc_msgSend_fillInRowGapsUsingIndexes_(v37, v70, v69, v71, v72);
        v74 = [TSCERelativeTractRef alloc];
        tableUID._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1.coordinate;
        v77 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v74, v75, v37, &tableUID, v76);
        TSCEASTColonTractElement::setRelativeTractRef(this, v77, v7, a1, 0);
      }
    }

    else
    {
      tableUID._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
      v29 = objc_msgSend_absoluteCellTractRefForHostCell_(v7, v26, &tableUID, v27, v28);
      if (!objc_msgSend_isValid(v29, v30, v31, v32, v33))
      {
LABEL_16:

        goto LABEL_17;
      }

      v34 = [TSCERelativeTractRef alloc];
      tableUID._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var1.coordinate;
      v37 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v34, v35, v29, &tableUID, v36);
      TSCEASTColonTractElement::setRelativeTractRef(this, v37, v7, a1, 0);
    }

    goto LABEL_16;
  }

LABEL_17:

  return this;
}

void sub_2215A78DC(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2215A7918(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void *sub_2215A80D4(void *a1, uint64_t *a2)
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

void sub_2215A8368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

void sub_2215A9430(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_2215A9674(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

TST::PopUpMenuModel *sub_2215A9F20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_loadFromArchive_(*(a1 + 32), a2, *(a1 + 40), a4, a5);
  result = *(a1 + 40);
  if (result)
  {
    TST::PopUpMenuModel::~PopUpMenuModel(result);

    JUMPOUT(0x223DA1450);
  }

  return result;
}

void sub_2215AA614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, char a36)
{
  _Block_object_dispose(&a24, 8);

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v41 - 200), 8);
  _Block_object_dispose((v41 - 168), 8);
  _Block_object_dispose((v41 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2215AA6F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2215AA708(uint64_t a1, void *a2, _BYTE *a3)
{
  v109[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v10 = objc_msgSend_cell(v5, v6, v7, v8, v9);
  if (objc_msgSend_interactionType(v10, v11, v12, v13, v14) == 7)
  {
    v19 = objc_msgSend_cellSpec(v10, v15, v16, v17, v18);
    v24 = objc_msgSend_asChooserControlSpec(v19, v20, v21, v22, v23);

    if ((objc_msgSend_startWithFirstItem(v24, v25, v26, v27, v28) & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    v32 = *(*(a1 + 64) + 8);
    v35 = *(v32 + 40);
    v33 = (v32 + 40);
    v34 = v35;
    if (v35)
    {
      if (!v24 || (objc_msgSend_isEqual_(v24, v29, v34, v30, v31) & 1) == 0)
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
      }
    }

    else
    {
      objc_storeStrong(v33, v24);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v40 = (objc_msgSend_hasValueOrError(v10, v15, v16, v17, v18) & 1) == 0 && objc_msgSend_interactionType(v10, v36, v37, v38, v39) != 7;
  if (objc_msgSend_valueIsText(v10, v36, v37, v38, v39))
  {
    v49 = objc_msgSend_stringValue(v10, v41, v42, v43, v44);
    if (!v49)
    {
      v50 = objc_msgSend_richTextValue(v10, v45, v46, v47, v48);
      v49 = objc_msgSend_string(v50, v51, v52, v53, v54);
    }

    v55 = objc_msgSend_tsu_stringWithoutAttachmentCharacters(v49, v45, v46, v47, v48);

    isEqualToString = objc_msgSend_isEqualToString_(v55, v56, &stru_2834BADA0, v57, v58);
  }

  else
  {
    isEqualToString = 0;
  }

  if ((v40 | isEqualToString | objc_msgSend_hasFormulaAnyError(v10, v41, v42, v43, v44)))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else if (objc_msgSend_interactionType(v10, v60, v61, v62, v63) == 7)
  {
    if (!*(*(*(a1 + 88) + 8) + 40))
    {
      v68 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v69 = *(*(a1 + 88) + 8);
      v70 = *(v69 + 40);
      *(v69 + 40) = v68;
    }

    v71 = objc_msgSend_cellSpec(v10, v64, v65, v66, v67);
    v76 = objc_msgSend_asChooserControlSpec(v71, v72, v73, v74, v75);
    v81 = objc_msgSend_popupModel(v76, v77, v78, v79, v80);

    if ((objc_msgSend_containsObject_(*(*(*(a1 + 88) + 8) + 40), v82, v81, v83, v84) & 1) == 0)
    {
      v89 = objc_msgSend_choices(v81, v85, v86, v87, v88);
      objc_msgSend_p_appendChoices_uniquelyToChoices_(TSTPopUpMenuModel, v90, v89, *(a1 + 40), v91);

      objc_msgSend_addObject_(*(*(*(a1 + 88) + 8) + 40), v92, v81, v93, v94);
    }
  }

  else
  {
    v95 = objc_msgSend_cellValueFromCell_locale_(*(a1 + 96), v64, v10, *(a1 + 32), v67);
    v109[0] = v95;
    v98 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v96, v109, 1, v97);
    objc_msgSend_p_appendChoices_uniquelyToChoices_(TSTPopUpMenuModel, v99, v98, *(a1 + 40), v100);

    if ((objc_msgSend_count(*(a1 + 40), v101, v102, v103, v104) - 1) >= 0xFB)
    {
      objc_msgSend_removeLastObject(*(a1 + 40), v105, v106, v107, v108);
      *(*(*(a1 + 80) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

void sub_2215AB5B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void TSCEASTIteratorBase::TSCEASTIteratorBase(TSCEASTIteratorBase *this, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  *this = &unk_2834B1C20;
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 1;
  *(this + 7) = a2;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  if (a2)
  {
    var1 = a2->var1;
  }

  else
  {
    var1 = 0;
  }

  *(this + 9) = var1;
  *(this + 11) = 0;
  *(this + 24) = 0x10000;
  *(this + 50) = 0;
}

void TSCEASTIteratorBase::~TSCEASTIteratorBase(TSCEASTIteratorBase *this, TSCEASTNodeArray *a2)
{
  *this = &unk_2834B1C20;
  v3 = *(this + 11);
  if (v3)
  {
    v4 = sub_22120E388(v3);
    MEMORY[0x223DA1450](v4, 0x1060C40F6749743);
  }

  v5 = *(this + 2);
  if (v5 && (*(this + 96) & 1) == 0)
  {
    TSCEASTNodeArray::freeNodeArray(v5, a2);
  }

  sub_22120E388(this + 56);
  TSCEASTNodeArray::~TSCEASTNodeArray((this + 24));
}

unint64_t TSCEASTIteratorBase::linkedResolverUIDForContainingTable(TSCEFormulaRewriteContext **this)
{
  tableUID = TSCEFormulaRewriteContext::containingCell(this[1])->var0.var0._tableUID;
  v2 = sub_221089E8C(this);
  v6 = objc_msgSend_tableOrLinkedResolverForTableUID_(v2, v3, &tableUID, v4, v5);

  if (v6)
  {
    tableUID._lower = objc_msgSend_tableUID(v6, v7, v8, v9, v10);
    tableUID._upper = v11;
  }

  return tableUID._lower;
}

void *TSCEASTIteratorBase::readerForElement(TSCEASTIteratorBase *this, const TSCEASTElement *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 16))
  {
    v6 = *(this + 11);
    if (!v6)
    {
      goto LABEL_6;
    }

    if (v6[2] != *(this + 4))
    {
      v7 = sub_22120E388(*(this + 11));
      MEMORY[0x223DA1450](v7, 0x1060C40F6749743);
      *(this + 11) = 0;
LABEL_6:
      operator new();
    }
  }

  else
  {
    v6 = (this + 56);
  }

  sub_22120C7F0(v6, *(a2 + 1), a3, a4, a5);
  return v6;
}

TSCEASTElement *TSCEASTIteratorBase::visitNode(TSCEASTNodeArray **this, TSCEASTElement *a2)
{
  if ((*(a2 + 16) & 2) != 0)
  {
    return a2;
  }

  *(a2 + 16) |= 2u;
  v7 = TSCEASTElement::tag(a2, this);
  switch(v7)
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
      var0 = *&(*this)[1].var3;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 13:
    case 14:
      var2 = (*this)[2].var2;
      v12 = this;
      v13 = a2;
      v14 = 0;
      goto LABEL_20;
    case 15:
    case 70:
      var2 = (*this)[2].var2;
      v12 = this;
      v13 = a2;
      v14 = 1;
LABEL_20:

      goto LABEL_22;
    case 16:
    case 17:
    case 33:
    case 34:
      var0 = (*this)[3].var0;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 18:
      var0 = (*this)[3].var2;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 19:
      var0 = *&(*this)[3].var3;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 20:
      var0 = (*this)[4].var0;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 21:
      var0 = (*this)[4].var1;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 22:
      var0 = (*this)[4].var2;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 23:
      var0 = *&(*this)[4].var3;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 24:
      var0 = (*this)[5].var0;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 25:
      var0 = (*this)[5].var1;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 26:
      var0 = (*this)[5].var2;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 27:
    case 56:
      var0 = *&(*this)[5].var3;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 28:
    case 45:
      var0 = (*this)[2].var0;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 29:
      v16 = TSCEASTElement::refFlags(a2, this);
      v17 = *this;
      if ((v16 & 3) != 0)
      {
        v18 = *&v17[7].var3;
        v19 = this;
        v20 = a2;
      }

      else
      {
        v18 = v17[7].var2;
        v19 = this;
        v20 = a2;
      }

      return v18(v19, v20);
    case 30:
      var0 = (*this)[3].var1;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 31:
      var0 = (*this)[9].var2;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 32:
      var0 = (*this)[9].var1;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 36:
      var0 = (*this)[7].var1;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 50:
      var0 = (*this)[8].var1;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 52:
      var0 = (*this)[6].var1;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 53:
      var0 = (*this)[6].var2;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 54:
      var0 = *&(*this)[6].var3;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 55:
      var0 = (*this)[7].var0;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 63:
    case 64:
    case 65:
      var0 = (*this)[8].var0;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 66:
      var0 = (*this)[8].var2;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 67:
      var0 = *&(*this)[8].var3;
      v9 = this;
      v10 = a2;

      goto LABEL_92;
    case 68:
      var0 = (*this)[9].var0;
      v9 = this;
      v10 = a2;

LABEL_92:
      result = var0(v9, v10);
      break;
    case 69:
      var2 = *&(*this)[2].var3;
      v12 = this;
      v13 = a2;
      v14 = 0;

LABEL_22:
      result = var2(v12, v13, v14);
      break;
    default:
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "virtual TSCEASTElement *TSCEASTIteratorBase::visitNode(TSCEASTElement *)", v5, v6);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTIteratorBase.mm", v24, v25);
      v27 = *(a2 + 1);
      v32 = TSCEASTNodeArray::codeString(this[2], v28, v29, v30, v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v33, v22, v26, 244, 0, "%d is not a valid node tag, seen at offset: %lu, seen in %{public}@", v7, v27, v32);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
      return a2;
  }

  return result;
}

void TSCEASTIteratorBase::createTagOnlyOp(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  sub_22120CA10(a1, a2, a3, a4, a5);
  TSCEASTTagOnlyElement::appendTagOnlyElement((a1 + 24), v5, v7, v8, v9);
  operator new();
}

void TSCEASTIteratorBase::createToken(TSCEASTIteratorBase *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(this, a2, a3, a4, a5);
  TSCEASTTokenElement::appendTokenElement((this + 24), a2, v7, v8, v9);
  operator new();
}

void TSCEASTIteratorBase::createNumber(TSCEASTIteratorBase *this, TSUDecimal *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(this, a2, a3, a4, a5);
  TSCEASTNumberElement::appendNumberElement((this + 24), a2, v7, v8, v9);
  operator new();
}

void TSCEASTIteratorBase::createString(TSCEASTIteratorBase *this, NSString *a2)
{
  v3 = a2;
  sub_22120CA10(this, v4, v5, v6, v7);
  TSCEASTStringElement::appendStringElement((this + 24), v3, v8);
  operator new();
}

void TSCEASTIteratorBase::createBool(TSCEASTIteratorBase *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(this, a2, a3, a4, a5);
  TSCEASTBooleanElement::appendBooleanElement((this + 24), a2, v7, v8, v9);
  operator new();
}

void TSCEASTIteratorBase::createDate(TSCEASTIteratorBase *this, NSDate *a2, NSString *a3, NSString *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  sub_22120CA10(this, v11, v12, v13, v14);
  TSCEASTDateElement::appendDateElement((this + 24), v9, v10, a4, a5);
  operator new();
}

void TSCEASTIteratorBase::createDuration(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = a2;
  sub_22120CA10(a1, a2, a3, a4, a5);
  v11 = 1057;
  v12 = 1;
  TSCEASTDurationElement::appendDurationElement((a1 + 24), v6, &v11, v9, v10, a6);
  operator new();
}

void TSCEASTIteratorBase::createReferenceError(TSCEASTIteratorBase *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(this, a2, a3, a4, a5);
  TSCEASTRelativeCoordRefElement::appendReferenceError((this + 24), v6, v7, v8, v9, v10);
  operator new();
}

void TSCEASTIteratorBase::createReferenceErrorWithUidTractList(TSCEASTIteratorBase *this, TSCEUndoTractList *a2, const TSUPreserveFlags *a3)
{
  v5 = a2;
  sub_22120CA10(this, v6, v7, v8, v9);
  v13._flags = 0;
  TSCEASTRefFlags::setPreserveFlags(&v13, a3);
  TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList((this + 24), v13._flags, v5, v10, v11, v12);
  operator new();
}

void TSCEASTIteratorBase::createReferenceErrorWithUidTractList(TSCEASTIteratorBase *this, TSCEUndoTractList *a2, TSCEASTNodeArray *a3, const TSUPreserveFlags *a4)
{
  v7 = a2;
  sub_22120CA10(this, v8, v9, v10, v11);
  v14._flags = 0;
  TSCEASTRefFlags::setPreserveFlags(&v14, a4);
  TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList((this + 24), a3, v14._flags, v7, v12, v13);
  operator new();
}

void TSCEASTIteratorBase::createRelativeCoordReference(TSCEASTIteratorBase *this, TSCEASTNodeArray *a2, const TSKUIDStruct *a3, TSCEASTRefFlags a4, TSCEUndoTractList *a5)
{
  v9 = a5;
  sub_22120CA10(this, v10, v11, v12, v13);
  TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement((this + 24), a2, a3, a4._flags, v9, v14);
  operator new();
}

void TSCEASTIteratorBase::createRelativeCoordReference(TSCEASTIteratorBase *this, TSCEASTNodeArray *a2, const TSKUIDStruct *a3, const TSCERelativeCellCoordinate *a4, TSCEUndoTractList *a5)
{
  v9 = a5;
  sub_22120CA10(this, v10, v11, v12, v13);
  TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement((this + 24), a2, a3, a4, v9, v14);
  operator new();
}

void TSCEASTIteratorBase::createLocalCellReference(TSCEASTIteratorBase *this, TSCEASTNodeArray *a2, uint64_t a3, unsigned int a4, int a5, TSCEUndoTractList *a6)
{
  v11 = a6;
  sub_22120CA10(this, v12, v13, v14, v15);
  TSCEASTRelativeCoordRefElement::appendLocalCellReferenceElement((this + 24), a2, a3, a4, a5, v11, v16);
  operator new();
}

void TSCEASTIteratorBase::createLocalColumnReference(TSCEASTIteratorBase *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(this, a2, a3, a4, a5);
  TSCEASTRelativeCoordRefElement::appendLocalColumnReferenceElement((this + 24), a2, a3, v8, v9);
  operator new();
}

void TSCEASTIteratorBase::createLocalRowReference(TSCEASTIteratorBase *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(this, a2, a3, a4, a5);
  TSCEASTRelativeCoordRefElement::appendLocalRowReferenceElement((this + 24), a2, a3, v8, v9);
  operator new();
}

void TSCEASTIteratorBase::createCrossTableCellReference(TSCEASTIteratorBase *this, char *a2, const TSCERelativeCellCoordinate *a3, int a4, TSCEASTNodeArray *a5, TSCEUndoTractList *a6)
{
  v16.var0 = a2;
  v10 = a6;
  sub_22120CA10(this, v11, v12, v13, v14);
  TSCEASTRelativeCoordRefElement::appendCrossTableCellReferenceElement((this + 24), &v16, a3, a4, a5, v10, v15);
  operator new();
}

void TSCEASTIteratorBase::createReferenceWithHostCell(TSCEASTIteratorBase *this, const TSCECellRef *a2, unsigned int a3, const TSKUIDStruct *a4, TSCERelativeCellCoordinate **a5, TSCEUndoTractList *a6)
{
  v14 = a6;
  upper = a2->_tableUID._upper;
  if (*a4 == *&a2->_tableUID)
  {
    v22.var0 = 0;
    v22.var1 = 0;
  }

  else
  {
    v22.var0 = a2->_tableUID._lower;
    v22.var1 = upper;
  }

  coordinate = a2->coordinate;
  if ((*&a2->coordinate & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    TSCEASTIteratorBase::createReferenceError(this, *&coordinate, v11, v12, v13);
  }

  v17 = *a5;
  v20 = (a3 >> 4) & 3;
  v18 = &v20;
  RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v17, coordinate, v18, v12);
  v19._flags = a3;
  TSCEASTIteratorBase::createRelativeCoordReference(this, &v22, &RelativeCellCoordinateFromAbsoluteCoordinates, v19, v14);
}

void TSCEASTIteratorBase::createReferenceWithHostCell(TSCEASTIteratorBase *this, const TSCECellRef *a2, const TSCERelativeCellCoordinate *a3, const TSKUIDStruct *a4, TSCERelativeCellCoordinate **a5, TSCEUndoTractList *a6)
{
  v14 = a6;
  upper = a2->_tableUID._upper;
  if (*a4 == *&a2->_tableUID)
  {
    v19.var0 = 0;
    v19.var1 = 0;
  }

  else
  {
    v19.var0 = a2->_tableUID._lower;
    v19.var1 = upper;
  }

  coordinate = a2->coordinate;
  if ((*&a2->coordinate & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
    TSCEASTIteratorBase::createReferenceError(this, *&coordinate, v11, v12, v13);
  }

  v17 = a3;
  RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*a5, coordinate, v17, v12);
  TSCEASTIteratorBase::createRelativeCoordReference(this, &v19, &RelativeCellCoordinateFromAbsoluteCoordinates, a3, v14);
}

void TSCEASTIteratorBase::createLocalReference(TSCEFormulaRewriteContext **this, const TSUCellCoord *a2, const TSCERelativeCellCoordinate *a3, TSCERelativeCellCoordinate **a4, TSCEUndoTractList *a5)
{
  v9 = a5;
  v10 = TSCEFormulaRewriteContext::containingCell(this[1]);
  v15.coordinate = *a2;
  v15._tableUID = v10->var0.var0._tableUID;
  v11 = TSCEFormulaRewriteContext::containingCell(this[1]);
  lower = v11->var0.var0._tableUID._lower;
  upper = v11->var0.var0._tableUID._upper;
  v14[0] = *a4;
  v14[1] = lower;
  v14[2] = upper;
  v16._lower = lower;
  v16._upper = upper;
  TSCEASTIteratorBase::createReferenceWithHostCell(this, &v15, a3, &v16, v14, v9);
}

void TSCEASTIteratorBase::createCategoryRef(TSCEASTIteratorBase *this, TSCECategoryRef *a2)
{
  v3 = a2;
  sub_22120CA10(this, v4, v5, v6, v7);
  TSCEASTCategoryRefElement::appendCategoryRefElement((this + 24), v3, v8);
  operator new();
}

void TSCEASTIteratorBase::createViewTractRef(TSCEASTIteratorBase *this, TSCEViewTractRef *a2)
{
  v3 = a2;
  sub_22120CA10(this, v4, v5, v6, v7);
  TSCEASTViewTractRefElement::appendViewTractRefElement((this + 24), v3, v8);
  operator new();
}

void TSCEASTIteratorBase::createColonTractRef(TSCEASTIteratorBase *this, TSCERelativeTractRef *a2, TSCEUndoTractList *a3, const TSKUIDStruct *a4)
{
  v7 = a2;
  v8 = a3;
  sub_22120CA10(this, v9, v10, v11, v12);
  if (a4->_lower == objc_msgSend_tableUID(v7, v13, v14, v15, v16) && a4->_upper == v17)
  {
    objc_msgSend_setTableUID_(v7, v17, 0, 0, v19);
  }

  TSCEASTColonTractElement::appendColonTractElement((this + 24), v7, v8, v18);
  operator new();
}

void TSCEASTIteratorBase::createColonTractRef(TSCEASTIteratorBase *this, TSCEASTRefFlags a2, TSCEASTColonTractFlags a3, TSCERelativeTractRef *a4, TSCEUndoTractList *a5, const TSKUIDStruct *a6)
{
  v11 = a4;
  v12 = a5;
  sub_22120CA10(this, v13, v14, v15, v16);
  if (a6->_lower == objc_msgSend_tableUID(v11, v17, v18, v19, v20) && a6->_upper == v21)
  {
    objc_msgSend_setTableUID_(v11, v21, 0, 0, v22);
  }

  v25._flags = a3._flags;
  TSCEASTColonTractElement::appendColonTractElement((this + 24), a2._flags, v25, v11, v12, v23);
  operator new();
}

void TSCEASTIteratorBase::createLinkedCellRef(TSCEASTIteratorBase *this, TSKUIDStruct *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(this, a2, a3, a4, a5);
  TSCEASTLinkedRefElement::appendLinkedCellRefElement((this + 24), a2, v7, v8, v9);
  operator new();
}

void TSCEASTIteratorBase::createUidReference(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22120CA10(a1, a2, a3, a4, a5);
  TSCEASTUidReferenceElement::appendUidReferenceElement((a1 + 24), a2);
  operator new();
}

void TSCEASTIteratorBase::createUidReference(TSCEASTIteratorBase *this, TSCEASTNodeArray *a2, const TSKUIDStruct *a3, const TSCEASTRefFlags *a4, TSCEUndoTractList *a5)
{
  v9 = a5;
  sub_22120CA10(this, v10, v11, v12, v13);
  objc_msgSend_setPreserveFlags_(v9, v14, (LOBYTE(a3->_lower) >> 4) & 3, v15, v16);
  TSCEASTUidReferenceElement::appendUidReferenceElement((this + 24), a2, a3, a4, v9, v17);
  operator new();
}

id TSCEASTIteratorBase::undoTractForCellCoord(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v7 = sub_221089E8C(a1);
  v10 = objc_msgSend_resolverForTableUID_(v7, v8, *a2, a2[1], v9);

  if (v10 && (v14 = objc_msgSend_columnUIDForColumnIndex_(v10, v11, *(a3 + 2), v12, v13), v16 = v15, v19 = objc_msgSend_rowUIDForRowIndex_(v10, v15, *a3, v17, v18), v14 | v16) && (v21 = v19, v22 = v20, v19 | v20))
  {
    v23 = [TSCEUndoTract alloc];
    v25 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v23, v24, v14, v16, v21, v22, a4);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

TSCEASTRelativeCoordRefElement *TSCEASTIteratorBase::convertReferenceErrorToRef(TSCEASTIteratorBase *this, TSCEASTRelativeCoordRefElement *a2, TSKUIDStruct *a3, TSCERelativeCellCoordinate **a4, int a5)
{
  v10 = TSCEASTElement::mutableUndoTractList(a2, this);
  v15 = objc_msgSend_includedUidsTract(v10, v11, v12, v13, v14);
  v20 = v15;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  if (v15)
  {
    v21 = objc_msgSend_columnUids(v15, v16, v17, v18, v19);
    if (&v97 != v21)
    {
      sub_2210BD068(&v97, *v21, v21[1], (v21[1] - *v21) >> 4);
    }

    v26 = objc_msgSend_rowUids(v20, v22, v23, v24, v25);
    if (&v94 != v26)
    {
      sub_2210BD068(&v94, *v26, v26[1], (v26[1] - *v26) >> 4);
    }
  }

  v92 = 0;
  v93 = 0;
  v27 = objc_msgSend_preserveRectangularRange(v20, v16, v17, v18, v19);
  v91 = 0;
  if (TSCEASTElement::refFlags(a2, this))
  {
    v91._lower = TSCEASTRelativeCoordRefElement::tableUID(a2, this, v28, v29, v30);
    v91._upper = v31;
  }

  else
  {
    v91 = *a3;
  }

  v32 = TSCEASTRelativeCoordRefElement::tractRefUsingUuids(this, &v91, &v97, &v94, &v93, &v92, v27);
  if (objc_msgSend_count(v93, v33, v34, v35, v36))
  {
    isAllInvalid = objc_msgSend_isAllInvalid(v93, v37, v38, v39, v40);
  }

  else
  {
    isAllInvalid = 1;
  }

  if (objc_msgSend_count(v92, v37, v38, v39, v40))
  {
    v46 = objc_msgSend_isAllInvalid(v92, v42, v43, v44, v45);
  }

  else
  {
    v46 = 1;
  }

  if ((objc_msgSend_isValid(v32, v42, v43, v44, v45) & (a5 ^ 1 | isAllInvalid & v46)) == 1)
  {
    v51 = TSCEASTRelativeCoordRefElement::preserveFlags(a2, this);
    v86 = a4;
    v52 = v95 - v94 == 16 && !*v94 && *(v94 + 1) == 0;
    v84 = a3;
    if (v98 - v97 != 16 || *v97 || *(v97 + 1))
    {
      v53 = 0;
      v54 = objc_msgSend_count(v93, v47, v48, v49, v50, v84) != 0;
      if (v54 || v52)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v53 = 1;
      if (v52)
      {
        v54 = 0;
LABEL_24:
        isRangeRef = objc_msgSend_isRangeRef(v20, v47, v48, v49, v50, v84);
        objc_msgSend_dropTract_(v10, v56, v20, v57, v58);
        if ((v54 | isRangeRef))
        {
          v63 = v51 & 3;
          if (isRangeRef)
          {
            v64 = (v51 >> 2) & 3;
          }

          else
          {
            v64 = v51 & 3;
          }

          if (v54)
          {
            v65 = v51 & 3;
            if (v53)
            {
              objc_msgSend_removeAllUuids(v93, v59, v60, v61, v62);
              objc_msgSend_addUUID_(v93, v66, 0, 0, v67);
            }

            if (v52)
            {
              objc_msgSend_removeAllUuids(v92, v59, v60, v61, v62);
              objc_msgSend_addUUID_(v92, v68, 0, 0, v69);
            }

            v74 = [TSCEUndoTract alloc];
            if (v93)
            {
              objc_msgSend_uuidsAsVector(v93, v70, v71, v72, v73);
            }

            else
            {
              memset(&v90, 0, sizeof(v90));
            }

            if (v92)
            {
              objc_msgSend_uuidsAsVector(v92, v70, v71, v72, v73);
            }

            else
            {
              __p = 0;
              v88 = 0;
              v89 = 0;
            }

            v78 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v74, v70, &v90, &__p, 0);
            if (__p)
            {
              v88 = __p;
              operator delete(__p);
            }

            if (v90.coordinate)
            {
              v90._tableUID._lower = v90.coordinate;
              operator delete(*&v90.coordinate);
            }

            objc_msgSend_addTractAtFront_(v10, v75, v78, v76, v77);

            v63 = v65;
          }

          objc_msgSend_setPreserveFlags_(v32, v59, v63 | (4 * v64), v61, v62);
          v79 = [TSCERelativeTractRef alloc];
          v82 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v79, v80, v32, v86, v81);
          TSCEASTIteratorBase::createColonTractRef(this, v82, v10, v85);
        }

        v90.coordinate = objc_msgSend_topLeft(v32, v59, v60, v61, v62);
        v90._tableUID = v91;
        LOBYTE(__p) = v51 & 3;
        TSCEASTIteratorBase::createReferenceWithHostCell(this, &v90, &__p, v85, v86, v10);
      }
    }

    v54 = objc_msgSend_count(v92, v47, v48, v49, v50, v84) != 0;
    goto LABEL_24;
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  return a2;
}

void sub_2215AE69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v27 = *(v25 - 104);
  if (v27)
  {
    *(v25 - 96) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2215AE768(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.sos.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6A28 = v5;
  TSTSOS::_SpecSetTableStrokePresetListArchive_default_instance_[0] = &unk_2834B1D78;
  if (atomic_load_explicit(scc_info_SpecSetTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812E6A40 = 0;
  qword_2812E6A38 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSTSOS::_SpecSetTableStrokePresetListArchive_default_instance_, v4);
}

uint64_t sub_2215AE81C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.sos.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E6A50 = v5;
  TSTSOS::_SpecTableStrokePresetListArchive_default_instance_ = &unk_2834B1E28;
  if (atomic_load_explicit(scc_info_SpecTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E6A60 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &TSTSOS::_SpecTableStrokePresetListArchive_default_instance_, v4);
}

uint64_t sub_2215AE8CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.sos.pb.cc", a4);
  *&v5 = 0;
  unk_2812E6A70 = v5;
  TSTSOS::_TableCellStylePropertyChangeSetArchive_default_instance_[0] = &unk_2834B1ED8;
  if (atomic_load_explicit(scc_info_TableCellStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812E6A9D = 0u;
  unk_2812E6A90 = 0u;
  unk_2812E6A80 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, TSTSOS::_TableCellStylePropertyChangeSetArchive_default_instance_, v4);
}

uint64_t sub_2215AE988(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTArchives.sos.pb.cc", a4);
  qword_2812E6AB8 = 0;
  unk_2812E6AC0 = 0;
  TSTSOS::_TableStylePropertyChangeSetArchive_default_instance_ = &unk_2834B1F88;
  qword_2812E6AC8 = 0;
  dword_2812E6AD0 = 0;
  if (atomic_load_explicit(scc_info_TableStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero(&unk_2812E6AD8, 0x237uLL);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &TSTSOS::_TableStylePropertyChangeSetArchive_default_instance_, v4);
}

uint64_t *TSTSOS::SpecSetTableStrokePresetListArchive::clear_table_stroke_preset_list(TSTSOS::SpecSetTableStrokePresetListArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = sub_2216D7D5C(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSTSOS::SpecSetTableStrokePresetListArchive *TSTSOS::SpecSetTableStrokePresetListArchive::SpecSetTableStrokePresetListArchive(TSTSOS::SpecSetTableStrokePresetListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B1D78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B1D78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSTSOS::SpecSetTableStrokePresetListArchive *TSTSOS::SpecSetTableStrokePresetListArchive::SpecSetTableStrokePresetListArchive(TSTSOS::SpecSetTableStrokePresetListArchive *this, const TSTSOS::SpecSetTableStrokePresetListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B1D78;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSTSOS::SpecSetTableStrokePresetListArchive::~SpecSetTableStrokePresetListArchive(TSTSOS::SpecSetTableStrokePresetListArchive *this)
{
  if (this != TSTSOS::_SpecSetTableStrokePresetListArchive_default_instance_ && *(this + 3))
  {
    v2 = sub_2216D7D18();
    MEMORY[0x223DA1450](v2, 0x10A1C40BDEB63D4);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSTSOS::SpecSetTableStrokePresetListArchive::~SpecSetTableStrokePresetListArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSTSOS::SpecSetTableStrokePresetListArchive::default_instance(TSTSOS::SpecSetTableStrokePresetListArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSTSOS::_SpecSetTableStrokePresetListArchive_default_instance_;
}

uint64_t *TSTSOS::SpecSetTableStrokePresetListArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = sub_2216D7D5C(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TSTSOS::SpecSetTableStrokePresetListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_2216E3160(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_22170B728(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_221567030(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSTSOS::SpecSetTableStrokePresetListArchive::_InternalSerialize(TSTSOS::SpecSetTableStrokePresetListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = sub_2216D812C(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSTSOS::SpecSetTableStrokePresetListArchive::ByteSizeLong(TSTSOS::SpecSetTableStrokePresetListArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = sub_2216D838C(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSTSOS::SpecSetTableStrokePresetListArchive::MergeFrom(TSTSOS::SpecSetTableStrokePresetListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSTSOS::SpecSetTableStrokePresetListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSTSOS::SpecSetTableStrokePresetListArchive::MergeFrom(uint64_t this, const TSTSOS::SpecSetTableStrokePresetListArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_2216E3160(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &unk_2812E9C10;
      }

      this = sub_2216D8574(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSTSOS::SpecSetTableStrokePresetListArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSTSOS::SpecSetTableStrokePresetListArchive::Clear(this);

    return TSTSOS::SpecSetTableStrokePresetListArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSTSOS::SpecSetTableStrokePresetListArchive::CopyFrom(uint64_t *this, const TSTSOS::SpecSetTableStrokePresetListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSTSOS::SpecSetTableStrokePresetListArchive::Clear(this);

    return TSTSOS::SpecSetTableStrokePresetListArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSTSOS::SpecSetTableStrokePresetListArchive::IsInitialized(TSTSOS::SpecSetTableStrokePresetListArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = sub_2216D86D8(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSTSOS::SpecSetTableStrokePresetListArchive::InternalSwap(TSTSOS::SpecSetTableStrokePresetListArchive *this, TSTSOS::SpecSetTableStrokePresetListArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

TSTSOS::SpecTableStrokePresetListArchive *TSTSOS::SpecTableStrokePresetListArchive::SpecTableStrokePresetListArchive(TSTSOS::SpecTableStrokePresetListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B1E28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B1E28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSTSOS::SpecTableStrokePresetListArchive *TSTSOS::SpecTableStrokePresetListArchive::SpecTableStrokePresetListArchive(TSTSOS::SpecTableStrokePresetListArchive *this, const TSTSOS::SpecTableStrokePresetListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B1E28;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSTSOS::SpecTableStrokePresetListArchive::~SpecTableStrokePresetListArchive(TSTSOS::SpecTableStrokePresetListArchive *this)
{
  if (this != &TSTSOS::_SpecTableStrokePresetListArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSTSOS::SpecSetTableStrokePresetListArchive::~SpecSetTableStrokePresetListArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSTSOS::SpecTableStrokePresetListArchive::~SpecTableStrokePresetListArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSTSOS::SpecTableStrokePresetListArchive::default_instance(TSTSOS::SpecTableStrokePresetListArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecTableStrokePresetListArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSTSOS::_SpecTableStrokePresetListArchive_default_instance_;
}

uint64_t *TSTSOS::SpecTableStrokePresetListArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSTSOS::SpecSetTableStrokePresetListArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TSTSOS::SpecTableStrokePresetListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_221567030(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSTSOS::SpecSetTableStrokePresetListArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_221700F44(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *TSTSOS::SpecTableStrokePresetListArchive::_InternalSerialize(TSTSOS::SpecTableStrokePresetListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSTSOS::SpecSetTableStrokePresetListArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSTSOS::SpecTableStrokePresetListArchive::ByteSizeLong(TSTSOS::SpecSetTableStrokePresetListArchive **this)
{
  if (this[2])
  {
    v3 = TSTSOS::SpecSetTableStrokePresetListArchive::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSTSOS::SpecTableStrokePresetListArchive::MergeFrom(TSTSOS::SpecTableStrokePresetListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSTSOS::SpecTableStrokePresetListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSTSOS::SpecTableStrokePresetListArchive::MergeFrom(uint64_t this, const TSTSOS::SpecTableStrokePresetListArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSTSOS::SpecSetTableStrokePresetListArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = TSTSOS::_SpecSetTableStrokePresetListArchive_default_instance_;
    }

    return TSTSOS::SpecSetTableStrokePresetListArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSTSOS::SpecTableStrokePresetListArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSTSOS::SpecTableStrokePresetListArchive::Clear(this);

    return TSTSOS::SpecTableStrokePresetListArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSTSOS::SpecTableStrokePresetListArchive::CopyFrom(uint64_t *this, const TSTSOS::SpecTableStrokePresetListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSTSOS::SpecTableStrokePresetListArchive::Clear(this);

    return TSTSOS::SpecTableStrokePresetListArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSTSOS::SpecTableStrokePresetListArchive::IsInitialized(TSTSOS::SpecTableStrokePresetListArchive *this)
{
  result = 1;
  if (*(this + 16))
  {
    v2 = *(this + 3);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && !sub_2216D86D8(*(v2 + 24)))
    {
      return 0;
    }
  }

  return result;
}

uint64_t *TSTSOS::SpecTableStrokePresetListArchive::InternalSwap(TSTSOS::SpecTableStrokePresetListArchive *this, TSTSOS::SpecTableStrokePresetListArchive *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableCellStylePropertyChangeSetArchive::clear_text_wrap(TSTSOS::TableCellStylePropertyChangeSetArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSTSOS::TableCellStylePropertyChangeSetArchive::clear_type(TSTSOS::TableCellStylePropertyChangeSetArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSDSOS::SpecFillArchive *TSTSOS::TableCellStylePropertyChangeSetArchive::clear_fill(TSTSOS::TableCellStylePropertyChangeSetArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSDSOS::SpecFillArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSTSOS::TableCellStylePropertyChangeSetArchive::clear_vertical_alignment(TSTSOS::TableCellStylePropertyChangeSetArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSWPSOS::SpecPaddingArchive *TSTSOS::TableCellStylePropertyChangeSetArchive::clear_padding(TSTSOS::TableCellStylePropertyChangeSetArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSWPSOS::SpecPaddingArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSTSOS::TableCellStylePropertyChangeSetArchive *TSTSOS::TableCellStylePropertyChangeSetArchive::TableCellStylePropertyChangeSetArchive(TSTSOS::TableCellStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B1ED8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableCellStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 53) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B1ED8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableCellStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 53) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSTSOS::TableCellStylePropertyChangeSetArchive *TSTSOS::TableCellStylePropertyChangeSetArchive::TableCellStylePropertyChangeSetArchive(TSTSOS::TableCellStylePropertyChangeSetArchive *this, const TSTSOS::TableCellStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B1ED8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  v7 = *(a2 + 16);
  *(this + 68) = *(a2 + 68);
  *(this + 16) = v7;
  return this;
}

void TSTSOS::TableCellStylePropertyChangeSetArchive::~TableCellStylePropertyChangeSetArchive(TSTSOS::TableCellStylePropertyChangeSetArchive *this)
{
  sub_2215B0054(this);
  sub_2214DFCF8(this + 1);
}

{
  TSTSOS::TableCellStylePropertyChangeSetArchive::~TableCellStylePropertyChangeSetArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2215B0054(uint64_t *result)
{
  if (result != &TSTSOS::_TableCellStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v2, 0x10A1C40D4912B22);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x223DA0210]();
      MEMORY[0x223DA1450](v3, 0x10A1C40D4912B22);
    }

    if (v1[5])
    {
      v4 = MEMORY[0x223DA00D0]();
      MEMORY[0x223DA1450](v4, 0x10A1C404E50D5EBLL);
    }

    if (v1[6])
    {
      v5 = MEMORY[0x223DA0210]();
      MEMORY[0x223DA1450](v5, 0x10A1C40D4912B22);
    }

    result = v1[7];
    if (result)
    {
      MEMORY[0x223DA0680]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSTSOS::TableCellStylePropertyChangeSetArchive::default_instance(TSTSOS::TableCellStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_TableCellStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSTSOS::_TableCellStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSTSOS::TableCellStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    this = TSSSOS::SpecBoolArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_18:
      this = TSDSOS::SpecFillArchive::Clear(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSWPSOS::SpecPaddingArchive::Clear(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 66) = 0;
    *(v1 + 64) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    *(v1 + 67) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSTSOS::TableCellStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v55 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v55) & 1) == 0)
  {
    while (1)
    {
      v7 = (v55 + 1);
      v8 = *v55;
      if ((*v55 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v55, (v9 - 128));
      v55 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_101;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 <= 7)
        {
          if (v10 != 6)
          {
            if (v10 == 7 && v8 == 58)
            {
              *(a1 + 16) |= 8u;
              v22 = *(a1 + 48);
              if (!v22)
              {
                v23 = *(a1 + 8);
                if (v23)
                {
                  v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
                }

                v24 = MEMORY[0x223DA0430](v23);
                LODWORD(v22) = v24;
                *(a1 + 48) = v24;
LABEL_62:
                v7 = v55;
              }

LABEL_63:
              v14 = sub_2217010E4(a3, v22, v7);
LABEL_87:
              v55 = v14;
              if (!v14)
              {
                goto LABEL_101;
              }

              goto LABEL_88;
            }

LABEL_80:
            if (v8)
            {
              v44 = (v8 & 7) == 4;
            }

            else
            {
              v44 = 1;
            }

            if (v44)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_87;
          }

          if (v8 != 48)
          {
            goto LABEL_80;
          }

          v5 |= 0x80u;
          v31 = (v7 + 1);
          v30 = *v7;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if ((v32 & 0x80000000) == 0)
          {
            v31 = (v7 + 2);
LABEL_56:
            v55 = v31;
            *(a1 + 66) = v30 != 0;
            goto LABEL_88;
          }

          v47 = google::protobuf::internal::VarintParseSlow64(v7, v30);
          v55 = v47;
          *(a1 + 66) = v48 != 0;
          if (!v47)
          {
            goto LABEL_101;
          }
        }

        else if (v10 == 8)
        {
          if (v8 != 64)
          {
            goto LABEL_80;
          }

          v5 |= 0x100u;
          v36 = (v7 + 1);
          v35 = *v7;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if ((v37 & 0x80000000) == 0)
          {
            v36 = (v7 + 2);
LABEL_68:
            v55 = v36;
            *(a1 + 67) = v35 != 0;
            goto LABEL_88;
          }

          v49 = google::protobuf::internal::VarintParseSlow64(v7, v35);
          v55 = v49;
          *(a1 + 67) = v50 != 0;
          if (!v49)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v10 == 9)
          {
            if (v8 == 74)
            {
              *(a1 + 16) |= 0x10u;
              v41 = *(a1 + 56);
              if (!v41)
              {
                v42 = *(a1 + 8);
                if (v42)
                {
                  v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
                }

                v43 = MEMORY[0x223DA0440](v42);
                LODWORD(v41) = v43;
                *(a1 + 56) = v43;
                v7 = v55;
              }

              v14 = sub_221701284(a3, v41, v7);
              goto LABEL_87;
            }

            goto LABEL_80;
          }

          if (v10 != 10 || v8 != 80)
          {
            goto LABEL_80;
          }

          v5 |= 0x200u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v55 = v16;
            *(a1 + 68) = v15 != 0;
            goto LABEL_88;
          }

          v51 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v55 = v51;
          *(a1 + 68) = v52 != 0;
          if (!v51)
          {
            goto LABEL_101;
          }
        }
      }

      else if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v27 = *(a1 + 24);
            if (!v27)
            {
              v28 = *(a1 + 8);
              if (v28)
              {
                v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = MEMORY[0x223DA0410](v28);
              LODWORD(v27) = v29;
              *(a1 + 24) = v29;
              v7 = v55;
            }

            v14 = sub_221701014(a3, v27, v7);
            goto LABEL_87;
          }

          goto LABEL_80;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_80;
        }

        v5 |= 0x20u;
        v20 = (v7 + 1);
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_36:
          v55 = v20;
          *(a1 + 64) = v19 != 0;
          goto LABEL_88;
        }

        v45 = google::protobuf::internal::VarintParseSlow64(v7, v19);
        v55 = v45;
        *(a1 + 64) = v46 != 0;
        if (!v45)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v22 = *(a1 + 32);
            if (!v22)
            {
              v33 = *(a1 + 8);
              if (v33)
              {
                v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x223DA0430](v33);
              LODWORD(v22) = v34;
              *(a1 + 32) = v34;
              goto LABEL_62;
            }

            goto LABEL_63;
          }

          goto LABEL_80;
        }

        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v13 = MEMORY[0x223DA03F0](v12);
              LODWORD(v11) = v13;
              *(a1 + 40) = v13;
              v7 = v55;
            }

            v14 = sub_2217011B4(a3, v11, v7);
            goto LABEL_87;
          }

          goto LABEL_80;
        }

        if (v8 != 32)
        {
          goto LABEL_80;
        }

        v5 |= 0x40u;
        v39 = (v7 + 1);
        v38 = *v7;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if ((v40 & 0x80000000) == 0)
        {
          v39 = (v7 + 2);
LABEL_73:
          v55 = v39;
          *(a1 + 65) = v38 != 0;
          goto LABEL_88;
        }

        v53 = google::protobuf::internal::VarintParseSlow64(v7, v38);
        v55 = v53;
        *(a1 + 65) = v54 != 0;
        if (!v53)
        {
LABEL_101:
          v55 = 0;
          goto LABEL_2;
        }
      }

LABEL_88:
      if (sub_221567030(a3, &v55))
      {
        goto LABEL_2;
      }
    }

    v7 = (v55 + 2);
LABEL_6:
    v55 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v55;
}

unsigned __int8 *TSTSOS::TableCellStylePropertyChangeSetArchive::_InternalSerialize(TSTSOS::TableCellStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 64);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_25:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
  *a2 = 26;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = a2 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      a2[2] = v16;
      v15 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v14;
    v15 = a2 + 2;
  }

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v13, v15, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 65);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 5);
  *a2 = 42;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v20, v22, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 66);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_51:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 6);
  *a2 = 58;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v27, v29, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 67);
  *a2 = 64;
  a2[1] = v33;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_74;
  }

LABEL_64:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 7);
  *a2 = 74;
  v35 = *(v34 + 5);
  if (v35 > 0x7F)
  {
    a2[1] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = a2 + 3;
      do
      {
        *(v36 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++v36;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(v36 - 1) = v38;
    }

    else
    {
      a2[2] = v37;
      v36 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v35;
    v36 = a2 + 2;
  }

  a2 = TSWPSOS::SpecPaddingArchive::_InternalSerialize(v34, v36, a3);
  if ((v5 & 0x200) != 0)
  {
LABEL_74:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v40 = *(this + 68);
    *a2 = 80;
    a2[1] = v40;
    a2 += 2;
  }

LABEL_77:
  v41 = *(this + 1);
  if ((v41 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSTSOS::TableCellStylePropertyChangeSetArchive::ByteSizeLong(TSTSOS::TableCellStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v5 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(this + 3));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(this + 6));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = TSDSOS::SpecFillArchive::ByteSizeLong(*(this + 5));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v7 = TSWPSOS::SpecPaddingArchive::ByteSizeLong(*(this + 7));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v4 = v3 + ((v2 >> 5) & 2) + ((v2 >> 4) & 2) + ((v2 >> 6) & 2);
LABEL_13:
  if ((v2 & 0x300) != 0)
  {
    v8 = v4 + ((v2 >> 8) & 2) + ((v2 >> 7) & 2);
  }

  else
  {
    v8 = v4;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v8, this + 20);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TSTSOS::TableCellStylePropertyChangeSetArchive::MergeFrom(TSTSOS::TableCellStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSTSOS::TableCellStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSTSOS::TableCellStylePropertyChangeSetArchive::MergeFrom(uint64_t this, const TSTSOS::TableCellStylePropertyChangeSetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA0410](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BF8];
      }

      this = TSSSOS::SpecBoolArchive::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80C18];
    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x223DA0430](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v9;
      }

      this = TSSSOS::SpecIntegerArchive::MergeFrom(v10, v12);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_45;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x223DA03F0](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = MEMORY[0x277D80530];
    }

    this = TSDSOS::SpecFillArchive::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA0430](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v9;
    }

    this = TSSSOS::SpecIntegerArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_61;
    }

LABEL_53:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0440](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = MEMORY[0x277D810B0];
    }

    this = TSWPSOS::SpecPaddingArchive::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
LABEL_18:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_62;
    }

LABEL_61:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_19:
      if ((v5 & 0x80) == 0)
      {
LABEL_21:
        *(v3 + 16) |= v5;
        goto LABEL_22;
      }

LABEL_20:
      *(v3 + 66) = *(a2 + 66);
      goto LABEL_21;
    }

LABEL_62:
    *(v3 + 65) = *(a2 + 65);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_22:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 67) = *(a2 + 67);
    }

    if ((v5 & 0x200) != 0)
    {
      *(v3 + 68) = *(a2 + 68);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSTSOS::TableCellStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSTSOS::TableCellStylePropertyChangeSetArchive::Clear(this);

    return TSTSOS::TableCellStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSTSOS::TableCellStylePropertyChangeSetArchive::CopyFrom(uint64_t *this, const TSTSOS::TableCellStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSTSOS::TableCellStylePropertyChangeSetArchive::Clear(this);

    return TSTSOS::TableCellStylePropertyChangeSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSTSOS::TableCellStylePropertyChangeSetArchive::IsInitialized(TSTSOS::TableCellStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = TSWPSOS::SpecPaddingArchive::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSTSOS::TableCellStylePropertyChangeSetArchive::InternalSwap(TSTSOS::TableCellStylePropertyChangeSetArchive *this, TSTSOS::TableCellStylePropertyChangeSetArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  LODWORD(v10) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  LOBYTE(v10) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v10;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_auto_resize(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_banded_rows(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSDSOS::SpecFillArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_banded_cell_fill(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSDSOS::SpecFillArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_behaves_like_spreadsheet(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_body_horizontal_border_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_body_vertical_border_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_body_horizontal_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_body_vertical_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_column_border_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_column_vertical_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_column_horizontal_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_column_separator_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_row_border_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_row_horizontal_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_row_vertical_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_row_separator_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_footer_row_border_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x10000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_footer_row_horizontal_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x20000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_footer_row_vertical_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 23);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_footer_row_separator_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 4) &= ~0x80000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_vertical_strokes_visible(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x200000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_horizontal_strokes_visible(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 27);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x400000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_row_sep_visible(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 28);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x800000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_row_verticals_visible(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 29);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x1000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_col_sep_visible(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 30);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_col_horizontals_visible(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 31);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x4000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_footer_sep_visible(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 32);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x8000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_footer_verticals_visible(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 33);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x10000000u;
  return result;
}

TSSSOS::SpecBoolArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_border_strokes_visible(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 34);
  if (result)
  {
    result = TSSSOS::SpecBoolArchive::Clear(result);
  }

  *(this + 4) &= ~0x20000000u;
  return result;
}

TSSSOS::SpecStringArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_master_font_family(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 35);
  if (result)
  {
    result = TSSSOS::SpecStringArchive::Clear(result);
  }

  *(this + 4) &= ~0x40000000u;
  return result;
}

TSSSOS::SpecIntegerArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_writing_direction(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 36);
  if (result)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(result);
  }

  *(this + 4) &= ~0x80000000;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level1_top_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 37);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~1u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level2_top_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 38);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~2u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level3_top_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 39);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~4u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level4_top_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 40);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~8u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level5_top_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 41);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x10u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level1_label_separator_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 42);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x20u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level2_label_separator_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 43);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x40u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level3_label_separator_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 44);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x80u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level4_label_separator_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 45);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x100u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level5_label_separator_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 46);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x200u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level1_bottom_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 47);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x400u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level2_bottom_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 48);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x800u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level3_bottom_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 49);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x1000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level4_bottom_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 50);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x2000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level5_bottom_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 51);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x4000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level1_interior_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 52);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x8000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level2_interior_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 53);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x10000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level3_interior_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 54);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x20000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level4_interior_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 55);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x40000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_category_level5_interior_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 56);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x80000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_body_pivot_group_horizontal_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 57);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x100000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_body_pivot_group_vertical_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 58);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x200000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_body_pivot_de_emphasis_horizontal_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 59);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x400000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_body_pivot_emphasis_vertical_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 60);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x800000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_column_pivot_group_horizontal_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 61);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x1000000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_column_pivot_group_de_emphasis_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 62);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x2000000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_column_pivot_separator_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 63);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x4000000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_row_pivot_group_vertical_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 64);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x8000000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_row_pivot_group_de_emphasis_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 65);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x10000000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_header_row_pivot_title_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 66);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x20000000u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSTSOS::TableStylePropertyChangeSetArchive::clear_footer_row_pivot_group_vertical_stroke(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  result = *(this + 67);
  if (result)
  {
    result = TSDSOS::SpecStrokeArchive::Clear(result);
  }

  *(this + 5) &= ~0x40000000u;
  return result;
}

TSTSOS::TableStylePropertyChangeSetArchive *TSTSOS::TableStylePropertyChangeSetArchive::TableStylePropertyChangeSetArchive(TSTSOS::TableStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B1F88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_TableStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero(this + 40, 0x237uLL);
  return this;
}

{
  *this = &unk_2834B1F88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_TableStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero(this + 40, 0x237uLL);
  return this;
}

TSTSOS::TableStylePropertyChangeSetArchive *TSTSOS::TableStylePropertyChangeSetArchive::TableStylePropertyChangeSetArchive(TSTSOS::TableStylePropertyChangeSetArchive *this, const TSTSOS::TableStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B1F88;
  *(this + 1) = *(a2 + 1);
  *(this + 8) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v6 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v6 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v6 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v6 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v6 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v6 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v6 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v6 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v6 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v6 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v6 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  if ((v6 & 0x800000) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  if ((v6 & 0x1000000) != 0)
  {
    operator new();
  }

  *(this + 29) = 0;
  if ((v6 & 0x2000000) != 0)
  {
    operator new();
  }

  *(this + 30) = 0;
  if ((v6 & 0x4000000) != 0)
  {
    operator new();
  }

  *(this + 31) = 0;
  if ((v6 & 0x8000000) != 0)
  {
    operator new();
  }

  *(this + 32) = 0;
  if ((v6 & 0x10000000) != 0)
  {
    operator new();
  }

  *(this + 33) = 0;
  if ((v6 & 0x20000000) != 0)
  {
    operator new();
  }

  *(this + 34) = 0;
  if ((v6 & 0x40000000) != 0)
  {
    operator new();
  }

  *(this + 35) = 0;
  if (v6 < 0)
  {
    operator new();
  }

  *(this + 36) = 0;
  v7 = *(a2 + 5);
  if (v7)
  {
    operator new();
  }

  *(this + 37) = 0;
  if ((v7 & 2) != 0)
  {
    operator new();
  }

  *(this + 38) = 0;
  if ((v7 & 4) != 0)
  {
    operator new();
  }

  *(this + 39) = 0;
  if ((v7 & 8) != 0)
  {
    operator new();
  }

  *(this + 40) = 0;
  if ((v7 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 41) = 0;
  if ((v7 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 42) = 0;
  if ((v7 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 43) = 0;
  if ((v7 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 44) = 0;
  if ((v7 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 45) = 0;
  if ((v7 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 46) = 0;
  if ((v7 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 47) = 0;
  if ((v7 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 48) = 0;
  if ((v7 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 49) = 0;
  if ((v7 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 50) = 0;
  if ((v7 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 51) = 0;
  if ((v7 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 52) = 0;
  if ((v7 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 53) = 0;
  if ((v7 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 54) = 0;
  if ((v7 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 55) = 0;
  if ((v7 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 56) = 0;
  if ((v7 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 57) = 0;
  if ((v7 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 58) = 0;
  if ((v7 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 59) = 0;
  if ((v7 & 0x800000) != 0)
  {
    operator new();
  }

  *(this + 60) = 0;
  if ((v7 & 0x1000000) != 0)
  {
    operator new();
  }

  *(this + 61) = 0;
  if ((v7 & 0x2000000) != 0)
  {
    operator new();
  }

  *(this + 62) = 0;
  if ((v7 & 0x4000000) != 0)
  {
    operator new();
  }

  *(this + 63) = 0;
  if ((v7 & 0x8000000) != 0)
  {
    operator new();
  }

  *(this + 64) = 0;
  if ((v7 & 0x10000000) != 0)
  {
    operator new();
  }

  *(this + 65) = 0;
  if ((v7 & 0x20000000) != 0)
  {
    operator new();
  }

  *(this + 66) = 0;
  if ((v7 & 0x40000000) != 0)
  {
    operator new();
  }

  *(this + 67) = 0;
  v8 = *(a2 + 34);
  v9 = *(a2 + 35);
  v10 = *(a2 + 36);
  *(this + 591) = *(a2 + 591);
  *(this + 35) = v9;
  *(this + 36) = v10;
  *(this + 34) = v8;
  return this;
}

void TSTSOS::TableStylePropertyChangeSetArchive::~TableStylePropertyChangeSetArchive(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  sub_2215B3000(this);
  sub_2214DFCF8(this + 1);
}

{
  TSTSOS::TableStylePropertyChangeSetArchive::~TableStylePropertyChangeSetArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2215B3000(uint64_t *result)
{
  if (result != &TSTSOS::_TableStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    if (result[5])
    {
      v2 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v2, 0x10A1C40D4912B22);
    }

    if (v1[6])
    {
      v3 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v3, 0x10A1C40D4912B22);
    }

    if (v1[7])
    {
      v4 = MEMORY[0x223DA00D0]();
      MEMORY[0x223DA1450](v4, 0x10A1C404E50D5EBLL);
    }

    if (v1[8])
    {
      v5 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v5, 0x10A1C40D4912B22);
    }

    if (v1[9])
    {
      v6 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v6, 0x10A1C4030AC051BLL);
    }

    if (v1[10])
    {
      v7 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v7, 0x10A1C4030AC051BLL);
    }

    if (v1[11])
    {
      v8 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v8, 0x10A1C4030AC051BLL);
    }

    if (v1[12])
    {
      v9 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v9, 0x10A1C4030AC051BLL);
    }

    if (v1[13])
    {
      v10 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v10, 0x10A1C4030AC051BLL);
    }

    if (v1[14])
    {
      v11 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v11, 0x10A1C4030AC051BLL);
    }

    if (v1[15])
    {
      v12 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v12, 0x10A1C4030AC051BLL);
    }

    if (v1[16])
    {
      v13 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v13, 0x10A1C4030AC051BLL);
    }

    if (v1[17])
    {
      v14 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v14, 0x10A1C4030AC051BLL);
    }

    if (v1[18])
    {
      v15 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v15, 0x10A1C4030AC051BLL);
    }

    if (v1[19])
    {
      v16 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v16, 0x10A1C4030AC051BLL);
    }

    if (v1[20])
    {
      v17 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v17, 0x10A1C4030AC051BLL);
    }

    if (v1[21])
    {
      v18 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v18, 0x10A1C4030AC051BLL);
    }

    if (v1[22])
    {
      v19 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v19, 0x10A1C4030AC051BLL);
    }

    if (v1[23])
    {
      v20 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v20, 0x10A1C4030AC051BLL);
    }

    if (v1[24])
    {
      v21 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v21, 0x10A1C4030AC051BLL);
    }

    v22 = v1[25];
    if (v22)
    {
      TSTSOS::SpecTableStrokePresetListArchive::~SpecTableStrokePresetListArchive(v22);
      MEMORY[0x223DA1450]();
    }

    if (v1[26])
    {
      v23 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v23, 0x10A1C40D4912B22);
    }

    if (v1[27])
    {
      v24 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v24, 0x10A1C40D4912B22);
    }

    if (v1[28])
    {
      v25 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v25, 0x10A1C40D4912B22);
    }

    if (v1[29])
    {
      v26 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v26, 0x10A1C40D4912B22);
    }

    if (v1[30])
    {
      v27 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v27, 0x10A1C40D4912B22);
    }

    if (v1[31])
    {
      v28 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v28, 0x10A1C40D4912B22);
    }

    if (v1[32])
    {
      v29 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v29, 0x10A1C40D4912B22);
    }

    if (v1[33])
    {
      v30 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v30, 0x10A1C40D4912B22);
    }

    if (v1[34])
    {
      v31 = MEMORY[0x223DA0170]();
      MEMORY[0x223DA1450](v31, 0x10A1C40D4912B22);
    }

    if (v1[35])
    {
      v32 = MEMORY[0x223DA01C0]();
      MEMORY[0x223DA1450](v32, 0x10A1C40D4912B22);
    }

    if (v1[36])
    {
      v33 = MEMORY[0x223DA0210]();
      MEMORY[0x223DA1450](v33, 0x10A1C40D4912B22);
    }

    if (v1[37])
    {
      v34 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v34, 0x10A1C4030AC051BLL);
    }

    if (v1[38])
    {
      v35 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v35, 0x10A1C4030AC051BLL);
    }

    if (v1[39])
    {
      v36 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v36, 0x10A1C4030AC051BLL);
    }

    if (v1[40])
    {
      v37 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v37, 0x10A1C4030AC051BLL);
    }

    if (v1[41])
    {
      v38 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v38, 0x10A1C4030AC051BLL);
    }

    if (v1[42])
    {
      v39 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v39, 0x10A1C4030AC051BLL);
    }

    if (v1[43])
    {
      v40 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v40, 0x10A1C4030AC051BLL);
    }

    if (v1[44])
    {
      v41 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v41, 0x10A1C4030AC051BLL);
    }

    if (v1[45])
    {
      v42 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v42, 0x10A1C4030AC051BLL);
    }

    if (v1[46])
    {
      v43 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v43, 0x10A1C4030AC051BLL);
    }

    if (v1[47])
    {
      v44 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v44, 0x10A1C4030AC051BLL);
    }

    if (v1[48])
    {
      v45 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v45, 0x10A1C4030AC051BLL);
    }

    if (v1[49])
    {
      v46 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v46, 0x10A1C4030AC051BLL);
    }

    if (v1[50])
    {
      v47 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v47, 0x10A1C4030AC051BLL);
    }

    if (v1[51])
    {
      v48 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v48, 0x10A1C4030AC051BLL);
    }

    if (v1[52])
    {
      v49 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v49, 0x10A1C4030AC051BLL);
    }

    if (v1[53])
    {
      v50 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v50, 0x10A1C4030AC051BLL);
    }

    if (v1[54])
    {
      v51 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v51, 0x10A1C4030AC051BLL);
    }

    if (v1[55])
    {
      v52 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v52, 0x10A1C4030AC051BLL);
    }

    if (v1[56])
    {
      v53 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v53, 0x10A1C4030AC051BLL);
    }

    if (v1[57])
    {
      v54 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v54, 0x10A1C4030AC051BLL);
    }

    if (v1[58])
    {
      v55 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v55, 0x10A1C4030AC051BLL);
    }

    if (v1[59])
    {
      v56 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v56, 0x10A1C4030AC051BLL);
    }

    if (v1[60])
    {
      v57 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v57, 0x10A1C4030AC051BLL);
    }

    if (v1[61])
    {
      v58 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v58, 0x10A1C4030AC051BLL);
    }

    if (v1[62])
    {
      v59 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v59, 0x10A1C4030AC051BLL);
    }

    if (v1[63])
    {
      v60 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v60, 0x10A1C4030AC051BLL);
    }

    if (v1[64])
    {
      v61 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v61, 0x10A1C4030AC051BLL);
    }

    if (v1[65])
    {
      v62 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v62, 0x10A1C4030AC051BLL);
    }

    if (v1[66])
    {
      v63 = MEMORY[0x223DA0120]();
      MEMORY[0x223DA1450](v63, 0x10A1C4030AC051BLL);
    }

    result = v1[67];
    if (result)
    {
      MEMORY[0x223DA0120]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TSTSOS::TableStylePropertyChangeSetArchive::default_instance(TSTSOS::TableStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_TableStylePropertyChangeSetArchive_TSTArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSTSOS::_TableStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSTSOS::TableStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = this + 2;
  v3 = *(this + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    this = TSSSOS::SpecBoolArchive::Clear(this[5]);
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_101;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 48));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_102;
  }

LABEL_101:
  this = TSDSOS::SpecFillArchive::Clear(*(v1 + 56));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_103;
  }

LABEL_102:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 64));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_104:
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 80));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_105;
  }

LABEL_103:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 72));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_104;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_105:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 88));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 96));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 104));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_109;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 112));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_110;
  }

LABEL_109:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 120));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_111;
  }

LABEL_110:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 128));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_112;
  }

LABEL_111:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 136));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_113;
  }

LABEL_112:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 144));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_113:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 152));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 160));
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 168));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_117;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 176));
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_118;
  }

LABEL_117:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 184));
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_119;
  }

LABEL_118:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 192));
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_120;
  }

LABEL_119:
  this = TSTSOS::SpecTableStrokePresetListArchive::Clear(*(v1 + 200));
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_121;
  }

LABEL_120:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 208));
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_121:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 216));
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 224));
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 232));
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_156;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 240));
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_157;
  }

LABEL_156:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 248));
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_158;
  }

LABEL_157:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 256));
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_159;
  }

LABEL_158:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 264));
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_160:
    this = TSSSOS::SpecStringArchive::Clear(*(v1 + 280));
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_161;
  }

LABEL_159:
  this = TSSSOS::SpecBoolArchive::Clear(*(v1 + 272));
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_160;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_161:
  this = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 288));
LABEL_40:
  v4 = *(v1 + 20);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 296));
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_125;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 304));
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_126;
  }

LABEL_125:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 312));
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_127;
  }

LABEL_126:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 320));
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_128;
  }

LABEL_127:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 328));
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_129;
  }

LABEL_128:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 336));
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_129:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 344));
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 352));
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x100) != 0)
  {
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 360));
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_133;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 368));
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_134;
  }

LABEL_133:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 376));
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_135;
  }

LABEL_134:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 384));
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_136;
  }

LABEL_135:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 392));
  if ((v4 & 0x2000) == 0)
  {
LABEL_57:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_137;
  }

LABEL_136:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 400));
  if ((v4 & 0x4000) == 0)
  {
LABEL_58:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_137:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 408));
  if ((v4 & 0x8000) != 0)
  {
LABEL_59:
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 416));
  }

LABEL_60:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x10000) != 0)
  {
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 424));
    if ((v4 & 0x20000) == 0)
    {
LABEL_63:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_141;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 432));
  if ((v4 & 0x40000) == 0)
  {
LABEL_64:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_142;
  }

LABEL_141:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 440));
  if ((v4 & 0x80000) == 0)
  {
LABEL_65:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_143;
  }

LABEL_142:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 448));
  if ((v4 & 0x100000) == 0)
  {
LABEL_66:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_144;
  }

LABEL_143:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 456));
  if ((v4 & 0x200000) == 0)
  {
LABEL_67:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_145;
  }

LABEL_144:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 464));
  if ((v4 & 0x400000) == 0)
  {
LABEL_68:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_145:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 472));
  if ((v4 & 0x800000) != 0)
  {
LABEL_69:
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 480));
  }

LABEL_70:
  if ((v4 & 0x7F000000) == 0)
  {
    goto LABEL_79;
  }

  if ((v4 & 0x1000000) != 0)
  {
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 488));
    if ((v4 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_149;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 496));
  if ((v4 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_150;
  }

LABEL_149:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 504));
  if ((v4 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_151;
  }

LABEL_150:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 512));
  if ((v4 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_152;
  }

LABEL_151:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 520));
  if ((v4 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_152:
  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 528));
  if ((v4 & 0x40000000) != 0)
  {
LABEL_78:
    this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 536));
  }

LABEL_79:
  *(v1 + 544) = 0;
  v5 = *(v1 + 24);
  if (v5)
  {
    *(v2 + 529) = 0;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(v2 + 537) = 0;
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(v2 + 545) = 0;
  }

  if (HIBYTE(v5))
  {
    *(v2 + 553) = 0;
  }

  v6 = *(v1 + 28);
  if (v6)
  {
    *(v2 + 561) = 0;
  }

  if ((v6 & 0xFF00) != 0)
  {
    *(v2 + 569) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(v2 + 577) = 0;
  }

  if ((v6 & 0x3F000000) != 0)
  {
    *(v1 + 605) = 0;
    *(v1 + 601) = 0;
  }

  *v2 = 0;
  v2[1] = 0;
  v8 = *(v1 + 8);
  v7 = (v1 + 8);
  if (v8)
  {

    return sub_221567398(v7);
  }

  return this;
}

google::protobuf::internal *TSTSOS::TableStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v457 = a2;
  if ((sub_221567030(a3, &v457) & 1) == 0)
  {
    while (1)
    {
      v6 = (v457 + 1);
      LODWORD(v7) = *v457;
      if (*v457 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v457, v7);
          v457 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v457 + 2);
      }

      v457 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 1u;
          v8 = *(a1 + 40);
          if (v8)
          {
            goto LABEL_570;
          }

          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x223DA0410](v9);
          LODWORD(v8) = v10;
          *(a1 + 40) = v10;
          goto LABEL_569;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x80000000;
          v176 = (v6 + 1);
          v175 = *v6;
          if ((v175 & 0x8000000000000000) == 0)
          {
            goto LABEL_337;
          }

          v177 = *v176;
          v175 = (v177 << 7) + v175 - 128;
          if (v177 < 0)
          {
            v397 = google::protobuf::internal::VarintParseSlow64(v6, v175);
            v457 = v397;
            *(a1 + 544) = v398 != 0;
            if (!v397)
            {
              return 0;
            }
          }

          else
          {
            v176 = (v6 + 2);
LABEL_337:
            v457 = v176;
            *(a1 + 544) = v175 != 0;
          }

          goto LABEL_634;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 2u;
          v8 = *(a1 + 48);
          if (v8)
          {
            goto LABEL_570;
          }

          v158 = *(a1 + 8);
          if (v158)
          {
            v158 = *(v158 & 0xFFFFFFFFFFFFFFFELL);
          }

          v159 = MEMORY[0x223DA0410](v158);
          LODWORD(v8) = v159;
          *(a1 + 48) = v159;
          goto LABEL_569;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 1u;
          v170 = (v6 + 1);
          v169 = *v6;
          if ((v169 & 0x8000000000000000) == 0)
          {
            goto LABEL_327;
          }

          v171 = *v170;
          v169 = (v171 << 7) + v169 - 128;
          if (v171 < 0)
          {
            v393 = google::protobuf::internal::VarintParseSlow64(v6, v169);
            v457 = v393;
            *(a1 + 545) = v394 != 0;
            if (!v393)
            {
              return 0;
            }
          }

          else
          {
            v170 = (v6 + 2);
LABEL_327:
            v457 = v170;
            *(a1 + 545) = v169 != 0;
          }

          goto LABEL_634;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 4u;
          v137 = *(a1 + 56);
          if (!v137)
          {
            v138 = *(a1 + 8);
            if (v138)
            {
              v138 = *(v138 & 0xFFFFFFFFFFFFFFFELL);
            }

            v139 = MEMORY[0x223DA03F0](v138);
            LODWORD(v137) = v139;
            *(a1 + 56) = v139;
            v6 = v457;
          }

          v140 = sub_2217011B4(a3, v137, v6);
          goto LABEL_633;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 2u;
          v201 = (v6 + 1);
          v200 = *v6;
          if ((v200 & 0x8000000000000000) == 0)
          {
            goto LABEL_387;
          }

          v202 = *v201;
          v200 = (v202 << 7) + v200 - 128;
          if (v202 < 0)
          {
            v407 = google::protobuf::internal::VarintParseSlow64(v6, v200);
            v457 = v407;
            *(a1 + 546) = v408 != 0;
            if (!v407)
            {
              return 0;
            }
          }

          else
          {
            v201 = (v6 + 2);
LABEL_387:
            v457 = v201;
            *(a1 + 546) = v200 != 0;
          }

          goto LABEL_634;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 8u;
          v8 = *(a1 + 64);
          if (v8)
          {
            goto LABEL_570;
          }

          v215 = *(a1 + 8);
          if (v215)
          {
            v215 = *(v215 & 0xFFFFFFFFFFFFFFFELL);
          }

          v216 = MEMORY[0x223DA0410](v215);
          LODWORD(v8) = v216;
          *(a1 + 64) = v216;
          goto LABEL_569;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 4u;
          v173 = (v6 + 1);
          v172 = *v6;
          if ((v172 & 0x8000000000000000) == 0)
          {
            goto LABEL_332;
          }

          v174 = *v173;
          v172 = (v174 << 7) + v172 - 128;
          if (v174 < 0)
          {
            v395 = google::protobuf::internal::VarintParseSlow64(v6, v172);
            v457 = v395;
            *(a1 + 547) = v396 != 0;
            if (!v395)
            {
              return 0;
            }
          }

          else
          {
            v173 = (v6 + 2);
LABEL_332:
            v457 = v173;
            *(a1 + 547) = v172 != 0;
          }

          goto LABEL_634;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x10u;
          v15 = *(a1 + 72);
          if (v15)
          {
            goto LABEL_632;
          }

          v221 = *(a1 + 8);
          if (v221)
          {
            v221 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
          }

          v222 = MEMORY[0x223DA0400](v221);
          LODWORD(v15) = v222;
          *(a1 + 72) = v222;
          goto LABEL_631;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 8u;
          v151 = (v6 + 1);
          v150 = *v6;
          if ((v150 & 0x8000000000000000) == 0)
          {
            goto LABEL_292;
          }

          v152 = *v151;
          v150 = (v152 << 7) + v150 - 128;
          if (v152 < 0)
          {
            v383 = google::protobuf::internal::VarintParseSlow64(v6, v150);
            v457 = v383;
            *(a1 + 548) = v384 != 0;
            if (!v383)
            {
              return 0;
            }
          }

          else
          {
            v151 = (v6 + 2);
LABEL_292:
            v457 = v151;
            *(a1 + 548) = v150 != 0;
          }

          goto LABEL_634;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x20u;
          v15 = *(a1 + 80);
          if (v15)
          {
            goto LABEL_632;
          }

          v219 = *(a1 + 8);
          if (v219)
          {
            v219 = *(v219 & 0xFFFFFFFFFFFFFFFELL);
          }

          v220 = MEMORY[0x223DA0400](v219);
          LODWORD(v15) = v220;
          *(a1 + 80) = v220;
          goto LABEL_631;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x10u;
          v126 = (v6 + 1);
          v125 = *v6;
          if ((v125 & 0x8000000000000000) == 0)
          {
            goto LABEL_244;
          }

          v127 = *v126;
          v125 = (v127 << 7) + v125 - 128;
          if (v127 < 0)
          {
            v375 = google::protobuf::internal::VarintParseSlow64(v6, v125);
            v457 = v375;
            *(a1 + 549) = v376 != 0;
            if (!v375)
            {
              return 0;
            }
          }

          else
          {
            v126 = (v6 + 2);
LABEL_244:
            v457 = v126;
            *(a1 + 549) = v125 != 0;
          }

          goto LABEL_634;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x40u;
          v15 = *(a1 + 88);
          if (v15)
          {
            goto LABEL_632;
          }

          v148 = *(a1 + 8);
          if (v148)
          {
            v148 = *(v148 & 0xFFFFFFFFFFFFFFFELL);
          }

          v149 = MEMORY[0x223DA0400](v148);
          LODWORD(v15) = v149;
          *(a1 + 88) = v149;
          goto LABEL_631;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x20u;
          v213 = (v6 + 1);
          v212 = *v6;
          if ((v212 & 0x8000000000000000) == 0)
          {
            goto LABEL_408;
          }

          v214 = *v213;
          v212 = (v214 << 7) + v212 - 128;
          if (v214 < 0)
          {
            v413 = google::protobuf::internal::VarintParseSlow64(v6, v212);
            v457 = v413;
            *(a1 + 550) = v414 != 0;
            if (!v413)
            {
              return 0;
            }
          }

          else
          {
            v213 = (v6 + 2);
LABEL_408:
            v457 = v213;
            *(a1 + 550) = v212 != 0;
          }

          goto LABEL_634;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x80u;
          v15 = *(a1 + 96);
          if (v15)
          {
            goto LABEL_632;
          }

          v111 = *(a1 + 8);
          if (v111)
          {
            v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
          }

          v112 = MEMORY[0x223DA0400](v111);
          LODWORD(v15) = v112;
          *(a1 + 96) = v112;
          goto LABEL_631;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x40u;
          v161 = (v6 + 1);
          v160 = *v6;
          if ((v160 & 0x8000000000000000) == 0)
          {
            goto LABEL_312;
          }

          v162 = *v161;
          v160 = (v162 << 7) + v160 - 128;
          if (v162 < 0)
          {
            v387 = google::protobuf::internal::VarintParseSlow64(v6, v160);
            v457 = v387;
            *(a1 + 551) = v388 != 0;
            if (!v387)
            {
              return 0;
            }
          }

          else
          {
            v161 = (v6 + 2);
LABEL_312:
            v457 = v161;
            *(a1 + 551) = v160 != 0;
          }

          goto LABEL_634;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x100u;
          v15 = *(a1 + 104);
          if (v15)
          {
            goto LABEL_632;
          }

          v104 = *(a1 + 8);
          if (v104)
          {
            v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
          }

          v105 = MEMORY[0x223DA0400](v104);
          LODWORD(v15) = v105;
          *(a1 + 104) = v105;
          goto LABEL_631;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x80u;
          v186 = (v6 + 1);
          v185 = *v6;
          if ((v185 & 0x8000000000000000) == 0)
          {
            goto LABEL_357;
          }

          v187 = *v186;
          v185 = (v187 << 7) + v185 - 128;
          if (v187 < 0)
          {
            v401 = google::protobuf::internal::VarintParseSlow64(v6, v185);
            v457 = v401;
            *(a1 + 552) = v402 != 0;
            if (!v401)
            {
              return 0;
            }
          }

          else
          {
            v186 = (v6 + 2);
LABEL_357:
            v457 = v186;
            *(a1 + 552) = v185 != 0;
          }

          goto LABEL_634;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x200u;
          v15 = *(a1 + 112);
          if (v15)
          {
            goto LABEL_632;
          }

          v217 = *(a1 + 8);
          if (v217)
          {
            v217 = *(v217 & 0xFFFFFFFFFFFFFFFELL);
          }

          v218 = MEMORY[0x223DA0400](v217);
          LODWORD(v15) = v218;
          *(a1 + 112) = v218;
          goto LABEL_631;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x100u;
          v251 = (v6 + 1);
          v250 = *v6;
          if ((v250 & 0x8000000000000000) == 0)
          {
            goto LABEL_488;
          }

          v252 = *v251;
          v250 = (v252 << 7) + v250 - 128;
          if (v252 < 0)
          {
            v425 = google::protobuf::internal::VarintParseSlow64(v6, v250);
            v457 = v425;
            *(a1 + 553) = v426 != 0;
            if (!v425)
            {
              return 0;
            }
          }

          else
          {
            v251 = (v6 + 2);
LABEL_488:
            v457 = v251;
            *(a1 + 553) = v250 != 0;
          }

          goto LABEL_634;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x400u;
          v15 = *(a1 + 120);
          if (v15)
          {
            goto LABEL_632;
          }

          v195 = *(a1 + 8);
          if (v195)
          {
            v195 = *(v195 & 0xFFFFFFFFFFFFFFFELL);
          }

          v196 = MEMORY[0x223DA0400](v195);
          LODWORD(v15) = v196;
          *(a1 + 120) = v196;
          goto LABEL_631;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x200u;
          v210 = (v6 + 1);
          v209 = *v6;
          if ((v209 & 0x8000000000000000) == 0)
          {
            goto LABEL_403;
          }

          v211 = *v210;
          v209 = (v211 << 7) + v209 - 128;
          if (v211 < 0)
          {
            v411 = google::protobuf::internal::VarintParseSlow64(v6, v209);
            v457 = v411;
            *(a1 + 554) = v412 != 0;
            if (!v411)
            {
              return 0;
            }
          }

          else
          {
            v210 = (v6 + 2);
LABEL_403:
            v457 = v210;
            *(a1 + 554) = v209 != 0;
          }

          goto LABEL_634;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x800u;
          v15 = *(a1 + 128);
          if (v15)
          {
            goto LABEL_632;
          }

          v233 = *(a1 + 8);
          if (v233)
          {
            v233 = *(v233 & 0xFFFFFFFFFFFFFFFELL);
          }

          v234 = MEMORY[0x223DA0400](v233);
          LODWORD(v15) = v234;
          *(a1 + 128) = v234;
          goto LABEL_631;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x400u;
          v262 = (v6 + 1);
          v261 = *v6;
          if ((v261 & 0x8000000000000000) == 0)
          {
            goto LABEL_508;
          }

          v263 = *v262;
          v261 = (v263 << 7) + v261 - 128;
          if (v263 < 0)
          {
            v431 = google::protobuf::internal::VarintParseSlow64(v6, v261);
            v457 = v431;
            *(a1 + 555) = v432 != 0;
            if (!v431)
            {
              return 0;
            }
          }

          else
          {
            v262 = (v6 + 2);
LABEL_508:
            v457 = v262;
            *(a1 + 555) = v261 != 0;
          }

          goto LABEL_634;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x1000u;
          v15 = *(a1 + 136);
          if (v15)
          {
            goto LABEL_632;
          }

          v156 = *(a1 + 8);
          if (v156)
          {
            v156 = *(v156 & 0xFFFFFFFFFFFFFFFELL);
          }

          v157 = MEMORY[0x223DA0400](v156);
          LODWORD(v15) = v157;
          *(a1 + 136) = v157;
          goto LABEL_631;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x800u;
          v154 = (v6 + 1);
          v153 = *v6;
          if ((v153 & 0x8000000000000000) == 0)
          {
            goto LABEL_297;
          }

          v155 = *v154;
          v153 = (v155 << 7) + v153 - 128;
          if (v155 < 0)
          {
            v385 = google::protobuf::internal::VarintParseSlow64(v6, v153);
            v457 = v385;
            *(a1 + 556) = v386 != 0;
            if (!v385)
            {
              return 0;
            }
          }

          else
          {
            v154 = (v6 + 2);
LABEL_297:
            v457 = v154;
            *(a1 + 556) = v153 != 0;
          }

          goto LABEL_634;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x2000u;
          v15 = *(a1 + 144);
          if (v15)
          {
            goto LABEL_632;
          }

          v273 = *(a1 + 8);
          if (v273)
          {
            v273 = *(v273 & 0xFFFFFFFFFFFFFFFELL);
          }

          v274 = MEMORY[0x223DA0400](v273);
          LODWORD(v15) = v274;
          *(a1 + 144) = v274;
          goto LABEL_631;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x1000u;
          v100 = (v6 + 1);
          v99 = *v6;
          if ((v99 & 0x8000000000000000) == 0)
          {
            goto LABEL_189;
          }

          v101 = *v100;
          v99 = (v101 << 7) + v99 - 128;
          if (v101 < 0)
          {
            v367 = google::protobuf::internal::VarintParseSlow64(v6, v99);
            v457 = v367;
            *(a1 + 557) = v368 != 0;
            if (!v367)
            {
              return 0;
            }
          }

          else
          {
            v100 = (v6 + 2);
LABEL_189:
            v457 = v100;
            *(a1 + 557) = v99 != 0;
          }

          goto LABEL_634;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x4000u;
          v15 = *(a1 + 152);
          if (v15)
          {
            goto LABEL_632;
          }

          v264 = *(a1 + 8);
          if (v264)
          {
            v264 = *(v264 & 0xFFFFFFFFFFFFFFFELL);
          }

          v265 = MEMORY[0x223DA0400](v264);
          LODWORD(v15) = v265;
          *(a1 + 152) = v265;
          goto LABEL_631;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x2000u;
          v267 = (v6 + 1);
          v266 = *v6;
          if ((v266 & 0x8000000000000000) == 0)
          {
            goto LABEL_518;
          }

          v268 = *v267;
          v266 = (v268 << 7) + v266 - 128;
          if (v268 < 0)
          {
            v433 = google::protobuf::internal::VarintParseSlow64(v6, v266);
            v457 = v433;
            *(a1 + 558) = v434 != 0;
            if (!v433)
            {
              return 0;
            }
          }

          else
          {
            v267 = (v6 + 2);
LABEL_518:
            v457 = v267;
            *(a1 + 558) = v266 != 0;
          }

          goto LABEL_634;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x8000u;
          v15 = *(a1 + 160);
          if (v15)
          {
            goto LABEL_632;
          }

          v223 = *(a1 + 8);
          if (v223)
          {
            v223 = *(v223 & 0xFFFFFFFFFFFFFFFELL);
          }

          v224 = MEMORY[0x223DA0400](v223);
          LODWORD(v15) = v224;
          *(a1 + 160) = v224;
          goto LABEL_631;
        case 0x20u:
          if (v7)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x4000u;
          v183 = (v6 + 1);
          v182 = *v6;
          if ((v182 & 0x8000000000000000) == 0)
          {
            goto LABEL_352;
          }

          v184 = *v183;
          v182 = (v184 << 7) + v182 - 128;
          if (v184 < 0)
          {
            v399 = google::protobuf::internal::VarintParseSlow64(v6, v182);
            v457 = v399;
            *(a1 + 559) = v400 != 0;
            if (!v399)
            {
              return 0;
            }
          }

          else
          {
            v183 = (v6 + 2);
LABEL_352:
            v457 = v183;
            *(a1 + 559) = v182 != 0;
          }

          goto LABEL_634;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x10000u;
          v15 = *(a1 + 168);
          if (v15)
          {
            goto LABEL_632;
          }

          v225 = *(a1 + 8);
          if (v225)
          {
            v225 = *(v225 & 0xFFFFFFFFFFFFFFFELL);
          }

          v226 = MEMORY[0x223DA0400](v225);
          LODWORD(v15) = v226;
          *(a1 + 168) = v226;
          goto LABEL_631;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x8000u;
          v114 = (v6 + 1);
          v113 = *v6;
          if ((v113 & 0x8000000000000000) == 0)
          {
            goto LABEL_219;
          }

          v115 = *v114;
          v113 = (v115 << 7) + v113 - 128;
          if (v115 < 0)
          {
            v371 = google::protobuf::internal::VarintParseSlow64(v6, v113);
            v457 = v371;
            *(a1 + 560) = v372 != 0;
            if (!v371)
            {
              return 0;
            }
          }

          else
          {
            v114 = (v6 + 2);
LABEL_219:
            v457 = v114;
            *(a1 + 560) = v113 != 0;
          }

          goto LABEL_634;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x20000u;
          v15 = *(a1 + 176);
          if (v15)
          {
            goto LABEL_632;
          }

          v102 = *(a1 + 8);
          if (v102)
          {
            v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
          }

          v103 = MEMORY[0x223DA0400](v102);
          LODWORD(v15) = v103;
          *(a1 + 176) = v103;
          goto LABEL_631;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x10000u;
          v92 = (v6 + 1);
          v91 = *v6;
          if ((v91 & 0x8000000000000000) == 0)
          {
            goto LABEL_174;
          }

          v93 = *v92;
          v91 = (v93 << 7) + v91 - 128;
          if (v93 < 0)
          {
            v363 = google::protobuf::internal::VarintParseSlow64(v6, v91);
            v457 = v363;
            *(a1 + 561) = v364 != 0;
            if (!v363)
            {
              return 0;
            }
          }

          else
          {
            v92 = (v6 + 2);
LABEL_174:
            v457 = v92;
            *(a1 + 561) = v91 != 0;
          }

          goto LABEL_634;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x40000u;
          v15 = *(a1 + 184);
          if (v15)
          {
            goto LABEL_632;
          }

          v94 = *(a1 + 8);
          if (v94)
          {
            v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
          }

          v95 = MEMORY[0x223DA0400](v94);
          LODWORD(v15) = v95;
          *(a1 + 184) = v95;
          goto LABEL_631;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x20000u;
          v75 = (v6 + 1);
          v74 = *v6;
          if ((v74 & 0x8000000000000000) == 0)
          {
            goto LABEL_144;
          }

          v76 = *v75;
          v74 = (v76 << 7) + v74 - 128;
          if (v76 < 0)
          {
            v353 = google::protobuf::internal::VarintParseSlow64(v6, v74);
            v457 = v353;
            *(a1 + 562) = v354 != 0;
            if (!v353)
            {
              return 0;
            }
          }

          else
          {
            v75 = (v6 + 2);
LABEL_144:
            v457 = v75;
            *(a1 + 562) = v74 != 0;
          }

          goto LABEL_634;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x80000u;
          v15 = *(a1 + 192);
          if (v15)
          {
            goto LABEL_632;
          }

          v271 = *(a1 + 8);
          if (v271)
          {
            v271 = *(v271 & 0xFFFFFFFFFFFFFFFELL);
          }

          v272 = MEMORY[0x223DA0400](v271);
          LODWORD(v15) = v272;
          *(a1 + 192) = v272;
          goto LABEL_631;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x40000u;
          v248 = (v6 + 1);
          v247 = *v6;
          if ((v247 & 0x8000000000000000) == 0)
          {
            goto LABEL_483;
          }

          v249 = *v248;
          v247 = (v249 << 7) + v247 - 128;
          if (v249 < 0)
          {
            v423 = google::protobuf::internal::VarintParseSlow64(v6, v247);
            v457 = v423;
            *(a1 + 563) = v424 != 0;
            if (!v423)
            {
              return 0;
            }
          }

          else
          {
            v248 = (v6 + 2);
LABEL_483:
            v457 = v248;
            *(a1 + 563) = v247 != 0;
          }

          goto LABEL_634;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x100000u;
          v141 = *(a1 + 200);
          if (!v141)
          {
            v142 = *(a1 + 8);
            if (v142)
            {
              v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
            }

            v141 = google::protobuf::Arena::CreateMaybeMessage<TSTSOS::SpecTableStrokePresetListArchive>(v142);
            *(a1 + 200) = v141;
            v6 = v457;
          }

          v140 = sub_221701424(a3, v141, v6);
          goto LABEL_633;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x80000u;
          v191 = (v6 + 1);
          v190 = *v6;
          if ((v190 & 0x8000000000000000) == 0)
          {
            goto LABEL_367;
          }

          v192 = *v191;
          v190 = (v192 << 7) + v190 - 128;
          if (v192 < 0)
          {
            v403 = google::protobuf::internal::VarintParseSlow64(v6, v190);
            v457 = v403;
            *(a1 + 564) = v404 != 0;
            if (!v403)
            {
              return 0;
            }
          }

          else
          {
            v191 = (v6 + 2);
LABEL_367:
            v457 = v191;
            *(a1 + 564) = v190 != 0;
          }

          goto LABEL_634;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x200000u;
          v8 = *(a1 + 208);
          if (v8)
          {
            goto LABEL_570;
          }

          v256 = *(a1 + 8);
          if (v256)
          {
            v256 = *(v256 & 0xFFFFFFFFFFFFFFFELL);
          }

          v257 = MEMORY[0x223DA0410](v256);
          LODWORD(v8) = v257;
          *(a1 + 208) = v257;
          goto LABEL_569;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x100000u;
          v56 = (v6 + 1);
          v55 = *v6;
          if ((v55 & 0x8000000000000000) == 0)
          {
            goto LABEL_104;
          }

          v57 = *v56;
          v55 = (v57 << 7) + v55 - 128;
          if (v57 < 0)
          {
            v347 = google::protobuf::internal::VarintParseSlow64(v6, v55);
            v457 = v347;
            *(a1 + 565) = v348 != 0;
            if (!v347)
            {
              return 0;
            }
          }

          else
          {
            v56 = (v6 + 2);
LABEL_104:
            v457 = v56;
            *(a1 + 565) = v55 != 0;
          }

          goto LABEL_634;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x400000u;
          v8 = *(a1 + 216);
          if (v8)
          {
            goto LABEL_570;
          }

          v109 = *(a1 + 8);
          if (v109)
          {
            v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
          }

          v110 = MEMORY[0x223DA0410](v109);
          LODWORD(v8) = v110;
          *(a1 + 216) = v110;
          goto LABEL_569;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x200000u;
          v228 = (v6 + 1);
          v227 = *v6;
          if ((v227 & 0x8000000000000000) == 0)
          {
            goto LABEL_443;
          }

          v229 = *v228;
          v227 = (v229 << 7) + v227 - 128;
          if (v229 < 0)
          {
            v415 = google::protobuf::internal::VarintParseSlow64(v6, v227);
            v457 = v415;
            *(a1 + 566) = v416 != 0;
            if (!v415)
            {
              return 0;
            }
          }

          else
          {
            v228 = (v6 + 2);
LABEL_443:
            v457 = v228;
            *(a1 + 566) = v227 != 0;
          }

          goto LABEL_634;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x800000u;
          v8 = *(a1 + 224);
          if (v8)
          {
            goto LABEL_570;
          }

          v289 = *(a1 + 8);
          if (v289)
          {
            v289 = *(v289 & 0xFFFFFFFFFFFFFFFELL);
          }

          v290 = MEMORY[0x223DA0410](v289);
          LODWORD(v8) = v290;
          *(a1 + 224) = v290;
          goto LABEL_569;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x400000u;
          v84 = (v6 + 1);
          v83 = *v6;
          if ((v83 & 0x8000000000000000) == 0)
          {
            goto LABEL_159;
          }

          v85 = *v84;
          v83 = (v85 << 7) + v83 - 128;
          if (v85 < 0)
          {
            v359 = google::protobuf::internal::VarintParseSlow64(v6, v83);
            v457 = v359;
            *(a1 + 567) = v360 != 0;
            if (!v359)
            {
              return 0;
            }
          }

          else
          {
            v84 = (v6 + 2);
LABEL_159:
            v457 = v84;
            *(a1 + 567) = v83 != 0;
          }

          goto LABEL_634;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x1000000u;
          v8 = *(a1 + 232);
          if (v8)
          {
            goto LABEL_570;
          }

          v116 = *(a1 + 8);
          if (v116)
          {
            v116 = *(v116 & 0xFFFFFFFFFFFFFFFELL);
          }

          v117 = MEMORY[0x223DA0410](v116);
          LODWORD(v8) = v117;
          *(a1 + 232) = v117;
          goto LABEL_569;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x800000u;
          v135 = (v6 + 1);
          v134 = *v6;
          if ((v134 & 0x8000000000000000) == 0)
          {
            goto LABEL_259;
          }

          v136 = *v135;
          v134 = (v136 << 7) + v134 - 128;
          if (v136 < 0)
          {
            v381 = google::protobuf::internal::VarintParseSlow64(v6, v134);
            v457 = v381;
            *(a1 + 568) = v382 != 0;
            if (!v381)
            {
              return 0;
            }
          }

          else
          {
            v135 = (v6 + 2);
LABEL_259:
            v457 = v135;
            *(a1 + 568) = v134 != 0;
          }

          goto LABEL_634;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x2000000u;
          v8 = *(a1 + 240);
          if (v8)
          {
            goto LABEL_570;
          }

          v51 = *(a1 + 8);
          if (v51)
          {
            v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
          }

          v52 = MEMORY[0x223DA0410](v51);
          LODWORD(v8) = v52;
          *(a1 + 240) = v52;
          goto LABEL_569;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x1000000u;
          v302 = (v6 + 1);
          v301 = *v6;
          if ((v301 & 0x8000000000000000) == 0)
          {
            goto LABEL_595;
          }

          v303 = *v302;
          v301 = (v303 << 7) + v301 - 128;
          if (v303 < 0)
          {
            v443 = google::protobuf::internal::VarintParseSlow64(v6, v301);
            v457 = v443;
            *(a1 + 569) = v444 != 0;
            if (!v443)
            {
              return 0;
            }
          }

          else
          {
            v302 = (v6 + 2);
LABEL_595:
            v457 = v302;
            *(a1 + 569) = v301 != 0;
          }

          goto LABEL_634;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x4000000u;
          v8 = *(a1 + 248);
          if (v8)
          {
            goto LABEL_570;
          }

          v287 = *(a1 + 8);
          if (v287)
          {
            v287 = *(v287 & 0xFFFFFFFFFFFFFFFELL);
          }

          v288 = MEMORY[0x223DA0410](v287);
          LODWORD(v8) = v288;
          *(a1 + 248) = v288;
          goto LABEL_569;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x2000000u;
          v78 = (v6 + 1);
          v77 = *v6;
          if ((v77 & 0x8000000000000000) == 0)
          {
            goto LABEL_149;
          }

          v79 = *v78;
          v77 = (v79 << 7) + v77 - 128;
          if (v79 < 0)
          {
            v355 = google::protobuf::internal::VarintParseSlow64(v6, v77);
            v457 = v355;
            *(a1 + 570) = v356 != 0;
            if (!v355)
            {
              return 0;
            }
          }

          else
          {
            v78 = (v6 + 2);
LABEL_149:
            v457 = v78;
            *(a1 + 570) = v77 != 0;
          }

          goto LABEL_634;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x8000000u;
          v8 = *(a1 + 256);
          if (v8)
          {
            goto LABEL_570;
          }

          v275 = *(a1 + 8);
          if (v275)
          {
            v275 = *(v275 & 0xFFFFFFFFFFFFFFFELL);
          }

          v276 = MEMORY[0x223DA0410](v275);
          LODWORD(v8) = v276;
          *(a1 + 256) = v276;
          goto LABEL_569;
        case 0x38u:
          if (v7 != 192)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x4000000u;
          v283 = (v6 + 1);
          v282 = *v6;
          if ((v282 & 0x8000000000000000) == 0)
          {
            goto LABEL_553;
          }

          v284 = *v283;
          v282 = (v284 << 7) + v282 - 128;
          if (v284 < 0)
          {
            v437 = google::protobuf::internal::VarintParseSlow64(v6, v282);
            v457 = v437;
            *(a1 + 571) = v438 != 0;
            if (!v437)
            {
              return 0;
            }
          }

          else
          {
            v283 = (v6 + 2);
LABEL_553:
            v457 = v283;
            *(a1 + 571) = v282 != 0;
          }

          goto LABEL_634;
        case 0x39u:
          if (v7 != 202)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x10000000u;
          v8 = *(a1 + 264);
          if (v8)
          {
            goto LABEL_570;
          }

          v86 = *(a1 + 8);
          if (v86)
          {
            v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
          }

          v87 = MEMORY[0x223DA0410](v86);
          LODWORD(v8) = v87;
          *(a1 + 264) = v87;
          goto LABEL_569;
        case 0x3Au:
          if (v7 != 208)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x8000000u;
          v254 = (v6 + 1);
          v253 = *v6;
          if ((v253 & 0x8000000000000000) == 0)
          {
            goto LABEL_493;
          }

          v255 = *v254;
          v253 = (v255 << 7) + v253 - 128;
          if (v255 < 0)
          {
            v427 = google::protobuf::internal::VarintParseSlow64(v6, v253);
            v457 = v427;
            *(a1 + 572) = v428 != 0;
            if (!v427)
            {
              return 0;
            }
          }

          else
          {
            v254 = (v6 + 2);
LABEL_493:
            v457 = v254;
            *(a1 + 572) = v253 != 0;
          }

          goto LABEL_634;
        case 0x3Bu:
          if (v7 != 218)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x20000000u;
          v8 = *(a1 + 272);
          if (v8)
          {
            goto LABEL_570;
          }

          v121 = *(a1 + 8);
          if (v121)
          {
            v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
          }

          v122 = MEMORY[0x223DA0410](v121);
          LODWORD(v8) = v122;
          *(a1 + 272) = v122;
LABEL_569:
          v6 = v457;
LABEL_570:
          v140 = sub_221701014(a3, v8, v6);
          goto LABEL_633;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x10000000u;
          v259 = (v6 + 1);
          v258 = *v6;
          if ((v258 & 0x8000000000000000) == 0)
          {
            goto LABEL_503;
          }

          v260 = *v259;
          v258 = (v260 << 7) + v258 - 128;
          if (v260 < 0)
          {
            v429 = google::protobuf::internal::VarintParseSlow64(v6, v258);
            v457 = v429;
            *(a1 + 573) = v430 != 0;
            if (!v429)
            {
              return 0;
            }
          }

          else
          {
            v259 = (v6 + 2);
LABEL_503:
            v457 = v259;
            *(a1 + 573) = v258 != 0;
          }

          goto LABEL_634;
        case 0x3Du:
          if (v7 != 234)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x40000000u;
          v143 = *(a1 + 280);
          if (!v143)
          {
            v144 = *(a1 + 8);
            if (v144)
            {
              v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
            }

            v145 = MEMORY[0x223DA0420](v144);
            LODWORD(v143) = v145;
            *(a1 + 280) = v145;
            v6 = v457;
          }

          v140 = sub_2217014F4(a3, v143, v6);
          goto LABEL_633;
        case 0x3Eu:
          if (v7 != 240)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x20000000u;
          v198 = (v6 + 1);
          v197 = *v6;
          if ((v197 & 0x8000000000000000) == 0)
          {
            goto LABEL_382;
          }

          v199 = *v198;
          v197 = (v199 << 7) + v197 - 128;
          if (v199 < 0)
          {
            v405 = google::protobuf::internal::VarintParseSlow64(v6, v197);
            v457 = v405;
            *(a1 + 574) = v406 != 0;
            if (!v405)
            {
              return 0;
            }
          }

          else
          {
            v198 = (v6 + 2);
LABEL_382:
            v457 = v198;
            *(a1 + 574) = v197 != 0;
          }

          goto LABEL_634;
        case 0x3Fu:
          if (v7 != 250)
          {
            goto LABEL_651;
          }

          *(a1 + 16) |= 0x80000000;
          v206 = *(a1 + 288);
          if (!v206)
          {
            v207 = *(a1 + 8);
            if (v207)
            {
              v207 = *(v207 & 0xFFFFFFFFFFFFFFFELL);
            }

            v208 = MEMORY[0x223DA0430](v207);
            LODWORD(v206) = v208;
            *(a1 + 288) = v208;
            v6 = v457;
          }

          v140 = sub_2217010E4(a3, v206, v6);
          goto LABEL_633;
        case 0x40u:
          if (v7)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x40000000u;
          v167 = (v6 + 1);
          v166 = *v6;
          if ((v166 & 0x8000000000000000) == 0)
          {
            goto LABEL_322;
          }

          v168 = *v167;
          v166 = (v168 << 7) + v166 - 128;
          if (v168 < 0)
          {
            v391 = google::protobuf::internal::VarintParseSlow64(v6, v166);
            v457 = v391;
            *(a1 + 575) = v392 != 0;
            if (!v391)
            {
              return 0;
            }
          }

          else
          {
            v167 = (v6 + 2);
LABEL_322:
            v457 = v167;
            *(a1 + 575) = v166 != 0;
          }

          goto LABEL_634;
        case 0x41u:
          if (v7 != 10)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 1u;
          v15 = *(a1 + 296);
          if (v15)
          {
            goto LABEL_632;
          }

          v146 = *(a1 + 8);
          if (v146)
          {
            v146 = *(v146 & 0xFFFFFFFFFFFFFFFELL);
          }

          v147 = MEMORY[0x223DA0400](v146);
          LODWORD(v15) = v147;
          *(a1 + 296) = v147;
          goto LABEL_631;
        case 0x42u:
          if (v7 != 16)
          {
            goto LABEL_651;
          }

          *(a1 + 24) |= 0x80000000;
          v204 = (v6 + 1);
          v203 = *v6;
          if ((v203 & 0x8000000000000000) == 0)
          {
            goto LABEL_392;
          }

          v205 = *v204;
          v203 = (v205 << 7) + v203 - 128;
          if (v205 < 0)
          {
            v409 = google::protobuf::internal::VarintParseSlow64(v6, v203);
            v457 = v409;
            *(a1 + 576) = v410 != 0;
            if (!v409)
            {
              return 0;
            }
          }

          else
          {
            v204 = (v6 + 2);
LABEL_392:
            v457 = v204;
            *(a1 + 576) = v203 != 0;
          }

          goto LABEL_634;
        case 0x43u:
          if (v7 != 26)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 2u;
          v15 = *(a1 + 304);
          if (v15)
          {
            goto LABEL_632;
          }

          v67 = *(a1 + 8);
          if (v67)
          {
            v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
          }

          v68 = MEMORY[0x223DA0400](v67);
          LODWORD(v15) = v68;
          *(a1 + 304) = v68;
          goto LABEL_631;
        case 0x44u:
          if (v7 != 32)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 1u;
          v107 = (v6 + 1);
          v106 = *v6;
          if ((v106 & 0x8000000000000000) == 0)
          {
            goto LABEL_204;
          }

          v108 = *v107;
          v106 = (v108 << 7) + v106 - 128;
          if (v108 < 0)
          {
            v369 = google::protobuf::internal::VarintParseSlow64(v6, v106);
            v457 = v369;
            *(a1 + 577) = v370 != 0;
            if (!v369)
            {
              return 0;
            }
          }

          else
          {
            v107 = (v6 + 2);
LABEL_204:
            v457 = v107;
            *(a1 + 577) = v106 != 0;
          }

          goto LABEL_634;
        case 0x45u:
          if (v7 != 42)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 4u;
          v15 = *(a1 + 312);
          if (v15)
          {
            goto LABEL_632;
          }

          v312 = *(a1 + 8);
          if (v312)
          {
            v312 = *(v312 & 0xFFFFFFFFFFFFFFFELL);
          }

          v313 = MEMORY[0x223DA0400](v312);
          LODWORD(v15) = v313;
          *(a1 + 312) = v313;
          goto LABEL_631;
        case 0x46u:
          if (v7 != 48)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 2u;
          v97 = (v6 + 1);
          v96 = *v6;
          if ((v96 & 0x8000000000000000) == 0)
          {
            goto LABEL_184;
          }

          v98 = *v97;
          v96 = (v98 << 7) + v96 - 128;
          if (v98 < 0)
          {
            v365 = google::protobuf::internal::VarintParseSlow64(v6, v96);
            v457 = v365;
            *(a1 + 578) = v366 != 0;
            if (!v365)
            {
              return 0;
            }
          }

          else
          {
            v97 = (v6 + 2);
LABEL_184:
            v457 = v97;
            *(a1 + 578) = v96 != 0;
          }

          goto LABEL_634;
        case 0x47u:
          if (v7 != 58)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 8u;
          v15 = *(a1 + 320);
          if (v15)
          {
            goto LABEL_632;
          }

          v43 = *(a1 + 8);
          if (v43)
          {
            v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          }

          v44 = MEMORY[0x223DA0400](v43);
          LODWORD(v15) = v44;
          *(a1 + 320) = v44;
          goto LABEL_631;
        case 0x48u:
          if (v7 != 64)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 4u;
          v72 = (v6 + 1);
          v71 = *v6;
          if ((v71 & 0x8000000000000000) == 0)
          {
            goto LABEL_139;
          }

          v73 = *v72;
          v71 = (v73 << 7) + v71 - 128;
          if (v73 < 0)
          {
            v351 = google::protobuf::internal::VarintParseSlow64(v6, v71);
            v457 = v351;
            *(a1 + 579) = v352 != 0;
            if (!v351)
            {
              return 0;
            }
          }

          else
          {
            v72 = (v6 + 2);
LABEL_139:
            v457 = v72;
            *(a1 + 579) = v71 != 0;
          }

          goto LABEL_634;
        case 0x49u:
          if (v7 != 74)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x10u;
          v15 = *(a1 + 328);
          if (v15)
          {
            goto LABEL_632;
          }

          v280 = *(a1 + 8);
          if (v280)
          {
            v280 = *(v280 & 0xFFFFFFFFFFFFFFFELL);
          }

          v281 = MEMORY[0x223DA0400](v280);
          LODWORD(v15) = v281;
          *(a1 + 328) = v281;
          goto LABEL_631;
        case 0x4Au:
          if (v7 != 80)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 8u;
          v292 = (v6 + 1);
          v291 = *v6;
          if ((v291 & 0x8000000000000000) == 0)
          {
            goto LABEL_575;
          }

          v293 = *v292;
          v291 = (v293 << 7) + v291 - 128;
          if (v293 < 0)
          {
            v439 = google::protobuf::internal::VarintParseSlow64(v6, v291);
            v457 = v439;
            *(a1 + 580) = v440 != 0;
            if (!v439)
            {
              return 0;
            }
          }

          else
          {
            v292 = (v6 + 2);
LABEL_575:
            v457 = v292;
            *(a1 + 580) = v291 != 0;
          }

          goto LABEL_634;
        case 0x4Bu:
          if (v7 != 90)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x20u;
          v15 = *(a1 + 336);
          if (v15)
          {
            goto LABEL_632;
          }

          v297 = *(a1 + 8);
          if (v297)
          {
            v297 = *(v297 & 0xFFFFFFFFFFFFFFFELL);
          }

          v298 = MEMORY[0x223DA0400](v297);
          LODWORD(v15) = v298;
          *(a1 + 336) = v298;
          goto LABEL_631;
        case 0x4Cu:
          if (v7 != 96)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x10u;
          v89 = (v6 + 1);
          v88 = *v6;
          if ((v88 & 0x8000000000000000) == 0)
          {
            goto LABEL_169;
          }

          v90 = *v89;
          v88 = (v90 << 7) + v88 - 128;
          if (v90 < 0)
          {
            v361 = google::protobuf::internal::VarintParseSlow64(v6, v88);
            v457 = v361;
            *(a1 + 581) = v362 != 0;
            if (!v361)
            {
              return 0;
            }
          }

          else
          {
            v89 = (v6 + 2);
LABEL_169:
            v457 = v89;
            *(a1 + 581) = v88 != 0;
          }

          goto LABEL_634;
        case 0x4Du:
          if (v7 != 106)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x40u;
          v15 = *(a1 + 344);
          if (v15)
          {
            goto LABEL_632;
          }

          v193 = *(a1 + 8);
          if (v193)
          {
            v193 = *(v193 & 0xFFFFFFFFFFFFFFFELL);
          }

          v194 = MEMORY[0x223DA0400](v193);
          LODWORD(v15) = v194;
          *(a1 + 344) = v194;
          goto LABEL_631;
        case 0x4Eu:
          if (v7 != 112)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x20u;
          v46 = (v6 + 1);
          v45 = *v6;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_84;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v343 = google::protobuf::internal::VarintParseSlow64(v6, v45);
            v457 = v343;
            *(a1 + 582) = v344 != 0;
            if (!v343)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_84:
            v457 = v46;
            *(a1 + 582) = v45 != 0;
          }

          goto LABEL_634;
        case 0x4Fu:
          if (v7 != 122)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x80u;
          v15 = *(a1 + 352);
          if (v15)
          {
            goto LABEL_632;
          }

          v307 = *(a1 + 8);
          if (v307)
          {
            v307 = *(v307 & 0xFFFFFFFFFFFFFFFELL);
          }

          v308 = MEMORY[0x223DA0400](v307);
          LODWORD(v15) = v308;
          *(a1 + 352) = v308;
          goto LABEL_631;
        case 0x50u:
          if (v7 != 128)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x40u;
          v34 = (v6 + 1);
          v33 = *v6;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_59;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v339 = google::protobuf::internal::VarintParseSlow64(v6, v33);
            v457 = v339;
            *(a1 + 583) = v340 != 0;
            if (!v339)
            {
              return 0;
            }
          }

          else
          {
            v34 = (v6 + 2);
LABEL_59:
            v457 = v34;
            *(a1 + 583) = v33 != 0;
          }

          goto LABEL_634;
        case 0x51u:
          if (v7 != 138)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x100u;
          v15 = *(a1 + 360);
          if (v15)
          {
            goto LABEL_632;
          }

          v69 = *(a1 + 8);
          if (v69)
          {
            v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
          }

          v70 = MEMORY[0x223DA0400](v69);
          LODWORD(v15) = v70;
          *(a1 + 360) = v70;
          goto LABEL_631;
        case 0x52u:
          if (v7 != 144)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x80u;
          v132 = (v6 + 1);
          v131 = *v6;
          if ((v131 & 0x8000000000000000) == 0)
          {
            goto LABEL_254;
          }

          v133 = *v132;
          v131 = (v133 << 7) + v131 - 128;
          if (v133 < 0)
          {
            v379 = google::protobuf::internal::VarintParseSlow64(v6, v131);
            v457 = v379;
            *(a1 + 584) = v380 != 0;
            if (!v379)
            {
              return 0;
            }
          }

          else
          {
            v132 = (v6 + 2);
LABEL_254:
            v457 = v132;
            *(a1 + 584) = v131 != 0;
          }

          goto LABEL_634;
        case 0x53u:
          if (v7 != 154)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x200u;
          v15 = *(a1 + 368);
          if (v15)
          {
            goto LABEL_632;
          }

          v123 = *(a1 + 8);
          if (v123)
          {
            v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
          }

          v124 = MEMORY[0x223DA0400](v123);
          LODWORD(v15) = v124;
          *(a1 + 368) = v124;
          goto LABEL_631;
        case 0x54u:
          if (v7 != 160)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x100u;
          v26 = (v6 + 1);
          v25 = *v6;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v335 = google::protobuf::internal::VarintParseSlow64(v6, v25);
            v457 = v335;
            *(a1 + 585) = v336 != 0;
            if (!v335)
            {
              return 0;
            }
          }

          else
          {
            v26 = (v6 + 2);
LABEL_44:
            v457 = v26;
            *(a1 + 585) = v25 != 0;
          }

          goto LABEL_634;
        case 0x55u:
          if (v7 != 170)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x400u;
          v15 = *(a1 + 376);
          if (v15)
          {
            goto LABEL_632;
          }

          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA0400](v20);
          LODWORD(v15) = v21;
          *(a1 + 376) = v21;
          goto LABEL_631;
        case 0x56u:
          if (v7 != 176)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x200u;
          v231 = (v6 + 1);
          v230 = *v6;
          if ((v230 & 0x8000000000000000) == 0)
          {
            goto LABEL_448;
          }

          v232 = *v231;
          v230 = (v232 << 7) + v230 - 128;
          if (v232 < 0)
          {
            v417 = google::protobuf::internal::VarintParseSlow64(v6, v230);
            v457 = v417;
            *(a1 + 586) = v418 != 0;
            if (!v417)
            {
              return 0;
            }
          }

          else
          {
            v231 = (v6 + 2);
LABEL_448:
            v457 = v231;
            *(a1 + 586) = v230 != 0;
          }

          goto LABEL_634;
        case 0x57u:
          if (v7 != 186)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x800u;
          v15 = *(a1 + 384);
          if (v15)
          {
            goto LABEL_632;
          }

          v235 = *(a1 + 8);
          if (v235)
          {
            v235 = *(v235 & 0xFFFFFFFFFFFFFFFELL);
          }

          v236 = MEMORY[0x223DA0400](v235);
          LODWORD(v15) = v236;
          *(a1 + 384) = v236;
          goto LABEL_631;
        case 0x58u:
          if (v7 != 192)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x400u;
          v295 = (v6 + 1);
          v294 = *v6;
          if ((v294 & 0x8000000000000000) == 0)
          {
            goto LABEL_580;
          }

          v296 = *v295;
          v294 = (v296 << 7) + v294 - 128;
          if (v296 < 0)
          {
            v441 = google::protobuf::internal::VarintParseSlow64(v6, v294);
            v457 = v441;
            *(a1 + 587) = v442 != 0;
            if (!v441)
            {
              return 0;
            }
          }

          else
          {
            v295 = (v6 + 2);
LABEL_580:
            v457 = v295;
            *(a1 + 587) = v294 != 0;
          }

          goto LABEL_634;
        case 0x59u:
          if (v7 != 202)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x1000u;
          v15 = *(a1 + 392);
          if (v15)
          {
            goto LABEL_632;
          }

          v53 = *(a1 + 8);
          if (v53)
          {
            v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
          }

          v54 = MEMORY[0x223DA0400](v53);
          LODWORD(v15) = v54;
          *(a1 + 392) = v54;
          goto LABEL_631;
        case 0x5Au:
          if (v7 != 208)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x800u;
          v322 = (v6 + 1);
          v321 = *v6;
          if ((v321 & 0x8000000000000000) == 0)
          {
            goto LABEL_640;
          }

          v323 = *v322;
          v321 = (v323 << 7) + v321 - 128;
          if (v323 < 0)
          {
            v451 = google::protobuf::internal::VarintParseSlow64(v6, v321);
            v457 = v451;
            *(a1 + 588) = v452 != 0;
            if (!v451)
            {
              return 0;
            }
          }

          else
          {
            v322 = (v6 + 2);
LABEL_640:
            v457 = v322;
            *(a1 + 588) = v321 != 0;
          }

          goto LABEL_634;
        case 0x5Bu:
          if (v7 != 218)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x2000u;
          v15 = *(a1 + 400);
          if (v15)
          {
            goto LABEL_632;
          }

          v319 = *(a1 + 8);
          if (v319)
          {
            v319 = *(v319 & 0xFFFFFFFFFFFFFFFELL);
          }

          v320 = MEMORY[0x223DA0400](v319);
          LODWORD(v15) = v320;
          *(a1 + 400) = v320;
          goto LABEL_631;
        case 0x5Cu:
          if (v7 != 224)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x1000u;
          v29 = (v6 + 1);
          v28 = *v6;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if (v30 < 0)
          {
            v337 = google::protobuf::internal::VarintParseSlow64(v6, v28);
            v457 = v337;
            *(a1 + 589) = v338 != 0;
            if (!v337)
            {
              return 0;
            }
          }

          else
          {
            v29 = (v6 + 2);
LABEL_49:
            v457 = v29;
            *(a1 + 589) = v28 != 0;
          }

          goto LABEL_634;
        case 0x5Du:
          if (v7 != 234)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x4000u;
          v15 = *(a1 + 408);
          if (v15)
          {
            goto LABEL_632;
          }

          v178 = *(a1 + 8);
          if (v178)
          {
            v178 = *(v178 & 0xFFFFFFFFFFFFFFFELL);
          }

          v179 = MEMORY[0x223DA0400](v178);
          LODWORD(v15) = v179;
          *(a1 + 408) = v179;
          goto LABEL_631;
        case 0x5Eu:
          if (v7 != 240)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x2000u;
          v49 = (v6 + 1);
          v48 = *v6;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v345 = google::protobuf::internal::VarintParseSlow64(v6, v48);
            v457 = v345;
            *(a1 + 590) = v346 != 0;
            if (!v345)
            {
              return 0;
            }
          }

          else
          {
            v49 = (v6 + 2);
LABEL_89:
            v457 = v49;
            *(a1 + 590) = v48 != 0;
          }

          goto LABEL_634;
        case 0x5Fu:
          if (v7 != 250)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x8000u;
          v15 = *(a1 + 416);
          if (v15)
          {
            goto LABEL_632;
          }

          v188 = *(a1 + 8);
          if (v188)
          {
            v188 = *(v188 & 0xFFFFFFFFFFFFFFFELL);
          }

          v189 = MEMORY[0x223DA0400](v188);
          LODWORD(v15) = v189;
          *(a1 + 416) = v189;
          goto LABEL_631;
        case 0x60u:
          if (v7)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x4000u;
          v315 = (v6 + 1);
          v314 = *v6;
          if ((v314 & 0x8000000000000000) == 0)
          {
            goto LABEL_620;
          }

          v316 = *v315;
          v314 = (v316 << 7) + v314 - 128;
          if (v316 < 0)
          {
            v449 = google::protobuf::internal::VarintParseSlow64(v6, v314);
            v457 = v449;
            *(a1 + 591) = v450 != 0;
            if (!v449)
            {
              return 0;
            }
          }

          else
          {
            v315 = (v6 + 2);
LABEL_620:
            v457 = v315;
            *(a1 + 591) = v314 != 0;
          }

          goto LABEL_634;
        case 0x61u:
          if (v7 != 10)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x10000u;
          v15 = *(a1 + 424);
          if (v15)
          {
            goto LABEL_632;
          }

          v38 = *(a1 + 8);
          if (v38)
          {
            v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
          }

          v39 = MEMORY[0x223DA0400](v38);
          LODWORD(v15) = v39;
          *(a1 + 424) = v39;
          goto LABEL_631;
        case 0x62u:
          if (v7 != 16)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x8000u;
          v325 = (v6 + 1);
          v324 = *v6;
          if ((v324 & 0x8000000000000000) == 0)
          {
            goto LABEL_645;
          }

          v326 = *v325;
          v324 = (v326 << 7) + v324 - 128;
          if (v326 < 0)
          {
            v453 = google::protobuf::internal::VarintParseSlow64(v6, v324);
            v457 = v453;
            *(a1 + 592) = v454 != 0;
            if (!v453)
            {
              return 0;
            }
          }

          else
          {
            v325 = (v6 + 2);
LABEL_645:
            v457 = v325;
            *(a1 + 592) = v324 != 0;
          }

          goto LABEL_634;
        case 0x63u:
          if (v7 != 26)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x20000u;
          v15 = *(a1 + 432);
          if (v15)
          {
            goto LABEL_632;
          }

          v180 = *(a1 + 8);
          if (v180)
          {
            v180 = *(v180 & 0xFFFFFFFFFFFFFFFELL);
          }

          v181 = MEMORY[0x223DA0400](v180);
          LODWORD(v15) = v181;
          *(a1 + 432) = v181;
          goto LABEL_631;
        case 0x64u:
          if (v7 != 32)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x10000u;
          v328 = (v6 + 1);
          v327 = *v6;
          if ((v327 & 0x8000000000000000) == 0)
          {
            goto LABEL_650;
          }

          v329 = *v328;
          v327 = (v329 << 7) + v327 - 128;
          if (v329 < 0)
          {
            v455 = google::protobuf::internal::VarintParseSlow64(v6, v327);
            v457 = v455;
            *(a1 + 593) = v456 != 0;
            if (!v455)
            {
              return 0;
            }
          }

          else
          {
            v328 = (v6 + 2);
LABEL_650:
            v457 = v328;
            *(a1 + 593) = v327 != 0;
          }

          goto LABEL_634;
        case 0x65u:
          if (v7 != 42)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x40000u;
          v15 = *(a1 + 440);
          if (v15)
          {
            goto LABEL_632;
          }

          v317 = *(a1 + 8);
          if (v317)
          {
            v317 = *(v317 & 0xFFFFFFFFFFFFFFFELL);
          }

          v318 = MEMORY[0x223DA0400](v317);
          LODWORD(v15) = v318;
          *(a1 + 440) = v318;
          goto LABEL_631;
        case 0x66u:
          if (v7 != 48)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x20000u;
          v310 = (v6 + 1);
          v309 = *v6;
          if ((v309 & 0x8000000000000000) == 0)
          {
            goto LABEL_610;
          }

          v311 = *v310;
          v309 = (v311 << 7) + v309 - 128;
          if (v311 < 0)
          {
            v447 = google::protobuf::internal::VarintParseSlow64(v6, v309);
            v457 = v447;
            *(a1 + 594) = v448 != 0;
            if (!v447)
            {
              return 0;
            }
          }

          else
          {
            v310 = (v6 + 2);
LABEL_610:
            v457 = v310;
            *(a1 + 594) = v309 != 0;
          }

          goto LABEL_634;
        case 0x67u:
          if (v7 != 58)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x80000u;
          v15 = *(a1 + 448);
          if (v15)
          {
            goto LABEL_632;
          }

          v58 = *(a1 + 8);
          if (v58)
          {
            v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
          }

          v59 = MEMORY[0x223DA0400](v58);
          LODWORD(v15) = v59;
          *(a1 + 448) = v59;
          goto LABEL_631;
        case 0x68u:
          if (v7 != 64)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x40000u;
          v305 = (v6 + 1);
          v304 = *v6;
          if ((v304 & 0x8000000000000000) == 0)
          {
            goto LABEL_600;
          }

          v306 = *v305;
          v304 = (v306 << 7) + v304 - 128;
          if (v306 < 0)
          {
            v445 = google::protobuf::internal::VarintParseSlow64(v6, v304);
            v457 = v445;
            *(a1 + 595) = v446 != 0;
            if (!v445)
            {
              return 0;
            }
          }

          else
          {
            v305 = (v6 + 2);
LABEL_600:
            v457 = v305;
            *(a1 + 595) = v304 != 0;
          }

          goto LABEL_634;
        case 0x69u:
          if (v7 != 74)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x100000u;
          v15 = *(a1 + 456);
          if (v15)
          {
            goto LABEL_632;
          }

          v299 = *(a1 + 8);
          if (v299)
          {
            v299 = *(v299 & 0xFFFFFFFFFFFFFFFELL);
          }

          v300 = MEMORY[0x223DA0400](v299);
          LODWORD(v15) = v300;
          *(a1 + 456) = v300;
          goto LABEL_631;
        case 0x6Au:
          if (v7 != 80)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x80000u;
          v41 = (v6 + 1);
          v40 = *v6;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v341 = google::protobuf::internal::VarintParseSlow64(v6, v40);
            v457 = v341;
            *(a1 + 596) = v342 != 0;
            if (!v341)
            {
              return 0;
            }
          }

          else
          {
            v41 = (v6 + 2);
LABEL_74:
            v457 = v41;
            *(a1 + 596) = v40 != 0;
          }

          goto LABEL_634;
        case 0x6Bu:
          if (v7 != 90)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x200000u;
          v15 = *(a1 + 464);
          if (v15)
          {
            goto LABEL_632;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = MEMORY[0x223DA0400](v31);
          LODWORD(v15) = v32;
          *(a1 + 464) = v32;
          goto LABEL_631;
        case 0x6Cu:
          if (v7 != 96)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x100000u;
          v81 = (v6 + 1);
          v80 = *v6;
          if ((v80 & 0x8000000000000000) == 0)
          {
            goto LABEL_154;
          }

          v82 = *v81;
          v80 = (v82 << 7) + v80 - 128;
          if (v82 < 0)
          {
            v357 = google::protobuf::internal::VarintParseSlow64(v6, v80);
            v457 = v357;
            *(a1 + 597) = v358 != 0;
            if (!v357)
            {
              return 0;
            }
          }

          else
          {
            v81 = (v6 + 2);
LABEL_154:
            v457 = v81;
            *(a1 + 597) = v80 != 0;
          }

          goto LABEL_634;
        case 0x6Du:
          if (v7 != 106)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x400000u;
          v15 = *(a1 + 472);
          if (v15)
          {
            goto LABEL_632;
          }

          v62 = *(a1 + 8);
          if (v62)
          {
            v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
          }

          v63 = MEMORY[0x223DA0400](v62);
          LODWORD(v15) = v63;
          *(a1 + 472) = v63;
          goto LABEL_631;
        case 0x6Eu:
          if (v7 != 112)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x200000u;
          v23 = (v6 + 1);
          v22 = *v6;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v333 = google::protobuf::internal::VarintParseSlow64(v6, v22);
            v457 = v333;
            *(a1 + 598) = v334 != 0;
            if (!v333)
            {
              return 0;
            }
          }

          else
          {
            v23 = (v6 + 2);
LABEL_39:
            v457 = v23;
            *(a1 + 598) = v22 != 0;
          }

          goto LABEL_634;
        case 0x6Fu:
          if (v7 != 122)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x800000u;
          v15 = *(a1 + 480);
          if (v15)
          {
            goto LABEL_632;
          }

          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x223DA0400](v16);
          LODWORD(v15) = v17;
          *(a1 + 480) = v17;
          goto LABEL_631;
        case 0x70u:
          if (v7 != 128)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x400000u;
          v278 = (v6 + 1);
          v277 = *v6;
          if ((v277 & 0x8000000000000000) == 0)
          {
            goto LABEL_543;
          }

          v279 = *v278;
          v277 = (v279 << 7) + v277 - 128;
          if (v279 < 0)
          {
            v435 = google::protobuf::internal::VarintParseSlow64(v6, v277);
            v457 = v435;
            *(a1 + 599) = v436 != 0;
            if (!v435)
            {
              return 0;
            }
          }

          else
          {
            v278 = (v6 + 2);
LABEL_543:
            v457 = v278;
            *(a1 + 599) = v277 != 0;
          }

          goto LABEL_634;
        case 0x71u:
          if (v7 != 138)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x1000000u;
          v15 = *(a1 + 488);
          if (v15)
          {
            goto LABEL_632;
          }

          v243 = *(a1 + 8);
          if (v243)
          {
            v243 = *(v243 & 0xFFFFFFFFFFFFFFFELL);
          }

          v244 = MEMORY[0x223DA0400](v243);
          LODWORD(v15) = v244;
          *(a1 + 488) = v244;
          goto LABEL_631;
        case 0x72u:
          if (v7 != 144)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x800000u;
          v65 = (v6 + 1);
          v64 = *v6;
          if ((v64 & 0x8000000000000000) == 0)
          {
            goto LABEL_124;
          }

          v66 = *v65;
          v64 = (v66 << 7) + v64 - 128;
          if (v66 < 0)
          {
            v349 = google::protobuf::internal::VarintParseSlow64(v6, v64);
            v457 = v349;
            *(a1 + 600) = v350 != 0;
            if (!v349)
            {
              return 0;
            }
          }

          else
          {
            v65 = (v6 + 2);
LABEL_124:
            v457 = v65;
            *(a1 + 600) = v64 != 0;
          }

          goto LABEL_634;
        case 0x73u:
          if (v7 != 154)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x2000000u;
          v15 = *(a1 + 496);
          if (v15)
          {
            goto LABEL_632;
          }

          v60 = *(a1 + 8);
          if (v60)
          {
            v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
          }

          v61 = MEMORY[0x223DA0400](v60);
          LODWORD(v15) = v61;
          *(a1 + 496) = v61;
          goto LABEL_631;
        case 0x74u:
          if (v7 != 160)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x1000000u;
          v238 = (v6 + 1);
          v237 = *v6;
          if ((v237 & 0x8000000000000000) == 0)
          {
            goto LABEL_463;
          }

          v239 = *v238;
          v237 = (v239 << 7) + v237 - 128;
          if (v239 < 0)
          {
            v419 = google::protobuf::internal::VarintParseSlow64(v6, v237);
            v457 = v419;
            *(a1 + 601) = v420 != 0;
            if (!v419)
            {
              return 0;
            }
          }

          else
          {
            v238 = (v6 + 2);
LABEL_463:
            v457 = v238;
            *(a1 + 601) = v237 != 0;
          }

          goto LABEL_634;
        case 0x75u:
          if (v7 != 170)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x4000000u;
          v15 = *(a1 + 504);
          if (v15)
          {
            goto LABEL_632;
          }

          v269 = *(a1 + 8);
          if (v269)
          {
            v269 = *(v269 & 0xFFFFFFFFFFFFFFFELL);
          }

          v270 = MEMORY[0x223DA0400](v269);
          LODWORD(v15) = v270;
          *(a1 + 504) = v270;
          goto LABEL_631;
        case 0x76u:
          if (v7 != 176)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x2000000u;
          v119 = (v6 + 1);
          v118 = *v6;
          if ((v118 & 0x8000000000000000) == 0)
          {
            goto LABEL_229;
          }

          v120 = *v119;
          v118 = (v120 << 7) + v118 - 128;
          if (v120 < 0)
          {
            v373 = google::protobuf::internal::VarintParseSlow64(v6, v118);
            v457 = v373;
            *(a1 + 602) = v374 != 0;
            if (!v373)
            {
              return 0;
            }
          }

          else
          {
            v119 = (v6 + 2);
LABEL_229:
            v457 = v119;
            *(a1 + 602) = v118 != 0;
          }

          goto LABEL_634;
        case 0x77u:
          if (v7 != 186)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x8000000u;
          v15 = *(a1 + 512);
          if (v15)
          {
            goto LABEL_632;
          }

          v245 = *(a1 + 8);
          if (v245)
          {
            v245 = *(v245 & 0xFFFFFFFFFFFFFFFELL);
          }

          v246 = MEMORY[0x223DA0400](v245);
          LODWORD(v15) = v246;
          *(a1 + 512) = v246;
          goto LABEL_631;
        case 0x78u:
          if (v7 != 192)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x4000000u;
          v241 = (v6 + 1);
          v240 = *v6;
          if ((v240 & 0x8000000000000000) == 0)
          {
            goto LABEL_468;
          }

          v242 = *v241;
          v240 = (v242 << 7) + v240 - 128;
          if (v242 < 0)
          {
            v421 = google::protobuf::internal::VarintParseSlow64(v6, v240);
            v457 = v421;
            *(a1 + 603) = v422 != 0;
            if (!v421)
            {
              return 0;
            }
          }

          else
          {
            v241 = (v6 + 2);
LABEL_468:
            v457 = v241;
            *(a1 + 603) = v240 != 0;
          }

          goto LABEL_634;
        case 0x79u:
          if (v7 != 202)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x10000000u;
          v15 = *(a1 + 520);
          if (v15)
          {
            goto LABEL_632;
          }

          v36 = *(a1 + 8);
          if (v36)
          {
            v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
          }

          v37 = MEMORY[0x223DA0400](v36);
          LODWORD(v15) = v37;
          *(a1 + 520) = v37;
          goto LABEL_631;
        case 0x7Au:
          if (v7 != 208)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x8000000u;
          v129 = (v6 + 1);
          v128 = *v6;
          if ((v128 & 0x8000000000000000) == 0)
          {
            goto LABEL_249;
          }

          v130 = *v129;
          v128 = (v130 << 7) + v128 - 128;
          if (v130 < 0)
          {
            v377 = google::protobuf::internal::VarintParseSlow64(v6, v128);
            v457 = v377;
            *(a1 + 604) = v378 != 0;
            if (!v377)
            {
              return 0;
            }
          }

          else
          {
            v129 = (v6 + 2);
LABEL_249:
            v457 = v129;
            *(a1 + 604) = v128 != 0;
          }

          goto LABEL_634;
        case 0x7Bu:
          if (v7 != 218)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x20000000u;
          v15 = *(a1 + 528);
          if (v15)
          {
            goto LABEL_632;
          }

          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x223DA0400](v18);
          LODWORD(v15) = v19;
          *(a1 + 528) = v19;
          goto LABEL_631;
        case 0x7Cu:
          if (v7 != 224)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x10000000u;
          v13 = (v6 + 1);
          v12 = *v6;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v331 = google::protobuf::internal::VarintParseSlow64(v6, v12);
            v457 = v331;
            *(a1 + 605) = v332 != 0;
            if (!v331)
            {
              return 0;
            }
          }

          else
          {
            v13 = (v6 + 2);
LABEL_19:
            v457 = v13;
            *(a1 + 605) = v12 != 0;
          }

          goto LABEL_634;
        case 0x7Du:
          if (v7 != 234)
          {
            goto LABEL_651;
          }

          *(a1 + 20) |= 0x40000000u;
          v15 = *(a1 + 536);
          if (v15)
          {
            goto LABEL_632;
          }

          v285 = *(a1 + 8);
          if (v285)
          {
            v285 = *(v285 & 0xFFFFFFFFFFFFFFFELL);
          }

          v286 = MEMORY[0x223DA0400](v285);
          LODWORD(v15) = v286;
          *(a1 + 536) = v286;
LABEL_631:
          v6 = v457;
LABEL_632:
          v140 = sub_221701354(a3, v15, v6);
          goto LABEL_633;
        case 0x7Eu:
          if (v7 != 240)
          {
            goto LABEL_651;
          }

          *(a1 + 28) |= 0x20000000u;
          v164 = (v6 + 1);
          v163 = *v6;
          if ((v163 & 0x8000000000000000) == 0)
          {
            goto LABEL_317;
          }

          v165 = *v164;
          v163 = (v165 << 7) + v163 - 128;
          if (v165 < 0)
          {
            v389 = google::protobuf::internal::VarintParseSlow64(v6, v163);
            v457 = v389;
            *(a1 + 606) = v390 != 0;
            if (!v389)
            {
              return 0;
            }
          }

          else
          {
            v164 = (v6 + 2);
LABEL_317:
            v457 = v164;
            *(a1 + 606) = v163 != 0;
          }

          goto LABEL_634;
        default:
LABEL_651:
          if (v7)
          {
            v330 = (v7 & 7) == 4;
          }

          else
          {
            v330 = 1;
          }

          if (v330)
          {
            *(a3 + 80) = v7 - 1;
            return v457;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v140 = google::protobuf::internal::UnknownFieldParse();
LABEL_633:
          v457 = v140;
          if (!v140)
          {
            return 0;
          }

LABEL_634:
          if (sub_221567030(a3, &v457))
          {
            return v457;
          }

          break;
      }
    }
  }

  return v457;
}