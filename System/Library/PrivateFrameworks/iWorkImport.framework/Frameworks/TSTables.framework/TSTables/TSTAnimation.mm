@interface TSTAnimation
+ (BOOL)deliveryStyleSupportedForExport:(unint64_t)a3;
+ (id)newAnimationWithLayout:(id)a3 andCellRange:(TSUCellRect)a4;
+ (id)newAnimationWithLayout:(id)a3 andDeliveryStyle:(unint64_t)a4;
+ (id)textureDeliveryStylesLocalized:(BOOL)a3;
+ (unint64_t)p_NumberOfCellBuilds:(id)a3;
+ (unint64_t)p_NumberOfColumnBuilds:(id)a3;
+ (unint64_t)p_NumberOfRowBuilds:(id)a3;
+ (unint64_t)p_stageCountForProvider:(id)a3 withAnimationKind:(int)a4;
+ (unint64_t)stageCountForTextureDeliveryStyle:(unint64_t)a3 tableProvider:(id)a4;
+ (unint64_t)textureDeliveryStyleFromDeliveryString:(id)a3;
- (BOOL)clipStrokes;
- (BOOL)drawCellBackground;
- (BOOL)drawCellContent;
- (BOOL)drawStrokes;
- (BOOL)drawTableBackground;
- (BOOL)drawTableName;
- (BOOL)isHidingContentOfCellID:(TSUCellCoord)a3;
- (TSTLayout)layout;
- (TSUCellRect)cellRangeAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)cellRangeCount;
- (void)addCellRange:(TSUCellRect)a3;
- (void)clearCellRanges;
- (void)dealloc;
- (void)setStage:(unint64_t)a3 andFinal:(BOOL)a4;
@end

@implementation TSTAnimation

+ (id)newAnimationWithLayout:(id)a3 andDeliveryStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(TSTAnimation);
  objc_storeWeak(&v6->mLayout, v5);
  if (a4 > 0xC)
  {
    v7 = 1;
  }

  else
  {
    v7 = dword_2217E1B98[a4];
  }

  sub_221403DE8(v6, v7);

  return v6;
}

+ (id)newAnimationWithLayout:(id)a3 andCellRange:(TSUCellRect)a4
{
  size = a4.size;
  origin = a4.origin;
  v6 = a3;
  v7 = objc_alloc_init(TSTAnimation);
  objc_storeWeak(&v7->mLayout, v6);
  sub_221403DE8(v7, 14);
  objc_msgSend_addCellRange_(v7, v8, origin, size, v9);

  return v7;
}

- (void)dealloc
{
  mCellRanges = self->mCellRanges;
  if (mCellRanges)
  {
    free(mCellRanges);
  }

  v4.receiver = self;
  v4.super_class = TSTAnimation;
  [(TSTAnimation *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = objc_msgSend_allocWithZone_(TSTAnimation, a2, a3, v3, v4);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  WeakRetained = objc_loadWeakRetained(&self->mLayout);
  objc_storeWeak((v11 + 64), WeakRetained);

  *(v11 + 8) = self->mKind;
  v13 = malloc_type_malloc(16 * self->mCellRangeCount, 0x1000040451B5BE8uLL);
  *(v11 + 16) = v13;
  memcpy(v13, self->mCellRanges, 16 * self->mCellRangeCount);
  *(v11 + 24) = self->mCellRangeCount;
  *(v11 + 32) = self->mStageCount;
  *(v11 + 40) = self->mStage;
  *(v11 + 48) = self->mFinal;
  *(v11 + 49) = self->mByColumn;
  *(v11 + 50) = self->mByRow;
  *(v11 + 51) = self->mByCell;
  *(v11 + 52) = self->mByContent;
  *(v11 + 53) = self->mByCellRange;
  *(v11 + 54) = self->mByMissingCellRange;
  *(v11 + 55) = self->mReverse;
  *(v11 + 56) = self->mShowsTableChrome;
  *(v11 + 57) = self->mShowsOverlayLayers;
  *(v11 + 58) = self->mExpandBackgroundFill;
  *(v11 + 59) = self->mDrawsBlackAndWhite;
  return v11;
}

+ (unint64_t)p_NumberOfCellBuilds:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_numberOfColumns(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_numberOfRows(v3, v9, v10, v11, v12);
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    v18 = v13;
    do
    {
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v20 = objc_msgSend_expandCellRangeToCoverMergedCells_(v3, v14, v16 | (i << 32), 0x100000001, v15);
          v22 = v20 & 0xFFFF00000000;
          v27 = v20 != 0x7FFFFFFFLL && v22 != 0x7FFF00000000 && v14 >> 32 != 0 && v14 != 0 && v16 == v20 && i << 32 == v22;
          if (v27 && (objc_msgSend_hasHiddenColumnAtIndex_(v3, v14, i, v21, v15) & 1) == 0)
          {
            v17 += objc_msgSend_hasHiddenRowAtIndex_(v3, v14, v16, v28, v15) ^ 1;
          }
        }
      }

      ++v16;
    }

    while (v16 != v18);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (unint64_t)p_NumberOfRowBuilds:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_numberOfColumns(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_numberOfRows(v3, v9, v10, v11, v12);
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    v18 = v13;
    while (!v8)
    {
LABEL_31:
      if (++v16 == v18)
      {
        goto LABEL_34;
      }
    }

    v19 = 0;
    while (1)
    {
      v20 = objc_msgSend_expandCellRangeToCoverMergedCells_(v3, v14, v16 | (v19 << 32), 0x100000001, v15);
      if (v20 == 0x7FFFFFFFLL || (v20 & 0xFFFF00000000) == 0x7FFF00000000 || v14 >> 32 == 0 || v14 == 0 || ((HIDWORD(v14) * v14) & 0xFFFFFFFE) == 0)
      {
        if ((objc_msgSend_hasHiddenRowAtIndex_(v3, v14, v16, v21, v15) & 1) == 0)
        {
          hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(v3, v14, v19, v26, v15);
LABEL_21:
          if (!hasHiddenColumnAtIndex)
          {
            v19 = 999;
          }

          v17 += hasHiddenColumnAtIndex ^ 1u;
        }
      }

      else if ((v16 == 0x7FFFFFFF || v16 == v20) && (v8 - 1) >= WORD2(v20) && (objc_msgSend_hasHiddenColumnAtIndex_(v3, v14, v19, v21, v15) & 1) == 0)
      {
        hasHiddenColumnAtIndex = objc_msgSend_hasHiddenRowAtIndex_(v3, v14, v16, v28, v15);
        goto LABEL_21;
      }

      if (v8 <= ++v19)
      {
        goto LABEL_31;
      }
    }
  }

  v17 = 0;
LABEL_34:

  return v17;
}

+ (unint64_t)p_NumberOfColumnBuilds:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_numberOfColumns(v3, v4, v5, v6, v7);
  v13 = objc_msgSend_numberOfRows(v3, v9, v10, v11, v12);
  if (v8)
  {
    v16 = v13;
    v17 = 0;
    v18 = 0;
    v19 = v13 - 1;
    v31 = v8;
    while (!v16)
    {
LABEL_31:
      if (++v17 == v31)
      {
        goto LABEL_34;
      }
    }

    v20 = 0;
    while (1)
    {
      v21 = objc_msgSend_expandCellRangeToCoverMergedCells_(v3, v14, (v17 << 32) | v20, 0x100000001, v15);
      if (v21 == 0x7FFFFFFF || (v21 & 0xFFFF00000000) == 0x7FFF00000000 || v14 >> 32 == 0 || v14 == 0 || ((HIDWORD(v14) * v14) & 0xFFFFFFFE) == 0)
      {
        if ((objc_msgSend_hasHiddenRowAtIndex_(v3, v14, v20, v22, v15) & 1) == 0)
        {
          hasHiddenColumnAtIndex = objc_msgSend_hasHiddenColumnAtIndex_(v3, v14, v17, v27, v15);
LABEL_21:
          if (!hasHiddenColumnAtIndex)
          {
            LODWORD(v20) = 999999;
          }

          v18 += hasHiddenColumnAtIndex ^ 1u;
        }
      }

      else if (v19 >= v21 && (v17 == 0x7FFF || v17 == WORD2(v21)) && (objc_msgSend_hasHiddenColumnAtIndex_(v3, v14, v17, v22, v15) & 1) == 0)
      {
        hasHiddenColumnAtIndex = objc_msgSend_hasHiddenRowAtIndex_(v3, v14, v20, v29, v15);
        goto LABEL_21;
      }

      v20 = (v20 + 1);
      if (v20 >= v16)
      {
        goto LABEL_31;
      }
    }
  }

  v18 = 0;
LABEL_34:

  return v18;
}

+ (unint64_t)p_stageCountForProvider:(id)a3 withAnimationKind:(int)a4
{
  v8 = a3;
  v9 = 0;
  if (a4 > 7)
  {
    if (a4 > 11)
    {
      if ((a4 - 12) >= 2)
      {
        if (a4 != 14)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v11 = objc_msgSend_p_NumberOfCellBuilds_(TSTAnimation, v5, v8, v6, v7);
    }

    else if ((a4 - 8) < 2)
    {
      v11 = objc_msgSend_p_NumberOfColumnBuilds_(TSTAnimation, v5, v8, v6, v7);
    }

    else
    {
      if ((a4 - 10) >= 2)
      {
        goto LABEL_21;
      }

      v11 = objc_msgSend_p_NumberOfRowBuilds_(TSTAnimation, v5, v8, v6, v7);
    }

    v9 = v11 + 1;
    goto LABEL_21;
  }

  if (a4 <= 3)
  {
    if (a4 >= 2)
    {
      if ((a4 - 2) < 2)
      {
        v10 = objc_msgSend_p_NumberOfColumnBuilds_(TSTAnimation, v5, v8, v6, v7);
LABEL_18:
        v9 = v10;
        goto LABEL_21;
      }

      goto LABEL_21;
    }

LABEL_20:
    v9 = 1;
    goto LABEL_21;
  }

  if ((a4 - 4) < 2)
  {
    v10 = objc_msgSend_p_NumberOfRowBuilds_(TSTAnimation, v5, v8, v6, v7);
    goto LABEL_18;
  }

  if ((a4 - 6) < 2)
  {
    v10 = objc_msgSend_p_NumberOfCellBuilds_(TSTAnimation, v5, v8, v6, v7);
    goto LABEL_18;
  }

LABEL_21:

  return v9;
}

+ (id)textureDeliveryStylesLocalized:(BOOL)a3
{
  v96[13] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v95 = sub_2214AAEA8(a1, a2, a3, v3, v4);
    v96[0] = objc_msgSend_localizedStringForKey_value_table_(v95, v5, @"All at Once", &stru_2834BADA0, @"TSTables");
    v94 = v96[0];
    v93 = sub_2214AAEA8(v96[0], v6, v7, v8, v9);
    v92 = objc_msgSend_localizedStringForKey_value_table_(v93, v10, @"By Row", &stru_2834BADA0, @"TSTables");
    v96[1] = v92;
    v91 = sub_2214AAEA8(v92, v11, v12, v13, v14);
    v90 = objc_msgSend_localizedStringForKey_value_table_(v91, v15, @"By Column", &stru_2834BADA0, @"TSTables");
    v96[2] = v90;
    v89 = sub_2214AAEA8(v90, v16, v17, v18, v19);
    v88 = objc_msgSend_localizedStringForKey_value_table_(v89, v20, @"By Cell", &stru_2834BADA0, @"TSTables");
    v96[3] = v88;
    v87 = sub_2214AAEA8(v88, v21, v22, v23, v24);
    v86 = objc_msgSend_localizedStringForKey_value_table_(v87, v25, @"By Row Content", &stru_2834BADA0, @"TSTables");
    v96[4] = v86;
    v85 = sub_2214AAEA8(v86, v26, v27, v28, v29);
    v84 = objc_msgSend_localizedStringForKey_value_table_(v85, v30, @"By Column Content", &stru_2834BADA0, @"TSTables");
    v96[5] = v84;
    v83 = sub_2214AAEA8(v84, v31, v32, v33, v34);
    v82 = objc_msgSend_localizedStringForKey_value_table_(v83, v35, @"By Cell Content", &stru_2834BADA0, @"TSTables");
    v96[6] = v82;
    v81 = sub_2214AAEA8(v82, v36, v37, v38, v39);
    v80 = objc_msgSend_localizedStringForKey_value_table_(v81, v40, @"By Row Reverse", &stru_2834BADA0, @"TSTables");
    v96[7] = v80;
    v79 = sub_2214AAEA8(v80, v41, v42, v43, v44);
    v46 = objc_msgSend_localizedStringForKey_value_table_(v79, v45, @"By Row Content Reverse", &stru_2834BADA0, @"TSTables");
    v96[8] = v46;
    v51 = sub_2214AAEA8(v46, v47, v48, v49, v50);
    v53 = objc_msgSend_localizedStringForKey_value_table_(v51, v52, @"By Column Reverse", &stru_2834BADA0, @"TSTables");
    v96[9] = v53;
    v58 = sub_2214AAEA8(v53, v54, v55, v56, v57);
    v60 = objc_msgSend_localizedStringForKey_value_table_(v58, v59, @"By Column Content Reverse", &stru_2834BADA0, @"TSTables");
    v96[10] = v60;
    v65 = sub_2214AAEA8(v60, v61, v62, v63, v64);
    v67 = objc_msgSend_localizedStringForKey_value_table_(v65, v66, @"By Cell Reverse", &stru_2834BADA0, @"TSTables");
    v96[11] = v67;
    v72 = sub_2214AAEA8(v67, v68, v69, v70, v71);
    v74 = objc_msgSend_localizedStringForKey_value_table_(v72, v73, @"By Cell Content Reverse", &stru_2834BADA0, @"TSTables");
    v96[12] = v74;
    v77 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v75, v96, 13, v76);
  }

  else
  {
    v77 = &unk_28350EED8;
  }

  return v77;
}

+ (unint64_t)stageCountForTextureDeliveryStyle:(unint64_t)a3 tableProvider:(id)a4
{
  v7 = a4;
  if (a3 > 0xC)
  {
    v8 = objc_msgSend_p_stageCountForProvider_withAnimationKind_(TSTAnimation, v5, v7, 1, v6);
  }

  else
  {
    v8 = objc_msgSend_p_stageCountForProvider_withAnimationKind_(TSTAnimation, v5, v7, dword_2217E1B98[a3], v6);
  }

  v9 = v8;

  return v9;
}

+ (unint64_t)textureDeliveryStyleFromDeliveryString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v8 = objc_msgSend_textureDeliveryStylesLocalized_(v4, v5, 0, v6, v7);
  v15 = objc_msgSend_indexOfObject_(v8, v9, v3, v10, v11);
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "+[TSTAnimation textureDeliveryStyleFromDeliveryString:]", v13, v14);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTAnimation.mm", v19, v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v21, 646, 0, "bad delivery string to delivery style mapping");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26);
    v15 = 0;
  }

  return v15;
}

+ (BOOL)deliveryStyleSupportedForExport:(unint64_t)a3
{
  if (a3 > 0xC)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 0x5D77u >> dword_2217E1B98[a3];
  }

  return v3 & 1;
}

- (void)setStage:(unint64_t)a3 andFinal:(BOOL)a4
{
  if (self->mStageCount > a3)
  {
    self->mStage = a3;
  }

  self->mFinal = a4;
}

- (TSUCellRect)cellRangeAtIndex:(unint64_t)a3
{
  if (self->mCellRangeCount <= a3)
  {
    size = 0;
    origin = 0x7FFF7FFFFFFFLL;
  }

  else
  {
    v3 = &self->mCellRanges[a3];
    origin = v3->origin;
    size = v3->size;
  }

  result.size = size;
  result.origin = origin;
  return result;
}

- (unint64_t)cellRangeCount
{
  WeakRetained = objc_loadWeakRetained(&self->mLayout);
  v4 = sub_2211B6DA4(WeakRetained);
  v6 = v5;

  mKind = self->mKind;
  if (mKind == 14)
  {
    return self->mCellRangeCount;
  }

  mCellRanges = self->mCellRanges;
  if (mCellRanges)
  {
    free(mCellRanges);
    self->mCellRanges = 0;
    self->mCellRangeCount = 0;
    mKind = self->mKind;
  }

  if (mKind > 5)
  {
    if (mKind > 0xD)
    {
      goto LABEL_17;
    }

    if (((1 << mKind) & 0x300) == 0)
    {
      if (((1 << mKind) & 0xC00) != 0)
      {
        mStage = self->mStage;
        if (mStage)
        {
          if (self->mReverse)
          {
            mStageCount = self->mStageCount;
            v13 = objc_loadWeakRetained(&self->mLayout);
            v18 = objc_msgSend_layoutEngine(v13, v40, v41, v42, v43);
            sub_221405714(self, v18, mStageCount + ~mStage);
          }

          else
          {
            v13 = objc_loadWeakRetained(&self->mLayout);
            v18 = objc_msgSend_layoutEngine(v13, v66, v67, v68, v69);
            sub_221405714(self, v18, mStage - 1);
          }

          goto LABEL_36;
        }

        goto LABEL_26;
      }

      if (((1 << mKind) & 0x3000) != 0)
      {
        v11 = self->mStage;
        if (v11)
        {
          if (self->mReverse)
          {
            v12 = self->mStageCount;
            v13 = objc_loadWeakRetained(&self->mLayout);
            v18 = objc_msgSend_layoutEngine(v13, v14, v15, v16, v17);
            sub_221405A60(self, v18, v12 + ~v11);
          }

          else
          {
            v13 = objc_loadWeakRetained(&self->mLayout);
            v18 = objc_msgSend_layoutEngine(v13, v70, v71, v72, v73);
            sub_221405A60(self, v18, v11 - 1);
          }

LABEL_36:

          goto LABEL_37;
        }

        goto LABEL_26;
      }

LABEL_17:
      if ((mKind - 6) < 2)
      {
        v26 = self->mStage;
        if (self->mReverse)
        {
          v27 = self->mStageCount;
          v13 = objc_loadWeakRetained(&self->mLayout);
          v25 = objc_msgSend_layoutEngine(v13, v28, v29, v30, v31);
          sub_221405A60(self, v25, v27 + ~v26);
        }

        else
        {
          v13 = objc_loadWeakRetained(&self->mLayout);
          v25 = objc_msgSend_layoutEngine(v13, v50, v51, v52, v53);
          sub_221405A60(self, v25, v26);
        }

LABEL_32:

LABEL_37:
        return self->mCellRangeCount;
      }

      return self->mCellRangeCount;
    }

    v32 = self->mStage;
    if (v32)
    {
      if (self->mReverse)
      {
        v33 = self->mStageCount;
        v13 = objc_loadWeakRetained(&self->mLayout);
        v18 = objc_msgSend_layoutEngine(v13, v34, v35, v36, v37);
        sub_2214052CC(self, v18, v33 + ~v32);
      }

      else
      {
        v13 = objc_loadWeakRetained(&self->mLayout);
        v18 = objc_msgSend_layoutEngine(v13, v62, v63, v64, v65);
        sub_2214052CC(self, v18, v32 - 1);
      }

      goto LABEL_36;
    }

LABEL_26:
    objc_msgSend_addCellRange_(self, v7, v4, v6, v8);
    return self->mCellRangeCount;
  }

  if (mKind < 2)
  {
    goto LABEL_26;
  }

  if ((mKind - 2) < 2)
  {
    v44 = self->mStage;
    if (self->mReverse)
    {
      v45 = self->mStageCount;
      v13 = objc_loadWeakRetained(&self->mLayout);
      v18 = objc_msgSend_layoutEngine(v13, v46, v47, v48, v49);
      sub_2214052CC(self, v18, v45 + ~v44);
    }

    else
    {
      v13 = objc_loadWeakRetained(&self->mLayout);
      v18 = objc_msgSend_layoutEngine(v13, v54, v55, v56, v57);
      sub_2214052CC(self, v18, v44);
    }

    goto LABEL_36;
  }

  if ((mKind - 4) < 2)
  {
    v19 = self->mStage;
    if (self->mReverse)
    {
      v20 = self->mStageCount;
      v13 = objc_loadWeakRetained(&self->mLayout);
      v25 = objc_msgSend_layoutEngine(v13, v21, v22, v23, v24);
      sub_221405714(self, v25, v20 + ~v19);
    }

    else
    {
      v13 = objc_loadWeakRetained(&self->mLayout);
      v25 = objc_msgSend_layoutEngine(v13, v58, v59, v60, v61);
      sub_221405714(self, v25, v19);
    }

    goto LABEL_32;
  }

  return self->mCellRangeCount;
}

- (void)addCellRange:(TSUCellRect)a3
{
  origin = a3.origin;
  if (a3.origin.row != 0x7FFFFFFF && (*&a3.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = a3.size;
    if (a3.size.numberOfRows)
    {
      if (a3.size.numberOfColumns)
      {
        p_mCellRanges = &self->mCellRanges;
        mCellRanges = self->mCellRanges;
        v8 = &p_mCellRanges[1]->origin + 1;
        self->mCellRangeCount = v8;
        v9 = malloc_type_realloc(mCellRanges, 16 * v8, 0x1000040451B5BE8uLL);
        self->mCellRanges = v9;
        v10 = &v9[self->mCellRangeCount];
        v10[-1].origin = origin;
        v10[-1].size = size;
      }
    }
  }
}

- (void)clearCellRanges
{
  p_mCellRanges = &self->mCellRanges;
  mCellRanges = self->mCellRanges;
  if (mCellRanges)
  {
    free(mCellRanges);
    *p_mCellRanges = 0;
    p_mCellRanges[1] = 0;
  }
}

- (BOOL)drawTableName
{
  v6 = objc_msgSend_enabled(self, a2, v2, v3, v4);
  if (v6)
  {
    LOBYTE(v6) = !self->mByCellRange && (self->mFinal || self->mStage == 0);
  }

  return v6;
}

- (BOOL)drawTableBackground
{
  v6 = objc_msgSend_enabled(self, a2, v2, v3, v4);
  if (v6)
  {
    LOBYTE(v6) = (objc_msgSend_drawsBlackAndWhite(self, v7, v8, v9, v10) & 1) == 0 && (self->mFinal || self->mByCellRange || !self->mByContent || self->mStage == 0);
  }

  return v6;
}

- (BOOL)drawCellBackground
{
  v6 = objc_msgSend_enabled(self, a2, v2, v3, v4);
  if (v6)
  {
    LOBYTE(v6) = (objc_msgSend_drawsBlackAndWhite(self, v7, v8, v9, v10) & 1) == 0 && (self->mByCellRange || !self->mByContent || self->mStage != 0);
  }

  return v6;
}

- (BOOL)drawCellContent
{
  v6 = objc_msgSend_enabled(self, a2, v2, v3, v4);
  if (v6)
  {
    LOBYTE(v6) = self->mByCellRange || !self->mByContent || self->mStage != 0;
  }

  return v6;
}

- (BOOL)clipStrokes
{
  if (objc_msgSend_enabled(self, a2, v2, v3, v4))
  {
    return self->mByCellRange || !self->mByContent;
  }

  else
  {
    return 0;
  }
}

- (BOOL)drawStrokes
{
  v6 = objc_msgSend_enabled(self, a2, v2, v3, v4);
  if (v6)
  {
    LOBYTE(v6) = self->mFinal || self->mByCellRange || !self->mByContent || self->mStage == 0;
  }

  return v6;
}

- (BOOL)isHidingContentOfCellID:(TSUCellCoord)a3
{
  v7 = objc_msgSend_enabled(self, a2, *&a3, v3, v4);
  if (v7)
  {
    if (!objc_msgSend_drawCellContent(self, v8, v9, v10, v11) || (mCellRangeCount = self->mCellRangeCount) == 0)
    {
LABEL_36:
      LOBYTE(v7) = 1;
      return v7;
    }

    p_size = &self->mCellRanges->size;
    while (1)
    {
      v14 = *p_size;
      v15 = HIDWORD(*p_size);
      if (v15)
      {
        v16 = p_size->numberOfColumns == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v17 = p_size[-1];
        v18 = *&v17 & 0xFFFF00000000;
        if (v17.numberOfColumns != 0x7FFFFFFFLL || v18 == 0x7FFF00000000)
        {
          v21 = v17.numberOfColumns == 0x7FFFFFFF && v18 != 0x7FFF00000000;
          if (v17.numberOfColumns > a3.row && !v21)
          {
            goto LABEL_35;
          }

          v22 = v17.numberOfColumns + v15 - 1;
          if (v17.numberOfColumns == 0x7FFFFFFF)
          {
            v22 = 0x7FFFFFFF;
          }

          if (v22 < a3.row)
          {
            goto LABEL_35;
          }

          if (v17.numberOfColumns != 0x7FFFFFFFLL && v18 == 0x7FFF00000000)
          {
            goto LABEL_38;
          }
        }

        if (LOWORD(v17.numberOfRows) <= a3.column)
        {
          v23 = LOWORD(v17.numberOfRows) == 0x7FFF || v14.numberOfColumns == 0;
          v24 = v23 ? 0x7FFF : LOWORD(v14.numberOfColumns) + LOWORD(v17.numberOfRows) - 1;
          if (v24 >= a3.column)
          {
LABEL_38:
            LOBYTE(v7) = 0;
            return v7;
          }
        }
      }

LABEL_35:
      p_size += 2;
      if (!--mCellRangeCount)
      {
        goto LABEL_36;
      }
    }
  }

  return v7;
}

- (TSTLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->mLayout);

  return WeakRetained;
}

@end