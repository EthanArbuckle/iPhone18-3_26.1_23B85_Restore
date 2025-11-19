@interface TSTWPFormulaSelection
- (BOOL)isEqual:(id)a3;
- (TSTWPFormulaSelection)initWithType:(int64_t)a3 range:(_NSRange)a4 validVisualRanges:(BOOL)a5 styleInsertionBehavior:(int64_t)a6 caretAffinity:(int64_t)a7 caretIsLeadingEdge:(BOOL)a8 leadingCharIndex:(unint64_t)a9 headCharIndex:(unint64_t)a10 tailCharIndex:(unint64_t)a11 activeTokenCharIndex:(unint64_t)a12;
- (TSTWPFormulaSelection)initWithType:(int64_t)a3 ranges:(id)a4 validVisualRanges:(BOOL)a5 styleInsertionBehavior:(int64_t)a6 caretAffinity:(int64_t)a7 caretIsLeadingEdge:(BOOL)a8 leadingCharIndex:(unint64_t)a9 headCharIndex:(unint64_t)a10 tailCharIndex:(unint64_t)a11;
- (int64_t)compare:(id)a3;
@end

@implementation TSTWPFormulaSelection

- (TSTWPFormulaSelection)initWithType:(int64_t)a3 ranges:(id)a4 validVisualRanges:(BOOL)a5 styleInsertionBehavior:(int64_t)a6 caretAffinity:(int64_t)a7 caretIsLeadingEdge:(BOOL)a8 leadingCharIndex:(unint64_t)a9 headCharIndex:(unint64_t)a10 tailCharIndex:(unint64_t)a11
{
  v14 = a5;
  v17 = a4;
  v22 = objc_msgSend_superRange(v17, v18, v19, v20, v21);
  v26 = a8;
  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_activeTokenCharIndex = objc_msgSend_initWithType_range_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_activeTokenCharIndex_(self, v23, a3, v22, v23, v14, a6, a7, v26, a9, a10, a11, 0x7FFFFFFFFFFFFFFFLL);

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_activeTokenCharIndex;
}

- (TSTWPFormulaSelection)initWithType:(int64_t)a3 range:(_NSRange)a4 validVisualRanges:(BOOL)a5 styleInsertionBehavior:(int64_t)a6 caretAffinity:(int64_t)a7 caretIsLeadingEdge:(BOOL)a8 leadingCharIndex:(unint64_t)a9 headCharIndex:(unint64_t)a10 tailCharIndex:(unint64_t)a11 activeTokenCharIndex:(unint64_t)a12
{
  v14 = a5;
  v17 = objc_msgSend_rangeArrayWithRange_(MEMORY[0x277D80EE8], a2, a4.location, a4.length, a4.length);
  v20.receiver = self;
  v20.super_class = TSTWPFormulaSelection;
  v18 = [(TSWPSelection *)&v20 initWithType:a3 ranges:v17 validVisualRanges:v14 styleInsertionBehavior:a6 caretAffinity:a7 caretIsLeadingEdge:a8 leadingCharIndex:a9 headCharIndex:a10 tailCharIndex:a11];

  if (v18)
  {
    v18->mActiveTokenCharIndex = a12;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSTWPFormulaSelection;
  if ([(TSWPSelection *)&v8 isEqual:v4])
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      v6 = self->mActiveTokenCharIndex == v5[11];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSTWPFormulaSelection;
  v5 = [(TSWPSelection *)&v13 compare:v4];
  if (!v5)
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      mActiveTokenCharIndex = self->mActiveTokenCharIndex;
      v8 = v6[11];
      v9 = 1;
      v10 = mActiveTokenCharIndex < v8 || mActiveTokenCharIndex == 0x7FFFFFFFFFFFFFFFLL;
      v11 = -1;
      if (!v10)
      {
        v11 = 1;
      }

      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = v11;
      }

      if (mActiveTokenCharIndex == v8)
      {
        v5 = 0;
      }

      else
      {
        v5 = v9;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

@end