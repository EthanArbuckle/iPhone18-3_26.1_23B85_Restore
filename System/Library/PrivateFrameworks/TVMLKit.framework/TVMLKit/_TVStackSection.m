@interface _TVStackSection
- (TVRowMetrics)compoundRowMetrics;
- (UIEdgeInsets)sectionSpacing;
- (UIEdgeInsets)showcaseSectionSpacing;
- (id)debugDescription;
- (void)setCompoundRowMetrics:(TVRowMetrics *)a3;
@end

@implementation _TVStackSection

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  sectionHeight = self->_sectionHeight;
  v5 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{self->_sectionSpacing.top, self->_sectionSpacing.left, self->_sectionSpacing.bottom, self->_sectionSpacing.right}];
  v6 = [v3 stringWithFormat:@"_TVStackSection [%p] sectionHeight [%f] sectionSpacing [%@] firstRowIndex [%ld] rowCount [%ld] firstItemRowIndex [%ld]", self, *&sectionHeight, v5, self->_firstRowIndex, self->_rowCount, self->_firstItemRowIndex];

  return v6;
}

- (UIEdgeInsets)sectionSpacing
{
  top = self->_sectionSpacing.top;
  left = self->_sectionSpacing.left;
  bottom = self->_sectionSpacing.bottom;
  right = self->_sectionSpacing.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (TVRowMetrics)compoundRowMetrics
{
  v3 = *&self[2].rowType;
  retstr->rowInset = self[1].rowMargin;
  retstr->rowInsetAlt = v3;
  retstr->rowMargin = self[2].rowPadding;
  rowInsetAlt = self[1].rowInsetAlt;
  *&retstr->rowType = self[1].rowInset;
  retstr->rowPadding = rowInsetAlt;
  return self;
}

- (void)setCompoundRowMetrics:(TVRowMetrics *)a3
{
  *&self->_compoundRowMetrics.rowType = *&a3->rowType;
  rowPadding = a3->rowPadding;
  rowInset = a3->rowInset;
  rowMargin = a3->rowMargin;
  self->_compoundRowMetrics.rowInsetAlt = a3->rowInsetAlt;
  self->_compoundRowMetrics.rowMargin = rowMargin;
  self->_compoundRowMetrics.rowPadding = rowPadding;
  self->_compoundRowMetrics.rowInset = rowInset;
}

- (UIEdgeInsets)showcaseSectionSpacing
{
  top = self->_showcaseSectionSpacing.top;
  left = self->_showcaseSectionSpacing.left;
  bottom = self->_showcaseSectionSpacing.bottom;
  right = self->_showcaseSectionSpacing.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end