@interface TSWPTextMeasurerBundle
- (TSWPFontHeightInfo)fontHeightInfo;
- (void)setFontHeightInfo:(TSWPFontHeightInfo *)a3;
@end

@implementation TSWPTextMeasurerBundle

- (TSWPFontHeightInfo)fontHeightInfo
{
  v3 = *&self->xHeight;
  *&retstr->descent = *&self->spaceAfter;
  *&retstr->leadingBelow = v3;
  v4 = *&self[1].attachmentHeight;
  *&retstr->verticalHeight = *&self->underlineThickness;
  *&retstr->underlinePosition = v4;
  v5 = *&self->leadingAbove;
  *&retstr->spaceBefore = *&self->capHeight;
  *&retstr->ascent = v5;
  return self;
}

- (void)setFontHeightInfo:(TSWPFontHeightInfo *)a3
{
  v3 = *&a3->spaceBefore;
  *&self->_fontHeightInfo.ascent = *&a3->ascent;
  *&self->_fontHeightInfo.spaceBefore = v3;
  v4 = *&a3->descent;
  v5 = *&a3->leadingBelow;
  v6 = *&a3->verticalHeight;
  *&self->_fontHeightInfo.underlinePosition = *&a3->underlinePosition;
  *&self->_fontHeightInfo.verticalHeight = v6;
  *&self->_fontHeightInfo.leadingBelow = v5;
  *&self->_fontHeightInfo.descent = v4;
}

@end