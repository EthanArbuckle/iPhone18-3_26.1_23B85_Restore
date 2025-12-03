@interface TSWPDropCap
+ (id)dropCap;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (TSWPDropCap)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSWPDropCap)initWithLocalizationDictionary:(id)dictionary;
- (TSWPDropCap)initWithType:(int64_t)type numberOfLines:(unint64_t)lines numberOfRaisedLines:(unint64_t)raisedLines outdent:(double)outdent padding:(double)padding shapeEnabled:(BOOL)enabled cornerRadius:(double)radius characterScale:(double)self0 wrapType:(int64_t)self1 numberOfCharacters:(unint64_t)self2;
- (id)localizationDictionary;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setNumberOfLines:(unint64_t)lines;
- (void)setNumberOfRaisedLines:(unint64_t)lines;
- (void)setValuesWithLocalizationDictionary:(id)dictionary;
@end

@implementation TSWPDropCap

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSWPDropCap alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (TSWPDropCap)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v4 = *(archive + 6);
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 == 1;
  }

  v6 = *(archive + 10);
  if (v6 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 1;
  }

  v8 = *(archive + 4);
  v9 = *(archive + 8);
  if ((v8 & 0x104) != 4)
  {
    v9 = *(archive + 7);
  }

  v10 = *(archive + 9);
  if ((v8 & 0x208) != 8)
  {
    v10 = *(archive + 8);
  }

  v11 = *(archive + 12);
  if ((v8 & 0x440) != 0x40)
  {
    v11 = *(archive + 9);
  }

  v12 = *(archive + 13);
  if ((v8 & 0x2080) != 0x80)
  {
    v12 = *(archive + 11);
  }

  return objc_msgSend_initWithType_numberOfLines_numberOfRaisedLines_outdent_padding_shapeEnabled_cornerRadius_characterScale_wrapType_numberOfCharacters_(self, a2, v5, *(archive + 20), *(archive + 7), *(archive + 44), v7, *(archive + 21), v9, v10, v11, v12);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v6 = objc_msgSend_dropCapType(self, a2, archive, archiver);
  if (v6 <= 2)
  {
    *(archive + 4) |= 1u;
    *(archive + 6) = v6;
  }

  v9 = objc_msgSend_wrapType(self, v7, v8);
  if (v9 <= 2)
  {
    *(archive + 4) |= 0x10u;
    *(archive + 10) = v9;
  }

  v12 = objc_msgSend_numberOfLines(self, v10, v11);
  if (HIDWORD(v12))
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSWPDropCap(PersistenceAdditions) saveToArchive:archiver:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 96, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
    LODWORD(v12) = -1;
  }

  *(archive + 4) |= 0x800u;
  *(archive + 20) = v12;
  v15 = objc_msgSend_numberOfRaisedLines(self, v13, v14);
  if (HIDWORD(v15))
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSWPDropCap(PersistenceAdditions) saveToArchive:archiver:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 97, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
    LODWORD(v15) = -1;
  }

  *(archive + 4) |= 2u;
  *(archive + 7) = v15;
  objc_msgSend_outdent(self, v16, v17);
  *(archive + 4) |= 0x100u;
  *(archive + 7) = v18;
  objc_msgSend_padding(self, v19, v20);
  *(archive + 4) |= 0x200u;
  *(archive + 8) = v21;
  v24 = objc_msgSend_shapeEnabled(self, v22, v23);
  *(archive + 4) |= 0x20u;
  *(archive + 44) = v24;
  objc_msgSend_cornerRadius(self, v25, v26);
  *(archive + 4) |= 0x400u;
  *(archive + 9) = v27;
  objc_msgSend_characterScale(self, v28, v29);
  *(archive + 4) |= 0x2000u;
  *(archive + 11) = v30;
  v33 = objc_msgSend_numberOfCharacters(self, v31, v32);
  if (HIDWORD(v33))
  {
    v49 = MEMORY[0x277D81150];
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSWPDropCap(PersistenceAdditions) saveToArchive:archiver:]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCapPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 103, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
    LODWORD(v33) = -1;
  }

  *(archive + 4) |= 0x1000u;
  *(archive + 21) = v33;
}

+ (id)dropCap
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSWPDropCap)initWithType:(int64_t)type numberOfLines:(unint64_t)lines numberOfRaisedLines:(unint64_t)raisedLines outdent:(double)outdent padding:(double)padding shapeEnabled:(BOOL)enabled cornerRadius:(double)radius characterScale:(double)self0 wrapType:(int64_t)self1 numberOfCharacters:(unint64_t)self2
{
  enabledCopy = enabled;
  v39.receiver = self;
  v39.super_class = TSWPDropCap;
  v22 = [(TSWPDropCap *)&v39 init];
  v24 = v22;
  if (v22)
  {
    objc_msgSend_setDropCapType_(v22, v23, type);
    objc_msgSend_setNumberOfLines_(v24, v25, lines);
    objc_msgSend_setNumberOfRaisedLines_(v24, v26, raisedLines);
    objc_msgSend_setOutdent_(v24, v27, v28, outdent);
    objc_msgSend_setPadding_(v24, v29, v30, padding);
    objc_msgSend_setShapeEnabled_(v24, v31, enabledCopy);
    objc_msgSend_setCornerRadius_(v24, v32, v33, radius);
    objc_msgSend_setCharacterScale_(v24, v34, v35, scale);
    objc_msgSend_setWrapType_(v24, v36, wrapType);
    objc_msgSend_setNumberOfCharacters_(v24, v37, characters);
  }

  return v24;
}

- (TSWPDropCap)initWithLocalizationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_init(self, v5, v6);
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setValuesWithLocalizationDictionary_(v7, v8, dictionaryCopy);
  }

  return v9;
}

- (id)localizationDictionary
{
  v66[10] = *MEMORY[0x277D85DE8];
  v65[0] = @"dropCapType";
  v4 = MEMORY[0x277CCABB0];
  v5 = objc_msgSend_dropCapType(self, a2, v2);
  v64 = objc_msgSend_numberWithInteger_(v4, v6, v5);
  v66[0] = v64;
  v65[1] = @"dropCapLines";
  v7 = MEMORY[0x277CCABB0];
  v10 = objc_msgSend_numberOfLines(self, v8, v9);
  v12 = objc_msgSend_numberWithUnsignedInteger_(v7, v11, v10);
  v66[1] = v12;
  v65[2] = @"dropCapRaisedLines";
  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_numberOfRaisedLines(self, v14, v15);
  v18 = objc_msgSend_numberWithUnsignedInteger_(v13, v17, v16);
  v66[2] = v18;
  v65[3] = @"dropCapOutdent";
  v19 = MEMORY[0x277CCABB0];
  objc_msgSend_outdent(self, v20, v21);
  v24 = objc_msgSend_numberWithDouble_(v19, v22, v23);
  v66[3] = v24;
  v65[4] = @"dropCapPadding";
  v25 = MEMORY[0x277CCABB0];
  objc_msgSend_padding(self, v26, v27);
  v30 = objc_msgSend_numberWithDouble_(v25, v28, v29);
  v66[4] = v30;
  v65[5] = @"dropCapShapeEnabled";
  v31 = MEMORY[0x277CCABB0];
  v34 = objc_msgSend_shapeEnabled(self, v32, v33);
  v36 = objc_msgSend_numberWithBool_(v31, v35, v34);
  v66[5] = v36;
  v65[6] = @"dropCapCornerRadius";
  v37 = MEMORY[0x277CCABB0];
  objc_msgSend_cornerRadius(self, v38, v39);
  v42 = objc_msgSend_numberWithDouble_(v37, v40, v41);
  v66[6] = v42;
  v65[7] = @"dropCapScale";
  v43 = MEMORY[0x277CCABB0];
  objc_msgSend_characterScale(self, v44, v45);
  v48 = objc_msgSend_numberWithDouble_(v43, v46, v47);
  v66[7] = v48;
  v65[8] = @"dropCapWrapType";
  v49 = MEMORY[0x277CCABB0];
  v52 = objc_msgSend_wrapType(self, v50, v51);
  v54 = objc_msgSend_numberWithInteger_(v49, v53, v52);
  v66[8] = v54;
  v65[9] = @"dropCapNumberOfCharacters";
  v55 = MEMORY[0x277CCABB0];
  v58 = objc_msgSend_numberOfCharacters(self, v56, v57);
  v60 = objc_msgSend_numberWithUnsignedInteger_(v55, v59, v58);
  v66[9] = v60;
  v62 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v61, v66, v65, 10);

  return v62;
}

- (void)setValuesWithLocalizationDictionary:(id)dictionary
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_276E000D8;
  v3[3] = &unk_27A6F4B78;
  v3[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(dictionary, a2, v3);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSWPMutableDropCap, a2, zone);
  v7 = objc_msgSend_init(v4, v5, v6);
  objc_msgSend_setPropertiesFromDropCap_(v7, v8, self);
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_dropCapType == v5->_dropCapType && self->_numberOfLines == v5->_numberOfLines && self->_numberOfRaisedLines == v5->_numberOfRaisedLines && self->_outdent == v5->_outdent && self->_padding == v5->_padding && self->_shapeEnabled == v5->_shapeEnabled && self->_cornerRadius == v5->_cornerRadius && self->_characterScale == v5->_characterScale && self->_wrapType == v5->_wrapType && self->_numberOfCharacters == v5->_numberOfCharacters;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  TSUHash();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();

  return TSUHashWithSeed();
}

- (void)setNumberOfLines:(unint64_t)lines
{
  TSUClamp();
  self->_numberOfLines = v4;
  TSUClamp();
  self->_numberOfRaisedLines = v5;
}

- (void)setNumberOfRaisedLines:(unint64_t)lines
{
  objc_msgSend_numberOfLines(self, a2, lines);
  TSUClamp();
  self->_numberOfRaisedLines = v4;
}

@end