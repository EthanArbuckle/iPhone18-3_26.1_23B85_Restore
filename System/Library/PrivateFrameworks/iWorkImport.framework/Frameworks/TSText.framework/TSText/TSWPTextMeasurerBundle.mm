@interface TSWPTextMeasurerBundle
- (TSWPFontHeightInfo)fontHeightInfo;
- (void)setFontHeightInfo:(TSWPFontHeightInfo *)info;
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

- (void)setFontHeightInfo:(TSWPFontHeightInfo *)info
{
  v3 = *&info->spaceBefore;
  *&self->_fontHeightInfo.ascent = *&info->ascent;
  *&self->_fontHeightInfo.spaceBefore = v3;
  v4 = *&info->descent;
  v5 = *&info->leadingBelow;
  v6 = *&info->verticalHeight;
  *&self->_fontHeightInfo.underlinePosition = *&info->underlinePosition;
  *&self->_fontHeightInfo.verticalHeight = v6;
  *&self->_fontHeightInfo.leadingBelow = v5;
  *&self->_fontHeightInfo.descent = v4;
}

@end