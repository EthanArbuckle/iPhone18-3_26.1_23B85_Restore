@interface TSTWPFormulaSelection
- (BOOL)isEqual:(id)equal;
- (TSTWPFormulaSelection)initWithType:(int64_t)type range:(_NSRange)range validVisualRanges:(BOOL)ranges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1 activeTokenCharIndex:(unint64_t)self2;
- (TSTWPFormulaSelection)initWithType:(int64_t)type ranges:(id)ranges validVisualRanges:(BOOL)visualRanges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1;
- (int64_t)compare:(id)compare;
@end

@implementation TSTWPFormulaSelection

- (TSTWPFormulaSelection)initWithType:(int64_t)type ranges:(id)ranges validVisualRanges:(BOOL)visualRanges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1
{
  visualRangesCopy = visualRanges;
  rangesCopy = ranges;
  v22 = objc_msgSend_superRange(rangesCopy, v18, v19, v20, v21);
  edgeCopy = edge;
  IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_activeTokenCharIndex = objc_msgSend_initWithType_range_validVisualRanges_styleInsertionBehavior_caretAffinity_caretIsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_activeTokenCharIndex_(self, v23, type, v22, v23, visualRangesCopy, behavior, affinity, edgeCopy, index, charIndex, tailCharIndex, 0x7FFFFFFFFFFFFFFFLL);

  return IsLeadingEdge_leadingCharIndex_headCharIndex_tailCharIndex_activeTokenCharIndex;
}

- (TSTWPFormulaSelection)initWithType:(int64_t)type range:(_NSRange)range validVisualRanges:(BOOL)ranges styleInsertionBehavior:(int64_t)behavior caretAffinity:(int64_t)affinity caretIsLeadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index headCharIndex:(unint64_t)self0 tailCharIndex:(unint64_t)self1 activeTokenCharIndex:(unint64_t)self2
{
  rangesCopy = ranges;
  v17 = objc_msgSend_rangeArrayWithRange_(MEMORY[0x277D80EE8], a2, range.location, range.length, range.length);
  v20.receiver = self;
  v20.super_class = TSTWPFormulaSelection;
  v18 = [(TSWPSelection *)&v20 initWithType:type ranges:v17 validVisualRanges:rangesCopy styleInsertionBehavior:behavior caretAffinity:affinity caretIsLeadingEdge:edge leadingCharIndex:index headCharIndex:charIndex tailCharIndex:tailCharIndex];

  if (v18)
  {
    v18->mActiveTokenCharIndex = tokenCharIndex;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = TSTWPFormulaSelection;
  if ([(TSWPSelection *)&v8 isEqual:equalCopy])
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v13.receiver = self;
  v13.super_class = TSTWPFormulaSelection;
  v5 = [(TSWPSelection *)&v13 compare:compareCopy];
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