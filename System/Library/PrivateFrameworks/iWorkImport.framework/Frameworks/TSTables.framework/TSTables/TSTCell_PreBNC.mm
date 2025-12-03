@interface TSTCell_PreBNC
+ (BOOL)formatType:(unsigned int)type sharesASpareSlotWithFormatType:(unsigned int)formatType;
+ (BOOL)mismatchBetweenValueType:(unsigned __int8)type andFormatType:(unsigned int)formatType;
+ (id)stringForCellValueType:(unsigned __int8)type;
- (BOOL)clearNoncurrentImplicitFormats;
- (BOOL)currentFormatUsesAccountingStyle;
- (BOOL)dataIsReplaceable;
- (BOOL)hasEqualContentToCell:(id)cell usingRichTextObjectComparisonBlock:(id)block;
- (BOOL)hasEqualValueToCell:(id)cell;
- (BOOL)hasExplicitFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare;
- (BOOL)hasFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare;
- (BOOL)hasFormulaEvaluationError;
- (BOOL)hasFormulaSyntaxError;
- (BOOL)hasMismatchedFormatAndValue;
- (BOOL)hasRichText;
- (BOOL)isEmpty;
- (BOOL)isEmptyForDataStore;
- (BOOL)isMostRecentlyExplicitPercent;
- (BOOL)p_currentFormatIsEqualToOtherCellFormat:(id)format;
- (NSDate)dateValue;
- (NSString)customFormatString;
- (NSString)formattedValue;
- (NSString)formulaSyntaxErrorString;
- (NSString)stringForEditing;
- (NSString)stringForUnderlyingValue;
- (NSString)stringValue;
- (TSCEFormulaObject)formula;
- (TSDFill)cellFill;
- (TSTCellSpec)cellSpecForDiff;
- (TSTCell_PreBNC)initWithLocale:(id)locale;
- (TSTCell_PreBNC)initWithStorageRef:(id *)ref dataStore:(id)store;
- (TSWPParagraphStyle)effectiveTextStyle;
- (TSWPStorage)formulaSyntaxError;
- (TSWPStorage)richTextStorageForLayout;
- (TSWPStorage)richTextValue;
- (double)doubleValue;
- (double)durationTimeIntervalValue;
- (id)cellFillComparedToDefault:(id)default suppressCS:(BOOL)s isDefault:(BOOL *)isDefault;
- (id)cellValueDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)p_spareFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare explicitOnly:(BOOL)only;
- (id)upgradedBraveNewCell;
- (int)writingDirection;
- (unsigned)currentFormatNegativeStyle;
- (unsigned)formatType;
- (unsigned)formulaSyntaxErrorID;
- (unsigned)interactionType;
- (unsigned)richTextID;
- (unsigned)stringID;
- (void)applyPopupChoiceIndex:(unint64_t)index;
- (void)bakeFormulaToValue;
- (void)clear;
- (void)clearAllFormats;
- (void)clearDataListIDs;
- (void)clearSpareFormatOfType:(unsigned int)type;
- (void)clearStrokes;
- (void)clearValue;
- (void)copyAllFormatsToCell:(id)cell;
- (void)copyJustStrokesToCell:(id)cell;
- (void)copyJustStyleAndStrokesToCell:(id)cell;
- (void)copyToCell:(id)cell;
- (void)inflateFromStorageRef:(id *)ref dataStore:(id)store suppressingTransmutation:(BOOL)transmutation;
- (void)p_TSTCellSetMostRecentlySetDateFormat:(int)format;
- (void)p_TSTCellSetMostRecentlySetNumberFormat:(int)format;
- (void)p_TSTCellSetMostRecentlySetTextFormat:(int)format;
- (void)p_setFormatExplicit:(BOOL)explicit fromFormatType:(unsigned int)type setMostRecentlySet:(BOOL)set;
- (void)p_setFormatFlags:(unsigned __int16)flags explicit:(BOOL)explicit;
- (void)p_setFormatForFormulaResult:(id)result propagation:(BOOL)propagation;
- (void)setBoolValue:(BOOL)value;
- (void)setCellSpec:(id)spec clearingID:(BOOL)d;
- (void)setCellSpecRepairingFormats:(id)formats;
- (void)setCellStyle:(id)style clearingID:(BOOL)d;
- (void)setCommentStorage:(id)storage clearingID:(BOOL)d;
- (void)setConditionalStyle:(id)style clearingID:(BOOL)d;
- (void)setCurrentFormat:(id)format flags:(unsigned __int16)flags;
- (void)setDateValue:(id)value;
- (void)setDefaultFormatForValue;
- (void)setDoubleValue:(double)value;
- (void)setDurationTimeIntervalValue:(double)value;
- (void)setFormat:(id)format shouldSetExplFlags:(BOOL)flags isExplicit:(BOOL)explicit makeCurrent:(BOOL)current clearingID:(BOOL)d;
- (void)setFormula:(id)formula clearingID:(BOOL)d;
- (void)setFormulaSyntaxError:(id)error clearingID:(BOOL)d;
- (void)setFormulaSyntaxErrorID:(unsigned int)d;
- (void)setImportWarningSet:(id)set clearingID:(BOOL)d;
- (void)setRichTextID:(unsigned int)d;
- (void)setRichTextValue:(id)value clearingID:(BOOL)d convertToPlaintextIfPossible:(BOOL)possible;
- (void)setStringID:(unsigned int)d;
- (void)setStringValue:(id)value clearingID:(BOOL)d;
- (void)setStringValue:(id)value clearingID:(BOOL)d shouldWrap:(BOOL)wrap;
- (void)setTextStyle:(id)style clearingID:(BOOL)d;
- (void)setValueType:(unsigned __int8)type;
- (void)updateCustomFormatFromPaste:(id)paste;
@end

@implementation TSTCell_PreBNC

- (id)upgradedBraveNewCell
{
  v3 = [TSTCell alloc];
  v8 = objc_msgSend_locale(self, v4, v5, v6, v7);
  v12 = objc_msgSend_initWithLocale_(v3, v9, v8, v10, v11);

  v17 = objc_msgSend_numberFormat(self, v13, v14, v15, v16);

  if (v17)
  {
    v22 = objc_msgSend_numberFormat(self, v18, v19, v20, v21);
    hasExplicitFormatOfType_allowMismatchedSpare = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v23, 256, 1, v24);
    objc_msgSend_setFormat_isExplicit_(v12, v26, v22, hasExplicitFormatOfType_allowMismatchedSpare, v27);
  }

  v28 = objc_msgSend_currencyFormat(self, v18, v19, v20, v21);

  if (v28)
  {
    v33 = objc_msgSend_currencyFormat(self, v29, v30, v31, v32);
    v36 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v34, 257, 1, v35);
    objc_msgSend_setFormat_isExplicit_(v12, v37, v33, v36, v38);
  }

  v39 = objc_msgSend_dateFormat(self, v29, v30, v31, v32);

  if (v39)
  {
    v44 = objc_msgSend_dateFormat(self, v40, v41, v42, v43);
    v47 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v45, 261, 1, v46);
    objc_msgSend_setFormat_isExplicit_(v12, v48, v44, v47, v49);
  }

  v50 = objc_msgSend_durationFormat(self, v40, v41, v42, v43);

  if (v50)
  {
    v55 = objc_msgSend_numberFormat(self, v51, v52, v53, v54);
    v58 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v56, 268, 1, v57);
    objc_msgSend_setFormat_isExplicit_(v12, v59, v55, v58, v60);
  }

  v61 = objc_msgSend_currentFormat(self, v51, v52, v53, v54);

  if (v61)
  {
    v66 = objc_msgSend_currentFormat(self, v62, v63, v64, v65);
    IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v67, v68, v69, v70);
    objc_msgSend_setCurrentFormat_isExplicit_(v12, v72, v66, IsExplicit, v73);
  }

  v74 = objc_msgSend_currentFormat(v12, v62, v63, v64, v65);
  v79 = objc_msgSend_currencyFormat(v12, v75, v76, v77, v78);
  v84 = v79;
  if (v74 == v79)
  {

    goto LABEL_26;
  }

  v85 = objc_msgSend_currentFormat(v12, v80, v81, v82, v83);
  v90 = objc_msgSend_numberFormat(v12, v86, v87, v88, v89);

  if (v85 == v90)
  {
    goto LABEL_26;
  }

  v95 = objc_msgSend_p_mostRecentlySetNumberFormatType(self, v91, v92, v93, v94);
  switch(v95)
  {
    case 1:
      goto LABEL_24;
    case 2:
      v100 = objc_msgSend_baseFormat(self, v96, v97, v98, v99);
      v114 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v112, 269, 1, v113);
      objc_msgSend_setFormat_isExplicit_(v12, v115, v100, v114, v116);
      goto LABEL_20;
    case 3:
      v100 = objc_msgSend_customFormat(self, v96, v97, v98, v99);
      if (objc_msgSend_formatType(v100, v101, v102, v103, v104) == 270)
      {
        v109 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v105, 270, 1, v108);
        objc_msgSend_setFormat_isExplicit_(v12, v110, v100, v109, v111);
LABEL_20:

        break;
      }

      if (objc_msgSend_formatType(v100, v105, v106, v107, v108) != 274)
      {
        goto LABEL_20;
      }

      v123 = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v121, 274, 1, v122);
      objc_msgSend_setFormat_isExplicit_(v12, v124, v100, v123, v125);

LABEL_24:
      LODWORD(v120) = objc_msgSend_explicitFormatFlags(v12, v96, v97, v98, v99) | 0x800;
      goto LABEL_25;
  }

  v120 = objc_msgSend_explicitFormatFlags(v12, v96, v97, v98, v99) & 0xFFFFF7FFLL;
LABEL_25:
  objc_msgSend_setExplicitFormatFlags_(v12, v117, v120, v118, v119);
LABEL_26:
  v126 = objc_msgSend_valueType(self, v91, v92, v93, v94);
  if (v126 > 5)
  {
    if (v126 <= 7)
    {
      if (v126 == 6)
      {
        v143 = objc_msgSend_BOOLValue(self, v127, v128, v129, v130);
        objc_msgSend_setBoolValue_(v12, v144, v143, v145, v146);
      }

      else
      {
        objc_msgSend_durationTimeIntervalValue(self, v127, v128, v129, v130);
        objc_msgSend_setDurationTimeIntervalValue_(v12, v139, v140, v141, v142);
      }

      goto LABEL_50;
    }

    switch(v126)
    {
      case 8:
        v131 = objc_msgSend_formulaSyntaxError(self, v127, v128, v129, v130);
        v154 = objc_msgSend_context(v131, v150, v151, v152, v153);
        v159 = objc_msgSend_stylesheet(v131, v155, v156, v157, v158);
        v162 = objc_msgSend_i_copyIntoContext_stylesheet_(v131, v160, v154, v159, v161);
        objc_msgSend_setFormulaSyntaxError_(v12, v163, v162, v164, v165);

        break;
      case 9:
        v131 = objc_msgSend_richTextValue(self, v127, v128, v129, v130);
        objc_msgSend_setRichTextValue_(v12, v166, v131, v167, v168);
        break;
      case 10:
        goto LABEL_38;
      default:
        goto LABEL_50;
    }

LABEL_49:

    goto LABEL_50;
  }

  if (v126 > 2)
  {
    if (v126 == 3)
    {
      v131 = objc_msgSend_stringValue(self, v127, v128, v129, v130);
      objc_msgSend_setStringValue_(v12, v147, v131, v148, v149);
    }

    else
    {
      if (v126 == 4)
      {
        objc_msgSend_setProvidedValueTypeBeforeUpgrade(v12, v127, v128, v129, v130);
        goto LABEL_50;
      }

      v131 = objc_msgSend_dateValue(self, v127, v128, v129, v130);
      objc_msgSend_setDateValue_(v12, v132, v131, v133, v134);
    }

    goto LABEL_49;
  }

  if (!v126)
  {
    objc_msgSend_clearValue(v12, v127, v128, v129, v130);
    goto LABEL_50;
  }

  if (v126 != 2)
  {
    goto LABEL_50;
  }

LABEL_38:
  if (objc_msgSend_formatType(self, v127, v128, v129, v130) == 257 || objc_msgSend_formatType(self, v135, v136, v137, v138) == 274)
  {
    objc_msgSend_setCurrencyDoubleValue_(v12, v135, v136, v137, v138, self->_valueDouble);
  }

  else
  {
    objc_msgSend_setNumberDoubleValue_(v12, v135, v136, v137, v138, self->_valueDouble);
  }

LABEL_50:
  if (objc_msgSend_hasMismatchedFormatAndValue(v12, v127, v128, v129, v130))
  {
    v173 = MEMORY[0x277CCACA8];
    v174 = objc_msgSend_cellValueTypeDescription(v12, v169, v170, v171, v172);
    objc_msgSend_formatType(v12, v175, v176, v177, v178);
    v179 = NSStringForTSUFormatType();
    v183 = objc_msgSend_stringWithFormat_(v173, v180, @"Warning: Creating brave new cell with value type %@ but mismatched format type %@, repairing", v181, v182, v174, v179);

    v184 = MEMORY[0x277D81150];
    v188 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, "[TSTCell_PreBNC upgradedBraveNewCell]", v186, v187);
    v192 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v189, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v190, v191);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v184, v193, v188, v192, 211, 0, "%{public}@", v183);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v194, v195, v196, v197);
    objc_msgSend_setDefaultFormatForValue(v12, v198, v199, v200, v201);
  }

  v202 = objc_msgSend_cellFlags(self, v169, v170, v171, v172);
  objc_msgSend_setCellFlags_(v12, v203, v202, v204, v205);
  v210 = objc_msgSend_cellSpec(self, v206, v207, v208, v209);
  objc_msgSend_setCellSpec_(v12, v211, v210, v212, v213);

  v218 = objc_msgSend_cellStyle(self, v214, v215, v216, v217);
  objc_msgSend_setCellStyle_(v12, v219, v218, v220, v221);

  v226 = objc_msgSend_textStyle(self, v222, v223, v224, v225);
  objc_msgSend_setTextStyle_(v12, v227, v226, v228, v229);

  v234 = objc_msgSend_conditionalStyle(self, v230, v231, v232, v233);
  objc_msgSend_setConditionalStyle_(v12, v235, v234, v236, v237);

  v242 = objc_msgSend_conditionalStyleAppliedRule(self, v238, v239, v240, v241);
  objc_msgSend_setConditionalStyleAppliedRule_(v12, v243, v242, v244, v245);
  v250 = objc_msgSend_importWarningSet(self, v246, v247, v248, v249);
  objc_msgSend_setImportWarningSet_(v12, v251, v250, v252, v253);

  v258 = objc_msgSend_commentStorage(self, v254, v255, v256, v257);
  objc_msgSend_setCommentStorage_(v12, v259, v258, v260, v261);

  return v12;
}

- (TSTCell_PreBNC)initWithLocale:(id)locale
{
  localeCopy = locale;
  v26.receiver = self;
  v26.super_class = TSTCell_PreBNC;
  v5 = [(TSTCell_PreBNC *)&v26 init];
  v9 = v5;
  if (v5)
  {
    v5->_conditionalStyleAppliedRule = 15;
    if (!localeCopy)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCell_PreBNC initWithLocale:]", v7, v8);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v13, v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 236, 0, "invalid nil value for '%{public}s'", "locale");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
      localeCopy = objc_msgSend_currentLocale(MEMORY[0x277D81228], v21, v22, v23, v24);
    }

    objc_storeStrong(&v9->_locale, localeCopy);
  }

  return v9;
}

- (TSTCell_PreBNC)initWithStorageRef:(id *)ref dataStore:(id)store
{
  storeCopy = store;
  v11 = objc_msgSend_documentRoot(storeCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_documentLocale(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_initWithLocale_(self, v17, v16, v18, v19);

  if (v20)
  {
    objc_msgSend_inflateFromStorageRef_dataStore_(v20, v21, ref, storeCopy, v22);
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6 = objc_msgSend_allocWithZone_(TSTCell_PreBNC, a2, zone, v3, v4);
  v10 = objc_msgSend_initWithLocale_(v6, v7, self->_locale, v8, v9);
  objc_msgSend_copyToCell_(self, v11, v10, v12, v13);
  return v10;
}

- (void)copyToCell:(id)cell
{
  cellCopy = cell;
  if (cellCopy)
  {
    objc_msgSend_clear(cellCopy, v4, v5, v6, v7);
    *(cellCopy + 18) = self->_cellFlags;
    *(cellCopy + 32) = self->_valueType;
    cellCopy[1] = *&self->_valueDouble;
    objc_storeStrong(cellCopy + 3, self->_valueObject);
    *(cellCopy + 4) = self->_valueID;
    *(cellCopy + 10) = self->_cellStyleID;
    objc_storeStrong(cellCopy + 13, self->_cellStyle);
    *(cellCopy + 11) = self->_textStyleID;
    objc_storeStrong(cellCopy + 14, self->_textStyle);
    *(cellCopy + 12) = self->_conditionalStyleID;
    objc_storeStrong(cellCopy + 15, self->_conditionalStyle);
    *(cellCopy + 33) = self->_conditionalStyleAppliedRule;
    v12 = objc_msgSend_copy(self->_cellBorder, v8, v9, v10, v11);
    v13 = cellCopy[16];
    cellCopy[16] = v12;

    *(cellCopy + 13) = self->_formulaID;
    objc_storeStrong(cellCopy + 29, self->_cellSpec);
    *(cellCopy + 17) = self->_explicitFormatFlags;
    *(cellCopy + 14) = self->_currentFormatID;
    objc_storeStrong(cellCopy + 17, self->_currentFormat);
    *(cellCopy + 15) = self->_numberFormatID;
    objc_storeStrong(cellCopy + 18, self->_numberFormat);
    *(cellCopy + 16) = self->_currencyFormatID;
    objc_storeStrong(cellCopy + 19, self->_currencyFormat);
    *(cellCopy + 17) = self->_dateFormatID;
    objc_storeStrong(cellCopy + 20, self->_dateFormat);
    *(cellCopy + 18) = self->_durationFormatID;
    objc_storeStrong(cellCopy + 21, self->_durationFormat);
    *(cellCopy + 19) = self->_customFormatID;
    objc_storeStrong(cellCopy + 22, self->_customFormat);
    *(cellCopy + 20) = self->_baseFormatID;
    objc_storeStrong(cellCopy + 23, self->_baseFormat);
    *(cellCopy + 21) = self->_controlFormatID;
    objc_storeStrong(cellCopy + 24, self->_controlFormat);
    *(cellCopy + 22) = self->_multipleChoiceListFormatID;
    objc_storeStrong(cellCopy + 25, self->_multipleChoiceListFormat);
    *(cellCopy + 23) = self->_commentStorageID;
    objc_storeStrong(cellCopy + 27, self->_commentStorage);
    *(cellCopy + 24) = self->_importWarningSetID;
    objc_storeStrong(cellCopy + 28, self->_importWarningSet);
    objc_storeStrong(cellCopy + 26, self->_locale);
  }
}

- (void)inflateFromStorageRef:(id *)ref dataStore:(id)store suppressingTransmutation:(BOOL)transmutation
{
  transmutationCopy = transmutation;
  storeCopy = store;
  sub_221396A38(&ref->var0.var0, self);
  if (storeCopy)
  {
    v12 = objc_msgSend_documentRoot(storeCopy, v8, v9, v10, v11);
    v17 = objc_msgSend_documentLocale(v12, v13, v14, v15, v16);
    locale = self->_locale;
    self->_locale = v17;

    objc_msgSend_resolveDataListKeysForPreBNCCell_suppressTransmutation_sourceStorageVersion_(storeCopy, v19, self, transmutationCopy, ref->var0.var0);
  }
}

- (BOOL)p_currentFormatIsEqualToOtherCellFormat:(id)format
{
  formatCopy = format;
  currentFormat = self->_currentFormat;
  v14 = objc_msgSend_currentFormat(formatCopy, v6, v7, v8, v9);
  if (currentFormat == v14)
  {
    isEqual = 1;
  }

  else
  {
    v15 = self->_currentFormat;
    v16 = objc_msgSend_currentFormat(formatCopy, v10, v11, v12, v13);
    isEqual = objc_msgSend_isEqual_(v15, v17, v16, v18, v19);
  }

  return isEqual;
}

- (BOOL)hasEqualContentToCell:(id)cell usingRichTextObjectComparisonBlock:(id)block
{
  cellCopy = cell;
  blockCopy = block;
  if ((objc_msgSend_hasCellSpec(self, v8, v9, v10, v11) & 1) != 0 || objc_msgSend_hasCellSpec(cellCopy, v12, v13, v14, v15))
  {
    if (objc_msgSend_hasFormula(self, v12, v13, v14, v15) && objc_msgSend_hasFormula(cellCopy, v16, v17, v18, v19))
    {
      v20 = objc_msgSend_asFormulaSpec(self->_cellSpec, v16, v17, v18, v19);
      v25 = objc_msgSend_cellSpec(cellCopy, v21, v22, v23, v24);
      isEquivalent = objc_msgSend_isEquivalent_(v20, v26, v25, v27, v28);

      if (!isEquivalent)
      {
LABEL_18:
        LOBYTE(v34) = 0;
        goto LABEL_19;
      }

      if (objc_msgSend_interactionType(self->_cellSpec, v30, v31, v32, v33) == 1)
      {
        LOBYTE(v34) = 1;
        goto LABEL_19;
      }
    }

    else
    {
      if (!objc_msgSend_hasCellSpec(self, v16, v17, v18, v19))
      {
        goto LABEL_18;
      }

      if (!objc_msgSend_hasCellSpec(cellCopy, v35, v36, v37, v38))
      {
        goto LABEL_18;
      }

      cellSpec = self->_cellSpec;
      v44 = objc_msgSend_cellSpec(cellCopy, v39, v40, v41, v42);
      LOBYTE(cellSpec) = objc_msgSend_isEqual_(cellSpec, v45, v44, v46, v47);

      if ((cellSpec & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  valueType = self->_valueType;
  if (valueType != objc_msgSend_valueType(cellCopy, v12, v13, v14, v15) || !objc_msgSend_p_currentFormatIsEqualToOtherCellFormat_(self, v49, cellCopy, v50, v51))
  {
    goto LABEL_18;
  }

  v56 = self->_valueType;
  LOBYTE(v34) = 1;
  if (v56 <= 5)
  {
    switch(v56)
    {
      case 2u:
        objc_msgSend_doubleValue(self, v52, v53, v54, v55);
        v58 = v91;
        objc_msgSend_doubleValue(cellCopy, v92, v93, v94, v95);
        goto LABEL_29;
      case 3u:
        v65 = objc_msgSend_stringValue(self, v52, v53, v54, v55);
        v70 = objc_msgSend_stringValue(cellCopy, v108, v109, v110, v111);
        isEqualToString = objc_msgSend_isEqualToString_(v65, v112, v70, v113, v114);
        break;
      case 5u:
        v65 = objc_msgSend_dateValue(self, v52, v53, v54, v55);
        v70 = objc_msgSend_dateValue(cellCopy, v66, v67, v68, v69);
        isEqualToString = objc_msgSend_isEqualToDate_(v65, v71, v70, v72, v73);
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_34;
  }

  if (self->_valueType > 7u)
  {
    if (v56 == 8)
    {
      v65 = objc_msgSend_formulaSyntaxError(self, v52, v53, v54, v55);
      v70 = objc_msgSend_formulaSyntaxError(cellCopy, v101, v102, v103, v104);
      isEqualToString = objc_msgSend_isFormulaSyntaxErrorEqual_(v65, v105, v70, v106, v107);
    }

    else
    {
      if (v56 != 9)
      {
        goto LABEL_19;
      }

      if (blockCopy)
      {
        v65 = objc_msgSend_richTextValue(self, v52, v53, v54, v55);
        v79 = objc_msgSend_richTextValue(cellCopy, v75, v76, v77, v78);
        v34 = objc_msgSend_range(v65, v80, v81, v82, v83);
        v85 = v84;
        v89 = objc_msgSend_range(v79, v84, v86, v87, v88);
        LOBYTE(v34) = objc_msgSend_compareRange_otherStorage_otherRange_options_objectComparisonBlock_(v65, v90, v34, v85, v79, v89, v90, 0, blockCopy) == 0;

LABEL_35:
        goto LABEL_19;
      }

      v65 = objc_msgSend_richTextValue(self, v52, v53, v54, v55);
      v70 = objc_msgSend_richTextValue(cellCopy, v115, v116, v117, v118);
      isEqualToString = objc_msgSend_isEqual_(v65, v119, v70, v120, v121);
    }

LABEL_34:
    LOBYTE(v34) = isEqualToString;

    goto LABEL_35;
  }

  if (v56 == 6)
  {
    v96 = objc_msgSend_BOOLValue(self, v52, v53, v54, v55);
    LODWORD(v34) = v96 ^ objc_msgSend_BOOLValue(cellCopy, v97, v98, v99, v100) ^ 1;
    goto LABEL_19;
  }

  if (v56 == 7)
  {
    objc_msgSend_durationTimeIntervalValue(self, v52, v53, v54, v55);
    v58 = v57;
    objc_msgSend_durationTimeIntervalValue(cellCopy, v59, v60, v61, v62);
LABEL_29:
    LOBYTE(v34) = v58 == v63;
  }

LABEL_19:

  return v34;
}

- (BOOL)isEmptyForDataStore
{
  if (self->_valueType)
  {
    return 0;
  }

  if (objc_msgSend_hasCellStyle(self, a2, v2, v3, v4) & 1) != 0 || (objc_msgSend_hasTextStyle(self, v7, v8, v9, v10) & 1) != 0 || (objc_msgSend_hasConditionalStyle(self, v11, v12, v13, v14) & 1) != 0 || (objc_msgSend_hasAnyFormats(self, v15, v16, v17, v18) & 1) != 0 || (objc_msgSend_hasCellSpec(self, v19, v20, v21, v22) & 1) != 0 || (objc_msgSend_hasCommentStorage(self, v23, v24, v25, v26) & 1) != 0 || (objc_msgSend_hasImportWarningSet(self, v27, v28, v29, v30))
  {
    return 0;
  }

  return self->_cellFlags < 2u;
}

- (BOOL)isEmpty
{
  v3 = self->_cellBorder;
  v8 = v3;
  if (v3 && (objc_msgSend_hasContent(v3, v4, v5, v6, v7) & 1) != 0)
  {
    isEmptyForDataStore = 0;
  }

  else
  {
    isEmptyForDataStore = objc_msgSend_isEmptyForDataStore(self, v4, v5, v6, v7);
  }

  return isEmptyForDataStore;
}

- (void)clear
{
  objc_msgSend_clearDataListIDs(self, a2, v2, v3, v4);
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  conditionalStyle = self->_conditionalStyle;
  self->_conditionalStyle = 0;

  commentStorage = self->_commentStorage;
  self->_commentStorage = 0;

  importWarningSet = self->_importWarningSet;
  self->_importWarningSet = 0;

  cellStyle = self->_cellStyle;
  self->_cellStyle = 0;

  textStyle = self->_textStyle;
  self->_textStyle = 0;

  cellBorder = self->_cellBorder;
  self->_cellBorder = 0;

  currentFormat = self->_currentFormat;
  self->_currentFormat = 0;

  numberFormat = self->_numberFormat;
  self->_numberFormat = 0;

  currencyFormat = self->_currencyFormat;
  self->_currencyFormat = 0;

  dateFormat = self->_dateFormat;
  self->_dateFormat = 0;

  durationFormat = self->_durationFormat;
  self->_durationFormat = 0;

  controlFormat = self->_controlFormat;
  self->_controlFormat = 0;

  baseFormat = self->_baseFormat;
  self->_baseFormat = 0;

  customFormat = self->_customFormat;
  self->_customFormat = 0;

  multipleChoiceListFormat = self->_multipleChoiceListFormat;
  self->_multipleChoiceListFormat = 0;

  cellSpec = self->_cellSpec;
  self->_cellSpec = 0;

  *&self->_valueType = 3840;
  self->_cellFlags = 0;
  self->_valueDouble = 0.0;
}

- (unsigned)stringID
{
  if (self->_valueType == 3)
  {
    return self->_valueID;
  }

  else
  {
    return 0;
  }
}

- (void)setStringID:(unsigned int)d
{
  if (self->_valueType == 3)
  {
    self->_valueID = d;
  }
}

- (unsigned)formulaSyntaxErrorID
{
  if (self->_valueType == 8)
  {
    return self->_valueID;
  }

  else
  {
    return 0;
  }
}

- (void)setFormulaSyntaxErrorID:(unsigned int)d
{
  if (self->_valueType == 8)
  {
    self->_valueID = d;
  }
}

- (unsigned)richTextID
{
  if (self->_valueType == 9)
  {
    return self->_valueID;
  }

  else
  {
    return 0;
  }
}

- (void)setRichTextID:(unsigned int)d
{
  if (self->_valueType == 9)
  {
    self->_valueID = d;
  }
}

- (void)clearDataListIDs
{
  self->_valueID = 0;
  *&self->_cellStyleID = 0u;
  *&self->_currentFormatID = 0u;
  *&self->_durationFormatID = 0u;
  *&self->_controlFormatID = 0u;
}

- (void)setValueType:(unsigned __int8)type
{
  typeCopy = type;
  objc_msgSend_clearValue(self, a2, type, v3, v4);
  self->_valueType = typeCopy;
  if ((self->_explicitFormatFlags & 0x10) == 0 && (typeCopy | 8) == 8)
  {

    objc_msgSend_setCurrentFormat_isExplicit_(self, v7, 0, 0, v8);
  }
}

- (double)doubleValue
{
  valueType = self->_valueType;
  v3 = valueType > 7;
  v4 = (1 << valueType) & 0xC4;
  if (v3 || v4 == 0)
  {
    return 0.0;
  }

  else
  {
    return self->_valueDouble;
  }
}

- (void)setDoubleValue:(double)value
{
  if (self->_valueType != 2)
  {
    if (self->_valueType)
    {
      return;
    }

    self->_valueType = 2;
  }

  self->_valueDouble = value;
}

- (void)setBoolValue:(BOOL)value
{
  if (self->_valueType != 6)
  {
    if (self->_valueType)
    {
      return;
    }

    self->_valueType = 6;
  }

  v3 = 0.0;
  if (value)
  {
    v3 = 1.0;
  }

  self->_valueDouble = v3;
}

- (double)durationTimeIntervalValue
{
  result = 0.0;
  if (self->_valueType == 7)
  {
    return self->_valueDouble;
  }

  return result;
}

- (void)setDurationTimeIntervalValue:(double)value
{
  if (self->_valueType != 7)
  {
    if (self->_valueType)
    {
      return;
    }

    self->_valueType = 7;
  }

  self->_valueDouble = value;
}

- (NSDate)dateValue
{
  if (self->_valueType == 5)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDateValue:(id)value
{
  valueCopy = value;
  if (self->_valueType != 5)
  {
    if (self->_valueType)
    {
      goto LABEL_6;
    }

    self->_valueType = 5;
  }

  valueObject = self->_valueObject;
  p_valueObject = &self->_valueObject;
  if (valueObject != valueCopy)
  {
    v8 = valueCopy;
    objc_storeStrong(p_valueObject, value);
    valueCopy = v8;
  }

LABEL_6:
}

- (NSString)stringValue
{
  valueType = self->_valueType;
  if (self->_valueType)
  {
    if (valueType == 9)
    {
      objc_opt_class();
      v4 = TSUDynamicCast();
      v3 = objc_msgSend_string(v4, v5, v6, v7, v8);
    }

    else if (valueType == 3)
    {
      objc_opt_class();
      v3 = TSUDynamicCast();
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = &stru_2834BADA0;
  }

  return v3;
}

- (void)setStringValue:(id)value clearingID:(BOOL)d
{
  dCopy = d;
  valueCopy = value;
  v10 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v6, v7, v8, v9);
  v14 = objc_msgSend_rangeOfCharacterFromSet_(valueCopy, v11, v10, v12, v13);

  objc_msgSend_setStringValue_clearingID_shouldWrap_(self, v15, valueCopy, dCopy, v14 != 0x7FFFFFFFFFFFFFFFLL);
}

- (void)setStringValue:(id)value clearingID:(BOOL)d shouldWrap:(BOOL)wrap
{
  wrapCopy = wrap;
  dCopy = d;
  valueCopy = value;
  valueType = self->_valueType;
  v24 = valueCopy;
  if (valueCopy)
  {
    if (valueType != 3)
    {
      if (self->_valueType)
      {
        goto LABEL_12;
      }

      self->_valueType = 3;
    }

    if (self->_valueObject != valueCopy)
    {
      objc_storeStrong(&self->_valueObject, value);
      self->_cellFlags = self->_cellFlags & 0xFFFE | wrapCopy;
      if (dCopy)
      {
        objc_msgSend_setStringID_(self, v11, 0, v12, v13);
        v18 = objc_msgSend_formatType(self, v14, v15, v16, v17);
        if (v18 != 260 && v18 != 271)
        {
          objc_msgSend_setDefaultFormatForValue(self, v19, v20, v21, v22);
        }
      }
    }
  }

  else if (valueType == 3)
  {
    valueObject = self->_valueObject;
    self->_valueObject = 0;

    self->_valueID = 0;
  }

LABEL_12:
}

- (TSWPStorage)formulaSyntaxError
{
  if (self->_valueType == 8)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFormulaSyntaxError:(id)error clearingID:(BOOL)d
{
  dCopy = d;
  errorCopy = error;
  valueType = self->_valueType;
  if (!errorCopy)
  {
    if (valueType != 8)
    {
      goto LABEL_11;
    }

    valueObject = self->_valueObject;
    self->_valueObject = 0;

    errorCopy = 0;
    goto LABEL_10;
  }

  if (valueType != 8)
  {
    if (self->_valueType)
    {
      goto LABEL_11;
    }

    self->_valueType = 8;
  }

  if (self->_valueObject != errorCopy)
  {
    v10 = errorCopy;
    objc_storeStrong(&self->_valueObject, error);
    errorCopy = v10;
    if (dCopy)
    {
LABEL_10:
      self->_valueID = 0;
    }
  }

LABEL_11:
}

- (TSWPStorage)richTextValue
{
  if (self->_valueType == 9)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRichTextValue:(id)value clearingID:(BOOL)d convertToPlaintextIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  dCopy = d;
  valueCopy = value;
  valueType = self->_valueType;
  v40 = valueCopy;
  if (valueCopy)
  {
    if (valueType != 9 || (objc_msgSend_richTextValue(self, v10, v11, v12, v13), v15 = objc_claimAutoreleasedReturnValue(), v15, v15 != v40))
    {
      if (possibleCopy && objc_msgSend_canBeStoredInAStringValueCell(v40, v10, v11, v12, v13))
      {
        objc_msgSend_setValueType_(self, v10, 3, v12, v13);
        v20 = objc_msgSend_string(v40, v16, v17, v18, v19);
        objc_msgSend_setStringValue_(self, v21, v20, v22, v23);

        v26 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v40, v24, 0, 0, v25);
        objc_msgSend_setTextStyle_(self, v27, v26, v28, v29);
      }

      else
      {
        if (self->_valueType != 9)
        {
          objc_msgSend_setValueType_(self, v10, 9, v12, v13);
        }

        if (self->_valueObject != v40)
        {
          objc_storeStrong(&self->_valueObject, value);
          if (dCopy)
          {
            self->_valueID = 0;
            v34 = objc_msgSend_formatType(self, v30, v31, v32, v33);
            if (v34 != 260 && v34 != 271)
            {
              objc_msgSend_setDefaultFormatForValue(self, v35, v36, v37, v38);
            }
          }
        }
      }
    }
  }

  else if (valueType == 9)
  {
    valueObject = self->_valueObject;
    self->_valueObject = 0;

    self->_valueID = 0;
  }
}

- (void)clearValue
{
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  self->_valueID = 0;
  self->_valueDouble = 0.0;
  self->_valueType = 0;
}

- (BOOL)hasFormulaSyntaxError
{
  if (self->_valueType != 8)
  {
    return 0;
  }

  v10 = objc_msgSend_formulaSyntaxError(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = objc_msgSend_formulaSyntaxErrorID(self, v6, v7, v8, v9) != 0;
  }

  return v11;
}

- (BOOL)hasRichText
{
  v10 = objc_msgSend_richTextValue(self, a2, v2, v3, v4);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = objc_msgSend_richTextID(self, v6, v7, v8, v9) != 0;
  }

  return v11;
}

- (NSString)formulaSyntaxErrorString
{
  if (objc_msgSend_hasFormulaSyntaxError(self, a2, v2, v3, v4) && (objc_msgSend_formulaSyntaxError(self, v6, v7, v8, v9), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v10;
    v16 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v11, v12, v13, v14);
    if (objc_msgSend_length(v15, v17, v18, v19, v20) && (v24 = objc_msgSend_characterAtIndex_(v15, v21, 0, v22, v23), objc_msgSend_isFormulaEqualsCharacter_(TSTFormula, v25, v24, v26, v27)))
    {
      objc_msgSend_localizedStringForKey_value_table_(v16, v21, @"The formula should not begin with an equals sign.", &stru_2834BADA0, @"TSTables");
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v16, v21, @"The formula contains a syntax error.", &stru_2834BADA0, @"TSTables");
    }
    v28 = ;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (NSString)formattedValue
{
  v3 = self->_locale;
  v8 = objc_msgSend_formatType(self, v4, v5, v6, v7);
  v13 = 0;
  valueType = self->_valueType;
  if (valueType > 5)
  {
    switch(valueType)
    {
      case 6u:
        currentFormat = self->_currentFormat;
        v38 = objc_msgSend_BOOLValue(self, v9, v10, v11, v12);
        v41 = objc_msgSend_stringFromBool_locale_(currentFormat, v39, v38, v3, v40);
        break;
      case 7u:
        v45 = self->_currentFormat;
        objc_msgSend_durationTimeIntervalValue(self, v9, v10, v11, v12);
        v41 = objc_msgSend_stringFromDurationTimeInterval_locale_(v45, v46, v3, v47, v48);
        break;
      case 9u:
        v16 = objc_msgSend_richTextValue(self, v9, v10, v11, v12);
        v19 = objc_msgSend_string(v16, v20, v21, v22, v23);
        goto LABEL_17;
      default:
        goto LABEL_22;
    }
  }

  else
  {
    if (valueType == 2)
    {
      v24 = self->_currentFormat;
      objc_msgSend_doubleValue(self, v9, v10, v11, v12);
      v13 = objc_msgSend_stringFromDouble_locale_(v24, v25, v3, v26, v27);
      if (v13)
      {
        goto LABEL_22;
      }

      v16 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v28, 256, v3, v29);
      objc_msgSend_doubleValue(self, v30, v31, v32, v33);
      v19 = objc_msgSend_stringFromDouble_locale_(v16, v34, v3, v35, v36);
      goto LABEL_17;
    }

    if (valueType != 3)
    {
      if (valueType != 5)
      {
        goto LABEL_22;
      }

      if (v8 != 272 && v8 != 261)
      {
        v16 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v9, 261, v3, v12);
        v54 = objc_msgSend_dateValue(self, v50, v51, v52, v53);
        v13 = objc_msgSend_stringFromDate_locale_(v16, v55, v54, v3, v56);

        goto LABEL_18;
      }

      v15 = self->_currentFormat;
      v16 = objc_msgSend_dateValue(self, v9, v10, v11, v12);
      v19 = objc_msgSend_stringFromDate_locale_(v15, v17, v16, v3, v18);
LABEL_17:
      v13 = v19;
LABEL_18:

      goto LABEL_22;
    }

    if (v8 == 271)
    {
      v42 = self->_currentFormat;
      v16 = objc_msgSend_stringValue(self, v9, v10, v11, v12);
      v19 = objc_msgSend_stringFromString_locale_(v42, v43, v16, v3, v44);
      goto LABEL_17;
    }

    v41 = objc_msgSend_stringValue(self, v9, v10, v11, v12);
  }

  v13 = v41;
LABEL_22:

  return v13;
}

- (NSString)stringForEditing
{
  v3 = self->_currentFormat;
  v8 = objc_msgSend_formatType(v3, v4, v5, v6, v7);
  valueType = self->_valueType;
  if (valueType > 4)
  {
    if (valueType == 5)
    {
      v17 = objc_msgSend_dateValue(self, v9, v10, v11, v12);
      v18 = TSUShortestCompleteDateTimeFormat();
      v19 = TSUDateFormatterStringFromDateWithFormat();
      goto LABEL_15;
    }

    if (valueType == 7)
    {
      v17 = objc_msgSend_asDurationFormat(v3, v9, v10, v11, v12);
      if (!v17)
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTCell_PreBNC stringForEditing]", v30, v31);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v35, v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 1032, 0, "invalid nil value for '%{public}s'", "durationFormat");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
      }

      IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v28, v29, v30, v31);
      if ((IsExplicit & 1) == 0 && (objc_msgSend_useAutomaticUnits(v17, v43, v44, v45, v46) & 1) == 0)
      {
        v48 = objc_alloc(MEMORY[0x277D80678]);
        v53 = objc_msgSend_durationUnitSmallest(v17, v49, v50, v51, v52);
        v58 = objc_msgSend_durationUnitLargest(v17, v54, v55, v56, v57);
        v63 = objc_msgSend_durationStyle(v17, v59, v60, v61, v62);
        v65 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v48, v64, 1, v53, v58, v63);

        v17 = v65;
      }

      objc_msgSend_durationTimeIntervalValue(self, v43, v44, v45, v46);
      v27 = objc_msgSend_stringFromDurationTimeInterval_locale_showPrecision_(v17, v66, self->_locale, IsExplicit, v67);
LABEL_27:
      v16 = v27;
      goto LABEL_28;
    }

    if (valueType != 8)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_29;
  }

  v14 = v8;
  if (!self->_valueType)
  {
    if (v8 == 258)
    {
      v15 = objc_msgSend_percentSymbol(self->_locale, v9, v10, v11, v12);
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (valueType != 2)
  {
    if (valueType == 3)
    {
      v15 = objc_msgSend_stringValue(self, v9, v10, v11, v12);
LABEL_12:
      v16 = v15;
      goto LABEL_29;
    }

LABEL_9:
    v15 = objc_msgSend_formattedValue(self, v9, v10, v11, v12);
    goto LABEL_12;
  }

  if (v8 > 268)
  {
    if ((v8 - 270) >= 3 && v8 != 269 && v8 != 274)
    {
      goto LABEL_9;
    }

    v17 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v9, 256, self->_locale, v12);
    objc_msgSend_doubleValue(self, v20, v21, v22, v23);
    v27 = objc_msgSend_stringFromDouble_locale_(v17, v24, self->_locale, v25, v26);
    goto LABEL_27;
  }

  if (v8 > 257)
  {
    if (v8 != 258)
    {
      if (v8 != 259)
      {
        goto LABEL_9;
      }

      v17 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v9, 259, self->_locale, v12);
      objc_msgSend_doubleValue(self, v88, v89, v90, v91);
      v27 = objc_msgSend_stringFromDouble_locale_(v17, v92, self->_locale, v93, v94);
      goto LABEL_27;
    }
  }

  else if (v8 != 256)
  {
    if (v8 != 257)
    {
      goto LABEL_9;
    }

    v17 = objc_msgSend_asCurrencyFormat(v3, v9, v10, v11, v12);
    v69 = objc_alloc(MEMORY[0x277D80640]);
    v74 = objc_msgSend_showThousandsSeparator(v17, v70, v71, v72, v73);
    v79 = objc_msgSend_currencyCode(v17, v75, v76, v77, v78);
    v18 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v69, v80, 253, 0, v74, 0, v79);

    objc_msgSend_doubleValue(self, v81, v82, v83, v84);
    v19 = objc_msgSend_stringFromDouble_locale_(v18, v85, self->_locale, v86, v87);
    goto LABEL_15;
  }

  v17 = objc_msgSend_asNumberFormat(v3, v9, v10, v11, v12);
  v95 = objc_alloc(MEMORY[0x277D806A0]);
  v100 = objc_msgSend_showThousandsSeparator(v17, v96, v97, v98, v99);
  v18 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v95, v101, v14, 253, 0, v100);
  objc_msgSend_doubleValue(self, v102, v103, v104, v105);
  v19 = objc_msgSend_stringFromDouble_locale_(v18, v106, self->_locale, v107, v108);
LABEL_15:
  v16 = v19;

LABEL_28:
LABEL_29:

  return v16;
}

- (NSString)stringForUnderlyingValue
{
  if (self->_valueType)
  {
    if (self->_valueType == 2 && (objc_msgSend_formatType(self, a2, v2, v3, v4) | 4) == 0x106)
    {
      v6 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, 256, self->_locale, v4);
      objc_msgSend_doubleValue(self, v7, v8, v9, v10);
      v14 = objc_msgSend_stringFromDouble_locale_(v6, v11, self->_locale, v12, v13);
    }

    else
    {
      v14 = objc_msgSend_stringForEditing(self, a2, v2, v3, v4);
    }
  }

  else
  {
    v14 = &stru_2834BADA0;
  }

  return v14;
}

- (TSWPStorage)richTextStorageForLayout
{
  if (self->_valueType == 9)
  {
    v111 = objc_msgSend_richTextValue(self, a2, v2, v3, v4);
    if (objc_msgSend_formatType(self, v6, v7, v8, v9) == 271)
    {
      objc_opt_class();
      v14 = TSUDynamicCast();
      v19 = objc_msgSend_defaultCustomFormatData(v14, v15, v16, v17, v18);
      v24 = objc_msgSend_formatString(v19, v20, v21, v22, v23);
      v28 = objc_msgSend_storageByApplyingCustomFormat_(v111, v25, v24, v26, v27);
    }

    else
    {
      v28 = v111;
    }

    conditionalStyleAppliedRule = self->_conditionalStyleAppliedRule;
    hasConditionalStyle = objc_msgSend_hasConditionalStyle(self, v10, v11, v12, v13);
    if (conditionalStyleAppliedRule == 15)
    {
      v36 = 0;
    }

    else
    {
      v36 = hasConditionalStyle;
    }

    if (v36 == 1)
    {
      v37 = objc_msgSend_context(v28, v32, v33, v34, v35);
      v29 = objc_msgSend_copyWithContext_(v28, v38, v37, v39, v40);

      v41 = self->_conditionalStyle;
      v45 = objc_msgSend_ruleAtIndex_(v41, v42, conditionalStyleAppliedRule, v43, v44);
      v50 = objc_msgSend_textStyle(v45, v46, v47, v48, v49);

      if (v50)
      {
        v112 = v28;
        v59 = objc_msgSend_propertyMap(v50, v51, v52, v53, v54);
        v60 = 0;
        v115 = 0;
        v116 = 0;
        while (v60 < objc_msgSend_length(v29, v55, v56, v57, v58))
        {
          v65 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v29, v61, v60, &v115, v64);
          v70 = objc_msgSend_copyPropertyMap(v65, v66, v67, v68, v69);
          objc_msgSend_addValuesFromPropertyMap_(v70, v71, v59, v72, v73);
          v74 = objc_alloc(MEMORY[0x277D80EC8]);
          v79 = objc_msgSend_context(v50, v75, v76, v77, v78);
          isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v74, v80, v79, 0, v70, 0);

          if (isVariation)
          {
            objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v29, v82, isVariation, v115, v116, 0);
          }

          v60 = v116 + v115;
        }

        if (objc_msgSend_characterStyleAttributeCount(v29, v61, v62, v63, v64))
        {
          v89 = objc_msgSend_characterCount(v29, v83, v84, v85, v86);
          if (v89)
          {
            v90 = 0;
            do
            {
              v113 = v90;
              v114 = v89 - v90;
              v91 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v29, v87, v90, &v113, v88);
              v96 = v91;
              if (v91)
              {
                v97 = objc_msgSend_copyPropertyMap(v91, v92, v93, v94, v95);
                objc_msgSend_addValuesFromPropertyMap_(v97, v98, v59, v99, v100);
                v101 = objc_alloc(MEMORY[0x277D80DB0]);
                v106 = objc_msgSend_context(v50, v102, v103, v104, v105);
                v108 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v101, v107, v106, 0, v97, 0);

                if (v108)
                {
                  objc_msgSend_setCharacterStyle_range_undoTransaction_(v29, v109, v108, v113, v114, 0);
                }
              }

              v90 += v114;
            }

            while (v90 < v89);
          }
        }

        v28 = v112;
      }
    }

    else
    {
      v29 = v28;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)bakeFormulaToValue
{
  objc_msgSend_setFormula_(self, a2, 0, v2, v3);
  if (self->_valueType == 8)
  {
    objc_msgSend_setFormulaSyntaxError_(self, v5, 0, v6, v7);
    self->_valueType = 0;
  }
}

- (BOOL)dataIsReplaceable
{
  v6 = objc_msgSend_formatType(self, a2, v2, v3, v4);
  if (objc_msgSend_hasFormula(self, v7, v8, v9, v10))
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v16 = objc_msgSend_interactionType(self, v11, v12, v13, v14);
    LOBYTE(v15) = 0;
    if (v16 != 7 && v6 != 267)
    {
      valueType = self->_valueType;
      v18 = valueType > 9;
      v15 = 0x2ECu >> valueType;
      if (v18)
      {
        LOBYTE(v15) = 0;
      }
    }
  }

  return v15 & 1;
}

- (BOOL)hasEqualValueToCell:(id)cell
{
  cellCopy = cell;
  v9 = cellCopy;
  if (!cellCopy || (valueType = self->_valueType, valueType != objc_msgSend_valueType(cellCopy, v5, v6, v7, v8)))
  {
    isEqualToString = 0;
    goto LABEL_9;
  }

  v15 = self->_valueType;
  isEqualToString = 1;
  if (v15 > 5)
  {
    if (v15 - 6 >= 2)
    {
      if (v15 == 8)
      {
        v17 = objc_msgSend_formulaSyntaxError(self, v11, v12, v13, v14);
        v22 = objc_msgSend_stringWithFormulaPlainText(v17, v35, v36, v37, v38);
        v43 = objc_msgSend_formulaSyntaxError(v9, v39, v40, v41, v42);
        v48 = objc_msgSend_stringWithFormulaPlainText(v43, v44, v45, v46, v47);
        isEqualToString = objc_msgSend_isEqualToString_(v22, v49, v48, v50, v51);

LABEL_18:
        goto LABEL_9;
      }

      if (v15 == 9)
      {
        v17 = objc_msgSend_richTextValue(self, v11, v12, v13, v14);
        v22 = objc_msgSend_richTextValue(v9, v18, v19, v20, v21);
        isEqual = objc_msgSend_isEqual_(v17, v23, v22, v24, v25);
LABEL_17:
        isEqualToString = isEqual;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

LABEL_14:
    isEqualToString = self->_valueDouble == v9[1];
    goto LABEL_9;
  }

  switch(v15)
  {
    case 2u:
      goto LABEL_14;
    case 3u:
      v17 = objc_msgSend_stringValue(self, v11, v12, v13, v14);
      v22 = objc_msgSend_stringValue(v9, v52, v53, v54, v55);
      isEqual = objc_msgSend_isEqualToString_(v17, v56, v22, v57, v58);
      goto LABEL_17;
    case 5u:
      v17 = objc_msgSend_dateValue(self, v11, v12, v13, v14);
      v22 = objc_msgSend_dateValue(v9, v28, v29, v30, v31);
      isEqual = objc_msgSend_isEqualToDate_(v17, v32, v22, v33, v34);
      goto LABEL_17;
  }

LABEL_9:

  return isEqualToString;
}

- (void)setCellStyle:(id)style clearingID:(BOOL)d
{
  dCopy = d;
  styleCopy = style;
  if (!styleCopy)
  {
    goto LABEL_5;
  }

  v24 = styleCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCell_PreBNC setCellStyle:clearingID:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v14, v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v16, 1262, 0, "expected cell style got %{public}@", v18);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v20, v21, v22, v23);
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v24;
LABEL_6:
  if (self->_cellStyle != v10)
  {
    v25 = v10;
    objc_storeStrong(&self->_cellStyle, v10);
    v10 = v25;
    if (!v25 || dCopy)
    {
      self->_cellStyleID = 0;
    }
  }
}

- (void)setTextStyle:(id)style clearingID:(BOOL)d
{
  dCopy = d;
  styleCopy = style;
  if (!styleCopy)
  {
    goto LABEL_5;
  }

  v24 = styleCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCell_PreBNC setTextStyle:clearingID:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v14, v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v16, 1284, 0, "expected cell style got %{public}@", v18);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v20, v21, v22, v23);
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v24;
LABEL_6:
  if (self->_textStyle != v10)
  {
    v25 = v10;
    objc_storeStrong(&self->_textStyle, v10);
    v10 = v25;
    if (!v25 || dCopy)
    {
      self->_textStyleID = 0;
    }
  }
}

- (TSWPParagraphStyle)effectiveTextStyle
{
  if (self->_valueType == 9)
  {
    v5 = objc_msgSend_richTextValue(self, a2, v2, v3, v4);
    v8 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v5, v6, 0, 0, v7);
  }

  else
  {
    v8 = self->_textStyle;
  }

  return v8;
}

- (void)setConditionalStyle:(id)style clearingID:(BOOL)d
{
  dCopy = d;
  styleCopy = style;
  if (!styleCopy)
  {
    goto LABEL_5;
  }

  v24 = styleCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCell_PreBNC setConditionalStyle:clearingID:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v14, v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v16, 1312, 0, "expected conditional style got %{public}@", v18);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v20, v21, v22, v23);
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v24;
LABEL_6:
  if (self->_conditionalStyle != v10)
  {
    v25 = v10;
    objc_storeStrong(&self->_conditionalStyle, v10);
    v10 = v25;
    if (!v25 || dCopy)
    {
      self->_conditionalStyleID = 0;
    }
  }
}

- (void)copyJustStrokesToCell:(id)cell
{
  cellCopy = cell;
  v8 = objc_msgSend_copy(self->_cellBorder, v4, v5, v6, v7);
  objc_msgSend_setCellBorder_(cellCopy, v9, v8, v10, v11);
}

- (void)copyJustStyleAndStrokesToCell:(id)cell
{
  cellCopy = cell;
  objc_msgSend_setCellFlags_(cellCopy, v4, self->_cellFlags & 0x8F0, v5, v6);
  objc_msgSend_setCellStyle_(cellCopy, v7, self->_cellStyle, v8, v9);
  objc_msgSend_setCellStyleID_(cellCopy, v10, self->_cellStyleID, v11, v12);
  objc_msgSend_setTextStyle_(cellCopy, v13, self->_textStyle, v14, v15);
  objc_msgSend_setTextStyleID_(cellCopy, v16, self->_textStyleID, v17, v18);
  objc_msgSend_setConditionalStyle_clearingID_(cellCopy, v19, self->_conditionalStyle, 0, v20);
  objc_msgSend_setConditionalStyleID_(cellCopy, v21, self->_conditionalStyleID, v22, v23);
  objc_msgSend_setConditionalStyleAppliedRule_(cellCopy, v24, self->_conditionalStyleAppliedRule, v25, v26);
  objc_msgSend_copyJustStrokesToCell_(self, v27, cellCopy, v28, v29);
}

- (void)clearStrokes
{
  cellBorder = self->_cellBorder;
  self->_cellBorder = 0;
}

- (int)writingDirection
{
  if (self->_valueType == 9)
  {
    v5 = objc_msgSend_richTextValue(self, a2, v2, v3, v4);
    v9 = objc_msgSend_writingDirectionForParagraphAtParIndex_(v5, v6, 0, v7, v8);
  }

  else
  {
    v10 = self->_textStyle;
    v5 = v10;
    if (!v10)
    {
      v14 = -1;
      goto LABEL_6;
    }

    v9 = objc_msgSend_intValueForProperty_(v10, v11, 44, v12, v13);
  }

  v14 = v9;
LABEL_6:

  return v14;
}

- (TSDFill)cellFill
{
  v4 = objc_msgSend_valueForProperty_(self->_cellStyle, a2, 898, v2, v3);

  return v4;
}

- (id)cellFillComparedToDefault:(id)default suppressCS:(BOOL)s isDefault:(BOOL *)isDefault
{
  defaultCopy = default;
  if (!s)
  {
    v13 = objc_msgSend_hasConditionalStyle(self, v8, v9, v10, v11) ^ 1;
    if (!self)
    {
      LOBYTE(v13) = 1;
    }

    if ((v13 & 1) == 0 && self->_conditionalStyleAppliedRule != 15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_msgSend_ruleAtIndex_(self->_conditionalStyle, v8, self->_conditionalStyleAppliedRule, v10, v11);
        v19 = objc_msgSend_cellStyle(v14, v15, v16, v17, v18);

        if (objc_msgSend_overridesProperty_(v19, v20, 898, v21, v22))
        {
          v26 = objc_msgSend_valueForProperty_(v19, v23, 898, v24, v25);

          if (v26)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }
  }

  v26 = objc_msgSend_cellFill(self, v8, v9, v10, v11);
  if (!v26)
  {
LABEL_13:
    v27 = defaultCopy;
    if (!isDefault)
    {
      goto LABEL_18;
    }

    v28 = 1;
    goto LABEL_17;
  }

LABEL_12:
  if (objc_msgSend_isEqual_(v26, v8, defaultCopy, v10, v11))
  {
    goto LABEL_13;
  }

  v29 = v26;
  v26 = v29;
  if (isDefault)
  {
    v28 = 0;
    v27 = v29;
LABEL_17:
    *isDefault = v28;
    goto LABEL_18;
  }

  v27 = v29;
LABEL_18:

  return v27;
}

- (unsigned)interactionType
{
  cellSpec = self->_cellSpec;
  if (cellSpec)
  {
    LODWORD(cellSpec) = objc_msgSend_interactionType(cellSpec, a2, v2, v3, v4);
  }

  return cellSpec;
}

- (TSCEFormulaObject)formula
{
  v5 = objc_msgSend_asFormulaSpec(self->_cellSpec, a2, v2, v3, v4);
  v10 = objc_msgSend_formulaObject(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setCellSpec:(id)spec clearingID:(BOOL)d
{
  dCopy = d;
  specCopy = spec;
  objc_msgSend_p_setFormatFlags_explicit_(self, v7, 0x8000, 0, v8);
  if (!specCopy || !objc_msgSend_interactionType(specCopy, specCopy, v9, v10, v11))
  {
    cellSpec = self->_cellSpec;
    self->_cellSpec = 0;

LABEL_7:
    self->_formulaID = 0;
    goto LABEL_8;
  }

  if ((objc_msgSend_isEqual_(self->_cellSpec, specCopy, specCopy, v12, v13) & 1) == 0)
  {
    objc_storeStrong(&self->_cellSpec, spec);
    if (dCopy)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)setCellSpecRepairingFormats:(id)formats
{
  formatsCopy = formats;
  objc_msgSend_setCellSpec_clearingID_(self, v4, formatsCopy, 1, v5);
  v10 = objc_msgSend_formatType(self, v6, v7, v8, v9);
  if ((v10 - 264) >= 2)
  {
    if (v10 == 266)
    {
      objc_msgSend_doubleValue(self, v11, v12, v13, v14);
      objc_msgSend_applyPopupChoiceIndex_(self, v33, v32, v34, v35);
    }
  }

  else
  {
    v15 = objc_msgSend_asRangeControlSpec(formatsCopy, v11, v12, v13, v14);
    v20 = objc_msgSend_legacyDisplayFormatType(v15, v16, v17, v18, v19);

    v27 = objc_msgSend_spareFormatOfType_allowMismatchedSpare_(self, v21, v20, 1, v22);
    if (!v27)
    {
      v28 = MEMORY[0x277D80680];
      v29 = objc_msgSend_locale(self, v23, v24, v25, v26);
      v27 = objc_msgSend_defaultFormatWithFormatType_locale_(v28, v30, v20, v29, v31);
    }

    objc_msgSend_setCurrentFormat_isExplicit_(self, v23, v27, 1, v26);
  }

  objc_msgSend_clearSpareFormatOfType_(self, v11, 264, v13, v14);
  objc_msgSend_clearSpareFormatOfType_(self, v36, 266, v37, v38);
}

- (void)setFormula:(id)formula clearingID:(BOOL)d
{
  dCopy = d;
  formulaCopy = formula;
  if (formulaCopy)
  {
    v10 = objc_msgSend_cellSpec(self, v6, v7, v8, v9);
    v15 = objc_msgSend_asFormulaSpec(v10, v11, v12, v13, v14);

    if (v15)
    {
      v20 = objc_msgSend_locale(self, v16, v17, v18, v19);
      v23 = objc_msgSend_cellSpecReplacingFormulaObject_locale_(v15, v21, formulaCopy, v20, v22);
    }

    else
    {
      v27 = [TSTCellFormulaSpec alloc];
      v20 = objc_msgSend_locale(self, v28, v29, v30, v31);
      v23 = objc_msgSend_initWithFormulaObject_locale_(v27, v32, formulaCopy, v20, v33);
    }

    v34 = v23;

    objc_msgSend_setCellSpec_clearingID_(self, v35, v34, dCopy, v36);
  }

  else
  {
    v24 = objc_msgSend_asFormulaSpec(self->_cellSpec, v6, v7, v8, v9);

    if (v24)
    {
      objc_msgSend_setCellSpec_clearingID_(self, v25, 0, dCopy, v26);
    }
  }
}

- (TSTCellSpec)cellSpecForDiff
{
  cellSpec = self->_cellSpec;
  if (cellSpec)
  {
    v6 = cellSpec;
  }

  else
  {
    v6 = objc_msgSend_defaultCellSpec(TSTCellSpec, a2, v2, v3, v4);
  }

  return v6;
}

- (void)applyPopupChoiceIndex:(unint64_t)index
{
  v7 = objc_msgSend_cellSpec(self, a2, index, v3, v4);
  v12 = objc_msgSend_asChooserControlSpec(v7, v8, v9, v10, v11);

  if (v12)
  {
    v17 = objc_msgSend_popupModel(v12, v13, v14, v15, v16);
    v22 = objc_msgSend_choices(v17, v18, v19, v20, v21);
    v27 = objc_msgSend_count(v22, v23, v24, v25, v26);

    if (v27 > index)
    {
      objc_msgSend_clearValue(self, v28, v29, v30, v31);
      v35 = objc_msgSend_valueForIndex_(v12, v32, index, v33, v34);
      v40 = objc_msgSend_tsceValue(v35, v36, v37, v38, v39);
      v49 = objc_msgSend_nativeType(v40, v41, v42, v43, v44);
      if (v49 <= 2)
      {
        if (!v49)
        {
          objc_msgSend_setCurrentFormat_isExplicit_(self, v45, 0, 0, v48);
          goto LABEL_17;
        }

        if (v49 == 2)
        {
          v54 = objc_msgSend_BOOLean(v40, v45, v46, v47, v48);
          objc_msgSend_setBoolValue_(self, v55, v54, v56, v57);
        }
      }

      else
      {
        switch(v49)
        {
          case 3u:
            v50 = objc_msgSend_date(v40, v45, v46, v47, v48);
            objc_msgSend_setDateValue_(self, v58, v50, v59, v60);
            goto LABEL_15;
          case 5u:
            v50 = objc_msgSend_number(v40, v45, v46, v47, v48);
            if (objc_msgSend_hasUnits(v50, v61, v62, v63, v64) && !objc_msgSend_dimension(v50, v65, v66, v67, v68))
            {
              objc_msgSend_rawTimeIntervalValue(v50, v65, v66, v67, v68);
              objc_msgSend_setDurationTimeIntervalValue_(self, v77, v78, v79, v80);
            }

            else
            {
              v81._decimal.w[0] = objc_msgSend_decimalRepresentation(v50, v65, v66, v67, v68);
              v81._decimal.w[1] = v69;
              TSUDecimal::doubleValue(&v81);
              objc_msgSend_setDoubleValue_(self, v70, v71, v72, v73);
            }

            goto LABEL_15;
          case 7u:
            v50 = objc_msgSend_asRawString(v40, v45, v46, v47, v48);
            objc_msgSend_setStringValue_(self, v51, v50, v52, v53);
LABEL_15:

            break;
        }
      }

      v74 = objc_msgSend_format(v35, v45, v46, v47, v48);
      objc_msgSend_setCurrentFormat_isExplicit_(self, v75, v74, 1, v76);

LABEL_17:
    }
  }
}

- (BOOL)hasFormulaEvaluationError
{
  hasFormulaAnyError = objc_msgSend_hasFormulaAnyError(self, a2, v2, v3, v4);
  if (hasFormulaAnyError)
  {
    LOBYTE(hasFormulaAnyError) = objc_msgSend_hasFormulaSyntaxError(self, v7, v8, v9, v10) ^ 1;
  }

  return hasFormulaAnyError;
}

- (unsigned)formatType
{
  v2 = self->_currentFormat;
  v7 = v2;
  if (v2)
  {
    v8 = objc_msgSend_formatType(v2, v3, v4, v5, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setFormat:(id)format shouldSetExplFlags:(BOOL)flags isExplicit:(BOOL)explicit makeCurrent:(BOOL)current clearingID:(BOOL)d
{
  dCopy = d;
  currentCopy = current;
  LODWORD(v9) = explicit;
  flagsCopy = flags;
  formatCopy = format;
  v17 = formatCopy;
  if (formatCopy)
  {
    v9 = v9;
  }

  else
  {
    v9 = 0;
  }

  if (formatCopy)
  {
    v18 = dCopy;
  }

  else
  {
    v18 = 1;
  }

  if (formatCopy)
  {
    v19 = flagsCopy;
  }

  else
  {
    v19 = 1;
  }

  obj = objc_msgSend_copy(formatCopy, v13, v14, v15, v16);

  if (currentCopy)
  {
    objc_storeStrong(&self->_currentFormat, obj);
    if (v18)
    {
      self->_currentFormatID = 0;
    }
  }

  v24 = objc_msgSend_formatType(obj, v20, v21, v22, v23);
  if (v24 <= 265)
  {
    if (v24 > 260)
    {
      if ((v24 - 264) < 2)
      {
        objc_storeStrong(&self->_controlFormat, obj);
        if ((v18 & 1) == 0)
        {
          goto LABEL_43;
        }

        v29 = 84;
        goto LABEL_42;
      }

      if (v24 == 261)
      {
        objc_storeStrong(&self->_dateFormat, obj);
        if ((v18 & 1) == 0)
        {
          goto LABEL_43;
        }

        v29 = 68;
        goto LABEL_42;
      }

      if (v24 != 262)
      {
        goto LABEL_43;
      }
    }

    else if ((v24 - 258) >= 2 && v24 != 256)
    {
      if (v24 == 257)
      {
        objc_storeStrong(&self->_currencyFormat, obj);
        if (v18)
        {
          v29 = 64;
LABEL_42:
          *(&self->super.isa + v29) = 0;
          goto LABEL_43;
        }
      }

      goto LABEL_43;
    }

    objc_storeStrong(&self->_numberFormat, obj);
    if ((v18 & 1) == 0)
    {
      goto LABEL_43;
    }

    v29 = 60;
    goto LABEL_42;
  }

  if (v24 > 269)
  {
    if ((v24 - 270) < 3)
    {
      objc_storeStrong(&self->_customFormat, obj);
      if (v18)
      {
        v29 = 76;
        goto LABEL_42;
      }
    }
  }

  else
  {
    switch(v24)
    {
      case 266:
        objc_storeStrong(&self->_multipleChoiceListFormat, obj);
        if (!v18)
        {
          break;
        }

        v29 = 88;
        goto LABEL_42;
      case 268:
        objc_storeStrong(&self->_durationFormat, obj);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v29 = 72;
        goto LABEL_42;
      case 269:
        objc_storeStrong(&self->_baseFormat, obj);
        if (v18)
        {
          v29 = 80;
          goto LABEL_42;
        }

        break;
    }
  }

LABEL_43:
  if (v19)
  {
    v30 = objc_msgSend_formatType(obj, v25, v26, v27, v28);
    objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v31, v9, v30, 1);
  }
}

- (void)setCurrentFormat:(id)format flags:(unsigned __int16)flags
{
  flagsCopy = flags;
  formatCopy = format;
  v10 = objc_msgSend_formatType(formatCopy, v6, v7, v8, v9);
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v11, formatCopy, 0, 0, 1, 1);
  if ((flagsCopy & 0x10) != 0)
  {
    objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v12, (flagsCopy >> 4) & 1, v10, 1);
    goto LABEL_20;
  }

  if (!objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v12, v10, v13, v14))
  {
    v21 = 0;
    if (v10 > 270)
    {
      if (v10 != 271)
      {
        if (v10 == 272)
        {
          goto LABEL_17;
        }

LABEL_19:
        objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v15, (flagsCopy >> 4) & 1, v10, v21);
        goto LABEL_20;
      }
    }

    else if (v10 != 260)
    {
      if (v10 != 261)
      {
        goto LABEL_19;
      }

LABEL_17:
      objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v15, (flagsCopy >> 4) & 1, v10, (v10 != 272) ^ ((flagsCopy & 0x2000) >> 13));
      goto LABEL_20;
    }

    v21 = (v10 != 271) ^ ((flagsCopy & 0x4000) >> 14);
    goto LABEL_19;
  }

  v16 = (flagsCopy >> 11) & 3;
  v17 = v16 == 1;
  v18 = v16 == 2;
  v19 = v16 == 3;
  v20 = v16 == 0;
  if (v10 == 270)
  {
    v20 = v19;
  }

  if (v10 == 269)
  {
    v20 = v18;
  }

  if (v10 == 257)
  {
    objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v15, (flagsCopy >> 4) & 1, v10, v17);
  }

  else
  {
    objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v15, (flagsCopy >> 4) & 1, v10, v20);
  }

LABEL_20:
}

- (void)p_setFormatForFormulaResult:(id)result propagation:(BOOL)propagation
{
  propagationCopy = propagation;
  resultCopy = result;
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v6, resultCopy, 0, 0, 1, 1);
  v11 = objc_msgSend_formatType(resultCopy, v7, v8, v9, v10);
  objc_msgSend_p_setFormatExplicit_fromFormatType_setMostRecentlySet_(self, v12, 0, v11, 0);
  objc_msgSend_p_setFormatFlags_explicit_(self, v13, 0x8000, propagationCopy, v14);
}

- (void)clearSpareFormatOfType:(unsigned int)type
{
  if (type <= 265)
  {
    v4 = -2;
    v5 = 144;
    v6 = 60;
    if (type > 260)
    {
      if (type - 264 < 2)
      {
        v4 = -65;
        v5 = 192;
        v6 = 84;
      }

      else if (type == 261)
      {
        v4 = -9;
        v5 = 160;
        v6 = 68;
      }

      else if (type != 262)
      {
        return;
      }
    }

    else if (type - 258 >= 2 && type != 256)
    {
      if (type != 257)
      {
        return;
      }

      self->_currencyFormatID = 0;
      currencyFormat = self->_currencyFormat;
      self->_currencyFormat = 0;

      p_explicitFormatFlags = &self->_explicitFormatFlags;
      self->_explicitFormatFlags &= ~2u;
      if (objc_msgSend_p_mostRecentlySetNumberFormatType(self, v9, v10, v11, v12) != 1)
      {
        return;
      }

      goto LABEL_27;
    }

LABEL_29:
    *(&self->super.isa + v6) = 0;
    v28 = *(&self->super.isa + v5);
    *(&self->super.isa + v5) = 0;

    p_explicitFormatFlags = &self->_explicitFormatFlags;
    goto LABEL_30;
  }

  if (type > 269)
  {
    if (type != 270)
    {
      if (type == 271)
      {
        self->_customFormatID = 0;
        customFormat = self->_customFormat;
        self->_customFormat = 0;

        p_explicitFormatFlags = &self->_explicitFormatFlags;
        self->_explicitFormatFlags &= ~0x100u;
        if (objc_msgSend_p_mostRecentlySetTextFormatType(self, v30, v31, v32, v33) != 1)
        {
          return;
        }

        v4 = -16385;
      }

      else
      {
        if (type != 272)
        {
          return;
        }

        self->_customFormatID = 0;
        v18 = self->_customFormat;
        self->_customFormat = 0;

        p_explicitFormatFlags = &self->_explicitFormatFlags;
        self->_explicitFormatFlags &= ~0x100u;
        if (objc_msgSend_p_mostRecentlySetDateFormatType(self, v19, v20, v21, v22) != 1)
        {
          return;
        }

        v4 = -8193;
      }

LABEL_30:
      *p_explicitFormatFlags &= v4;
      return;
    }

    self->_customFormatID = 0;
    v23 = self->_customFormat;
    self->_customFormat = 0;

    p_explicitFormatFlags = &self->_explicitFormatFlags;
    self->_explicitFormatFlags &= ~0x100u;
    if (objc_msgSend_p_mostRecentlySetNumberFormatType(self, v24, v25, v26, v27) != 3)
    {
      return;
    }

LABEL_27:
    v4 = -6145;
    goto LABEL_30;
  }

  switch(type)
  {
    case 0x10Au:
      v4 = -1025;
      v5 = 200;
      v6 = 88;
      goto LABEL_29;
    case 0x10Cu:
      v4 = -5;
      v5 = 168;
      v6 = 72;
      goto LABEL_29;
    case 0x10Du:
      self->_baseFormatID = 0;
      baseFormat = self->_baseFormat;
      self->_baseFormat = 0;

      p_explicitFormatFlags = &self->_explicitFormatFlags;
      self->_explicitFormatFlags &= ~0x200u;
      if (objc_msgSend_p_mostRecentlySetNumberFormatType(self, v14, v15, v16, v17) == 2)
      {
        goto LABEL_27;
      }

      break;
  }
}

- (BOOL)clearNoncurrentImplicitFormats
{
  if ((self->_explicitFormatFlags & 0x10) != 0 || (self->_valueType | 8) != 8)
  {
    v6 = 0;
  }

  else
  {
    objc_msgSend_setCurrentFormat_isExplicit_(self, a2, 0, 0, v4);
    v6 = 1;
  }

  v7 = objc_msgSend_formatType(self->_currentFormat, a2, v2, v3, v4);
  v12 = objc_msgSend_asStepperSliderFormat(self->_currentFormat, v8, v9, v10, v11);

  if (v12)
  {
    v17 = objc_msgSend_asStepperSliderFormat(self->_controlFormat, v13, v14, v15, v16);
    v7 = objc_msgSend_displayFormatType(v17, v18, v19, v20, v21);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_221277104;
  v30[3] = &unk_278462078;
  v30[4] = self;
  v31 = v7;
  v22 = MEMORY[0x223DA1C10](v30);
  v23 = (v22)[2](v22, self->_numberFormat, 1);
  v24 = (v22)[2](v22, self->_currencyFormat, 2);
  v25 = (v22)[2](v22, self->_durationFormat, 4);
  v26 = (v22)[2](v22, self->_dateFormat, 8);
  v27 = (v22)[2](v22, self->_customFormat, 256);
  v28 = (v22)[2](v22, self->_baseFormat, 512) | v27 | v26 | v25 | v24 | v6 | v23;

  return v28 & 1;
}

- (void)clearAllFormats
{
  self->_multipleChoiceListFormatID = 0;
  *&self->_durationFormatID = 0u;
  *&self->_currentFormatID = 0u;
  currentFormat = self->_currentFormat;
  self->_currentFormat = 0;

  numberFormat = self->_numberFormat;
  self->_numberFormat = 0;

  currencyFormat = self->_currencyFormat;
  self->_currencyFormat = 0;

  dateFormat = self->_dateFormat;
  self->_dateFormat = 0;

  durationFormat = self->_durationFormat;
  self->_durationFormat = 0;

  controlFormat = self->_controlFormat;
  self->_controlFormat = 0;

  baseFormat = self->_baseFormat;
  self->_baseFormat = 0;

  customFormat = self->_customFormat;
  self->_customFormat = 0;

  multipleChoiceListFormat = self->_multipleChoiceListFormat;
  self->_multipleChoiceListFormat = 0;

  self->_explicitFormatFlags = 0;
}

- (void)copyAllFormatsToCell:(id)cell
{
  cellCopy = cell;
  v19 = cellCopy;
  if (cellCopy)
  {
    *(cellCopy + 17) = self->_explicitFormatFlags;
    objc_msgSend_p_setFormatFlags_explicit_(cellCopy, v5, 0x8000, 0, v7);
    objc_storeStrong(v19 + 17, self->_currentFormat);
    objc_storeStrong(v19 + 18, self->_numberFormat);
    objc_storeStrong(v19 + 19, self->_currencyFormat);
    objc_storeStrong(v19 + 20, self->_dateFormat);
    objc_storeStrong(v19 + 21, self->_durationFormat);
    objc_storeStrong(v19 + 22, self->_customFormat);
    objc_storeStrong(v19 + 23, self->_baseFormat);
    objc_storeStrong(v19 + 24, self->_controlFormat);
    objc_storeStrong(v19 + 25, self->_multipleChoiceListFormat);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCell_PreBNC copyAllFormatsToCell:]", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_PreBNC.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1925, 0, "invalid nil value for '%{public}s'", "dest");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }
}

- (void)updateCustomFormatFromPaste:(id)paste
{
  pasteCopy = paste;
  v8 = objc_msgSend_formatType(self, v4, v5, v6, v7);
  v13 = v8 == objc_msgSend_formatType(pasteCopy, v9, v10, v11, v12);
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v14, pasteCopy, 0, 0, v13, 1);
}

- (void)p_TSTCellSetMostRecentlySetNumberFormat:(int)format
{
  v10 = objc_msgSend_formatType(self, a2, *&format, v3, v4);
  if (format > 1)
  {
    if (format == 2)
    {
      if (!objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v7, v10, v8, v9) || v10 == 269)
      {
        goto LABEL_18;
      }
    }

    else if (format != 3 || !objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v7, v10, v8, v9) || v10 == 270)
    {
      goto LABEL_18;
    }
  }

  else if (format)
  {
    if (format != 1 || !objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v7, v10, v8, v9) || v10 == 257)
    {
LABEL_18:
      self->_explicitFormatFlags = self->_explicitFormatFlags & 0xE7FF | (format << 11);
    }
  }

  else if (!objc_msgSend_p_TSTCellFormatIsANumberFormatTypeForMostRecentlySet_(TSTCell_PreBNC, v7, v10, v8, v9) || (v10 - 256) <= 6 && ((1 << v10) & 0x4D) != 0)
  {
    goto LABEL_18;
  }
}

- (void)p_TSTCellSetMostRecentlySetDateFormat:(int)format
{
  formatCopy = format;
  if (format == 1)
  {
    if (objc_msgSend_formatType(self, a2, *&format, v3, v4) == 261)
    {
      return;
    }

    goto LABEL_4;
  }

  if (format || objc_msgSend_formatType(self, a2, *&format, v3, v4) != 272)
  {
LABEL_4:
    self->_explicitFormatFlags = self->_explicitFormatFlags & 0xDFFF | (formatCopy << 13);
  }
}

- (void)p_TSTCellSetMostRecentlySetTextFormat:(int)format
{
  formatCopy = format;
  if (format == 1)
  {
    if (objc_msgSend_formatType(self, a2, *&format, v3, v4) == 260)
    {
      return;
    }

    goto LABEL_4;
  }

  if (format || objc_msgSend_formatType(self, a2, *&format, v3, v4) != 271)
  {
LABEL_4:
    self->_explicitFormatFlags = self->_explicitFormatFlags & 0xBFFF | (formatCopy << 14);
  }
}

- (void)p_setFormatFlags:(unsigned __int16)flags explicit:(BOOL)explicit
{
  explicitFormatFlags = self->_explicitFormatFlags;
  v5 = explicitFormatFlags & ~flags;
  v6 = explicitFormatFlags | flags;
  if (!explicit)
  {
    v6 = v5;
  }

  self->_explicitFormatFlags = v6;
}

- (void)p_setFormatExplicit:(BOOL)explicit fromFormatType:(unsigned int)type setMostRecentlySet:(BOOL)set
{
  setCopy = set;
  explicitCopy = explicit;
  if (objc_msgSend_formatType(self, a2, explicit, *&type, set) == type)
  {
    objc_msgSend_p_setFormatFlags_explicit_(self, v9, 16, explicitCopy, v11);
    switch(type)
    {
      case 0x100u:
      case 0x102u:
      case 0x103u:
      case 0x106u:
        goto LABEL_4;
      case 0x101u:
        goto LABEL_12;
      case 0x104u:
        goto LABEL_24;
      case 0x105u:
        goto LABEL_31;
      case 0x107u:
      case 0x10Bu:
      case 0x111u:
        return;
      case 0x108u:
      case 0x109u:
        goto LABEL_6;
      case 0x10Au:
        goto LABEL_17;
      case 0x10Cu:
        goto LABEL_9;
      case 0x10Du:
        goto LABEL_10;
      case 0x10Eu:
      case 0x112u:
        goto LABEL_7;
      case 0x10Fu:
        goto LABEL_26;
      case 0x110u:
        goto LABEL_22;
      default:
        if (type)
        {
          return;
        }

        selfCopy8 = self;
        v17 = 0x8000;
        v18 = 0;
        break;
    }

LABEL_19:

    objc_msgSend_p_setFormatFlags_explicit_(selfCopy8, v9, v17, v18, v11);
  }

  else
  {
    switch(type)
    {
      case 0x100u:
      case 0x102u:
      case 0x103u:
      case 0x106u:
LABEL_4:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 1, explicitCopy, v11);
        if (setCopy)
        {
          selfCopy10 = self;
          v15 = 0;
          break;
        }

        return;
      case 0x101u:
LABEL_12:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 2, explicitCopy, v11);
        if (setCopy)
        {
          selfCopy10 = self;
          v15 = 1;
          break;
        }

        return;
      case 0x104u:
LABEL_24:
        if (setCopy)
        {
          selfCopy11 = self;
          v24 = 0;
          goto LABEL_28;
        }

        return;
      case 0x105u:
LABEL_31:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 8, explicitCopy, v11);
        if (setCopy)
        {
          selfCopy12 = self;
          v22 = 0;
          goto LABEL_33;
        }

        return;
      case 0x108u:
      case 0x109u:
LABEL_6:
        selfCopy8 = self;
        v17 = 64;
        goto LABEL_18;
      case 0x10Au:
LABEL_17:
        selfCopy8 = self;
        v17 = 1024;
        goto LABEL_18;
      case 0x10Cu:
LABEL_9:
        selfCopy8 = self;
        v17 = 4;
LABEL_18:
        v18 = explicitCopy;
        goto LABEL_19;
      case 0x10Du:
LABEL_10:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 512, explicitCopy, v11);
        if (!setCopy)
        {
          return;
        }

        selfCopy10 = self;
        v15 = 2;
        break;
      case 0x10Eu:
      case 0x112u:
LABEL_7:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 256, explicitCopy, v11);
        if (!setCopy)
        {
          return;
        }

        selfCopy10 = self;
        v15 = 3;
        break;
      case 0x10Fu:
LABEL_26:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 256, explicitCopy, v11);
        if (setCopy)
        {
          selfCopy11 = self;
          v24 = 1;
LABEL_28:

          MEMORY[0x2821F9670](selfCopy11, sel_p_TSTCellSetMostRecentlySetTextFormat_, v24, v10, v11);
        }

        return;
      case 0x110u:
LABEL_22:
        objc_msgSend_p_setFormatFlags_explicit_(self, v9, 256, explicitCopy, v11);
        if (setCopy)
        {
          selfCopy12 = self;
          v22 = 1;
LABEL_33:

          MEMORY[0x2821F9670](selfCopy12, sel_p_TSTCellSetMostRecentlySetDateFormat_, v22, v19, v20);
        }

        return;
      default:
        return;
    }

    MEMORY[0x2821F9670](selfCopy10, sel_p_TSTCellSetMostRecentlySetNumberFormat_, v15, v12, v13);
  }
}

- (id)p_spareFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare explicitOnly:(BOOL)only
{
  v7 = 0;
  if (type > 265)
  {
    if (type > 269)
    {
      if (type - 270 >= 3 && type != 274)
      {
LABEL_39:
        if (spare)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      if (!only || (self->_explicitFormatFlags & 0x100) != 0)
      {
        v8 = 176;
        goto LABEL_42;
      }

      goto LABEL_38;
    }

    switch(type)
    {
      case 0x10Au:
        if (only && (self->_explicitFormatFlags & 0x400) == 0)
        {
          goto LABEL_38;
        }

        v8 = 200;
        break;
      case 0x10Cu:
        if (only && (self->_explicitFormatFlags & 4) == 0)
        {
          goto LABEL_38;
        }

        v8 = 168;
        break;
      case 0x10Du:
        if (only && (self->_explicitFormatFlags & 0x200) == 0)
        {
          goto LABEL_38;
        }

        v8 = 184;
        break;
      default:
        goto LABEL_39;
    }
  }

  else
  {
    if (type <= 260)
    {
      if (type - 258 >= 2 && type != 256)
      {
        if (type != 257)
        {
          goto LABEL_39;
        }

        if (!only || (self->_explicitFormatFlags & 2) != 0)
        {
          v8 = 152;
          goto LABEL_42;
        }

        goto LABEL_38;
      }

LABEL_18:
      if (!only || (self->_explicitFormatFlags & 1) != 0)
      {
        v8 = 144;
        goto LABEL_42;
      }

LABEL_38:
      v7 = 0;
      goto LABEL_39;
    }

    if (type - 264 < 2)
    {
      if (only && (self->_explicitFormatFlags & 0x40) == 0)
      {
        goto LABEL_38;
      }

      v8 = 192;
    }

    else
    {
      if (type != 261)
      {
        if (type != 262)
        {
          goto LABEL_39;
        }

        goto LABEL_18;
      }

      if (only && (self->_explicitFormatFlags & 8) == 0)
      {
        goto LABEL_38;
      }

      v8 = 160;
    }
  }

LABEL_42:
  v7 = *(&self->super.isa + v8);
  if (spare)
  {
LABEL_44:
    v9 = v7;
    goto LABEL_46;
  }

LABEL_43:
  if (objc_msgSend_formatType(v7, a2, *&type, spare, only) == type)
  {
    goto LABEL_44;
  }

  v9 = 0;
LABEL_46:

  return v9;
}

- (BOOL)hasFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare
{
  spareCopy = spare;
  v6 = *&type;
  if (objc_msgSend_formatType(self, a2, *&type, spare, v4) == type)
  {
    return 1;
  }

  v10 = objc_msgSend_p_spareFormatOfType_allowMismatchedSpare_explicitOnly_(self, v8, v6, spareCopy, 0);
  v9 = v10 != 0;

  return v9;
}

- (BOOL)hasExplicitFormatOfType:(unsigned int)type allowMismatchedSpare:(BOOL)spare
{
  spareCopy = spare;
  v6 = *&type;
  if (objc_msgSend_formatType(self, a2, *&type, spare, v4) == type && (objc_msgSend_currentFormatIsExplicit(self, v8, v9, v10, v11) & 1) != 0)
  {
    return 1;
  }

  v13 = objc_msgSend_p_spareFormatOfType_allowMismatchedSpare_explicitOnly_(self, v8, v6, spareCopy, 1);
  v12 = v13 != 0;

  return v12;
}

+ (BOOL)formatType:(unsigned int)type sharesASpareSlotWithFormatType:(unsigned int)formatType
{
  if (type == formatType)
  {
    goto LABEL_2;
  }

  if (type - 256 > 0x10)
  {
LABEL_12:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  if (((1 << type) & 0x4D) != 0)
  {
    if (formatType - 256 < 7)
    {
      v4 = 0x4Du >> formatType;
      return v4 & 1;
    }

    goto LABEL_12;
  }

  if (((1 << type) & 0x1C000) != 0)
  {
    if (formatType - 270 >= 3)
    {
      goto LABEL_12;
    }
  }

  else if (((1 << type) & 0x300) == 0 || (formatType & 0xFFFFFFFE) != 0x108)
  {
    goto LABEL_12;
  }

LABEL_2:
  LOBYTE(v4) = 1;
  return v4 & 1;
}

- (NSString)customFormatString
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (v7)
  {
    objc_msgSend_doubleValue(self, v3, v4, v5, v6);
    v12 = objc_msgSend_customFormatDataForValue_(v7, v8, v9, v10, v11);
    v17 = objc_msgSend_formatString(v12, v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)currentFormatUsesAccountingStyle
{
  v6 = objc_msgSend_formatType(self, a2, v2, v3, v4);
  if (v6 == 270)
  {
    v17 = objc_msgSend_asCustomFormatWrapper(self->_currentFormat, v7, v8, v9, v10);
    objc_msgSend_doubleValue(self, v18, v19, v20, v21);
    v26 = objc_msgSend_customFormatDataForValue_(v17, v22, v23, v24, v25);

    v16 = objc_msgSend_useAccountingStyle(v26, v27, v28, v29, v30);
    v11 = v26;
  }

  else
  {
    if (v6 != 257)
    {
      return 0;
    }

    v11 = objc_msgSend_asCurrencyFormat(self->_currentFormat, v7, v8, v9, v10);
    v16 = objc_msgSend_accountingStyle(v11, v12, v13, v14, v15);
  }

  return v16;
}

- (unsigned)currentFormatNegativeStyle
{
  v2 = self->_currentFormat;
  v7 = objc_msgSend_asNumberFormat(v2, v3, v4, v5, v6);

  if (v7)
  {
    v12 = objc_msgSend_asNumberFormat(v2, v8, v9, v10, v11);
    v17 = objc_msgSend_negativeStyle(v12, v13, v14, v15, v16);
  }

  else
  {
    v18 = objc_msgSend_asCurrencyFormat(v2, v8, v9, v10, v11);

    if (!v18)
    {
      v27 = 4;
      goto LABEL_6;
    }

    v12 = objc_msgSend_asCurrencyFormat(v2, v19, v20, v21, v22);
    v17 = objc_msgSend_negativeStyle(v12, v23, v24, v25, v26);
  }

  v27 = v17;

LABEL_6:
  return v27;
}

- (BOOL)isMostRecentlyExplicitPercent
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) == 258)
  {
    return 1;
  }

  if ((objc_msgSend_currentFormatIsExplicit(self, v6, v7, v8, v9) & 1) != 0 || objc_msgSend_p_mostRecentlySetNumberFormatType(self, v11, v12, v13, v14))
  {
    return 0;
  }

  return objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v15, 258, 0, v16);
}

+ (BOOL)mismatchBetweenValueType:(unsigned __int8)type andFormatType:(unsigned int)formatType
{
  if (type > 5)
  {
    if (type == 9)
    {
LABEL_23:
      LOBYTE(v5) = formatType != 271 && formatType != 260;
      return v5 & 1;
    }

    LOBYTE(v5) = formatType != 268;
    v7 = formatType != 263 && formatType != 1;
    if (type != 6)
    {
      v7 = 0;
    }

    if (type != 7)
    {
      LOBYTE(v5) = v7;
    }
  }

  else
  {
    if (type != 2)
    {
      if (type != 3)
      {
        LOBYTE(v5) = formatType != 261 && formatType != 272;
        if (type != 5)
        {
          LOBYTE(v5) = 0;
        }

        return v5 & 1;
      }

      goto LABEL_23;
    }

    v5 = 0x17B0u >> formatType;
    if (formatType - 256 >= 0xF)
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5 & 1;
}

- (BOOL)hasMismatchedFormatAndValue
{
  valueType = self->_valueType;
  v6 = objc_msgSend_formatType(self, a2, v2, v3, v4);

  return MEMORY[0x2821F9670](TSTCell, sel_mismatchBetweenValueType_andFormatType_, valueType, v6, v7);
}

- (void)setDefaultFormatForValue
{
  v4 = self->_valueType - 2;
  if (v4 <= 8 && ((0x1BBu >> v4) & 1) != 0)
  {
    v5 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, dword_2217E0ED8[(self->_valueType - 2)], self->_locale, v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  objc_msgSend_setCurrentFormat_isExplicit_(self, a2, v5, 0, v2);
}

- (void)setCommentStorage:(id)storage clearingID:(BOOL)d
{
  dCopy = d;
  storageCopy = storage;
  if (self->_commentStorage != storageCopy)
  {
    v8 = storageCopy;
    objc_storeStrong(&self->_commentStorage, storage);
    storageCopy = v8;
    if (!v8 || dCopy)
    {
      self->_commentStorageID = 0;
    }
  }
}

- (void)setImportWarningSet:(id)set clearingID:(BOOL)d
{
  dCopy = d;
  setCopy = set;
  if (self->_importWarningSet != setCopy)
  {
    v8 = setCopy;
    objc_storeStrong(&self->_importWarningSet, set);
    setCopy = v8;
    if (!v8 || dCopy)
    {
      self->_importWarningSetID = 0;
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_cellValueTypeDescription(self, v6, v7, v8, v9);
  v15 = objc_msgSend_cellValueDescription(self, v11, v12, v13, v14);
  v19 = objc_msgSend_stringWithFormat_(v3, v16, @"<%@:%p: value type %@ value %@>", v17, v18, v5, self, v10, v15);

  return v19;
}

+ (id)stringForCellValueType:(unsigned __int8)type
{
  if (type > 0xAu)
  {
    return 0;
  }

  else
  {
    return *(&off_278462098 + type);
  }
}

- (id)cellValueDescription
{
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3, v4);
  if (objc_msgSend_hasFormula(self, v7, v8, v9, v10))
  {
    objc_msgSend_appendString_(v6, v11, @"Cell Spec: ", v12, v13);
    v18 = objc_msgSend_description(self->_cellSpec, v14, v15, v16, v17);
    objc_msgSend_appendString_(v6, v19, v18, v20, v21);
  }

  objc_msgSend_appendString_(v6, v11, @"Value: ", v12, v13);
  valueType = self->_valueType;
  if (valueType <= 5)
  {
    if (self->_valueType <= 2u)
    {
      if (!self->_valueType)
      {
        objc_msgSend_appendString_(v6, v22, @"<empty>", v24, v25);
        goto LABEL_27;
      }

      if (valueType == 2)
      {
        v27 = MEMORY[0x277CCACA8];
        objc_msgSend_doubleValue(self, v22, v23, v24, v25);
        v32 = objc_msgSend_stringWithFormat_(v27, v28, @"<number: %f>", v29, v30, v31);
        objc_msgSend_appendString_(v6, v33, v32, v34, v35);
LABEL_25:

        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (valueType == 3)
    {
      v73 = MEMORY[0x277CCACA8];
      v32 = objc_msgSend_stringValue(self, v22, v23, v24, v25);
      v49 = objc_msgSend_stringWithFormat_(v73, v74, @"<string: '%@'>", v75, v76, v32);
      objc_msgSend_appendString_(v6, v77, v49, v78, v79);
    }

    else
    {
      if (valueType != 5)
      {
        goto LABEL_26;
      }

      v44 = MEMORY[0x277CCACA8];
      v32 = objc_msgSend_dateValue(self, v22, v23, v24, v25);
      v49 = objc_msgSend_description(v32, v45, v46, v47, v48);
      v53 = objc_msgSend_stringWithFormat_(v44, v50, @"<date: '%@'>", v51, v52, v49);
      objc_msgSend_appendString_(v6, v54, v53, v55, v56);
    }

LABEL_23:

    goto LABEL_25;
  }

  if (self->_valueType > 7u)
  {
    if (valueType == 8)
    {
      v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"<error>", v24, v25);
      objc_msgSend_appendString_(v6, v80, v32, v81, v82);
      goto LABEL_25;
    }

    if (valueType != 9)
    {
      goto LABEL_26;
    }

    v57 = MEMORY[0x277CCACA8];
    v32 = objc_msgSend_stringValue(self, v22, v23, v24, v25);
    v49 = objc_msgSend_stringWithFormat_(v57, v58, @"<rich text: '%@'>", v59, v60, v32);
    objc_msgSend_appendString_(v6, v61, v49, v62, v63);
    goto LABEL_23;
  }

  if (valueType == 6)
  {
    v64 = MEMORY[0x277CCACA8];
    objc_msgSend_doubleValue(self, v22, v23, v24, v25);
    v68 = @"TRUE";
    if (v69 == 0.0)
    {
      v68 = @"FALSE";
    }

    v32 = objc_msgSend_stringWithFormat_(v64, v65, @"<BOOL: '%@'>", v66, v67, v68);
    objc_msgSend_appendString_(v6, v70, v32, v71, v72);
    goto LABEL_25;
  }

  if (valueType == 7)
  {
    v36 = MEMORY[0x277CCACA8];
    objc_msgSend_doubleValue(self, v22, v23, v24, v25);
    v32 = objc_msgSend_stringWithFormat_(v36, v37, @"<duration: %f>", v38, v39, v40);
    objc_msgSend_appendString_(v6, v41, v32, v42, v43);
    goto LABEL_25;
  }

LABEL_26:
  objc_msgSend_appendString_(v6, v22, @"<unknown cell type>", v24, v25);
LABEL_27:

  return v6;
}

@end