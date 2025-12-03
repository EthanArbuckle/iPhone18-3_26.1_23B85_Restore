@interface TSCHDeprecatedNumberFormat
+ (id)instanceWithArchive:(const Message *)archive unarchiver:(id)unarchiver;
+ (id)upgradedNumberFormatFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSCHDeprecatedNumberFormat)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)saveToArchive:(Message *)archive archiver:(id)archiver;
@end

@implementation TSCHDeprecatedNumberFormat

+ (id)upgradedNumberFormatFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9 = *(archive + 24);
  if (v9 > 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_2764D6BD0[v9];
  }

  v11 = *(archive + 50);
  if ((*(archive + 16) & 2) != 0)
  {
    v87 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v5, v6, v7, v8, *(archive + 7) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v87 = 0;
  }

  if (*(archive + 26) >= 4u)
  {
    v12 = 4;
  }

  else
  {
    v12 = *(archive + 26);
  }

  v13 = *(archive + 120);
  v15 = sub_2762A78A0(*(archive + 27));
  v19 = *(archive + 4);
  if ((v19 & 4) != 0)
  {
    v20 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v14, v16, v17, v18, *(archive + 8) & 0xFFFFFFFFFFFFFFFELL);
    if ((*(archive + 4) & 0x10) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v20 = 0;
    if ((v19 & 0x10) == 0)
    {
LABEL_12:
      v21 = 0;
      goto LABEL_15;
    }
  }

  v21 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v14, v16, v17, v18, *(archive + 10) & 0xFFFFFFFFFFFFFFFELL);
LABEL_15:
  if (*(archive + 123) == 1)
  {
    v23 = objc_msgSend_defaultDecimalNumberFormatWithPrefixString_suffixString_(TSCHNumberFormat, v14, v16, v17, v18, v21, v20);
  }

  else
  {
    v84 = *(archive + 58);
    v85 = *(archive + 56);
    v83 = *(archive + 121);
    v27 = *(archive + 122);
    v28 = MEMORY[0x277D80680];
    v29 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v14, v16, v17, v18);
    v34 = objc_msgSend_defaultFormatWithFormatType_locale_(v28, v30, v31, v32, v33, v10, v29);

    v35 = [TSCHMutableNumberFormat alloc];
    v40 = objc_msgSend_initWithTSKFormat_prefixString_suffixString_(v35, v36, v37, v38, v39, v34, v21, v20);
    objc_msgSend_setDecimalPlaces_(v40, v41, v42, v43, v44, v11);
    objc_msgSend_setCurrencyCode_(v40, v45, v46, v47, v48, v87);
    objc_msgSend_setUseAccountingStyle_(v40, v49, v50, v51, v52, v27);
    objc_msgSend_setNegativeStyle_(v40, v53, v54, v55, v56, v12);
    objc_msgSend_setShowThousandsSeparator_(v40, v57, v58, v59, v60, v13);
    objc_msgSend_setFractionAccuracy_(v40, v61, v62, v63, v64, v15);
    objc_msgSend_setBase_(v40, v65, v66, v67, v68, v85);
    objc_msgSend_setBasePlaces_(v40, v69, v70, v71, v72, v84);
    objc_msgSend_setBaseUseMinusSign_(v40, v73, v74, v75, v76, v83);
    v23 = objc_msgSend_upgradedNumberFormatFromPreUFFOrUnity1_0(v40, v77, v78, v79, v80);
  }

  v81 = objc_msgSend_copy(v23, v22, v24, v25, v26);

  return v81;
}

+ (id)instanceWithArchive:(const Message *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSCHDeprecatedNumberFormat alloc];
  v11 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v8, v9, v10, archive, unarchiverCopy);

  return v11;
}

- (TSCHDeprecatedNumberFormat)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v14.receiver = self;
  v14.super_class = TSCHDeprecatedNumberFormat;
  v7 = [(TSCHDeprecatedNumberFormat *)&v14 init];
  v12 = objc_msgSend_upgradedNumberFormatFromArchive_unarchiver_(TSCHDeprecatedNumberFormat, v8, v9, v10, v11, archive, unarchiverCopy);

  return v12;
}

- (void)saveToArchive:(Message *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCHDeprecatedNumberFormat saveToArchive:archiver:]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHArchiveUtilities.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v16, v17, v18, v19, v10, v15, 543, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  v24 = MEMORY[0x277CBEAD8];
  v29 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, v26, v27, v28, @"%s: %s", "Do not call method", "[TSCHDeprecatedNumberFormat saveToArchive:archiver:]");
  v34 = objc_msgSend_exceptionWithName_reason_userInfo_(v24, v30, v31, v32, v33, *MEMORY[0x277CBE658], v29, 0);
  v35 = v34;

  objc_exception_throw(v34);
}

@end