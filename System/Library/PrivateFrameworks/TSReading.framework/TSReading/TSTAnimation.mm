@interface TSTAnimation
+ (BOOL)deliveryStyleSupportedForExport:(unint64_t)a3;
+ (id)newAnimationWithLayout:(id)a3 andCellRange:(id)a4;
+ (id)newAnimationWithLayout:(id)a3 andDeliveryStyle:(unint64_t)a4;
+ (id)textureDeliveryStylesLocalized:(BOOL)a3;
+ (unint64_t)stageCountForTextureDeliveryStyle:(unint64_t)a3 andTable:(id)a4;
+ (unint64_t)textureDeliveryStyleFromDeliveryString:(id)a3;
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)cellRangeAtIndex:(unint64_t)a3;
- (BOOL)clipStrokes;
- (BOOL)drawCellBackground;
- (BOOL)drawCellContent;
- (BOOL)drawStrokes;
- (BOOL)drawTableBackground;
- (BOOL)drawTableName;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)cellRangeCount;
- (void)addCellRange:(id)a3;
- (void)clearCellRanges;
- (void)dealloc;
- (void)setStage:(unint64_t)a3 andFinal:(BOOL)a4;
@end

@implementation TSTAnimation

+ (id)newAnimationWithLayout:(id)a3 andDeliveryStyle:(unint64_t)a4
{
  v6 = objc_alloc_init(TSTAnimation);
  v7 = v6;
  v6->mLayout = a3;
  if (a4 > 0xC)
  {
    v8 = 1;
  }

  else
  {
    v8 = dword_26CA67AA0[a4];
  }

  TSTAnimationSetKind(v6, v8);
  return v7;
}

+ (id)newAnimationWithLayout:(id)a3 andCellRange:(id)a4
{
  v6 = objc_alloc_init(TSTAnimation);
  v6->mLayout = a3;
  TSTAnimationSetKind(v6, 14);
  [(TSTAnimation *)v6 addCellRange:a4];
  return v6;
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
  v4 = [[TSTAnimation allocWithZone:?]];
  v4->mLayout = self->mLayout;
  v4->mKind = self->mKind;
  v5 = malloc_type_malloc(8 * self->mCellRangeCount, 0x100004000313F17uLL);
  v4->mCellRanges = v5;
  memcpy(v5, self->mCellRanges, 8 * self->mCellRangeCount);
  v4->mCellRangeCount = self->mCellRangeCount;
  v4->mStageCount = self->mStageCount;
  v4->mStage = self->mStage;
  v4->mFinal = self->mFinal;
  v4->mByColumn = self->mByColumn;
  v4->mByRow = self->mByRow;
  v4->mByCell = self->mByCell;
  v4->mByContent = self->mByContent;
  v4->mByCellRange = self->mByCellRange;
  v4->mByMissingCellRange = self->mByMissingCellRange;
  v4->mReverse = self->mReverse;
  v4->mShowsTableChrome = self->mShowsTableChrome;
  v4->mShowsOverlayLayers = self->mShowsOverlayLayers;
  v4->mExpandBackgroundFill = self->mExpandBackgroundFill;
  v4->mDrawsBlackAndWhite = self->mDrawsBlackAndWhite;
  return v4;
}

+ (id)textureDeliveryStylesLocalized:(BOOL)a3
{
  v4[13] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return &unk_287DDD3F8;
  }

  v4[0] = [TSTBundle() localizedStringForKey:@"All at Once" value:&stru_287D36338 table:@"TSTables"];
  v4[1] = [TSTBundle() localizedStringForKey:@"By Row" value:&stru_287D36338 table:{@"TSTables", v4[0]}];
  v4[2] = [TSTBundle() localizedStringForKey:@"By Column" value:&stru_287D36338 table:@"TSTables"];
  v4[3] = [TSTBundle() localizedStringForKey:@"By Cell" value:&stru_287D36338 table:@"TSTables"];
  v4[4] = [TSTBundle() localizedStringForKey:@"By Row Content" value:&stru_287D36338 table:@"TSTables"];
  v4[5] = [TSTBundle() localizedStringForKey:@"By Column Content" value:&stru_287D36338 table:@"TSTables"];
  v4[6] = [TSTBundle() localizedStringForKey:@"By Cell Content" value:&stru_287D36338 table:@"TSTables"];
  v4[7] = [TSTBundle() localizedStringForKey:@"By Row Reverse" value:&stru_287D36338 table:@"TSTables"];
  v4[8] = [TSTBundle() localizedStringForKey:@"By Row Content Reverse" value:&stru_287D36338 table:@"TSTables"];
  v4[9] = [TSTBundle() localizedStringForKey:@"By Column Reverse" value:&stru_287D36338 table:@"TSTables"];
  v4[10] = [TSTBundle() localizedStringForKey:@"By Column Content Reverse" value:&stru_287D36338 table:@"TSTables"];
  v4[11] = [TSTBundle() localizedStringForKey:@"By Cell Reverse" value:&stru_287D36338 table:@"TSTables"];
  v4[12] = [TSTBundle() localizedStringForKey:@"By Cell Content Reverse" value:&stru_287D36338 table:@"TSTables"];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:13];
}

+ (unint64_t)stageCountForTextureDeliveryStyle:(unint64_t)a3 andTable:(id)a4
{
  if (a3 > 0xC)
  {
    v4 = 1;
  }

  else
  {
    v4 = dword_26CA67AA0[a3];
  }

  return TSTAnimationGetStageCountForChunkStyle(a4, v4);
}

+ (unint64_t)textureDeliveryStyleFromDeliveryString:(id)a3
{
  result = [objc_msgSend(objc_opt_class() textureDeliveryStylesLocalized:{0), "indexOfObject:", a3}];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSTAnimation textureDeliveryStyleFromDeliveryString:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTAnimation.mm"), 682, @"bad delivery string to delivery style mapping"}];
    return 0;
  }

  return result;
}

+ (BOOL)deliveryStyleSupportedForExport:(unint64_t)a3
{
  if (a3 > 0xC)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 0x5D77u >> dword_26CA67AA0[a3];
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

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)cellRangeAtIndex:(unint64_t)a3
{
  if (self->mCellRangeCount <= a3)
  {
    return 0xFFFFFFLL;
  }

  else
  {
    return self->mCellRanges[a3];
  }
}

- (unint64_t)cellRangeCount
{
  PartitionRange = TSTLayoutGetPartitionRange(self->mLayout);
  mKind = self->mKind;
  if (mKind == 14)
  {
    return self->mCellRangeCount;
  }

  v5 = PartitionRange;
  mCellRanges = self->mCellRanges;
  if (mCellRanges)
  {
    free(mCellRanges);
    self->mCellRanges = 0;
    self->mCellRangeCount = 0;
    mKind = self->mKind;
  }

  if (mKind <= 5)
  {
    if (mKind < 2)
    {
      goto LABEL_28;
    }

    if ((mKind - 2) >= 2)
    {
      if ((mKind - 4) >= 2)
      {
        return self->mCellRangeCount;
      }

      mStage = self->mStage;
      if (self->mReverse)
      {
        mStageCount = self->mStageCount;
        v14 = [(TSTLayout *)self->mLayout tableModel];
        v15 = mStageCount + ~mStage;
LABEL_27:
        v27 = self;
LABEL_37:
        TSTAnimationAddCellRangesForRowIndex(v27, v14, v15);
        return self->mCellRangeCount;
      }

LABEL_36:
      v14 = [(TSTLayout *)self->mLayout tableModel];
      v27 = self;
      v15 = mStage;
      goto LABEL_37;
    }

    v28 = self->mStage;
    if (self->mReverse)
    {
      v29 = self->mStageCount;
      v22 = [(TSTLayout *)self->mLayout tableModel];
      v23 = v29 + ~v28;
    }

    else
    {
      v22 = [(TSTLayout *)self->mLayout tableModel];
      v23 = v28;
    }

    goto LABEL_32;
  }

  if (mKind <= 0xD)
  {
    if (((1 << mKind) & 0x300) == 0)
    {
      if (((1 << mKind) & 0xC00) == 0)
      {
        if (((1 << mKind) & 0x3000) != 0)
        {
          v7 = self->mStage;
          if (v7)
          {
            if (self->mReverse)
            {
              v8 = self->mStageCount;
              v9 = ~v7;
              v10 = [(TSTLayout *)self->mLayout tableModel];
              v11 = v8 + v9;
LABEL_20:
              v18 = self;
LABEL_40:
              TSTAnimationAddCellRangeForCellIndex(v18, v10, v11);
              return self->mCellRangeCount;
            }

            v16 = v7 - 1;
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        goto LABEL_17;
      }

      v24 = self->mStage;
      if (v24)
      {
        if (self->mReverse)
        {
          v25 = self->mStageCount;
          v26 = ~v24;
          v14 = [(TSTLayout *)self->mLayout tableModel];
          v15 = v25 + v26;
          goto LABEL_27;
        }

        mStage = v24 - 1;
        goto LABEL_36;
      }

LABEL_28:
      [(TSTAnimation *)self addCellRange:v5];
      return self->mCellRangeCount;
    }

    v19 = self->mStage;
    if (!v19)
    {
      goto LABEL_28;
    }

    if (!self->mReverse)
    {
      v31 = v19 - 1;
      v22 = [(TSTLayout *)self->mLayout tableModel];
      v30 = self;
      v23 = v31;
      goto LABEL_33;
    }

    v20 = self->mStageCount;
    v21 = ~v19;
    v22 = [(TSTLayout *)self->mLayout tableModel];
    v23 = v20 + v21;
LABEL_32:
    v30 = self;
LABEL_33:
    TSTAnimationAddCellRangesForColumnIndex(v30, v22, v23);
    return self->mCellRangeCount;
  }

LABEL_17:
  if ((mKind - 6) < 2)
  {
    v16 = self->mStage;
    if (self->mReverse)
    {
      v17 = self->mStageCount;
      v10 = [(TSTLayout *)self->mLayout tableModel];
      v11 = v17 + ~v16;
      goto LABEL_20;
    }

LABEL_39:
    v10 = [(TSTLayout *)self->mLayout tableModel];
    v18 = self;
    v11 = v16;
    goto LABEL_40;
  }

  return self->mCellRangeCount;
}

- (void)addCellRange:(id)a3
{
  if (a3.var0.var0 != 0xFFFF && (*&a3 & 0xFF0000) != 0xFF0000 && a3.var1.var1 && (*&a3 & 0xFFFF00000000) != 0)
  {
    p_mCellRanges = &self->mCellRanges;
    mCellRanges = self->mCellRanges;
    v7 = p_mCellRanges[1] + 1;
    self->mCellRangeCount = v7;
    v8 = malloc_type_realloc(mCellRanges, 8 * v7, 0x100004000313F17uLL);
    self->mCellRanges = v8;
    v8[self->mCellRangeCount - 1] = a3;
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
  v3 = [(TSTAnimation *)self enabled];
  if (v3)
  {
    LOBYTE(v3) = !self->mByCellRange && (self->mFinal || self->mStage == 0);
  }

  return v3;
}

- (BOOL)drawTableBackground
{
  v3 = [(TSTAnimation *)self enabled];
  if (v3)
  {
    LOBYTE(v3) = ![(TSTAnimation *)self drawsBlackAndWhite]&& (self->mFinal || self->mByCellRange || !self->mByContent || self->mStage == 0);
  }

  return v3;
}

- (BOOL)drawCellBackground
{
  v3 = [(TSTAnimation *)self enabled];
  if (v3)
  {
    LOBYTE(v3) = ![(TSTAnimation *)self drawsBlackAndWhite]&& (self->mByCellRange || !self->mByContent || self->mStage != 0);
  }

  return v3;
}

- (BOOL)drawCellContent
{
  v3 = [(TSTAnimation *)self enabled];
  if (v3)
  {
    LOBYTE(v3) = self->mByCellRange || !self->mByContent || self->mStage != 0;
  }

  return v3;
}

- (BOOL)clipStrokes
{
  if ([(TSTAnimation *)self enabled])
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
  v3 = [(TSTAnimation *)self enabled];
  if (v3)
  {
    LOBYTE(v3) = self->mFinal || self->mByCellRange || !self->mByContent || self->mStage == 0;
  }

  return v3;
}

@end