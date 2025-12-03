@interface PXWidgetBarSpec
- (UIEdgeInsets)contentInsets;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXWidgetBarSpec

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 16), self->_textColor);
  objc_storeStrong((v4 + 24), self->_primaryFont);
  objc_storeStrong((v4 + 32), self->_secondaryFont);
  v5 = *&self->_contentInsets.top;
  *(v4 + 104) = *&self->_contentInsets.bottom;
  *(v4 + 88) = v5;
  *(v4 + 8) = self->_shouldUseSingleLine;
  *(v4 + 40) = self->_distanceBetweenTopAndFirstBaseline;
  *(v4 + 48) = self->_distanceBetweenLastBaselineAndBottom;
  *(v4 + 56) = self->_minimumDistanceBetweenTopAndFirstAscender;
  *(v4 + 64) = self->_minimumDistanceBetweenLastDescenderAndBottom;
  *(v4 + 72) = self->_distanceBetweenTitleBaselineAndSubtitleBaseline;
  *(v4 + 80) = self->_horizontalSpacingBetweenTitleAndSubtitle;
  return v4;
}

@end