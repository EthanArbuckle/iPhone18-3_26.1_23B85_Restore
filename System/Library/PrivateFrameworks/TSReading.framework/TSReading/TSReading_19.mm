TSTCell *TSTCellCreateWithCellAndSetDuration(uint64_t a1, double a2)
{
  v4 = objc_alloc_init(TSTCell);
  if (a1)
  {
    TSTCellCopy(a1, v4);
  }

  mRichTextPayload = v4->mPrivate.mRichTextPayload;
  if (mRichTextPayload)
  {

    v4->mPrivate.mRichTextPayload = 0;
  }

  v4->mPrivate.mRichTextPayloadID = 0;
  if (v4->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType == 268)
  {
    TSTCellClearValue(v4);
    *(&v4->mPrivate + 1) = 7;
    goto LABEL_18;
  }

  mDurationFormatRef = v4->mPrivate.mCellFormats.mDurationFormatRef;
  if (!mDurationFormatRef || ([(TSUFormatReferenceObject *)mDurationFormatRef getFormatStruct], (v17 - 1) > 0xFFFFFFFD))
  {
    if (TSTCellCoerceCellToFormat(v4, 0x10Cu))
    {
      goto LABEL_18;
    }

    TSTCellClearValue(v4);
    *(&v4->mPrivate + 1) = 7;
    v8 = (*MEMORY[0x277D6C3D8] << 32) | 4;
    LODWORD(v17) = 268;
    *(&v17 + 1) = 0x1000000001;
    *&v18 = v8;
    v9 = &v17;
    goto LABEL_16;
  }

  TSTCellClearValue(v4);
  *(&v4->mPrivate + 1) = 7;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v7 = v4->mPrivate.mCellFormats.mDurationFormatRef;
  if (v7)
  {
    [(TSUFormatReferenceObject *)v7 getFormatStruct];
  }

  else
  {
    v19 = 0;
    v17 = TSUInvalidFormat;
    v18 = unk_26CA67C28;
  }

  if ((*&v4->mPrivate.mCellFormats & 4) == 0)
  {
    v14 = v17;
    v15 = v18;
    v16 = v19;
    v9 = &v14;
LABEL_16:
    TSTCellSetImplicitFormat(v4, v9);
    goto LABEL_18;
  }

  v14 = v17;
  v15 = v18;
  v16 = v19;
  TSTCellSetExplicitFormat(v4, &v14);
LABEL_18:
  mPrivate = v4->mPrivate;
  if ((mPrivate & 0xFF00) == 0)
  {
    TSTCellClearValue(v4);
    mPrivate = *&v4->mPrivate & 0xFFFF00FF | 0x700;
    *&v4->mPrivate = mPrivate;
  }

  if ((mPrivate & 0xFF00) == 0x700)
  {
    v4->mPrivate.mValue.mDouble = a2;
  }

  else
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDurationValue(TSTCell *, NSTimeInterval)"}];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1080, @"can't set duration value on a non-duration cell: %p", v4}];
  }

  return v4;
}

TSTCell *TSTCellCreateWithCellAndSetText(uint64_t a1, NSString *a2)
{
  v4 = objc_alloc_init(TSTCell);
  if (a1)
  {
    TSTCellCopy(a1, v4);
  }

  mRichTextPayload = v4->mPrivate.mRichTextPayload;
  if (mRichTextPayload)
  {

    v4->mPrivate.mRichTextPayload = 0;
  }

  v4->mPrivate.mRichTextPayloadID = 0;
  mFormatType = v4->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
  if (mFormatType == 271 || mFormatType == 260)
  {
    TSTCellClearValue(v4);
    *(&v4->mPrivate + 1) = 3;
  }

  else
  {
    TSTCellClearValue(v4);
    *(&v4->mPrivate + 1) = 3;
    v11 = 0;
    v10 = 0u;
    v9 = 0u;
    v8 = 260;
    TSTCellSetImplicitFormat(v4, &v8);
  }

  TSTCellSetStringValueClearingID(v4, a2, 1);
  return v4;
}

TSTCell *TSTCellCreateWithCellAndSetNumber(uint64_t a1, double mMinimum)
{
  v4 = objc_alloc_init(TSTCell);
  if (a1)
  {
    TSTCellCopy(a1, v4);
  }

  mRichTextPayload = v4->mPrivate.mRichTextPayload;
  if (mRichTextPayload)
  {

    v4->mPrivate.mRichTextPayload = 0;
  }

  p_mFormatType = &v4->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
  mFormatType = v4->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
  v4->mPrivate.mRichTextPayloadID = 0;
  v8 = mFormatType - 256;
  if (v8 > 0xE)
  {
    goto LABEL_18;
  }

  if (((1 << v8) & 0x604D) != 0)
  {
    TSTCellClearValue(v4);
    *(&v4->mPrivate + 1) = 2;
    goto LABEL_38;
  }

  if (((1 << v8) & 0x300) != 0)
  {
    if (v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mControlFormatStruct.mDisplayFormatType == 257)
    {
      v9 = *(&v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct + 7);
      v10 = *&v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct.mData;
      if ((*&v4->mPrivate.mCellFormats & 0x10) != 0)
      {
        v27 = *p_mFormatType;
        v28 = v10;
        LODWORD(v29) = 256;
        HIDWORD(v29) = v9;
        TSTCellSetExplicitFormat(v4, &v27);
      }

      else
      {
        v27 = *p_mFormatType;
        v28 = v10;
        LODWORD(v29) = 256;
        HIDWORD(v29) = v9;
        TSTCellSetImplicitFormat(v4, &v27);
      }

      mNumberFormatRef = v4->mPrivate.mCellFormats.mNumberFormatRef;
      if (!mNumberFormatRef)
      {
LABEL_28:
        v17 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
        LODWORD(v27) = 256;
        *(&v27 + 1) = 0;
        *&v28 = v17;
        if (mNumberFormatRef)
        {
          [(TSUFormatReferenceObject *)mNumberFormatRef getFormatStruct];
        }

        else
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
        }

        if ((TSUEqualFormatStructs(&v27, &v24) & 1) == 0)
        {

          v18 = objc_alloc(MEMORY[0x277D6C2F0]);
          LODWORD(v27) = 256;
          *(&v27 + 1) = 0;
          *&v28 = v17;
          v4->mPrivate.mCellFormats.mNumberFormatRef = [v18 initWithTSUFormatFormatStruct:&v27];
          v4->mPrivate.mCellFormats.mNumberFormatID = 0;
        }

        goto LABEL_33;
      }

      [(TSUFormatReferenceObject *)mNumberFormatRef getFormatStruct];
      if ((v27 - 1) >= 0xFFFFFFFE)
      {
        mNumberFormatRef = v4->mPrivate.mCellFormats.mNumberFormatRef;
        goto LABEL_28;
      }
    }

LABEL_33:
    TSTCellClearValue(v4);
    *(&v4->mPrivate + 1) = 2;
    mMaximum = v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mControlFormatStruct.mMaximum;
    if (mMaximum >= mMinimum)
    {
      mMaximum = mMinimum;
    }

    if (v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mControlFormatStruct.mMinimum <= mMaximum)
    {
      mMinimum = mMaximum;
    }

    else
    {
      mMinimum = v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mControlFormatStruct.mMinimum;
    }

    goto LABEL_38;
  }

  if (v8 != 11)
  {
LABEL_18:
    v12 = v4->mPrivate.mCellFormats.mNumberFormatRef;
    if (v12 && ([(TSUFormatReferenceObject *)v12 getFormatStruct], (v27 - 1) <= 0xFFFFFFFD))
    {
      TSTCellClearValue(v4);
      *(&v4->mPrivate + 1) = 2;
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v13 = v4->mPrivate.mCellFormats.mNumberFormatRef;
      if (v13)
      {
        [(TSUFormatReferenceObject *)v13 getFormatStruct];
      }

      else
      {
        v29 = 0;
        v27 = TSUInvalidFormat;
        v28 = unk_26CA67C28;
      }

      if (*&v4->mPrivate.mCellFormats)
      {
        v24 = v27;
        v25 = v28;
        v26 = v29;
        TSTCellSetExplicitFormat(v4, &v24);
        goto LABEL_38;
      }

      v24 = v27;
      v25 = v28;
      v26 = v29;
      v15 = &v24;
    }

    else
    {
      if (TSTCellCoerceCellToFormat(v4, 0x100u))
      {
        goto LABEL_38;
      }

      TSTCellClearValue(v4);
      *(&v4->mPrivate + 1) = 2;
      v14 = ((*MEMORY[0x277D6C3E8] & 7) << 8) | 0xFD;
      LODWORD(v27) = 256;
      *(&v27 + 1) = 0;
      *&v28 = v14;
      v15 = &v27;
    }

    TSTCellSetImplicitFormat(v4, v15);
    goto LABEL_38;
  }

  TSTCellClearValue(v4);
  *(&v4->mPrivate + 1) = 2;
  v11 = 5.0;
  if (mMinimum <= 5.0)
  {
    v11 = mMinimum;
  }

  if (v11 >= 0.0)
  {
    mMinimum = v11;
  }

  else
  {
    mMinimum = 0.0;
  }

LABEL_38:
  mPrivate = v4->mPrivate;
  if ((mPrivate & 0xFF00) == 0)
  {
    TSTCellClearValue(v4);
    mPrivate = *&v4->mPrivate & 0xFFFF00FF | 0x200;
    *&v4->mPrivate = mPrivate;
  }

  if ((mPrivate & 0xFF00) == 0x200)
  {
    v4->mPrivate.mValue.mDouble = mMinimum;
  }

  else
  {
    v21 = [MEMORY[0x277D6C290] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDoubleValue(TSTCell *, double)"}];
    [v21 handleFailureInFunction:v22 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 912, @"can't set value to non-value cell: %p", v4}];
  }

  return v4;
}

TSTCell *TSTCellCreateWithCellAndSetCurrency(uint64_t a1, double mMinimum)
{
  v4 = objc_alloc_init(TSTCell);
  if (a1)
  {
    TSTCellCopy(a1, v4);
  }

  mRichTextPayload = v4->mPrivate.mRichTextPayload;
  if (mRichTextPayload)
  {

    v4->mPrivate.mRichTextPayload = 0;
  }

  p_mCurrentCellFormat = &v4->mPrivate.mCellFormats.mCurrentCellFormat;
  mFormatType = v4->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
  v4->mPrivate.mRichTextPayloadID = 0;
  if ((mFormatType - 264) >= 2)
  {
    if (mFormatType == 257)
    {
      TSTCellClearValue(v4);
      *(&v4->mPrivate + 1) = 2;
      goto LABEL_41;
    }

    mCurrencyFormatRef = v4->mPrivate.mCellFormats.mCurrencyFormatRef;
    if (mCurrencyFormatRef && ([(TSUFormatReferenceObject *)mCurrencyFormatRef getFormatStruct], (defaultFractionDigits[0] - 1) <= 0xFFFFFFFD))
    {
      TSTCellClearValue(v4);
      *(&v4->mPrivate + 1) = 2;
      v41 = 0;
      *defaultFractionDigits = 0u;
      v40 = 0u;
      v11 = v4->mPrivate.mCellFormats.mCurrencyFormatRef;
      if (v11)
      {
        [(TSUFormatReferenceObject *)v11 getFormatStruct];
      }

      else
      {
        v41 = 0;
        *defaultFractionDigits = TSUInvalidFormat;
        v40 = unk_26CA67C28;
      }

      if ((*&v4->mPrivate.mCellFormats & 2) != 0)
      {
        v36 = *defaultFractionDigits;
        v37 = v40;
        v38 = v41;
        TSTCellSetExplicitFormat(v4, &v36);
        goto LABEL_41;
      }

      v36 = *defaultFractionDigits;
      v37 = v40;
      v38 = v41;
      v19 = &v36;
    }

    else
    {
      if (TSTCellCoerceCellToFormat(v4, 0x101u))
      {
        goto LABEL_41;
      }

      TSTCellClearValue(v4);
      *(&v4->mPrivate + 1) = 2;
      v12 = TSUGetCurrentLocale();
      Value = CFLocaleGetValue(v12, *MEMORY[0x277CBEEA0]);
      if (Value)
      {
        v14 = Value;
      }

      else
      {
        v14 = @"USD";
      }

      defaultFractionDigits[0] = 0;
      DecimalInfoForCurrencyCode = CFNumberFormatterGetDecimalInfoForCurrencyCode(v14, defaultFractionDigits, 0);
      v16 = v14;
      v17 = LOBYTE(defaultFractionDigits[0]);
      if (!DecimalInfoForCurrencyCode)
      {
        v17 = 2;
      }

      v18 = v17 & 0xFFFFFFFFFFFFF8FFLL | ((*MEMORY[0x277D6C3E8] & 7) << 8);
      defaultFractionDigits[0] = 257;
      *&defaultFractionDigits[2] = v16;
      *&v40 = v18;
      v19 = defaultFractionDigits;
    }

    TSTCellSetImplicitFormat(v4, v19);
    goto LABEL_41;
  }

  if (v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mControlFormatStruct.mDisplayFormatType != 257)
  {
    v8 = *(&v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct + 7);
    v9 = *&v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct.mData;
    if ((*&v4->mPrivate.mCellFormats & 0x10) != 0)
    {
      *defaultFractionDigits = *&p_mCurrentCellFormat->mFormatType;
      v40 = v9;
      LODWORD(v41) = 257;
      HIDWORD(v41) = v8;
      TSTCellSetExplicitFormat(v4, defaultFractionDigits);
    }

    else
    {
      *defaultFractionDigits = *&p_mCurrentCellFormat->mFormatType;
      v40 = v9;
      LODWORD(v41) = 257;
      HIDWORD(v41) = v8;
      TSTCellSetImplicitFormat(v4, defaultFractionDigits);
    }

    v20 = v4->mPrivate.mCellFormats.mCurrencyFormatRef;
    if (!v20 || ([(TSUFormatReferenceObject *)v20 getFormatStruct], (defaultFractionDigits[0] - 1) >= 0xFFFFFFFE))
    {
      v21 = TSUGetCurrentLocale();
      v22 = CFLocaleGetValue(v21, *MEMORY[0x277CBEEA0]);
      v23 = v22 ? v22 : @"USD";
      defaultFractionDigits[0] = 0;
      v24 = CFNumberFormatterGetDecimalInfoForCurrencyCode(v23, defaultFractionDigits, 0);
      v25 = v23;
      v26 = v25;
      v27 = v24 ? LOBYTE(defaultFractionDigits[0]) : 2;
      v28 = v27 & 0xFFFFFFFFFFFFF8FFLL | ((*MEMORY[0x277D6C3E8] & 7) << 8);
      defaultFractionDigits[0] = 257;
      *&defaultFractionDigits[2] = v25;
      *&v40 = v28;
      v29 = v4->mPrivate.mCellFormats.mCurrencyFormatRef;
      if (v29)
      {
        [(TSUFormatReferenceObject *)v29 getFormatStruct];
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
      }

      if ((TSUEqualFormatStructs(defaultFractionDigits, &v36) & 1) == 0)
      {

        v30 = objc_alloc(MEMORY[0x277D6C2F0]);
        defaultFractionDigits[0] = 257;
        *&defaultFractionDigits[2] = v26;
        *&v40 = v28;
        v4->mPrivate.mCellFormats.mCurrencyFormatRef = [v30 initWithTSUFormatFormatStruct:defaultFractionDigits];
        v4->mPrivate.mCellFormats.mCurrencyFormatID = 0;
      }
    }
  }

  TSTCellClearValue(v4);
  *(&v4->mPrivate + 1) = 2;
  mMaximum = v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mControlFormatStruct.mMaximum;
  if (mMaximum >= mMinimum)
  {
    mMaximum = mMinimum;
  }

  if (v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mControlFormatStruct.mMinimum <= mMaximum)
  {
    mMinimum = mMaximum;
  }

  else
  {
    mMinimum = v4->mPrivate.mCellFormats.mCurrentCellFormat.var0.mControlFormatStruct.mMinimum;
  }

LABEL_41:
  mPrivate = v4->mPrivate;
  if ((mPrivate & 0xFF00) == 0)
  {
    TSTCellClearValue(v4);
    mPrivate = *&v4->mPrivate & 0xFFFF00FF | 0x200;
    *&v4->mPrivate = mPrivate;
  }

  if ((mPrivate & 0xFF00) == 0x200)
  {
    v4->mPrivate.mValue.mDouble = mMinimum;
  }

  else
  {
    v33 = [MEMORY[0x277D6C290] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTCellSetDoubleValue(TSTCell *, double)"}];
    [v33 handleFailureInFunction:v34 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 912, @"can't set value to non-value cell: %p", v4}];
  }

  return v4;
}

void sub_26C9FA8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_26C9FAA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void *TSTCellIteratorGetNextCell(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 getNext:a2];
  }

  return a1;
}

uint64_t TSTCellIteratorCellStylePointer(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t TSTCellIteratorTextStylePointer(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t TSTCellIteratorCellHasFormula(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (*(v1 + 4) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TSTCellIteratorCellHasCustomFormat(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 4), (v2 & 4) != 0))
  {
    return (v2 >> 53) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TSTCellIteratorCellHasCommentStorage(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (*(v1 + 5) >> 4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TSTCellIteratorValueTypeOfCell(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(v1 + 2);
  }

  else
  {
    return 0;
  }
}

void *TSTCellIteratorExpandCell(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 88);
  *(a2 + 8) = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    return [result inflateFromStorageRef:v4 dataStore:*(a1 + 32)];
  }

  return result;
}

void *TSTCellIteratorExpandCellForLayout(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 88);
  *(a2 + 8) = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    return [result inflateFromStorageRef:v4 dataStore:*(a1 + 32) suppressingFormulaInflation:1];
  }

  return result;
}

uint64_t TSTLayoutSpaceSetGridRange(uint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = *(result + 24);
  v3 = *(result + 32);
  if (a2 != -1 && a3 != -1 && a2 <= a3 && HIDWORD(a2) != 0xFFFFFFFF && HIDWORD(a3) != 0xFFFFFFFF && HIDWORD(a2) <= HIDWORD(a3) || (v4 != -1 ? (v5 = v3 == -1) : (v5 = 1), !v5 ? (v6 = v4 > v3) : (v6 = 1), (v7 = HIDWORD(v4), v8 = HIDWORD(v3), !v6) ? (v9 = v7 == 0xFFFFFFFF) : (v9 = 1), !v9 ? (v10 = v8 == 0xFFFFFFFF) : (v10 = 1), !v10 ? (v11 = v7 > v8) : (v11 = 1), !v11))
  {
    if (a2 != v4 || (v4 ^ a2) >> 32 || a3 != v3 || (v3 ^ a3) >> 32)
    {
      *(result + 24) = a2;
      *(result + 32) = a3;
      *(result + 20) = 1;
    }
  }

  return result;
}

uint64_t TSTLayoutSpaceGetGridRange(uint64_t a1)
{
  v1 = (a1 + 24);
  if (!a1)
  {
    v1 = &TSTGridRangeEmpty;
  }

  return *v1;
}

unint64_t TSTLayoutSpaceGetRange(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFLL;
  }

  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v3 = HIDWORD(v2);
  if (HIDWORD(v1) == 0xFFFFFFFF || v3 == 0xFFFFFFFF || HIDWORD(v1) > v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v2 - (v1 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v2 - v1 + 1)) + 0x100000000;
  }

  if (v1 == -1 || v2 == -1 || v1 > v2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(a1 + 24) << 16;
  if (v1 == -1)
  {
    v10 = 16711680;
  }

  return v10 & 0xFFFFFFFFFFFF0000 | WORD2(v1) | (((v9 >> 16) & 0xFFFF0000 | v9) << 32);
}

uint64_t TSTLayoutSpaceGetHeaderRowsGridRange(unint64_t *a1)
{
  TableNumberOfHeaderRows = TSTMasterLayoutGetTableNumberOfHeaderRows([a1 masterLayout]);
  if (!TableNumberOfHeaderRows)
  {
    return -1;
  }

  LODWORD(v3) = *(a1 + 8);
  if (v3 == -1)
  {
    v5 = -1;
LABEL_20:
    v7 = -1;
    goto LABEL_21;
  }

  v4 = a1[3];
  v5 = -1;
  if (v4 == -1)
  {
    goto LABEL_20;
  }

  v6 = a1[4];
  if (v6 == -1)
  {
    goto LABEL_20;
  }

  v7 = -1;
  if (v4 <= v6)
  {
    v8 = HIDWORD(v4);
    if (HIDWORD(v4) != 0xFFFFFFFF)
    {
      v9 = HIDWORD(v6);
      if (HIDWORD(v6) != 0xFFFFFFFF && v8 <= v9)
      {
        v3 = v3 >= v6 ? v6 : v3;
        if (v3 >= v4)
        {
          if ((TableNumberOfHeaderRows - 1) >= v9)
          {
            v10 = HIDWORD(v6);
          }

          else
          {
            v10 = (TableNumberOfHeaderRows - 1);
          }

          if (v8 <= v10)
          {
            v7 = v3 | (v10 << 32);
            v5 = a1[3];
          }
        }
      }
    }
  }

LABEL_21:
  if (![a1 isMain] || (objc_msgSend(a1, "headerRowsRepeat") & 1) == 0)
  {
    if ([a1 layoutSpaceType] == 6)
    {
      v13 = a1[3];
      v12 = v13 & 0xFFFFFFFF00000000;
      return v12 | v13;
    }

    v12 = 0xFFFFFFFF00000000;
    LODWORD(v13) = -1;
    if (v5 == -1)
    {
      return v12 | v13;
    }

    if (v7 == -1)
    {
      return v12 | v13;
    }

    if (v5 > v7)
    {
      return v12 | v13;
    }

    LODWORD(v13) = -1;
    if (HIDWORD(v5) == 0xFFFFFFFF || HIDWORD(v7) == 0xFFFFFFFF || HIDWORD(v5) > HIDWORD(v7))
    {
      return v12 | v13;
    }

    if (TSTLayoutIsPartitionAlongTop([a1 layout]))
    {
      v12 = 0;
      LODWORD(v13) = *(a1 + 6);
      return v12 | v13;
    }
  }

  v12 = 0xFFFFFFFF00000000;
  LODWORD(v13) = -1;
  return v12 | v13;
}

uint64_t TSTLayoutSpaceGetFooterRowsGridRange(void *a1)
{
  TableNumberOfFooterRows = TSTMasterLayoutGetTableNumberOfFooterRows([a1 masterLayout]);
  if (!TableNumberOfFooterRows)
  {
    return -1;
  }

  v3 = TableNumberOfFooterRows;
  PartitionNonHeaderRowCellRange = TSTLayoutGetPartitionNonHeaderRowCellRange([a1 layout]);
  v5 = PartitionNonHeaderRowCellRange;
  if (PartitionNonHeaderRowCellRange == 0xFFFF)
  {
    v5 = -1;
  }

  v6 = v5 + (((HIDWORD(PartitionNonHeaderRowCellRange) << 16) - 0x100000000) >> 32);
  v7 = a1[4];
  v8 = HIDWORD(v7);
  v9 = HIWORD(PartitionNonHeaderRowCellRange) ? v6 : -1;
  if (v9 + v3 != HIDWORD(v7))
  {
    return -1;
  }

  LODWORD(v10) = BYTE2(PartitionNonHeaderRowCellRange);
  if (BYTE2(PartitionNonHeaderRowCellRange) == 255)
  {
    v11 = -1;
  }

  else
  {
    v11 = BYTE2(PartitionNonHeaderRowCellRange);
  }

  v12 = WORD2(PartitionNonHeaderRowCellRange) + v11 - 1;
  v13 = a1[3];
  if (!WORD2(PartitionNonHeaderRowCellRange))
  {
    v12 = -1;
  }

  result = -1;
  if (v13 != -1 && v7 != -1 && v13 <= v7)
  {
    v15 = HIDWORD(v13);
    if (HIDWORD(v13) != 0xFFFFFFFF && v8 != 0xFFFFFFFF && v15 <= v8 && v10 != 255 && v12 != -1 && v11 <= v12)
    {
      v16 = (v9 + 1);
      if (v16 != 0xFFFFFFFF && v16 <= v8)
      {
        v10 = v13 <= v10 ? v10 : v13;
        v17 = v7 >= v12 ? v12 : a1[4];
        if (v10 <= v17)
        {
          if (v15 <= v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v15;
          }

          if (v18 <= v8)
          {
            return v10 | (v18 << 32);
          }
        }
      }
    }
  }

  return result;
}

uint64_t TSTLayoutSpaceGetHeaderColumnsGridRange(uint64_t a1)
{
  TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns([a1 masterLayout]);
  if (!TableNumberOfHeaderColumns)
  {
    return -1;
  }

  v3 = TableNumberOfHeaderColumns - 1;
  v4 = *(a1 + 36);
  if (v4 == -1)
  {
    v6 = -1;
LABEL_19:
    v8 = -1;
    goto LABEL_20;
  }

  v5 = *(a1 + 24);
  v6 = -1;
  if (v5 == -1)
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 32);
  if (v7 == -1)
  {
    goto LABEL_19;
  }

  v8 = -1;
  if (v5 <= v7)
  {
    v9 = HIDWORD(v5);
    if (HIDWORD(v5) != 0xFFFFFFFF)
    {
      v10 = HIDWORD(v7);
      if (HIDWORD(v7) != 0xFFFFFFFF && v9 <= v10)
      {
        v7 = v3 >= v7 ? v7 : v3;
        if (v7 >= v5)
        {
          if (v4 >= v10)
          {
            v4 = v10;
          }

          if (v9 <= v4)
          {
            v8 = v7 | (v4 << 32);
            v6 = *(a1 + 24);
          }
        }
      }
    }
  }

LABEL_20:
  if (![a1 isMain] || (objc_msgSend(a1, "headerColumnsRepeat") & 1) == 0)
  {
    if ([a1 layoutSpaceType] == 5)
    {
      v13 = *(a1 + 24);
      v12 = v13 & 0xFFFFFFFF00000000;
      v13 = v13;
      return v12 | v13;
    }

    v12 = 0xFFFFFFFF00000000;
    v13 = 0xFFFFFFFFLL;
    if (v6 == -1)
    {
      return v12 | v13;
    }

    if (v8 == -1)
    {
      return v12 | v13;
    }

    if (v6 > v8)
    {
      return v12 | v13;
    }

    v13 = 0xFFFFFFFFLL;
    if (HIDWORD(v6) == 0xFFFFFFFF || HIDWORD(v8) == 0xFFFFFFFF || HIDWORD(v6) > HIDWORD(v8))
    {
      return v12 | v13;
    }

    if (TSTLayoutIsPartitionAlongLeft([a1 layout]))
    {
      v13 = 0;
      v12 = *(a1 + 28) << 32;
      return v12 | v13;
    }
  }

  v12 = 0xFFFFFFFF00000000;
  v13 = 0xFFFFFFFFLL;
  return v12 | v13;
}

uint64_t TSTLayoutSpaceGetTopLeftCornerGridRange(void *a1)
{
  TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns([a1 masterLayout]);
  TableNumberOfHeaderRows = TSTMasterLayoutGetTableNumberOfHeaderRows([a1 masterLayout]);
  if (!TableNumberOfHeaderColumns)
  {
    return -1;
  }

  v4 = -1;
  if (!TableNumberOfHeaderRows)
  {
    return v4;
  }

  HeaderColumnsGridRange = TSTLayoutSpaceGetHeaderColumnsGridRange(a1);
  v7 = v6;
  HeaderRowsGridRange = TSTLayoutSpaceGetHeaderRowsGridRange(a1);
  if (HeaderColumnsGridRange == -1 || v7 == -1)
  {
    return -1;
  }

  v4 = -1;
  if (HeaderColumnsGridRange > v7)
  {
    return v4;
  }

  if (HIDWORD(HeaderColumnsGridRange) == 0xFFFFFFFF || HIDWORD(v7) == 0xFFFFFFFF)
  {
    return -1;
  }

  v4 = -1;
  if (HIDWORD(HeaderColumnsGridRange) > HIDWORD(v7) || HeaderRowsGridRange == -1 || v9 == -1 || HeaderRowsGridRange > v9)
  {
    return v4;
  }

  if (HIDWORD(HeaderRowsGridRange) == 0xFFFFFFFF || HIDWORD(v9) == 0xFFFFFFFF)
  {
    return -1;
  }

  v4 = -1;
  if (HIDWORD(HeaderRowsGridRange) <= HIDWORD(v9))
  {
    return 0;
  }

  return v4;
}

uint64_t TSTLayoutSpaceGetBottomLeftCornerGridRange(void *a1)
{
  if (!TSTMasterLayoutGetTableNumberOfFooterRows([a1 masterLayout]) || !TSTMasterLayoutGetTableNumberOfHeaderColumns(objc_msgSend(a1, "masterLayout")))
  {
    return -1;
  }

  HeaderColumnsGridRange = TSTLayoutSpaceGetHeaderColumnsGridRange(a1);
  v4 = v3;
  FooterRowsGridRange = TSTLayoutSpaceGetFooterRowsGridRange(a1);
  v7 = 0xFFFFFFFF00000000;
  v8 = 0xFFFFFFFFLL;
  if (FooterRowsGridRange != -1 && v6 != -1 && FooterRowsGridRange <= v6)
  {
    v8 = 0xFFFFFFFFLL;
    if (HIDWORD(FooterRowsGridRange) != 0xFFFFFFFF && HIDWORD(v6) != 0xFFFFFFFF && HIDWORD(FooterRowsGridRange) <= HIDWORD(v6))
    {
      v8 = 0xFFFFFFFFLL;
      if (HeaderColumnsGridRange != -1 && v4 != -1 && HeaderColumnsGridRange <= v4)
      {
        v8 = 0xFFFFFFFFLL;
        if (HIDWORD(HeaderColumnsGridRange) != 0xFFFFFFFF && HIDWORD(v4) != 0xFFFFFFFF && HIDWORD(HeaderColumnsGridRange) <= HIDWORD(v4))
        {
          v8 = 0;
          v7 = FooterRowsGridRange & 0xFFFFFFFF00000000;
        }
      }
    }
  }

  return v7 | v8;
}

unint64_t TSTLayoutSpaceGetBodyGridRange(unint64_t *a1)
{
  v2 = a1[3];
  HeaderColumnsGridRange = TSTLayoutSpaceGetHeaderColumnsGridRange(a1);
  if (HeaderColumnsGridRange == -1 || v4 == -1 || HeaderColumnsGridRange > v4 || (HIDWORD(HeaderColumnsGridRange) <= HIDWORD(v4) ? (v5 = HIDWORD(HeaderColumnsGridRange) == 0xFFFFFFFF) : (v5 = 1), !v5 ? (v6 = HIDWORD(v4) == 0xFFFFFFFF) : (v6 = 1), v6))
  {
    v7 = v2;
  }

  else
  {
    v7 = v4 + 1;
  }

  HeaderRowsGridRange = TSTLayoutSpaceGetHeaderRowsGridRange(a1);
  if (HeaderRowsGridRange == -1 || v9 == -1 || HeaderRowsGridRange > v9 || (HIDWORD(HeaderRowsGridRange) <= HIDWORD(v9) ? (v10 = HIDWORD(HeaderRowsGridRange) == 0xFFFFFFFF) : (v10 = 1), !v10 ? (v11 = HIDWORD(v9) == 0xFFFFFFFF) : (v11 = 1), v11))
  {
    v12 = HIDWORD(v2);
  }

  else
  {
    LODWORD(v12) = HIDWORD(v9) + 1;
  }

  TSTLayoutSpaceGetFooterRowsGridRange(a1);
  return v7 | (v12 << 32);
}

unint64_t TSTLayoutSpaceExpandGridRange(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  v3 = (a1 + 24);
  if (!a1)
  {
    v3 = &TSTGridRangeEmpty;
  }

  if (a2 <= *v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 - 1;
  }

  if (v2 > HIDWORD(*v3))
  {
    LODWORD(v2) = HIDWORD(a2) - 1;
  }

  return v4 | (v2 << 32);
}

unint64_t TSTLayoutSpaceExpandRange(uint64_t a1, int a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  if (a2 == 0xFFFF)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2;
  }

  v4 = TSTLayoutSpaceExpandGridRange(a1, v2 | (v3 << 32));
  v6 = HIDWORD(v5);
  if (HIDWORD(v4) == 0xFFFFFFFF || v6 == 0xFFFFFFFF || HIDWORD(v4) > v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = ((v5 - (v4 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v5 - v4 + 1)) + 0x100000000;
  }

  if (v4 == -1 || v5 == -1 || v4 > v5)
  {
    v9 = 0;
  }

  v12 = v4 << 16;
  if (v4 == -1)
  {
    v12 = 16711680;
  }

  return v12 & 0xFFFFFFFFFFFF0000 | WORD2(v4) | (((v9 >> 16) & 0xFFFF0000 | v9) << 32);
}

uint64_t TSTLayoutSpaceContainsGridRange(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result)
  {
    v4 = *(result + 24);
    v3 = *(result + 32);
    if (v4 == -1 || v3 == -1 || v4 > v3)
    {
      return 0;
    }

    v7 = HIDWORD(v4);
    v8 = HIDWORD(v3);
    v9 = HIDWORD(v4) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
    if (v9 || v7 > v8)
    {
      return 0;
    }

    else
    {
      v11 = HIDWORD(a2);
      v12 = HIDWORD(a3);
      v14 = v12 == 0xFFFFFFFF || v11 > v12;
      v15 = HIDWORD(a2) == 0xFFFFFFFF || v14;
      if (a2 > a3)
      {
        v15 = 1;
      }

      if (a3 == -1)
      {
        v15 = 1;
      }

      if (a2 == -1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      v18 = v4 > a2 || v7 > v11;
      v19 = v16 | v18;
      v21 = a3 <= v3 && v12 <= v8;
      return v21 & ~v19;
    }
  }

  return result;
}

BOOL TSTLayoutSpaceIntersectsCellRange(_BOOL8 result, unint64_t a2)
{
  if (!result)
  {
    return result;
  }

  Range = TSTLayoutSpaceGetRange(result);
  v4 = 0;
  v5 = 16711680;
  v6 = 0xFFFFLL;
  if (Range == 0xFFFF)
  {
    goto LABEL_24;
  }

  v7 = 0;
  if ((Range & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_25;
  }

  v4 = 0;
  v5 = 16711680;
  v6 = 0xFFFFLL;
  if (!HIWORD(Range))
  {
    goto LABEL_24;
  }

  v7 = 0;
  if ((Range & 0xFFFF00000000) == 0)
  {
    goto LABEL_25;
  }

  v4 = 0;
  v5 = 16711680;
  v6 = 0xFFFFLL;
  if (a2 == 0xFFFF)
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  v7 = 0;
  if ((a2 & 0xFF0000) != 0xFF0000)
  {
    v4 = 0;
    v5 = 16711680;
    v6 = 0xFFFFLL;
    if (HIWORD(a2))
    {
      v7 = 0;
      if ((a2 & 0xFFFF00000000) != 0)
      {
        v6 = 0;
        if (BYTE2(Range) <= BYTE2(a2))
        {
          v8 = BYTE2(a2);
        }

        else
        {
          v8 = BYTE2(Range);
        }

        if (Range <= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = Range;
        }

        if ((BYTE4(Range) + BYTE2(Range) - 1) >= (BYTE4(a2) + BYTE2(a2) - 1))
        {
          v10 = (BYTE4(a2) + BYTE2(a2) - 1);
        }

        else
        {
          v10 = (BYTE4(Range) + BYTE2(Range) - 1);
        }

        v11 = (a2 + HIWORD(a2) - 1);
        if ((Range + HIWORD(Range) - 1) < v11)
        {
          v11 = (Range + HIWORD(Range) - 1);
        }

        v5 = 0;
        v4 = 0;
        v7 = 0;
        if (v9 <= v11 && v8 <= v10)
        {
          v7 = ((v11 - v9) << 48) + 0x1000000000000;
          v4 = (((v10 - v8) << 32) + 0x100000000) & 0xFFFF00000000;
          v5 = v8 << 16;
          v6 = v9;
        }
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  result = 0;
  v12 = v5 | v6 | v4 | v7;
  if (v12 != 0xFFFF && (v12 & 0xFF0000) != 0xFF0000)
  {
    v14 = (v12 & 0xFFFF00000000) == 0;
    v13 = HIWORD(v12);
    v14 = v14 || v13 == 0;
    return !v14;
  }

  return result;
}

BOOL TSTLayoutSpaceIntersectsGridRange(_BOOL8 result, unint64_t a2, unint64_t a3)
{
  if (result)
  {
    v4 = *(result + 24);
    v3 = *(result + 32);
    if (v4 == -1 || v3 == -1 || v4 > v3)
    {
      return 0;
    }

    v7 = HIDWORD(v4);
    v8 = HIDWORD(v3);
    v9 = HIDWORD(v4) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
    if (v9 || v7 > v8)
    {
      return 0;
    }

    result = 0;
    if (a2 == -1)
    {
      return result;
    }

    if (a3 == -1)
    {
      return result;
    }

    if (a2 > a3)
    {
      return result;
    }

    result = 0;
    v11 = HIDWORD(a2);
    if (HIDWORD(a2) == 0xFFFFFFFF)
    {
      return result;
    }

    v12 = HIDWORD(a3);
    if (HIDWORD(a3) == 0xFFFFFFFF || v11 > v12)
    {
      return result;
    }

    if (v4 <= a2)
    {
      LODWORD(v4) = a2;
    }

    if (v3 >= a3)
    {
      LODWORD(v3) = a3;
    }

    if (v4 > v3)
    {
      return 0;
    }

    if (v8 >= v12)
    {
      v13 = HIDWORD(a3);
    }

    else
    {
      v13 = v8;
    }

    if (v7 <= v11)
    {
      v14 = HIDWORD(a2);
    }

    else
    {
      v14 = v7;
    }

    return v14 <= v13;
  }

  return result;
}

uint64_t TSTLayoutSpaceIntersectionCellRange(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFLL;
  }

  Range = TSTLayoutSpaceGetRange(a1);
  v4 = 0;
  v5 = 16711680;
  v6 = 0xFFFFLL;
  if (Range == 0xFFFF)
  {
    goto LABEL_25;
  }

  v7 = 0;
  if ((Range & 0xFF0000) == 0xFF0000)
  {
    return v5 | v6 | v4 | v7;
  }

  v4 = 0;
  v5 = 16711680;
  v6 = 0xFFFFLL;
  if (!HIWORD(Range))
  {
    goto LABEL_25;
  }

  v7 = 0;
  if ((Range & 0xFFFF00000000) == 0)
  {
    return v5 | v6 | v4 | v7;
  }

  v4 = 0;
  v5 = 16711680;
  v6 = 0xFFFFLL;
  if (a2 == 0xFFFF)
  {
LABEL_25:
    v7 = 0;
    return v5 | v6 | v4 | v7;
  }

  v7 = 0;
  if ((a2 & 0xFF0000) != 0xFF0000)
  {
    v4 = 0;
    v5 = 16711680;
    v6 = 0xFFFFLL;
    if (HIWORD(a2))
    {
      v7 = 0;
      if ((a2 & 0xFFFF00000000) != 0)
      {
        v6 = 0;
        if (BYTE2(Range) <= BYTE2(a2))
        {
          v8 = BYTE2(a2);
        }

        else
        {
          v8 = BYTE2(Range);
        }

        if (Range <= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = Range;
        }

        if ((BYTE4(Range) + BYTE2(Range) - 1) >= (BYTE4(a2) + BYTE2(a2) - 1))
        {
          v10 = (BYTE4(a2) + BYTE2(a2) - 1);
        }

        else
        {
          v10 = (BYTE4(Range) + BYTE2(Range) - 1);
        }

        v11 = (a2 + HIWORD(a2) - 1);
        if ((Range + HIWORD(Range) - 1) < v11)
        {
          v11 = (Range + HIWORD(Range) - 1);
        }

        v5 = 0;
        v4 = 0;
        v7 = 0;
        if (v9 <= v11 && v8 <= v10)
        {
          v7 = ((v11 - v9) << 48) + 0x1000000000000;
          v4 = (((v10 - v8) << 32) + 0x100000000) & 0xFFFF00000000;
          v5 = v8 << 16;
          v6 = v9;
        }
      }

      return v5 | v6 | v4 | v7;
    }

    goto LABEL_25;
  }

  return v5 | v6 | v4 | v7;
}

uint64_t TSTLayoutSpaceIntersectionGridRange(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = v4 == -1 || v3 == -1;
  if (v5 || v4 > v3)
  {
    return -1;
  }

  v7 = HIDWORD(v4);
  v8 = HIDWORD(v3);
  v9 = HIDWORD(v4) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
  if (v9 || v7 > v8)
  {
    return -1;
  }

  result = -1;
  if (a2 != -1 && a3 != -1 && a2 <= a3)
  {
    v12 = HIDWORD(a2);
    if (HIDWORD(a2) != 0xFFFFFFFF)
    {
      v13 = HIDWORD(a3);
      if (HIDWORD(a3) != 0xFFFFFFFF && v12 <= v13)
      {
        v4 = v4 <= a2 ? a2 : v4;
        v14 = v3 >= a3 ? a3 : v3;
        if (v4 <= v14)
        {
          if (v8 >= v13)
          {
            v8 = HIDWORD(a3);
          }

          if (v7 <= v12)
          {
            v15 = HIDWORD(a2);
          }

          else
          {
            v15 = v7;
          }

          if (v15 <= v8)
          {
            return v4 | (v15 << 32);
          }
        }
      }
    }
  }

  return result;
}

BOOL TSTLayoutSpaceIntersectsRowGridRange(_BOOL8 result, unint64_t a2, unint64_t a3)
{
  if (result)
  {
    v4 = *(result + 24);
    v3 = *(result + 32);
    if (v4 == -1 || v3 == -1 || v4 > v3)
    {
      return 0;
    }

    v7 = HIDWORD(v4);
    v8 = (v3 + 0x100000000) >> 32;
    v9 = HIDWORD(v4) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
    if (v9 || v7 > v8)
    {
      return 0;
    }

    result = 0;
    if (a2 == -1)
    {
      return result;
    }

    if (a3 == -1)
    {
      return result;
    }

    if (a2 > a3)
    {
      return result;
    }

    result = 0;
    v11 = HIDWORD(a2);
    if (HIDWORD(a2) == 0xFFFFFFFF)
    {
      return result;
    }

    v12 = HIDWORD(a3);
    if (HIDWORD(a3) == 0xFFFFFFFF || v11 > v12)
    {
      return result;
    }

    if (v4 <= a2)
    {
      LODWORD(v4) = a2;
    }

    if (v3 >= a3)
    {
      LODWORD(v3) = a3;
    }

    if (v4 > v3)
    {
      return 0;
    }

    if (v8 >= v12)
    {
      v13 = HIDWORD(a3);
    }

    else
    {
      v13 = v8;
    }

    if (v7 <= v11)
    {
      v14 = HIDWORD(a2);
    }

    else
    {
      v14 = v7;
    }

    return v14 <= v13;
  }

  return result;
}

BOOL TSTLayoutSpaceIntersectsColumnGridRange(_BOOL8 result, unint64_t a2, unint64_t a3)
{
  if (result)
  {
    v3 = *(result + 24);
    v4 = *(result + 32);
    v5 = v4 + 1;
    if (v3 == -1 || v4 == -2 || v5 < v3)
    {
      return 0;
    }

    v8 = HIDWORD(v3);
    v9 = HIDWORD(v4);
    v10 = HIDWORD(v3) == 0xFFFFFFFF || v9 == 0xFFFFFFFF;
    if (v10 || v8 > v9)
    {
      return 0;
    }

    result = 0;
    if (a2 == -1)
    {
      return result;
    }

    if (a3 == -1)
    {
      return result;
    }

    if (a2 > a3)
    {
      return result;
    }

    result = 0;
    v12 = HIDWORD(a2);
    if (HIDWORD(a2) == 0xFFFFFFFF)
    {
      return result;
    }

    v13 = HIDWORD(a3);
    if (HIDWORD(a3) == 0xFFFFFFFF || v12 > v13)
    {
      return result;
    }

    if (v3 <= a2)
    {
      LODWORD(v3) = a2;
    }

    if (v5 >= a3)
    {
      v5 = a3;
    }

    if (v3 > v5)
    {
      return 0;
    }

    if (v9 >= v13)
    {
      v14 = HIDWORD(a3);
    }

    else
    {
      v14 = v9;
    }

    if (v8 <= v12)
    {
      v8 = HIDWORD(a2);
    }

    return v8 <= v14;
  }

  return result;
}

uint64_t TSTLayoutSpaceIntersectionRowGridRange(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = v4 == -1 || v3 == -1;
  if (v5 || v4 > v3)
  {
    return -1;
  }

  v7 = HIDWORD(v4);
  v8 = (v3 + 0x100000000) >> 32;
  v9 = HIDWORD(v4) == 0xFFFFFFFF || v8 == 0xFFFFFFFF;
  if (v9 || v7 > v8)
  {
    return -1;
  }

  result = -1;
  if (a2 != -1 && a3 != -1 && a2 <= a3)
  {
    v12 = HIDWORD(a2);
    if (HIDWORD(a2) != 0xFFFFFFFF)
    {
      v13 = HIDWORD(a3);
      if (HIDWORD(a3) != 0xFFFFFFFF && v12 <= v13)
      {
        v4 = v4 <= a2 ? a2 : v4;
        v14 = v3 >= a3 ? a3 : v3;
        if (v4 <= v14)
        {
          if (v8 >= v13)
          {
            v8 = HIDWORD(a3);
          }

          if (v7 <= v12)
          {
            v15 = HIDWORD(a2);
          }

          else
          {
            v15 = v7;
          }

          if (v15 <= v8)
          {
            return v4 | (v15 << 32);
          }
        }
      }
    }
  }

  return result;
}

uint64_t TSTLayoutSpaceIntersectionColumnGridRange(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = v3 + 1;
  v6 = v4 == -1 || v3 == -2;
  if (v6 || v5 < v4)
  {
    return -1;
  }

  v8 = HIDWORD(v4);
  v9 = HIDWORD(v3);
  v10 = HIDWORD(v4) == 0xFFFFFFFF || v9 == 0xFFFFFFFF;
  if (v10 || v8 > v9)
  {
    return -1;
  }

  result = -1;
  if (a2 != -1 && a3 != -1 && a2 <= a3)
  {
    v13 = HIDWORD(a2);
    if (HIDWORD(a2) != 0xFFFFFFFF)
    {
      v14 = HIDWORD(a3);
      if (HIDWORD(a3) != 0xFFFFFFFF && v13 <= v14)
      {
        v4 = v4 <= a2 ? a2 : v4;
        v15 = v5 >= a3 ? a3 : v3 + 1;
        if (v4 <= v15)
        {
          if (v9 >= v14)
          {
            v16 = HIDWORD(a3);
          }

          else
          {
            v16 = v9;
          }

          if (v8 <= v13)
          {
            v8 = HIDWORD(a2);
          }

          if (v8 <= v16)
          {
            return v4 | (v8 << 32);
          }
        }
      }
    }
  }

  return result;
}

uint64_t TSTLayoutSpaceGetGridRangeForLayoutRect(TSTLayoutSpace *a1, double a2, double a3, double a4, double a5)
{
  TableRectForLayoutRect = TSTLayoutSpaceGetTableRectForLayoutRect(a1, *&a2);

  return TSTLayoutSpaceGetGridRangeForTableRect(a1, *&TableRectForLayoutRect);
}

double TSTLayoutSpaceGetTableRectForLayoutRect(TSTLayoutSpace *a1, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  v5.n128_f64[0] = TSTLayoutSpaceGetTablePointForLayoutPoint(a1, a2.origin);
  v7.n128_f64[0] = width;
  v8.n128_f64[0] = height;

  return TSDRectWithOriginAndSize(v4, v5, v6, v7, v8);
}

uint64_t TSTLayoutSpaceGetGridRangeForTableRect(TSTLayoutSpace *a1, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v33.origin.x = TSTLayoutSpaceGetFrame(a1);
  v34.origin.x = TSTLayoutSpaceGetTableRectForLayoutRect(a1, v33);
  v7 = v34.origin.x;
  v8 = v34.origin.y;
  v9 = v34.size.width;
  v10 = v34.size.height;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = v7;
  v35.origin.y = v8;
  v35.size.width = v9;
  v35.size.height = v10;
  MaxX = CGRectGetMaxX(v35);
  v36.origin.x = v7;
  v36.origin.y = v8;
  v36.size.width = v9;
  v36.size.height = v10;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = v7;
  v37.origin.y = v8;
  v37.size.width = v9;
  v37.size.height = v10;
  MaxY = CGRectGetMaxY(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v12 = CGRectGetMinX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v13 = CGRectGetMaxX(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v14 = CGRectGetMinY(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v15 = CGRectGetMaxY(v41);
  if (v12 >= MinX)
  {
    v16 = v12;
  }

  else
  {
    v16 = MinX;
  }

  if (MaxX >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = MaxX;
  }

  if (v14 >= MinY)
  {
    v18 = v14;
  }

  else
  {
    v18 = MinY;
  }

  if (MaxY >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = MaxY;
  }

  if (v16 > v17)
  {
    LODWORD(GridColumnForTableCoordinate) = -1;
LABEL_24:
    LODWORD(v21) = -1;
    goto LABEL_25;
  }

  GridColumnForTableCoordinate = TSTLayoutSpaceGetGridColumnForTableCoordinate(a1, v16);
  if (GridColumnForTableCoordinate == -1)
  {
    goto LABEL_24;
  }

  v21 = TSTLayoutSpaceGetGridColumnForTableCoordinate(a1, v17);
  if (v21 == -1 || ![(TSTLayoutSpace *)a1 layoutDirectionIsLeftToRight])
  {
    if (![(TSTLayoutSpace *)a1 layoutDirectionIsLeftToRight]&& TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, GridColumnForTableCoordinate) + 0.00999999978 > v16)
    {
      p_mGridRange = &a1->mGridRange;
      if (!a1)
      {
        p_mGridRange = &TSTGridRangeEmpty;
      }

      if (GridColumnForTableCoordinate >= p_mGridRange->topLeft.column)
      {
        LODWORD(GridColumnForTableCoordinate) = GridColumnForTableCoordinate + 1;
      }

      else
      {
        LODWORD(GridColumnForTableCoordinate) = -1;
      }
    }
  }

  else if (TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, v21) + 0.00999999978 < v17)
  {
    v22 = &a1->mGridRange;
    if (!a1)
    {
      v22 = &TSTGridRangeEmpty;
    }

    if (v21 <= v22->bottomRight.column)
    {
      LODWORD(v21) = v21 + 1;
    }

    else
    {
      LODWORD(v21) = -1;
    }
  }

LABEL_25:
  if (v18 > v19 || (v23 = TSTLayoutSpaceGetGridRowForTableCoordinate(a1, v18), v23 == -1))
  {
    v24 = 0xFFFFFFFFLL;
  }

  else
  {
    v24 = v23;
    GridRowForTableCoordinate = TSTLayoutSpaceGetGridRowForTableCoordinate(a1, v19);
    if (GridRowForTableCoordinate != -1)
    {
      TSTLayoutSpaceGetTableCoordinateForGridRow(a1, GridRowForTableCoordinate);
    }
  }

  if ([(TSTLayoutSpace *)a1 layoutDirectionIsLeftToRight])
  {
    v27 = GridColumnForTableCoordinate;
  }

  else
  {
    v27 = v21;
  }

  return v27 | (v24 << 32);
}

unint64_t TSTLayoutSpaceGetRangeForLayoutRect(TSTLayoutSpace *a1, double a2, double a3, double a4, double a5)
{
  v23.origin.x = TSTLayoutSpaceGetTableRectForLayoutRect(a1, *&a2);
  GridRangeForTableRect = TSTLayoutSpaceGetGridRangeForTableRect(a1, v23);
  v8 = 0;
  v10 = GridRangeForTableRect == -1 || v7 == -1 || GridRangeForTableRect > v7;
  v11 = HIDWORD(GridRangeForTableRect);
  v12 = HIDWORD(v7);
  v15 = v10 || v11 == 0xFFFFFFFF || v12 == 0xFFFFFFFF || v11 > v12;
  if (v15)
  {
    v16 = v7;
  }

  else
  {
    v16 = v7 - 1;
  }

  if (v15)
  {
    v17 = v7;
  }

  else
  {
    v17 = (v7 & 0xFFFFFFFF00000000 | (v7 - 1)) - 0x100000000;
  }

  if (GridRangeForTableRect != -1 && v16 != -1 && v16 >= GridRangeForTableRect)
  {
    if (v11 == 0xFFFFFFFF)
    {
      v8 = 0;
    }

    else
    {
      v18 = HIDWORD(v17);
      v19 = ((v17 - (GridRangeForTableRect & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v17 - GridRangeForTableRect + 1)) + 0x100000000;
      if (v11 <= v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18 == 0xFFFFFFFF)
      {
        v8 = 0;
      }

      else
      {
        v8 = v20;
      }
    }
  }

  v21 = GridRangeForTableRect << 16;
  if (GridRangeForTableRect == -1)
  {
    v21 = 16711680;
  }

  return v21 & 0xFFFFFFFFFFFF0000 | WORD2(GridRangeForTableRect) | (((v8 >> 16) & 0xFFFF0000 | v8) << 32);
}

unint64_t TSTLayoutSpaceGetNearestRangeForLayoutRect(TSTLayoutSpace *a1, double a2, double a3, double a4, double a5)
{
  RangeForLayoutRect = TSTLayoutSpaceGetRangeForLayoutRect(a1, a2, a3, a4, a5);
  v11 = RangeForLayoutRect;
  if (RangeForLayoutRect == 0xFFFF || (RangeForLayoutRect & 0xFF0000) == 0xFF0000 || !HIWORD(RangeForLayoutRect) || (RangeForLayoutRect & 0xFFFF00000000) == 0)
  {
    Frame = TSTLayoutSpaceGetFrame(a1);
    if (!TSDIntersectsRect(a2, a3, a4, a5, Frame, v13, v14, v15))
    {
      Range = TSTLayoutSpaceGetRange(a1);
      FrameForRange = TSTLayoutSpaceGetFrameForRange(a1, Range);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = TSDClampPointInRect();
      v42 = v25;
      v43 = v24;
      v44.origin.x = a2;
      v44.origin.y = a3;
      v44.size.width = a4;
      v44.size.height = a5;
      CGRectGetMaxX(v44);
      v45.size.width = a4;
      rect_8.origin.x = a2;
      rect_8.origin.y = a3;
      v45.origin.x = a2;
      v45.origin.y = a3;
      rect_8.size.width = a4;
      rect_8.size.height = a5;
      v45.size.height = a5;
      CGRectGetMaxY(v45);
      v26 = TSDClampPointInRect();
      v27 = TSDRectWithPoints(v43, v42, v26);
      v31 = v27;
      v32 = v28;
      v33 = v29;
      v34 = v30;
      if (v30 == 0.0)
      {
        MaxY = CGRectGetMaxY(*&v27);
        v46.origin.x = FrameForRange;
        v46.origin.y = v19;
        v46.size.width = v21;
        v46.size.height = v23;
        if (MaxY == CGRectGetMaxY(v46))
        {
          v32 = v32 + -1.0;
        }

        v34 = 1.0;
      }

      if (v33 == 0.0)
      {
        v47.origin.x = v31;
        v47.origin.y = v32;
        v47.size.width = v33;
        v47.size.height = v34;
        MaxX = CGRectGetMaxX(v47);
        v48.origin.x = FrameForRange;
        v48.origin.y = v19;
        v48.size.width = v21;
        v48.size.height = v23;
        if (MaxX == CGRectGetMaxX(v48))
        {
          v31 = v31 + -1.0;
        }

        v33 = 1.0;
      }

      v37 = TSTLayoutSpaceGetRangeForLayoutRect(a1, v31, v32, v33, v34);
      v11 = v37;
      if (v37 == 0xFFFF || (v37 & 0xFF0000) == 0xFF0000 || !HIWORD(v37) || (v37 & 0xFFFF00000000) == 0)
      {
        v38 = [MEMORY[0x277D6C290] currentHandler];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTCellRange TSTLayoutSpaceGetNearestRangeForLayoutRect(TSTLayoutSpace *, CGRect)"}];
        [v38 handleFailureInFunction:v39 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 794, @"Failed to get nearest cell range from space %@ for layout rect %@", a1, NSStringFromCGRect(rect_8)}];
      }
    }
  }

  return v11;
}

double TSTLayoutSpaceGetFrame(uint64_t a1)
{
  v2 = (a1 + 304);
  v3 = (a1 + 312);
  v4 = (a1 + 320);
  v5 = (a1 + 328);
  if (CGRectIsEmpty(*(a1 + 304)))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = MEMORY[0x277CBF3A0];
    v10 = v6 == -1 || v7 == -1 || v6 > v7;
    if (!v10 && HIDWORD(v6) != 0xFFFFFFFF && HIDWORD(v7) != 0xFFFFFFFF && HIDWORD(v6) <= HIDWORD(v7))
    {
      FrameForGridRange = TSTLayoutSpaceGetFrameForGridRange(a1, v6, v7);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      if ([a1 isMain] && objc_msgSend(a1, "headerRowsRepeat") && objc_msgSend(objc_msgSend(a1, "bundle"), "repeatHeaderRowsSpace"))
      {
        TSTLayoutSpaceGetFrame();
        v17 = v17 + v13 - v18;
        v13 = v18;
      }

      if ([a1 isMain] && objc_msgSend(a1, "headerColumnsRepeat") && objc_msgSend(objc_msgSend(a1, "bundle"), "repeatHeaderColumnsSpace"))
      {
        Frame = TSTLayoutSpaceGetFrame();
        v15 = v15 + FrameForGridRange - Frame;
        FrameForGridRange = Frame;
      }

      *v2 = FrameForGridRange;
      *v3 = v13;
      v8 = v2;
      *v4 = v15;
      *v5 = v17;
    }
  }

  else
  {
    v8 = v2;
  }

  return *v8;
}

double TSTLayoutSpaceGetFrameForRange(TSTLayoutSpace *a1, unint64_t a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  v3 = WORD2(a2) + v2 - 1;
  if (!WORD2(a2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v6 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutSpaceGetFrameForGridRange(a1, v5, v6 | v3);
}

unint64_t TSTLayoutSpaceGetRangeIntersectingLayoutRect(TSTLayoutSpace *a1, double a2, double a3, double a4, double a5)
{
  TableRectForLayoutRect = TSTLayoutSpaceGetTableRectForLayoutRect(a1, *&a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v41.origin.x = TSTLayoutSpaceGetFrame(a1);
  v46.origin.x = TSTLayoutSpaceGetTableRectForLayoutRect(a1, v41);
  v46.origin.y = v13;
  v46.size.width = v14;
  v46.size.height = v15;
  v42.origin.x = TableRectForLayoutRect;
  v42.origin.y = v8;
  v42.size.width = v10;
  v42.size.height = v12;
  v43 = CGRectIntersection(v42, v46);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  GridRangeForTableRect = TSTLayoutSpaceGetGridRangeForTableRect(a1, v43);
  v22 = v20;
  p_mGridRange = &a1->mGridRange;
  if (!a1)
  {
    p_mGridRange = &TSTGridRangeEmpty;
  }

  topLeft = p_mGridRange->topLeft;
  bottomRight = p_mGridRange->bottomRight;
  v27 = *&p_mGridRange->topLeft == -1 || bottomRight == -1 || topLeft.column > bottomRight;
  v28 = HIDWORD(*&topLeft);
  v29 = HIDWORD(bottomRight);
  v32 = v27 || v28 == 0xFFFFFFFF || v29 == 0xFFFFFFFF || v28 > v29;
  v33 = bottomRight + 1;
  if (v32)
  {
    v33 = bottomRight;
    v34 = bottomRight;
  }

  else
  {
    v34 = (bottomRight & 0xFFFFFFFF00000000 | (bottomRight + 1)) + 0x100000000;
  }

  if (v20 != -1 && v33 > v20)
  {
    TableCoordinateForGridColumn = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, v20);
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    if (TableCoordinateForGridColumn == CGRectGetMaxX(v44))
    {
      v22 = (v22 + 1) | v22 & 0xFFFFFFFF00000000;
    }
  }

  v36 = HIDWORD(v22);
  if (HIDWORD(v22) != 0xFFFFFFFF && v36 < HIDWORD(v34))
  {
    TableCoordinateForGridRow = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, v36);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    if (TableCoordinateForGridRow == CGRectGetMaxY(v45))
    {
      v22 += 0x100000000;
    }
  }

  if (GridRangeForTableRect != -1 && v22 != -1 && GridRangeForTableRect <= v22 && HIDWORD(GridRangeForTableRect) != 0xFFFFFFFF && HIDWORD(v22) != 0xFFFFFFFF && HIDWORD(GridRangeForTableRect) <= HIDWORD(v22))
  {
    v22 = (v22 & 0xFFFFFFFF00000000 | (v22 - 1)) - 0x100000000;
  }

  v38 = 0;
  if (GridRangeForTableRect != -1 && v22 != -1 && GridRangeForTableRect <= v22)
  {
    v38 = 0;
    if (HIDWORD(GridRangeForTableRect) != 0xFFFFFFFF && HIDWORD(v22) != 0xFFFFFFFF && HIDWORD(GridRangeForTableRect) <= HIDWORD(v22))
    {
      v38 = ((v22 - (GridRangeForTableRect & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v22 - GridRangeForTableRect + 1)) + 0x100000000;
    }
  }

  v39 = GridRangeForTableRect << 16;
  if (GridRangeForTableRect == -1)
  {
    v39 = 16711680;
  }

  return v39 & 0xFFFFFFFFFFFF0000 | WORD2(GridRangeForTableRect) | (((v38 >> 16) & 0xFFFF0000 | v38) << 32);
}

double TSTLayoutSpaceGetTableCoordinateForGridColumn(TSTLayoutSpace *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTLayoutSpaceGetTableCoordinateForGridColumn(TSTLayoutSpace *, TSTGridColumn)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3165, @"space should be non-NULL"}];
  }

  if (a2 == -1 || (a1->mGridRange.topLeft.column <= a2 ? (v6 = a1->mGridRange.bottomRight.column + 1 >= a2) : (v6 = 0), !v6))
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTLayoutSpaceGetTableCoordinateForGridColumn(TSTLayoutSpace *, TSTGridColumn)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"];
    topLeft = a1->mGridRange.topLeft;
    bottomRight = a1->mGridRange.bottomRight;
    v12 = MEMORY[0x277CCACA8];
    v13 = HIDWORD(*&topLeft);
    if (topLeft.column == -1 && v13 == 0xFFFFFFFF)
    {
      v14 = @"{invalid, invalid}";
    }

    else
    {
      if (topLeft.column == -1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v13, v24];
      }

      else if (v13 == 0xFFFFFFFF)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", *&a1->mGridRange.topLeft, v24];
      }

      else
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", *&a1->mGridRange.topLeft, HIDWORD(*&topLeft)];
      }

      v14 = v15;
    }

    v16 = HIDWORD(*&bottomRight);
    if (bottomRight.column == -1 && v16 == 0xFFFFFFFF)
    {
      v17 = @"{invalid, invalid}";
    }

    else if (bottomRight.column == -1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v16, v24];
    }

    else if (v16 == 0xFFFFFFFF)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", bottomRight, v24];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", bottomRight, HIDWORD(*&bottomRight)];
    }

    [v7 handleFailureInFunction:v8 file:v9 lineNumber:3167 description:{@"column %u not in gridRange %@", a2, objc_msgSend(v12, "stringWithFormat:", @"{%@->%@}", v14, v17)}];
  }

  if (!a1->mBodyColumnCoordinates && !a1->mHeaderRowColumnCoordinates)
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTLayoutSpaceGetTableCoordinateForGridColumn(TSTLayoutSpace *, TSTGridColumn)"}];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3169, @"Body column coordinates and header row column coordinates have not been filled."}];
  }

  mHeaderRowColumnCoordinates = a1->mHeaderRowColumnCoordinates;
  if (mHeaderRowColumnCoordinates && TSTCoordinateArrayContainsIndex(mHeaderRowColumnCoordinates, a2))
  {
    p_mHeaderRowColumnCoordinates = &a1->mHeaderRowColumnCoordinates;
  }

  else
  {
    p_mHeaderRowColumnCoordinates = &a1->mBodyColumnCoordinates;
  }

  v22 = *p_mHeaderRowColumnCoordinates;

  return TSTCoordinateArrayGetCoordinate(v22, a2);
}

double TSTLayoutSpaceGetTableCoordinateForGridRow(TSTLayoutSpace *a1, uint64_t a2)
{
  if (a2 == -1 || a1->mGridRange.topLeft.row > a2 || a1->mGridRange.bottomRight.row + 1 < a2)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTLayoutSpaceGetTableCoordinateForGridRow(TSTLayoutSpace *, TSTGridRow)"}];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"];
    topLeft = a1->mGridRange.topLeft;
    bottomRight = a1->mGridRange.bottomRight;
    v9 = MEMORY[0x277CCACA8];
    v10 = HIDWORD(*&topLeft);
    if (topLeft.column == -1 && v10 == 0xFFFFFFFF)
    {
      v11 = @"{invalid, invalid}";
    }

    else
    {
      if (topLeft.column == -1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v10, v21];
      }

      else if (v10 == 0xFFFFFFFF)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", *&a1->mGridRange.topLeft, v21];
      }

      else
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", *&a1->mGridRange.topLeft, HIDWORD(*&topLeft)];
      }

      v11 = v12;
    }

    v13 = HIDWORD(*&bottomRight);
    if (bottomRight.column == -1 && v13 == 0xFFFFFFFF)
    {
      v14 = @"{invalid, invalid}";
    }

    else if (bottomRight.column == -1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v13, v21];
    }

    else if (v13 == 0xFFFFFFFF)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", bottomRight, v21];
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", bottomRight, HIDWORD(*&bottomRight)];
    }

    [v4 handleFailureInFunction:v5 file:v6 lineNumber:3209 description:{@"row %u not in gridRange %@", a2, objc_msgSend(v9, "stringWithFormat:", @"{%@->%@}", v11, v14)}];
  }

  if (!a1->mBodyRowCoordinates && !a1->mHeaderColumnRowCoordinates)
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTLayoutSpaceGetTableCoordinateForGridRow(TSTLayoutSpace *, TSTGridRow)"}];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3211, @"Body row coordinates and header column row coordinates have not been filled."}];
  }

  mHeaderColumnRowCoordinates = a1->mHeaderColumnRowCoordinates;
  if (mHeaderColumnRowCoordinates && TSTCoordinateArrayContainsIndex(mHeaderColumnRowCoordinates, a2))
  {
    p_mHeaderColumnRowCoordinates = &a1->mHeaderColumnRowCoordinates;
  }

  else
  {
    p_mHeaderColumnRowCoordinates = &a1->mBodyRowCoordinates;
  }

  v19 = *p_mHeaderColumnRowCoordinates;

  return TSTCoordinateArrayGetCoordinate(v19, a2);
}

double TSTLayoutSpaceGetLayoutCoordinateForGridColumn(TSTLayoutSpace *a1, uint64_t a2)
{
  TableCoordinateForGridColumn = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, a2);
  v4 = 0;

  return TSTLayoutSpaceGetLayoutPointForTablePoint(a1, *&TableCoordinateForGridColumn);
}

double TSTLayoutSpaceGetLayoutPointForTablePoint(TSTLayoutSpace *a1, CGPoint a2)
{
  y = a2.y;
  x = a2.x;
  GridColumnForTableCoordinate = TSTLayoutSpaceGetGridColumnForTableCoordinate(a1, a2.x);
  GridRowForTableCoordinate = TSTLayoutSpaceGetGridRowForTableCoordinate(a1, y);
  return x + TSTLayoutSpaceGetLayoutOffsetForGridPoint(a1, GridColumnForTableCoordinate | (GridRowForTableCoordinate << 32));
}

double TSTLayoutSpaceGetLayoutCoordinateForGridRow(TSTLayoutSpace *a1, uint64_t a2)
{
  v5.y = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, a2);
  v5.x = 0.0;
  TSTLayoutSpaceGetLayoutPointForTablePoint(a1, v5);
  return v3;
}

double TSTLayoutSpaceGetFrameForGridRange(TSTLayoutSpace *a1, unint64_t a2, uint64_t a3)
{
  TableCoordinateForGridColumn = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, a2);
  TableCoordinateForGridRow = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, HIDWORD(a2));
  v8 = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, (a3 + 1));
  v9 = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, (HIDWORD(a3) + 1));
  v10 = [(TSTLayoutSpace *)a1 layoutDirectionIsLeftToRight];
  if (v10)
  {
    v11 = TableCoordinateForGridColumn;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = TableCoordinateForGridColumn;
  }

  v13 = v12 - v11;
  v14 = TableCoordinateForGridRow;
  v16.n128_f64[0] = TSTLayoutSpaceGetLayoutPointForTablePoint(a1, *&v11);
  v19.n128_f64[0] = v13;

  v18.n128_f64[0] = v9 - TableCoordinateForGridRow;
  return TSDRectWithOriginAndSize(v15, v16, v17, v19, v18);
}

double TSTLayoutSpaceGetContentFrameForGridRange(TSTLayoutSpace *a1, unint64_t a2, unint64_t a3)
{
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  TSTLayoutSpaceGetFrameSpecForGridRange(a1, a2, a3, 0, 0, v4);
  return *v4 + *&v5 * 0.5;
}

double TSTLayoutSpaceGetFrameSpecForGridRange@<D0>(TSTLayoutSpace *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, double *a5@<X4>, double *a6@<X8>)
{
  v12 = [(TSTLayoutSpace *)a1 masterLayout];
  v13 = v12;
  if (a5)
  {
    v14 = *a5;
    v15 = *a5;
    v16 = *a5;
    v17 = *a5;
  }

  else
  {
    v17 = TSTMasterLayoutStrokeHeightOfGridRow(v12, HIDWORD(a2), a2, a3 + 1);
    if (a4 == 1)
    {
      v15 = TSTMasterLayoutStrokeWidthOfGridColumn(v13, a2, HIDWORD(a2), HIDWORD(a3) + 1);
      v16 = v17;
    }

    else
    {
      v16 = TSTMasterLayoutStrokeHeightOfGridRow(v13, HIDWORD(a3) + 1, a2, a3 + 1);
      v18 = TSTMasterLayoutStrokeWidthOfGridColumn(v13, a2, HIDWORD(a2), HIDWORD(a3) + 1);
      v15 = v18;
      if (a4 == 2)
      {
        v14 = v18;
        goto LABEL_11;
      }
    }

    v14 = v15;
    v15 = TSTMasterLayoutStrokeWidthOfGridColumn(v13, a3 + 1, HIDWORD(a2), HIDWORD(a3) + 1);
  }

  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v19 = TSTLayoutSpaceIntersectionRowGridRange(a1, a2, a3);
    }

    else
    {
      v19 = TSTLayoutSpaceIntersectionGridRange(a1, a2, a3);
    }

    v21 = v19;
    v23 = v20;
    TableCoordinateForGridColumn = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, v19);
    v24 = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, (v23 + 1));
    goto LABEL_14;
  }

LABEL_11:
  v21 = TSTLayoutSpaceIntersectionColumnGridRange(a1, a2, a3);
  v23 = v22;
  v24 = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, v21);
  TableCoordinateForGridColumn = v24;
LABEL_14:
  v26 = v24;
  if ([(TSTLayoutSpace *)a1 layoutDirectionIsLeftToRight])
  {
    goto LABEL_34;
  }

  p_mGridRange = &a1->mGridRange;
  if (!a1)
  {
    p_mGridRange = &TSTGridRangeEmpty;
  }

  topLeft = p_mGridRange->topLeft;
  bottomRight = p_mGridRange->bottomRight;
  v30 = topLeft.column == -1 || bottomRight.column == -1;
  v31 = v30 || topLeft.column > bottomRight.column;
  v32 = HIDWORD(*&topLeft);
  v33 = HIDWORD(*&bottomRight);
  v34 = v31 || v32 == 0xFFFFFFFF;
  v35 = v34 || v33 == 0xFFFFFFFF;
  if (v35 || v32 > v33)
  {
LABEL_34:
    v52 = v14;
    v14 = v15;
    v53 = TableCoordinateForGridColumn;
    TableCoordinateForGridColumn = v26;
  }

  else
  {
    v52 = v15;
    v53 = v26;
  }

  v37 = HIDWORD(v21);
  TableCoordinateForGridRow = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, HIDWORD(v21));
  v39 = TableCoordinateForGridRow;
  if (a4 != 1)
  {
    v39 = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, (HIDWORD(v23) + 1));
  }

  if (v21 > a2)
  {
    v40 = a2;
    do
    {
      v53 = v53 - TSTMasterLayoutWidthOfColumn(v13, v40++, 0, 0, 1);
    }

    while (v21 != v40);
  }

  v41 = v23 + 1;
  if (v23 + 1 < (a3 + 1))
  {
    v42 = a3 - v23;
    do
    {
      TableCoordinateForGridColumn = TableCoordinateForGridColumn + TSTMasterLayoutWidthOfColumn(v13, v41++, 0, 0, 1);
      --v42;
    }

    while (v42);
  }

  if (v37 > HIDWORD(a2))
  {
    v43 = HIDWORD(a2);
    do
    {
      TableCoordinateForGridRow = TableCoordinateForGridRow - TSTMasterLayoutHeightOfRow(v13, v43, 0, 0, 1, 1);
      LODWORD(v43) = v43 + 1;
    }

    while (v37 != v43);
  }

  v44 = HIDWORD(v23) + 1;
  if (HIDWORD(v23) + 1 < (HIDWORD(a3) + 1))
  {
    v45 = HIDWORD(a3) - HIDWORD(v23);
    do
    {
      v39 = v39 + TSTMasterLayoutHeightOfRow(v13, v44++, 0, 0, 1, 1);
      --v45;
    }

    while (v45);
  }

  LayoutOffsetForGridPoint = TSTLayoutSpaceGetLayoutOffsetForGridPoint(a1, a2);
  v47 = v53 + LayoutOffsetForGridPoint;
  v49 = TableCoordinateForGridRow + v48;
  result = TableCoordinateForGridColumn + LayoutOffsetForGridPoint;
  *a6 = v47;
  a6[1] = TableCoordinateForGridRow + v48;
  v51 = v39 + v48;
  a6[2] = v47;
  a6[3] = v51;
  a6[4] = result;
  a6[5] = v49;
  a6[6] = result;
  a6[7] = v51;
  a6[8] = v17;
  a6[9] = v16;
  a6[10] = v52;
  a6[11] = v14;
  return result;
}

double TSTLayoutSpaceGetStrokeFrameForGridRange(TSTLayoutSpace *a1, unint64_t a2, unint64_t a3)
{
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  TSTLayoutSpaceGetFrameSpecForGridRange(a1, a2, a3, 0, 0, v4);
  return *v4 - *&v5 * 0.5;
}

double TSTLayoutSpaceGetContentFrameForRange(TSTLayoutSpace *a1, unint64_t a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  v3 = WORD2(a2) + v2 - 1;
  if (!WORD2(a2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v6 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutSpaceGetContentFrameForGridRange(a1, v5, v6 | v3);
}

double TSTLayoutSpaceGetStrokeFrameForRange(TSTLayoutSpace *a1, unint64_t a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  v3 = WORD2(a2) + v2 - 1;
  if (!WORD2(a2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v6 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutSpaceGetStrokeFrameForGridRange(a1, v5, v6 | v3);
}

double TSTLayoutSpaceGetHeaderColumnsWidth(TSTLayoutSpace *a1)
{
  HeaderColumnsGridRange = TSTLayoutSpaceGetHeaderColumnsGridRange(a1);
  if (HeaderColumnsGridRange == -1 || v3 == -1 || HeaderColumnsGridRange > v3 || HIDWORD(HeaderColumnsGridRange) == 0xFFFFFFFF || HIDWORD(v3) == 0xFFFFFFFF || HIDWORD(HeaderColumnsGridRange) > HIDWORD(v3))
  {
    return 0.0;
  }

  v4 = (v3 + 1);

  return TSTLayoutSpaceGetRawTableCoordinateForGridColumn(a1, v4);
}

double TSTLayoutSpaceGetRawTableCoordinateForGridColumn(TSTLayoutSpace *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTLayoutSpaceGetRawTableCoordinateForGridColumn(TSTLayoutSpace *, TSTGridColumn)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3186, @"space should be non-NULL"}];
  }

  if (a2 == -1 || (a1->mGridRange.topLeft.column <= a2 ? (v6 = a1->mGridRange.bottomRight.column + 1 >= a2) : (v6 = 0), !v6))
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTLayoutSpaceGetRawTableCoordinateForGridColumn(TSTLayoutSpace *, TSTGridColumn)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"];
    topLeft = a1->mGridRange.topLeft;
    bottomRight = a1->mGridRange.bottomRight;
    v12 = MEMORY[0x277CCACA8];
    v13 = HIDWORD(*&topLeft);
    if (topLeft.column == -1 && v13 == 0xFFFFFFFF)
    {
      v14 = @"{invalid, invalid}";
    }

    else
    {
      if (topLeft.column == -1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v13, v24];
      }

      else if (v13 == 0xFFFFFFFF)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", *&a1->mGridRange.topLeft, v24];
      }

      else
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", *&a1->mGridRange.topLeft, HIDWORD(*&topLeft)];
      }

      v14 = v15;
    }

    v16 = HIDWORD(*&bottomRight);
    if (bottomRight.column == -1 && v16 == 0xFFFFFFFF)
    {
      v17 = @"{invalid, invalid}";
    }

    else if (bottomRight.column == -1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{invalid, %u}", v16, v24];
    }

    else if (v16 == 0xFFFFFFFF)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, invalid}", bottomRight, v24];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%u, %u}", bottomRight, HIDWORD(*&bottomRight)];
    }

    [v7 handleFailureInFunction:v8 file:v9 lineNumber:3188 description:{@"column %u not in gridRange %@", a2, objc_msgSend(v12, "stringWithFormat:", @"{%@->%@}", v14, v17)}];
  }

  if (!a1->mBodyColumnCoordinates && !a1->mHeaderRowColumnCoordinates)
  {
    v18 = [MEMORY[0x277D6C290] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTLayoutSpaceGetRawTableCoordinateForGridColumn(TSTLayoutSpace *, TSTGridColumn)"}];
    [v18 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3190, @"Body column coordinates and header row column coordinates have not been filled."}];
  }

  mHeaderRowColumnCoordinates = a1->mHeaderRowColumnCoordinates;
  if (mHeaderRowColumnCoordinates && TSTCoordinateArrayContainsIndex(mHeaderRowColumnCoordinates, a2))
  {
    p_mHeaderRowColumnCoordinates = &a1->mHeaderRowColumnCoordinates;
  }

  else
  {
    p_mHeaderRowColumnCoordinates = &a1->mBodyColumnCoordinates;
  }

  v22 = *p_mHeaderRowColumnCoordinates;

  return TSTCoordinateArrayGetRawCoordinate(v22, a2);
}

double TSTLayoutSpaceGetHeaderRowsHeight(unint64_t *a1)
{
  HeaderRowsGridRange = TSTLayoutSpaceGetHeaderRowsGridRange(a1);
  if (HeaderRowsGridRange == -1 || v3 == -1 || HeaderRowsGridRange > v3 || HIDWORD(HeaderRowsGridRange) == 0xFFFFFFFF || HIDWORD(v3) == 0xFFFFFFFF || HIDWORD(HeaderRowsGridRange) > HIDWORD(v3))
  {
    return 0.0;
  }

  return TSTLayoutSpaceGetTableCoordinateForGridRow(a1, (HIDWORD(v3) + 1));
}

double TSTLayoutSpaceGetStrokeFrame(uint64_t a1)
{
  [a1 lockForRead];
  if (CGRectIsEmpty(*(a1 + 368)))
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    v4 = v2 == -1 || v3 == -1;
    v5 = v4 || v2 > v3;
    v6 = HIDWORD(v2);
    v7 = HIDWORD(v3);
    v8 = v5 || v6 == 0xFFFFFFFF;
    v9 = v8 || v7 == 0xFFFFFFFF;
    if (!v9 && v6 <= v7)
    {
      StrokeFrameForGridRange = TSTLayoutSpaceGetStrokeFrameForGridRange(a1, v2, v3);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      if ([a1 isMain] && objc_msgSend(a1, "headerRowsRepeat") && objc_msgSend(objc_msgSend(a1, "bundle"), "repeatHeaderRowsSpace"))
      {
        TSTLayoutSpaceGetStrokeFrame();
        v17 = v17 + v13 - v18;
        v13 = v18;
      }

      if ([a1 isMain] && objc_msgSend(a1, "headerColumnsRepeat") && objc_msgSend(objc_msgSend(a1, "bundle"), "repeatHeaderColumnsSpace"))
      {
        StrokeFrame = TSTLayoutSpaceGetStrokeFrame();
        v15 = v15 + StrokeFrameForGridRange - StrokeFrame;
        StrokeFrameForGridRange = StrokeFrame;
      }

      *(a1 + 368) = StrokeFrameForGridRange;
      *(a1 + 376) = v13;
      *(a1 + 384) = v15;
      *(a1 + 392) = v17;
    }
  }

  v20 = *(a1 + 368);
  [a1 unlock];
  return v20;
}

double TSTLayoutSpaceGetFrameForTableNameBorder(TSTLayoutSpace *a1)
{
  if (![(TSTLayoutSpace *)a1 isMain])
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGRect TSTLayoutSpaceGetFrameForTableNameBorder(TSTLayoutSpace *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 1034, @"this API is intended to run on the main space"}];
  }

  v4 = *MEMORY[0x277CBF3A0];
  TSTLayoutGetTableNameHeight([(TSTLayoutSpace *)a1 layout]);
  if (v5 > 0.0)
  {
    p_mGridRange = &a1->mGridRange;
    if (!a1)
    {
      p_mGridRange = &TSTGridRangeEmpty;
    }

    column = p_mGridRange->bottomRight.column;
    v12.x = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, 0);
    v12.y = 0.0;
    LayoutPointForTablePoint = TSTLayoutSpaceGetLayoutPointForTablePoint(a1, v12);
    v13.x = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, column + 1);
    v13.y = 0.0;
    v9 = TSTLayoutSpaceGetLayoutPointForTablePoint(a1, v13);
    v14.y = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, 0);
    v14.x = 0.0;
    if ([(TSTLayoutSpace *)a1 layoutDirectionIsLeftToRight:TSTLayoutSpaceGetLayoutPointForTablePoint(a1])
    {
      return LayoutPointForTablePoint;
    }

    else
    {
      return v9;
    }
  }

  return v4;
}

double TSTLayoutSpaceGetStrokeFrameForTableNameBorder(TSTLayoutSpace *a1)
{
  if (![(TSTLayoutSpace *)a1 isMain])
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGRect TSTLayoutSpaceGetStrokeFrameForTableNameBorder(TSTLayoutSpace *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 1062, @"this API is intended to run on the main space"}];
  }

  v4 = *MEMORY[0x277CBF3A0];
  v5 = [(TSTLayoutSpace *)a1 layout];
  TSTLayoutGetTableNameHeight(v5);
  if (v6 > 0.0)
  {
    p_topLeft = &a1->mGridRange.topLeft;
    if (!a1)
    {
      p_topLeft = &TSTGridRangeEmpty;
    }

    v8 = *p_topLeft;
    v9 = p_topLeft[1];
    v10 = TSTLayoutTableNameBorderStrokeWidth(v5);
    v13 = 0u;
    v14 = 0u;
    memset(v12, 0, sizeof(v12));
    TSTLayoutSpaceGetFrameSpecForGridRange(a1, v8, v9, 0, 0, v12);
    v14 = v13;
    return *v12 - v10 * 0.5;
  }

  return v4;
}

double TSTLayoutSpaceGetAlignedStrokeFrameForTableNameBorder(TSTLayoutSpace *a1)
{
  if (![(TSTLayoutSpace *)a1 isMain])
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGRect TSTLayoutSpaceGetAlignedStrokeFrameForTableNameBorder(TSTLayoutSpace *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 1098, @"this API is intended to run on the main space"}];
  }

  v4 = *MEMORY[0x277CBF3A0];
  v5 = [(TSTLayoutSpace *)a1 layout];
  TSTLayoutGetTableNameHeight(v5);
  if (v6 > 0.0)
  {
    p_topLeft = &a1->mGridRange.topLeft;
    if (!a1)
    {
      p_topLeft = &TSTGridRangeEmpty;
    }

    v8 = *p_topLeft;
    v9 = p_topLeft[1];
    v10 = TSTLayoutTableNameBorderStrokeWidth(v5);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    memset(v12, 0, sizeof(v12));
    TSTLayoutSpaceGetFrameSpecForGridRange(a1, v8, v9, 0, 0, v12);
    TSTLayoutSpaceGetAlignFrameSpec(a1, v12);
    v14 = v13;
    return *v12 - v10 * 0.5;
  }

  return v4;
}

double TSTLayoutSpaceGetLayoutRectForCanvasRect(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 120);
  *&v7.a = *(a1 + 104);
  *&v7.c = v5;
  *&v7.tx = *(a1 + 136);
  *&result = CGRectApplyAffineTransform(*&a2, &v7);
  return result;
}

double TSTLayoutSpaceGetCanvasRectForLayoutRect(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 72);
  *&v7.a = *(a1 + 56);
  *&v7.c = v5;
  *&v7.tx = *(a1 + 88);
  *&result = CGRectApplyAffineTransform(*&a2, &v7);
  return result;
}

uint64_t TSTLayoutSpaceGetGridRangeForCanvasRect(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 120);
  *&v8.a = *(a1 + 104);
  *&v8.c = v6;
  *&v8.tx = *(a1 + 136);
  v9 = CGRectApplyAffineTransform(*&a2, &v8);
  v10.origin.x = TSTLayoutSpaceGetTableRectForLayoutRect(a1, v9);
  return TSTLayoutSpaceGetGridRangeForTableRect(a1, v10);
}

double TSTLayoutSpaceGetCanvasFrameForGridRange(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7.origin.x = TSTLayoutSpaceGetFrameForGridRange(a1, a2, a3);
  v4 = *(a1 + 72);
  *&v6.a = *(a1 + 56);
  *&v6.c = v4;
  *&v6.tx = *(a1 + 88);
  *&result = CGRectApplyAffineTransform(v7, &v6);
  return result;
}

double TSTLayoutSpaceGetCanvasFrameForCellRange(uint64_t a1, unint64_t a2)
{
  v3 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v3 = -1;
  }

  v4 = WORD2(a2) + v3 - 1;
  if (!WORD2(a2))
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a2;
  }

  v6 = v3 | (v5 << 32);
  v7 = (((v5 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v7 = 0xFFFFFFFF00000000;
  }

  v11.origin.x = TSTLayoutSpaceGetFrameForGridRange(a1, v6, v7 | v4);
  v8 = *(a1 + 72);
  *&v10.a = *(a1 + 56);
  *&v10.c = v8;
  *&v10.tx = *(a1 + 88);
  *&result = CGRectApplyAffineTransform(v11, &v10);
  return result;
}

double TSTLayoutSpaceGetCanvasFrame(uint64_t a1)
{
  v5.origin.x = TSTLayoutSpaceGetFrame(a1);
  v2 = *(a1 + 72);
  *&v4.a = *(a1 + 56);
  *&v4.c = v2;
  *&v4.tx = *(a1 + 88);
  *&result = CGRectApplyAffineTransform(v5, &v4);
  return result;
}

double TSTLayoutSpaceGetCanvasStrokeFrameForGridRange(uint64_t a1, unint64_t a2, unint64_t a3)
{
  [a1 lockForRead];
  v10.origin.x = TSTLayoutSpaceGetStrokeFrameForGridRange(a1, a2, a3);
  v6 = *(a1 + 72);
  *&v9.a = *(a1 + 56);
  *&v9.c = v6;
  *&v9.tx = *(a1 + 88);
  *&v7 = CGRectApplyAffineTransform(v10, &v9);
  [a1 unlock];
  return v7;
}

double TSTLayoutSpaceGetCanvasStrokeFrame(uint64_t a1)
{
  v5.origin.x = TSTLayoutSpaceGetStrokeFrame(a1);
  v2 = *(a1 + 72);
  *&v4.a = *(a1 + 56);
  *&v4.c = v2;
  *&v4.tx = *(a1 + 88);
  *&result = CGRectApplyAffineTransform(v5, &v4);
  return result;
}

double TSTLayoutSpaceGetLayoutRectForOtherLayoutSpaceRect(uint64_t a1, uint64_t a2, double result, double a4, double a5, double a6)
{
  if (a2 != a1)
  {
    v12 = v6;
    v13 = v7;
    v9 = *(a2 + 72);
    *&v11.a = *(a2 + 56);
    *&v11.c = v9;
    *&v11.tx = *(a2 + 88);
    v14 = CGRectApplyAffineTransform(*&result, &v11);
    v10 = *(a1 + 120);
    *&v11.a = *(a1 + 104);
    *&v11.c = v10;
    *&v11.tx = *(a1 + 136);
    *&result = CGRectApplyAffineTransform(v14, &v11);
  }

  return result;
}

uint64_t TSTLayoutSpaceGetGridPointHitByCanvasPoint(uint64_t a1, int a2, double a3, CGFloat a4)
{
  if (a2)
  {
    point = a3;
    TSTLayoutGetColumnTabsCanvasFrame([a1 layout]);
    v13.x = point;
    v13.y = a4;
    v6 = CGRectContainsPoint(v15, v13);
    a3 = point;
    v7 = -31.0;
    if (v6)
    {
      goto LABEL_6;
    }

    TSTLayoutGetRowTabsCanvasFrame([a1 layout]);
    v14.x = point;
    v14.y = a4;
    v8 = CGRectContainsPoint(v16, v14);
    a3 = point;
    if (v8)
    {
      a3 = -31.0;
    }
  }

  v7 = a4;
LABEL_6:
  v9 = vaddq_f64(*(a1 + 136), vmlaq_n_f64(vmulq_n_f64(*(a1 + 120), v7), *(a1 + 104), a3));

  return TSTLayoutSpaceGetGridPointHitByLayoutPoint(a1, v9.f64[0], v9.f64[1]);
}

uint64_t TSTLayoutSpaceGetGridPointHitByLayoutPoint(TSTLayoutSpace *a1, double a2, double a3)
{
  TablePointForLayoutPoint = TSTLayoutSpaceGetTablePointForLayoutPoint(a1, *&a2);
  v6 = v5;
  v16.origin.x = TSTLayoutSpaceGetFrame(a1);
  v17.origin.x = TSTLayoutSpaceGetTableRectForLayoutRect(a1, v16);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (TablePointForLayoutPoint + 0.00000011920929 >= CGRectGetMinX(v17))
  {
    GridColumnForTableCoordinate = TSTLayoutSpaceGetGridColumnForTableCoordinate(a1, TablePointForLayoutPoint);
  }

  else
  {
    GridColumnForTableCoordinate = 0xFFFFFFFFLL;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinY = CGRectGetMinY(v18);
  v13 = 0xFFFFFFFF00000000;
  if (v6 + 0.00000011920929 >= MinY)
  {
    v13 = TSTLayoutSpaceGetGridRowForTableCoordinate(a1, v6) << 32;
  }

  v14 = 0xFFFFFFFFLL;
  if (a1->mGridRange.bottomRight.column >= GridColumnForTableCoordinate)
  {
    v14 = GridColumnForTableCoordinate;
  }

  if (a1->mGridRange.bottomRight.row < HIDWORD(v13))
  {
    v13 = 0xFFFFFFFF00000000;
  }

  return v13 | v14;
}

double TSTLayoutSpaceGetTablePointForLayoutPoint(TSTLayoutSpace *a1, CGPoint a2)
{
  y = a2.y;
  x = a2.x;
  [(TSTLayoutSpace *)a1 tableOffset];
  v6 = x - v5;
  if ((TSTLayoutIsPartitionAlongLeft([(TSTLayoutSpace *)a1 layout]) & 1) == 0 && v6 > TSTLayoutSpaceGetHeaderColumnsWidth(a1))
  {
    BodyTranslationX = TSTLayoutSpaceGetBodyTranslationX(a1);
    v6 = v6 + BodyTranslationX - TSTLayoutSpaceGetHeaderColumnsWidth(a1);
  }

  [(TSTLayoutSpace *)a1 tableOffset];
  v9 = y - v8;
  if ((TSTLayoutIsPartitionAlongTop([(TSTLayoutSpace *)a1 layout]) & 1) == 0 && v9 > TSTLayoutSpaceGetHeaderRowsHeight(a1))
  {
    TSTLayoutSpaceGetBodyTranslationY(a1);
    TSTLayoutSpaceGetHeaderRowsHeight(a1);
  }

  return v6;
}

uint64_t TSTLayoutSpaceGetVisibleRange(TSTLayoutSpace *a1)
{
  if (!a1)
  {
    return 0xFFFFFFLL;
  }

  if ([(TSTLayoutSpace *)a1 layoutSpaceType]== 1 || [(TSTLayoutSpace *)a1 layoutSpaceType]== 4)
  {

    return TSTLayoutSpaceGetRange(a1);
  }

  if ([(TSTLayoutSpace *)a1 layoutSpaceType]!= 6 && [(TSTLayoutSpace *)a1 layoutSpaceType]!= 5)
  {
    VisibleRange = TSTLayoutGetVisibleRange([(TSTLayoutSpace *)a1 layout]);
    v5 = VisibleRange;
    v6 = VisibleRange >> 16;
    v7 = HIDWORD(VisibleRange);
    v8 = HIWORD(VisibleRange);
    Range = TSTLayoutSpaceGetRange(a1);
    if ([(TSTLayoutSpace *)a1 layoutSpaceType]== 2)
    {
      LOWORD(v7) = v7 + v6;
      LOBYTE(v6) = 0;
    }

    else if ([(TSTLayoutSpace *)a1 layoutSpaceType]== 3)
    {
      v8 = (v8 + v5);
      v5 = 0;
    }

    v10 = 0;
    v11 = 16711680;
    v12 = 0xFFFFLL;
    if (v5 != 0xFFFF)
    {
      v13 = 0;
      if (v6 == 255)
      {
        return v11 | v12 | v10 | v13;
      }

      v10 = 0;
      v11 = 16711680;
      v12 = 0xFFFFLL;
      if (v8)
      {
        v13 = 0;
        if (!v7)
        {
          return v11 | v12 | v10 | v13;
        }

        v10 = 0;
        v11 = 16711680;
        v12 = 0xFFFFLL;
        if (Range != 0xFFFF)
        {
          v13 = 0;
          if ((Range & 0xFF0000) != 0xFF0000)
          {
            v10 = 0;
            v11 = 16711680;
            v12 = 0xFFFFLL;
            if (HIWORD(Range))
            {
              v13 = 0;
              if ((Range & 0xFFFF00000000) != 0)
              {
                v12 = 0;
                v14 = v6 <= BYTE2(Range) ? BYTE2(Range) : v6;
                v15 = v5 <= Range ? Range : v5;
                v16 = (v7 + v6 - 1) >= (BYTE4(Range) + BYTE2(Range) - 1) ? (BYTE4(Range) + BYTE2(Range) - 1) : (v7 + v6 - 1);
                v17 = (v8 + v5 - 1) >= (Range + HIWORD(Range) - 1) ? (Range + HIWORD(Range) - 1) : (v8 + v5 - 1);
                v11 = 0;
                v10 = 0;
                v13 = 0;
                if (v15 <= v17 && v14 <= v16)
                {
                  v13 = ((v17 - v15) << 48) + 0x1000000000000;
                  v10 = (((v16 - v14) << 32) + 0x100000000) & 0xFFFF00000000;
                  v11 = v14 << 16;
                  v12 = v15;
                }
              }

              return v11 | v12 | v10 | v13;
            }

            goto LABEL_40;
          }

          return v11 | v12 | v10 | v13;
        }
      }
    }

LABEL_40:
    v13 = 0;
    return v11 | v12 | v10 | v13;
  }

  v3 = [(TSTLayoutSpace *)a1 layout];

  return TSTLayoutGetVisibleRangeForSpace(v3, a1);
}

uint64_t TSTLayoutSpaceGetVisibleRangeForRect(TSTLayoutSpace *a1, double a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    return 0xFFFFFFLL;
  }

  RangeForLayoutRect = TSTLayoutSpaceGetRangeForLayoutRect(a1, a2, a3, a4, a5);
  VisibleRange = TSTLayoutSpaceGetVisibleRange(a1);
  v8 = 0;
  v9 = 16711680;
  v10 = 0xFFFFLL;
  if (RangeForLayoutRect == 0xFFFF)
  {
    goto LABEL_25;
  }

  v11 = 0;
  if ((RangeForLayoutRect & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 16711680;
  v10 = 0xFFFFLL;
  if (!HIWORD(RangeForLayoutRect))
  {
    goto LABEL_25;
  }

  v11 = 0;
  if ((RangeForLayoutRect & 0xFFFF00000000) == 0)
  {
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 16711680;
  v10 = 0xFFFFLL;
  if (VisibleRange == 0xFFFF)
  {
LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  v11 = 0;
  if ((VisibleRange & 0xFF0000) != 0xFF0000)
  {
    v8 = 0;
    v9 = 16711680;
    v10 = 0xFFFFLL;
    if (HIWORD(VisibleRange))
    {
      v11 = 0;
      if ((VisibleRange & 0xFFFF00000000) != 0)
      {
        v10 = 0;
        if (BYTE2(RangeForLayoutRect) <= BYTE2(VisibleRange))
        {
          v12 = BYTE2(VisibleRange);
        }

        else
        {
          v12 = BYTE2(RangeForLayoutRect);
        }

        if (RangeForLayoutRect <= VisibleRange)
        {
          v13 = VisibleRange;
        }

        else
        {
          v13 = RangeForLayoutRect;
        }

        if ((BYTE4(RangeForLayoutRect) + BYTE2(RangeForLayoutRect) - 1) >= (BYTE4(VisibleRange) + BYTE2(VisibleRange) - 1))
        {
          v14 = (BYTE4(VisibleRange) + BYTE2(VisibleRange) - 1);
        }

        else
        {
          v14 = (BYTE4(RangeForLayoutRect) + BYTE2(RangeForLayoutRect) - 1);
        }

        v15 = (VisibleRange + HIWORD(VisibleRange) - 1);
        if ((RangeForLayoutRect + HIWORD(RangeForLayoutRect) - 1) < v15)
        {
          v15 = (RangeForLayoutRect + HIWORD(RangeForLayoutRect) - 1);
        }

        v9 = 0;
        v8 = 0;
        v11 = 0;
        if (v13 <= v15 && v12 <= v14)
        {
          v11 = ((v15 - v13) << 48) + 0x1000000000000;
          v8 = (((v14 - v12) << 32) + 0x100000000) & 0xFFFF00000000;
          v9 = v12 << 16;
          v10 = v13;
        }
      }

      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  v16 = v9 | v10 | v8 | v11;
  if (v16 == 0xFFFF || (v16 & 0xFF0000) == 0xFF0000 || !HIWORD(v16) || (v16 & 0xFFFF00000000) == 0)
  {
    return VisibleRange;
  }

  return v16;
}

void TSTLayoutSpaceGetVisibleFrameForRange(uint64_t a1, unint64_t a2)
{
  v3 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v3 = -1;
  }

  v4 = WORD2(a2) + v3 - 1;
  if (!WORD2(a2))
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a2;
  }

  v6 = v3 | (v5 << 32);
  v7 = (((v5 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v7 = 0xFFFFFFFF00000000;
  }

  CanvasFrameForGridRange = TSTLayoutSpaceGetCanvasFrameForGridRange(a1, v6, v7 | v4);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v22.origin.x = TSTLayoutGetCanvasVisibleRect([a1 layout]);
  v22.origin.y = v15;
  v22.size.width = v16;
  v22.size.height = v17;
  v20.origin.x = CanvasFrameForGridRange;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  v21 = CGRectIntersection(v20, v22);
  v18 = *(a1 + 120);
  *&v19.a = *(a1 + 104);
  *&v19.c = v18;
  *&v19.tx = *(a1 + 136);
  CGRectApplyAffineTransform(v21, &v19);
}

void TSTLayoutSpaceGetVisibleStrokeFrameForRange(uint64_t a1, unint64_t a2)
{
  v3 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v3 = -1;
  }

  v4 = WORD2(a2) + v3 - 1;
  if (!WORD2(a2))
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a2;
  }

  v6 = v3 | (v5 << 32);
  v7 = (((v5 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v7 = 0xFFFFFFFF00000000;
  }

  CanvasStrokeFrameForGridRange = TSTLayoutSpaceGetCanvasStrokeFrameForGridRange(a1, v6, v7 | v4);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v22.origin.x = TSTLayoutGetCanvasVisibleRect([a1 layout]);
  v22.origin.y = v15;
  v22.size.width = v16;
  v22.size.height = v17;
  v20.origin.x = CanvasStrokeFrameForGridRange;
  v20.origin.y = v10;
  v20.size.width = v12;
  v20.size.height = v14;
  v21 = CGRectIntersection(v20, v22);
  v18 = *(a1 + 120);
  *&v19.a = *(a1 + 104);
  *&v19.c = v18;
  *&v19.tx = *(a1 + 136);
  CGRectApplyAffineTransform(v21, &v19);
}

void TSTLayoutSpaceGetVisibleAlignedStrokeFrameForRange(uint64_t a1, unint64_t a2)
{
  v3 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v3 = -1;
  }

  v4 = WORD2(a2) + v3 - 1;
  if (!WORD2(a2))
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a2;
  }

  v6 = v3 | (v5 << 32);
  v7 = (((v5 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v7 = 0xFFFFFFFF00000000;
  }

  v18.origin.x = TSTLayoutSpaceGetAlignedStrokeFrameForGridRange(a1, v6, v7 | v4);
  v8 = *(a1 + 72);
  *&v17.a = *(a1 + 56);
  *&v17.c = v8;
  *&v17.tx = *(a1 + 88);
  v19 = CGRectApplyAffineTransform(v18, &v17);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v22.origin.x = TSTLayoutGetCanvasVisibleRect([a1 layout]);
  v22.origin.y = v13;
  v22.size.width = v14;
  v22.size.height = v15;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v21 = CGRectIntersection(v20, v22);
  v16 = *(a1 + 120);
  *&v17.a = *(a1 + 104);
  *&v17.c = v16;
  *&v17.tx = *(a1 + 136);
  CGRectApplyAffineTransform(v21, &v17);
}

double TSTLayoutSpaceGetAlignedStrokeFrameForGridRange(TSTLayoutSpace *a1, unint64_t a2, unint64_t a3)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  TSTLayoutSpaceGetFrameSpecForGridRange(a1, a2, a3, 0, 0, v5);
  TSTLayoutSpaceGetAlignFrameSpec(a1, v5);
  return *v5 - *&v6 * 0.5;
}

__n128 TSTLayoutSpaceSetUserSpaceToDeviceSpaceTransform(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 184) = a2[2];
  *(a1 + 168) = v4;
  *(a1 + 152) = v3;
  v5 = a2[1];
  *&v9.a = *a2;
  *&v9.c = v5;
  *&v9.tx = a2[2];
  CGAffineTransformInvert(&v10, &v9);
  v6 = *&v10.c;
  *(a1 + 200) = *&v10.a;
  *(a1 + 216) = v6;
  *(a1 + 232) = *&v10.tx;
  result = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  *(a1 + 336) = *MEMORY[0x277CBF3A0];
  *(a1 + 352) = v8;
  *(a1 + 400) = result;
  *(a1 + 416) = v8;
  return result;
}

__n128 TSTLayoutSpaceGetTransformToDevice@<Q0>(TSTLayoutSpace *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *&a1->mTransformToDevice.c;
  *a2 = *&a1->mTransformToDevice.a;
  *(a2 + 16) = v2;
  result = *&a1->mTransformToDevice.tx;
  *(a2 + 32) = result;
  return result;
}

__n128 TSTLayoutSpaceGetTransformFromDevice@<Q0>(TSTLayoutSpace *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *&a1->mTransformFromDevice.c;
  *a2 = *&a1->mTransformFromDevice.a;
  *(a2 + 16) = v2;
  result = *&a1->mTransformFromDevice.tx;
  *(a2 + 32) = result;
  return result;
}

CGFloat TSTLayoutSpaceGetAlignedRectForLayoutRect(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if ([a1 drawPreventAntialias])
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    MinX = CGRectGetMinX(v13);
    v14.origin.x = a2;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    MinY = CGRectGetMinY(v14);
    v15.origin.x = a2;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    CGRectGetMaxX(v15);
    v16.origin.x = a2;
    v16.origin.y = a3;
    v16.size.width = a4;
    v16.size.height = a5;
    CGRectGetMaxY(v16);
    return a1[29] + floor(a1[24] + MinY * a1[22] + a1[20] * MinX + 0.00000011920929) * a1[27] + a1[25] * floor(a1[23] + MinY * a1[21] + a1[19] * MinX + 0.00000011920929);
  }

  return a2;
}

void TSTLayoutSpaceAlignRect(double *a1, CGFloat *a2)
{
  *a2 = TSTLayoutSpaceGetAlignedRectForLayoutRect(a1, *a2, a2[1], a2[2], a2[3]);
  *(a2 + 1) = v3;
  *(a2 + 2) = v4;
  *(a2 + 3) = v5;
}

float64x2_t TSTLayoutSpaceGetAlignedPointForLayoutPoint(uint64_t a1, float64_t a2, float64_t a3)
{
  if ([a1 drawPreventAntialias])
  {
    return vaddq_f64(*(a1 + 232), vmlaq_n_f64(vmulq_n_f64(*(a1 + 216), floor(*(a1 + 192) + a3 * *(a1 + 176) + *(a1 + 160) * a2 + 0.00000011920929)), *(a1 + 200), floor(*(a1 + 184) + a3 * *(a1 + 168) + *(a1 + 152) * a2 + 0.00000011920929)));
  }

  else
  {
    result.f64[0] = a2;
    result.f64[1] = a3;
  }

  return result;
}

void TSTLayoutSpaceAlignStrokeCoordinates(TSTLayoutSpace *a1, double *a2, CGPoint *a3, double *a4)
{
  if ([(TSTLayoutSpace *)a1 drawPreventAntialias])
  {
    v57 = 0.0;
    v58 = 0.0;
    v8 = *a2;
    v9 = a2[1];
    y = a3->y;
    if (*a2 == a3->x)
    {
      if (v9 >= y)
      {
        v11 = *a4;
        v12 = NSStringFromCGPoint(*&v8);
        v13 = NSStringFromCGPoint(*a3);
        NSLog(@"WARNING: vertical stroke(%f %@ => %@) length <= 0.0", *&v11, v12, v13);
        a3->y = a2[1] + 1.0;
      }

      TSTLayoutSpaceAlignStrokeWidth(a1, *a4, &v57, &v58);
      v14 = v57;
      *a4 = v57;
      v15 = a2[1];
      b = a1->mTransformToDevice.b;
      d = a1->mTransformToDevice.d;
      tx = a1->mTransformToDevice.tx;
      ty = a1->mTransformToDevice.ty;
      v20 = ty + a3->y * d + b * *a2;
      v21 = floor(tx + v15 * a1->mTransformToDevice.c + a1->mTransformToDevice.a * *a2 - v58 * 0.5 + 0.00000011920929);
      v22 = floor(ty + v15 * d + b * *a2 + 0.00000011920929);
      if (v21 <= 0.0 && *a2 >= 0.0 && tx >= -1.0)
      {
        v21 = 0.0;
      }

      v25 = a1->mTransformFromDevice.b;
      v26 = a1->mTransformFromDevice.d;
      v27 = a1->mTransformFromDevice.ty;
      v28 = v27 + v22 * v26 + v25 * v21;
      v29 = v27 + floor(v20 + 0.00000011920929) * v26 + v25 * v21;
      v30 = v14 * 0.5 + a1->mTransformFromDevice.tx + v22 * a1->mTransformFromDevice.c + a1->mTransformFromDevice.a * v21;
      v31 = v30;
    }

    else
    {
      if (v9 != y)
      {
        return;
      }

      if (v8 >= a3->x)
      {
        v32 = *a4;
        v33 = NSStringFromCGPoint(*&v8);
        v34 = NSStringFromCGPoint(*a3);
        NSLog(@"WARNING: horizontal stroke(%f %@ => %@) length <= 0.0", *&v32, v33, v34);
        a3->x = *a2 + 1.0;
      }

      v35 = *a4;
      if (*a4 >= 0.0)
      {
        v36 = 0.0;
        v37 = 0.0;
        if (*a4 > 0.0)
        {
          v38 = v35 * a1->mTransformToDevice.c + a1->mTransformToDevice.a * v35;
          v39 = fabs(v35 * a1->mTransformToDevice.d + a1->mTransformToDevice.b * v35);
          v40 = floor(v39 + 0.00000011920929);
          if (v39 >= 1.0)
          {
            v41 = v40;
          }

          else
          {
            v41 = 1.0;
          }

          v37 = a1->mTransformFromDevice.d * v41 + a1->mTransformFromDevice.b * v38;
          v36 = v41 * 0.5;
        }
      }

      else
      {
        NSLog(@"WARNING: stroke width %f < 0.0", *a4);
        v36 = 0.0;
        v37 = 0.0;
      }

      *a4 = v37;
      v42 = a2[1];
      a = a1->mTransformToDevice.a;
      v44 = a1->mTransformToDevice.tx;
      v45 = a1->mTransformToDevice.ty;
      v46 = v42 * a1->mTransformToDevice.c;
      v47 = v44 + v46 + a * a3->x;
      v48 = floor(v44 + v46 + a * *a2 + 0.00000011920929);
      v49 = floor(v45 + v42 * a1->mTransformToDevice.d + a1->mTransformToDevice.b * *a2 - v36 + 0.00000011920929);
      if (v49 > 0.0 || v42 < 0.0 || v45 < -1.0)
      {
        v52 = v49;
      }

      else
      {
        v52 = 0.0;
      }

      v53 = floor(v47 + 0.00000011920929);
      v54 = a1->mTransformFromDevice.a;
      v55 = a1->mTransformFromDevice.tx;
      v56 = a1->mTransformFromDevice.c * v52;
      v30 = v55 + v56 + v54 * v48;
      v31 = v55 + v56 + v54 * v53;
      v28 = v37 * 0.5 + a1->mTransformFromDevice.ty + a1->mTransformFromDevice.d * v52 + a1->mTransformFromDevice.b * v48;
      v29 = v28;
    }

    *a2 = v30;
    a2[1] = v28;
    a3->x = v31;
    a3->y = v29;
  }
}

void TSTLayoutSpaceAlignStrokeWidth(TSTLayoutSpace *a1, double a2, double *a3, double *a4)
{
  if (a2 < 0.0)
  {
    NSLog(@"WARNING: stroke width %f < 0.0", *&a2);
LABEL_8:
    *a4 = 0.0;
    v11 = 0.0;
    goto LABEL_9;
  }

  if (a2 <= 0.0)
  {
    goto LABEL_8;
  }

  v6 = a1->mTransformToDevice.c * a2 + a1->mTransformToDevice.a * a2;
  v7 = a1->mTransformToDevice.d * a2 + a1->mTransformToDevice.b * a2;
  v8 = fabs(v6);
  v9 = floor(v8 + 0.00000011920929);
  if (v8 >= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  *a4 = v10;
  v11 = v7 * a1->mTransformFromDevice.c + a1->mTransformFromDevice.a * v10;
LABEL_9:
  *a3 = v11;
}

CGFloat TSTLayoutSpaceGetAlignedFrameForGridRange(TSTLayoutSpace *a1, unint64_t a2, uint64_t a3)
{
  FrameForGridRange = TSTLayoutSpaceGetFrameForGridRange(a1, a2, a3);

  return TSTLayoutSpaceGetAlignedRectForLayoutRect(a1, FrameForGridRange, v5, v6, v7);
}

double TSTLayoutSpaceGetAlignedContentFrameForGridRange(TSTLayoutSpace *a1, unint64_t a2, unint64_t a3)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  TSTLayoutSpaceGetFrameSpecForGridRange(a1, a2, a3, 0, 0, v5);
  TSTLayoutSpaceGetAlignFrameSpec(a1, v5);
  return *v5 + *&v6 * 0.5;
}

double TSTLayoutSpaceGetAlignedStrokeFrameForCellRange(TSTLayoutSpace *a1, unint64_t a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  v3 = WORD2(a2) + v2 - 1;
  if (!WORD2(a2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v6 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutSpaceGetAlignedStrokeFrameForGridRange(a1, v5, v6 | v3);
}

double TSTLayoutSpaceGetAlignedStrokeLineForRowGridRange(TSTLayoutSpace *a1, unint64_t a2, unint64_t a3)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  TSTLayoutSpaceGetFrameSpecForGridRange(a1, a2, a3, 1, 0, v5);
  TSTLayoutSpaceGetAlignFrameSpec(a1, v5);
  return *v5 - *&v6 * 0.5;
}

double TSTLayoutSpaceGetAlignedStrokeLineForColumnGridRange(TSTLayoutSpace *a1, unint64_t a2, unint64_t a3)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  TSTLayoutSpaceGetFrameSpecForGridRange(a1, a2, a3, 2, 0, v5);
  TSTLayoutSpaceGetAlignFrameSpec(a1, v5);
  return *v5 - *&v6 * 0.5;
}

TSDBezierPath *TSTLayoutSpaceGetAlignedStrokeFramePathForGridRange(TSTLayoutSpace *a1, unint64_t a2, unint64_t a3, _OWORD *a4, int a5, CGFloat a6)
{
  v9 = a3;
  v65 = HIDWORD(a2);
  if (a2 == -1 || a3 == -1 || a2 > a3 || v65 == 0xFFFFFFFF || HIDWORD(a3) == 0xFFFFFFFF)
  {
    v64 = a3;
  }

  else
  {
    v64 = a3;
    if (v65 <= HIDWORD(a3))
    {
      v64 = a3 + 1;
      v9 = (a3 & 0xFFFFFFFF00000000 | (a3 + 1)) + 0x100000000;
    }
  }

  v10 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  v66 = a4;
  v67 = a3;
  *v10 = a2;
  v10[1] = v9;
  v11 = 1;
  v62 = (a3 ^ a2) >> 32;
  v63 = HIDWORD(v9);
  v12 = 1;
  do
  {
    v13 = v12 - 1;
    if ((v12 - 1) <= 1)
    {
      if (!v62)
      {
        v12 = 3;
        continue;
      }
    }

    else if (v67 == a2)
    {
      break;
    }

    v14 = [(TSTLayoutSpace *)a1 masterLayout];
    v70 = v12;
    if (v12 == 3)
    {
      v19 = v65;
LABEL_23:
      MergedStrokesForGridRow = TSTMasterLayoutGetMergedStrokesForGridRow(v14, v19);
      v17 = v64;
      v18 = a2;
      goto LABEL_24;
    }

    if (v12 == 2)
    {
      v15 = v64;
      goto LABEL_20;
    }

    if (v12 != 1)
    {
      v19 = v63;
      goto LABEL_23;
    }

    v15 = a2;
LABEL_20:
    MergedStrokesForGridRow = TSTMasterLayoutGetMergedStrokesForGridColumn(v14, v15);
    v17 = v63;
    v18 = v65;
LABEL_24:
    v20 = v18;
    LODWORD(v73.a) = 0;
    NextStroke = TSTStrokeRunArrayGetNextStroke(MergedStrokesForGridRow, v18, v17, &v73);
    if (NextStroke)
    {
      v22 = NextStroke;
      v23 = 0.0;
      v24 = -1;
      v72 = MergedStrokesForGridRow;
      while (1)
      {
        [*(v22 + 1) width];
        v26 = v25;
        v27 = v22[1] >= v17 ? v17 : v22[1];
        if (v24 != -1)
        {
          if (v25 == v23)
          {
            v26 = v23;
            goto LABEL_44;
          }

          if (v11 >= 1)
          {
            break;
          }
        }

LABEL_44:
        v22 = TSTStrokeRunArrayGetNextStroke(MergedStrokesForGridRow, v20, v17, &v73);
        v24 = v27;
        v23 = v26;
        if (!v22)
        {
          goto LABEL_45;
        }
      }

      v28 = 0;
      v29 = 0;
      while (1)
      {
        if (v13 > 1)
        {
          if (LODWORD(v10[v28]) >= v24 || v24 >= LODWORD(v10[v28 + 1]))
          {
            goto LABEL_42;
          }

          v30 = v11 + 1;
          v10 = malloc_type_realloc(v10, 16 * (v11 + 1), 0x1000040451B5BE8uLL);
          v32 = &v10[2 * v11];
          *v32 = *&v10[v28];
          LODWORD(v10[v28 + 1]) = v24;
        }

        else
        {
          if (HIDWORD(v10[v28]) >= v24 || v24 >= HIDWORD(v10[v28 + 1]))
          {
            goto LABEL_42;
          }

          v30 = v11 + 1;
          v10 = malloc_type_realloc(v10, 16 * (v11 + 1), 0x1000040451B5BE8uLL);
          v31 = &v10[2 * v11];
          *v31 = *&v10[v28];
          HIDWORD(v10[v28 + 1]) = v24;
          v32 = (v31 + 4);
        }

        v11 = v30;
        *v32 = v24;
LABEL_42:
        ++v29;
        v28 += 2;
        if (v29 >= v11)
        {
          MergedStrokesForGridRow = v72;
          goto LABEL_44;
        }
      }
    }

LABEL_45:
    TSTStrokeRunArrayUnlock(MergedStrokesForGridRow);
    v12 = v70 + 1;
    a4 = v66;
  }

  while (v12 < 5);
  if (v11 < 1)
  {
    v60 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = *MEMORY[0x277CBF348];
    v36 = v10 + 1;
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;
      v40 = v37 == -1 || v38 == -1 || v37 > v38;
      v41 = HIDWORD(v37);
      v42 = HIDWORD(v38);
      v45 = v40 || v41 == 0xFFFFFFFF || v42 == 0xFFFFFFFF || v41 > v42;
      v46 = *(v36 - 1);
      if (v45)
      {
        v47 = *v36;
      }

      else
      {
        v47 = (*v36 & 0xFFFFFFFF00000000 | (*v36 - 1)) - 0x100000000;
      }

      *(v36 - 1) = v37;
      *v36 = v47;
      AlignedStrokeFrameForGridRange = TSTLayoutSpaceGetAlignedStrokeFrameForGridRange(a1, v46, v47);
      y = v49;
      width = v51;
      height = v53;
      if (a5)
      {
        if (!v33)
        {
          v35 = TSTLayoutSpaceGetAlignedStrokeFrameForGridRange(a1, a2, v67);
        }

        AlignedStrokeFrameForGridRange = TSDSubtractPoints(AlignedStrokeFrameForGridRange, y, v35);
        y = v55;
      }

      if (a6 != 0.0)
      {
        v74.origin.x = AlignedStrokeFrameForGridRange;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        v75 = CGRectInset(v74, a6, a6);
        AlignedStrokeFrameForGridRange = v75.origin.x;
        y = v75.origin.y;
        width = v75.size.width;
        height = v75.size.height;
      }

      if (a4)
      {
        v56 = a4[1];
        *&v73.a = *a4;
        *&v73.c = v56;
        *&v73.tx = a4[2];
        v57 = AlignedStrokeFrameForGridRange;
        *&v56 = y;
        v58 = width;
        v59 = height;
        v76 = CGRectApplyAffineTransform(*(&v56 - 8), &v73);
        AlignedStrokeFrameForGridRange = v76.origin.x;
        y = v76.origin.y;
        width = v76.size.width;
        height = v76.size.height;
      }

      v60 = [TSDBezierPath bezierPathWithRect:AlignedStrokeFrameForGridRange, y, width, height];
      if (v34)
      {
        v60 = [(TSDBezierPath *)v34 uniteWithBezierPath:v60];
      }

      ++v33;
      v36 += 2;
      v34 = v60;
    }

    while (v11 != v33);
  }

  free(v10);
  return v60;
}

TSDBezierPath *TSTLayoutSpaceGetAlignedStrokeFramePathForCellRange(TSTLayoutSpace *a1, unint64_t a2, _OWORD *a3, int a4, CGFloat a5)
{
  v5 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v5 = -1;
  }

  v6 = WORD2(a2) + v5 - 1;
  if (!WORD2(a2))
  {
    v6 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = a2;
  }

  v8 = v5 | (v7 << 32);
  v9 = (((v7 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v9 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutSpaceGetAlignedStrokeFramePathForGridRange(a1, v8, v9 | v6, a3, a4, a5);
}

uint64_t TSTLayoutSpaceGetAlignedMaskStrokeFramePathForGridRange(TSTLayoutSpace *a1, _OWORD *a2)
{
  v4 = [(TSTLayoutSpace *)a1 layoutSpaceType];
  VisibleRange = TSTLayoutSpaceGetVisibleRange(a1);
  v6 = 0;
  if (VisibleRange != 0xFFFF && (VisibleRange & 0xFF0000) != 0xFF0000)
  {
    v6 = 0;
    if (HIWORD(VisibleRange))
    {
      if ((VisibleRange & 0xFFFF00000000) != 0)
      {
        if (BYTE2(VisibleRange) == 255)
        {
          v7 = 0xFFFFFFFFLL;
        }

        else
        {
          v7 = BYTE2(VisibleRange);
        }

        if (WORD2(VisibleRange))
        {
          v8 = WORD2(VisibleRange) + v7 - 1;
        }

        else
        {
          v8 = 0xFFFFFFFFLL;
        }

        v9 = VisibleRange << 32;
        v10 = ((v9 + (HIDWORD(VisibleRange) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
        AlignedStrokeFramePathForGridRange = TSTLayoutSpaceGetAlignedStrokeFramePathForGridRange(a1, v7 | v9, v10 | v8, a2, 0, 0.0);
        switch(v4)
        {
          case 3:
            v40.origin.x = TSTLayoutSpaceGetAlignedOverrideFrameForGridRange(a1, v10 | v7, v10 | v8, 0.0);
            x = v40.origin.x;
            y = v40.origin.y;
            width = v40.size.width;
            height = v40.size.height;
            MaxX = CGRectGetMaxX(v40);
            v41.origin.x = x;
            v41.origin.y = y;
            v41.size.width = width;
            v41.size.height = height;
            CGRectGetMaxY(v41);
            v17 = TSDRectWithPoints(-100000.0, -100000.0, MaxX);
            v19 = v32 + 100000.0;
            break;
          case 2:
            v38.origin.x = TSTLayoutSpaceGetAlignedOverrideFrameForGridRange(a1, v8 | v9, v10 | v8, 0.0);
            v21 = v38.origin.x;
            v22 = v38.origin.y;
            v23 = v38.size.width;
            v24 = v38.size.height;
            v25 = CGRectGetMaxX(v38);
            v39.origin.x = v21;
            v39.origin.y = v22;
            v39.size.width = v23;
            v39.size.height = v24;
            CGRectGetMaxY(v39);
            v17 = TSDRectWithPoints(-100000.0, -100000.0, v25);
            v20 = v26 + 100000.0;
            break;
          case 1:
            v36.origin.x = TSTLayoutSpaceGetAlignedOverrideFrameForGridRange(a1, v10 | v8, v10 | v8, 0.0);
            v12 = v36.origin.x;
            v13 = v36.origin.y;
            v14 = v36.size.width;
            v15 = v36.size.height;
            v16 = CGRectGetMaxX(v36);
            v37.origin.x = v12;
            v37.origin.y = v13;
            v37.size.width = v14;
            v37.size.height = v15;
            CGRectGetMaxY(v37);
            v17 = TSDRectWithPoints(-100000.0, -100000.0, v16);
            break;
          default:
            v42 = **&MEMORY[0x277CBF3A0];
            return [(TSDBezierPath *)AlignedStrokeFramePathForGridRange uniteWithBezierPath:[TSDBezierPath bezierPathWithRect:v42.origin.x, v42.origin.y, v42.size.width, v42.size.height]];
        }

        v33 = a2[1];
        *&v35.a = *a2;
        *&v35.c = v33;
        *&v35.tx = a2[2];
        v42 = CGRectApplyAffineTransform(*&v17, &v35);
        return [(TSDBezierPath *)AlignedStrokeFramePathForGridRange uniteWithBezierPath:[TSDBezierPath bezierPathWithRect:v42.origin.x, v42.origin.y, v42.size.width, v42.size.height]];
      }
    }
  }

  return v6;
}

double TSTLayoutSpaceGetAlignedOverrideFrameForGridRange(TSTLayoutSpace *a1, unint64_t a2, unint64_t a3, double a4)
{
  v8 = a4;
  *v7 = 0u;
  memset(v6, 0, sizeof(v6));
  TSTLayoutSpaceGetFrameSpecForGridRange(a1, a2, a3, 0, &v8, v6);
  TSTLayoutSpaceGetAlignFrameSpec(a1, v6);
  return *v6 - v7[0] * 0.5;
}

TSDBezierPath *TSTLayoutSpaceGetAlignedStrokeLinePathForRowGridRange(TSTLayoutSpace *a1, uint64_t a2, unint64_t a3, _OWORD *a4, int a5, CGFloat a6)
{
  v9 = a2;
  MergedStrokesForGridRow = TSTMasterLayoutGetMergedStrokesForGridRow([(TSTLayoutSpace *)a1 masterLayout], HIDWORD(a2));
  v11 = a3 + 1;
  v12 = *MEMORY[0x277CBF348];
  v50[0] = 0;
  v45 = MergedStrokesForGridRow;
  NextStroke = TSTStrokeRunArrayGetNextStroke(MergedStrokesForGridRow, v9, a3 + 1, v50);
  if (NextStroke)
  {
    v14 = NextStroke;
    v15 = 0;
    v46 = v9 & 0xFFFFFFFF00000000;
    v16 = -1.0;
    v17 = 1;
    LODWORD(v18) = v9;
    v44 = v9;
    do
    {
      [*(v14 + 1) width];
      v20 = v19;
      v21 = v14[1];
      if (*v14 > v9)
      {
        LODWORD(v9) = *v14;
      }

      if (v21 >= v11)
      {
        v22 = v11;
      }

      else
      {
        v22 = v14[1];
      }

      v23 = v22 - 1;
      v24 = v15;
      while (1)
      {
        v25 = v16 == v20 ? a3 & 0xFFFFFFFF00000000 | v23 : a3;
        a3 = v16 < 0.0 ? a3 & 0xFFFFFFFF00000000 | v23 : v25;
        v18 = v16 < 0.0 ? v9 : v18;
        v26 = v16 < 0.0 ? v20 : v16;
        if (v26 == v20 && v21 < v11)
        {
          break;
        }

        AlignedStrokeLineForRowGridRange = TSTLayoutSpaceGetAlignedStrokeLineForRowGridRange(a1, v46 | v18, a3);
        v31 = v30;
        v33 = v32;
        if (a5)
        {
          if (v17)
          {
            v12 = AlignedStrokeLineForRowGridRange;
          }

          AlignedStrokeLineForRowGridRange = TSDSubtractPoints(AlignedStrokeLineForRowGridRange, v29, v12);
          v17 = 0;
        }

        if (a6 != 0.0)
        {
          v34 = v31;
          v35 = v33;
          *&AlignedStrokeLineForRowGridRange = CGRectInset(*&AlignedStrokeLineForRowGridRange, a6, a6);
          v31 = v36;
          v33 = v37;
        }

        if (a4)
        {
          v38 = a4[1];
          *&v49.a = *a4;
          *&v49.c = v38;
          *&v49.tx = a4[2];
          v39 = v31;
          *&v38 = v33;
          *&AlignedStrokeLineForRowGridRange = CGRectApplyAffineTransform(*&AlignedStrokeLineForRowGridRange, &v49);
          v31 = v40;
          v33 = v41;
        }

        v42 = [TSDBezierPath bezierPathWithRect:AlignedStrokeLineForRowGridRange, v29, v31, v33];
        v15 = v42;
        if (v24)
        {
          v24 = [(TSDBezierPath *)v24 uniteWithBezierPath:v42];
          v16 = -1.0;
          v15 = v24;
          if (v26 == v20)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v16 = -1.0;
          v24 = v42;
          if (v26 == v20)
          {
            goto LABEL_38;
          }
        }
      }

      v15 = v24;
      v16 = v26;
LABEL_38:
      LODWORD(v9) = v44;
      v14 = TSTStrokeRunArrayGetNextStroke(v45, v44, v11, v50);
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  TSTStrokeRunArrayUnlock(v45);
  return v15;
}

TSDBezierPath *TSTLayoutSpaceGetAlignedStrokeLinePathForColumnGridRange(TSTLayoutSpace *a1, unint64_t a2, unint64_t a3, _OWORD *a4, int a5, CGFloat a6)
{
  v8 = a3;
  v9 = a2;
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  MergedStrokesForGridColumn = TSTMasterLayoutGetMergedStrokesForGridColumn([(TSTLayoutSpace *)a1 masterLayout], a2);
  v13 = v11 + 1;
  v14 = *MEMORY[0x277CBF348];
  v52[0] = 0;
  v47 = MergedStrokesForGridColumn;
  NextStroke = TSTStrokeRunArrayGetNextStroke(MergedStrokesForGridColumn, v10, v11 + 1, v52);
  if (NextStroke)
  {
    v16 = NextStroke;
    v17 = 0;
    v48 = v9;
    v18 = -1.0;
    v19 = 1;
    LODWORD(v20) = v10;
    v46 = v10;
    do
    {
      [*(v16 + 1) width];
      v22 = v21;
      v23 = v16[1];
      if (*v16 > v10)
      {
        LODWORD(v10) = *v16;
      }

      if (v23 >= v13)
      {
        v24 = v13;
      }

      else
      {
        v24 = v16[1];
      }

      v25 = (v24 - 1) << 32;
      v26 = v17;
      while (1)
      {
        v27 = v8 | v25;
        if (v18 != v22)
        {
          v27 = v8;
        }

        v8 = v18 < 0.0 ? v8 | v25 : v27;
        v20 = v18 < 0.0 ? v10 : v20;
        v28 = v18 < 0.0 ? v22 : v18;
        if (v28 == v22 && v23 < v13)
        {
          break;
        }

        AlignedStrokeLineForColumnGridRange = TSTLayoutSpaceGetAlignedStrokeLineForColumnGridRange(a1, v48 | (v20 << 32), v8);
        v33 = v32;
        v35 = v34;
        if (a5)
        {
          if (v19)
          {
            v14 = AlignedStrokeLineForColumnGridRange;
          }

          AlignedStrokeLineForColumnGridRange = TSDSubtractPoints(AlignedStrokeLineForColumnGridRange, v31, v14);
          v19 = 0;
        }

        if (a6 != 0.0)
        {
          v36 = v33;
          v37 = v35;
          *&AlignedStrokeLineForColumnGridRange = CGRectInset(*&AlignedStrokeLineForColumnGridRange, a6, a6);
          v33 = v38;
          v35 = v39;
        }

        if (a4)
        {
          v40 = a4[1];
          *&v51.a = *a4;
          *&v51.c = v40;
          *&v51.tx = a4[2];
          v41 = v33;
          *&v40 = v35;
          *&AlignedStrokeLineForColumnGridRange = CGRectApplyAffineTransform(*&AlignedStrokeLineForColumnGridRange, &v51);
          v33 = v42;
          v35 = v43;
        }

        v44 = [TSDBezierPath bezierPathWithRect:AlignedStrokeLineForColumnGridRange, v31, v33, v35];
        v17 = v44;
        if (v26)
        {
          v26 = [(TSDBezierPath *)v26 uniteWithBezierPath:v44];
          v18 = -1.0;
          v17 = v26;
          if (v28 == v22)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v18 = -1.0;
          v26 = v44;
          if (v28 == v22)
          {
            goto LABEL_37;
          }
        }
      }

      v17 = v26;
      v18 = v28;
LABEL_37:
      LODWORD(v10) = v46;
      v16 = TSTStrokeRunArrayGetNextStroke(v47, v46, v13, v52);
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  TSTStrokeRunArrayUnlock(v47);
  return v17;
}

CGFloat TSTLayoutSpaceGetAlignedFrame(uint64_t a1)
{
  if (!CGRectIsEmpty(*(a1 + 336)))
  {
    return *(a1 + 336);
  }

  result = TSTLayoutSpaceGetAlignedFrameForGridRange(a1, *(a1 + 24), *(a1 + 32));
  *(a1 + 336) = result;
  *(a1 + 344) = v3;
  *(a1 + 352) = v4;
  *(a1 + 360) = v5;
  return result;
}

double TSTLayoutSpaceGetAlignedStrokeFrame(uint64_t a1)
{
  if (!CGRectIsEmpty(*(a1 + 400)))
  {
    return *(a1 + 400);
  }

  result = TSTLayoutSpaceGetAlignedStrokeFrameForGridRange(a1, *(a1 + 24), *(a1 + 32));
  *(a1 + 400) = result;
  *(a1 + 408) = v3;
  *(a1 + 416) = v4;
  *(a1 + 424) = v5;
  return result;
}

void TSTLayoutSpaceDrawSingleStroke(void *a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14)
{
  v26 = [a1 empty];
  if (a7 > 0.0 && (v26 & 1) == 0)
  {
    v48 = [a1 mutableCopy];
    [v48 setWidth:a7];
    v27 = [a1 solid];
    v28 = [a1 dontClearBackground];
    if (a8 < 1.0)
    {
      rect = a6;
      [objc_msgSend(a1 "color")];
      v30 = v29;
      v31 = [a1 color];
      v32 = 1.0 - a8;
      if (v30 >= 1.0)
      {
        v33 = [MEMORY[0x277D6C2A8] whiteColor];
      }

      else
      {
        v33 = [MEMORY[0x277D6C2A8] clearColor];
      }

      [v48 setColor:{objc_msgSend(v31, "newBlendedColorWithFraction:ofColor:", v33, v32)}];
      a6 = rect;
    }

    if (v28 & 1 | ((v27 & 1) == 0))
    {
      CGContextSaveGState(a2);
      if ((v27 & 1) == 0)
      {
        v34 = a7 * 0.5;
        if (a3 == a5)
        {
          v35 = a3 - v34;
          v50.origin.x = a11;
          v50.origin.y = a12;
          v50.size.width = a13;
          v50.size.height = a14;
          MinY = CGRectGetMinY(v50);
          v37 = v35;
          v38 = a4;
          v39 = a7;
          a7 = a6 - a4;
          a4 = MinY;
        }

        else
        {
          recta = a4 - v34;
          v39 = a5 - a3;
          v51.origin.x = a11;
          v51.origin.y = a12;
          v51.size.width = a13;
          v51.size.height = a14;
          MinX = CGRectGetMinX(v51);
          v38 = recta;
          v37 = a3;
          a3 = MinX;
        }

        v42 = v37;
        v43 = v39;
        v44 = a7;
        CGContextClipToRect(a2, *(&v38 - 1));
      }

      if (v28)
      {
        CGContextSetBlendMode(a2, kCGBlendModeNormal);
      }

      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, a3, a4);
      CGPathAddLineToPoint(Mutable, 0, a5, a6);
      [v48 paintPath:Mutable inContext:a2];
      CGPathRelease(Mutable);
      CGContextRestoreGState(a2);
    }

    else
    {
      v40 = CGPathCreateMutable();
      CGPathMoveToPoint(v40, 0, a3, a4);
      CGPathAddLineToPoint(v40, 0, a5, a6);
      [v48 paintPath:v40 inContext:a2];
      CGPathRelease(v40);
    }
  }
}

void TSTLayoutSpaceDrawStrokes(char *a1, unint64_t a2, unint64_t a3, int a4, CGContext *a5)
{
  v9 = [a1 masterLayout];
  CGContextSaveGState(a5);
  c = a5;
  CGContextSetBlendMode(a5, kCGBlendModeCopy);
  v10 = &TSTGridRangeEmpty;
  v56 = a1;
  if (a1)
  {
    v10 = (a1 + 24);
  }

  v11 = *v10;
  v12 = v10[1];
  v14 = v11 == -1 || v12 == -1 || v11 > v12;
  v15 = HIDWORD(v11);
  v16 = HIDWORD(v12);
  if (!v14 && v15 != 0xFFFFFFFF && v16 != 0xFFFFFFFF && v15 <= v16)
  {
    v12 = (v12 & 0xFFFFFFFF00000000 | (v12 + 1)) + 0x100000000;
  }

  v20 = -1;
  if (a2 == -1 || a3 == -1)
  {
    v21 = -1;
  }

  else
  {
    v21 = -1;
    if (a2 <= a3)
    {
      v22 = HIDWORD(a2);
      if (HIDWORD(a2) != 0xFFFFFFFF)
      {
        v23 = HIDWORD(a3);
        if (HIDWORD(a3) != 0xFFFFFFFF && v22 <= v23 && v11 != -1 && v12 != -1 && v11 <= v12)
        {
          v24 = HIDWORD(v11);
          if (HIDWORD(v11) != 0xFFFFFFFF)
          {
            v25 = HIDWORD(v12);
            if (HIDWORD(v12) != 0xFFFFFFFF && v24 <= v25)
            {
              v11 = a2 <= v11 ? v11 : a2;
              v12 = a3 >= v12 ? v12 : a3;
              if (v11 <= v12)
              {
                if (v23 >= v25)
                {
                  v23 = v25;
                }

                if (v22 <= v24)
                {
                  v22 = v24;
                }

                if (v22 <= v23)
                {
                  v21 = v12 | (v23 << 32);
                  v20 = v11 | (v22 << 32);
                }
              }
            }
          }
        }
      }
    }
  }

  v54 = v20;
  Range = TSTMasterLayoutGetRange([a1 masterLayout]);
  v27 = Range;
  if (BYTE2(Range) == 255)
  {
    v28 = -1;
  }

  else
  {
    v28 = BYTE2(Range);
  }

  if (WORD2(Range))
  {
    v29 = WORD2(Range) + v28 - 1;
  }

  else
  {
    v29 = -1;
  }

  if (Range == 0xFFFF)
  {
    v30 = -1;
  }

  else
  {
    v30 = Range;
  }

  v31 = ((HIDWORD(Range) << 16) - 0x100000000) >> 32;
  if (TSTMasterLayoutIsColumnHidden(v9, v28))
  {
    v32 = 0xFFFFFFFFLL;
  }

  else
  {
    v32 = v28;
  }

  PartitionFirstBodyColumn = TSTLayoutGetPartitionFirstBodyColumn([(TSTLayoutSpace *)v56 layout]);
  if (!TSTMasterLayoutGetTableNumberOfHeaderColumns(v9) || TSTMasterLayoutIsColumnHidden(v9, PartitionFirstBodyColumn))
  {
    PartitionFirstBodyColumn = -1;
  }

  v52 = v29;
  if (TSTMasterLayoutIsColumnHidden(v9, v29))
  {
    v34 = -1;
  }

  else
  {
    v34 = PartitionFirstBodyColumn;
  }

  v49 = v34;
  if (TSTMasterLayoutIsRowHidden(v9, v30))
  {
    v35 = 0xFFFFFFFFLL;
  }

  else
  {
    v35 = v30;
  }

  PartitionFirstBodyRow = TSTLayoutGetPartitionFirstBodyRow([(TSTLayoutSpace *)v56 layout]);
  if (!TSTMasterLayoutGetTableNumberOfHeaderRows(v9) || TSTMasterLayoutIsRowHidden(v9, PartitionFirstBodyRow))
  {
    PartitionFirstBodyRow = -1;
  }

  v50 = PartitionFirstBodyRow;
  v37 = v30 + v31;
  PartitionLastBodyRow = TSTLayoutGetPartitionLastBodyRow([(TSTLayoutSpace *)v56 layout]);
  if (!TSTMasterLayoutGetTableNumberOfFooterRows(v9) || !TSTMasterLayoutGetTableNumberOfNonHiddenFooterRows(v9) || TSTMasterLayoutIsRowHidden(v9, (PartitionLastBodyRow + 1)))
  {
    PartitionLastBodyRow = -1;
  }

  v38 = HIDWORD(v54);
  v39 = (v52 + 1);
  if (!HIWORD(v27))
  {
    v37 = -1;
  }

  if (TSTMasterLayoutIsRowHidden(v9, v37))
  {
    v40 = 0xFFFFFFFFLL;
  }

  else
  {
    v40 = (v37 + 1);
  }

  if (v54 <= v21)
  {
    v41 = 0;
    v46 = 0;
    v53 = 0;
    v42 = v54;
    do
    {
      if (v32 == v42)
      {
        v41 = 1;
      }

      else if (v39 == v42)
      {
        v53 = 1;
      }

      else if (v49 == v42)
      {
        v46 = 1;
      }

      else
      {
        TSTLayoutSpaceDrawColumnStroke(v56, v42, v54, v21, a4, c, 0);
      }

      v42 = (v42 + 1);
    }

    while (v42 <= v21);
  }

  else
  {
    v53 = 0;
    v46 = 0;
    v41 = 0;
  }

  if (v38 <= HIDWORD(v21))
  {
    v44 = 0;
    v43 = 0;
    v45 = 0;
    v51 = 0;
    do
    {
      if (v35 == v38)
      {
        v44 = 1;
      }

      else if (v40 == v38)
      {
        v51 = 1;
      }

      else if (v50 == v38)
      {
        v43 = 1;
      }

      else if (PartitionLastBodyRow == v38)
      {
        v45 = 1;
      }

      else
      {
        TSTLayoutSpaceDrawRowStroke(v56, v38, v54, v21, a4, c, 0);
      }

      v38 = (v38 + 1);
    }

    while (v38 <= HIDWORD(v21));
  }

  else
  {
    v51 = 0;
    v45 = 0;
    v43 = 0;
    v44 = 0;
  }

  if (v46)
  {
    TSTLayoutSpaceDrawColumnStroke(v56, v49, v54, v21, a4, c, [(TSTLayoutSpace *)v56 layoutSpaceType]- 1 < 2);
  }

  if (v43)
  {
    TSTLayoutSpaceDrawRowStroke(v56, v50, v54, v21, a4, c, ([(TSTLayoutSpace *)v56 layoutSpaceType]& 0xFFFFFFFD) == 1);
  }

  if (v45)
  {
    TSTLayoutSpaceDrawRowStroke(v56, PartitionLastBodyRow, v54, v21, a4, c, 0);
  }

  if (v41)
  {
    TSTLayoutSpaceDrawColumnStroke(v56, v32, v54, v21, a4, c, 0);
  }

  if (v53)
  {
    TSTLayoutSpaceDrawColumnStroke(v56, v39, v54, v21, a4, c, 0);
  }

  if (v44)
  {
    TSTLayoutSpaceDrawRowStroke(v56, v35, v54, v21, a4, c, 0);
  }

  if (v51)
  {
    TSTLayoutSpaceDrawRowStroke(v56, v40, v54, v21, a4, c, 0);
  }

  CGContextRestoreGState(c);
}

uint64_t TSTLayoutSpaceDrawColumnStroke(TSTLayoutSpace *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, CGContext *a6, int a7)
{
  v13 = [(TSTLayoutSpace *)a1 masterLayout];
  if ([(TSTLayoutSpace *)a1 drawPreventAntialias])
  {
    AlignedStrokeFrame = TSTLayoutSpaceGetAlignedStrokeFrame(a1);
  }

  else
  {
    AlignedStrokeFrame = TSTLayoutSpaceGetStrokeFrame(a1);
  }

  v66 = v15;
  v67 = AlignedStrokeFrame;
  v64 = v17;
  v65 = v16;
  v92.x = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, a2);
  v92.y = 0.0;
  LayoutPointForTablePoint = TSTLayoutSpaceGetLayoutPointForTablePoint(a1, v92);
  result = TSTMasterLayoutIsGridColumnHidden(v13, a2);
  if ((result & 1) == 0)
  {
    v20 = v13;
    v21 = HIDWORD(a3);
    v22 = HIDWORD(a4);
    v80 = v20;
    v79 = a2;
    MergedStrokesForGridColumn = TSTMasterLayoutGetMergedStrokesForGridColumn(v20, a2);
    v91[0] = 0;
    NextStroke = TSTStrokeRunArrayGetNextStroke(MergedStrokesForGridColumn, HIDWORD(a3), HIDWORD(a4), v91);
    if (NextStroke)
    {
      v25 = NextStroke;
      v26 = a2 - 1;
      if (!a2)
      {
        v26 = 0;
      }

      v78 = v26;
      v69 = MergedStrokesForGridColumn;
      v68 = a7;
      while (1)
      {
        v27 = *(v25 + 1);
        [v27 width];
        v29 = v28;
        v90 = v28;
        v30 = v25[1];
        v31 = *v25 <= v21 ? v21 : *v25;
        v32 = v30 >= v22 ? v22 : v30;
        v93.y = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, v31);
        v93.x = 0.0;
        TSTLayoutSpaceGetLayoutPointForTablePoint(a1, v93);
        v34 = v33;
        v88 = LayoutPointForTablePoint;
        v89 = v33;
        v94.y = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, v32);
        v94.x = 0.0;
        v35 = TSTLayoutSpaceGetLayoutPointForTablePoint(a1, v94);
        v37 = v36;
        v87.x = LayoutPointForTablePoint;
        v87.y = v36;
        v38 = [v27 empty];
        v39 = a7 ? 0 : v38;
        if ((v39 & 1) == 0 && v34 != v37)
        {
          break;
        }

LABEL_60:
        v25 = TSTStrokeRunArrayGetNextStroke(MergedStrokesForGridColumn, v21, v22, v91);
        if (!v25)
        {
          return TSTStrokeRunArrayUnlock(MergedStrokesForGridColumn);
        }
      }

      v82 = v29;
      if ([(TSTLayoutSpace *)a1 drawBlackAndWhite])
      {
        v40 = [v27 mutableCopy];
        [v40 setColor:{objc_msgSend(MEMORY[0x277D6C2A8], "blackColor")}];
      }

      else
      {
        if (([v27 solid] & 1) != 0 || -[TSTMasterLayout tableEnvironment](v80, "tableEnvironment") != 1)
        {
          v40 = 0;
          goto LABEL_27;
        }

        v40 = [v27 mutableCopy];
        v29 = 1.0;
        [v40 setWidth:1.0];
        v90 = 1.0;
      }

      v27 = v40;
LABEL_27:
      v85 = 0.0;
      TSTLayoutSpaceAlignStrokeWidth(a1, v29, &v86, &v85);
      v41 = MEMORY[0x277CBF3A8];
      v42.n128_u64[0] = *MEMORY[0x277CBF3A8];
      v43.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);
      v44.n128_f64[0] = LayoutPointForTablePoint;
      v97.origin.x = TSDRectWithOriginAndSize(v45, v44, v34, v42, v43);
      v46 = -v85;
      v98 = CGRectInset(v97, -v85, -v85);
      x = v98.origin.x;
      width = v98.size.width;
      y = v98.origin.y;
      rect2 = v98.size.height;
      v98.size.width = *v41;
      v98.size.height = v41[1];
      v98.origin.x = LayoutPointForTablePoint;
      v81 = v37;
      v99.origin.x = TSDRectWithOriginAndSize(v48, v98.origin, v37, v98.size, *&v98.size.height);
      v100 = CGRectInset(v99, v46, v46);
      v76 = v100.origin.y;
      v77 = v100.origin.x;
      height = v100.size.height;
      v75 = v100.size.width;
      ClipBoundingBox = CGContextGetClipBoundingBox(a6);
      v49 = ClipBoundingBox.origin.x;
      v50 = ClipBoundingBox.origin.y;
      v51 = ClipBoundingBox.size.width;
      v52 = ClipBoundingBox.size.height;
      v95.x = LayoutPointForTablePoint;
      v95.y = v34;
      if (CGRectContainsPoint(ClipBoundingBox, v95) || (v102.origin.x = v49, v102.origin.y = v50, v102.size.width = v51, v102.size.height = v52, v105.origin.x = x, v105.size.width = width, v105.origin.y = y, v105.size.height = rect2, v53 = 0.0, CGRectIntersectsRect(v102, v105)))
      {
        v53 = TSTMasterLayoutStrokeHeightOfGridRow(v80, v31, v78, v79 + 1);
      }

      v103.origin.x = v49;
      v103.origin.y = v50;
      v103.size.width = v51;
      v103.size.height = v52;
      v96.x = LayoutPointForTablePoint;
      v96.y = v81;
      if (CGRectContainsPoint(v103, v96) || (v104.origin.x = v49, v104.origin.y = v50, v104.size.width = v51, v104.size.height = v52, v106.origin.y = v76, v106.origin.x = v77, v106.size.height = height, v106.size.width = v75, v54 = 0.0, CGRectIntersectsRect(v104, v106)))
      {
        v54 = TSTMasterLayoutStrokeHeightOfGridRow(v80, v32, v78, v79 + 1);
      }

      a7 = v68;
      if (v53 > 0.0 && ((*(v25 + 24) >> 2) & 3u) - 1 <= 1)
      {
        v84 = 0.0;
        TSTLayoutSpaceAlignStrokeWidth(a1, v53, &v84, &v83);
        v55 = (*(v25 + 24) >> 2) & 3;
        if (v55 == 2)
        {
          v56 = v84;
          v57 = 0.5;
          goto LABEL_39;
        }

        if (v55 == 1)
        {
          v56 = v84;
          v57 = -0.5;
LABEL_39:
          v89 = v34 + v56 * v57;
        }
      }

      if (v54 <= 0.0 || ((*(v25 + 24) >> 4) & 3u) - 1 > 1)
      {
        goto LABEL_47;
      }

      v84 = 0.0;
      TSTLayoutSpaceAlignStrokeWidth(a1, v54, &v84, &v83);
      v58 = (*(v25 + 24) >> 4) & 3;
      if (v58 == 2)
      {
        v59 = v84;
        v60 = -0.5;
      }

      else
      {
        if (v58 != 1)
        {
          goto LABEL_47;
        }

        v59 = v84;
        v60 = 0.5;
      }

      v87.y = v81 + v59 * v60;
LABEL_47:
      if ([(TSTLayoutSpace *)a1 drawPreventAntialias])
      {
        TSTLayoutSpaceAlignStrokeCoordinates(a1, &v88, &v87, &v90);
        [(TSTLayoutSpace *)a1 viewScale];
        if (v61 < 0.330000013)
        {
          v90 = v82;
        }
      }

      if (a5)
      {
        [objc_msgSend(v27 "color")];
        if (v62 > 0.0)
        {
          CGContextSaveGState(a6);
          CGContextBeginPath(a6);
          CGContextMoveToPoint(a6, v88, v89);
          CGContextAddLineToPoint(a6, v87.x, v87.y);
          CGContextSetLineWidth(a6, v90);
          CGContextSetBlendMode(a6, kCGBlendModeClear);
          CGContextStrokePath(a6);
          CGContextRestoreGState(a6);
        }
      }

      else if (([v27 empty] & 1) == 0)
      {
        TSTLayoutSpaceDrawSingleStroke(v27, a6, v88, v89, v87.x, v87.y, v90, v82, v65, v63, v67, v66, v65, v64);
      }

      if (v68 == 1)
      {
        v88 = v88 + v90 * 0.5;
        v87.x = v90 * 0.5 + v87.x;
        TSTTableBadgeDrawVerticalShadow(a6, 1, v88, v89, v87.x, v87.y, a1->mTransformFromDevice.a + a1->mTransformFromDevice.c);
      }

      if (v40)
      {
      }

      MergedStrokesForGridColumn = v69;
      goto LABEL_60;
    }

    return TSTStrokeRunArrayUnlock(MergedStrokesForGridColumn);
  }

  return result;
}

uint64_t TSTLayoutSpaceDrawRowStroke(TSTLayoutSpace *a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, CGContext *a6, int a7)
{
  v13 = [(TSTLayoutSpace *)a1 masterLayout];
  if ([(TSTLayoutSpace *)a1 drawPreventAntialias])
  {
    AlignedStrokeFrame = TSTLayoutSpaceGetAlignedStrokeFrame(a1);
  }

  else
  {
    AlignedStrokeFrame = TSTLayoutSpaceGetStrokeFrame(a1);
  }

  v64 = v15;
  v65 = AlignedStrokeFrame;
  v62 = v17;
  v63 = v16;
  v89.y = TSTLayoutSpaceGetTableCoordinateForGridRow(a1, a2);
  v89.x = 0.0;
  TSTLayoutSpaceGetLayoutPointForTablePoint(a1, v89);
  v19 = v18;
  result = TSTMasterLayoutIsGridRowHidden(v13, a2);
  if ((result & 1) == 0)
  {
    v78 = v13;
    v77 = a2;
    MergedStrokesForGridRow = TSTMasterLayoutGetMergedStrokesForGridRow(v13, a2);
    v88[0] = 0;
    NextStroke = TSTStrokeRunArrayGetNextStroke(MergedStrokesForGridRow, a3, a4, v88);
    if (NextStroke)
    {
      v23 = NextStroke;
      v24 = a2 - 1;
      if (!a2)
      {
        v24 = 0;
      }

      v76 = v24;
      v67 = MergedStrokesForGridRow;
      v66 = a7;
      while (1)
      {
        v25 = *(v23 + 1);
        [v25 width];
        v27 = v26;
        v87 = v26;
        v28 = v23[1];
        v29 = *v23 <= a3 ? a3 : *v23;
        v30 = v28 >= a4 ? a4 : v28;
        v90.x = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, v29);
        v90.y = 0.0;
        LayoutPointForTablePoint = TSTLayoutSpaceGetLayoutPointForTablePoint(a1, v90);
        v85 = LayoutPointForTablePoint;
        v86 = v19;
        v91.x = TSTLayoutSpaceGetTableCoordinateForGridColumn(a1, v30);
        v91.y = 0.0;
        v32 = TSTLayoutSpaceGetLayoutPointForTablePoint(a1, v91);
        v84.x = v32;
        v84.y = v19;
        if ([(TSTLayoutSpace *)a1 layoutDirectionIsLeftToRight])
        {
          v33 = v32;
          *&v34 = LayoutPointForTablePoint;
        }

        else
        {
          v85 = v32;
          v84.x = LayoutPointForTablePoint;
          v33 = LayoutPointForTablePoint;
          *&v34 = v32;
        }

        v35 = [v25 empty];
        v36 = a7 ? 0 : v35;
        if ((v36 & 1) == 0 && v32 != LayoutPointForTablePoint)
        {
          break;
        }

LABEL_63:
        v23 = TSTStrokeRunArrayGetNextStroke(MergedStrokesForGridRow, a3, a4, v88);
        if (!v23)
        {
          return TSTStrokeRunArrayUnlock(MergedStrokesForGridRow);
        }
      }

      v79 = v27;
      if ([(TSTLayoutSpace *)a1 drawBlackAndWhite])
      {
        v37 = [v25 mutableCopy];
        [v37 setColor:{objc_msgSend(MEMORY[0x277D6C2A8], "blackColor")}];
      }

      else
      {
        if (([v25 solid] & 1) != 0 || -[TSTMasterLayout tableEnvironment](v78, "tableEnvironment") != 1)
        {
          v37 = 0;
          goto LABEL_30;
        }

        v37 = [v25 mutableCopy];
        v27 = 1.0;
        [v37 setWidth:1.0];
        v87 = 1.0;
      }

      v25 = v37;
LABEL_30:
      v82 = 0.0;
      TSTLayoutSpaceAlignStrokeWidth(a1, v27, &v83, &v82);
      v38 = MEMORY[0x277CBF3A8];
      v39.n128_u64[0] = *MEMORY[0x277CBF3A8];
      v40.n128_u64[0] = *(MEMORY[0x277CBF3A8] + 8);
      v41.n128_u64[0] = v34;
      v94.origin.x = TSDRectWithOriginAndSize(v42, v41, v19, v39, v40);
      v43 = -v82;
      v95 = CGRectInset(v94, -v82, -v82);
      v44 = *&v34;
      x = v95.origin.x;
      width = v95.size.width;
      y = v95.origin.y;
      rect2 = v95.size.height;
      v95.size.width = *v38;
      v95.size.height = v38[1];
      v46 = v33;
      v95.origin.x = v33;
      v96.origin.x = TSDRectWithOriginAndSize(v47, v95.origin, v19, v95.size, *&v95.size.height);
      v97 = CGRectInset(v96, v43, v43);
      v74 = v97.origin.y;
      v75 = v97.origin.x;
      height = v97.size.height;
      v73 = v97.size.width;
      ClipBoundingBox = CGContextGetClipBoundingBox(a6);
      v48 = ClipBoundingBox.origin.x;
      v49 = ClipBoundingBox.origin.y;
      v50 = ClipBoundingBox.size.width;
      v51 = ClipBoundingBox.size.height;
      v92.x = v44;
      v92.y = v19;
      if (CGRectContainsPoint(ClipBoundingBox, v92) || (v99.origin.x = v48, v99.origin.y = v49, v99.size.width = v50, v99.size.height = v51, v102.origin.x = x, v102.size.width = width, v102.origin.y = y, v102.size.height = rect2, v52 = 0.0, CGRectIntersectsRect(v99, v102)))
      {
        v52 = TSTMasterLayoutStrokeWidthOfGridColumn(v78, v29, v76, v77 + 1);
      }

      v100.origin.x = v48;
      v100.origin.y = v49;
      v100.size.width = v50;
      v100.size.height = v51;
      v93.x = v46;
      v93.y = v19;
      if (CGRectContainsPoint(v100, v93) || (v101.origin.x = v48, v101.origin.y = v49, v101.size.width = v50, v101.size.height = v51, v103.origin.y = v74, v103.origin.x = v75, v103.size.height = height, v103.size.width = v73, v53 = 0.0, CGRectIntersectsRect(v101, v103)))
      {
        v53 = TSTMasterLayoutStrokeWidthOfGridColumn(v78, v30, v76, v77 + 1);
      }

      a7 = v66;
      if (v52 > 0.0 && ((*(v23 + 24) >> 2) & 3u) - 1 <= 1)
      {
        v81 = 0.0;
        TSTLayoutSpaceAlignStrokeWidth(a1, v52, &v81, &v80);
        v54 = (*(v23 + 24) >> 2) & 3;
        if (v54 == 2)
        {
          v55 = v44 + v81 * 0.5;
          goto LABEL_42;
        }

        if (v54 == 1)
        {
          v55 = v44 + v81 * -0.5;
LABEL_42:
          v85 = v55;
        }
      }

      if (v53 <= 0.0 || ((*(v23 + 24) >> 4) & 3u) - 1 > 1)
      {
        goto LABEL_50;
      }

      v81 = 0.0;
      TSTLayoutSpaceAlignStrokeWidth(a1, v53, &v81, &v80);
      v56 = (*(v23 + 24) >> 4) & 3;
      if (v56 == 2)
      {
        v57 = v81;
        v58 = -0.5;
      }

      else
      {
        if (v56 != 1)
        {
          goto LABEL_50;
        }

        v57 = v81;
        v58 = 0.5;
      }

      v84.x = v46 + v57 * v58;
LABEL_50:
      if ([(TSTLayoutSpace *)a1 drawPreventAntialias])
      {
        TSTLayoutSpaceAlignStrokeCoordinates(a1, &v85, &v84, &v87);
        [(TSTLayoutSpace *)a1 viewScale];
        if (v59 < 0.330000013)
        {
          v87 = v79;
        }
      }

      if (a5)
      {
        [objc_msgSend(v25 "color")];
        if (v60 > 0.0)
        {
          CGContextSaveGState(a6);
          CGContextBeginPath(a6);
          CGContextMoveToPoint(a6, v85, v86);
          CGContextAddLineToPoint(a6, v84.x, v84.y);
          CGContextSetLineWidth(a6, v87);
          CGContextSetBlendMode(a6, kCGBlendModeClear);
          CGContextStrokePath(a6);
          CGContextRestoreGState(a6);
        }
      }

      else if (([v25 empty] & 1) == 0)
      {
        TSTLayoutSpaceDrawSingleStroke(v25, a6, v85, v86, v84.x, v84.y, v87, v79, v63, v61, v65, v64, v63, v62);
      }

      if (v66 == 1)
      {
        v86 = v86 + v87 * 0.5;
        v84.y = v87 * 0.5 + v84.y;
        TSTTableBadgeDrawHorizontalShadow(a6, 1, v85, v86, v84.x, v84.y, a1->mTransformFromDevice.a + a1->mTransformFromDevice.c);
      }

      if (v37)
      {
      }

      MergedStrokesForGridRow = v67;
      goto LABEL_63;
    }

    return TSTStrokeRunArrayUnlock(MergedStrokesForGridRow);
  }

  return result;
}

uint64_t TSTLayoutSpaceGetBoundsGridRange(TSTLayoutSpace *a1)
{
  TSTLayoutSpaceGetHeaderColumnsGridRange(a1);
  TSTLayoutSpaceGetHeaderRowsGridRange(a1);
  return 0;
}

uint64_t TSTLayoutSpaceCreateRowCoordinates(void *a1, unint64_t a2, unint64_t a3, void *a4, char *a5)
{
  v10 = [TSTCoordinateArray alloc];
  v11 = HIDWORD(a3);
  v12 = HIDWORD(a2);
  if (a2 == -1 || a3 == -1 || a2 > a3 || (v12 <= HIDWORD(a3) ? (v13 = v12 == 0xFFFFFFFF) : (v13 = 1), !v13 ? (v14 = v11 == 0xFFFFFFFF) : (v14 = 1), v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = HIDWORD(a3) - HIDWORD(a2) + 1;
  }

  v16 = [(TSTCoordinateArray *)v10 initWithCount:(v15 + 1) atOffset:HIDWORD(a2)];
  v17 = [a1 layout];
  v26 = 0;
  if ([a1 headerRowsRepeat] && (v18 = objc_msgSend(a1, "isMain"), v12) && (v18 & 1) != 0 || (v19 = 0.0, objc_msgSend(a1, "headerRowsRepeat")) && objc_msgSend(a1, "layoutSpaceType") == 5)
  {
    v20 = TSTLayoutGetPartitionHeaderRowsCellRange(v17) >> 48;
    v19 = 0.0;
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v19 = v19 + TSTLayoutHeightOfRow(v17, i, &v26, 1, 1);
      }
    }
  }

  if (TSTMasterLayoutGetTableNumberOfRows([v17 masterLayout]) - 1 <= v11)
  {
    LODWORD(v11) = TSTMasterLayoutGetTableNumberOfRows([v17 masterLayout]) - 1;
  }

  for (; v12 <= v11; LODWORD(v12) = v12 + 1)
  {
    TSTCoordinateArraySetCoordinate(v16, v12, v19);
    v22 = TSTLayoutHeightOfRow(v17, v12, &v26, 1, 1);
    if (v22 == 0.0)
    {
      TSTCoordinateArraySetIndexHidden(v16, v12);
    }

    v19 = v19 + v22;
  }

  v23 = TSTCoordinateArraySetCoordinate(v16, v12, v19);
  if (a5)
  {
    if (a4)
    {
      v24 = [a4 isEqual:{v16, v23}] ^ 1;
    }

    else
    {
      v24 = 1;
    }

    *a5 = v24;
  }

  return v16;
}

uint64_t TSTLayoutSpaceCreateColumnCoordinates(void *a1, unint64_t a2, unint64_t a3, void *a4, char *a5)
{
  v10 = [TSTCoordinateArray alloc];
  if (a2 == -1 || a3 == -1 || a3 < a2 || (HIDWORD(a2) <= HIDWORD(a3) ? (v11 = HIDWORD(a2) == 0xFFFFFFFF) : (v11 = 1), !v11 ? (v12 = HIDWORD(a3) == 0xFFFFFFFF) : (v12 = 1), v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 - a2 + 1;
  }

  v14 = [(TSTCoordinateArray *)v10 initWithCount:(v13 + 1) atOffset:a2];
  v15 = [a1 layout];
  v25 = 0;
  if ([a1 headerColumnsRepeat] && (v16 = objc_msgSend(a1, "isMain"), a2) && (v16 & 1) != 0 || (v17 = 0.0, objc_msgSend(a1, "headerColumnsRepeat")) && objc_msgSend(a1, "layoutSpaceType") == 6)
  {
    PartitionHeaderColumnsCellRange = TSTLayoutGetPartitionHeaderColumnsCellRange(v15);
    v19 = WORD2(PartitionHeaderColumnsCellRange);
    if (WORD2(PartitionHeaderColumnsCellRange))
    {
      v20 = 0;
      v17 = 0.0;
      do
      {
        v17 = v17 + private_LayoutWidthOfColumn(v15, v20++, 0, &v25);
      }

      while (v19 > v20);
    }

    else
    {
      v17 = 0.0;
    }
  }

  if (TSTMasterLayoutGetTableNumberOfColumns([v15 masterLayout]) - 1 <= a3)
  {
    LODWORD(a3) = TSTMasterLayoutGetTableNumberOfColumns([v15 masterLayout]) - 1;
  }

  for (; a2 <= a3; LODWORD(a2) = a2 + 1)
  {
    TSTCoordinateArraySetCoordinate(v14, a2, v17);
    v21 = private_LayoutWidthOfColumn(v15, a2, 0, &v25);
    if (v21 == 0.0)
    {
      TSTCoordinateArraySetIndexHidden(v14, a2);
    }

    v17 = v17 + v21;
  }

  v22 = TSTCoordinateArraySetCoordinate(v14, a2, v17);
  if (a5)
  {
    if (a4)
    {
      v23 = [a4 isEqual:{v14, v22}] ^ 1;
    }

    else
    {
      v23 = 1;
    }

    *a5 = v23;
  }

  return v14;
}

$3C36844D3994842D9102894F8152D7DE TSTLayoutSpaceGetExtendedBodyGridRange(TSTLayoutSpace *a1)
{
  topLeft = a1->mGridRange.topLeft;
  TSTLayoutSpaceGetFooterRowsGridRange(a1);
  return topLeft;
}

double TSTLayoutSpaceGetLayoutOffsetForGridPoint(TSTLayoutSpace *a1, unint64_t a2)
{
  v4 = *MEMORY[0x277CBF348];
  v5 = [(TSTLayoutSpace *)a1 layout];
  if (a2 > 0xFFFFFFFEFFFFFFFFLL || a2 == 0xFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  v6 = HIDWORD(a2);
  PartitionNonHeaderRowCellRange = TSTLayoutGetPartitionNonHeaderRowCellRange(v5);
  if (BYTE2(PartitionNonHeaderRowCellRange) == 255)
  {
    v8 = -1;
  }

  else
  {
    v8 = BYTE2(PartitionNonHeaderRowCellRange);
  }

  if (PartitionNonHeaderRowCellRange == 0xFFFF)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = PartitionNonHeaderRowCellRange;
  }

  if (v8 <= a2)
  {
    if (v6 < v9 && WORD2(PartitionNonHeaderRowCellRange) && WORD2(PartitionNonHeaderRowCellRange) + v8 - 1 < a2)
    {
      if (![(TSTLayoutSpace *)a1 layoutDirectionIsLeftToRight])
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (v6 < v9)
    {
LABEL_19:
      BodyTranslationX = TSTLayoutSpaceGetBodyTranslationX(a1);
      v4 = v4 - (BodyTranslationX - TSTLayoutSpaceGetHeaderColumnsWidth(a1));
      goto LABEL_22;
    }

LABEL_20:
    v11 = TSTLayoutSpaceGetBodyTranslationX(a1);
    v4 = v4 - (v11 - TSTLayoutSpaceGetHeaderColumnsWidth(a1));
LABEL_21:
    TSTLayoutSpaceGetBodyTranslationY(a1);
    TSTLayoutSpaceGetHeaderRowsHeight(a1);
    goto LABEL_22;
  }

  if (v6 >= v9 || ![(TSTLayoutSpace *)a1 layoutDirectionIsLeftToRight])
  {
    goto LABEL_21;
  }

LABEL_22:
  [(TSTLayoutSpace *)a1 tableOffset];
  return v4 + v12;
}

double TSTLayoutSpaceGetBodyTranslationX(TSTLayoutSpace *a1)
{
  BodyGridRange = TSTLayoutSpaceGetBodyGridRange(a1);
  if ([(TSTLayoutSpace *)a1 headerColumnsRepeat]&& ([(TSTLayoutSpace *)a1 isMain]|| [(TSTLayoutSpace *)a1 layoutSpaceType]== 6))
  {
    return 0.0;
  }

  return TSTLayoutSpaceGetRawTableCoordinateForGridColumn(a1, BodyGridRange);
}

double TSTLayoutSpaceGetBodyTranslationY(TSTLayoutSpace *a1)
{
  BodyGridRange = TSTLayoutSpaceGetBodyGridRange(a1);
  if ([(TSTLayoutSpace *)a1 headerRowsRepeat]&& ([(TSTLayoutSpace *)a1 isMain]|| [(TSTLayoutSpace *)a1 layoutSpaceType]== 5))
  {
    return 0.0;
  }

  return TSTLayoutSpaceGetTableCoordinateForGridRow(a1, HIDWORD(BodyGridRange));
}

uint64_t TSTLayoutSpaceGetGridColumnForTableCoordinate(TSTLayoutSpace *a1, double a2)
{
  if (!a1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTGridColumn TSTLayoutSpaceGetGridColumnForTableCoordinate(TSTLayoutSpace *, CGFloat)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3230, @"space should not be NULL"}];
  }

  if (!a1->mBodyColumnCoordinates && !a1->mHeaderRowColumnCoordinates)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTGridColumn TSTLayoutSpaceGetGridColumnForTableCoordinate(TSTLayoutSpace *, CGFloat)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3233, @"Body column coordinates and header row column coordinates have not been filled."}];
  }

  mHeaderRowColumnCoordinates = a1->mHeaderRowColumnCoordinates;
  if (!mHeaderRowColumnCoordinates || (result = TSTCoordinateArrayLookup(mHeaderRowColumnCoordinates, a2), result == -1))
  {
    mBodyColumnCoordinates = a1->mBodyColumnCoordinates;

    return TSTCoordinateArrayLookup(mBodyColumnCoordinates, a2);
  }

  return result;
}

uint64_t TSTLayoutSpaceGetGridRowForTableCoordinate(TSTLayoutSpace *a1, double a2)
{
  if (!a1)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTGridRow TSTLayoutSpaceGetGridRowForTableCoordinate(TSTLayoutSpace *, CGFloat)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3252, @"space should not be NULL"}];
  }

  if (!a1->mBodyRowCoordinates && !a1->mHeaderColumnRowCoordinates)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTGridRow TSTLayoutSpaceGetGridRowForTableCoordinate(TSTLayoutSpace *, CGFloat)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTLayoutSpace.mm"), 3254, @"Body row coordinates and header column row coordinates have not been filled."}];
  }

  mHeaderColumnRowCoordinates = a1->mHeaderColumnRowCoordinates;
  if (!mHeaderColumnRowCoordinates || (result = TSTCoordinateArrayLookup(mHeaderColumnRowCoordinates, a2), result == -1))
  {
    mBodyRowCoordinates = a1->mBodyRowCoordinates;

    return TSTCoordinateArrayLookup(mBodyRowCoordinates, a2);
  }

  return result;
}

double TSTLayoutSpaceGetAlignFrameSpec(TSTLayoutSpace *a1, double *a2)
{
  v14 = *a2;
  v13.x = *&v14 + 1.0;
  v13.y = *(&v14 + 1);
  TSTLayoutSpaceAlignStrokeCoordinates(a1, &v14, &v13, a2 + 8);
  v12 = *a2;
  *&v11.x = v12;
  v11.y = *(&v12 + 1) + 1.0;
  TSTLayoutSpaceAlignStrokeCoordinates(a1, &v12, &v11, a2 + 10);
  v10 = *(a2 + 1);
  v9.x = *&v10 + 1.0;
  v9.y = *(&v10 + 1);
  TSTLayoutSpaceAlignStrokeCoordinates(a1, &v10, &v9, a2 + 9);
  v8 = *(a2 + 2);
  *&v7.x = v8;
  v7.y = *(&v8 + 1) + 1.0;
  TSTLayoutSpaceAlignStrokeCoordinates(a1, &v8, &v7, a2 + 11);
  v4 = *(&v14 + 1);
  *a2 = v12;
  *(a2 + 1) = v4;
  result = *&v8;
  v6 = *(&v10 + 1);
  *(a2 + 6) = v8;
  *(a2 + 7) = v6;
  return result;
}

uint64_t std::__tree<TSUColumnRowRect,TSTCellRangeRowMajorLess,std::allocator<TSUColumnRowRect>>::__emplace_unique_key_args<TSUColumnRowRect,TSUColumnRowRect const&>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<TSUColumnRowRect,TSTCellRangeRowMajorLess,std::allocator<TSUColumnRowRect>>::__find_equal<TSUColumnRowRect>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<TSUColumnRowRect,TSTCellRangeRowMajorLess,std::allocator<TSUColumnRowRect>>::__find_equal<TSUColumnRowRect>(uint64_t a1, void *a2, unsigned __int16 *a3)
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
        v9 = *(v4 + 13);
        v10 = *(v8 + 28);
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

uint64_t std::__tree<TSUColumnRowRect,TSTCellRangeColumnMajorLess,std::allocator<TSUColumnRowRect>>::__emplace_unique_key_args<TSUColumnRowRect,TSUColumnRowRect const&>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<TSUColumnRowRect,TSTCellRangeColumnMajorLess,std::allocator<TSUColumnRowRect>>::__find_equal<TSUColumnRowRect>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<TSUColumnRowRect,TSTCellRangeColumnMajorLess,std::allocator<TSUColumnRowRect>>::__find_equal<TSUColumnRowRect>(uint64_t a1, void *a2, unsigned __int16 *a3)
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
        v9 = *(v4 + 28);
        v10 = *(v8 + 13);
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

void TSTTableInitDefaultHeightAndWidth(TSTTableInfo *a1, double a2, double a3)
{
  v6 = [(TSTTableInfo *)a1 tableModel];
  v7 = [(TSTTableModel *)v6 numberOfRows];
  v8 = a3 / [(TSTTableModel *)v6 numberOfColumns];
  TSTTableComputeDefaultFontHeight(v6, 0);
  v10 = v9;
  if (v8 < 8.0)
  {
    v8 = 8.0;
  }

  TSTTableSetDefaultRowHeight(v6, v9);
  TSTTableSetDefaultColumnWidth(v6, v8);
  if (a2 / v7 <= v10)
  {
    v11 = 1;
  }

  else
  {
    v10 = a2 / v7;
    v11 = v7 == 0;
  }

  if (!v11)
  {
    v12 = 0;
    do
    {
      TSTTableSetHeightOfRow(v6, v12++, v10);
    }

    while (v7 > v12);
  }

  if (v10 * v7 != a2)
  {
    v13 = [TSDInfoGeometry alloc];
    [(TSDInfoGeometry *)[(TSDDrawableInfo *)a1 geometry] position];
    v14 = [TSDInfoGeometry initWithPosition:v13 size:"initWithPosition:size:"];
    [(TSTTableInfo *)a1 setGeometry:v14 resizeInternal:0];
  }
}

BOOL TSTLayoutSetTabsVisible(uint64_t a1, int a2)
{
  v2 = *(a1 + 385);
  if (v2 != a2)
  {
    *(a1 + 385) = a2;
  }

  return v2 != a2;
}

uint64_t TSTLayoutSetPartitionRange(void *a1)
{
  RangeForHint = TSTMasterLayoutGetRangeForHint([a1 masterLayout], objc_msgSend(a1, "layoutHint"));
  v3 = RangeForHint;
  if (BYTE2(RangeForHint) == 255)
  {
    v4 = -1;
  }

  else
  {
    v4 = BYTE2(RangeForHint);
  }

  if (WORD2(RangeForHint))
  {
    v5 = WORD2(RangeForHint) + v4 - 1;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v6 = RangeForHint;
  v7 = [objc_msgSend(a1 "spaceBundle")];
  if (v3 == 0xFFFF)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v6;
  }

  v9 = v4 | (v8 << 32);
  v10 = (((v8 << 32) + (HIDWORD(v3) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(v3))
  {
    v10 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutSpaceSetGridRange(v7, v9, v10 | v5);
}

uint64_t TSTLayoutInvalidateLayoutSpaceTableOffsets(void *a1)
{
  v1 = [a1 spaceBundle];

  return [v1 invalidateTableOffsets];
}

double TSTLayoutGetRenderingFrame(void *a1, void *a2)
{
  v4 = [objc_msgSend(a1 "spaceBundle")];
  v5 = v4;
  if (!a2)
  {
    a2 = v4;
  }

  v18.origin.x = TSTLayoutSpaceGetStrokeFrame(a2);
  v19 = CGRectInset(v18, -1.0, -1.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  TSTLayoutGetTableNameHeight(a1);
  v11 = y - v10;
  if (v10 <= 0.0)
  {
    v12 = height;
  }

  else
  {
    v12 = v10 + height;
  }

  if (v10 <= 0.0)
  {
    v11 = y;
  }

  v13 = x;
  v14 = width;
  *&v15 = CGRectIntegral(*(&v11 - 1));
  if ([a2 isFrozen])
  {
    RenderingFrame = TSTLayoutGetRenderingFrame(a1, v5);
    if (RenderingFrame < v15)
    {
      return v15 - (v15 - RenderingFrame);
    }
  }

  return v15;
}

uint64_t TSTLayoutGetSpace(void *a1)
{
  v1 = [a1 spaceBundle];

  return [v1 space];
}

uint64_t TSTLayoutGetTableNameHeight(uint64_t a1)
{
  if ((*(a1 + 387) & 1) == 0)
  {
    return [*(a1 + 304) invalidateTableNameHeight];
  }

  [objc_msgSend(a1 "masterLayout")];
  return [objc_msgSend(objc_msgSend(a1 "spaceBundle")];
}

uint64_t TSTLayoutInvalidateLayoutSpaceCoordinates(void *a1)
{
  v1 = [a1 spaceBundle];

  return [v1 invalidateCoordinates];
}

double TSTLayoutGetStrokeFrame(void *a1)
{
  v1 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetStrokeFrame(v1);
}

uint64_t TSTLayoutUpdateTransformToCanvas(void *a1)
{
  [a1 frameInRoot];
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeTranslation(&v8, v2, v3);
  v4 = [a1 spaceBundle];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __TSTLayoutUpdateTransformToCanvas_block_invoke;
  v6[3] = &__block_descriptor_80_e24_B16__0__TSTLayoutSpace_8l;
  v7 = v8;
  return [v4 performActionOnEachLayoutSpace:v6];
}

uint64_t TSTLayoutSetNeedsDisplayInCanvasRect(TSTLayout *a1, CGRect a2)
{
  LayoutRectForCanvasRect = TSTLayoutSpaceGetLayoutRectForCanvasRect([(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space], a2.origin.x, a2.origin.y, a2.size.width, a2.size.height);

  return [(TSTLayout *)a1 setNeedsDisplayInRect:LayoutRectForCanvasRect];
}

void *TSTLayoutInvalidateCellRangeAndFittingRange(void *a1)
{
  [objc_msgSend(a1 "spaceBundle")];
  [objc_msgSend(a1 "spaceBundle")];
  [objc_msgSend(a1 "spaceBundle")];
  [a1 invalidateChildren];
  [a1 invalidate];
  [objc_msgSend(objc_msgSend(a1 "masterLayout")];
  result = [a1 containedTextEditingLayout];
  if (result)
  {

    return [result invalidateSize];
  }

  return result;
}

uint64_t TSTLayoutInvalidateRows(void *a1)
{
  [objc_msgSend(a1 "spaceBundle")];
  [a1 invalidateChildren];

  return [a1 invalidate];
}

uint64_t TSTLayoutInvalidateCell(void *a1, unsigned int a2)
{
  v4 = [objc_msgSend(a1 "masterLayout")];
  HIDWORD(v5) = a2;
  LODWORD(v5) = a2;
  [v4 removeObjectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", (v5 >> 16) & 0xFFFF00FF)}];
  [objc_msgSend(a1 "masterLayout")];
  [objc_msgSend(a1 "spaceBundle")];
  [objc_msgSend(a1 "spaceBundle")];
  [a1 invalidateChildren];

  return [a1 invalidate];
}

uint64_t TSTLayoutInvalidateColumns(void *a1)
{
  [objc_msgSend(a1 "spaceBundle")];
  [objc_msgSend(a1 "spaceBundle")];
  [a1 invalidateChildren];

  return [a1 invalidate];
}

uint64_t TSTLayoutInvalidateContentRange(void *a1, unint64_t a2)
{
  v4 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v5 = -1;
  }

  else
  {
    v5 = BYTE2(a2);
  }

  v6 = a2;
  if (WORD2(a2))
  {
    v7 = WORD2(a2) + v5 - 1;
  }

  else
  {
    v7 = -1;
  }

  if (a2 == 0xFFFF)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = a2;
  }

  v9 = ((((HIDWORD(a2) << 16) - 0x100000000) >> 32) + v8);
  GridRange = TSTLayoutSpaceGetGridRange([objc_msgSend(a1 "spaceBundle")]);
  v12 = 0xFFFFFFFFLL;
  if (HIWORD(a2))
  {
    v12 = v9;
  }

  v13 = -1;
  if (v4 == 255 || v7 == -1)
  {
    v14 = -1;
  }

  else
  {
    v14 = -1;
    if (v5 <= v7 && v6 != 0xFFFF && v12 != 0xFFFFFFFF && v12 >= v8 && GridRange != -1 && v11 != -1 && GridRange <= v11)
    {
      v15 = HIDWORD(GridRange);
      if (HIDWORD(GridRange) != 0xFFFFFFFF)
      {
        v16 = HIDWORD(v11);
        if (HIDWORD(v11) != 0xFFFFFFFF && v15 <= v16)
        {
          v17 = v4 <= GridRange ? GridRange : v4;
          v18 = v7 >= v11 ? v11 : v7;
          if (v17 <= v18)
          {
            if (v12 < v16)
            {
              v16 = v12;
            }

            if (v8 <= v15)
            {
              v19 = HIDWORD(GridRange);
            }

            else
            {
              v19 = v8;
            }

            if (v19 <= v16)
            {
              v14 = v18 | (v16 << 32);
              v13 = v17 | (v19 << 32);
            }
          }
        }
      }
    }
  }

  FrameForGridRange = TSTLayoutSpaceGetFrameForGridRange([objc_msgSend(a1 "spaceBundle")], v13, v14);

  return [a1 setNeedsDisplayInRect:FrameForGridRange];
}

double private_LayoutWidthOfColumn(void *a1, uint64_t a2, char a3, _BYTE *a4)
{
  v7 = [a1 masterLayout];

  return TSTMasterLayoutWidthOfColumn(v7, a2, a3, a4, 1);
}

uint64_t TSTLayoutGetPartitionRange(void *a1)
{
  v2 = [a1 masterLayout];
  v3 = [a1 layoutHint];

  return TSTMasterLayoutGetRangeForHint(v2, v3);
}

BOOL TSTLayoutExtendedPartitionRangeContainsCellID(void *a1, int a2)
{
  RangeForHint = TSTMasterLayoutGetRangeForHint([a1 masterLayout], objc_msgSend(a1, "layoutHint"));
  if (HIWORD(RangeForHint) && (RangeForHint & 0xFFFF00000000) != 0 && RangeForHint <= a2 && (RangeForHint + HIWORD(RangeForHint) - 1) >= a2 && BYTE2(a2) >= BYTE2(RangeForHint) && BYTE2(a2) <= (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1))
  {
    return 1;
  }

  PartitionHeaderColumnsCellRange = TSTLayoutGetPartitionHeaderColumnsCellRange(a1);
  if (HIWORD(PartitionHeaderColumnsCellRange))
  {
    if ((PartitionHeaderColumnsCellRange & 0xFFFF00000000) != 0 && PartitionHeaderColumnsCellRange <= a2 && (PartitionHeaderColumnsCellRange + HIWORD(PartitionHeaderColumnsCellRange) - 1) >= a2 && BYTE2(a2) >= BYTE2(PartitionHeaderColumnsCellRange) && BYTE2(a2) <= (BYTE4(PartitionHeaderColumnsCellRange) + BYTE2(PartitionHeaderColumnsCellRange) - 1))
    {
      return 1;
    }
  }

  PartitionHeaderRowsCellRange = TSTLayoutGetPartitionHeaderRowsCellRange(a1);
  if (HIWORD(PartitionHeaderRowsCellRange))
  {
    if ((PartitionHeaderRowsCellRange & 0xFFFF00000000) != 0 && PartitionHeaderRowsCellRange <= a2 && (PartitionHeaderRowsCellRange + HIWORD(PartitionHeaderRowsCellRange) - 1) >= a2 && BYTE2(a2) >= BYTE2(PartitionHeaderRowsCellRange) && BYTE2(a2) <= (BYTE4(PartitionHeaderRowsCellRange) + BYTE2(PartitionHeaderRowsCellRange) - 1))
    {
      return 1;
    }
  }

  PartitionHeaderCornerCellRange = TSTLayoutGetPartitionHeaderCornerCellRange(a1);
  v8 = 0;
  if (HIWORD(PartitionHeaderCornerCellRange) && (PartitionHeaderCornerCellRange & 0xFFFF00000000) != 0)
  {
    return PartitionHeaderCornerCellRange <= a2 && (PartitionHeaderCornerCellRange + HIWORD(PartitionHeaderCornerCellRange) - 1) >= a2 && BYTE2(a2) >= BYTE2(PartitionHeaderCornerCellRange) && BYTE2(a2) <= (BYTE4(PartitionHeaderCornerCellRange) + BYTE2(PartitionHeaderCornerCellRange) - 1);
  }

  return v8;
}

unint64_t TSTLayoutGetPartitionHeaderColumnsCellRange(void *a1)
{
  v2 = [a1 masterLayout];
  TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns(v2);
  if (!TableNumberOfHeaderColumns)
  {
    LOBYTE(v5) = 0;
LABEL_10:
    v6 = 0;
    v7 = -1;
    v9 = 16711680;
    return (TableNumberOfHeaderColumns << 32) | (v6 << 48) | (v5 << 24) | v9 | v7;
  }

  if (([objc_msgSend(a1 "layoutHint")] & 0xFF0000) != 0 && !objc_msgSend(objc_msgSend(a1, "tableModel"), "repeatingHeaderColumnsEnabled"))
  {
    LOBYTE(v5) = 0;
    TableNumberOfHeaderColumns = 0;
    goto LABEL_10;
  }

  RangeForHint = TSTMasterLayoutGetRangeForHint(v2, [a1 layoutHint]);
  v5 = RangeForHint >> 24;
  v6 = HIWORD(RangeForHint);
  v7 = RangeForHint;
  if (RangeForHint || ![objc_msgSend(objc_msgSend(a1 "spaceBundle")])
  {
    v9 = 0;
  }

  else
  {
    TableNumberOfHeaderRows = TSTMasterLayoutGetTableNumberOfHeaderRows(v2);
    v7 = TableNumberOfHeaderRows;
    v9 = 0;
    v6 = (v6 - TableNumberOfHeaderRows);
  }

  return (TableNumberOfHeaderColumns << 32) | (v6 << 48) | (v5 << 24) | v9 | v7;
}

unint64_t TSTLayoutGetPartitionHeaderRowsCellRange(void *a1)
{
  v2 = [a1 masterLayout];
  TableNumberOfHeaderRows = TSTMasterLayoutGetTableNumberOfHeaderRows(v2);
  if (!TableNumberOfHeaderRows)
  {
    LOBYTE(v6) = 0;
    LOWORD(v7) = 0;
LABEL_10:
    LOBYTE(v5) = -1;
    v9 = 0xFFFFLL;
    return (v7 << 32) | (TableNumberOfHeaderRows << 48) | (v6 << 24) | (v5 << 16) | v9;
  }

  if ([objc_msgSend(a1 "layoutHint")] && !objc_msgSend(objc_msgSend(a1, "tableModel"), "repeatingHeaderRowsEnabled"))
  {
    LOBYTE(v6) = 0;
    LOWORD(v7) = 0;
    TableNumberOfHeaderRows = 0;
    goto LABEL_10;
  }

  RangeForHint = TSTMasterLayoutGetRangeForHint(v2, [a1 layoutHint]);
  v5 = RangeForHint >> 16;
  v6 = RangeForHint >> 24;
  v7 = HIDWORD(RangeForHint);
  if ((RangeForHint & 0xFF0000) != 0 || ![objc_msgSend(objc_msgSend(a1 "spaceBundle")])
  {
    v9 = 0;
  }

  else
  {
    TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns(v2);
    v9 = 0;
    LOBYTE(v5) = TableNumberOfHeaderColumns;
    LOWORD(v7) = v7 - TableNumberOfHeaderColumns;
  }

  return (v7 << 32) | (TableNumberOfHeaderRows << 48) | (v6 << 24) | (v5 << 16) | v9;
}

uint64_t TSTLayoutGetPartitionHeaderCornerCellRange(void *a1)
{
  PartitionHeaderRowsCellRange = TSTLayoutGetPartitionHeaderRowsCellRange(a1);
  PartitionHeaderColumnsCellRange = TSTLayoutGetPartitionHeaderColumnsCellRange(a1);
  v4 = 0;
  v5 = 0xFFFFFFLL;
  if (PartitionHeaderRowsCellRange == 0xFFFF)
  {
    goto LABEL_23;
  }

  v6 = 0;
  if ((PartitionHeaderRowsCellRange & 0xFF0000) == 0xFF0000)
  {
    return v6 | v4 | v5;
  }

  v4 = 0;
  v5 = 0xFFFFFFLL;
  if (!HIWORD(PartitionHeaderRowsCellRange))
  {
LABEL_23:
    v6 = 0;
    return v6 | v4 | v5;
  }

  v6 = 0;
  if ((PartitionHeaderRowsCellRange & 0xFFFF00000000) != 0)
  {
    v5 = 0xFFFFFFLL;
    if (PartitionHeaderColumnsCellRange == 0xFFFF)
    {
      v4 = 0;
      v6 = 0;
    }

    else
    {
      v7 = PartitionHeaderRowsCellRange & 0xFFFF000000000000;
      v8 = PartitionHeaderColumnsCellRange & 0xFF0000;
      v9 = PartitionHeaderColumnsCellRange & 0xFFFF00000000;
      v10 = 0xFFFFFFLL;
      v11 = HIWORD(PartitionHeaderColumnsCellRange);
      if ((PartitionHeaderColumnsCellRange & 0xFFFF00000000) != 0)
      {
        v12 = 0;
      }

      else
      {
        v9 = 0;
        v7 = 0;
        v12 = 0xFFFFFFLL;
      }

      v13 = v11 == 0;
      if (v11)
      {
        v14 = v7;
      }

      else
      {
        v9 = 0;
        v14 = 0;
      }

      if (!v13)
      {
        v10 = v12;
      }

      v15 = v8 == 16711680;
      if (v8 == 16711680)
      {
        v4 = 0;
      }

      else
      {
        v4 = v9;
      }

      if (v8 == 16711680)
      {
        v6 = 0;
      }

      else
      {
        v6 = v14;
      }

      if (!v15)
      {
        v5 = v10;
      }
    }
  }

  return v6 | v4 | v5;
}

BOOL TSTLayoutExtendedPartitionRangeIntersectsCellRange(void *a1, unint64_t a2)
{
  v4 = ~a2;
  RangeForHint = TSTMasterLayoutGetRangeForHint([a1 masterLayout], objc_msgSend(a1, "layoutHint"));
  v6 = (*&v4 & 0xFF0000) != 0 && v4 != 0;
  if (v6)
  {
    v7 = 0;
    v8 = 16711680;
    v9 = 0xFFFFLL;
    if (HIWORD(a2))
    {
      v10 = 0;
      if ((a2 & 0xFFFF00000000) == 0)
      {
        goto LABEL_27;
      }

      v7 = 0;
      v8 = 16711680;
      v9 = 0xFFFFLL;
      if (RangeForHint != 0xFFFF)
      {
        v10 = 0;
        if ((RangeForHint & 0xFF0000) == 0xFF0000)
        {
          goto LABEL_27;
        }

        v7 = 0;
        v8 = 16711680;
        v9 = 0xFFFFLL;
        if (HIWORD(RangeForHint))
        {
          v10 = 0;
          if ((RangeForHint & 0xFFFF00000000) != 0)
          {
            v9 = 0;
            if (BYTE2(a2) <= BYTE2(RangeForHint))
            {
              v11 = BYTE2(RangeForHint);
            }

            else
            {
              v11 = BYTE2(a2);
            }

            if (a2 <= RangeForHint)
            {
              v12 = RangeForHint;
            }

            else
            {
              v12 = a2;
            }

            if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1))
            {
              v13 = (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1);
            }

            else
            {
              v13 = (BYTE4(a2) + BYTE2(a2) - 1);
            }

            v14 = (RangeForHint + HIWORD(RangeForHint) - 1);
            if ((a2 + HIWORD(a2) - 1) < v14)
            {
              v14 = (a2 + HIWORD(a2) - 1);
            }

            v8 = 0;
            v7 = 0;
            v10 = 0;
            if (v12 <= v14 && v11 <= v13)
            {
              v10 = ((v14 - v12) << 48) + 0x1000000000000;
              v7 = (((v13 - v11) << 32) + 0x100000000) & 0xFFFF00000000;
              v8 = v11 << 16;
              v9 = v12;
            }
          }

          goto LABEL_27;
        }
      }
    }

    v10 = 0;
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v8 = 16711680;
    v9 = 0xFFFFLL;
  }

LABEL_27:
  v15 = v8 | v9 | v7 | v10;
  if (v15 != 0xFFFF && (v15 & 0xFF0000) != 0xFF0000 && HIWORD(v15) && (v15 & 0xFFFF00000000) != 0)
  {
    return 1;
  }

  PartitionHeaderColumnsCellRange = TSTLayoutGetPartitionHeaderColumnsCellRange(a1);
  v17 = 0;
  if (!v6)
  {
    v20 = 0;
    v18 = 16711680;
    v19 = 0xFFFFLL;
    goto LABEL_54;
  }

  v18 = 16711680;
  v19 = 0xFFFFLL;
  if (!HIWORD(a2))
  {
    goto LABEL_53;
  }

  v20 = 0;
  if ((a2 & 0xFFFF00000000) == 0)
  {
    goto LABEL_54;
  }

  v17 = 0;
  v18 = 16711680;
  v19 = 0xFFFFLL;
  if (PartitionHeaderColumnsCellRange == 0xFFFF)
  {
    goto LABEL_53;
  }

  v20 = 0;
  if ((PartitionHeaderColumnsCellRange & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_54;
  }

  v17 = 0;
  v18 = 16711680;
  v19 = 0xFFFFLL;
  if (!HIWORD(PartitionHeaderColumnsCellRange))
  {
LABEL_53:
    v20 = 0;
    goto LABEL_54;
  }

  v20 = 0;
  if ((PartitionHeaderColumnsCellRange & 0xFFFF00000000) != 0)
  {
    v19 = 0;
    if (BYTE2(a2) <= BYTE2(PartitionHeaderColumnsCellRange))
    {
      v21 = BYTE2(PartitionHeaderColumnsCellRange);
    }

    else
    {
      v21 = BYTE2(a2);
    }

    if (a2 <= PartitionHeaderColumnsCellRange)
    {
      v22 = PartitionHeaderColumnsCellRange;
    }

    else
    {
      v22 = a2;
    }

    if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(PartitionHeaderColumnsCellRange) + BYTE2(PartitionHeaderColumnsCellRange) - 1))
    {
      v23 = (BYTE4(PartitionHeaderColumnsCellRange) + BYTE2(PartitionHeaderColumnsCellRange) - 1);
    }

    else
    {
      v23 = (BYTE4(a2) + BYTE2(a2) - 1);
    }

    v24 = (PartitionHeaderColumnsCellRange + HIWORD(PartitionHeaderColumnsCellRange) - 1);
    if ((a2 + HIWORD(a2) - 1) < v24)
    {
      v24 = (a2 + HIWORD(a2) - 1);
    }

    v18 = 0;
    v17 = 0;
    v20 = 0;
    if (v22 <= v24 && v21 <= v23)
    {
      v20 = ((v24 - v22) << 48) + 0x1000000000000;
      v17 = (((v23 - v21) << 32) + 0x100000000) & 0xFFFF00000000;
      v18 = v21 << 16;
      v19 = v22;
    }
  }

LABEL_54:
  v25 = v18 | v19 | v17 | v20;
  if (v25 != 0xFFFF && (v25 & 0xFF0000) != 0xFF0000 && HIWORD(v25) && (v25 & 0xFFFF00000000) != 0)
  {
    return 1;
  }

  PartitionHeaderRowsCellRange = TSTLayoutGetPartitionHeaderRowsCellRange(a1);
  v27 = 0;
  if (v6)
  {
    v28 = 16711680;
    v29 = 0xFFFFLL;
    if (HIWORD(a2))
    {
      v30 = 0;
      if ((a2 & 0xFFFF00000000) == 0)
      {
        goto LABEL_81;
      }

      v27 = 0;
      v28 = 16711680;
      v29 = 0xFFFFLL;
      if (PartitionHeaderRowsCellRange != 0xFFFF)
      {
        v30 = 0;
        if ((PartitionHeaderRowsCellRange & 0xFF0000) == 0xFF0000)
        {
          goto LABEL_81;
        }

        v27 = 0;
        v28 = 16711680;
        v29 = 0xFFFFLL;
        if (HIWORD(PartitionHeaderRowsCellRange))
        {
          v30 = 0;
          if ((PartitionHeaderRowsCellRange & 0xFFFF00000000) != 0)
          {
            v29 = 0;
            if (BYTE2(a2) <= BYTE2(PartitionHeaderRowsCellRange))
            {
              v31 = BYTE2(PartitionHeaderRowsCellRange);
            }

            else
            {
              v31 = BYTE2(a2);
            }

            if (a2 <= PartitionHeaderRowsCellRange)
            {
              v32 = PartitionHeaderRowsCellRange;
            }

            else
            {
              v32 = a2;
            }

            if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(PartitionHeaderRowsCellRange) + BYTE2(PartitionHeaderRowsCellRange) - 1))
            {
              v33 = (BYTE4(PartitionHeaderRowsCellRange) + BYTE2(PartitionHeaderRowsCellRange) - 1);
            }

            else
            {
              v33 = (BYTE4(a2) + BYTE2(a2) - 1);
            }

            v34 = (PartitionHeaderRowsCellRange + HIWORD(PartitionHeaderRowsCellRange) - 1);
            if ((a2 + HIWORD(a2) - 1) < v34)
            {
              v34 = (a2 + HIWORD(a2) - 1);
            }

            v28 = 0;
            v27 = 0;
            v30 = 0;
            if (v32 <= v34 && v31 <= v33)
            {
              v30 = ((v34 - v32) << 48) + 0x1000000000000;
              v27 = (((v33 - v31) << 32) + 0x100000000) & 0xFFFF00000000;
              v28 = v31 << 16;
              v29 = v32;
            }
          }

          goto LABEL_81;
        }
      }
    }

    v30 = 0;
  }

  else
  {
    v30 = 0;
    v28 = 16711680;
    v29 = 0xFFFFLL;
  }

LABEL_81:
  v35 = v28 | v29 | v27 | v30;
  if (v35 != 0xFFFF && (v35 & 0xFF0000) != 0xFF0000 && HIWORD(v35) && (v35 & 0xFFFF00000000) != 0)
  {
    return 1;
  }

  PartitionHeaderCornerCellRange = TSTLayoutGetPartitionHeaderCornerCellRange(a1);
  v38 = 0;
  if (!v6)
  {
    v41 = 0;
    v39 = 16711680;
    v40 = 0xFFFFLL;
    goto LABEL_109;
  }

  v39 = 16711680;
  v40 = 0xFFFFLL;
  if (!HIWORD(a2))
  {
    goto LABEL_108;
  }

  v41 = 0;
  if ((a2 & 0xFFFF00000000) == 0)
  {
    goto LABEL_109;
  }

  v38 = 0;
  v39 = 16711680;
  v40 = 0xFFFFLL;
  if (PartitionHeaderCornerCellRange == 0xFFFF)
  {
LABEL_108:
    v41 = 0;
    goto LABEL_109;
  }

  v41 = 0;
  if ((PartitionHeaderCornerCellRange & 0xFF0000) != 0xFF0000)
  {
    v38 = 0;
    v39 = 16711680;
    v40 = 0xFFFFLL;
    if (HIWORD(PartitionHeaderCornerCellRange))
    {
      v41 = 0;
      if ((PartitionHeaderCornerCellRange & 0xFFFF00000000) != 0)
      {
        v40 = 0;
        if (BYTE2(a2) <= BYTE2(PartitionHeaderCornerCellRange))
        {
          v42 = BYTE2(PartitionHeaderCornerCellRange);
        }

        else
        {
          v42 = BYTE2(a2);
        }

        if (a2 <= PartitionHeaderCornerCellRange)
        {
          v43 = PartitionHeaderCornerCellRange;
        }

        else
        {
          v43 = a2;
        }

        if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(PartitionHeaderCornerCellRange) + BYTE2(PartitionHeaderCornerCellRange) - 1))
        {
          v44 = (BYTE4(PartitionHeaderCornerCellRange) + BYTE2(PartitionHeaderCornerCellRange) - 1);
        }

        else
        {
          v44 = (BYTE4(a2) + BYTE2(a2) - 1);
        }

        v45 = (PartitionHeaderCornerCellRange + HIWORD(PartitionHeaderCornerCellRange) - 1);
        if ((a2 + HIWORD(a2) - 1) < v45)
        {
          v45 = (a2 + HIWORD(a2) - 1);
        }

        v39 = 0;
        v38 = 0;
        v41 = 0;
        if (v43 <= v45 && v42 <= v44)
        {
          v41 = ((v45 - v43) << 48) + 0x1000000000000;
          v38 = (((v44 - v42) << 32) + 0x100000000) & 0xFFFF00000000;
          v39 = v42 << 16;
          v40 = v43;
        }
      }

      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_109:
  result = 0;
  v46 = v39 | v40 | v38 | v41;
  if (v46 != 0xFFFF && (v46 & 0xFF0000) != 0xFF0000)
  {
    v48 = (v46 & 0xFFFF00000000) == 0;
    v47 = HIWORD(v46);
    v48 = v48 || v47 == 0;
    return !v48;
  }

  return result;
}

uint64_t TSTLayoutGetPartitionFirstBodyColumn(void *a1)
{
  v2 = [a1 masterLayout];
  v3 = (TSTMasterLayoutGetRangeForHint(v2, [a1 layoutHint]) >> 16);
  LODWORD(result) = TSTMasterLayoutGetTableNumberOfHeaderColumns(v2);
  if (v3 <= result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

uint64_t TSTLayoutGetPartitionFirstBodyRow(void *a1)
{
  v2 = [a1 masterLayout];
  RangeForHint = TSTMasterLayoutGetRangeForHint(v2, [a1 layoutHint]);
  LODWORD(result) = TSTMasterLayoutGetTableNumberOfHeaderRows(v2);
  if (RangeForHint <= result)
  {
    return result;
  }

  else
  {
    return RangeForHint;
  }
}

uint64_t TSTLayoutGetPartitionLastBodyRow(void *a1)
{
  v2 = [a1 masterLayout];
  RangeForHint = TSTMasterLayoutGetRangeForHint([a1 masterLayout], objc_msgSend(a1, "layoutHint"));
  v4 = (RangeForHint + HIWORD(RangeForHint) - 1);
  LOWORD(result) = TSTMasterLayoutGetEntireFooterRowsCellRange(v2);
  if (v4 >= result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

unint64_t TSTLayoutGetPartitionNonHeaderRowCellRange(void *a1)
{
  v2 = [a1 masterLayout];
  RangeForHint = TSTMasterLayoutGetRangeForHint(v2, [a1 layoutHint]);
  v4 = RangeForHint;
  v5 = RangeForHint >> 16;
  v6 = HIDWORD(RangeForHint);
  v7 = HIWORD(RangeForHint);
  TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns(v2);
  if (BYTE2(v4) >= TableNumberOfHeaderColumns)
  {
    v9 = 0;
  }

  else
  {
    v9 = TableNumberOfHeaderColumns;
  }

  if (BYTE2(v4) < TableNumberOfHeaderColumns)
  {
    LOBYTE(v5) = TableNumberOfHeaderColumns;
  }

  v10 = v6 - v9;
  TableNumberOfHeaderRows = TSTMasterLayoutGetTableNumberOfHeaderRows(v2);
  if (v4 >= TableNumberOfHeaderRows)
  {
    v12 = 0;
  }

  else
  {
    v12 = TableNumberOfHeaderRows;
  }

  if (v4 >= TableNumberOfHeaderRows)
  {
    v13 = v4;
  }

  else
  {
    v13 = TableNumberOfHeaderRows;
  }

  return (v10 << 32) | ((v7 - v12) << 48) | v4 & 0xFF000000 | (v5 << 16) | v13;
}

unint64_t TSTLayoutGetPartitionBodyCellRange(void *a1)
{
  v2 = [a1 masterLayout];
  RangeForHint = TSTMasterLayoutGetRangeForHint(v2, [a1 layoutHint]);
  v4 = RangeForHint;
  v5 = RangeForHint >> 16;
  v6 = HIDWORD(RangeForHint);
  v7 = HIWORD(RangeForHint);
  TableNumberOfHeaderColumns = TSTMasterLayoutGetTableNumberOfHeaderColumns(v2);
  if (BYTE2(v4) >= TableNumberOfHeaderColumns)
  {
    v9 = 0;
  }

  else
  {
    v9 = TableNumberOfHeaderColumns;
  }

  if (BYTE2(v4) >= TableNumberOfHeaderColumns)
  {
    v10 = v5;
  }

  else
  {
    v10 = TableNumberOfHeaderColumns;
  }

  v11 = v6 - v9;
  TableNumberOfHeaderRows = TSTMasterLayoutGetTableNumberOfHeaderRows(v2);
  if (v4 >= TableNumberOfHeaderRows)
  {
    v13 = 0;
  }

  else
  {
    v13 = TableNumberOfHeaderRows;
  }

  if (v4 >= TableNumberOfHeaderRows)
  {
    v14 = v4;
  }

  else
  {
    v14 = TableNumberOfHeaderRows;
  }

  v15 = v7 - v13;
  TableNumberOfFooterRows = TSTMasterLayoutGetTableNumberOfFooterRows(v2);
  TableNumberOfRows = TSTMasterLayoutGetTableNumberOfRows(v2);
  if (v15 + v14 <= (TableNumberOfRows - TableNumberOfFooterRows))
  {
    v18 = v15;
  }

  else
  {
    v18 = TableNumberOfRows - TableNumberOfFooterRows - v14;
  }

  return (v11 << 32) | (v18 << 48) | v4 & 0xFF000000 | (v10 << 16) | v14;
}

uint64_t TSTLayoutGetPartitionFooterRowsCellRange(void *a1)
{
  v2 = [a1 masterLayout];
  EntireFooterRowsCellRange = TSTMasterLayoutGetEntireFooterRowsCellRange(v2);
  v4 = HIWORD(EntireFooterRowsCellRange);
  if (!HIWORD(EntireFooterRowsCellRange))
  {
    return 0xFFFFFFLL;
  }

  v6 = EntireFooterRowsCellRange;
  RangeForHint = TSTMasterLayoutGetRangeForHint(v2, [a1 layoutHint]);
  v8 = 0;
  v9 = 16711680;
  v10 = 0xFFFFLL;
  if (RangeForHint == 0xFFFF)
  {
    goto LABEL_24;
  }

  v11 = 0;
  if ((RangeForHint & 0xFF0000) == 0xFF0000)
  {
    return v9 | v10 | v8 | v11;
  }

  v8 = 0;
  v9 = 16711680;
  v10 = 0xFFFFLL;
  if (!HIWORD(RangeForHint))
  {
LABEL_24:
    v11 = 0;
    return v9 | v10 | v8 | v11;
  }

  v11 = 0;
  if ((RangeForHint & 0xFFFF00000000) != 0)
  {
    v8 = 0;
    v9 = 16711680;
    v10 = 0xFFFFLL;
    if ((v6 & 0xFFFF00000000) != 0 && v6 != 0xFFFFLL)
    {
      v11 = 0;
      if ((v6 & 0xFF0000) != 0xFF0000)
      {
        v10 = 0;
        if (BYTE2(RangeForHint) <= BYTE2(v6))
        {
          v12 = BYTE2(v6);
        }

        else
        {
          v12 = BYTE2(RangeForHint);
        }

        if (RangeForHint <= v6)
        {
          v13 = v6;
        }

        else
        {
          v13 = RangeForHint;
        }

        if ((BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1) >= (BYTE4(v6) + BYTE2(v6) - 1))
        {
          v14 = (BYTE4(v6) + BYTE2(v6) - 1);
        }

        else
        {
          v14 = (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1);
        }

        v15 = (v6 + v4 - 1);
        if ((RangeForHint + HIWORD(RangeForHint) - 1) < v15)
        {
          v15 = (RangeForHint + HIWORD(RangeForHint) - 1);
        }

        v9 = 0;
        v8 = 0;
        v11 = 0;
        if (v13 <= v15 && v12 <= v14)
        {
          v11 = ((v15 - v13) << 48) + 0x1000000000000;
          v8 = (((v14 - v12) << 32) + 0x100000000) & 0xFFFF00000000;
          v9 = v12 << 16;
          v10 = v13;
        }
      }

      return v9 | v10 | v8 | v11;
    }

    goto LABEL_24;
  }

  return v9 | v10 | v8 | v11;
}

uint64_t TSTLayoutGetFrozenHeaderColumnsSpace(void *a1)
{
  v1 = [a1 spaceBundle];

  return [v1 frozenHeaderColumnsSpace];
}

uint64_t TSTLayoutGetFrozenHeaderRowsSpace(void *a1)
{
  v1 = [a1 spaceBundle];

  return [v1 frozenHeaderRowsSpace];
}

uint64_t TSTLayoutGetFrozenHeaderCornerSpace(void *a1)
{
  v1 = [a1 spaceBundle];

  return [v1 frozenHeaderCornerSpace];
}

uint64_t TSTLayoutGetRepeatHeaderColumnsSpace(void *a1)
{
  v1 = [a1 spaceBundle];

  return [v1 repeatHeaderColumnsSpace];
}

uint64_t TSTLayoutGetRepeatHeaderRowsSpace(void *a1)
{
  v1 = [a1 spaceBundle];

  return [v1 repeatHeaderRowsSpace];
}

uint64_t TSTLayoutGetRepeatHeaderCornerSpace(void *a1)
{
  v1 = [a1 spaceBundle];

  return [v1 repeatHeaderCornerSpace];
}

double TSTLayoutGetAlignedMaskRectForSpace(uint64_t a1, void *a2)
{
  [a2 lockForRead];
  AlignedStrokeFrame = TSTLayoutSpaceGetAlignedStrokeFrame(a2);
  CanvasRectForLayoutRect = TSTLayoutSpaceGetCanvasRectForLayoutRect(a2, AlignedStrokeFrame, v5, v6, v7);
  v10 = v9;
  v60 = v11;
  v61 = v12;
  FrozenHeadersTabOffset = TSTLayoutGetFrozenHeadersTabOffset(a1);
  v59 = v13;
  v14 = MEMORY[0x277CBF348];
  v15 = *MEMORY[0x277CBF348];
  v16 = *(MEMORY[0x277CBF348] + 8);
  TSTLayoutGetTableNameHeight(a1);
  v58 = v17;
  FrozenHeaderColumnsFloating = TSTLayoutGetFrozenHeaderColumnsFloating(a1);
  FrozenHeaderRowsFloating = TSTLayoutGetFrozenHeaderRowsFloating(a1);
  if ([objc_msgSend(a1 "spaceBundle")] && FrozenHeaderColumnsFloating && (objc_msgSend(objc_msgSend(a1, "spaceBundle"), "space") == a2 || objc_msgSend(objc_msgSend(a1, "spaceBundle"), "frozenHeaderRowsSpace") == a2))
  {
    AlignedFrame = TSTLayoutSpaceGetAlignedFrame([objc_msgSend(a1 spaceBundle]);
    v53 = v10;
    v22 = v21;
    v23 = CanvasRectForLayoutRect;
    v25 = v24;
    v27 = v26;
    v28 = AlignedStrokeFrame;
    v29 = TSTLayoutSpaceGetAlignedStrokeFrame([objc_msgSend(a1 "spaceBundle")]);
    v30 = v25 + AlignedFrame - v29;
    CanvasRectForLayoutRect = v23;
    v31 = [objc_msgSend(a1 "spaceBundle")];
    v32 = v22;
    v10 = v53;
    TSTLayoutSpaceGetCanvasRectForLayoutRect(v31, v29, v32, v30, v27);
    v34 = FrozenHeadersTabOffset + v52 + v33;
    v62.origin.x = v23;
    v62.origin.y = v53;
    v62.size.width = v60;
    v62.size.height = v61;
    v15 = v34 - CGRectGetMinX(v62);
    AlignedStrokeFrame = v28;
  }

  if ((([objc_msgSend(a1 "spaceBundle")] != 0) & FrozenHeaderRowsFloating) == 1 && (objc_msgSend(objc_msgSend(a1, "spaceBundle"), "space") == a2 || objc_msgSend(objc_msgSend(a1, "spaceBundle"), "frozenHeaderColumnsSpace") == a2))
  {
    v55 = *(a1 + 328);
    v57 = AlignedStrokeFrame;
    v54 = TSTLayoutSpaceGetAlignedFrame([objc_msgSend(a1 "spaceBundle")]);
    v36 = v35;
    v38 = v37;
    v39 = v10;
    v41 = v40;
    TSTLayoutSpaceGetAlignedStrokeFrame([objc_msgSend(a1 "spaceBundle")]);
    v42 = CanvasRectForLayoutRect;
    v44 = v43;
    v45 = v41 + v36 - v43;
    v10 = v39;
    v46 = [objc_msgSend(a1 "spaceBundle")];
    v47 = v44;
    CanvasRectForLayoutRect = v42;
    TSTLayoutSpaceGetCanvasRectForLayoutRect(v46, v54, v47, v38, v45);
    v49 = v59 + v58 + v55 + v48;
    v63.origin.x = CanvasRectForLayoutRect;
    v63.origin.y = v39;
    v63.size.width = v60;
    v63.size.height = v61;
    v16 = v49 - CGRectGetMinY(v63);
    AlignedStrokeFrame = v57;
  }

  if (v15 != *v14 || v16 != v14[1])
  {
    AlignedStrokeFrame = TSTLayoutSpaceGetLayoutRectForCanvasRect(a2, CanvasRectForLayoutRect + v15, v10 + v16, v60 - v15, v61 - v16);
  }

  [a2 unlock];
  return AlignedStrokeFrame;
}

double TSTLayoutGetFrozenHeadersTabOffset(TSTLayout *a1)
{
  v2 = *MEMORY[0x277CBF348];
  [[(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space] viewScale];
  if (a1->mTabsVisible)
  {
    v4 = v3;
    TSTLayoutGetTopLeftTabCanvasFrame(a1);
    v14.origin.x = TSTLayoutSpaceGetLayoutRectForCanvasRect([(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space], v5, v6, v7, v8);
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    v2 = 6.0 / v4 + CGRectGetWidth(v14);
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    CGRectGetHeight(v15);
  }

  return v2;
}

uint64_t TSTLayoutGetFrozenHeaderColumnsFloating(TSTLayout *a1)
{
  result = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  if (result)
  {
    v3 = [(TSTLayout *)a1 inFindReplaceMode];
    v4 = [(TSTLayout *)a1 isZoomedEditing];
    v5 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
    FrozenHeadersTabOffset = TSTLayoutGetFrozenHeadersTabOffset(a1);
    CanvasStrokeFrame = TSTLayoutSpaceGetCanvasStrokeFrame(v5);
    result = 0;
    if (!v3 && !v4)
    {
      v8 = CanvasStrokeFrame;
      result = TSTLayoutGetFrozenHeadersBodyVisible(a1);
      if (result)
      {
        return v8 < FrozenHeadersTabOffset + a1->mCanvasVisibleRect.origin.x;
      }
    }
  }

  return result;
}

uint64_t TSTLayoutGetFrozenHeaderRowsFloating(TSTLayout *a1)
{
  result = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  if (result)
  {
    v3 = [(TSTLayout *)a1 inFindReplaceMode];
    v4 = [(TSTLayout *)a1 isZoomedEditing];
    v5 = [(TSTEditingState *)[(TSTTableInfo *)[(TSTLayout *)a1 tableInfo] editingState] editingMode];
    v6 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
    TSTLayoutGetFrozenHeadersTabOffset(a1);
    v8 = v7;
    if (a1->mTableNameVisible)
    {
      TSTLayoutGetCanvasStrokeFrameForTableName(a1);
    }

    else
    {
      TSTLayoutSpaceGetCanvasStrokeFrame(v6);
    }

    v10 = v9;
    result = 0;
    if (!v3 && !v4 && v5 != 7)
    {
      result = TSTLayoutGetFrozenHeadersBodyVisible(a1);
      if (result)
      {
        return v10 < v8 + a1->mCanvasVisibleRect.origin.y;
      }
    }
  }

  return result;
}

uint64_t __TSTLayoutUpdateTransformToCanvas_block_invoke(_OWORD *a1, void *a2)
{
  v2 = a1[3];
  v4[0] = a1[2];
  v4[1] = v2;
  v4[2] = a1[4];
  [a2 setTransformToCanvas:v4];
  return 0;
}

double TSTLayoutGetTransformToCanvas@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [objc_msgSend(a1 "spaceBundle")];
  if (v3)
  {

    [v3 transformToCanvas];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double TSTLayoutGetTransformToDevice@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = [objc_msgSend(a1 "spaceBundle")];
  if (v3)
  {

    [v3 transformToDevice];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t TSTLayoutSetViewScale(void *a1, double a2)
{
  v3 = [a1 spaceBundle];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __TSTLayoutSetViewScale_block_invoke;
  v5[3] = &__block_descriptor_40_e24_B16__0__TSTLayoutSpace_8l;
  *&v5[4] = a2;
  return [v3 performActionOnEachLayoutSpace:v5];
}

uint64_t TSTLayoutGetViewScale(void *a1)
{
  v1 = [objc_msgSend(a1 "spaceBundle")];

  return [v1 viewScale];
}

double TSTLayoutGetRectForCanvasRect(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetLayoutRectForCanvasRect(v9, a2, a3, a4, a5);
}

double TSTLayoutGetPointForCanvasPoint(void *a1, double a2, double a3)
{
  v5 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetLayoutPointForCanvasPoint(v5, a2, a3);
}

double TSTLayoutGetCanvasRectForRect(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetCanvasRectForLayoutRect(v9, a2, a3, a4, a5);
}

double TSTLayoutGetCanvasPointForPoint(void *a1, double a2, double a3)
{
  v5 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetCanvasPointForLayoutPoint(v5, a2, a3);
}

double TSTLayoutGetCanvasFrame(void *a1)
{
  v1 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetCanvasFrame(v1);
}

double TSTLayoutGetCanvasStrokeFrame(void *a1)
{
  v1 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetCanvasStrokeFrame(v1);
}

void TSTLayoutGetTopLeftTabCanvasFrame(double *a1)
{
  v2 = [objc_msgSend(a1 "spaceBundle")];
  AlignedStrokeFrame = TSTLayoutGetAlignedStrokeFrame(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [objc_msgSend(objc_msgSend(a1 "spaceBundle")];
  v11 = v10;
  TSTLayoutGetTableNameHeight(a1);
  v33 = v12;
  v13 = v5 - v12;
  CanvasRectForLayoutRect = TSTLayoutSpaceGetCanvasRectForLayoutRect(v2, AlignedStrokeFrame - 31.0 / v11, v13 - 31.0 / v11, 25.0 / v11, 25.0 / v11);
  v16 = v15;
  v17 = TSTLayoutSpaceGetCanvasRectForLayoutRect(v2, AlignedStrokeFrame, v13, v7, v9);
  v22 = a1[40];
  v21 = a1[41];
  if (CanvasRectForLayoutRect < v22)
  {
    v23 = v17;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    MaxX = CGRectGetMaxX(*&v17);
    v18 = v24;
    v20 = v26;
    v19 = v25;
    v28 = v22 < MaxX;
    v17 = v23;
    if (!v28)
    {
      v34.origin.x = v23;
      v34.origin.y = v24;
      v34.size.width = v25;
      v34.size.height = v26;
      CGRectGetMaxX(v34);
      v18 = v24;
      v20 = v26;
      v19 = v25;
      v17 = v23;
    }
  }

  if (v16 < v21)
  {
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    if (v21 >= v33 + CGRectGetMaxY(*&v17))
    {
      v35.origin.x = v29;
      v35.origin.y = v30;
      v35.size.width = v31;
      v35.size.height = v32;
      CGRectGetMaxY(v35);
    }
  }
}

double TSTLayoutGetAlignedStrokeFrame(void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x5012000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = &unk_26CAC6BB9;
  v1 = *(MEMORY[0x277CBF398] + 16);
  v12 = *MEMORY[0x277CBF398];
  v13 = v1;
  v2 = [a1 spaceBundle];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __TSTLayoutGetAlignedStrokeFrame_block_invoke;
  v5[3] = &unk_279D4AB40;
  v5[4] = &v6;
  [v2 performActionOnEachLayoutSpace:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_26CA0CFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double TSTLayoutGetTopRightTabCanvasFrame(double *a1)
{
  v2 = [objc_msgSend(a1 "spaceBundle")];
  AlignedStrokeFrame = TSTLayoutGetAlignedStrokeFrame(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [objc_msgSend(objc_msgSend(a1 "spaceBundle")];
  v11 = v10;
  TSTLayoutGetTableNameHeight(a1);
  v13 = v5 - v12;
  if ([objc_msgSend(a1 "masterLayout")])
  {
    [objc_msgSend(a1 "masterLayout")];
    v7 = v14;
  }

  v29.origin.x = AlignedStrokeFrame;
  v29.origin.y = v13;
  v29.size.width = v7;
  v29.size.height = v9;
  MaxX = CGRectGetMaxX(v29);
  CanvasRectForLayoutRect = TSTLayoutSpaceGetCanvasRectForLayoutRect(v2, 6.0 / v11 + MaxX, v13 + -31.0 / v11, 25.0 / v11, 25.0 / v11);
  v18 = v17;
  v19 = TSTLayoutSpaceGetCanvasRectForLayoutRect(v2, AlignedStrokeFrame, v13, v7, v9);
  v23 = a1[41];
  if (v18 < v23)
  {
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v27 = v22;
    if (v23 >= CGRectGetMaxY(*&v19))
    {
      v30.origin.x = v24;
      v30.origin.y = v25;
      v30.size.width = v26;
      v30.size.height = v27;
      CGRectGetMaxY(v30);
    }
  }

  return CanvasRectForLayoutRect;
}

double TSTLayoutGetBottomLeftTabCanvasFrame(double *a1)
{
  v2 = [objc_msgSend(a1 "spaceBundle")];
  AlignedStrokeFrame = TSTLayoutGetAlignedStrokeFrame(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [objc_msgSend(objc_msgSend(a1 "spaceBundle")];
  v11 = v10;
  if ([objc_msgSend(a1 "masterLayout")])
  {
    [objc_msgSend(a1 "masterLayout")];
    v9 = v12;
  }

  v25.origin.x = AlignedStrokeFrame;
  v25.origin.y = v5;
  v25.size.width = v7;
  v25.size.height = v9;
  MaxY = CGRectGetMaxY(v25);
  CanvasRectForLayoutRect = TSTLayoutSpaceGetCanvasRectForLayoutRect(v2, AlignedStrokeFrame + -31.0 / v11, 6.0 / v11 + MaxY, 25.0 / v11, 25.0 / v11);
  v15 = TSTLayoutSpaceGetCanvasRectForLayoutRect(v2, AlignedStrokeFrame, v5, v7, v9);
  v19 = a1[40];
  if (CanvasRectForLayoutRect < v19)
  {
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = v18;
    CanvasRectForLayoutRect = a1[40];
    if (v19 >= CGRectGetMaxX(*&v15))
    {
      v26.origin.x = v20;
      v26.origin.y = v21;
      v26.size.width = v22;
      v26.size.height = v23;
      return CGRectGetMaxX(v26);
    }
  }

  return CanvasRectForLayoutRect;
}

double TSTLayoutGetBottomRightTabCanvasFrame(void *a1)
{
  v2 = [objc_msgSend(a1 "spaceBundle")];
  AlignedStrokeFrame = TSTLayoutGetAlignedStrokeFrame(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [objc_msgSend(objc_msgSend(a1 "spaceBundle")];
  v11 = v10;
  if ([objc_msgSend(a1 "masterLayout")])
  {
    [objc_msgSend(a1 "masterLayout")];
    v7 = v12;
  }

  if ([objc_msgSend(a1 "masterLayout")])
  {
    [objc_msgSend(a1 "masterLayout")];
    v9 = v13;
  }

  v18.origin.x = AlignedStrokeFrame;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  v14 = 6.0 / v11 + CGRectGetMaxX(v18);
  v19.origin.x = AlignedStrokeFrame;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  v15 = 6.0 / v11 + CGRectGetMaxY(v19);

  return TSTLayoutSpaceGetCanvasRectForLayoutRect(v2, v14, v15, 25.0 / v11, 25.0 / v11);
}

double TSTLayoutGetColumnTabsRangeFrame(TSTLayout *a1, unint64_t a2)
{
  [[(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space] viewScale];
  TSTLayoutGetTableNameHeight(a1);
  AlignedOverrideFrameForRange = *MEMORY[0x277CBF3A0];
  if (HIWORD(a2) && (a2 & 0xFFFF00000000) != 0)
  {
    AlignedOverrideFrameForRange = TSTLayoutGetAlignedOverrideFrameForRange(a1, a2, 1.0);
  }

  TSTLayoutGetVisibleRect(a1);
  return AlignedOverrideFrameForRange;
}

double TSTLayoutGetAlignedOverrideFrameForRange(TSTLayout *a1, unint64_t a2, double a3)
{
  v3 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v3 = -1;
  }

  v4 = WORD2(a2) + v3 - 1;
  if (!WORD2(a2))
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = a2;
  }

  v6 = v3 | (v5 << 32);
  v7 = (((v5 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v7 = 0xFFFFFFFF00000000;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __TSTLayoutGetAlignedOverrideFrameForGridRange_block_invoke;
  v9[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__32__0__TSTLayoutSpace_8______II____II__16l;
  *&v9[4] = a3;
  return TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(a1, v6, v7 | v4, v9);
}

double TSTLayoutGetVisibleRect(double *a1)
{
  v1 = a1[40];
  v2 = a1[41];
  v3 = a1[42];
  v4 = a1[43];
  v5 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetLayoutRectForCanvasRect(v5, v1, v2, v3, v4);
}

void TSTLayoutGetColumnTabsCanvasFrameAndAdjustment(void *a1, double *a2)
{
  AlignedStrokeFrame = TSTLayoutGetAlignedStrokeFrame(a1);
  v6 = v5;
  v8 = v7;
  v34 = v9;
  [objc_msgSend(objc_msgSend(a1 "spaceBundle")];
  v11 = v10;
  v12 = [objc_msgSend(a1 "spaceBundle")];
  TSTLayoutGetTableNameHeight(a1);
  v14 = v13;
  if ([objc_msgSend(a1 "masterLayout")])
  {
    [objc_msgSend(a1 "masterLayout")];
    v8 = v15;
  }

  v16 = 2.0 / v11;
  v17 = AlignedStrokeFrame - 2.0 / v11;
  v18 = v6 - v14;
  v31 = v11;
  v19 = 29.0 / v11;
  v33 = AlignedStrokeFrame;
  v20 = v18 - 29.0 / v11;
  v21 = 2.0 / v11 + 2.0 + v8;
  VisibleRect = TSTLayoutGetVisibleRect(a1);
  v24 = v8;
  v25 = v6;
  v26 = v23;
  v27 = VisibleRect - (v17 - v19);
  v28 = v17 - v19 < VisibleRect;
  if (v17 - v19 >= VisibleRect)
  {
    v29 = v21;
  }

  else
  {
    v29 = v21 - v27;
  }

  if (v28)
  {
    v17 = v17 + v27;
  }

  v30 = 0.0;
  if (v28)
  {
    v30 = v27;
  }

  v32 = v30;
  if (v20 < v16 + v23)
  {
    v35.origin.x = v33;
    v35.size.height = v34;
    v35.origin.y = v25;
    v35.size.width = v24;
    v20 = v16 + v26;
    if (v26 >= CGRectGetMaxY(v35))
    {
      v36.origin.x = v33;
      v36.size.height = v34;
      v36.origin.y = v25;
      v36.size.width = v24;
      v20 = v16 + CGRectGetMaxY(v36);
    }
  }

  if (v29 <= 0.0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_17;
  }

  TSTLayoutSpaceGetCanvasRectForLayoutRect(v12, v17, v20, v29, 22.0 / v31);
  if (a2)
  {
LABEL_17:
    *a2 = v32;
  }
}

void TSTLayoutGetRowTabsRangeFrame(TSTLayout *a1, unint64_t a2)
{
  TSTLayoutGetAlignedStrokeFrame(a1);
  [[(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space] viewScale];
  TSTMasterLayoutGetTableNumberOfRows([(TSTLayout *)a1 masterLayout]);
  if (HIWORD(a2) && (a2 & 0xFFFF00000000) != 0)
  {
    TSTLayoutGetAlignedOverrideFrameForRange(a1, a2, 1.0);
  }

  TSTLayoutGetVisibleRect(a1);
}

void TSTLayoutGetRowTabsCanvasFrameAndAdjustment(void *a1, double *a2)
{
  AlignedStrokeFrame = TSTLayoutGetAlignedStrokeFrame(a1);
  v6 = v5;
  rect = v7;
  v9 = v8;
  [objc_msgSend(objc_msgSend(a1 "spaceBundle")];
  v11 = v10;
  v12 = [objc_msgSend(a1 "spaceBundle")];
  TSTLayoutGetTableNameHeight(a1);
  v14 = v13;
  if ([objc_msgSend(a1 "masterLayout")])
  {
    [objc_msgSend(a1 "masterLayout")];
    v9 = v15;
  }

  v16 = TSTMasterLayoutGetTableNumberOfRows([a1 masterLayout]) >> 4;
  if (v16 <= 0x270)
  {
    v17 = 24.0;
  }

  else
  {
    v17 = 28.0;
  }

  if (v16 <= 0x270)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = -3.0;
  }

  v42 = v17;
  v43 = v6;
  v19 = AlignedStrokeFrame - (v17 + 6.0) / v11;
  v44 = AlignedStrokeFrame;
  v20 = v6 - v14 - 2.0 / v11;
  v21 = v14 + 2.0 / v11 + 2.0 + v9;
  VisibleRect = TSTLayoutGetVisibleRect(a1);
  v24 = v23;
  v25 = v18 / v11;
  v26 = v9;
  v27 = VisibleRect + v25;
  if (v19 < VisibleRect + v25)
  {
    v28 = VisibleRect;
    v30 = v43;
    v29 = v44;
    v31 = rect;
    v32 = v26;
    MaxX = CGRectGetMaxX(*(&v26 - 3));
    v34 = v32;
    v19 = v27;
    if (v28 >= MaxX)
    {
      v36 = v43;
      v35 = v44;
      v37 = rect;
      v19 = v25 + CGRectGetMaxX(*(&v34 - 3));
    }
  }

  v38 = v20 + -29.0 / v11;
  if (v38 >= v24)
  {
    v39 = v21;
  }

  else
  {
    v39 = v21 - (v24 - v38);
  }

  if (v38 >= v24)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v24 - v38;
  }

  if (v39 <= 0.0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_24;
  }

  v41 = v20 + v24 - v38;
  if (v38 >= v24)
  {
    v41 = v20;
  }

  TSTLayoutSpaceGetCanvasRectForLayoutRect(v12, v19, v41, v42 / v11, v39);
  if (a2)
  {
LABEL_24:
    *a2 = v40;
  }
}

double TSTLayoutGetTextLayerFrame(TSTLayout *a1)
{
  Frame = TSTLayoutSpaceGetFrame([(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space]);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  TSTLayoutGetTableNameHeight(a1);
  v10 = v4 - v9;
  v11 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];

  return TSTLayoutSpaceGetCanvasRectForLayoutRect(v11, Frame, v10, v6, v8);
}

double TSTLayoutGetFrame(void *a1)
{
  v1 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetFrame(v1);
}

void TSTLayoutGetTabsWidthOffset(void *a1)
{
  Frame = TSTLayoutSpaceGetFrame([objc_msgSend(a1 "spaceBundle")]);
  v4 = v3;
  TSTLayoutGetTableNameHeight(a1);
  v6 = v4 - v5;
  [objc_msgSend(objc_msgSend(a1 "spaceBundle")];
  TSTLayoutSpaceGetCanvasRectForLayoutRect([objc_msgSend(a1 "spaceBundle")], (Frame + -31.0) / v7, (v6 + -31.0) / v7, 25.0 / v7, 25.0 / v7);
}

void TSTLayoutGetTabsHeightOffset(void *a1)
{
  Frame = TSTLayoutSpaceGetFrame([objc_msgSend(a1 "spaceBundle")]);
  v4 = v3;
  TSTLayoutGetTableNameHeight(a1);
  v6 = v4 - v5;
  [objc_msgSend(objc_msgSend(a1 "spaceBundle")];
  TSTLayoutSpaceGetCanvasRectForLayoutRect([objc_msgSend(a1 "spaceBundle")], (Frame + -31.0) / v7, (v6 + -31.0) / v7, 25.0 / v7, 25.0 / v7);
}

double TSTLayoutGetCanvasFrozenHeaderColumnsOffset(TSTLayout *a1)
{
  v2 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
  x = a1->mCanvasVisibleRect.origin.x;
  if (a1->mTabsVisible)
  {
    FrozenHeadersTabOffset = TSTLayoutGetFrozenHeadersTabOffset(a1);
  }

  else
  {
    FrozenHeadersTabOffset = *MEMORY[0x277CBF348];
  }

  v5 = x + FrozenHeadersTabOffset;
  TSTLayoutSpaceGetCanvasStrokeFrame(v2);
  TSTLayoutGetTableNameHeight(a1);
  return v5;
}

double TSTLayoutGetCanvasFrozenHeaderRowsOffset(TSTLayout *a1)
{
  v2 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
  if (a1->mTabsVisible)
  {
    TSTLayoutGetFrozenHeadersTabOffset(a1);
  }

  CanvasStrokeFrame = TSTLayoutSpaceGetCanvasStrokeFrame(v2);
  TSTLayoutGetTableNameHeight(a1);
  return CanvasStrokeFrame;
}

double TSTLayoutGetCanvasFrozenHeaderCornerOffset(TSTLayout *a1)
{
  v2 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
  x = a1->mCanvasVisibleRect.origin.x;
  y = a1->mCanvasVisibleRect.origin.y;
  if (a1->mTabsVisible)
  {
    FrozenHeadersTabOffset = TSTLayoutGetFrozenHeadersTabOffset(a1);
  }

  else
  {
    FrozenHeadersTabOffset = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
  }

  CanvasStrokeFrame = x + FrozenHeadersTabOffset;
  v8 = y + v6;
  TSTLayoutGetTableNameHeight(a1);
  v10 = v8 + v9;
  if (CanvasStrokeFrame < TSTLayoutSpaceGetCanvasStrokeFrame(v2))
  {
    CanvasStrokeFrame = TSTLayoutSpaceGetCanvasStrokeFrame(v2);
  }

  TSTLayoutSpaceGetCanvasStrokeFrame(v2);
  if (v10 < v11)
  {
    TSTLayoutSpaceGetCanvasStrokeFrame(v2);
  }

  return CanvasStrokeFrame;
}

CGAffineTransform *TSTLayoutGetFrozenHeaderColumnsTransformToLayout@<X0>(TSTLayout *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
  CanvasFrozenHeaderColumnsOffset = TSTLayoutGetCanvasFrozenHeaderColumnsOffset(a1);
  LayoutPointForCanvasPoint = TSTLayoutSpaceGetLayoutPointForCanvasPoint(v4, CanvasFrozenHeaderColumnsOffset, v6);
  v8 = fmax(LayoutPointForCanvasPoint - TSTLayoutSpaceGetAlignedStrokeFrame(v4), 0.0);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;

  return CGAffineTransformMakeTranslation(a2, v8, 0.0);
}

CGAffineTransform *TSTLayoutGetFrozenTableNameTransformToLayout@<X0>(TSTLayout *a1@<X0>, CGAffineTransform *a2@<X8>)
{
  AlignedStrokeFrameForTableNameBorder = TSTLayoutSpaceGetAlignedStrokeFrameForTableNameBorder([(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space]);
  TSTLayoutSpaceGetCanvasRectForLayoutRect([(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space], AlignedStrokeFrameForTableNameBorder, v5, v6, v7);
  v9 = a1->mCanvasVisibleRect.origin.y - v8;
  if (a1->mTabsVisible)
  {
    TSTLayoutGetFrozenHeadersTabOffset(a1);
    v9 = v9 + v10;
  }

  v11 = fmax(v9, 0.0);

  return CGAffineTransformMakeTranslation(a2, 0.0, v11);
}

double TSTLayoutGetAlignedStrokeFrameForTableNameBorder(void *a1)
{
  v1 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetAlignedStrokeFrameForTableNameBorder(v1);
}

CGAffineTransform *TSTLayoutGetFrozenHeaderRowsTransformToLayout@<X0>(TSTLayout *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
  CanvasFrozenHeaderRowsOffset = TSTLayoutGetCanvasFrozenHeaderRowsOffset(a1);
  TSTLayoutSpaceGetLayoutPointForCanvasPoint(v4, CanvasFrozenHeaderRowsOffset, v6);
  v8 = v7;
  TSTLayoutSpaceGetAlignedStrokeFrame(v4);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v10 = v8 - v9;
  v11 = v8 - v9 < 0.0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  return CGAffineTransformMakeTranslation(a2, 0.0, v12);
}

CGAffineTransform *TSTLayoutGetFrozenHeaderCornerTransformToLayout@<X0>(TSTLayout *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
  CanvasFrozenHeaderCornerOffset = TSTLayoutGetCanvasFrozenHeaderCornerOffset(a1);
  LayoutPointForCanvasPoint = TSTLayoutSpaceGetLayoutPointForCanvasPoint(v4, CanvasFrozenHeaderCornerOffset, v6);
  v9 = v8;
  v10 = LayoutPointForCanvasPoint - TSTLayoutSpaceGetAlignedStrokeFrame(v4);
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  v12 = v9 - v11;
  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;

  return CGAffineTransformMakeTranslation(a2, v10, v12);
}

BOOL TSTLayoutGetFrozenHeadersBodyVisible(TSTLayout *a1)
{
  v2 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
  x = a1->mCanvasVisibleRect.origin.x;
  y = a1->mCanvasVisibleRect.origin.y;
  width = a1->mCanvasVisibleRect.size.width;
  height = a1->mCanvasVisibleRect.size.height;
  FrozenHeadersTabOffset = TSTLayoutGetFrozenHeadersTabOffset(a1);
  v9 = v8;
  v10 = x + TSTLayoutSpaceGetHeaderColumnsWidth(v2) + FrozenHeadersTabOffset;
  HeaderRowsHeight = TSTLayoutSpaceGetHeaderRowsHeight(v2);
  TSTLayoutGetTableNameHeight(a1);
  v13 = y + v9 + HeaderRowsHeight + v12;
  CanvasStrokeFrame = TSTLayoutSpaceGetCanvasStrokeFrame(v2);
  v18 = v10;
  v19 = v13;
  v20 = width;
  v21 = height;

  return CGRectIntersectsRect(*&CanvasStrokeFrame, *&v18);
}

uint64_t TSTLayoutGetFrozenHeaderColumnsEnabled(void *a1)
{
  result = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  if (result)
  {
    v3 = [a1 masterLayout];
    EntireHeaderColumnsCellRange = TSTMasterLayoutGetEntireHeaderColumnsCellRange(v3);
    IsEntireCellRangeHidden = TSTMasterLayoutIsEntireCellRangeHidden(v3, EntireHeaderColumnsCellRange);
    if (([objc_msgSend(a1 "layoutHint")] & 1) != 0 && (objc_msgSend(objc_msgSend(a1, "layoutHint"), "partitionPosition") & 4) != 0)
    {
      result = TSTMasterLayoutGetHeaderColumnsFrozen(v3);
      if (result)
      {
        return TSTMasterLayoutGetTableNumberOfHeaderColumns(v3) != 0 && !IsEntireCellRangeHidden;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double TSTLayoutGetCanvasStrokeFrameForTableName(void *a1)
{
  v2 = [objc_msgSend(a1 "spaceBundle")];
  StrokeFrameForTableNameBorder = TSTLayoutSpaceGetStrokeFrameForTableNameBorder([objc_msgSend(a1 "spaceBundle")]);

  return TSTLayoutSpaceGetCanvasRectForLayoutRect(v2, StrokeFrameForTableNameBorder, v4, v5, v6);
}

uint64_t TSTLayoutGetFrozenHeaderRowsEnabled(void *a1)
{
  result = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  if (result)
  {
    v3 = [a1 masterLayout];
    EntireHeaderRowsCellRange = TSTMasterLayoutGetEntireHeaderRowsCellRange(v3);
    IsEntireCellRangeHidden = TSTMasterLayoutIsEntireCellRangeHidden(v3, EntireHeaderRowsCellRange);
    if (([objc_msgSend(a1 "layoutHint")] & 1) != 0 && (objc_msgSend(objc_msgSend(a1, "layoutHint"), "partitionPosition") & 4) != 0)
    {
      result = TSTMasterLayoutGetHeaderRowsFrozen(v3);
      if (result)
      {
        return TSTMasterLayoutGetTableNumberOfHeaderRows(v3) != 0 && !IsEntireCellRangeHidden;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t TSTLayoutSetCanvasVisibleRect(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(a1 + 320) = a2;
  *(a1 + 328) = a3;
  *(a1 + 336) = a4;
  *(a1 + 344) = a5;
  v30.origin.x = TSTLayoutGetVisibleAlignedStrokeFrame(a1);
  v6 = *(a1 + 352);
  v7 = *(a1 + 360);
  v8 = *(a1 + 368);
  v9 = *(a1 + 376);
  *(a1 + 352) = v30;
  v31 = CGRectIntegral(v30);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v31.origin.x = v6;
  v31.origin.y = v7;
  v31.size.width = v8;
  v31.size.height = v9;
  v32 = CGRectIntegral(v31);
  v14 = v32.origin.x;
  v15 = v32.origin.y;
  v16 = v32.size.width;
  v17 = v32.size.height;
  if (CGRectIsEmpty(v32))
  {
    [a1 setNeedsDisplayInRect:{x, y, width, height}];
  }

  else
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    rect = height;
    v33.size.height = height;
    MinX = CGRectGetMinX(v33);
    v34.origin.x = v14;
    v34.origin.y = v15;
    v34.size.width = v16;
    v34.size.height = v17;
    if (MinX < CGRectGetMinX(v34))
    {
      [a1 setNewCanvasRevealedHorizontally:1];
    }

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = rect;
    MinY = CGRectGetMinY(v35);
    v36.origin.x = v14;
    v36.origin.y = v15;
    v36.size.width = v16;
    v36.size.height = v17;
    if (MinY < CGRectGetMinY(v36))
    {
      [a1 setNewCanvasRevealedVertically:1];
    }

    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = rect;
    MaxX = CGRectGetMaxX(v37);
    v38.origin.x = v14;
    v38.origin.y = v15;
    v38.size.width = v16;
    v38.size.height = v17;
    if (MaxX > CGRectGetMaxX(v38))
    {
      [a1 setNewCanvasRevealedHorizontally:1];
    }

    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = rect;
    MaxY = CGRectGetMaxY(v39);
    v40.origin.x = v14;
    v40.origin.y = v15;
    v40.size.width = v16;
    v40.size.height = v17;
    if (MaxY > CGRectGetMaxY(v40))
    {
      [a1 setNewCanvasRevealedVertically:1];
    }
  }

  result = [a1 containedTextEditingLayout];
  if (result)
  {
    result = [a1 editingSpillingTextRange];
    if (result != 0xFFFF && (result & 0xFF0000) != 0xFF0000)
    {
      if (HIWORD(result))
      {
        if ((result & 0xFFFF00000000) != 0)
        {
          if ((TSTLayoutGetFrozenHeaderColumnsEnabled(a1) & 1) != 0 || (result = TSTLayoutGetFrozenHeaderRowsEnabled(a1), result))
          {
            [objc_msgSend(a1 "containedTextEditingLayout")];
            v23 = *(MEMORY[0x277CBF3A0] + 16);
            *(a1 + 512) = *MEMORY[0x277CBF3A0];
            *(a1 + 528) = v23;
            v24 = +[TSTChangeDescriptor changeDescriptorWithType:strokeRange:](TSTChangeDescriptor, "changeDescriptorWithType:strokeRange:", 27, [a1 editingSpillingTextRange]);
            [objc_msgSend(a1 "masterLayout")];
            v25 = [objc_msgSend(objc_msgSend(a1 "layoutController")];
            v26 = [objc_msgSend(objc_msgSend(a1 "layoutController")];
            v27 = [a1 tableInfo];

            return [TSKBroadcast asyncNotificationWithAccessController:v25 changeNotifier:v26 changeKind:1 details:v24 changeSource:v27];
          }
        }
      }
    }
  }

  return result;
}

double TSTLayoutGetVisibleAlignedStrokeFrame(void *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x5012000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = &unk_26CAC6BB9;
  v1 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *MEMORY[0x277CBF3A0];
  v12 = v1;
  [objc_msgSend(a1 spaceBundle];
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_26CA0E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double *TSTLayoutSetPreviousVisibleStrokeFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[44] = a2;
  result[45] = a3;
  result[46] = a4;
  result[47] = a5;
  return result;
}

unint64_t TSTLayoutGetVisibleRange(void *a1)
{
  v2 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutGetVisibleRangeForSpace(a1, v2);
}

unint64_t TSTLayoutGetVisibleRangeForSpace(double *a1, TSTLayoutSpace *a2)
{
  LayoutRectForCanvasRect = TSTLayoutSpaceGetLayoutRectForCanvasRect(a2, a1[40], a1[41], a1[42], a1[43]);

  return TSTLayoutSpaceGetRangeIntersectingLayoutRect(a2, LayoutRectForCanvasRect, v4, v5, v6);
}

unint64_t TSTLayoutGetVisiblePartOfRange(double *a1, unint64_t a2)
{
  v3 = ~a2;
  VisibleRangeForSpace = TSTLayoutGetVisibleRangeForSpace(a1, [objc_msgSend(a1 "spaceBundle")]);
  v5 = 0;
  v6 = 16711680;
  v7 = 0xFFFFLL;
  if (!v3)
  {
    goto LABEL_23;
  }

  v8 = 0;
  if ((a2 & 0xFF0000) == 0xFF0000)
  {
    return v6 | v7 | v5 | v8;
  }

  v5 = 0;
  v6 = 16711680;
  v7 = 0xFFFFLL;
  if (!HIWORD(a2))
  {
    goto LABEL_23;
  }

  v8 = 0;
  if ((a2 & 0xFFFF00000000) == 0)
  {
    return v6 | v7 | v5 | v8;
  }

  v5 = 0;
  v6 = 16711680;
  v7 = 0xFFFFLL;
  if (VisibleRangeForSpace == 0xFFFF)
  {
    goto LABEL_23;
  }

  v8 = 0;
  if ((VisibleRangeForSpace & 0xFF0000) == 0xFF0000)
  {
    return v6 | v7 | v5 | v8;
  }

  v5 = 0;
  v6 = 16711680;
  v7 = 0xFFFFLL;
  if (!HIWORD(VisibleRangeForSpace))
  {
LABEL_23:
    v8 = 0;
    return v6 | v7 | v5 | v8;
  }

  v8 = 0;
  if ((VisibleRangeForSpace & 0xFFFF00000000) != 0)
  {
    v7 = 0;
    if (BYTE2(a2) <= BYTE2(VisibleRangeForSpace))
    {
      v9 = BYTE2(VisibleRangeForSpace);
    }

    else
    {
      v9 = BYTE2(a2);
    }

    if (a2 <= VisibleRangeForSpace)
    {
      v10 = VisibleRangeForSpace;
    }

    else
    {
      v10 = a2;
    }

    if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(VisibleRangeForSpace) + BYTE2(VisibleRangeForSpace) - 1))
    {
      v11 = (BYTE4(VisibleRangeForSpace) + BYTE2(VisibleRangeForSpace) - 1);
    }

    else
    {
      v11 = (BYTE4(a2) + BYTE2(a2) - 1);
    }

    v12 = (VisibleRangeForSpace + HIWORD(VisibleRangeForSpace) - 1);
    if ((a2 + HIWORD(a2) - 1) < v12)
    {
      v12 = (a2 + HIWORD(a2) - 1);
    }

    v6 = 0;
    v5 = 0;
    v8 = 0;
    if (v10 <= v12 && v9 <= v11)
    {
      v8 = ((v12 - v10) << 48) + 0x1000000000000;
      v5 = (((v11 - v9) << 32) + 0x100000000) & 0xFFFF00000000;
      v6 = v9 << 16;
      v7 = v10;
    }
  }

  return v6 | v7 | v5 | v8;
}

__n128 __Block_byref_object_copy__30(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t __TSTLayoutGetVisibleAlignedStrokeFrame_block_invoke(uint64_t a1, TSTLayoutSpace *a2)
{
  if (![(TSTLayoutSpace *)a2 isRepeat])
  {
    [(TSTLayoutSpace *)a2 lockForRead];
    VisibleRangeForSpace = TSTLayoutGetVisibleRangeForSpace(*(a1 + 32), a2);
    if (HIWORD(VisibleRangeForSpace))
    {
      v5 = (VisibleRangeForSpace & 0xFFFF00000000) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      if (BYTE2(VisibleRangeForSpace) == 255)
      {
        v6 = -1;
      }

      else
      {
        v6 = BYTE2(VisibleRangeForSpace);
      }

      v7 = WORD2(VisibleRangeForSpace) + v6 - 1;
      if (!WORD2(VisibleRangeForSpace))
      {
        v7 = 0xFFFFFFFFLL;
      }

      if (VisibleRangeForSpace == 0xFFFF)
      {
        v8 = 0xFFFFFFFFLL;
      }

      else
      {
        v8 = VisibleRangeForSpace;
      }

      AlignedStrokeFrameForGridRange = TSTLayoutSpaceGetAlignedStrokeFrameForGridRange(a2, v6 | (v8 << 32), (((v8 << 32) + (HIDWORD(VisibleRangeForSpace) << 16)) & 0xFFFFFFFF00000000 | v7) - 0x100000000);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      IsEmpty = CGRectIsEmpty(*(*(*(a1 + 40) + 8) + 48));
      v17 = *(*(a1 + 40) + 8);
      if (IsEmpty)
      {
        *(v17 + 48) = AlignedStrokeFrameForGridRange;
        *(v17 + 56) = v11;
        *(v17 + 64) = v13;
        *(v17 + 72) = v15;
      }

      else
      {
        v19.origin.x = AlignedStrokeFrameForGridRange;
        v19.origin.y = v11;
        v19.size.width = v13;
        v19.size.height = v15;
        *(*(*(a1 + 40) + 8) + 48) = CGRectUnion(*(v17 + 48), v19);
      }
    }

    [(TSTLayoutSpace *)a2 unlock];
  }

  return 0;
}

void *TSTLayoutGetVisibleLayoutSpaces(TSTLayout *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(TSTMasterLayout *)[(TSTLayout *)a1 masterLayout] isDynamicallyRepressingFrozenHeaders])
  {
    v2 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] frozenHeaderRowsSpace];
    v2 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] frozenHeaderColumnsSpace];
  }

  v10 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle:v8] repeatHeaderCornerSpace];
  v11 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] repeatHeaderRowsSpace];
  v12 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] repeatHeaderColumnsSpace];
  v13 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
  for (i = 0; i != 56; i += 8)
  {
    v5 = *(&v8 + i);
    if (!v5)
    {
      continue;
    }

    v6 = [*(&v8 + i) layoutSpaceType];
    if (v6 == 3)
    {
      if (TSTLayoutGetFrozenHeaderRowsFloating(a1))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v6 == 2)
      {
        if ((TSTLayoutGetFrozenHeaderColumnsFloating(a1) & 1) == 0)
        {
          continue;
        }

LABEL_13:
        [v3 addObject:v5];
        continue;
      }

      if (v6 != 1 || TSTLayoutGetFrozenHeaderColumnsFloating(a1) && (TSTLayoutGetFrozenHeaderRowsFloating(a1) & 1) != 0)
      {
        goto LABEL_13;
      }
    }
  }

  return v3;
}

uint64_t TSTLayoutGetCellIDHitByCanvasPoint(TSTLayout *a1, CGFloat a2, double a3)
{
  v3 = a1;
  v119 = *MEMORY[0x277D85DE8];
  v104 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];
  VisibleLayoutSpaces = TSTLayoutGetVisibleLayoutSpaces(v3);
  if (v3->mTableNameVisible && ![(TSTMasterLayout *)[(TSTLayout *)v3 masterLayout] isDynamicallyRepressingFrozenHeaders])
  {
    if (TSTLayoutGetFrozenHeaderRowsEnabled(v3))
    {
      if (TSTLayoutGetFrozenHeaderRowsFloating(v3))
      {
        v5 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)v3 spaceBundle] frozenHeaderRowsSpace];
        if (v5)
        {
          v6 = v5;
          memset(&v117, 0, sizeof(v117));
          TSTLayoutGetFrozenHeaderRowsTransformToLayout(v3, &v117);
          TSTLayoutGetCanvasFrameForFrozenTableName(v3);
          v8 = v7;
          v121.origin.x = TSTLayoutSpaceGetCanvasFrame(v6);
          v116 = v117;
          v122 = CGRectApplyAffineTransform(v121, &v116);
          if (a3 < CGRectGetMinY(v122) && a3 > v8)
          {
            return 0xFFFFFFLL;
          }
        }
      }
    }
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v9 = [VisibleLayoutSpaces countByEnumeratingWithState:&v112 objects:v118 count:16];
  if (!v9)
  {
    return 0xFFFFFFLL;
  }

  v10 = v9;
  v11 = *v113;
  rect_8 = vdupq_lane_s64(*&a2, 0);
  v105 = -1;
  v106 = -1;
  rect_24 = VisibleLayoutSpaces;
  v102 = v3;
LABEL_10:
  v12 = 0;
  while (1)
  {
    if (*v113 != v11)
    {
      objc_enumerationMutation(VisibleLayoutSpaces);
    }

    v13 = *(*(&v112 + 1) + 8 * v12);
    if (!v13)
    {
      goto LABEL_31;
    }

    GridRange = TSTLayoutSpaceGetGridRange(*(*(&v112 + 1) + 8 * v12));
    v16 = GridRange == -1 || v15 == -1;
    v17 = v16 || GridRange > v15;
    v18 = HIDWORD(GridRange);
    v19 = HIDWORD(v15);
    v20 = v17 || v18 == 0xFFFFFFFF;
    v21 = v20 || v19 == 0xFFFFFFFF;
    if (v21 || v18 > v19)
    {
      goto LABEL_31;
    }

    v23 = [v13 layoutSpaceType];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    v25 = *MEMORY[0x277CBF2C0];
    v26 = *(MEMORY[0x277CBF2C0] + 16);
    v27 = *(MEMORY[0x277CBF2C0] + 32);
    if (v23 <= 4)
    {
      switch(v23)
      {
        case 1:
          TSTLayoutGetFrozenHeaderCornerTransformToLayout(v3, &v116);
          goto LABEL_59;
        case 2:
          TSTLayoutGetFrozenHeaderColumnsTransformToLayout(v3, &v116);
          goto LABEL_59;
        case 3:
          TSTLayoutGetFrozenHeaderRowsTransformToLayout(v3, &v116);
LABEL_59:
          CGAffineTransformInvert(&v117, &v116);
          v25 = *&v117.a;
          v26 = *&v117.c;
          v107 = 1;
          v35 = v104;
          v27 = *&v117.tx;
          goto LABEL_62;
      }

LABEL_60:
      v107 = 0;
      goto LABEL_61;
    }

    if ((v23 - 5) >= 2)
    {
      goto LABEL_60;
    }

    v107 = 1;
LABEL_61:
    v35 = v13;
LABEL_62:
    v36 = vaddq_f64(v27, vmlaq_f64(vmulq_n_f64(v26, a3), rect_8, v25));
    if (v3->mTabsVisible)
    {
      if (v24 == 3)
      {
        v109 = v36;
        TSTLayoutGetRowTabsCanvasFrameAndAdjustment([v13 layout], 0);
        v41 = 0;
        goto LABEL_67;
      }

      if (v24 == 2)
      {
        v109 = v36;
        TSTLayoutGetColumnTabsCanvasFrameAndAdjustment([v13 layout], 0);
        v41 = 1;
LABEL_67:
        v120.x = a2;
        v120.y = a3;
        v42 = CGRectContainsPoint(*&v37, v120);
        v111 = v109;
        v43 = *(&v111 | (8 * v41));
        if (v42)
        {
          v43 = -31.0;
        }

        *(&v111 & 0xFFFFFFFFFFFFFFF7 | (8 * (v41 & 1))) = v43;
        v36 = v111;
      }
    }

    v44 = v36.f64[1];
    v110 = v36.f64[0];
    GridPointHitByCanvasPoint = TSTLayoutSpaceGetGridPointHitByCanvasPoint(v35, 0, v36.f64[0], v36.f64[1]);
    v46 = HIDWORD(GridPointHitByCanvasPoint);
    v47 = TSTLayoutSpaceGetGridRange(v13);
    v49 = v48;
    if (v24 == 4)
    {
      Frame = TSTLayoutSpaceGetFrame(v104);
      rect = TSTLayoutSpaceGetCanvasRectForLayoutRect(v104, Frame, v51, v52, v53);
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v60 = TSTLayoutSpaceGetFrame(v13);
      CanvasRectForLayoutRect = TSTLayoutSpaceGetCanvasRectForLayoutRect(v13, v60, v61, v62, v63);
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v71 = TSTLayoutSpaceGetGridRange(v13);
      v73 = v72;
      v123.origin.x = CanvasRectForLayoutRect;
      v123.origin.y = v66;
      v123.size.width = v68;
      v123.size.height = v70;
      MaxX = CGRectGetMaxX(v123);
      v75 = HIDWORD(GridPointHitByCanvasPoint);
      if (v110 <= MaxX)
      {
        v124.origin.x = CanvasRectForLayoutRect;
        v124.origin.y = v66;
        v124.size.width = v68;
        v124.size.height = v70;
        if (v110 >= CGRectGetMinX(v124) || (v125.origin.x = rect, v125.origin.y = v55, v125.size.width = v57, v125.size.height = v59, MinX = CGRectGetMinX(v125), v75 = HIDWORD(GridPointHitByCanvasPoint), v110 <= MinX))
        {
          v126.origin.x = CanvasRectForLayoutRect;
          v126.origin.y = v66;
          v126.size.width = v68;
          v126.size.height = v70;
          MaxY = CGRectGetMaxY(v126);
          v75 = HIDWORD(GridPointHitByCanvasPoint);
          if (v44 <= MaxY)
          {
            if (GridPointHitByCanvasPoint == -1 && v46 != 0xFFFFFFFF && HIDWORD(v71) <= v46 && HIDWORD(v73) >= v46)
            {
              v87 = 0;
              v89 = 0;
              v88 = HIDWORD(GridPointHitByCanvasPoint);
              v75 = HIDWORD(GridPointHitByCanvasPoint);
              if ((v107 & 1) == 0)
              {
                goto LABEL_109;
              }

              goto LABEL_103;
            }

            if (v73 >= GridPointHitByCanvasPoint)
            {
              v75 = 0;
            }

            else
            {
              v75 = -1;
            }

            if (GridPointHitByCanvasPoint == -1 || v71 > GridPointHitByCanvasPoint)
            {
              v75 = -1;
            }

            if (v46 != 0xFFFFFFFF)
            {
              v75 = HIDWORD(GridPointHitByCanvasPoint);
            }
          }
        }
      }

LABEL_100:
      if ((v107 & 1) == 0)
      {
        v89 = GridPointHitByCanvasPoint;
        goto LABEL_109;
      }

      if (GridPointHitByCanvasPoint == -1)
      {
        v89 = 0;
        goto LABEL_109;
      }

      v87 = GridPointHitByCanvasPoint;
      v88 = v75;
LABEL_103:
      if (v88 == -1)
      {
        v75 = 0;
      }

      else
      {
        v75 = v88;
      }

      v89 = v87;
LABEL_109:
      v94 = v89 != -1 && v47 <= v89 && v49 >= v89 && v75 != -1 && HIDWORD(v47) <= v75 && HIDWORD(v49) >= v75;
      VisibleLayoutSpaces = rect_24;
      v3 = v102;
      if (v94)
      {
        if (GridPointHitByCanvasPoint == -1)
        {
          v98 = 16711680;
        }

        else
        {
          v98 = GridPointHitByCanvasPoint << 16;
        }

        return v98 & 0xFFFF0000 | WORD2(GridPointHitByCanvasPoint);
      }

      goto LABEL_31;
    }

    v75 = HIDWORD(GridPointHitByCanvasPoint);
    if ((v24 - 5) > 1)
    {
      goto LABEL_100;
    }

    v127.origin.x = TSTLayoutSpaceGetCanvasFrame(v13);
    x = v127.origin.x;
    y = v127.origin.y;
    width = v127.size.width;
    height = v127.size.height;
    if (v110 <= CGRectGetMaxX(v127))
    {
      v128.origin.x = x;
      v128.origin.y = y;
      v128.size.width = width;
      v128.size.height = height;
      v86 = CGRectGetMaxY(v128);
      v75 = HIDWORD(GridPointHitByCanvasPoint);
      if (v44 <= v86)
      {
        goto LABEL_100;
      }
    }

    VisibleLayoutSpaces = rect_24;
    v3 = v102;
LABEL_31:
    if (v10 == ++v12)
    {
      v95 = [VisibleLayoutSpaces countByEnumeratingWithState:&v112 objects:v118 count:16];
      v10 = v95;
      if (!v95)
      {
        return v105 | (v106 << 16);
      }

      goto LABEL_10;
    }
  }

  v28 = TSTLayoutSpaceGetGridPointHitByCanvasPoint(v13, v3->mTabsVisible, a2, a3);
  v29 = HIDWORD(v28);
  if (v28 <= 0xFFFFFFFEFFFFFFFFLL && v28 != 0xFFFFFFFFLL)
  {
    if (v28 != -1 && v106 == -1)
    {
      v32 = v28;
    }

    else
    {
      v32 = v106;
    }

    v33 = v105;
    if (v29 != 0xFFFFFFFF && v105 == -1)
    {
      v33 = HIDWORD(v28);
    }

    v105 = v33;
    v106 = v32;
    goto LABEL_31;
  }

  if (v28 == 0xFFFFFFFFLL)
  {
    v97 = 16711680;
  }

  else
  {
    v97 = v28 << 16;
  }

  return v97 & 0xFFFF0000 | v29;
}

double TSTLayoutGetCanvasFrameForFrozenTableName(TSTLayout *a1)
{
  FrameForFrozenTableName = TSTLayoutGetFrameForFrozenTableName(a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];

  return TSTLayoutSpaceGetCanvasRectForLayoutRect(v9, FrameForFrozenTableName, v4, v6, v8);
}

uint64_t TSTLayoutGetCellIDNearbyCanvasPoint(TSTLayout *a1)
{
  TSTLayoutSpaceGetCanvasFrame([(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space]);
  v2 = TSDClampPointInRect();

  return TSTLayoutGetCellIDHitByCanvasPoint(a1, v2, v3);
}

uint64_t TSTLayoutColumnGridlineNearCanvasPoint(TSTLayout *a1, double *a2, CGFloat a3, double a4)
{
  CellIDHitByCanvasPoint = TSTLayoutGetCellIDHitByCanvasPoint(a1, a3, a4);
  v8 = BYTE2(CellIDHitByCanvasPoint);
  if (BYTE2(CellIDHitByCanvasPoint) == 255)
  {
    if (a2)
    {
      *a2 = 1.79769313e308;
    }

    LOBYTE(v9) = -1;
    return v9;
  }

  v10 = CellIDHitByCanvasPoint;
  v11 = CellIDHitByCanvasPoint & 0xFF000000;
  RangeForHint = TSTMasterLayoutGetRangeForHint([(TSTLayout *)a1 masterLayout], [(TSTLayout *)a1 layoutHint]);
  v23.origin.x = TSTLayoutGetCanvasFrameForRange(a1, v11 & 0xFFFF0000 | (v8 << 16) | RangeForHint | 0x1000100000000);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v17 = a3 - CGRectGetMinX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v18 = CGRectGetMaxX(v24) - a3;
  if ([(TSTLayout *)a1 layoutDirectionIsLeftToRight])
  {
    if (v17 < v18 && v8 > BYTE2(RangeForHint))
    {
      if (a2)
      {
        *a2 = v17;
      }

      v19 = [(TSTLayout *)a1 masterLayout];

      return TSTMasterLayoutPreviousVisibleColumn(v19, (BYTE2(v10) - 1));
    }

LABEL_20:
    v9 = HIWORD(v10);
    if (a2)
    {
      *a2 = v18;
    }

    return v9;
  }

  if (v17 >= v18 || v8 >= (BYTE4(RangeForHint) + BYTE2(RangeForHint) - 1))
  {
    goto LABEL_20;
  }

  if (a2)
  {
    *a2 = v17;
  }

  v21 = [(TSTLayout *)a1 masterLayout];

  return TSTMasterLayoutNextVisibleColumn(v21, (BYTE2(v10) + 1));
}

double TSTLayoutGetCanvasFrameForRange(TSTLayout *a1, unint64_t a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  v3 = WORD2(a2) + v2 - 1;
  if (!WORD2(a2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v6 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(a1, v5, v6 | v3, &__block_literal_global_82);
}

uint64_t TSTLayoutRowGridlineNearCanvasPoint(TSTLayout *a1, double *a2, CGFloat a3, double a4)
{
  CellIDHitByCanvasPoint = TSTLayoutGetCellIDHitByCanvasPoint(a1, a3, a4);
  v8 = CellIDHitByCanvasPoint;
  if (CellIDHitByCanvasPoint == 0xFFFF)
  {
    if (a2)
    {
      *a2 = 1.79769313e308;
    }

    LOWORD(v9) = -1;
    return v9;
  }

  v9 = CellIDHitByCanvasPoint;
  RangeForHint = TSTMasterLayoutGetRangeForHint([(TSTLayout *)a1 masterLayout], [(TSTLayout *)a1 layoutHint]);
  v11 = RangeForHint;
  v22.origin.x = TSTLayoutGetCanvasFrameForRange(a1, v9 & 0xFF00FFFF | (BYTE2(RangeForHint) << 16) | 0x1000100000000);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v16 = a4 - CGRectGetMinY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v17 = CGRectGetMaxY(v23) - a4;
  if (v16 >= v17 || v8 <= v11)
  {
    if (a2)
    {
      *a2 = v17;
    }

    return v9;
  }

  if (a2)
  {
    *a2 = v16;
  }

  v20 = [(TSTLayout *)a1 masterLayout];

  return TSTMasterLayoutPreviousVisibleRow(v20, (v9 - 1));
}

double TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(TSTLayout *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = TSTLayoutGetVisibleLayoutSpaces(a1);
  v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v32 = 0;
    v13 = 0;
    v14 = HIDWORD(a2);
    v15 = *v37;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        if (TSTLayoutSpaceIntersectsGridRange(v17, a2 | (v14 << 32), a3))
        {
          v18 = TSTLayoutSpaceIntersectionGridRange(v17, a2 | (v14 << 32), a3);
          x = (*(a4 + 16))(a4, v17, v18, v19);
          y = v21;
          width = v23;
          height = v25;
          v27 = [v17 layoutSpaceType];
          if (v27 > 1)
          {
            if (v27 == 3)
            {
              memset(&v35, 0, sizeof(v35));
              TSTLayoutGetFrozenHeaderRowsTransformToLayout(a1, &v35);
              v34 = v35;
              v46.origin.x = x;
              v46.origin.y = y;
              v46.size.width = width;
              v46.size.height = height;
              v47 = CGRectApplyAffineTransform(v46, &v34);
              x = v47.origin.x;
              y = v47.origin.y;
              width = v47.size.width;
              height = v47.size.height;
              TSTLayoutSpaceGetGridRange(v17);
              v14 = (v29 + 1);
LABEL_17:
              v13 = 1;
            }

            else
            {
              if (v27 != 2)
              {
                goto LABEL_14;
              }

              memset(&v35, 0, sizeof(v35));
              TSTLayoutGetFrozenHeaderColumnsTransformToLayout(a1, &v35);
              v34 = v35;
              v44.origin.x = x;
              v44.origin.y = y;
              v44.size.width = width;
              v44.size.height = height;
              v45 = CGRectApplyAffineTransform(v44, &v34);
              x = v45.origin.x;
              y = v45.origin.y;
              width = v45.size.width;
              height = v45.size.height;
              TSTLayoutSpaceGetGridRange(v17);
              LODWORD(a2) = v28 + 1;
              v32 = 1;
            }
          }

          else if (v27)
          {
            if (v27 == 1)
            {
              memset(&v35, 0, sizeof(v35));
              TSTLayoutGetFrozenHeaderCornerTransformToLayout(a1, &v35);
              v34 = v35;
              v42.origin.x = x;
              v42.origin.y = y;
              v42.size.width = width;
              v42.size.height = height;
              v43 = CGRectApplyAffineTransform(v42, &v34);
              x = v43.origin.x;
              y = v43.origin.y;
              width = v43.size.width;
              height = v43.size.height;
              v32 = 1;
              goto LABEL_17;
            }

LABEL_14:
            if (TSTLayoutSpaceContainsGridRange(v17, a2 | (v14 << 32), a3))
            {
              return x;
            }
          }

          v48.origin.x = v7;
          v48.origin.y = v8;
          v48.size.width = v9;
          v48.size.height = v10;
          if (CGRectIsNull(v48))
          {
            v7 = x;
            v8 = y;
            v9 = width;
            v10 = height;
          }

          else
          {
            if ((v32 & (x < v7)) == 1)
            {
              width = width - (v7 - x);
              if (width >= 0.0)
              {
                x = x + v7 - x;
              }

              else
              {
                x = *MEMORY[0x277CBF398];
                y = *(MEMORY[0x277CBF398] + 8);
                width = *(MEMORY[0x277CBF398] + 16);
                height = *(MEMORY[0x277CBF398] + 24);
              }
            }

            if ((v13 & (y < v8)) == 1)
            {
              height = height - (v8 - y);
              if (height >= 0.0)
              {
                y = y + v8 - y;
              }

              else
              {
                x = *MEMORY[0x277CBF398];
                y = *(MEMORY[0x277CBF398] + 8);
                width = *(MEMORY[0x277CBF398] + 16);
                height = *(MEMORY[0x277CBF398] + 24);
              }
            }

            v49.origin.x = v7;
            v49.origin.y = v8;
            v49.size.width = v9;
            v49.size.height = v10;
            v51.origin.x = x;
            v51.origin.y = y;
            v51.size.width = width;
            v51.size.height = height;
            v50 = CGRectUnion(v49, v51);
            v7 = v50.origin.x;
            v8 = v50.origin.y;
            v9 = v50.size.width;
            v10 = v50.size.height;
          }

          continue;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      x = v7;
      if (!v12)
      {
        return x;
      }
    }
  }

  return v7;
}

double TSTLayoutGetFrameForGridRange(TSTLayout *a1, unint64_t a2, unint64_t a3)
{
  ArbitraryRectAcrossSpacesForGridRange = TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(a1, a2, a3, &__block_literal_global_82);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];

  return TSTLayoutSpaceGetLayoutRectForCanvasRect(v11, ArbitraryRectAcrossSpacesForGridRange, v6, v8, v10);
}

double TSTLayoutGetFrameForRange(TSTLayout *a1, unint64_t a2)
{
  CanvasFrameForRange = TSTLayoutGetCanvasFrameForRange(a1, a2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];

  return TSTLayoutSpaceGetLayoutRectForCanvasRect(v10, CanvasFrameForRange, v5, v7, v9);
}

double TSTLayoutGetBoundsForCellRange(TSTLayout *a1, unint64_t a2)
{
  v4 = ~a2;
  v5 = [(TSTTableModel *)[(TSTLayout *)a1 tableModel] range];
  v6 = 0;
  v7 = 16711680;
  v8 = 0xFFFFLL;
  if (!v4)
  {
    goto LABEL_23;
  }

  v9 = 0;
  if ((a2 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v6 = 0;
  v7 = 16711680;
  v8 = 0xFFFFLL;
  if (!HIWORD(a2))
  {
    goto LABEL_23;
  }

  v9 = 0;
  if ((a2 & 0xFFFF00000000) == 0)
  {
    goto LABEL_24;
  }

  v6 = 0;
  v7 = 16711680;
  v8 = 0xFFFFLL;
  if (v5 == 0xFFFF)
  {
    goto LABEL_23;
  }

  v9 = 0;
  if ((v5 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v6 = 0;
  v7 = 16711680;
  v8 = 0xFFFFLL;
  if (!HIWORD(v5))
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  v9 = 0;
  if ((v5 & 0xFFFF00000000) != 0)
  {
    v8 = 0;
    if (BYTE2(a2) <= BYTE2(v5))
    {
      v10 = BYTE2(v5);
    }

    else
    {
      v10 = BYTE2(a2);
    }

    if (a2 <= v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = a2;
    }

    if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(v5) + BYTE2(v5) - 1))
    {
      v12 = (BYTE4(v5) + BYTE2(v5) - 1);
    }

    else
    {
      v12 = (BYTE4(a2) + BYTE2(a2) - 1);
    }

    v13 = (v5 + HIWORD(v5) - 1);
    if ((a2 + HIWORD(a2) - 1) < v13)
    {
      v13 = (a2 + HIWORD(a2) - 1);
    }

    v7 = 0;
    v6 = 0;
    v9 = 0;
    if (v11 <= v13 && v10 <= v12)
    {
      v9 = ((v13 - v11) << 48) + 0x1000000000000;
      v6 = (((v12 - v10) << 32) + 0x100000000) & 0xFFFF00000000;
      v7 = v10 << 16;
      v8 = v11;
    }
  }

LABEL_24:
  v14 = v7 | v8 | v6 | v9;
  if (v14 == 0xFFFF)
  {
    return *MEMORY[0x277CBF3A0];
  }

  v15 = (v14 & 0xFF0000) == 0xFF0000 || HIWORD(v14) == 0;
  if (v15 || (v14 & 0xFFFF00000000) == 0)
  {
    return *MEMORY[0x277CBF3A0];
  }

  if (BYTE2(v14) == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = BYTE2(v14);
  }

  v19 = WORD2(v14) + v18 - 1;
  if (!WORD2(v14))
  {
    v19 = 0xFFFFFFFFLL;
  }

  return TSTLayoutGetFrameForGridRange(a1, v18 | (v14 << 32), (((v14 << 32) + (HIDWORD(v14) << 16)) & 0xFFFFFFFF00000000 | v19) - 0x100000000);
}

double TSTLayoutGetScrollBoundsForCellRange(TSTLayout *a1, unint64_t a2)
{
  v45.origin.x = TSTLayoutGetBoundsForCellRange(a1, a2);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  if (!CGRectIsEmpty(v45))
  {
    v8 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] frozenHeaderRowsSpace];
    v9 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] frozenHeaderColumnsSpace];
    if (v8 | v9)
    {
      v10 = v9;
      TSTLayoutGetTopLeftTabCanvasFrame(a1);
      TSTLayoutSpaceGetLayoutRectForCanvasRect([(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space], v11, v12, v13, v14);
      v42 = v16;
      if (v8)
      {
        v17 = v15;
        v18 = TSTLayoutSpaceIntersectionCellRange(v8, a2);
        if (v18 == 0xFFFF || (v18 & 0xFF0000) == 0xFF0000 || !HIWORD(v18) || (v18 & 0xFFFF00000000) == 0)
        {
          v41 = v17;
          Frame = TSTLayoutSpaceGetFrame(v8);
          v21 = v20;
          v23 = v22;
          v25 = v24;
          memset(&v44, 0, sizeof(v44));
          TSTLayoutGetFrozenHeaderRowsTransformToLayout(a1, &v44);
          v43 = v44;
          v46.origin.x = Frame;
          v46.origin.y = v21;
          v46.size.width = v23;
          v46.size.height = v25;
          v47 = CGRectApplyAffineTransform(v46, &v43);
          v26 = v47.size.height;
          MaxY = CGRectGetMaxY(v47);
          v48.origin.x = x;
          v48.origin.y = y;
          v48.size.width = width;
          v48.size.height = height;
          if (MaxY > CGRectGetMinY(v48))
          {
            TSTLayoutGetTableNameHeight(a1);
            v29 = v41 + v26 + v28;
            y = y - v29;
            height = height + v29;
          }
        }
      }

      if (v10)
      {
        v30 = TSTLayoutSpaceIntersectionCellRange(v10, a2);
        if (v30 == 0xFFFF || (v30 & 0xFF0000) == 0xFF0000 || !HIWORD(v30) || (v30 & 0xFFFF00000000) == 0)
        {
          v31 = TSTLayoutSpaceGetFrame(v10);
          v33 = v32;
          v35 = v34;
          v37 = v36;
          memset(&v44, 0, sizeof(v44));
          TSTLayoutGetFrozenHeaderColumnsTransformToLayout(a1, &v44);
          v43 = v44;
          v49.origin.x = v31;
          v49.origin.y = v33;
          v49.size.width = v35;
          v49.size.height = v37;
          v50 = CGRectApplyAffineTransform(v49, &v43);
          v38 = v50.size.width;
          MaxX = CGRectGetMaxX(v50);
          v51.origin.x = x;
          v51.origin.y = y;
          v51.size.width = width;
          v51.size.height = height;
          if (MaxX > CGRectGetMinX(v51))
          {
            return x - (v42 + v38);
          }
        }
      }
    }
  }

  return x;
}

double TSTLayoutGetCanvasStrokeFrameForGridRange(TSTLayout *a1, unint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  VisibleLayoutSpaces = TSTLayoutGetVisibleLayoutSpaces(a1);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [VisibleLayoutSpaces countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(VisibleLayoutSpaces);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if (TSTLayoutSpaceIntersectsGridRange(v14, a2, a3))
        {
          v15 = TSTLayoutSpaceIntersectionGridRange(v14, a2, a3);
          CanvasStrokeFrameForGridRange = TSTLayoutSpaceGetCanvasStrokeFrameForGridRange(v14, v15, v16);
          v19 = v18;
          v21 = v20;
          v23 = v22;
          if (TSTLayoutSpaceContainsGridRange(v14, a2, a3))
          {
            return CanvasStrokeFrameForGridRange;
          }

          v31.origin.x = x;
          v31.origin.y = y;
          v31.size.width = width;
          v31.size.height = height;
          if (CGRectIsNull(v31))
          {
            x = CanvasStrokeFrameForGridRange;
            y = v19;
            width = v21;
            height = v23;
          }

          else
          {
            v32.origin.x = x;
            v32.origin.y = y;
            v32.size.width = width;
            v32.size.height = height;
            v34.origin.x = CanvasStrokeFrameForGridRange;
            v34.origin.y = v19;
            v34.size.width = v21;
            v34.size.height = v23;
            v33 = CGRectUnion(v32, v34);
            x = v33.origin.x;
            y = v33.origin.y;
            width = v33.size.width;
            height = v33.size.height;
          }
        }
      }

      v11 = [VisibleLayoutSpaces countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  return x;
}

double TSTLayoutGetStrokeFrameForGridRange(TSTLayout *a1, unint64_t a2, unint64_t a3)
{
  CanvasStrokeFrameForGridRange = TSTLayoutGetCanvasStrokeFrameForGridRange(a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];

  return TSTLayoutSpaceGetLayoutRectForCanvasRect(v11, CanvasStrokeFrameForGridRange, v6, v8, v10);
}

double TSTLayoutGetCanvasStrokeFrameForRange(TSTLayout *a1, unint64_t a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  v3 = WORD2(a2) + v2 - 1;
  if (!WORD2(a2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v6 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutGetCanvasStrokeFrameForGridRange(a1, v5, v6 | v3);
}

double TSTLayoutGetStrokeFrameForRange(TSTLayout *a1, unint64_t a2)
{
  CanvasStrokeFrameForRange = TSTLayoutGetCanvasStrokeFrameForRange(a1, a2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space];

  return TSTLayoutSpaceGetLayoutRectForCanvasRect(v10, CanvasStrokeFrameForRange, v5, v7, v9);
}

double TSTLayoutGetContentFrameForRange(TSTLayout *a1, unint64_t a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  v3 = WORD2(a2) + v2 - 1;
  if (!WORD2(a2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v6 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(a1, v5, v6 | v3, &__block_literal_global_67);
}

double TSTLayoutGetAlignedOverrideFrameForGridRange(TSTLayout *a1, unint64_t a2, unint64_t a3, double a4)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __TSTLayoutGetAlignedOverrideFrameForGridRange_block_invoke;
  v5[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__32__0__TSTLayoutSpace_8______II____II__16l;
  *&v5[4] = a4;
  return TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(a1, a2, a3, v5);
}

uint64_t __TSTLayoutGetAlignedStrokeFrame_block_invoke(uint64_t a1, void *a2)
{
  if (([a2 isFrozen] & 1) == 0)
  {
    AlignedStrokeFrame = TSTLayoutSpaceGetAlignedStrokeFrame(a2);
    v6 = v5;
    v8 = v7;
    v10 = v9;
    IsNull = CGRectIsNull(*(*(*(a1 + 32) + 8) + 48));
    v12 = *(*(a1 + 32) + 8);
    if (IsNull)
    {
      *(v12 + 48) = AlignedStrokeFrame;
      *(v12 + 56) = v6;
      *(v12 + 64) = v8;
      *(v12 + 72) = v10;
    }

    else
    {
      v14.origin.x = AlignedStrokeFrame;
      v14.origin.y = v6;
      v14.size.width = v8;
      v14.size.height = v10;
      *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(*(v12 + 48), v14);
    }
  }

  return 0;
}

double TSTLayoutGetAlignedStrokeFrameForRange(TSTLayout *a1, unint64_t a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  v3 = WORD2(a2) + v2 - 1;
  if (!WORD2(a2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v6 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutGetAlignedStrokeFrameForGridRange(a1, v5, v6 | v3, 0);
}

double TSTLayoutGetAlignedStrokeFrameForGridRange(TSTLayout *a1, unint64_t a2, unint64_t a3, int a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF398];
  v8 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v10 = *(MEMORY[0x277CBF398] + 24);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = TSTLayoutGetVisibleLayoutSpaces(a1);
  v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v38 = 0;
    v13 = 0;
    v14 = HIDWORD(a2);
    v15 = *v43;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        v18 = a2 | (v14 << 32);
        if (a4 == 2)
        {
          if (!TSTLayoutSpaceIntersectsColumnGridRange(v17, v18, a3))
          {
            continue;
          }

          v25 = TSTLayoutSpaceIntersectionColumnGridRange(v17, a2 | (v14 << 32), a3);
          AlignedStrokeLineForColumnGridRange = TSTLayoutSpaceGetAlignedStrokeLineForColumnGridRange(v17, v25, v26);
        }

        else if (a4 == 1)
        {
          if (!TSTLayoutSpaceIntersectsRowGridRange(v17, v18, a3))
          {
            continue;
          }

          v19 = TSTLayoutSpaceIntersectionRowGridRange(v17, a2 | (v14 << 32), a3);
          AlignedStrokeLineForColumnGridRange = TSTLayoutSpaceGetAlignedStrokeLineForRowGridRange(v17, v19, v20);
        }

        else
        {
          if (!TSTLayoutSpaceIntersectsGridRange(v17, v18, a3))
          {
            continue;
          }

          v27 = TSTLayoutSpaceIntersectionGridRange(v17, a2 | (v14 << 32), a3);
          AlignedStrokeLineForColumnGridRange = TSTLayoutSpaceGetAlignedStrokeFrameForGridRange(v17, v27, v28);
        }

        x = AlignedStrokeLineForColumnGridRange;
        y = v22;
        width = v23;
        height = v24;
        v33 = [(TSTLayoutSpace *)v17 layoutSpaceType];
        if (v33 == 1)
        {
          memset(&v41, 0, sizeof(v41));
          TSTLayoutGetFrozenHeaderCornerTransformToLayout(a1, &v41);
          v40 = v41;
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = height;
          v53 = CGRectApplyAffineTransform(v52, &v40);
          x = v53.origin.x;
          y = v53.origin.y;
          width = v53.size.width;
          height = v53.size.height;
          v38 = 1;
        }

        else
        {
          if (v33 != 3)
          {
            if (v33 == 2)
            {
              memset(&v41, 0, sizeof(v41));
              TSTLayoutGetFrozenHeaderColumnsTransformToLayout(a1, &v41);
              v40 = v41;
              v48.origin.x = x;
              v48.origin.y = y;
              v48.size.width = width;
              v48.size.height = height;
              v49 = CGRectApplyAffineTransform(v48, &v40);
              x = v49.origin.x;
              y = v49.origin.y;
              width = v49.size.width;
              height = v49.size.height;
              TSTLayoutSpaceGetGridRange(v17);
              LODWORD(a2) = v34 + 1;
              v38 = 1;
            }

            else if ([(TSTLayoutSpace *)v17 isRepeat]&& (TSTLayoutSpaceContainsGridRange(v17, a2 | (v14 << 32), a3) & 1) != 0)
            {
              return x;
            }

            goto LABEL_21;
          }

          memset(&v41, 0, sizeof(v41));
          TSTLayoutGetFrozenHeaderRowsTransformToLayout(a1, &v41);
          v40 = v41;
          v50.origin.x = x;
          v50.origin.y = y;
          v50.size.width = width;
          v50.size.height = height;
          v51 = CGRectApplyAffineTransform(v50, &v40);
          x = v51.origin.x;
          y = v51.origin.y;
          width = v51.size.width;
          height = v51.size.height;
          TSTLayoutSpaceGetGridRange(v17);
          v14 = (v35 + 1);
        }

        v13 = 1;
LABEL_21:
        v54.origin.x = v7;
        v54.origin.y = v8;
        v54.size.width = v9;
        v54.size.height = v10;
        if (CGRectIsNull(v54))
        {
          v7 = x;
          v8 = y;
          v9 = width;
          v10 = height;
        }

        else
        {
          if ((v38 & (x < v7)) == 1)
          {
            width = width - (v7 - x);
            if (width >= 0.0)
            {
              x = x + v7 - x;
            }

            else
            {
              x = *MEMORY[0x277CBF398];
              y = *(MEMORY[0x277CBF398] + 8);
              width = *(MEMORY[0x277CBF398] + 16);
              height = *(MEMORY[0x277CBF398] + 24);
            }
          }

          if ((v13 & (y < v8)) == 1)
          {
            height = height - (v8 - y);
            if (height >= 0.0)
            {
              y = y + v8 - y;
            }

            else
            {
              x = *MEMORY[0x277CBF398];
              y = *(MEMORY[0x277CBF398] + 8);
              width = *(MEMORY[0x277CBF398] + 16);
              height = *(MEMORY[0x277CBF398] + 24);
            }
          }

          v55.origin.x = v7;
          v55.origin.y = v8;
          v55.size.width = v9;
          v55.size.height = v10;
          v57.origin.x = x;
          v57.origin.y = y;
          v57.size.width = width;
          v57.size.height = height;
          v56 = CGRectUnion(v55, v57);
          v7 = v56.origin.x;
          v8 = v56.origin.y;
          v9 = v56.size.width;
          v10 = v56.size.height;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      x = v7;
      if (!v12)
      {
        return x;
      }
    }
  }

  return v7;
}

TSDBezierPath *TSTLayoutGetAlignedStrokeFramePathForRange(TSTLayout *a1, unint64_t a2, int a3, void *a4, CGFloat a5, CGFloat a6)
{
  v6 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v6 = -1;
  }

  v7 = WORD2(a2) + v6 - 1;
  if (!WORD2(a2))
  {
    v7 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = a2;
  }

  v9 = v6 | (v8 << 32);
  v10 = (((v8 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v10 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutGetAlignedStrokeFramePathForGridRange(a1, v9, v10 | v7, 0, a3, a4, a5, a6);
}

TSDBezierPath *TSTLayoutGetAlignedStrokeFramePathForGridRange(TSTLayout *a1, unint64_t a2, unint64_t a3, int a4, int a5, void *a6, CGFloat a7, CGFloat a8)
{
  v72 = *MEMORY[0x277D85DE8];
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  v69 = *MEMORY[0x277CBF2C0];
  v70 = v15;
  memset(&v68, 0, sizeof(v68));
  CGAffineTransformMakeScale(&v68, a7, a7);
  if (a5)
  {
    AlignedStrokeFrameForGridRange = TSTLayoutGetAlignedStrokeFrameForGridRange(a1, a2, a3, a4);
    v18 = vaddq_f64(*&v68.tx, vmlaq_n_f64(vmulq_n_f64(*&v68.c, v17), *&v68.a, AlignedStrokeFrameForGridRange));
  }

  else
  {
    v18 = vdupq_n_s64(0xC0F86A0000000000);
  }

  v53 = v18;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = TSTLayoutGetVisibleLayoutSpaces(a1);
  v61 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (!v61)
  {
    return 0;
  }

  v51 = a5;
  v52 = a6;
  v19 = 0;
  v59 = 0;
  v54 = 0;
  v20 = 0;
  v60 = *v65;
  v62 = HIDWORD(a2);
  v56 = a3;
  v55 = a4;
  do
  {
    v21 = 0;
    do
    {
      if (*v65 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v64 + 1) + 8 * v21);
      v23 = [(TSTLayoutSpace *)v22 layoutSpaceType];
      v24 = a2 | (v62 << 32);
      if (a4 == 2)
      {
        if (!TSTLayoutSpaceIntersectsColumnGridRange(v22, v24, a3))
        {
          goto LABEL_22;
        }

        v28 = TSTLayoutSpaceIntersectionColumnGridRange(v22, v24, a3);
        AlignedStrokeLinePathForColumnGridRange = TSTLayoutSpaceGetAlignedStrokeLinePathForColumnGridRange(v22, v28, v29, &v68, 0, a8);
LABEL_17:
        v32 = AlignedStrokeLinePathForColumnGridRange;
        switch(v23)
        {
          case 1:
            TSTLayoutGetFrozenHeaderCornerTransformToLayout(a1, &v63);
            v69 = *&v63.a;
            v70 = *&v63.c;
            *&v63.tx = vmulq_n_f64(*&v63.tx, a7);
            [(TSDBezierPath *)v32 transformUsingAffineTransform:&v63];
            v38 = 1;
            goto LABEL_57;
          case 2:
            v34 = v20;
            TSTLayoutGetFrozenHeaderColumnsTransformToLayout(a1, &v63);
            v69 = *&v63.a;
            v70 = *&v63.c;
            v63.tx = v63.tx * a7;
            [(TSDBezierPath *)v32 transformUsingAffineTransform:&v63];
            TSTLayoutSpaceGetGridRange(v22);
            v35 = 0;
            v33 = (v44 + 1);
            v37 = 1;
            v38 = 1;
            if ((v59 & 1) == 0)
            {
              v23 = 0;
              goto LABEL_28;
            }

            break;
          case 3:
            v33 = a2;
            v34 = v20;
            TSTLayoutGetFrozenHeaderRowsTransformToLayout(a1, &v63);
            v69 = *&v63.a;
            v70 = *&v63.c;
            v63.ty = v63.ty * a7;
            [(TSDBezierPath *)v32 transformUsingAffineTransform:&v63];
            TSTLayoutSpaceGetGridRange(v22);
            v35 = 0;
            v62 = (v36 + 1);
            v37 = 1;
            v38 = 1;
            if ((v19 & 1) == 0)
            {
              v23 = 1;
              v38 = 0;
LABEL_28:
              v20 = v34;
              a3 = v56;
LABEL_56:
              a2 = v33;
              a4 = v55;
              goto LABEL_57;
            }

            break;
          default:
            if (v23)
            {
              v38 = v19;
              v23 = v59;
            }

            else
            {
              if ((v19 | v59))
              {
                v33 = a2;
                v34 = v20;
                v35 = 1;
                v37 = v59;
                v38 = v19;
                break;
              }

              v38 = v19;
              v23 = v59;
            }

LABEL_57:
            v59 = v23;
            if (v20)
            {
              v20 = [(TSDBezierPath *)v20 uniteWithBezierPath:v32];
              v19 = v38;
            }

            else
            {
              v19 = v38;
              v20 = v32;
            }

            goto LABEL_60;
        }

        v73.origin.x = TSTLayoutGetAlignedMaskRectForSpace(a1, [(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space]);
        v63 = v68;
        v74 = CGRectApplyAffineTransform(v73, &v63);
        x = v74.origin.x;
        width = v74.size.width;
        if (!v35 || (v38 & 1) == 0)
        {
          if (v23 != 3)
          {
LABEL_40:
            if (v35 & v37)
            {
              v20 = v34;
              a3 = v56;
            }

            else
            {
              v48 = v23 == 2;
              v23 = (v23 != 2) & v37;
              v20 = v34;
              if (!v48)
              {
                a3 = v56;
                goto LABEL_54;
              }

              a3 = v56;
              if ((v37 ^ 1))
              {
LABEL_54:
                if ([(TSDBezierPath *)v32 isEmpty])
                {
                  v32 = 0;
                }

                goto LABEL_56;
              }
            }

LABEL_52:
            v32 = [(TSDBezierPath *)v32 subtractBezierPath:[TSDBezierPath bezierPathWithRect:TSDRectWithPoints(-100000.0, -100000.0, x + width)]];
LABEL_53:
            v23 = v37;
            goto LABEL_54;
          }

          if ((v38 & 1) == 0)
          {
            v47 = v35 & v37;
            v20 = v34;
            a3 = v56;
            if ((v47 & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          }
        }

        v32 = [(TSDBezierPath *)v32 subtractBezierPath:[TSDBezierPath bezierPathWithRect:TSDRectWithPoints(-100000.0, -100000.0, v74.origin.x)]];
        goto LABEL_40;
      }

      if (a4 == 1)
      {
        if (TSTLayoutSpaceIntersectsRowGridRange(v22, v24, a3))
        {
          v25 = TSTLayoutSpaceIntersectionRowGridRange(v22, v24, a3);
          AlignedStrokeLinePathForColumnGridRange = TSTLayoutSpaceGetAlignedStrokeLinePathForRowGridRange(v22, v25, v26, &v68, 0, a8);
          goto LABEL_17;
        }
      }

      else if (TSTLayoutSpaceIntersectsGridRange(v22, v24, a3))
      {
        v30 = TSTLayoutSpaceIntersectionGridRange(v22, v24, a3);
        AlignedStrokeLinePathForColumnGridRange = TSTLayoutSpaceGetAlignedStrokeFramePathForGridRange(v22, v30, v31, &v68, 0, a8);
        goto LABEL_17;
      }

LABEL_22:
      if (![(TSTLayoutSpace *)v22 isFrozen])
      {
        goto LABEL_60;
      }

      AlignedMaskStrokeFramePathForGridRange = TSTLayoutSpaceGetAlignedMaskStrokeFramePathForGridRange(v22, &v68);
      if (v23 == 3)
      {
        TSTLayoutGetFrozenHeaderRowsTransformToLayout(a1, &v63);
        v40 = *&v63.a;
        v41 = *&v63.c;
        v69 = *&v63.a;
        v70 = *&v63.c;
        tx = v63.tx;
        ty = v63.ty * a7;
      }

      else
      {
        if (v23 != 2)
        {
          TSTLayoutGetFrozenHeaderCornerTransformToLayout(a1, &v63);
          v69 = *&v63.a;
          v70 = *&v63.c;
          *&v63.tx = vmulq_n_f64(*&v63.tx, a7);
          goto LABEL_45;
        }

        TSTLayoutGetFrozenHeaderColumnsTransformToLayout(a1, &v63);
        v40 = *&v63.a;
        v41 = *&v63.c;
        v69 = *&v63.a;
        v70 = *&v63.c;
        ty = v63.ty;
        tx = v63.tx * a7;
      }

      *&v63.a = v40;
      *&v63.c = v41;
      v63.tx = tx;
      v63.ty = ty;
LABEL_45:
      [AlignedMaskStrokeFramePathForGridRange transformUsingAffineTransform:&v63];
      if (AlignedMaskStrokeFramePathForGridRange && ([AlignedMaskStrokeFramePathForGridRange isEmpty] & 1) == 0)
      {
        if (v54)
        {
          v54 = [v54 uniteWithBezierPath:AlignedMaskStrokeFramePathForGridRange];
        }

        else
        {
          v54 = AlignedMaskStrokeFramePathForGridRange;
        }
      }

LABEL_60:
      ++v21;
    }

    while (v61 != v21);
    v49 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    v61 = v49;
  }

  while (v49);
  if (v20)
  {
    if (v51)
    {
      CGAffineTransformMakeTranslation(&v63, -*v53.i64, -*&v53.i64[1]);
      [(TSDBezierPath *)v20 transformUsingAffineTransform:&v63];
      CGAffineTransformMakeTranslation(&v63, -*v53.i64, -*&v53.i64[1]);
      [v54 transformUsingAffineTransform:&v63];
    }

    if (v52)
    {
      *v52 = v54;
    }
  }

  return v20;
}

double TSTLayoutGetAlignedContentFrameForRange(TSTLayout *a1, unint64_t a2)
{
  v2 = BYTE2(a2);
  if (BYTE2(a2) == 255)
  {
    v2 = -1;
  }

  v3 = WORD2(a2) + v2 - 1;
  if (!WORD2(a2))
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (a2 == 0xFFFF)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 | (v4 << 32);
  v6 = (((v4 << 32) + (HIDWORD(a2) << 16)) & 0xFFFFFFFF00000000) - 0x100000000;
  if (!HIWORD(a2))
  {
    v6 = 0xFFFFFFFF00000000;
  }

  return TSTLayoutGetArbitraryRectAcrossSpacesForGridRange(a1, v5, v6 | v3, &__block_literal_global_72);
}

void sub_26CA118CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

BOOL TSTLayoutTableNameHitByCanvasPoint(TSTLayout *a1, double a2, double a3)
{
  if (!a1->mTableNameVisible)
  {
    return 0;
  }

  v29 = v10;
  v30 = v9;
  v31 = v8;
  v32 = v7;
  v33 = v6;
  v34 = v5;
  v35 = v3;
  v36 = v4;
  FrameForTableName = TSTLayoutGetFrameForTableName(a1);
  y = v15;
  width = v17;
  height = v19;
  if (TSTLayoutGetFrozenHeaderRowsEnabled(a1))
  {
    if (TSTLayoutGetFrozenHeaderRowsFloating(a1))
    {
      memset(&v28, 0, sizeof(v28));
      TSTLayoutGetFrozenTableNameTransformToLayout(a1, &v28);
      v27 = v28;
      v38.origin.x = FrameForTableName;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v39 = CGRectApplyAffineTransform(v38, &v27);
      FrameForTableName = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
    }
  }

  TSTLayoutGetRowTabsRangeFrame(a1, [(TSTTableModel *)[(TSTLayout *)a1 tableModel] range]);
  v22 = FrameForTableName - v21;
  v23 = FrameForTableName - v22;
  v24 = width + v22;
  v37.x = TSTLayoutSpaceGetLayoutPointForCanvasPoint([(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space], a2, a3);
  v37.y = v25;
  v40.origin.x = v23;
  v40.origin.y = y;
  v40.size.width = v24;
  v40.size.height = height;
  return CGRectContainsPoint(v40, v37);
}

double TSTLayoutGetFrameForTableName(void *a1)
{
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *MEMORY[0x277CBF3A0];
  v13 = v2;
  TSTLayoutGetTableNameHeight(a1);
  if (v3 <= 0.0)
  {
    return *&v12;
  }

  v4 = v3;
  v5 = [objc_msgSend(a1 "spaceBundle")];
  GridRange = TSTLayoutSpaceGetGridRange(v5);
  FrameForGridRange = TSTLayoutSpaceGetFrameForGridRange(v5, GridRange, v7);
  *&v12 = FrameForGridRange;
  *(&v12 + 1) = v9 - v4;
  *&v13 = v10;
  *(&v13 + 1) = v4;
  TSTLayoutSpaceAlignRect(v5, &v12);
  return FrameForGridRange;
}

BOOL TSTLayoutTableNameChromeHitByCanvasPoint(TSTLayout *a1, double a2, double a3)
{
  if (!a1->mTableNameVisible)
  {
    return 0;
  }

  v29 = v10;
  v30 = v9;
  v31 = v8;
  v32 = v7;
  v33 = v6;
  v34 = v5;
  v35 = v3;
  v36 = v4;
  FrameForTableName = TSTLayoutGetFrameForTableName(a1);
  y = v15;
  v18 = v17;
  height = v19;
  if (TSTLayoutGetFrozenHeaderRowsEnabled(a1))
  {
    if (TSTLayoutGetFrozenHeaderRowsFloating(a1))
    {
      memset(&v28, 0, sizeof(v28));
      TSTLayoutGetFrozenTableNameTransformToLayout(a1, &v28);
      v27 = v28;
      v38.origin.x = FrameForTableName;
      v38.origin.y = y;
      v38.size.width = v18;
      v38.size.height = height;
      v39 = CGRectApplyAffineTransform(v38, &v27);
      y = v39.origin.y;
      height = v39.size.height;
    }
  }

  TSTLayoutGetRowTabsRangeFrame(a1, [(TSTTableModel *)[(TSTLayout *)a1 tableModel] range]);
  v22 = v21;
  v24 = v23;
  v37.x = TSTLayoutSpaceGetLayoutPointForCanvasPoint([(TSTLayoutSpaceBundle *)[(TSTLayout *)a1 spaceBundle] space], a2, a3);
  v37.y = v25;
  v40.origin.x = v22;
  v40.origin.y = y;
  v40.size.width = v24;
  v40.size.height = height;
  return CGRectContainsPoint(v40, v37);
}

uint64_t TSTLayoutTableNameBorderEnabled(_BYTE *a1)
{
  if (a1[387] != 1)
  {
    return 0;
  }

  v1 = [a1 tableModel];
  if (![v1 tableNameBorderEnabled])
  {
    return 0;
  }

  return [v1 hasTableBorder];
}

double TSTLayoutTableNameBorderStrokeWidth(_BYTE *a1)
{
  if (a1[387] != 1)
  {
    return 0.0;
  }

  v2 = [a1 tableModel];
  if (![v2 tableNameBorderEnabled] || !objc_msgSend(v2, "hasTableBorder"))
  {
    return 0.0;
  }

  v3 = [objc_msgSend(a1 "tableModel")];

  [v3 width];
  return result;
}

double TSTLayoutGetVisibleRectForTableName(_BYTE *a1)
{
  if (a1[387] != 1)
  {
    return *MEMORY[0x277CBF3A0];
  }

  FrameForTableName = TSTLayoutGetFrameForTableName(a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v14.origin.x = TSTLayoutGetVisibleRect(a1);
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = FrameForTableName;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  *&result = CGRectIntersection(v13, v14);
  return result;
}

double TSTLayoutGetFrameForTableNameBorder(void *a1)
{
  v1 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetFrameForTableNameBorder(v1);
}

double TSTLayoutGetStrokeFrameForTableNameBorder(void *a1)
{
  v1 = [objc_msgSend(a1 "spaceBundle")];

  return TSTLayoutSpaceGetStrokeFrameForTableNameBorder(v1);
}

double TSTLayoutGetCanvasFrameForTableName(void *a1)
{
  v2 = [objc_msgSend(a1 "spaceBundle")];
  FrameForTableName = TSTLayoutGetFrameForTableName(a1);

  return TSTLayoutSpaceGetCanvasRectForLayoutRect(v2, FrameForTableName, v4, v5, v6);
}

double TSTLayoutGetFrameForFrozenTableName(TSTLayout *a1)
{
  FrameForTableName = TSTLayoutGetFrameForTableName(a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (TSTLayoutGetFrozenHeaderRowsEnabled(a1) && TSTLayoutGetFrozenHeaderRowsFloating(a1))
  {
    memset(&v11, 0, sizeof(v11));
    TSTLayoutGetFrozenTableNameTransformToLayout(a1, &v11);
    v10 = v11;
    v12.origin.x = FrameForTableName;
    v12.origin.y = v4;
    v12.size.width = v6;
    v12.size.height = v8;
    *&FrameForTableName = CGRectApplyAffineTransform(v12, &v10);
  }

  return FrameForTableName;
}

uint64_t TSTLayoutCellLeftOfCell(void *a1, uint64_t a2, int a3)
{
  v8 = [a1 tableModel];
  if ((a2 & 0xFF0000) == 0)
  {
    return 0xFFFFFFLL;
  }

  v9 = v8;
  if (a3)
  {
    v10 = 293;
  }

  else
  {
    v10 = 261;
  }

  v11 = [[TSTLayoutCellIterator alloc] initWithLayout:a1 range:(a2 << 16) & 0xFF00000000 | a2 | 0x1000000000000 flags:v10];
  v12 = 0xFFFFFFLL;
  while (TSTLayoutCellIteratorGetNextCell(v11, &v20))
  {
    if (!v21)
    {
      v19 = 0;
      goto LABEL_13;
    }

    v13 = *(v21 + 9) << 8;
    if (!v13)
    {
      v19 = 0;
      if (*(v21 + 9))
      {
LABEL_18:
        if (v12 == 0xFFFF || (v12 & 0xFF0000) == 0xFF0000)
        {
          v15 = [a1 masterLayout];
          v3 = v3 & 0xFFFFFFFF00000000 | HIDWORD(v20);
          v16 = TSTTableMergeRangeAtCellID(v9, [v15 modelCellIDForLayoutCellID:v3]);
          if (v16 != 0xFFFF && (v16 & 0xFF0000) != 0xFF0000)
          {
            if ((v16 & 0xFFFF00000000) == 0 || HIWORD(v16) == 0)
            {
              v12 = v12;
            }

            else
            {
              v12 = HIDWORD(v20);
            }
          }
        }

        goto LABEL_28;
      }

LABEL_13:
      if ([objc_msgSend(a1 masterLayout])
      {
        v14 = [objc_msgSend(a1 "masterLayout")];
        v4 = v4 & 0xFFFFFFFF00000000 | HIDWORD(v20);
        if ([v14 cell:&v19 forCellID:v4])
        {
          v12 = HIDWORD(v20);
        }

        else
        {
          v12 = v12;
        }
      }

      goto LABEL_18;
    }

    if (v13 != 768 || [*(v21 + 24) length])
    {
      v12 = HIDWORD(v20);
    }

LABEL_28:
    if (v12 != 0xFFFF && (v12 & 0xFF0000) != 0xFF0000)
    {
      break;
    }
  }

  return v12;
}

uint64_t TSTLayoutCellRightOfCell(void *a1, int a2, int a3)
{
  v7 = [a1 tableModel];
  if (BYTE2(a2) >= (TSTMasterLayoutGetTableNumberOfColumns([a1 masterLayout]) - 1))
  {
    return 0xFFFFFFLL;
  }

  v8 = (a2 + 0x10000) & 0xFF0000 | a2;
  LODWORD(v9) = (TSTMasterLayoutGetTableNumberOfColumns([a1 masterLayout]) + ~BYTE2(a2));
  if (v9 >= 0xFF)
  {
    v9 = 255;
  }

  else
  {
    v9 = v9;
  }

  if (a3)
  {
    v10 = 289;
  }

  else
  {
    v10 = 257;
  }

  v11 = [[TSTLayoutCellIterator alloc] initWithLayout:a1 range:v8 | (v9 << 32) | 0x1000000000000 flags:v10];
  v12 = 0xFFFFFFLL;
  while (TSTLayoutCellIteratorGetNextCell(v11, &v20))
  {
    if (!v21)
    {
      v19 = 0;
      goto LABEL_16;
    }

    v13 = *(v21 + 9) << 8;
    if (!v13)
    {
      v19 = 0;
      if (*(v21 + 9))
      {
LABEL_21:
        if (v12 == 0xFFFF || (v12 & 0xFF0000) == 0xFF0000)
        {
          v15 = [a1 masterLayout];
          v8 = v8 & 0xFFFFFFFF00000000 | HIDWORD(v20);
          v16 = TSTTableMergeRangeAtCellID(v7, [v15 modelCellIDForLayoutCellID:v8]);
          if (v16 != 0xFFFF && (v16 & 0xFF0000) != 0xFF0000)
          {
            if ((v16 & 0xFFFF00000000) == 0 || HIWORD(v16) == 0)
            {
              v12 = v12;
            }

            else
            {
              v12 = HIDWORD(v20);
            }
          }
        }

        goto LABEL_31;
      }

LABEL_16:
      if ([objc_msgSend(a1 masterLayout])
      {
        v14 = [objc_msgSend(a1 "masterLayout")];
        v3 = v3 & 0xFFFFFFFF00000000 | HIDWORD(v20);
        if ([v14 cell:&v19 forCellID:v3])
        {
          v12 = HIDWORD(v20);
        }

        else
        {
          v12 = v12;
        }
      }

      goto LABEL_21;
    }

    if (v13 != 768 || [*(v21 + 24) length])
    {
      v12 = HIDWORD(v20);
    }

LABEL_31:
    if (v12 != 0xFFFF && (v12 & 0xFF0000) != 0xFF0000)
    {
      break;
    }
  }

  return v12;
}

uint64_t TSTLayoutGetCellStyleAtCellID(void *a1, unint64_t a2, char *a3)
{
  v4 = a2;
  v6 = a2;
  v7 = a2 >> 16;
  v8 = [a1 tableModel];
  if ([objc_msgSend(a1 "masterLayout")])
  {
    if ([v8 numberOfRows] <= v4)
    {
      v6 = [v8 numberOfRows];
    }

    if ([v8 numberOfColumns] <= BYTE2(v4))
    {
      LOBYTE(v7) = [v8 numberOfColumns];
    }
  }

  return TSTTableGetCellStyleAtCellID(v8, v4 & 0xFF000000 | v6 | (v7 << 16), a3);
}

void sub_26CA1420C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__98(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_26CA1437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSTLayoutStarRatingForCanvasPoint(TSTLayout *a1, unint64_t a2, double a3)
{
  CanvasFrameForRange = TSTLayoutGetCanvasFrameForRange(a1, a2);
  v6 = (a3 - CanvasFrameForRange) / v5;
  if (v6 < 0.0700000003)
  {
    return 0;
  }

  if (v6 < 0.200000003)
  {
    return 1;
  }

  if (v6 < 0.400000006)
  {
    return 2;
  }

  if (v6 < 0.600000024)
  {
    return 3;
  }

  if (v6 >= 0.800000012)
  {
    return 5;
  }

  return 4;
}

uint64_t ___ZL28TSTLayoutUpdateFrozenHeadersP9TSTLayout_block_invoke(uint64_t a1, void *a2)
{
  [a2 setViewScale:*(a1 + 32)];
  v4 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v4;
  v9 = *(a1 + 72);
  [a2 setTransformToCanvas:&v7];
  v5 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = v5;
  v9 = *(a1 + 120);
  TSTLayoutSpaceSetUserSpaceToDeviceSpaceTransform(a2, &v7);
  return 0;
}

uint64_t ___ZL28TSTLayoutUpdateRepeatHeadersP9TSTLayout_block_invoke(uint64_t a1, void *a2)
{
  [a2 setHeaderRowsRepeat:*(a1 + 136)];
  [a2 setHeaderColumnsRepeat:*(a1 + 137)];
  [a2 setViewScale:*(a1 + 32)];
  v4 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v4;
  v9 = *(a1 + 72);
  [a2 setTransformToCanvas:&v7];
  v5 = *(a1 + 104);
  v7 = *(a1 + 88);
  v8 = v5;
  v9 = *(a1 + 120);
  TSTLayoutSpaceSetUserSpaceToDeviceSpaceTransform(a2, &v7);
  return 0;
}

id TSTStrokeRunSet(id result, int a2, int a3, TSDStroke *a4, char a5, int a6)
{
  v10 = result;
  v11 = *(result + 1);
  if (v11 != a4)
  {

    *(v10 + 8) = a4;
    v13 = 0;
    if (a4 && ![(TSDStroke *)a4 empty])
    {
      [(TSDStroke *)a4 width];
      v13 = v14;
    }

    *(v10 + 16) = v13;
    result = *(v10 + 8);
  }

  *v10 = a2;
  *(v10 + 4) = a3;
  if (a6)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  *(v10 + 24) = v15 | a5 | *(v10 + 24) & 0xFC;
  return result;
}

uint64_t TSTStrokeRunArrayGetStrokeRun(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 40) + 32 * a2;
  }
}

uint64_t TSTStrokeRunArrayGetCount(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

TSTStrokeRunArray *TSTStrokeRunArrayCopy(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = [[TSTStrokeRunArray alloc] initWithCount:v1];
  v3 = v2;
  if (v1)
  {
    memcpy(v2->mStrokes, *(a1 + 40), 32 * v1);
    v4 = 0;
    v5 = 8;
    do
    {
      if (v4 < v3->mCount && (mStrokes = v3->mStrokes) != 0)
      {
        v7 = *(&mStrokes->var0 + v5);
      }

      else
      {
        v8 = [MEMORY[0x277D6C290] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTStrokeRunArray *TSTStrokeRunArrayCopy(TSTStrokeRunArray *)"];
        [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTStrokeRunArray.mm"), 176, @"NULL strokeRun"}];
      }

      ++v4;
      v5 += 32;
    }

    while (v1 != v4);
  }

  if (a1)
  {
    v3->mHasCustomStrokes = *(a1 + 8);
    v3->mMaxWidth = *(a1 + 16);
  }

  return v3;
}

unsigned int *TSTStrokeRunArrayGetNextStroke(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *a4;
  if (!v4)
  {
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 24))
    {
      *(a1 + 32) = 0;
      LODWORD(v6) = *a4;
    }

    else if (v6)
    {
      if (*(*(a1 + 40) + 32 * v6) <= a2)
      {
        *a4 = v6;
      }

      else
      {
        LODWORD(v6) = 0;
      }
    }

    while (*(a1 + 24) > v6)
    {
      v5 = *(a1 + 40);
      if (!v5)
      {
        return v5;
      }

      v5 += 8 * v6;
      *(a1 + 32) = v6;
      LODWORD(v6) = *a4 + 1;
      *a4 = v6;
      if (v5[1] > a2)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  if (v4 >= *(a1 + 24))
  {
    return 0;
  }

  v5 = (*(a1 + 40) + 32 * v4);
  *(a1 + 32) = v4;
  ++*a4;
LABEL_14:
  if (*v5 >= a3 || v5[1] <= a2)
  {
    return 0;
  }

  return v5;
}

unsigned int *TSTStrokeRunArrayLookupStroke(unsigned int *result, unsigned int a2)
{
  v3 = 0;
  if (result)
  {
    result = TSTStrokeRunArrayGetNextStroke(result, a2, a2 + 1, &v3);
    if (!result || *result > a2 || result[1] <= a2)
    {
      return 0;
    }
  }

  return result;
}

TSTStrokeRunArray *TSTStrokeRunArrayCreateWithArguments(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = [[TSTStrokeRunArray alloc] initWithCount:a1];
  if (v2)
  {
    v4 = 0;
    v5 = a2;
    v19 = (a2 + 8);
    v6 = *v5;
    v7 = v2;
    while (1)
    {
      v8 = v6;
      v9 = v19;
      v10 = *v19;
      v19 += 2;
      v11 = v4 >= v3->mCount ? 0 : &v3->mStrokes[v4];
      v6 = *(v9 + 2);
      TSTStrokeRunSet(v11, v8, v6, v10, 0, 0);
      mMaxWidth = v3->mMaxWidth;
      if (v10)
      {
        break;
      }

      v15 = 0.0;
      if (mMaxWidth > 0.0)
      {
        goto LABEL_12;
      }

LABEL_15:
      v3->mMaxWidth = v15;
      if (++v4 == v7)
      {
        return v3;
      }
    }

    v13 = [(TSDStroke *)v10 empty];
    v14 = 0.0;
    if (!v13)
    {
      [(TSDStroke *)v10 width];
    }

    if (mMaxWidth <= v14)
    {
      v16 = [(TSDStroke *)v10 empty];
      v15 = 0.0;
      if (!v16)
      {
        [(TSDStroke *)v10 width];
      }

      goto LABEL_15;
    }

    mMaxWidth = v3->mMaxWidth;
LABEL_12:
    v15 = mMaxWidth;
    goto LABEL_15;
  }

  return v3;
}

TSTStrokeRunArray *TSTStrokeRunArrayCreateWithStroke(TSDStroke *a1, int a2, int a3)
{
  v6 = [[TSTStrokeRunArray alloc] initWithCount:1];
  v7 = v6;
  if (v6->mCount)
  {
    mStrokes = v6->mStrokes;
  }

  else
  {
    mStrokes = 0;
  }

  TSTStrokeRunSet(mStrokes, a2, a3, a1, 0, 0);
  v9 = 0.0;
  if ([(TSDStroke *)a1 pattern])
  {
    v10 = [(TSDStrokePattern *)[(TSDStroke *)a1 pattern] patternType];
    if (a1)
    {
      if (v10 != 2)
      {
        [(TSDStroke *)a1 width];
        v9 = v11;
      }
    }
  }

  v7->mMaxWidth = v9;
  return v7;
}

TSTStrokeRunArray *TSTStrokeRunArrayInsertDefaultStroke(TSTStrokeRunArray *a1, unsigned int a2, unsigned int a3, TSDStroke *a4)
{
  inserted = p_TSTStrokeRunArrayInsertStroke(a1, a2, a3, a4, 0, 0);
  p_updateStrokeRunArrayMetadata(inserted);
  return a1;
}

TSTStrokeRunArray *p_TSTStrokeRunArrayInsertStroke(TSTStrokeRunArray *a1, unsigned int var0, unsigned int var1, TSDStroke *a4, uint64_t a5, int a6)
{
  mMaxWidth = a1->mMaxWidth;
  if (!a4)
  {
    v14 = 0.0;
    if (mMaxWidth <= 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = [(TSDStroke *)a4 empty];
  v13 = 0.0;
  if (!v12)
  {
    [(TSDStroke *)a4 width];
  }

  if (mMaxWidth > v13)
  {
    mMaxWidth = a1->mMaxWidth;
LABEL_7:
    v14 = mMaxWidth;
    goto LABEL_10;
  }

  v15 = [(TSDStroke *)a4 empty];
  v14 = 0.0;
  if (!v15)
  {
    [(TSDStroke *)a4 width];
  }

LABEL_10:
  a1->mMaxWidth = v14;
  v87 = 0;
  NextStroke = TSTStrokeRunArrayGetNextStroke(a1, var0, var0 + 1, &v87);
  if (!NextStroke)
  {
    if (!v87 || ((v25 = v87 - 1, a1->mCount <= v25) ? (v21 = 0) : (v21 = &a1->mStrokes[v25]), v21->var1 != var0 || (v32 = *(v21 + 24), (v32 & 1) != a5) || ((v32 & 2) == 0) == a6 || (var2 = v21->var2, var2 != a4) && ![(TSDStroke *)var2 isEqualToStroke:a4]))
    {
      mCount = a1->mCount;
      v35 = mCount != 0;
      v36 = mCount - 1;
      if (v35)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      TSTStrokeRunArrayExpand(a1, v37, 1u);
      v38 = a1->mCount;
      if (v38)
      {
        v39 = &a1->mStrokes[v38 - 1];
LABEL_62:
        v52 = var0;
        v53 = var1;
        v54 = a4;
        v55 = a5;
        v56 = a6;
LABEL_63:
        TSTStrokeRunSet(v39, v52, v53, v54, v55, v56);
        return a1;
      }

LABEL_61:
      v39 = 0;
      goto LABEL_62;
    }

    goto LABEL_37;
  }

  v17 = NextStroke;
  v18 = *NextStroke;
  if (*NextStroke <= var0)
  {
    v19 = *(NextStroke + 24);
    if ((v19 & 1) == a5 && ((v19 & 2) == 0) != a6)
    {
      v20 = *(NextStroke + 1);
      if (v20 == a4)
      {
        var0 = v18;
        goto LABEL_44;
      }

      if ([(TSDStroke *)v20 isEqualToStroke:a4])
      {
        v21 = v17;
LABEL_37:
        var0 = v21->var0;
        v17 = v21;
        goto LABEL_44;
      }
    }
  }

  v22 = v87;
  v23 = v87 - 2;
  if (v87 >= 2)
  {
    if (a1->mCount > v23 && (mStrokes = a1->mStrokes) != 0)
    {
      v21 = &mStrokes[v23];
    }

    else
    {
      v85 = [MEMORY[0x277D6C290] currentHandler];
      v26 = a5;
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTStrokeRunArray *p_TSTStrokeRunArrayInsertStroke(TSTStrokeRunArray *, TSTGridIndex, TSTGridIndex, TSDStroke *, BOOL, BOOL)"}];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTStrokeRunArray.mm"];
      v29 = v27;
      a5 = v26;
      [v85 handleFailureInFunction:v29 file:v28 lineNumber:427 description:@"previousStrokeRun must be non-NULL"];
      v21 = 0;
    }

    if (v21->var1 == var0)
    {
      v30 = *(v21 + 24);
      if ((v30 & 1) == a5 && ((v30 & 2) == 0) != a6)
      {
        v31 = v21->var2;
        if (v31 == a4 || [(TSDStroke *)v31 isEqualToStroke:a4])
        {
          v87 = v22 - 1;
          goto LABEL_37;
        }
      }
    }
  }

LABEL_44:
  v40 = v17->var0;
  v41 = v87;
  v42 = v87 - 1;
  if (v40 >= var1)
  {
    TSTStrokeRunArrayExpand(a1, v87 - 1, 1u);
    if (a1->mCount > v42)
    {
      v39 = &a1->mStrokes[v42];
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v43 = a1->mCount;
  *v84 = v87;
  if (v87 < v43)
  {
    v44 = v87;
    do
    {
      v45 = a1->mStrokes;
      a1->mLastLookup = v41;
      if (!v45)
      {
        LODWORD(v41) = v41 + 1;
        break;
      }

      v46 = v45[v44].var0;
      if (v46 >= var1)
      {
        if (v46 != var1)
        {
          break;
        }

        v47 = *(&v45[v44] + 24);
        if ((v47 & 1) != a5 || ((v47 & 2) == 0) == a6)
        {
          break;
        }

        v48 = a5;
        v49 = &v45[v44];
        v50 = v45[v44].var2;
        if (v50 != a4)
        {
          v51 = [(TSDStroke *)v50 isEqualToStroke:a4];
          v43 = a1->mCount;
          if (!v51)
          {
            LODWORD(a5) = v48;
            break;
          }
        }

        if (var1 <= v49->var1)
        {
          var1 = v49->var1;
        }

        a5 = v48;
      }

      ++v41;
      ++v44;
    }

    while (v41 < v43);
  }

  v58 = (v41 - 1);
  if (v43 <= v42)
  {
    v59 = 0;
  }

  else
  {
    v59 = &a1->mStrokes[v42];
  }

  if (v43 > v58 && (v60 = a1->mStrokes) != 0)
  {
    v61 = 0;
    v62 = &v60[v58];
  }

  else
  {
    v63 = [MEMORY[0x277D6C290] currentHandler];
    v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTStrokeRunArray *p_TSTStrokeRunArrayInsertStroke(TSTStrokeRunArray *, TSTGridIndex, TSTGridIndex, TSDStroke *, BOOL, BOOL)"}];
    [v63 handleFailureInFunction:v64 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTStrokeRunArray.mm"), 509, @"lastStrokeRun should be non-NULL"}];
    v62 = 0;
    v61 = 1;
  }

  v65 = *(v59 + 24);
  if ((v65 & 1) == a5 && ((v65 & 2) == 0) != a6)
  {
    v66 = v59->var2;
    if ((v66 == a4 || [(TSDStroke *)v66 isEqualToStroke:a4]) && v59 == v62)
    {
      if (var1 > v59->var1)
      {
        v59->var1 = var1;
      }

      return a1;
    }
  }

  v67 = v62->var1;
  if (var0 > v59->var0)
  {
    if (v67 > var1)
    {
      v68 = v59;
      v69 = v41 - v84[0];
      if (v41 == v84[0])
      {
        TSTStrokeRunArrayExpand(a1, v42, 2u);
        if (a1->mCount <= v42)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v41 - 1 != v84[0])
        {
          v70 = (v69 - 2);
          if (v69 != 2)
          {
            TSTStrokeRunArrayShrink(a1, v84[0], v70);
          }

          goto LABEL_119;
        }

        TSTStrokeRunArrayExpand(a1, v42, 1u);
        if (a1->mCount <= v42)
        {
          goto LABEL_100;
        }
      }

      v73 = a1->mStrokes;
      if (v73)
      {
        v68 = &v73[v42];
LABEL_119:
        if (v61)
        {
          v80 = [MEMORY[0x277D6C290] currentHandler];
          v81 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTStrokeRunArray *p_TSTStrokeRunArrayInsertStroke(TSTStrokeRunArray *, TSTGridIndex, TSTGridIndex, TSDStroke *, BOOL, BOOL)"}];
          [v80 handleFailureInFunction:v81 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTStrokeRunArray.mm"), 634, @"lastStrokeRun should be non-NULL"}];
        }

        v68->var1 = var0;
        if (a1->mCount <= v84[0])
        {
          v82 = 0;
        }

        else
        {
          v82 = &a1->mStrokes[*v84];
        }

        TSTStrokeRunSet(v82, var0, var1, a4, a5, a6);
        if (a1->mCount <= v84[0] + 1 || (v83 = a1->mStrokes) == 0)
        {
          p_TSTStrokeRunArrayInsertStroke();
        }

        v83[v84[0] + 1].var0 = var1;
        return a1;
      }

LABEL_100:
      v74 = [MEMORY[0x277D6C290] currentHandler];
      v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTStrokeRunArray *p_TSTStrokeRunArrayInsertStroke(TSTStrokeRunArray *, TSTGridIndex, TSTGridIndex, TSDStroke *, BOOL, BOOL)"}];
      [v74 handleFailureInFunction:v75 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTStrokeRunArray.mm"), 633, @"firstStrokeRun should be non-NULL"}];
      v68 = 0;
      goto LABEL_119;
    }

    if (v41 == v84[0])
    {
      TSTStrokeRunArrayExpand(a1, v42, 1u);
      v72 = a1->mCount;
      if (v72 <= v42)
      {
        v59 = 0;
      }

      else
      {
        v59 = &a1->mStrokes[v42];
      }

      if (v72 <= v84[0])
      {
        v62 = 0;
LABEL_128:
        if (v59 == v62)
        {
LABEL_130:
          v39 = v62;
          v52 = var0;
          v53 = var1;
          v54 = a4;
          v55 = a5;
          v56 = a6;
          goto LABEL_63;
        }

LABEL_129:
        v59->var1 = var0;
        goto LABEL_130;
      }
    }

    else
    {
      v77 = v41 + ~v84[0];
      if (!v77)
      {
        goto LABEL_128;
      }

      TSTStrokeRunArrayShrink(a1, v84[0], v77);
      if (a1->mCount <= v84[0])
      {
        v62 = 0;
        goto LABEL_129;
      }
    }

    v62 = &a1->mStrokes[*v84];
    goto LABEL_128;
  }

  if (v67 > var1)
  {
    if (v41 == v84[0])
    {
      TSTStrokeRunArrayExpand(a1, v42, 1u);
      v71 = a1->mCount;
      if (v71 <= v42)
      {
        v59 = 0;
      }

      else
      {
        v59 = &a1->mStrokes[v42];
      }
    }

    else
    {
      v76 = v41 + ~v84[0];
      if (!v76)
      {
        goto LABEL_110;
      }

      TSTStrokeRunArrayShrink(a1, v84[0], v76);
      v71 = a1->mCount;
    }

    if (v71 <= v84[0])
    {
      v62 = 0;
    }

    else
    {
      v62 = &a1->mStrokes[*v84];
    }

LABEL_110:
    TSTStrokeRunSet(v59, var0, var1, a4, a5, a6);
    if (v62 != v59)
    {
      if (!v62)
      {
        v78 = [MEMORY[0x277D6C290] currentHandler];
        v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTStrokeRunArray *p_TSTStrokeRunArrayInsertStroke(TSTStrokeRunArray *, TSTGridIndex, TSTGridIndex, TSDStroke *, BOOL, BOOL)"}];
        [v78 handleFailureInFunction:v79 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTStrokeRunArray.mm"), 564, @"lastStrokeRun should be non-NULL"}];
      }

      v62->var0 = var1;
    }

    return a1;
  }

  TSTStrokeRunSet(v59, var0, var1, a4, a5, a6);
  if (v41 != v84[0])
  {
    TSTStrokeRunArrayShrink(a1, v84[0], v41 - v84[0]);
  }

  return a1;
}

uint64_t p_updateStrokeRunArrayMetadata(uint64_t result)
{
  v1 = 0.0;
  if (!result || (v2 = *(result + 24), !v2))
  {
    LOBYTE(v4) = 0;
    goto LABEL_21;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 24;
  do
  {
    if (v3 < *(result + 24))
    {
      v7 = *(result + 40);
      if (v7)
      {
        v8 = *(v7 + v6);
        v9 = *(v7 + v6 - 8);
        if (v1 <= v9)
        {
          v1 = *(v7 + v6 - 8);
        }

        if (v5)
        {
          v10 = *(v5 + 16);
          if (v10 > v9)
          {
            *(v5 + 24) = *(v5 + 24) & 0xCF | 0x10;
            v11 = *(v7 + v6) & 0xF3 | 8;
LABEL_16:
            v5 = v7 + v6 - 24;
            v4 |= (v8 & 2) >> 1;
            *(v7 + v6) = v11;
            goto LABEL_17;
          }

          v12 = *(v5 + 24);
          if (v10 == v9)
          {
            *(v5 + 24) = v12 | 0x30;
            v11 = *(v7 + v6) | 0xC;
            goto LABEL_16;
          }

          *(v5 + 24) = v12 & 0xCF | 0x20;
          LOBYTE(v5) = *(v7 + v6) & 0xF7;
        }

        else
        {
          v5 = v8 & 0xF7;
        }

        v11 = v5 | 4;
        goto LABEL_16;
      }
    }

LABEL_17:
    ++v3;
    v6 += 32;
  }

  while (v2 != v3);
  if (v5)
  {
    *(v5 + 24) = *(v5 + 24) & 0xCF | 0x10;
  }

LABEL_21:
  *(result + 8) = v4 & 1;
  *(result + 16) = v1;
  return result;
}

TSTStrokeRunArray *TSTStrokeRunArrayInsertCustomStroke(TSTStrokeRunArray *a1, unsigned int a2, unsigned int a3, TSDStroke *a4)
{
  inserted = p_TSTStrokeRunArrayInsertStroke(a1, a2, a3, a4, 0, 1);
  inserted->mHasCustomStrokes = 1;
  p_updateStrokeRunArrayMetadata(inserted);
  return a1;
}

unsigned int *TSTStrokeRunArrayGetStrokeAtIndex(unsigned int *a1, unsigned int a2)
{
  result = TSTStrokeRunArrayLookupStroke(a1, a2);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t TSTStrokeRunArraySetValid(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v13 = 0;
  NextStroke = TSTStrokeRunArrayGetNextStroke(result, a2, a3, &v13);
  if (!NextStroke)
  {
    return p_updateStrokeRunArrayMetadata(v5);
  }

  while (1)
  {
    v7 = *(NextStroke + 24);
    if (v7)
    {
      goto LABEL_12;
    }

    v8 = NextStroke[1];
    v9 = *NextStroke <= a2 ? a2 : *NextStroke;
    v10 = *(NextStroke + 1);
    v11 = (v7 >> 1) & 1;
    if (v8 > a3)
    {
      break;
    }

    p_TSTStrokeRunArrayInsertStroke(v5, v9, v8, v10, 1, v11);
    if (v8 != -1)
    {
      if (v8 >= a3)
      {
        return p_updateStrokeRunArrayMetadata(v5);
      }

      v13 = 0;
      NextStroke = TSTStrokeRunArrayGetNextStroke(v5, v8, a3, &v13);
      if (!NextStroke)
      {
        return p_updateStrokeRunArrayMetadata(v5);
      }

      goto LABEL_14;
    }

LABEL_12:
    v12 = v13;
    if (v13 >= v5->mCount)
    {
      return p_updateStrokeRunArrayMetadata(v5);
    }

    NextStroke = &v5->mStrokes[v13].var0;
    v5->mLastLookup = v13;
    v13 = v12 + 1;
    if (!NextStroke)
    {
      return p_updateStrokeRunArrayMetadata(v5);
    }

LABEL_14:
    if (*NextStroke >= a3)
    {
      return p_updateStrokeRunArrayMetadata(v5);
    }
  }

  p_TSTStrokeRunArrayInsertStroke(v5, v9, a3, v10, 1, v11);
  return p_updateStrokeRunArrayMetadata(v5);
}

uint64_t TSTStrokeRunArraySetEntireCustom(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = 0;
      v3 = 24;
      do
      {
        if (v2 < *(result + 24))
        {
          v4 = *(result + 40);
          if (v4)
          {
            *(v4 + v3) |= 2u;
          }
        }

        ++v2;
        v3 += 32;
      }

      while (v1 != v2);
    }
  }

  *(result + 8) = 1;
  return result;
}

uint64_t TSTStrokeRunArrayResetRange(TSTStrokeRunArray *a1, unsigned int *a2, unsigned int a3, unsigned int a4)
{
  if (!a1 || (mCount = a1->mCount) == 0 || (mStrokes = a1->mStrokes) == 0)
  {
    TSTStrokeRunArrayResetRange_cold_1();
  }

  var1 = mStrokes[mCount - 1].var1;
  if (var1 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = var1;
  }

  while (1)
  {
    while (1)
    {
      v11 = TSTStrokeRunArrayLookupStroke(a1, v10);
      v12 = TSTStrokeRunArrayLookupStroke(a2, v10);
      v13 = v12;
      if (v11)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_23;
      }

      v18 = v12[1];
      v19 = *(v12 + 1);
      if ((v12[6] & 2) != 0)
      {
        inserted = p_TSTStrokeRunArrayInsertStroke(a1, v10, v18, v19, 0, 1);
        a1->mHasCustomStrokes = 1;
        p_updateStrokeRunArrayMetadata(inserted);
        a1->mHasCustomStrokes = 1;
      }

      else
      {
        v20 = p_TSTStrokeRunArrayInsertStroke(a1, v10, v18, v19, 0, 0);
        p_updateStrokeRunArrayMetadata(v20);
      }

      v10 = v13[1];
    }

    v14 = v11[1];
    if (v14 >= v12[1])
    {
      v14 = v12[1];
    }

    v15 = v14 >= a4 ? a4 : v14;
    if (v10 >= v15)
    {
      break;
    }

    v16 = *(v12 + 1);
    if ((v12[6] & 2) != 0)
    {
      v21 = p_TSTStrokeRunArrayInsertStroke(a1, v10, v15, v16, 0, 1);
      a1->mHasCustomStrokes = 1;
      p_updateStrokeRunArrayMetadata(v21);
      a1->mHasCustomStrokes = 1;
    }

    else
    {
      v17 = p_TSTStrokeRunArrayInsertStroke(a1, v10, v15, v16, 0, 0);
      p_updateStrokeRunArrayMetadata(v17);
    }

    v10 = v15;
  }

LABEL_23:

  return p_updateStrokeRunArrayMetadata(a1);
}

uint64_t TSTStrokeRunArrayTruncate(uint64_t a1, unsigned int a2)
{
  v12 = 0;
  NextStroke = TSTStrokeRunArrayGetNextStroke(a1, a2 - 1, a2, &v12);
  v5 = 0;
  if (NextStroke)
  {
    v6 = v12;
    do
    {
      v7 = NextStroke[1];
      if (v7 != a2)
      {
        if (v7 <= a2 || *NextStroke >= a2)
        {
          TSTStrokeRunSet(NextStroke, 0, 0, 0, 0, 0);
          ++v5;
        }

        else
        {
          NextStroke[1] = a2;
        }
      }

      v9 = *(a1 + 24);
      if (v9 <= v6)
      {
        break;
      }

      v10 = *(a1 + 40);
      NextStroke = (v10 + 32 * v6++);
    }

    while (v10);
  }

  else
  {
    v9 = *(a1 + 24);
  }

  *(a1 + 24) = v9 - v5;

  return p_updateStrokeRunArrayMetadata(a1);
}

TSTStrokeRunArray *p_TSTStrokeRunArrayMergeStrokes(TSTStrokeRunArray *a1, TSTStrokeRunArray *a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!a2)
  {
LABEL_15:
    v4 = TSTStrokeRunArrayCopy(a1);
    pthread_rwlock_wrlock(&v4->mRWLock);
    return v4;
  }

  if (!a1->mHasCustomStrokes)
  {
LABEL_14:
    a1 = a2;
    goto LABEL_15;
  }

  mHasCustomStrokes = a2->mHasCustomStrokes;
  v4 = TSTStrokeRunArrayCopy(a1);
  pthread_rwlock_wrlock(&v4->mRWLock);
  if (mHasCustomStrokes)
  {
    mCount = a2->mCount;
    if (mCount)
    {
      v6 = 0;
      for (i = 0; i < mCount; ++i)
      {
        if (i >= mCount)
        {
          v8 = 0;
        }

        else
        {
          v8 = &a2->mStrokes[v6];
        }

        if ((*(v8 + 24) & 2) != 0)
        {
          p_TSTStrokeRunArrayInsertStroke(v4, v8->var0, v8->var1, v8->var2, *(v8 + 24) & 1, 1);
          mCount = a2->mCount;
        }

        ++v6;
      }
    }

    p_updateStrokeRunArrayMetadata(v4);
  }

  return v4;
}

double p_TSTStrokeRunArrayMaxWidthForMergedStrokes(TSTStrokeRunArray *a1, TSTStrokeRunArray *a2, unsigned int a3, unsigned int a4)
{
  if (!a2)
  {
    v8 = 0.0;
    if (!a1)
    {
      goto LABEL_10;
    }

    mMaxWidth = a1->mMaxWidth;
    if (mMaxWidth < 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = a2->mMaxWidth;
  if (!a1)
  {
    if (v8 <= 0.0)
    {
      v8 = 0.0;
    }

    goto LABEL_10;
  }

  mMaxWidth = a1->mMaxWidth;
  if (v8 <= mMaxWidth)
  {
LABEL_7:
    v8 = mMaxWidth;
  }

LABEL_10:
  NextStroke = 0;
  v11 = 0;
  v21 = 0;
  LOBYTE(v12) = 1;
  v13 = 0.0;
  LOBYTE(v14) = 1;
  do
  {
    if (v12)
    {
      NextStroke = TSTStrokeRunArrayGetNextStroke(a2, a3, a4, &v21 + 1);
      if (!v14)
      {
LABEL_13:
        if (!NextStroke)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }
    }

    else if (!v14)
    {
      goto LABEL_13;
    }

    v11 = TSTStrokeRunArrayGetNextStroke(a1, a3, a4, &v21);
    if (!NextStroke)
    {
      goto LABEL_28;
    }

LABEL_17:
    if (v11)
    {
      v15 = NextStroke[1];
      v16 = v11[1];
      if (v15 >= v16)
      {
        v17 = v11[1];
      }

      else
      {
        v17 = NextStroke[1];
      }

      v18 = NextStroke;
      if ((v11[6] & 2) != 0)
      {
        if ((NextStroke[6] & 2) != 0)
        {
          v18 = NextStroke;
        }

        else
        {
          v18 = v11;
        }
      }

      if (v13 <= *(v18 + 2))
      {
        v13 = *(v18 + 2);
      }

      v12 = v15 <= v16;
      goto LABEL_37;
    }

LABEL_28:
    if (NextStroke)
    {
      v17 = NextStroke[1];
      if (v13 <= *(NextStroke + 2))
      {
        v13 = *(NextStroke + 2);
      }

      if (!v11)
      {
        v14 = 0;
        v12 = 1;
        goto LABEL_38;
      }

      v16 = v11[1];
      v12 = 1;
    }

    else
    {
      if (!v11)
      {
        return v13;
      }

      v12 = 0;
      v16 = v11[1];
      if (v13 <= *(v11 + 2))
      {
        v13 = *(v11 + 2);
      }

      v17 = v11[1];
    }

LABEL_37:
    v14 = v16 == v17;
LABEL_38:
    if (!v12 && !v14)
    {
      break;
    }
  }

  while (v13 < v8 && v17 < a4);
  return v13;
}

id TSTStrokeRunArrayExpand(TSTStrokeRunArray *a1, unsigned int a2, unsigned int a3)
{
  mCount = a1->mCount;
  v7 = mCount + a3;
  if (mCount + a3 > a1->mAllocCount)
  {
    a1->mAllocCount = v7;
    a1->mStrokes = malloc_type_realloc(a1->mStrokes, 32 * (mCount + a3), 0x1080040D89E363BuLL);
    mCount = a1->mCount;
  }

  v8 = mCount >= a2;
  v9 = mCount - a2;
  if (v9 != 0 && v8)
  {
    memmove(&a1->mStrokes[a3 + a2], &a1->mStrokes[a2], 32 * v9);
    if (a3 >= 2)
    {
      v10 = &a1->mStrokes[a2 + 1];
      *&v10->var0 = 0u;
      *&v10->var3 = 0u;
    }
  }

  a1->mCount = v7;
  if (v7 > a2 && (mStrokes = a1->mStrokes) != 0)
  {
    var2 = mStrokes[a2].var2;

    return var2;
  }

  else
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTStrokeRunArrayExpand(TSTStrokeRunArray *, unsigned int, unsigned int)"}];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTStrokeRunArray.mm"];

    return [v14 handleFailureInFunction:v15 file:v16 lineNumber:334 description:@"NULL strokeRun"];
  }
}

uint64_t TSTStrokeRunArrayShrink(TSTStrokeRunArray *a1, unsigned int a2, unsigned int a3)
{
  if (a3)
  {
    v6 = a3;
    v7 = a2;
    do
    {
      if (a1->mCount <= v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = &a1->mStrokes[v7];
      }

      TSTStrokeRunSet(v8, 0, 0, 0, 0, 0);
      ++v7;
      --v6;
    }

    while (v6);
  }

  v9 = a1->mCount - a3;
  a1->mCount = v9;
  v10 = v9 >= a2;
  v11 = v9 - a2;
  if (v11 != 0 && v10)
  {
    memmove(&a1->mStrokes[a2], &a1->mStrokes[a3 + a2], 32 * v11);
  }

  return p_updateStrokeRunArrayMetadata(a1);
}

void p_TSTStrokeRunArrayInsertStroke()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTStrokeRunArray *p_TSTStrokeRunArrayInsertStroke(TSTStrokeRunArray *, TSTGridIndex, TSTGridIndex, TSDStroke *, BOOL, BOOL)"}];
  [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTStrokeRunArray.mm"), 647, @"lastStrokeRun should be non-NULL"}];
  __break(1u);
}

void TSTStrokeRunArrayResetRange_cold_1()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSTStrokeRunArrayResetRange(TSTStrokeRunArray *, TSTStrokeRunArray *, TSTGridIndex, TSTGridIndex)"}];
  [v0 handleFailureInFunction:v1 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTStrokeRunArray.mm"), 798, @"invalid nil value for '%s'", "strokeRun"}];
  __break(1u);
}

uint64_t **std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = BYTE2(*a2) | (*a2 << 8);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3 >= *&v2 ? v3 % v2.i32[0] : BYTE2(*a2) | (*a2 << 8);
  }

  else
  {
    v5 = v3 & (*&v2 + 0xFFFFFFLL);
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
      if (*(result + 8) == *a2 && *(result + 18) == BYTE2(*a2))
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

uint64_t **std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__emplace_unique_key_args<TSUColumnRowCoordinate,std::piecewise_construct_t const&,std::tuple<TSUColumnRowCoordinate const&>,std::tuple<>>(void *a1, _DWORD *a2)
{
  v2 = BYTE2(*a2) | (*a2 << 8);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = BYTE2(*a2) | (*a2 << 8);
    if (v2 >= *&v3)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = v2 & (*&v3 + 0xFFFFFFLL);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (*(v7 + 8) != *a2 || *(v7 + 18) != BYTE2(*a2))
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::__erase_unique<TSUColumnRowCoordinate>(void *a1, _DWORD *a2)
{
  result = std::__hash_table<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::__unordered_map_hasher<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,TSTCellIDHasher,std::equal_to<TSUColumnRowCoordinate>,true>,std::__unordered_map_equal<TSUColumnRowCoordinate,std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>,std::equal_to<TSUColumnRowCoordinate>,TSTCellIDHasher,true>,std::allocator<std::__hash_value_type<TSUColumnRowCoordinate,TSUColumnRowCoordinate>>>::find<TSUColumnRowCoordinate>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<EQKit::Font::STIXCollection::StretchInfo,unsigned long>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void sub_26CA1BE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL TSTCoordinateArrayContainsIndex(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  return v3 && v4 < *(a1 + 12);
}

double TSTCoordinateArraySetCoordinate(uint64_t a1, unsigned int a2, double result)
{
  v3 = *(a1 + 8);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v4)
  {
    v6 = *(a1 + 12);
    if (v5 < v6)
    {
      v7 = *(a1 + 16);
      v7[v5] = result;
      if (v5 == v6 - 1)
      {
        v7[v5 + 1] = result;
        result = (result - *v7) / v5;
        *(a1 + 24) = result;
      }
    }
  }

  return result;
}

double TSTCoordinateArrayGetCoordinate(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    result = 0.0;
    v4 = a2 >= v2;
    v5 = a2 - v2;
    if (v4 && v5 < *(a1 + 12))
    {
      if (*(a1 + 40) == 1)
      {
        return *(*(a1 + 16) + 8 * v5);
      }

      else
      {
        return *(a1 + 48) - *(*(a1 + 16) + 8 * v5);
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTCoordinateArrayGetCoordinate(TSTCoordinateArray *, TSTGridIndex)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCoordinateArray.mm"), 120, @"invalid nil value for '%s'", "coordinateArray"}];
    return 0.0;
  }

  return result;
}

double TSTCoordinateArrayGetRawCoordinate(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    result = 0.0;
    v4 = a2 >= v2;
    v5 = a2 - v2;
    if (v4 && v5 < *(a1 + 12))
    {
      return *(*(a1 + 16) + 8 * v5);
    }
  }

  else
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSTCoordinateArrayGetRawCoordinate(TSTCoordinateArray *, TSTGridIndex)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCoordinateArray.mm"), 144, @"invalid nil value for '%s'", "coordinateArray"}];
    return 0.0;
  }

  return result;
}

uint64_t TSTCoordinateArrayLookup(TSTCoordinateArray *a1, double a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  if (!a1->mLayoutDirectionIsLeftToRight)
  {
    v2 = a1->mTableWidth - a2;
  }

  mCoordinates = a1->mCoordinates;
  if (v2 <= *mCoordinates)
  {
    return a1->mOffset;
  }

  if (v2 > mCoordinates[a1->mCount - 1] + 0.00999999978)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = ((v2 - *mCoordinates) / a1->mAverage);
  v8 = mCoordinates[v7];
  if (v2 >= v8)
  {
    v9 = ((v2 - *mCoordinates) / a1->mAverage);
  }

  else
  {
    v9 = 0;
  }

  if (v2 >= v8)
  {
    v10 = a1->mCount - 1;
  }

  else
  {
    v10 = ((v2 - *mCoordinates) / a1->mAverage);
  }

  if (v2 < v8 || v2 > mCoordinates[v7 + 1] + 0.00999999978)
  {
    goto LABEL_20;
  }

  v11 = [(NSMutableIndexSet *)a1->mVisibleIndices containsIndex:a1->mOffset + v7];
  v5 = a1->mOffset + v7;
  if ((v11 & 1) == 0)
  {
    v5 = TSTCoordinateArrayVisibleGridIndexForHiddenGridIndex(a1, v5);
  }

  if (v5 == -1)
  {
LABEL_20:
    v5 = 0xFFFFFFFFLL;
    while (v9 <= v10)
    {
      v12 = (v10 + v9) >> 1;
      if (v2 >= mCoordinates[v12])
      {
        v9 = v12 + 1;
        if (v2 <= mCoordinates[v12 + 1] + 0.00999999978)
        {
          v5 = a1->mOffset + v12;
        }
      }

      else
      {
        v10 = v12 - 1;
      }
    }

    if (([(NSMutableIndexSet *)a1->mVisibleIndices containsIndex:v5]& 1) == 0)
    {
      v5 = TSTCoordinateArrayVisibleGridIndexForHiddenGridIndex(a1, v5);
    }
  }

  if (a1->mLayoutDirectionIsLeftToRight && v5 == a1->mCount + a1->mOffset - 1)
  {
    return [(NSMutableIndexSet *)a1->mVisibleIndices indexLessThanIndex:v5];
  }

  return v5;
}

uint64_t TSTCoordinateArrayVisibleGridIndexForHiddenGridIndex(TSTCoordinateArray *a1, unsigned int a2)
{
  Coordinate = TSTCoordinateArrayGetCoordinate(a1, a2);
  mVisibleIndices = a1->mVisibleIndices;
  if (Coordinate <= 0.0)
  {
    return [(NSMutableIndexSet *)mVisibleIndices indexGreaterThanIndex:a2];
  }

  else
  {
    return [(NSMutableIndexSet *)mVisibleIndices indexLessThanIndex:a2];
  }
}

uint64_t p_setStrokeColors(TSSPropertyMap *a1, uint64_t a2, NSArray *a3)
{
  if (a3)
  {
    v5 = (&s_TableStyleStrokeColors + 16 * a2);
    v6 = [(NSArray *)a3 objectAtIndex:*v5];
    v7 = [(NSArray *)a3 objectAtIndex:v5[1]];
    v8 = [(NSArray *)a3 objectAtIndex:v5[2]];
    v9 = [(NSArray *)a3 objectAtIndex:v5[3]];
  }

  else
  {
    v6 = [MEMORY[0x277D6C2A8] colorWithRed:0.838999987 green:0.838999987 blue:0.838999987 alpha:1.0];
    v7 = v6;
    v9 = v6;
    v8 = v6;
  }

  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v6 width:1.0], 771];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v6 width:1.0], 772];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v6 width:1.0], 773];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v6 width:1.0], 774];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v7 width:1.0], 778];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v7 width:1.0], 782];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v7 width:1.0], 781];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v7 width:1.0], 780];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v7 width:1.0], 776];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v7 width:1.0], 777];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v9 width:1.0], 786];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v9 width:1.0], 785];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v9 width:1.0], 784];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v8 width:1.0], 779];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v8 width:1.0], 775];
  [(TSSPropertyMap *)a1 setObject:[TSDStroke forProperty:"strokeWithColor:width:" strokeWithColor:v8 width:1.0], 783];
  [(TSSPropertyMap *)a1 setIntValue:1 forProperty:788];
  [(TSSPropertyMap *)a1 setIntValue:1 forProperty:789];
  [(TSSPropertyMap *)a1 setIntValue:1 forProperty:790];
  [(TSSPropertyMap *)a1 setIntValue:1 forProperty:792];
  [(TSSPropertyMap *)a1 setIntValue:1 forProperty:796];
  [(TSSPropertyMap *)a1 setIntValue:1 forProperty:794];
  [(TSSPropertyMap *)a1 setIntValue:1 forProperty:793];
  [(TSSPropertyMap *)a1 setIntValue:1 forProperty:791];

  return [(TSSPropertyMap *)a1 setIntValue:1 forProperty:795];
}

uint64_t std::__tree<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SFUtility::ObjcSharedPtr<NSObject>>>>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::__map_value_compare<EQKit::ILayoutOffset::Kind,std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>,std::less<EQKit::ILayoutOffset::Kind>,true>,std::allocator<std::__value_type<EQKit::ILayoutOffset::Kind,EQKit::ILayoutOffset>>>::erase(a1, v4);
  return 1;
}

void *TSTTableStrokeDefaultsCreate(void *a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(0xC0uLL, 1uLL, 0x1080040F40BE66AuLL);
  v13 = v12;
  if (a5 + a6 + 1 > a3)
  {
    v14 = a5 + a6 + 1;
  }

  else
  {
    v14 = a3;
  }

  if (a4 + 1 > a2)
  {
    v15 = a4 + 1;
  }

  else
  {
    v15 = a2;
  }

  *v12 = a1;
  v36 = v15;
  v37 = a5;
  if (!v15)
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableStrokeDefaults *TSTTableStrokeDefaultsCreate(TSTTableModel *, TSTGridColumnCount, TSTGridRowCount, TSTGridColumnCount, TSTGridRowCount, TSTGridRowCount)"}];
    [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokeDefaults.mm"), 77, @"numberOfColumns is zero"}];
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_11:
    v25 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSTTableStrokeDefaults *TSTTableStrokeDefaultsCreate(TSTTableModel *, TSTGridColumnCount, TSTGridRowCount, TSTGridColumnCount, TSTGridRowCount, TSTGridRowCount)"}];
    [v25 handleFailureInFunction:v26 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableStrokeDefaults.mm"), 78, @"numberOfRows is zero"}];
    goto LABEL_9;
  }

  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_9:
  DefaultBorderStroke = TSTTableGetDefaultBorderStroke(a1);
  DefaultBodyColumnStroke = TSTTableGetDefaultBodyColumnStroke(a1);
  DefaultBodyRowStroke = TSTTableGetDefaultBodyRowStroke(a1);
  DefaultHeaderColumnBorderStroke = TSTTableGetDefaultHeaderColumnBorderStroke(a1);
  DefaultHeaderColumnBodyColumnStroke = TSTTableGetDefaultHeaderColumnBodyColumnStroke(a1);
  DefaultHeaderColumnBodyRowStroke = TSTTableGetDefaultHeaderColumnBodyRowStroke(a1);
  DefaultHeaderColumnSeparatorStroke = TSTTableGetDefaultHeaderColumnSeparatorStroke(a1);
  DefaultHeaderRowBorderStroke = TSTTableGetDefaultHeaderRowBorderStroke(a1);
  DefaultHeaderRowBodyColumnStroke = TSTTableGetDefaultHeaderRowBodyColumnStroke(a1);
  DefaultHeaderRowBodyRowStroke = TSTTableGetDefaultHeaderRowBodyRowStroke(a1);
  DefaultHeaderRowSeparatorStroke = TSTTableGetDefaultHeaderRowSeparatorStroke(a1);
  DefaultFooterRowBorderStroke = TSTTableGetDefaultFooterRowBorderStroke(a1);
  DefaultFooterRowBodyColumnStroke = TSTTableGetDefaultFooterRowBodyColumnStroke(a1);
  DefaultFooterRowBodyRowStroke = TSTTableGetDefaultFooterRowBodyRowStroke(a1);
  DefaultFooterRowSeparatorStroke = TSTTableGetDefaultFooterRowSeparatorStroke(a1);
  *(v13 + 2) = v36;
  *(v13 + 3) = v14;
  *(v13 + 4) = a4;
  *(v13 + 5) = v37;
  *(v13 + 6) = a6;
  *(v13 + 7) = v14 - a6;
  v13[4] = DefaultBorderStroke;
  v13[5] = DefaultBodyColumnStroke;
  v13[6] = DefaultBodyRowStroke;
  v13[7] = DefaultHeaderColumnBorderStroke;
  v13[8] = DefaultHeaderColumnBodyColumnStroke;
  v13[9] = DefaultHeaderColumnBodyRowStroke;
  v13[10] = DefaultHeaderColumnSeparatorStroke;
  v13[11] = DefaultHeaderRowBorderStroke;
  v13[12] = DefaultHeaderRowBodyColumnStroke;
  v13[13] = DefaultHeaderRowBodyRowStroke;
  v13[14] = DefaultHeaderRowSeparatorStroke;
  v13[15] = DefaultFooterRowBodyColumnStroke;
  v13[16] = DefaultFooterRowBodyRowStroke;
  v13[17] = DefaultFooterRowBorderStroke;
  v13[18] = DefaultFooterRowSeparatorStroke;
  *(v13 + 40) = 60;
  v13[21] = malloc_type_calloc(8uLL, 0x3CuLL, 0x80040B8603338uLL);
  v13[22] = malloc_type_calloc(8uLL, (*(v13 + 2) + 1), 0x80040B8603338uLL);
  *v13[22] = [MEMORY[0x277CBEB68] null];
  *(v13[22] + 8 * *(v13 + 4)) = [MEMORY[0x277CBEB68] null];
  *(v13[22] + 8 * *(v13 + 2)) = [MEMORY[0x277CBEB68] null];
  v13[23] = malloc_type_calloc(8uLL, (*(v13 + 3) + 1), 0x80040B8603338uLL);
  *v13[23] = [MEMORY[0x277CBEB68] null];
  *(v13[23] + 8 * *(v13 + 5)) = [MEMORY[0x277CBEB68] null];
  *(v13[23] + 8 * *(v13 + 7)) = [MEMORY[0x277CBEB68] null];
  *(v13[23] + 8 * *(v13 + 3)) = [MEMORY[0x277CBEB68] null];
  return v13;
}

void TSTTableStrokeDefaultsRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      v3 = *(a1 + 160);
      if (v3)
      {
        v4 = 8 * v3 - 8;
        do
        {

          *(*(a1 + 168) + v4) = 0;
          v4 -= 8;
        }

        while (v4 != -8);
        v2 = *(a1 + 168);
      }

      free(v2);
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;

    *(a1 + 64) = 0;
    *(a1 + 72) = 0;

    *(a1 + 80) = 0;
    *(a1 + 88) = 0;

    *(a1 + 96) = 0;
    *(a1 + 104) = 0;

    *(a1 + 112) = 0;
    *(a1 + 120) = 0;

    *(a1 + 128) = 0;
    *(a1 + 136) = 0;

    *(a1 + 144) = 0;
    if (*(a1 + 176))
    {
      v5 = 0;
      do
      {
        v6 = v5;
        v7 = *(*(a1 + 176) + 8 * v5);
        if (v7 && v7 != [MEMORY[0x277CBEB68] null])
        {

          *(*(a1 + 176) + 8 * v6) = 0;
        }

        v5 = v6 + 1;
      }

      while ((v6 + 1) <= *(a1 + 8));
      free(*(a1 + 176));
    }

    if (*(a1 + 184))
    {
      v8 = 0;
      do
      {
        v9 = v8;
        v10 = *(*(a1 + 184) + 8 * v8);
        if (v10 && v10 != [MEMORY[0x277CBEB68] null])
        {

          *(*(a1 + 184) + 8 * v9) = 0;
        }

        v8 = v9 + 1;
      }

      while ((v9 + 1) <= *(a1 + 12));
      free(*(a1 + 184));
    }

    free(a1);
  }
}

TSTStrokeRunArray *TSTTableStrokeDefaultsForColumn(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 8);
  }

  v4 = [MEMORY[0x277CBEB68] null];
  v5 = *(a1 + 176);
  if (v5)
  {
    v6 = *(v5 + 8 * v3);
    if (!v6)
    {
      *(*(a1 + 176) + 8 * v3) = [MEMORY[0x277CBEB68] null];
      v28 = 0;
      TSTTableGetDefaultStrokesForColumn(*a1, v3, &v28, 0);
      v7 = v28;
      if (v7 == [MEMORY[0x277CBEB68] null])
      {
        TSTTableGetDefaultStrokesForColumn(*a1, (v3 - 1), 0, &v28);
      }

      v8 = v28;
      if (v8 != [MEMORY[0x277CBEB68] null])
      {
        *(*(a1 + 176) + 8 * v3) = TSTStrokeRunArrayCreateWithStroke(v28, 0, *(a1 + 12));
        v9 = *(*(a1 + 176) + 8 * v3);
      }

      v6 = *(*(a1 + 176) + 8 * v3);
    }
  }

  else
  {
    v6 = v4;
  }

  if (v6 == [MEMORY[0x277CBEB68] null])
  {
    if (*(a1 + 160) == 2)
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 12);
      v12 = a1;
      v13 = 0;
LABEL_15:
      v14 = 1;
      return TSTTableStrokeDefaultsStrokeArray(v12, v13, v14, v10, v11, 0, v22, v23, v24, v25, v26, v27);
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 20);
    if (v16)
    {
      if (v15)
      {
        if (v3)
        {
          if (v3 >= v16)
          {
            if (v3 == v16)
            {
              if (*(a1 + 24))
              {
                v26 = *(a1 + 120);
                v27 = *(a1 + 12);
                v24 = *(a1 + 80);
                v25 = *(a1 + 28);
                v22 = *(a1 + 96);
                v23 = *(a1 + 20);
                v12 = a1;
                v13 = 4;
                goto LABEL_65;
              }

              v24 = *(a1 + 80);
              v25 = *(a1 + 12);
              v22 = *(a1 + 96);
              v23 = *(a1 + 20);
              v12 = a1;
              v13 = 5;
            }

            else
            {
              v19 = *(a1 + 24);
              if (v3 >= *(a1 + 8))
              {
                if (v19)
                {
                  v26 = *(a1 + 136);
                  v27 = *(a1 + 12);
                  v24 = *(a1 + 32);
                  v25 = *(a1 + 28);
                  v22 = *(a1 + 88);
                  v23 = *(a1 + 20);
                  v12 = a1;
                  v13 = 8;
                  goto LABEL_65;
                }

                v24 = *(a1 + 32);
                v25 = *(a1 + 12);
                v22 = *(a1 + 88);
                v23 = *(a1 + 20);
                v12 = a1;
                v13 = 9;
              }

              else
              {
                if (v19)
                {
                  v26 = *(a1 + 120);
                  v27 = *(a1 + 12);
                  v24 = *(a1 + 40);
                  v25 = *(a1 + 28);
                  v22 = *(a1 + 96);
                  v23 = *(a1 + 20);
                  v12 = a1;
                  v13 = 6;
                  goto LABEL_65;
                }

                v24 = *(a1 + 40);
                v25 = *(a1 + 12);
                v22 = *(a1 + 96);
                v23 = *(a1 + 20);
                v12 = a1;
                v13 = 7;
              }
            }
          }

          else
          {
            if (*(a1 + 24))
            {
              v26 = *(a1 + 120);
              v27 = *(a1 + 12);
              v24 = *(a1 + 64);
              v25 = *(a1 + 28);
              v22 = *(a1 + 96);
              v23 = *(a1 + 20);
              v12 = a1;
              v13 = 2;
LABEL_65:
              v14 = 3;
              return TSTTableStrokeDefaultsStrokeArray(v12, v13, v14, v10, v11, 0, v22, v23, v24, v25, v26, v27);
            }

            v24 = *(a1 + 64);
            v25 = *(a1 + 12);
            v22 = *(a1 + 96);
            v23 = *(a1 + 20);
            v12 = a1;
            v13 = 3;
          }
        }

        else
        {
          if (*(a1 + 24))
          {
            v26 = *(a1 + 136);
            v27 = *(a1 + 12);
            v24 = *(a1 + 56);
            v25 = *(a1 + 28);
            v22 = *(a1 + 88);
            v23 = *(a1 + 20);
            v12 = a1;
            v13 = 0;
            goto LABEL_65;
          }

          v24 = *(a1 + 56);
          v25 = *(a1 + 12);
          v22 = *(a1 + 88);
          v23 = *(a1 + 20);
          v12 = a1;
          v13 = 1;
        }
      }

      else if (v3)
      {
        if (v3 >= v16)
        {
          if (v3 == v16)
          {
            if (!*(a1 + 24))
            {
              v22 = *(a1 + 80);
              v23 = *(a1 + 12);
              v12 = a1;
              v13 = 15;
              goto LABEL_15;
            }

            v24 = *(a1 + 120);
            v25 = *(a1 + 12);
            v22 = *(a1 + 80);
            v23 = *(a1 + 28);
            v12 = a1;
            v13 = 14;
          }

          else
          {
            v20 = *(a1 + 24);
            if (v3 >= *(a1 + 8))
            {
              if (!v20)
              {
                v22 = *(a1 + 32);
                v23 = *(a1 + 12);
                v12 = a1;
                v13 = 19;
                goto LABEL_15;
              }

              v24 = *(a1 + 136);
              v25 = *(a1 + 12);
              v22 = *(a1 + 32);
              v23 = *(a1 + 28);
              v12 = a1;
              v13 = 18;
            }

            else
            {
              if (!v20)
              {
                v22 = *(a1 + 40);
                v23 = *(a1 + 12);
                v12 = a1;
                v13 = 17;
                goto LABEL_15;
              }

              v24 = *(a1 + 120);
              v25 = *(a1 + 12);
              v22 = *(a1 + 40);
              v23 = *(a1 + 28);
              v12 = a1;
              v13 = 16;
            }
          }
        }

        else
        {
          if (!*(a1 + 24))
          {
            v22 = *(a1 + 64);
            v23 = *(a1 + 12);
            v12 = a1;
            v13 = 13;
            goto LABEL_15;
          }

          v24 = *(a1 + 120);
          v25 = *(a1 + 12);
          v22 = *(a1 + 64);
          v23 = *(a1 + 28);
          v12 = a1;
          v13 = 12;
        }
      }

      else
      {
        if (!*(a1 + 24))
        {
          v22 = *(a1 + 56);
          v23 = *(a1 + 12);
          v12 = a1;
          v13 = 11;
          goto LABEL_15;
        }

        v24 = *(a1 + 136);
        v25 = *(a1 + 12);
        v22 = *(a1 + 56);
        v23 = *(a1 + 28);
        v12 = a1;
        v13 = 10;
      }
    }

    else if (v15)
    {
      if (v3)
      {
        v17 = *(a1 + 24);
        if (v3 >= *(a1 + 8))
        {
          if (v17)
          {
            v26 = *(a1 + 136);
            v27 = *(a1 + 12);
            v24 = *(a1 + 32);
            v25 = *(a1 + 28);
            v22 = *(a1 + 88);
            v23 = *(a1 + 20);
            v12 = a1;
            v13 = 24;
            goto LABEL_65;
          }

          v24 = *(a1 + 32);
          v25 = *(a1 + 12);
          v22 = *(a1 + 88);
          v23 = *(a1 + 20);
          v12 = a1;
          v13 = 25;
        }

        else
        {
          if (v17)
          {
            v26 = *(a1 + 120);
            v27 = *(a1 + 12);
            v24 = *(a1 + 40);
            v25 = *(a1 + 28);
            v22 = *(a1 + 96);
            v23 = *(a1 + 20);
            v12 = a1;
            v13 = 22;
            goto LABEL_65;
          }

          v24 = *(a1 + 40);
          v25 = *(a1 + 12);
          v22 = *(a1 + 96);
          v23 = *(a1 + 20);
          v12 = a1;
          v13 = 23;
        }
      }

      else
      {
        if (*(a1 + 24))
        {
          v26 = *(a1 + 136);
          v27 = *(a1 + 12);
          v24 = *(a1 + 32);
          v25 = *(a1 + 28);
          v22 = *(a1 + 88);
          v23 = *(a1 + 20);
          v12 = a1;
          v13 = 20;
          goto LABEL_65;
        }

        v24 = *(a1 + 32);
        v25 = *(a1 + 12);
        v22 = *(a1 + 88);
        v23 = *(a1 + 20);
        v12 = a1;
        v13 = 21;
      }
    }

    else if (v3)
    {
      v18 = *(a1 + 24);
      if (v3 >= *(a1 + 8))
      {
        if (!v18)
        {
          v22 = *(a1 + 32);
          v23 = *(a1 + 12);
          v12 = a1;
          v13 = 31;
          goto LABEL_15;
        }

        v24 = *(a1 + 136);
        v25 = *(a1 + 12);
        v22 = *(a1 + 32);
        v23 = *(a1 + 28);
        v12 = a1;
        v13 = 30;
      }

      else
      {
        if (!v18)
        {
          v22 = *(a1 + 40);
          v23 = *(a1 + 12);
          v12 = a1;
          v13 = 29;
          goto LABEL_15;
        }

        v24 = *(a1 + 120);
        v25 = *(a1 + 12);
        v22 = *(a1 + 40);
        v23 = *(a1 + 28);
        v12 = a1;
        v13 = 28;
      }
    }

    else
    {
      if (!*(a1 + 24))
      {
        v22 = *(a1 + 32);
        v23 = *(a1 + 12);
        v12 = a1;
        v13 = 27;
        goto LABEL_15;
      }

      v24 = *(a1 + 136);
      v25 = *(a1 + 12);
      v22 = *(a1 + 32);
      v23 = *(a1 + 28);
      v12 = a1;
      v13 = 26;
    }

    v14 = 2;
    return TSTTableStrokeDefaultsStrokeArray(v12, v13, v14, v10, v11, 0, v22, v23, v24, v25, v26, v27);
  }

  return v6;
}

TSTStrokeRunArray *TSTTableStrokeDefaultsStrokeArray(TSTTableStrokeDefaults *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  if (*(a1 + 40) <= a2)
  {
    return 0;
  }

  v7 = *(*(a1 + 21) + 8 * a2);
  if (!v7)
  {
    v7 = TSTStrokeRunArrayCreateWithArguments(a3, &a4);
    v8 = v7;
    *(*(a1 + 21) + 8 * a2) = v7;
  }

  return v7;
}

TSTStrokeRunArray *TSTTableStrokeDefaultsForRow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12);
  }

  v4 = [MEMORY[0x277CBEB68] null];
  v5 = *(a1 + 184);
  if (v5)
  {
    v6 = *(v5 + 8 * v3);
    if (!v6)
    {
      *(*(a1 + 184) + 8 * v3) = [MEMORY[0x277CBEB68] null];
      v26 = 0;
      TSTTableGetDefaultStrokesForRow(*a1, v3, &v26, 0);
      v7 = v26;
      if (v7 == [MEMORY[0x277CBEB68] null])
      {
        TSTTableGetDefaultStrokesForRow(*a1, (v3 - 1), 0, &v26);
      }

      v8 = v26;
      if (v8 != [MEMORY[0x277CBEB68] null])
      {
        *(*(a1 + 184) + 8 * v3) = TSTStrokeRunArrayCreateWithStroke(v26, 0, *(a1 + 8));
        v9 = *(*(a1 + 184) + 8 * v3);
      }

      v6 = *(*(a1 + 184) + 8 * v3);
    }
  }

  else
  {
    v6 = v4;
  }

  if (v6 == [MEMORY[0x277CBEB68] null])
  {
    if (*(a1 + 160) == 2)
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 8);
      v12 = a1;
      v13 = 1;
      goto LABEL_15;
    }

    v16 = *(a1 + 16);
    v17 = *(a1 + 20);
    if (v17)
    {
      if (!v16)
      {
        if (v3)
        {
          if (v3 >= v17)
          {
            if (v3 != v17)
            {
              if (*(a1 + 24))
              {
                v21 = *(a1 + 28);
                if (v3 == v21)
                {
                  v22 = *(a1 + 144);
                  v23 = *(a1 + 8);
                  v12 = a1;
                  v13 = 43;
                  goto LABEL_15;
                }

                if (v3 >= *(a1 + 12))
                {
                  v22 = *(a1 + 136);
                  v23 = *(a1 + 8);
                  v12 = a1;
                  v13 = 45;
                  goto LABEL_15;
                }

                if (v3 > v21)
                {
                  v22 = *(a1 + 128);
                  v23 = *(a1 + 8);
                  v12 = a1;
                  v13 = 58;
                  goto LABEL_15;
                }
              }

              else if (v3 >= *(a1 + 12))
              {
                v22 = *(a1 + 32);
                v23 = *(a1 + 8);
                v12 = a1;
                v13 = 46;
                goto LABEL_15;
              }

              v22 = *(a1 + 48);
              v23 = *(a1 + 8);
              v12 = a1;
              v13 = 44;
              goto LABEL_15;
            }

            v22 = *(a1 + 112);
            v23 = *(a1 + 8);
            v12 = a1;
            v13 = 42;
          }

          else
          {
            v22 = *(a1 + 104);
            v23 = *(a1 + 8);
            v12 = a1;
            v13 = 41;
          }
        }

        else
        {
          v22 = *(a1 + 88);
          v23 = *(a1 + 8);
          v12 = a1;
          v13 = 40;
        }

LABEL_15:
        v14 = 1;
        return TSTTableStrokeDefaultsStrokeArray(v12, v13, v14, v10, v11, 0, v22, v23, v24, v25);
      }

      if (!v3)
      {
        v22 = *(a1 + 88);
        v23 = *(a1 + 8);
        v12 = a1;
        v13 = 32;
        goto LABEL_15;
      }

      if (v3 < v17)
      {
        v22 = *(a1 + 104);
        v23 = *(a1 + 8);
        v12 = a1;
        v13 = 33;
        goto LABEL_15;
      }

      if (v3 == v17)
      {
        v22 = *(a1 + 112);
        v23 = *(a1 + 8);
        v12 = a1;
        v13 = 34;
        goto LABEL_15;
      }

      if (*(a1 + 24))
      {
        v20 = *(a1 + 28);
        if (v3 == v20)
        {
          v22 = *(a1 + 144);
          v23 = *(a1 + 8);
          v12 = a1;
          v13 = 35;
          goto LABEL_15;
        }

        if (v3 >= *(a1 + 12))
        {
          v22 = *(a1 + 136);
          v23 = *(a1 + 8);
          v12 = a1;
          v13 = 38;
          goto LABEL_15;
        }

        if (v3 > v20)
        {
          v22 = *(a1 + 128);
          v23 = *(a1 + 8);
          v12 = a1;
          v13 = 36;
          goto LABEL_15;
        }

        goto LABEL_67;
      }

      if (v3 < *(a1 + 12))
      {
LABEL_67:
        v24 = *(a1 + 48);
        v25 = *(a1 + 8);
        v22 = *(a1 + 72);
        v23 = *(a1 + 16);
        v12 = a1;
        v13 = 37;
        goto LABEL_68;
      }

      v24 = *(a1 + 32);
      v25 = *(a1 + 8);
      v22 = *(a1 + 56);
      v23 = *(a1 + 16);
      v12 = a1;
      v13 = 39;
    }

    else
    {
      if (!v16)
      {
        if (!v3)
        {
          v22 = *(a1 + 32);
          v23 = *(a1 + 8);
          v12 = a1;
          v13 = 53;
          goto LABEL_15;
        }

        if (*(a1 + 24))
        {
          v19 = *(a1 + 28);
          if (v3 == v19)
          {
            v22 = *(a1 + 144);
            v23 = *(a1 + 8);
            v12 = a1;
            v13 = 54;
            goto LABEL_15;
          }

          if (v3 >= *(a1 + 12))
          {
            v22 = *(a1 + 136);
            v23 = *(a1 + 8);
            v12 = a1;
            v13 = 56;
            goto LABEL_15;
          }

          if (v3 > v19)
          {
            v22 = *(a1 + 128);
            v23 = *(a1 + 8);
            v12 = a1;
            v13 = 59;
            goto LABEL_15;
          }
        }

        else if (v3 >= *(a1 + 12))
        {
          v22 = *(a1 + 32);
          v23 = *(a1 + 8);
          v12 = a1;
          v13 = 57;
          goto LABEL_15;
        }

        v22 = *(a1 + 48);
        v23 = *(a1 + 8);
        v12 = a1;
        v13 = 55;
        goto LABEL_15;
      }

      if (v3)
      {
        if (*(a1 + 24))
        {
          v18 = *(a1 + 28);
          if (v3 == v18)
          {
            v22 = *(a1 + 144);
            v23 = *(a1 + 8);
            v12 = a1;
            v13 = 48;
            goto LABEL_15;
          }

          if (v3 >= *(a1 + 12))
          {
            v22 = *(a1 + 136);
            v23 = *(a1 + 8);
            v12 = a1;
            v13 = 51;
            goto LABEL_15;
          }

          if (v3 > v18)
          {
            v22 = *(a1 + 128);
            v23 = *(a1 + 8);
            v12 = a1;
            v13 = 49;
            goto LABEL_15;
          }
        }

        else if (v3 >= *(a1 + 12))
        {
          v24 = *(a1 + 32);
          v25 = *(a1 + 8);
          v22 = *(a1 + 56);
          v23 = *(a1 + 16);
          v12 = a1;
          v13 = 52;
          goto LABEL_68;
        }

        v24 = *(a1 + 48);
        v25 = *(a1 + 8);
        v22 = *(a1 + 72);
        v23 = *(a1 + 16);
        v12 = a1;
        v13 = 50;
        goto LABEL_68;
      }

      v24 = *(a1 + 32);
      v25 = *(a1 + 8);
      v22 = *(a1 + 56);
      v23 = *(a1 + 16);
      v12 = a1;
      v13 = 47;
    }

LABEL_68:
    v14 = 2;
    return TSTTableStrokeDefaultsStrokeArray(v12, v13, v14, v10, v11, 0, v22, v23, v24, v25);
  }

  return v6;
}

BOOL TSTLayoutCellIteratorGetNextCell(uint64_t a1, void *a2)
{
  v4 = [a1 masterLayout];
  v5 = *(a1 + 186);
  v6 = *(a1 + 120);
  v7 = v6 + HIWORD(v6) - 1;
  v38 = HIDWORD(v6) + WORD1(v6) + 255;
  v8 = [v4 isDynamicallyChangingContent];
  v39 = [v4 isDynamicallyHidingRowsCols];
  v33 = a2;
  v9 = a2;
  v10 = v8;
  v9[1] = 0;
  *(++v9 - 1) = 0xFFFFFF;
  v9[1] = 0;
  v9[2] = 0xFFFFFFLL;
  v29 = v9;
  v32 = v5 - 1;
  v11 = 0;
  v12 = &OBJC_IVAR___TSTAnimation_mReverse;
  v30 = v6 >> 16;
  v31 = v4;
  while (1)
  {
    v13 = *(a1 + 128);
    if (v13 > v7)
    {
      return v13 <= v7;
    }

    if ((*(a1 + v12[388]) & 1) == 0)
    {
      *(a1 + 185) = TSTCellIteratorGetNextCell(a1, (a1 + 144));
      *(a1 + v12[388]) = 1;
    }

    if (v39)
    {
      v11 |= [v4 isDynamicallyHidingRowsCols:1 rowColIndex:*(a1 + 130)];
    }

    if ((v10 | v11))
    {
      v40 = 0;
      if (v10)
      {
        v14 = [v4 dynamicContentDelegate];
        v35 = v35 & 0xFFFFFFFF00000000 | *(a1 + 128);
        if ([v14 cell:&v40 forCellID:?])
        {
          goto LABEL_13;
        }
      }

      else if (v11)
      {
        v40 = +[TSTCell cell];
LABEL_13:
        TSTCellClear(*(a1 + 136));
        TSTCellCopy(v40, *(a1 + 136));
        v33[1] = *(a1 + 136);
        v15 = *(a1 + 128);
        *(v33 + 1) = v15;
        v34 = v34 & 0xFFFFFFFF00000000 | v15;
        v33[3] = TSTMasterLayoutMergeRangeAtCellID(v4, v15);
        if (*(a1 + 185) == 1 && ((*(a1 + 148) ^ *(a1 + 128)) & 0xFFFFFF) == 0)
        {
          *(a1 + 185) = TSTCellIteratorGetNextCell(a1, (a1 + 144));
        }

        v16 = 1;
LABEL_35:
        v12 = &OBJC_IVAR___TSTAnimation_mReverse;
        goto LABEL_36;
      }
    }

    if (*(a1 + 128) >= *(a1 + 190) || *(a1 + 188) <= *(a1 + 130))
    {
      if ([v4 isDynamicallyChangingRowOrColumnCount])
      {
        v37 = v11;
        v17 = v10;
        v18 = v7;
        v19 = *(a1 + 128);
        v20 = *(a1 + 130);
        v21 = *(a1 + 131);
        if (v19 >= [*(a1 + 8) numberOfRows])
        {
          v22 = [*(a1 + 8) numberOfRows];
          LOWORD(v19) = v22 + ~[*(a1 + 8) numberOfFooterRows];
        }

        v23 = *(a1 + 130);
        if ([*(a1 + 8) numberOfColumns] <= v23)
        {
          v20 = [*(a1 + 8) numberOfColumns] - 1;
        }

        v24 = (v21 << 24) | (v20 << 16) | v19;
        v36 = v24 | v36 & 0xFFFFFFFF00000000;
        v10 = v17;
        if (TSTCellAtCellID(*(a1 + 8), v24, *(a1 + 136)))
        {
          v16 = 0;
        }

        else
        {
          v25 = *(a1 + 136);
          TSTCellClearValue(v25);
          *(v25 + 8) &= 0xFFFF00FF;
          v33[1] = *(a1 + 136);
          *(v33 + 1) = *(a1 + 128);
          v16 = 1;
        }

        v7 = v18;
        v4 = v31;
        v11 = v37;
        goto LABEL_35;
      }
    }

    else if (*(a1 + 185) == 1 && ((*(a1 + 148) ^ *(a1 + 128)) & 0xFFFFFF) == 0)
    {
      if (([a1 dontExpandCellRefs] & 1) == 0 && *(a1 + 152))
      {
        TSTCellClear(*(a1 + 136));
        TSTCellCopy(*(a1 + 152), *(a1 + 136));
        *v29 = *(a1 + 136);
      }

      v33[2] = *(a1 + 160);
      *(v33 + 1) = *(a1 + 148);
      v33[3] = *(a1 + 168);
      *(a1 + 185) = TSTCellIteratorGetNextCell(a1, (a1 + 144));
      v16 = 1;
      goto LABEL_36;
    }

    v16 = 0;
LABEL_36:
    v26 = [a1 rowWalkDirection];
    v27 = *(a1 + 130);
    if (v26)
    {
      if (*(a1 + 130) && v27 > *(a1 + 122))
      {
        *(a1 + 130) = v27 - 1;
        if (v16)
        {
          return v13 <= v7;
        }
      }

      else
      {
        *(a1 + 130) = v38;
LABEL_47:
        ++*(a1 + 128);
        if (v16)
        {
          return v13 <= v7;
        }
      }
    }

    else
    {
      if (v32 <= v27 || v27 >= v38)
      {
        *(a1 + 130) = v30;
        goto LABEL_47;
      }

      *(a1 + 130) = v27 + 1;
      if (v16)
      {
        return v13 <= v7;
      }
    }
  }
}

uint64_t TSTLayoutCellIteratorValueTypeOfCell(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSTCellIteratorValueTypeOfCell(a1);
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    return *(v2 + 9);
  }

  else
  {
    return 0;
  }
}

uint64_t TSTLayoutCellIteratorExpandCell(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8) && ((*(a1 + 128) ^ *(a2 + 4)) & 0xFFFFFF) == 0)
  {
    return TSTCellIteratorExpandCellForLayout(a1, a2);
  }

  return a1;
}

uint64_t TSABundle()
{
  if (TSABundle::onceToken != -1)
  {
    TSABundle_cold_1();
  }

  return TSABundle::bundle;
}

uint64_t __TSABundle_block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  TSABundle::bundle = result;
  return result;
}

void sub_26CA21FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t TSABuildVersionString()
{
  v34 = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] && ((v1 = objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithContentsOfFile:", v0), v2 = objc_msgSend(v1, "objectForKey:", @"CFBundleShortVersionString"), v3 = objc_msgSend(v1, "objectForKey:", @"CFBundleVersion"), v4 = objc_msgSend(v1, "objectForKey:", @"BuildVersion"), v2) ? (v5 = v3 == 0) : (v5 = 1), !v5 ? (v6 = v4 == 0) : (v6 = 1), !v6 && (v7 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@-%@", v2, v3, v4)) != 0) || (v8 = objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "pathForResource:ofType:", @"BuildVersion", @"plist"), (v7 = objc_msgSend(objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithContentsOfFile:", v8), "objectForKey:", @"build")) != 0))
  {
LABEL_11:
    v9 = v7;
    return [@"T" stringByAppendingString:v9];
  }

  v10 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v10];
  if (!v11 || (v12 = [v11 objectForKey:@"PreferenceSpecifiers"]) == 0 || (v13 = v12, v31 = 0u, v32 = 0u, v29 = 0u, v30 = 0u, (v14 = objc_msgSend(v12, "countByEnumeratingWithState:objects:count:", &v29, v33, 16)) == 0))
  {
LABEL_28:
    [0 isEqualToString:@"Local Build"];
    goto LABEL_29;
  }

  v15 = v14;
  v16 = *v30;
LABEL_16:
  v17 = 0;
  while (1)
  {
    if (*v30 != v16)
    {
      objc_enumerationMutation(v13);
    }

    v18 = *(*(&v29 + 1) + 8 * v17);
    if ([objc_msgSend(v18 objectForKey:{@"Key", "isEqualToString:", @"TSABuildID"}])
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v15)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  v19 = [v18 objectForKey:@"Titles"];
  if (!v19)
  {
    goto LABEL_28;
  }

  v20 = v19;
  if (![v19 count])
  {
    goto LABEL_28;
  }

  v9 = [v20 objectAtIndex:0];
  v21 = [v9 rangeOfString:@"-"];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = v21;
    if (v21 == [v9 length] - 1)
    {
      v23 = [MEMORY[0x277D6C290] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSABuildVersionString()"];
      [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"), 2536, @"Not expecting to find a build version string with the only hyphen as the last character"}];
    }

    else
    {
      v9 = [v9 substringFromIndex:v22 + 1];
    }
  }

  if (([v9 isEqualToString:@"Local Build"] & 1) != 0 || !v9)
  {
LABEL_29:
    v25 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    if (!v25 || (v26 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")]) == 0 || (v7 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"local build-%@", v26)) == 0)
    {
      v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:"Oct 10 2025" encoding:4];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"local build-%@", v27];

      return [@"T" stringByAppendingString:v9];
    }

    goto LABEL_11;
  }

  return [@"T" stringByAppendingString:v9];
}

NSArray *TSAUpdateBuildVersionHistory(NSArray *a1)
{
  v1 = a1;
  if (!a1)
  {
    v1 = [MEMORY[0x277CBEA60] array];
  }

  v2 = TSABuildVersionString();
  objc_opt_class();
  [(NSArray *)v1 lastObject];
  if (([TSUDynamicCast() isEqualToString:v2] & 1) != 0 || !v2)
  {
    return v1;
  }

  return [(NSArray *)v1 arrayByAddingObject:v2];
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x28210FE18](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGPoint CGContextConvertPointToDeviceSpace(CGContextRef c, CGPoint point)
{
  MEMORY[0x282110A30](c, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGPoint CGContextConvertPointToUserSpace(CGContextRef c, CGPoint point)
{
  MEMORY[0x282110A38](c, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGContextConvertRectToDeviceSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x282110A40](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGContextConvertRectToUserSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x282110A48](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGContextConvertSizeToDeviceSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A50](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGSize CGContextConvertSizeToUserSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A58](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  MEMORY[0x2821114D0](path);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingBox(CTFontRef font)
{
  MEMORY[0x282114778](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTLineGetImageBounds(CTLineRef line, CGContextRef context)
{
  MEMORY[0x282114928](line, context);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x282114948](line);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CTRunGetImageBounds(CTRunRef run, CGContextRef context, CFRange range)
{
  MEMORY[0x2821149B8](run, context, range.location, range.length);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  v1 = MEMORY[0x2821149E8](run);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7850]();
}

{
  return MEMORY[0x2821F7858]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}