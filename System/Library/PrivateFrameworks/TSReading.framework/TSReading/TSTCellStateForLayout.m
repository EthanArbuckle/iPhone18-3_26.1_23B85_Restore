@interface TSTCellStateForLayout
- (BOOL)hasContent;
- (CGSize)maxSize;
- (CGSize)minSize;
- (TSTCellStateForLayout)init;
- (UIEdgeInsets)paddingInsets;
- (id)cellContents;
- (void)dealloc;
@end

@implementation TSTCellStateForLayout

- (TSTCellStateForLayout)init
{
  v5.receiver = self;
  v5.super_class = TSTCellStateForLayout;
  result = [(TSTCellStateForLayout *)&v5 init];
  if (result)
  {
    v3 = *MEMORY[0x277CBF3A8];
    result->mMaxSize = *MEMORY[0x277CBF3A8];
    *&result->mPaddingInsets.top = *TSDEdgeInsetsZero;
    *&result->mModelCellID.row = 0xFFFFFFLL;
    result->mCell = 0;
    result->mMergedRange = 0xFFFFFFLL;
    *&result->mPaddingInsets.bottom = *&TSDEdgeInsetsZero[16];
    *&result->mCellPropsRowHeight = 0;
    result->mCellContents = 0;
    result->mKeyVal = 0;
    result->mWPColumn = 0;
    result->mLayoutCacheFlags = 15;
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    *&result->mPageNumber = vnegq_f64(v4);
    result->mMinSize = v3;
  }

  return result;
}

- (void)dealloc
{
  self->mCell = 0;

  self->mWPColumn = 0;
  self->mCellContents = 0;

  self->mKeyVal = 0;
  v3.receiver = self;
  v3.super_class = TSTCellStateForLayout;
  [(TSTCellStateForLayout *)&v3 dealloc];
}

- (BOOL)hasContent
{
  objc_opt_class();
  [(TSTCellStateForLayout *)self cellContents];
  if (TSUDynamicCast())
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellStateForLayout hasContent]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellStateForLayout.m"), 79, @"expected nil value for '%s'", "TSUCastAsClass(TSWPColumn, [self cellContents])"}];
  }

  v5 = [(TSTCellStateForLayout *)self cellContents];
  if (v5)
  {
    LOBYTE(v5) = [-[TSTCellStateForLayout cellContents](self "cellContents")] != 0;
  }

  return v5;
}

- (id)cellContents
{
  if (self->mCellContents)
  {
    return self->mCellContents;
  }

  mCell = self->mCell;
  if (!mCell)
  {
    return self->mCellContents;
  }

  v5 = *(&mCell->mPrivate + 1);
  if (v5 == 6)
  {
    if (mCell->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType == 263)
    {
      goto LABEL_7;
    }

LABEL_10:
    v6 = NSStringFromNativeTSTCell(mCell);
    self->mCellContents = v6;
    goto LABEL_11;
  }

  if (v5 == 9)
  {
    v7 = [(TSTRichTextPayload *)mCell->mPrivate.mRichTextPayload storage];
    self->mCellContents = v7;
    v6 = [(TSWPStorage *)v7 string];
    goto LABEL_11;
  }

  if (v5 != 8)
  {
    goto LABEL_10;
  }

LABEL_7:
  v6 = 0;
  self->mCellContents = 0;
LABEL_11:
  if (TSTCellFormatUsesAccountingStyle(&self->mCell->super.isa) && v6 && [(__CFString *)v6 length]&& !self->mForDrawing)
  {
    v8 = [(__CFString *)v6 stringByReplacingOccurrencesOfString:@"\t" withString:&stru_287D36338];

    self->mCellContents = 0;
    self->mCellContents = v8;
  }

  return self->mCellContents;
}

- (CGSize)minSize
{
  width = self->mMinSize.width;
  height = self->mMinSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  width = self->mMaxSize.width;
  height = self->mMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)paddingInsets
{
  top = self->mPaddingInsets.top;
  left = self->mPaddingInsets.left;
  bottom = self->mPaddingInsets.bottom;
  right = self->mPaddingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end