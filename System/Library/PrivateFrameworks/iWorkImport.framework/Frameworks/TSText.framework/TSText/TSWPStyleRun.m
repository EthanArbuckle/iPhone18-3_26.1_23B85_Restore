@interface TSWPStyleRun
- (BOOL)coalesceWith:(id)a3;
- (TSWPFontHeightInfo)fontHeightInfo;
- (TSWPStyleRun)init;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setFontHeightInfo:(TSWPFontHeightInfo *)a3;
@end

@implementation TSWPStyleRun

- (TSWPStyleRun)init
{
  v3.receiver = self;
  v3.super_class = TSWPStyleRun;
  result = [(TSWPStyleRun *)&v3 init];
  if (result)
  {
    result->_charIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_charIndex(self, v5, v6);
  objc_msgSend_setCharIndex_(v4, v8, v7);
  v11 = objc_msgSend_runLength(self, v9, v10);
  objc_msgSend_setRunLength_(v4, v12, v11);
  v15 = objc_msgSend_flags(self, v13, v14);
  objc_msgSend_setFlags_(v4, v16, v15);
  v19 = objc_msgSend_characterStyle(self, v17, v18);
  objc_msgSend_setCharacterStyle_(v4, v20, v19);

  v23 = objc_msgSend_ctFont(self, v21, v22);
  objc_msgSend_setCtFont_(v4, v24, v23);
  v27 = objc_msgSend_attributes(self, v25, v26);
  objc_msgSend_setAttributes_(v4, v28, v27);

  objc_msgSend_fontHeightInfo(self, v29, v30);
  v33[2] = v33[8];
  v33[3] = v33[9];
  v33[4] = v33[10];
  v33[5] = v33[11];
  v33[0] = v33[6];
  v33[1] = v33[7];
  objc_msgSend_setFontHeightInfo_(v4, v31, v33);
  return v4;
}

- (BOOL)coalesceWith:(id)a3
{
  v5 = a3;
  v8 = objc_msgSend_charIndex(self, v6, v7);
  v11 = objc_msgSend_runLength(self, v9, v10);
  if (v11 + v8 != objc_msgSend_charIndex(v5, v12, v13))
  {
    goto LABEL_19;
  }

  v16 = objc_msgSend_flags(self, v14, v15);
  if (v16 != objc_msgSend_flags(v5, v17, v18))
  {
    goto LABEL_19;
  }

  v21 = objc_msgSend_characterStyle(self, v19, v20);
  v26 = objc_msgSend_characterStyle(v5, v22, v23);
  if (v21 != v26)
  {
    v61 = objc_msgSend_characterStyle(self, v24, v25);
    v3 = objc_msgSend_characterStyle(v5, v27, v28);
    if (!objc_msgSend_isEqual_(v61, v29, v3))
    {
      goto LABEL_17;
    }
  }

  v30 = objc_msgSend_ctFont(self, v24, v25);
  if (v30 != objc_msgSend_ctFont(v5, v31, v32))
  {
    v35 = objc_msgSend_ctFont(self, v33, v34);
    v38 = objc_msgSend_ctFont(v5, v36, v37);
    if (!CFEqual(v35, v38))
    {
      if (v21 == v26)
      {
LABEL_18:

LABEL_19:
        v59 = 0;
        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  v39 = objc_msgSend_attributes(self, v33, v34);
  v42 = objc_msgSend_attributes(v5, v40, v41);
  v45 = v42;
  if (v39 == v42)
  {

    if (v21 != v26)
    {
    }
  }

  else
  {
    v46 = objc_msgSend_attributes(self, v43, v44);
    v49 = objc_msgSend_attributes(v5, v47, v48);
    isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v46, v50, v49);

    if (v21 != v26)
    {
    }

    if ((isEqualToDictionary & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v54 = objc_msgSend_runLength(v5, v52, v53);
  v57 = objc_msgSend_runLength(self, v55, v56);
  objc_msgSend_setRunLength_(self, v58, v57 + v54);
  v59 = 1;
LABEL_20:

  return v59;
}

- (_NSRange)range
{
  v4 = objc_msgSend_charIndex(self, a2, v2);
  v7 = objc_msgSend_runLength(self, v5, v6);
  v8 = v4;
  result.length = v7;
  result.location = v8;
  return result;
}

- (TSWPFontHeightInfo)fontHeightInfo
{
  v3 = *&self[1].attachmentHeight;
  *&retstr->descent = *&self->underlineThickness;
  *&retstr->leadingBelow = v3;
  v4 = *&self[1].leadingAbove;
  *&retstr->verticalHeight = *&self[1].capHeight;
  *&retstr->underlinePosition = v4;
  v5 = *&self->xHeight;
  *&retstr->spaceBefore = *&self->spaceAfter;
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