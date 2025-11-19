@interface TSTCell
+ (BOOL)formatType:(unsigned int)a3 isSameCellFormatKindAs:(unsigned int)a4 allowNumberCurrencyMismatch:(BOOL)a5;
+ (BOOL)mismatchBetweenValueType:(unsigned __int8)a3 andFormatType:(unsigned int)a4;
+ (id)stringForCellValueType:(unsigned __int8)a3;
+ (unsigned)cellFormatKindForValueType:(unsigned __int8)a3;
- (BOOL)_coerceEmptyCellToFormat:(unsigned int)a3;
- (BOOL)_coerceTextCellToBestNumberFormatUsingLimitedParsing:(BOOL)a3 allowFractions:(BOOL)a4;
- (BOOL)_coerceToBooleanFormat;
- (BOOL)_coerceToCheckboxFormat;
- (BOOL)_coerceToCurrencyFormat;
- (BOOL)_coerceToCustomDateTimeFormat;
- (BOOL)_coerceToCustomNumberishFormat:(unsigned int)a3;
- (BOOL)_coerceToCustomTextFormat;
- (BOOL)_coerceToDateTimeFormat;
- (BOOL)_coerceToDecimalFormat;
- (BOOL)_coerceToDurationFormat;
- (BOOL)_coerceToFractionFormat;
- (BOOL)_coerceToNumberFormatWithSeparatorFixing:(unsigned int)a3;
- (BOOL)_coerceToPercentageFormat;
- (BOOL)_coerceToRatingFormat;
- (BOOL)_coerceToScientificFormat;
- (BOOL)_coerceToTextFormat;
- (BOOL)_parseFormulaFromString:(id)a3 tableInfo:(id)a4 cellID:(TSUCellCoord)a5;
- (BOOL)_validateCustomFormatWrapper:(id)a3;
- (BOOL)coerceToBaseFormat:(id)a3;
- (BOOL)coerceToFormatType:(unsigned int)a3 usingSpares:(BOOL)a4;
- (BOOL)currentFormatIsExplicitForCalcEngine;
- (BOOL)currentFormatUsesAccountingStyle;
- (BOOL)dataIsReplaceable;
- (BOOL)hasAnyWarning;
- (BOOL)hasControl;
- (BOOL)hasEditableFormula;
- (BOOL)hasEqualContentToCell:(id)a3 usingRichTextObjectComparisonBlock:(id)a4;
- (BOOL)hasEqualValueToCell:(id)a3;
- (BOOL)hasExplicitFormatOfType:(unsigned int)a3 allowMismatchedSpare:(BOOL)a4;
- (BOOL)hasFormatOfType:(unsigned int)a3 allowMismatchedSpare:(BOOL)a4;
- (BOOL)hasFormula;
- (BOOL)hasFormulaEvaluationError;
- (BOOL)hasFormulaSyntaxError;
- (BOOL)hasRichText;
- (BOOL)hasStockFormulaForStockUI;
- (BOOL)hasValueOrCommentBreakingMergeFragment;
- (BOOL)isEmpty;
- (BOOL)isEmptyForDataStore;
- (BOOL)isMostRecentlyExplicitPercent;
- (BOOL)mightBeInterestedInMigration;
- (BOOL)p_clearIfImplicitAndNotCurrentForKind:(unsigned __int8)a3 format:(id)a4 explicitFormatMask:(unsigned __int16)a5;
- (BOOL)p_currentFormatIsEqualToOtherCellFormat:(id)a3;
- (BOOL)removeControlCellSpec;
- (BOOL)removeControlFormatSpares;
- (BOOL)removeCustomFormatsWithIDs:(id)a3;
- (BOOL)validateAndRepair;
- (BOOL)valueRepresentsDateWithoutTime;
- (NSDate)dateValue;
- (NSString)_rawValueForStringCoercion;
- (NSString)customFormatString;
- (NSString)formattedValue;
- (NSString)formulaSyntaxErrorString;
- (NSString)stringForDisplayWithoutColor;
- (NSString)stringForEditing;
- (NSString)stringForUnderlyingValue;
- (NSString)stringValue;
- (TSCEFormulaObject)formulaObject;
- (TSDFill)cellFill;
- (TSTCell)initWithLocale:(id)a3;
- (TSTCell)initWithStorageRef:(TSTCellStorage *)a3 dataStore:(id)a4;
- (TSTCellSpec)cellSpecForDiff;
- (TSTCellStyle)cellStyle;
- (TSTStockDetails)stockDetails;
- (TSUDecimal)_rawValueForDecimalCoercion;
- (TSUDecimal)currencyDecimalValue;
- (TSUDecimal)numberDecimalValue;
- (TSUDecimal)underlyingDecimalValue;
- (TSWPParagraphStyle)effectiveTextStyle;
- (TSWPParagraphStyle)textStyle;
- (TSWPStorage)formulaSyntaxError;
- (TSWPStorage)richTextStorageForLayout;
- (TSWPStorage)richTextValue;
- (double)currencyDoubleValue;
- (double)durationTimeIntervalValue;
- (double)numberDoubleValue;
- (id)candidateFormatForSliderStepperControlWithIsCurrent:(BOOL *)a3;
- (id)cellByApplyingCellDiff:(id)a3 toTable:(id)a4 andUpdateInverse:(id)a5 optionalConcurrentStylesheet:(id)a6;
- (id)cellFillComparedToDefault:(id)a3 suppressCS:(BOOL)a4 isDefault:(BOOL *)a5;
- (id)cellValueDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)formatForStorageFlag:(unsigned int)a3;
- (id)formatOfCellFormatKind:(unsigned __int8)a3 isExplicit:(BOOL *)a4;
- (id)formatOfType:(unsigned int)a3 allowMismatchedSpare:(BOOL)a4;
- (id)p_formatOfCellFormatKind:(unsigned __int8)a3 create:(BOOL)a4 returnFormat:(BOOL)a5 outCreated:(BOOL *)a6;
- (id)reorganizeValueForSorting;
- (int)writingDirection;
- (unint64_t)popupChoiceIndex;
- (unsigned)currentFormatNegativeStyle;
- (unsigned)formatIDForStorageFlag:(unsigned int)a3;
- (unsigned)formatType;
- (unsigned)formulaSyntaxErrorID;
- (unsigned)interactionType;
- (unsigned)richTextID;
- (unsigned)stringID;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4 supportsInlineAttachments:(BOOL)a5;
- (void)applyFormulaResult:(id)a3 context:(id)a4 hasWarnings:(BOOL)a5 outWriteDidBeginOrEndWithTextCell:(BOOL *)a6 propagateCheckboxes:(BOOL)a7;
- (void)applyPopupChoiceIndex:(unint64_t)a3;
- (void)bakeFormulaToValue;
- (void)clear;
- (void)clearAllFormats;
- (void)clearDataListIDs;
- (void)clearFormatOfType:(unsigned int)a3;
- (void)clearStrokes;
- (void)clearValue;
- (void)copyAllFormatsToCell:(id)a3;
- (void)copyJustStrokesToCell:(id)a3;
- (void)copyJustStyleAndStrokesToCell:(id)a3;
- (void)copyJustValueToCell:(id)a3;
- (void)copyToCell:(id)a3;
- (void)copyValueAndFormatToCell:(id)a3;
- (void)inflateFromStorageRef:(TSTCellStorage *)a3 dataStore:(id)a4 cache:(id)a5 suppressingTransmutation:(BOOL)a6;
- (void)p_TSTCellSetMostRecentlySetNumberFormatWithCurrencyFlag:(BOOL)a3;
- (void)p_clearFormatOfCellFormatKind:(unsigned __int8)a3;
- (void)p_setFormatExplicit:(BOOL)a3 fromCellFormatKind:(unsigned __int8)a4 setMostRecentlySet:(BOOL)a5;
- (void)p_setFormatFlags:(unsigned __int16)a3 explicit:(BOOL)a4;
- (void)p_setFormatForFormulaResult:(id)a3 propagation:(BOOL)a4;
- (void)parseContentOrFormulaFromString:(id)a3 tableInfo:(id)a4 cellID:(TSUCellCoord)a5 flags:(unint64_t)a6;
- (void)processCustomFormatsWithBlock:(id)a3;
- (void)setBoolValue:(BOOL)a3;
- (void)setCellSpec:(id)a3 clearingID:(BOOL)a4;
- (void)setCellStyle:(id)a3 clearingID:(BOOL)a4;
- (void)setCellStyleHandle:(id)a3 clearingID:(BOOL)a4;
- (void)setCommentStorage:(id)a3 clearingID:(BOOL)a4;
- (void)setConditionalStyle:(id)a3 clearingID:(BOOL)a4;
- (void)setCurrencyDecimalValue:(TSUDecimal)a3 roundToDoublePrecision:(BOOL)a4;
- (void)setCurrencyOrNumberDecimalValue:(const TSUDecimal *)a3;
- (void)setCurrencyOrNumberDoubleValue:(double)a3;
- (void)setCurrentFormat:(id)a3 flags:(unsigned __int16)a4;
- (void)setCurrentFormat:(id)a3 isExplicit:(BOOL)a4;
- (void)setCurrentFormat:(id)a3 isExplicit:(BOOL)a4 forExcel:(BOOL)a5;
- (void)setDateValue:(id)a3;
- (void)setDefaultFormatForValue;
- (void)setDurationTimeIntervalValue:(double)a3;
- (void)setFormat:(id)a3 isExplicit:(BOOL)a4;
- (void)setFormat:(id)a3 shouldSetExplFlags:(BOOL)a4 isExplicit:(BOOL)a5 makeCurrent:(BOOL)a6 clearingID:(BOOL)a7;
- (void)setFormatID:(unsigned int)a3 forStorageFlag:(unsigned int)a4;
- (void)setFormulaObject:(id)a3 clearingID:(BOOL)a4;
- (void)setFormulaSyntaxError:(id)a3 clearingID:(BOOL)a4;
- (void)setFormulaSyntaxErrorID:(unsigned int)a3;
- (void)setImportWarningSet:(id)a3 clearingID:(BOOL)a4;
- (void)setNumberDecimalValue:(TSUDecimal)a3 roundToDoublePrecision:(BOOL)a4;
- (void)setProvidedValueTypeBeforeUpgrade;
- (void)setRichTextID:(unsigned int)a3;
- (void)setRichTextValue:(id)a3 clearingID:(BOOL)a4 convertToPlaintextIfPossible:(BOOL)a5;
- (void)setStringID:(unsigned int)a3;
- (void)setStringValue:(id)a3 clearingID:(BOOL)a4;
- (void)setStringValue:(id)a3 clearingID:(BOOL)a4 shouldWrap:(BOOL)a5;
- (void)setTextStyle:(id)a3 clearingID:(BOOL)a4;
- (void)setTextStyleHandle:(id)a3 clearingID:(BOOL)a4;
- (void)shallowCopyToCell:(id)a3;
- (void)suggestCellFormatKind:(unsigned __int8)a3;
- (void)updateCustomFormatFromPaste:(id)a3;
@end

@implementation TSTCell

- (TSUDecimal)_rawValueForDecimalCoercion
{
  v6 = objc_msgSend_valueType(self, a2, v2, v3, v4);
  if (v6 > 5)
  {
    switch(v6)
    {
      case 6:
        objc_msgSend_BOOLValue(self, v7, v8, v9, v10);
        break;
      case 7:
        objc_msgSend_durationTimeIntervalValue(self, v7, v8, v9, v10);
        break;
      case 10:
        v18 = objc_msgSend_currencyDecimalValue(self, v7, v8, v9, v10);
        v19 = v11;
        goto LABEL_15;
    }

LABEL_14:
    TSUDecimal::operator=();
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    goto LABEL_14;
  }

  v18 = objc_msgSend_numberDecimalValue(self, v7, v8, v9, v10);
  v19 = v12;
  if (objc_msgSend_formatType(self, v12, v13, v14, v15) == 267)
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<=() & 1) == 0 || (TSUDecimal::operator=(), TSUDecimal::operator<()))
    {
      TSUDecimal::operator=();
    }
  }

LABEL_15:
  v16 = v18;
  v17 = v19;
  result._decimal.w[1] = v17;
  result._decimal.w[0] = v16;
  return result;
}

- (NSString)_rawValueForStringCoercion
{
  v6 = objc_msgSend_valueType(self, a2, v2, v3, v4);
  if (v6 == 9)
  {
    v12 = objc_msgSend_richTextValue(self, v7, v8, v9, v10);
    v11 = objc_msgSend_string(v12, v13, v14, v15, v16);
  }

  else if (v6 == 3)
  {
    v11 = objc_msgSend_stringValue(self, v7, v8, v9, v10);
  }

  else
  {
    v11 = &stru_2834BADA0;
  }

  return v11;
}

- (BOOL)_coerceEmptyCellToFormat:(unsigned int)a3
{
  v5 = *&a3;
  v11 = objc_msgSend_formatType(self, a2, *&a3, v3, v4);
  if (v11 != v5)
  {
    v12 = 0;
    switch(v5)
    {
      case 254:
      case 264:
      case 265:
      case 266:
        v13 = MEMORY[0x277D81150];
        v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCell(CoercionPrivate) _coerceEmptyCellToFormat:]", v9, v10);
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v16, v17);
        v19 = NSStringForTSUFormatType();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v14, v18, 200, 0, "Cannot coerce to %@", v19);

        v12 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v25, 0, 1, 0, 1, 1);
        goto LABEL_7;
      case 255:
      case 273:
        goto LABEL_6;
      case 256:
        if (objc_msgSend__coerceToDecimalFormat(self, v7, v8, v9, v10))
        {
          goto LABEL_22;
        }

        v57 = MEMORY[0x277D80680];
        v27 = objc_msgSend_locale(self, v53, v54, v55, v56);
        v30 = objc_msgSend_defaultFormatWithFormatType_locale_(v57, v58, 256, v27, v59);
        goto LABEL_5;
      case 257:
        if (objc_msgSend__coerceToCurrencyFormat(self, v7, v8, v9, v10))
        {
          goto LABEL_22;
        }

        v50 = MEMORY[0x277D80680];
        v27 = objc_msgSend_locale(self, v46, v47, v48, v49);
        v30 = objc_msgSend_defaultFormatWithFormatType_locale_(v50, v51, 257, v27, v52);
        goto LABEL_5;
      case 258:
        if (objc_msgSend__coerceToPercentageFormat(self, v7, v8, v9, v10))
        {
          goto LABEL_22;
        }

        v43 = MEMORY[0x277D80680];
        v27 = objc_msgSend_locale(self, v39, v40, v41, v42);
        v30 = objc_msgSend_defaultFormatWithFormatType_locale_(v43, v44, 258, v27, v45);
        goto LABEL_5;
      case 259:
        if (objc_msgSend__coerceToScientificFormat(self, v7, v8, v9, v10))
        {
          goto LABEL_22;
        }

        v36 = MEMORY[0x277D80680];
        v27 = objc_msgSend_locale(self, v32, v33, v34, v35);
        v30 = objc_msgSend_defaultFormatWithFormatType_locale_(v36, v37, 259, v27, v38);
        goto LABEL_5;
      case 260:
      case 261:
      case 263:
      case 267:
      case 268:
      case 270:
      case 271:
      case 272:
      case 274:
        goto LABEL_4;
      case 262:
        if (objc_msgSend__coerceToFractionFormat(self, v7, v8, v9, v10))
        {
          goto LABEL_22;
        }

        v64 = MEMORY[0x277D80680];
        v27 = objc_msgSend_locale(self, v60, v61, v62, v63);
        v30 = objc_msgSend_defaultFormatWithFormatType_locale_(v64, v65, 262, v27, v66);
        goto LABEL_5;
      case 269:
        if (objc_msgSend_coerceToBaseFormat_(self, v7, 0, v9, v10))
        {
LABEL_22:
          v12 = 0;
        }

        else
        {
          v71 = MEMORY[0x277D80680];
          v27 = objc_msgSend_locale(self, v67, v68, v69, v70);
          v30 = objc_msgSend_defaultFormatWithFormatType_locale_(v71, v72, 269, v27, v73);
LABEL_5:
          v12 = v30;

LABEL_6:
          objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v7, v12, 1, 0, 1, 1);
        }

LABEL_7:

        break;
      default:
        if (v5 != 1)
        {
          goto LABEL_6;
        }

LABEL_4:
        v26 = MEMORY[0x277D80680];
        v27 = objc_msgSend_locale(self, v7, v8, v9, v10);
        v30 = objc_msgSend_defaultFormatWithFormatType_locale_(v26, v28, v5, v27, v29);
        goto LABEL_5;
    }
  }

  return v11 != v5;
}

- (BOOL)_coerceToDecimalFormat
{
  v115._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3, v4);
  v115._decimal.w[1] = v6;
  v10 = objc_msgSend_currentFormat(self, v6, v7, v8, v9);
  v15 = objc_msgSend_formatType(v10, v11, v12, v13, v14);
  v20 = 0;
  v21 = 0;
  if (v15 <= 258)
  {
    if (v15 != 1)
    {
      if (v15 == 257)
      {
        v85 = objc_alloc(MEMORY[0x277D806A0]);
        v24 = objc_msgSend_asCurrencyFormat(v10, v86, v87, v88, v89);
        v94 = objc_msgSend_negativeStyle(v24, v90, v91, v92, v93);
        v50 = objc_msgSend_asCurrencyFormat(v10, v95, v96, v97, v98);
        v103 = objc_msgSend_showThousandsSeparator(v50, v99, v100, v101, v102);
        v20 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v85, v104, 256, 253, v94, v103);
      }

      else
      {
        if (v15 != 258)
        {
          goto LABEL_10;
        }

        v36 = objc_alloc(MEMORY[0x277D806A0]);
        v24 = objc_msgSend_asNumberFormat(v10, v37, v38, v39, v40);
        v45 = objc_msgSend_decimalPlaces(v24, v41, v42, v43, v44);
        v50 = objc_msgSend_asNumberFormat(v10, v46, v47, v48, v49);
        v55 = objc_msgSend_negativeStyle(v50, v51, v52, v53, v54);
        v60 = objc_msgSend_asNumberFormat(v10, v56, v57, v58, v59);
        v65 = objc_msgSend_showThousandsSeparator(v60, v61, v62, v63, v64);
        v20 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v36, v66, 256, v45, v55, v65);
      }

      goto LABEL_6;
    }
  }

  else
  {
    v22 = v15 - 3;
    if ((v15 - 259) > 0xF)
    {
      goto LABEL_10;
    }

    if (((1 << v22) & 0x8F18) == 0)
    {
      if (((1 << v22) & 0x1002) != 0)
      {
        v67 = objc_msgSend__rawValueForStringCoercion(self, v16, v17, v18, v19);
        v72 = objc_msgSend_locale(self, v68, v69, v70, v71);
        MEMORY[0x223D9F8D0](v114, v72);

        TSUUnivNumberParser::parseAsNumber(v114, v67);
        if (v113 == -999 || (TSUDecimal::operator=(), v115 = v111, (TSUDecimal::isInf(&v115) & 1) != 0) || (TSUDecimal::isNaN(&v115) & 1) != 0)
        {
          v20 = 0;
          v73 = 0;
        }

        else
        {
          if (v113 > 1)
          {
            v108 = 253;
          }

          else
          {
            v105 = TSUParsedNumber::numberOfDecimalPlaces(v112);
            v106 = TSUDecimal::numberOfFractionalDigits(&v115);
            v107 = v105;
            if (v106 > v105)
            {
              v107 = v106;
            }

            if (v107 >= *MEMORY[0x277D81528])
            {
              v108 = *MEMORY[0x277D81528];
            }

            else
            {
              v108 = v107;
            }
          }

          v109 = objc_alloc(MEMORY[0x277D806A0]);
          v20 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v109, v110, 256, v108, 0, 0);
          v73 = 1;
        }

        MEMORY[0x223D9F890](v112);

        if ((v73 & 1) == 0)
        {
          v21 = 0;
          goto LABEL_10;
        }

        goto LABEL_7;
      }

      if (v15 != 259)
      {
        goto LABEL_10;
      }

      v74 = objc_alloc(MEMORY[0x277D806A0]);
      v24 = objc_msgSend_asNumberFormat(v10, v75, v76, v77, v78);
      v83 = objc_msgSend_decimalPlaces(v24, v79, v80, v81, v82);
      v27 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v74, v84, 256, v83, 0, 0);
      goto LABEL_5;
    }
  }

  v23 = MEMORY[0x277D80680];
  v24 = objc_msgSend_locale(self, v16, v17, v18, v19);
  v27 = objc_msgSend_defaultFormatWithFormatType_locale_(v23, v25, 256, v24, v26);
LABEL_5:
  v20 = v27;
LABEL_6:

LABEL_7:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v28, v20, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v29, v30, v31, v32))
  {
    objc_msgSend_setNumberDecimalValue_(self, v33, v115._decimal.w[0], v115._decimal.w[1], v34);
  }

  v21 = 1;
LABEL_10:

  return v21;
}

- (BOOL)_coerceToScientificFormat
{
  v65._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3, v4);
  v65._decimal.w[1] = v6;
  v10 = objc_msgSend_currentFormat(self, v6, v7, v8, v9);
  v15 = objc_msgSend_formatType(v10, v11, v12, v13, v14);
  if ((v15 - 256) > 0x12)
  {
    goto LABEL_18;
  }

  if (((1 << v15) & 0x468C2) != 0)
  {
LABEL_3:
    v20 = MEMORY[0x277D80680];
    v21 = objc_msgSend_locale(self, v16, v17, v18, v19);
    v24 = objc_msgSend_defaultFormatWithFormatType_locale_(v20, v22, 259, v21, v23);
LABEL_4:
    v25 = v24;

    goto LABEL_5;
  }

  if (((1 << v15) & 5) != 0)
  {
    v46 = objc_alloc(MEMORY[0x277D806A0]);
    v21 = objc_msgSend_asNumberFormat(v10, v47, v48, v49, v50);
    v55 = objc_msgSend_decimalPlaces(v21, v51, v52, v53, v54);
    v24 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v46, v56, 259, v55, 0, 0);
    goto LABEL_4;
  }

  if (((1 << v15) & 0x8010) == 0)
  {
LABEL_18:
    if (v15 != 1)
    {
      v33 = 0;
      v25 = 0;
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v35 = objc_msgSend__rawValueForStringCoercion(self, v16, v17, v18, v19);
  v40 = objc_msgSend_locale(self, v36, v37, v38, v39);
  MEMORY[0x223D9F8D0](v64, v40);

  TSUUnivNumberParser::parseAsNumber(v64, v35);
  if (v63 == -999 || (TSUDecimal::operator=(), v65 = v61, (TSUDecimal::isInf(&v65) & 1) != 0) || (TSUDecimal::isNaN(&v65) & 1) != 0)
  {
    v25 = 0;
    v45 = 0;
  }

  else
  {
    v57 = MEMORY[0x277D80680];
    v58 = objc_msgSend_locale(self, v41, v42, v43, v44);
    v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v57, v59, 259, v58, v60);

    v45 = 1;
  }

  MEMORY[0x223D9F890](v62);

  if ((v45 & 1) == 0)
  {
    v33 = 0;
    goto LABEL_8;
  }

LABEL_5:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v26, v25, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v27, v28, v29, v30))
  {
    objc_msgSend_setNumberDecimalValue_(self, v31, v65._decimal.w[0], v65._decimal.w[1], v32);
  }

  v33 = 1;
LABEL_8:

  return v33;
}

- (BOOL)_coerceToPercentageFormat
{
  v117._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3, v4);
  v117._decimal.w[1] = v6;
  v10 = objc_msgSend_currentFormat(self, v6, v7, v8, v9);
  v15 = objc_msgSend_formatType(v10, v11, v12, v13, v14);
  v20 = 0;
  v21 = 0;
  if (v15 <= 258)
  {
    if (v15 != 1)
    {
      if (v15 == 256)
      {
        v79 = objc_alloc(MEMORY[0x277D806A0]);
        v24 = objc_msgSend_asNumberFormat(v10, v80, v81, v82, v83);
        v88 = objc_msgSend_decimalPlaces(v24, v84, v85, v86, v87);
        v50 = objc_msgSend_asNumberFormat(v10, v89, v90, v91, v92);
        v97 = objc_msgSend_negativeStyle(v50, v93, v94, v95, v96);
        v102 = objc_msgSend_asNumberFormat(v10, v98, v99, v100, v101);
        v107 = objc_msgSend_showThousandsSeparator(v102, v103, v104, v105, v106);
        v20 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v79, v108, 258, v88, v97, v107);
      }

      else
      {
        if (v15 != 257)
        {
          goto LABEL_10;
        }

        v36 = objc_alloc(MEMORY[0x277D806A0]);
        v24 = objc_msgSend_asCurrencyFormat(v10, v37, v38, v39, v40);
        v45 = objc_msgSend_negativeStyle(v24, v41, v42, v43, v44);
        v50 = objc_msgSend_asCurrencyFormat(v10, v46, v47, v48, v49);
        v55 = objc_msgSend_showThousandsSeparator(v50, v51, v52, v53, v54);
        v20 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v36, v56, 258, 253, v45, v55);
      }

      goto LABEL_6;
    }
  }

  else
  {
    v22 = v15 - 3;
    if ((v15 - 259) > 0xF)
    {
      goto LABEL_10;
    }

    if (((1 << v22) & 0x8D18) == 0)
    {
      if (((1 << v22) & 0x1002) != 0)
      {
        v57 = objc_msgSend__rawValueForStringCoercion(self, v16, v17, v18, v19);
        v62 = objc_msgSend_locale(self, v58, v59, v60, v61);
        MEMORY[0x223D9F8D0](v116, v62);

        TSUUnivNumberParser::parseAsNumber(v116, v57);
        if (v115 == -999 || (TSUDecimal::operator=(), v117 = v113, (TSUDecimal::isInf(&v117) & 1) != 0) || (TSUDecimal::isNaN(&v117) & 1) != 0)
        {
          v20 = 0;
          v67 = 0;
        }

        else
        {
          v109 = MEMORY[0x277D80680];
          v110 = objc_msgSend_locale(self, v63, v64, v65, v66);
          v20 = objc_msgSend_defaultFormatWithFormatType_locale_(v109, v111, 258, v110, v112);

          v67 = 1;
        }

        MEMORY[0x223D9F890](v114);

        if ((v67 & 1) == 0)
        {
          v21 = 0;
          goto LABEL_10;
        }

        goto LABEL_7;
      }

      if (v15 != 259)
      {
        goto LABEL_10;
      }

      v68 = objc_alloc(MEMORY[0x277D806A0]);
      v24 = objc_msgSend_asNumberFormat(v10, v69, v70, v71, v72);
      v77 = objc_msgSend_decimalPlaces(v24, v73, v74, v75, v76);
      v27 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v68, v78, 258, v77, 0, 0);
      goto LABEL_5;
    }
  }

  v23 = MEMORY[0x277D80680];
  v24 = objc_msgSend_locale(self, v16, v17, v18, v19);
  v27 = objc_msgSend_defaultFormatWithFormatType_locale_(v23, v25, 258, v24, v26);
LABEL_5:
  v20 = v27;
LABEL_6:

LABEL_7:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v28, v20, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v29, v30, v31, v32))
  {
    objc_msgSend_setNumberDecimalValue_(self, v33, v117._decimal.w[0], v117._decimal.w[1], v34);
  }

  v21 = 1;
LABEL_10:

  return v21;
}

- (BOOL)_coerceToFractionFormat
{
  v73._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3, v4);
  v73._decimal.w[1] = v6;
  v10 = objc_msgSend_formatType(self, v6, v7, v8, v9);
  if ((v10 - 256) > 0x12)
  {
    goto LABEL_24;
  }

  if (((1 << v10) & 0x4688F) == 0)
  {
    if (((1 << v10) & 0x8010) != 0)
    {
      v41 = objc_msgSend__rawValueForStringCoercion(self, v11, v12, v13, v14);
      if (v41)
      {
        v46 = v41;
        v47 = objc_msgSend_locale(self, v42, v43, v44, v45);
        MEMORY[0x223D9F8D0](&v64, v47);

        TSUUnivNumberParser::parseAsNumber(&v64, v46);
        if (v63 == -999 || (TSUDecimal::operator=(), v73 = v61, (TSUDecimal::isInf(&v73) & 1) != 0) || (TSUDecimal::isNaN(&v73) & 1) != 0)
        {
          v19 = 0;
          v52 = 0;
        }

        else
        {
          v53 = MEMORY[0x277D80680];
          v54 = objc_msgSend_locale(self, v48, v49, v50, v51);
          v19 = objc_msgSend_defaultFormatWithFormatType_locale_(v53, v55, 262, v54, v56);

          v52 = 1;
        }

        MEMORY[0x223D9F890](v62);

        if (v52)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

LABEL_25:
      v27 = 0;
      v19 = 0;
      goto LABEL_7;
    }

    if (((1 << v10) & 0x10020) != 0)
    {
      v29 = objc_msgSend_formattedValue(self, v11, v12, v13, v14);
      if (v29)
      {
        v34 = v29;
        v35 = objc_msgSend_locale(self, v30, v31, v32, v33);
        MEMORY[0x223D9F8D0](&v64, v35);

        TSUUnivNumberParser::parseAsNumber(&v64, v34);
        if (v63 == -999 || (TSUDecimal::operator=(), v73 = v61, (TSUDecimal::isInf(&v73) & 1) != 0) || (TSUDecimal::isNaN(&v73) & 1) != 0)
        {
          v19 = 0;
          v40 = 0;
        }

        else
        {
          v57 = MEMORY[0x277D80680];
          v58 = objc_msgSend_locale(self, v36, v37, v38, v39);
          v19 = objc_msgSend_defaultFormatWithFormatType_locale_(v57, v59, 262, v58, v60);

          v40 = 1;
        }

        MEMORY[0x223D9F890](v62);

        if (v40)
        {
          goto LABEL_4;
        }

LABEL_23:
        v27 = 0;
        goto LABEL_7;
      }

      goto LABEL_25;
    }

LABEL_24:
    if (v10 == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_25;
  }

LABEL_3:
  v15 = MEMORY[0x277D80680];
  v16 = objc_msgSend_locale(self, v11, v12, v13, v14);
  v19 = objc_msgSend_defaultFormatWithFormatType_locale_(v15, v17, 262, v16, v18);

LABEL_4:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v20, v19, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v21, v22, v23, v24))
  {
    objc_msgSend_setNumberDecimalValue_(self, v25, v73._decimal.w[0], v73._decimal.w[1], v26);
  }

  v27 = 1;
LABEL_7:

  return v27;
}

- (BOOL)_coerceToDateTimeFormat
{
  v6 = objc_msgSend_formatType(self, a2, v2, v3, v4);
  v11 = 0;
  LOBYTE(v12) = 0;
  if (v6 <= 270)
  {
    if (v6 != 260)
    {
      v13 = 0;
      if (v6 != 262)
      {
        goto LABEL_28;
      }

      v12 = objc_msgSend_formattedValue(self, v7, v8, v9, v10);
      if (v12)
      {
        v18 = objc_msgSend_locale(self, v14, v15, v16, v17);
        v98 = 0;
        v11 = TSUCreateDateFromString();
        v13 = 0;
LABEL_18:

        if (!v11)
        {
          LOBYTE(v12) = 0;
          goto LABEL_28;
        }

        v40 = objc_msgSend_length(v13, v81, v82, v83, v84, v98);
        goto LABEL_20;
      }

      v11 = 0;
      goto LABEL_27;
    }

LABEL_8:
    v11 = objc_msgSend_stringValue(self, v7, v8, v9, v10);
    if (v11 || (objc_msgSend_richTextValue(self, v19, v20, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v23, v24, v25, v26, v27), v11 = objc_claimAutoreleasedReturnValue(), v23, v11))
    {
      v28 = objc_msgSend_tswp_smartSingleQuotesCharacterSet(MEMORY[0x277CCA900], v19, v20, v21, v22);
      v32 = objc_msgSend_rangeOfCharacterFromSet_(v11, v29, v28, v30, v31);
      v34 = v33;

      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v11;
      }

      else
      {
        do
        {
          v12 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v11, v35, v32, v34, @"'");

          v49 = objc_msgSend_tswp_smartSingleQuotesCharacterSet(MEMORY[0x277CCA900], v45, v46, v47, v48);
          v32 = objc_msgSend_rangeOfCharacterFromSet_(v12, v50, v49, v51, v52);
          v34 = v53;

          v11 = v12;
        }

        while (v32 != 0x7FFFFFFFFFFFFFFFLL);
      }

      v18 = sub_2214C4C4C();
      v58 = objc_msgSend_rangeOfCharacterFromSet_(v12, v54, v18, v55, v56);
      while (v58 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v61 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v12, v57, v58, v57, @" ");

        v58 = objc_msgSend_rangeOfCharacterFromSet_(v61, v62, v18, v63, v64);
        v12 = v61;
      }

      v65 = objc_msgSend_dateFormat(self, v57, 0x7FFFFFFFFFFFFFFFLL, v59, v60);
      v70 = objc_msgSend_asDateTimeFormat(v65, v66, v67, v68, v69);
      v75 = objc_msgSend_formatString(v70, v71, v72, v73, v74);

      v80 = objc_msgSend_locale(self, v76, v77, v78, v79);
      v11 = TSUCreateDateFromStringWithPreferredFormat();
      v13 = 0;

      goto LABEL_18;
    }

    LOBYTE(v12) = 0;
LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  if (v6 != 272)
  {
    v13 = 0;
    if (v6 != 271)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  v11 = objc_msgSend_dateValue(self, v7, v8, v9, v10);
  v13 = 0;
  v40 = objc_msgSend_length(0, v36, v37, v38, v39);
LABEL_20:
  if (v40)
  {
    v85 = objc_alloc(MEMORY[0x277D80658]);
    v12 = objc_msgSend_initWithFormatString_(v85, v86, v13, v87, v88);
  }

  else
  {
    v90 = MEMORY[0x277D80680];
    v91 = objc_msgSend_locale(self, v41, v42, v43, v44);
    v12 = objc_msgSend_defaultFormatWithFormatType_locale_(v90, v92, 261, v91, v93);
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v89, v12, 1, 0, 1, 1);
  objc_msgSend_setDateValue_(self, v94, v11, v95, v96);

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (BOOL)_coerceToDurationFormat
{
  v46._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3, v4);
  v46._decimal.w[1] = v6;
  TSUDecimal::doubleValue(&v46);
  v8 = v7;
  v56 = v7;
  v17 = objc_msgSend_formatType(self, v9, v10, v11, v12);
  result = 0;
  if (v17 > 269)
  {
    if (v17 == 271)
    {
LABEL_8:
      v19 = objc_msgSend__rawValueForStringCoercion(self, v13, v14, v15, v16);
      v55 = 0;
      v54 = 1;
      v24 = objc_msgSend_locale(self, v20, v21, v22, v23);
      started = TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit();

      if (started)
      {
      }

      else
      {
        v30 = objc_msgSend_locale(self, v26, v27, v28, v29);
        MEMORY[0x223D9F8D0](&v46, v30);

        TSUUnivNumberParser::parseAsNumber(&v46, v19);
        if (v45 == -999)
        {
          v31 = 0;
        }

        else
        {
          TSUDecimal::operator=();
          if (TSUDecimal::isInf(&v43))
          {
            v31 = 0;
          }

          else
          {
            v31 = TSUDecimal::isNaN(&v43) ^ 1;
          }

          TSUDecimal::doubleValue(&v43);
          v56 = v32 * 86400.0;
        }

        MEMORY[0x223D9F890](v44);

        if (!v31)
        {
          return 0;
        }
      }

      goto LABEL_17;
    }

    if (v17 != 270)
    {
      return result;
    }
  }

  else if (v17 != 256)
  {
    if (v17 != 260)
    {
      return result;
    }

    goto LABEL_8;
  }

  v56 = v8 * 86400.0;
LABEL_17:
  objc_msgSend_automaticMaxAndMinDurationUnitsForTimeInterval_(MEMORY[0x277D80678], v13, v14, v15, v16, v56);
  v33 = objc_alloc(MEMORY[0x277D80678]);
  v34 = TSUDurationFormatterMinDurationUnitInUnits();
  v35 = TSUDurationFormatterMaxDurationUnitInUnits();
  v37 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v33, v36, 1, v34, v35, 1);
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v38, v37, 1, 0, 1, 1);
  objc_msgSend_setDurationTimeIntervalValue_(self, v39, v40, v41, v42, v56);

  return 1;
}

- (BOOL)_coerceToCurrencyFormat
{
  v144._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3, v4);
  v144._decimal.w[1] = v6;
  v10 = objc_msgSend_locale(self, v6, v7, v8, v9);
  v15 = objc_msgSend_currencyCode(v10, v11, v12, v13, v14);

  v20 = objc_msgSend_currentFormat(self, v16, v17, v18, v19);
  v25 = objc_msgSend_formatType(v20, v21, v22, v23, v24);
  v30 = 0;
  v31 = 0;
  if (v25 > 261)
  {
    if (v25 <= 269)
    {
      if ((v25 - 262) >= 2 && v25 != 267 && v25 != 269)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if (v25 != 270)
    {
      if (v25 != 271)
      {
        if (v25 != 274)
        {
          goto LABEL_33;
        }

        v32 = objc_msgSend_asCustomFormatWrapper(v20, v26, v27, v28, v29);
        objc_msgSend_underlyingDoubleValue(self, v33, v34, v35, v36);
        v41 = objc_msgSend_customFormatDataForValue_(v32, v37, v38, v39, v40);
        objc_msgSend_currencyCodeIndex(v41, v42, v43, v44, v45);
        v46 = TSUCurrencyCodeForIndex();
        if (!v46)
        {
          v46 = v15;
        }

        v47 = objc_alloc(MEMORY[0x277D80640]);
        v51 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v48, v46, v49, v50);
        v56 = objc_msgSend_showThousandsSeparator(v41, v52, v53, v54, v55);
        v61 = objc_msgSend_useAccountingStyle(v41, v57, v58, v59, v60);
        v30 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v47, v62, v51, 0, v56, v61, v46);

        goto LABEL_29;
      }

LABEL_21:
      v88 = objc_msgSend__rawValueForStringCoercion(self, v26, v27, v28, v29);
      v93 = objc_msgSend_locale(self, v89, v90, v91, v92);
      MEMORY[0x223D9F8D0](v143, v93);

      TSUUnivNumberParser::parseAsNumber(v143, v88);
      if (v141 == -999 || (TSUDecimal::operator=(), v144 = v139, (TSUDecimal::isInf(&v144) & 1) != 0) || (TSUDecimal::isNaN(&v144) & 1) != 0)
      {
        v30 = 0;
        v98 = 0;
      }

      else
      {
        if (v141 == 1)
        {
          v125 = objc_msgSend_locale(self, v94, v95, v96, v97);
          v129 = objc_msgSend_currencyCodeForCurrencySymbol_(v125, v126, v142, v127, v128);

          LODWORD(v125) = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v130, v129, v131, v132);
          v133 = objc_alloc(MEMORY[0x277D80640]);
          v135 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v133, v134, v125, 0, 0, 0, v129);
        }

        else
        {
          v136 = MEMORY[0x277D80680];
          v129 = objc_msgSend_locale(self, v94, v95, v96, v97);
          v135 = objc_msgSend_defaultFormatWithFormatType_locale_(v136, v137, 257, v129, v138);
        }

        v30 = v135;

        v98 = 1;
      }

      MEMORY[0x223D9F890](v140);

      if ((v98 & 1) == 0)
      {
        v31 = 0;
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v32 = objc_msgSend_asCustomFormatWrapper(v20, v26, v27, v28, v29);
    objc_msgSend_underlyingDoubleValue(self, v99, v100, v101, v102);
    v41 = objc_msgSend_customFormatDataForValue_(v32, v103, v104, v105, v106);
    v107 = objc_alloc(MEMORY[0x277D80640]);
    v111 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v108, v15, v109, v110);
    v116 = objc_msgSend_showThousandsSeparator(v41, v112, v113, v114, v115);
    v87 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v107, v117, v111, 0, v116, 0, v15);
LABEL_28:
    v30 = v87;
LABEL_29:

    goto LABEL_30;
  }

  if (v25 <= 257)
  {
    if (v25 == 1)
    {
      goto LABEL_30;
    }

    if (v25 != 256)
    {
      goto LABEL_33;
    }

LABEL_20:
    v63 = objc_alloc(MEMORY[0x277D80640]);
    v67 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v64, v15, v65, v66);
    v32 = objc_msgSend_asNumberFormat(v20, v68, v69, v70, v71);
    v76 = objc_msgSend_negativeStyle(v32, v72, v73, v74, v75);
    v41 = objc_msgSend_asNumberFormat(v20, v77, v78, v79, v80);
    v85 = objc_msgSend_showThousandsSeparator(v41, v81, v82, v83, v84);
    v87 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v63, v86, v67, v76, v85, 0, v15);
    goto LABEL_28;
  }

  if (v25 == 258)
  {
    goto LABEL_20;
  }

  if (v25 != 259)
  {
    if (v25 != 260)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

LABEL_30:
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v26, v30, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v118, v119, v120, v121))
  {
    objc_msgSend_setCurrencyDecimalValue_(self, v122, v144._decimal.w[0], v144._decimal.w[1], v123);
  }

  v31 = 1;
LABEL_33:

  return v31;
}

- (BOOL)_coerceToCustomNumberishFormat:(unsigned int)a3
{
  v5 = *&a3;
  v40._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, *&a3, v3, v4);
  v40._decimal.w[1] = v7;
  v11 = objc_msgSend_formatType(self, v7, v8, v9, v10);
  if ((v11 - 256) > 0x12)
  {
    goto LABEL_13;
  }

  if (((1 << v11) & 0x478CF) == 0)
  {
    if (((1 << v11) & 0x8010) != 0)
    {
      v29 = objc_msgSend__rawValueForStringCoercion(self, v12, v13, v14, v15);
      v34 = objc_msgSend_locale(self, v30, v31, v32, v33);
      MEMORY[0x223D9F8D0](v39, v34);

      TSUUnivNumberParser::parseAsNumber(v39, v29);
      if (v38 == -999 || (TSUDecimal::operator=(), v40 = v36, (TSUDecimal::isInf(&v40) & 1) != 0))
      {
        v35 = 0;
      }

      else
      {
        v35 = TSUDecimal::isNaN(&v40) ^ 1;
      }

      MEMORY[0x223D9F890](v37);

      if (v35)
      {
        goto LABEL_3;
      }

      return 0;
    }

LABEL_13:
    if (v11 == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_3:
  v16 = MEMORY[0x277D80680];
  v17 = objc_msgSend_locale(self, v12, v13, v14, v15);
  v20 = objc_msgSend_defaultFormatWithFormatType_locale_(v16, v18, v5, v17, v19);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v21, v20, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v22, v23, v24, v25))
  {
    if (v5 == 274)
    {
      objc_msgSend_setCurrencyDecimalValue_(self, v26, v40._decimal.w[0], v40._decimal.w[1], v27);
    }

    else
    {
      objc_msgSend_setNumberDecimalValue_(self, v26, v40._decimal.w[0], v40._decimal.w[1], v27);
    }
  }

  return 1;
}

- (BOOL)_coerceToCustomDateTimeFormat
{
  v10 = objc_msgSend_formatType(self, a2, v2, v3, v4);
  v11 = 0;
  result = 0;
  if (v10 <= 270)
  {
    if (v10 != 260)
    {
      if (v10 != 261)
      {
        return result;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v10 != 272)
  {
    if (v10 != 271)
    {
      return result;
    }

LABEL_7:
    v13 = objc_msgSend__rawValueForStringCoercion(self, v6, v7, v8, v9);
    v18 = objc_msgSend_locale(self, v14, v15, v16, v17);
    v19 = TSUCreateDateFromString();

    v11 = v19;
    if (!v19)
    {
      return 0;
    }
  }

LABEL_8:
  v20 = MEMORY[0x277D80680];
  v21 = objc_msgSend_locale(self, v6, v7, v8, v9);
  v24 = objc_msgSend_defaultFormatWithFormatType_locale_(v20, v22, 272, v21, v23);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v25, v24, 1, 0, 1, 1);
  if (v11)
  {
    objc_msgSend_setDateValue_(self, v26, v11, v27, v28);
  }

  return 1;
}

- (BOOL)_coerceToCustomTextFormat
{
  v6 = objc_msgSend_valueType(self, a2, v2, v3, v4);
  v11 = objc_msgSend_formatType(self, v7, v8, v9, v10);
  if ((v11 - 256) > 0x12)
  {
    goto LABEL_13;
  }

  if (((1 << v11) & 0x578EF) != 0)
  {
    goto LABEL_3;
  }

  if (v11 == 260)
  {
    if (v6 != 9)
    {
LABEL_3:
      v16 = objc_msgSend_formattedValue(self, v12, v13, v14, v15);
      if (!v16)
      {
        return v16;
      }

      goto LABEL_4;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_5;
  }

  if (v11 != 271)
  {
LABEL_13:
    if (v11 != 1)
    {
      LOBYTE(v16) = 0;
      return v16;
    }

    goto LABEL_3;
  }

  if (v6 == 9)
  {
    goto LABEL_16;
  }

  v16 = objc_msgSend_stringValue(self, v12, v13, v14, v15);
LABEL_4:
  v17 = v16;
LABEL_5:
  v18 = MEMORY[0x277D80680];
  v19 = objc_msgSend_locale(self, v12, v13, v14, v15);
  v22 = objc_msgSend_defaultFormatWithFormatType_locale_(v18, v20, 271, v19, v21);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v23, v22, 1, 0, 1, 1);
  if (v17)
  {
    objc_msgSend_setStringValue_(self, v24, v17, v25, v26);
  }

  LOBYTE(v16) = 1;
  return v16;
}

- (BOOL)_coerceToTextFormat
{
  v6 = objc_msgSend_valueType(self, a2, v2, v3, v4);
  v11 = objc_msgSend_formatType(self, v7, v8, v9, v10);
  if ((v11 - 256) > 0x12)
  {
    goto LABEL_12;
  }

  if (((1 << v11) & 0x570EF) != 0)
  {
LABEL_3:
    v16 = objc_msgSend_formattedValue(self, v12, v13, v14, v15);
    v17 = v16;
    if (!v16)
    {
      return v16;
    }

    goto LABEL_4;
  }

  if (v11 == 267)
  {
    v35._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, v12, v13, v14, v15);
    v35._decimal.w[1] = v27;
    TSUDecimal::doubleValue(&v35);
    v29 = v28;
    v17 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v30, &stru_2834BADA0, v31, v32);
    if (v29 > 0.0)
    {
      v33 = 0.0;
      do
      {
        objc_msgSend_appendString_(v17, v12, @"*", v14, v15);
        v33 = v33 + 1.0;
      }

      while (v33 < v29);
    }

    goto LABEL_4;
  }

  if (v11 != 271)
  {
LABEL_12:
    if (v11 != 1)
    {
      LOBYTE(v16) = 0;
      return v16;
    }

    goto LABEL_3;
  }

  if (v6 == 9)
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_msgSend_stringValue(self, v12, v13, v14, v15);
  }

LABEL_4:
  v18 = MEMORY[0x277D80680];
  v19 = objc_msgSend_locale(self, v12, v13, v14, v15);
  v22 = objc_msgSend_defaultFormatWithFormatType_locale_(v18, v20, 260, v19, v21);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v23, v22, 1, 0, 1, 1);
  if (v17)
  {
    objc_msgSend_setStringValue_(self, v24, v17, v25, v26);
  }

  LOBYTE(v16) = 1;
  return v16;
}

- (BOOL)_coerceToRatingFormat
{
  v49._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3, v4);
  v49._decimal.w[1] = v6;
  v10 = objc_msgSend_formatType(self, v6, v7, v8, v9);
  if ((v10 - 256) > 0x12)
  {
    goto LABEL_18;
  }

  if (((1 << v10) & 0x460CF) == 0)
  {
    if (((1 << v10) & 0x8010) != 0)
    {
      v28 = objc_msgSend__rawValueForStringCoercion(self, v11, v12, v13, v14);
      v33 = objc_msgSend_locale(self, v29, v30, v31, v32);
      MEMORY[0x223D9F8D0](v48, v33);

      TSUUnivNumberParser::parseAsNumber(v48, v28);
      if (v47 == -999 || (TSUDecimal::operator=(), v49 = v45, (TSUDecimal::isInf(&v49) & 1) != 0) || (TSUDecimal::isNaN(&v49) & 1) != 0)
      {
        v38 = objc_msgSend_length(v28, v34, v35, v36, v37);
        if (v38 >= 5)
        {
          v42 = 5;
        }

        else
        {
          v42 = v38;
        }

        if (v38)
        {
          v43 = 0;
          while (objc_msgSend_characterAtIndex_(v28, v39, v43, v40, v41) == 42)
          {
            if (v42 == ++v43)
            {
              goto LABEL_20;
            }
          }

          v44 = 0;
LABEL_23:
          MEMORY[0x223D9F890](v46);

          if (v44)
          {
            goto LABEL_3;
          }

          return 0;
        }

LABEL_20:
        TSUDecimal::operator=();
      }

      else
      {
        TSUDecimal::operator=();
        if ((TSUDecimal::operator<=() & 1) == 0 || (TSUDecimal::operator=(), TSUDecimal::operator<()))
        {
          TSUDecimal::operator=();
        }
      }

      v44 = 1;
      goto LABEL_23;
    }

LABEL_18:
    if (v10 == 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_3:
  v15 = MEMORY[0x277D80680];
  v16 = objc_msgSend_locale(self, v11, v12, v13, v14);
  v19 = objc_msgSend_defaultFormatWithFormatType_locale_(v15, v17, 267, v16, v18);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v20, v19, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v21, v22, v23, v24))
  {
    objc_msgSend_setNumberDecimalValue_(self, v25, v49._decimal.w[0], v49._decimal.w[1], v26);
  }

  return 1;
}

- (BOOL)_coerceToCheckboxFormat
{
  v88._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3, v4);
  v88._decimal.w[1] = v6;
  TSUDecimal::operator=();
  v7 = TSUDecimal::operator==() ^ 1;
  v12 = objc_msgSend_formatType(self, v8, v9, v10, v11);
  if ((v12 - 256) > 0x12)
  {
    goto LABEL_7;
  }

  if (((1 << v12) & 0x4684F) != 0)
  {
LABEL_3:
    v17 = MEMORY[0x277D80680];
    v18 = objc_msgSend_locale(self, v13, v14, v15, v16);
    v21 = objc_msgSend_defaultFormatWithFormatType_locale_(v17, v19, 263, v18, v20);

    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v22, v21, 1, 0, 1, 1);
    objc_msgSend_setBoolValue_(self, v23, v7, v24, v25);

    return 1;
  }

  if (((1 << v12) & 0x8010) != 0)
  {
    v27 = objc_msgSend_stringValue(self, v13, v14, v15, v16);
    v32 = v27;
    if (v27)
    {
      v33 = v27;
    }

    else
    {
      v34 = objc_msgSend_richTextValue(self, v28, v29, v30, v31);
      v39 = objc_msgSend_string(v34, v35, v36, v37, v38);

      v33 = v39;
    }

    v44 = objc_msgSend_uppercaseString(v33, v40, v41, v42, v43);
    v49 = objc_msgSend_locale(self, v45, v46, v47, v48);
    v54 = objc_msgSend_trueString(v49, v50, v51, v52, v53);
    isEqual = objc_msgSend_isEqual_(v44, v55, v54, v56, v57);

    if (isEqual & 1) != 0 || (objc_msgSend_locale(self, v59, v60, v61, v62), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend_falseString(v63, v64, v65, v66, v67), v68 = objc_claimAutoreleasedReturnValue(), v72 = objc_msgSend_isEqual_(v44, v69, v68, v70, v71), v68, v63, (v72))
    {

      v7 = isEqual;
      goto LABEL_3;
    }

    v77 = objc_msgSend__rawValueForStringCoercion(self, v73, v74, v75, v76);
    v82 = objc_msgSend_locale(self, v78, v79, v80, v81);
    MEMORY[0x223D9F8D0](v87, v82);

    TSUUnivNumberParser::parseAsNumber(v87, v77);
    if (v86 == -999 || (TSUDecimal::operator=(), v88 = v84, (TSUDecimal::isInf(&v88) & 1) != 0) || (TSUDecimal::isNaN(&v88) & 1) != 0)
    {
      v83 = 0;
    }

    else
    {
      v7 = TSUDecimal::isZero(&v88) ^ 1;
      v83 = 1;
    }

    MEMORY[0x223D9F890](v85);

    if (v83)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_7:
    if (v12 == 1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

- (BOOL)_coerceToBooleanFormat
{
  v91._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, a2, v2, v3, v4);
  v91._decimal.w[1] = v6;
  TSUDecimal::operator=();
  v7 = TSUDecimal::operator==();
  v16 = objc_msgSend_formatType(self, v8, v9, v10, v11);
  result = 0;
  v18 = v16 - 256;
  if (v18 <= 0x12)
  {
    v19 = v7 ^ 1u;
    v20 = 1 << v18;
    if ((v20 & 0x468CF) != 0)
    {
      isEqual = v7 ^ 1u;
LABEL_4:
      v22 = MEMORY[0x277D80680];
      v23 = objc_msgSend_locale(self, v12, v13, v14, v15);
      v26 = objc_msgSend_defaultFormatWithFormatType_locale_(v22, v24, 1, v23, v25);

      objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v27, v26, 1, 0, 1, 1);
      objc_msgSend_setBoolValue_(self, v28, isEqual, v29, v30);

      return 1;
    }

    if ((v20 & 0x8010) != 0)
    {
      v31 = objc_msgSend_stringValue(self, v12, v13, v14, v15);
      v36 = v31;
      if (v31)
      {
        v37 = v31;
      }

      else
      {
        v38 = objc_msgSend_richTextValue(self, v32, v33, v34, v35);
        v43 = objc_msgSend_string(v38, v39, v40, v41, v42);

        v37 = v43;
      }

      v48 = objc_msgSend_uppercaseString(v37, v44, v45, v46, v47);
      v53 = objc_msgSend_locale(self, v49, v50, v51, v52);
      v58 = objc_msgSend_trueString(v53, v54, v55, v56, v57);
      isEqual = objc_msgSend_isEqual_(v48, v59, v58, v60, v61);

      if (isEqual & 1) != 0 || (objc_msgSend_locale(self, v62, v63, v64, v65), v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend_falseString(v66, v67, v68, v69, v70), v71 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend_isEqual_(v48, v72, v71, v73, v74), v71, v66, (v75))
      {
      }

      else
      {
        v80 = objc_msgSend__rawValueForStringCoercion(self, v76, v77, v78, v79);
        v85 = objc_msgSend_locale(self, v81, v82, v83, v84);
        MEMORY[0x223D9F8D0](v90, v85);

        TSUUnivNumberParser::parseAsNumber(v90, v80);
        if (v89 == -999 || (TSUDecimal::operator=(), v91 = v87, (TSUDecimal::isInf(&v91) & 1) != 0) || (TSUDecimal::isNaN(&v91) & 1) != 0)
        {
          v86 = 0;
        }

        else
        {
          v19 = TSUDecimal::isZero(&v91) ^ 1;
          v86 = 1;
        }

        MEMORY[0x223D9F890](v88);

        isEqual = v19;
        if (!v86)
        {
          return 0;
        }
      }

      goto LABEL_4;
    }
  }

  return result;
}

- (BOOL)_coerceToNumberFormatWithSeparatorFixing:(unsigned int)a3
{
  v5 = *&a3;
  v7 = objc_msgSend_stringValue(self, a2, *&a3, v3, v4);
  v12 = v7;
  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v14 = objc_msgSend_richTextValue(self, v8, v9, v10, v11);
    v19 = objc_msgSend_string(v14, v15, v16, v17, v18);

    v13 = v19;
  }

  v27 = objc_msgSend_locale(self, v20, v21, v22, v23);
  if (!v27)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTCell(CoercionPrivate) _coerceToNumberFormatWithSeparatorFixing:]", v25, v26);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v31, v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v34, v29, v33, 1385, 0, "Need to have a locale set here.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  if (TSUIsGroupingSeparatorUsedInNumericString())
  {
    v150 = objc_msgSend_groupingSeparator(v27, v39, v40, v41, v42);
    v151 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v13, v43, v150, &stru_2834BADA0, v44);
    v49 = objc_msgSend_copy(self, v45, v46, v47, v48);
    objc_msgSend_setStringValue_(v49, v50, v151, v51, v52);
    v59 = objc_msgSend_coerceToFormatType_usingSpares_(v49, v53, v5, 0, v54);
    if (v59)
    {
      v60 = objc_msgSend_currentFormat(v49, v55, v56, v57, v58);
      if (objc_msgSend_formatType(v60, v61, v62, v63, v64) == 256 || objc_msgSend_formatType(v60, v65, v66, v67, v68) == 258)
      {
        v148 = objc_alloc(MEMORY[0x277D806A0]);
        v77 = objc_msgSend_formatType(v60, v73, v74, v75, v76);
        v82 = objc_msgSend_asNumberFormat(v60, v78, v79, v80, v81);
        v87 = objc_msgSend_decimalPlaces(v82, v83, v84, v85, v86);
        v92 = objc_msgSend_asNumberFormat(v60, v88, v89, v90, v91);
        v97 = objc_msgSend_negativeStyle(v92, v93, v94, v95, v96);
        v99 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v148, v98, v77, v87, v97, 1);

        v60 = v99;
        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(v49, v100, v99, 1, 0, 1, 1);
      }

      else if (objc_msgSend_formatType(v60, v69, v70, v71, v72) == 257)
      {
        v146 = objc_alloc(MEMORY[0x277D80640]);
        v149 = objc_msgSend_asCurrencyFormat(v60, v105, v106, v107, v108);
        v145 = objc_msgSend_decimalPlaces(v149, v109, v110, v111, v112);
        v147 = objc_msgSend_asCurrencyFormat(v60, v113, v114, v115, v116);
        v121 = objc_msgSend_negativeStyle(v147, v117, v118, v119, v120);
        v144 = objc_msgSend_asCurrencyFormat(v60, v122, v123, v124, v125);
        v130 = objc_msgSend_accountingStyle(v144, v126, v127, v128, v129);
        v135 = objc_msgSend_asCurrencyFormat(v60, v131, v132, v133, v134);
        v140 = objc_msgSend_currencyCode(v135, v136, v137, v138, v139);
        v142 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v146, v141, v145, v121, 1, v130, v140);

        v60 = v142;
        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(v49, v143, v142, 1, 0, 1, 1);
      }

      objc_msgSend_copyToCell_(v49, v101, self, v102, v103);
    }
  }

  else
  {
    LOBYTE(v59) = 0;
  }

  return v59;
}

- (BOOL)_coerceTextCellToBestNumberFormatUsingLimitedParsing:(BOOL)a3 allowFractions:(BOOL)a4
{
  v5 = a4;
  v6 = a3;
  v8 = objc_msgSend_formatType(self, a2, a3, a4, v4);
  if (v8 == 271 || v8 == 260)
  {
    v13 = objc_msgSend_stringValue(self, v9, v10, v11, v12);
    v18 = v13;
    if (v13)
    {
      v338 = v13;
    }

    else
    {
      v20 = objc_msgSend_richTextValue(self, v14, v15, v16, v17);
      v338 = objc_msgSend_string(v20, v21, v22, v23, v24);
    }

    v29 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v25, v26, v27, v28);
    v33 = objc_msgSend_stringByTrimmingCharactersInSet_(v338, v30, v29, v31, v32);

    TSUDecimal::operator=();
    v38 = objc_msgSend_locale(self, v34, v35, v36, v37);
    MEMORY[0x223D9F8D0](v349, v38);

    TSUUnivNumberParser::parseAsNumber(v349, v33);
    if (*&v344[8] == -999 || (TSUDecimal::operator=(), v350 = v339, (TSUDecimal::isNaN(&v350) & 1) != 0) || (TSUDecimal::isInf(&v350) & 1) != 0)
    {
      v41 = 0;
      v337 = 0;
      v42 = 0;
LABEL_11:
      if (!objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v39, 269, 0, v40) || (objc_msgSend_numberFormat(self, v43, v44, v45, v46), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend_asBaseFormat(v47, v48, v49, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend_base(v52, v53, v54, v55, v56), TSUUnivNumberParser::parseAsNumber(v349, v33), *v344 = v339._decimal.w[0], *&v344[5] = *(v339._decimal.w + 5), objc_storeStrong(&v345, obj), objc_storeStrong(&v346, v341), objc_storeStrong(&v347, v342), objc_storeStrong(&v348, v343), MEMORY[0x223D9F890](&v339), v52, v47, *&v344[8] == -999) || (TSUDecimal::operator=(), v350 = v339, (TSUDecimal::isNaN(&v350) & 1) != 0) || (TSUDecimal::isInf(&v350) & 1) != 0 || (TSUDecimal::operator=(), !TSUDecimal::operator<=()))
      {
        if ((v42 & 1) == 0)
        {
          v19 = 0;
LABEL_79:
          MEMORY[0x223D9F890](v344);

          return v19 | v6;
        }
      }

      else
      {
        v41 = TSUFormatTypeFromTSUNumberValueType();
      }

      if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v43, 256, 1, v46))
      {
        v59 = 0;
        objc_msgSend_setNumberDecimalValue_(self, v57, v350._decimal.w[0], v350._decimal.w[1], v58);
LABEL_20:
        v19 = 1;
LABEL_78:

        goto LABEL_79;
      }

      if (v41 == 256 && objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v57, 257, 1, v58))
      {
        v59 = 0;
        objc_msgSend_setCurrencyDecimalValue_(self, v57, v350._decimal.w[0], v350._decimal.w[1], v58);
        goto LABEL_20;
      }

      objc_msgSend_setNumberDecimalValue_(self, v57, v350._decimal.w[0], v350._decimal.w[1], v58);
      if (v41 > 261)
      {
        if (v41 == 262)
        {
          if (!v5 || v6)
          {
            objc_msgSend_setStringValue_(self, v60, v338, v62, v63);
            v316 = MEMORY[0x277D80680];
            v321 = objc_msgSend_locale(self, v317, v318, v319, v320);
            v303 = objc_msgSend_defaultFormatWithFormatType_locale_(v316, v322, 260, v321, v323);

            objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v324, v303, 1, 0, 1, 1);
            v59 = 0;
            v19 = v6;
          }

          else
          {
            v299 = MEMORY[0x277D80680];
            v300 = objc_msgSend_locale(self, v60, v61, v62, v63);
            v303 = objc_msgSend_defaultFormatWithFormatType_locale_(v299, v301, 262, v300, v302);

            v19 = 1;
            objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v304, v303, 1, 0, 1, 1);
            v59 = 0;
          }

          goto LABEL_77;
        }

        if (v41 == 269)
        {
          objc_msgSend_defaultHexadecimalFormat(MEMORY[0x277D80620], v60, v61, v62, v63);
          v59 = v19 = 1;
          objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v184, v59, 1, 0, 1, 1);
          goto LABEL_78;
        }
      }

      else if ((v41 - 258) < 2 || v41 == 256)
      {
        v334 = objc_msgSend_locale(self, v60, v61, v62, v63);
        if (!v334)
        {
          v67 = MEMORY[0x277D81150];
          v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TSTCell(CoercionPrivate) _coerceTextCellToBestNumberFormatUsingLimitedParsing:allowFractions:]", v65, v66);
          v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v70, v71);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v73, v68, v72, 1541, 0, "Need to have a locale set here.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
        }

        v78 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v64, v41, v334, v66);
        v83 = objc_msgSend_asNumberFormat(v78, v79, v80, v81, v82);
        v88 = objc_msgSend_negativeStyle(v83, v84, v85, v86, v87);

        v93 = objc_msgSend_asNumberFormat(v78, v89, v90, v91, v92);
        v98 = objc_msgSend_showThousandsSeparator(v93, v94, v95, v96, v97);

        if ((TSUDecimal::isInf(&v350) & 1) != 0 || (TSUDecimal::isNaN(&v350) & 1) != 0 || !TSUParsedNumber::hasTrailingZeroDecimalPlaces(v344))
        {
          v100 = 253;
        }

        else
        {
          v99 = TSUParsedNumber::numberOfDecimalPlaces(v344);
          if (v99 >= 0x1F)
          {
            v100 = 253;
          }

          else
          {
            v100 = v99;
          }
        }

        v175 = TSUIsGroupingSeparatorUsedInNumericString();
        v179 = objc_msgSend_characterAtIndex_(v33, v176, 0, v177, v178);
        v180 = objc_alloc(MEMORY[0x277D806A0]);
        if (v179 == 40)
        {
          v182 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v180, v181, v41, v100, 2, (v175 | v98) & 1);
        }

        else
        {
          v182 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v180, v181, v41, v100, v88, (v175 | v98) & 1);
        }

        v59 = v182;

        v19 = 1;
        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v183, v59, 1, 0, 1, 1);
        goto LABEL_76;
      }

      v305 = MEMORY[0x277D81150];
      v306 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSTCell(CoercionPrivate) _coerceTextCellToBestNumberFormatUsingLimitedParsing:allowFractions:]", v62, v63);
      v310 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v307, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v308, v309);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v305, v311, v306, v310, 1588, 0, "unexpected format type");

      v59 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v312, v313, v314, v315);
      goto LABEL_20;
    }

    v41 = TSUFormatTypeFromTSUNumberValueType();
    v105 = objc_msgSend_locale(self, v101, v102, v103, v104);
    v337 = objc_msgSend_currencyCodeForCurrencySymbol_(v105, v106, v346, v107, v108);

    if (v41 != 257)
    {
      v42 = 1;
      goto LABEL_11;
    }

    objc_msgSend_setCurrencyDecimalValue_(self, v39, v350._decimal.w[0], v350._decimal.w[1], v40);
    if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v109, 257, 1, v110))
    {
      v115 = objc_msgSend_formatOfType_allowMismatchedSpare_(self, v111, 257, 1, v114);
      v124 = objc_msgSend_asCurrencyFormat(v115, v116, v117, v118, v119);
      if (v124)
      {
        v125 = objc_msgSend_asCurrencyFormat(v115, v120, v121, v122, v123);
        v130 = objc_msgSend_currencyCode(v125, v126, v127, v128, v129);
        isEqualToString = objc_msgSend_isEqualToString_(v130, v131, v337, v132, v133);

        if ((isEqualToString & 1) == 0)
        {
          v332 = objc_alloc(MEMORY[0x277D80640]);
          v335 = objc_msgSend_asCurrencyFormat(v115, v135, v136, v137, v138);
          v330 = objc_msgSend_decimalPlaces(v335, v139, v140, v141, v142);
          v147 = objc_msgSend_asCurrencyFormat(v115, v143, v144, v145, v146);
          v152 = objc_msgSend_negativeStyle(v147, v148, v149, v150, v151);
          v157 = objc_msgSend_asCurrencyFormat(v115, v153, v154, v155, v156);
          v162 = objc_msgSend_showThousandsSeparator(v157, v158, v159, v160, v161);
          v167 = objc_msgSend_asCurrencyFormat(v115, v163, v164, v165, v166);
          v172 = objc_msgSend_accountingStyle(v167, v168, v169, v170, v171);
          v174 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v332, v173, v330, v152, v162, v172, v337);

          v115 = v174;
        }
      }

      v19 = 1;
      v59 = v115;
      objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v120, v115, 1, 1, 1, 1);
      goto LABEL_78;
    }

    v185 = MEMORY[0x277D80680];
    v186 = objc_msgSend_locale(self, v111, v112, v113, v114);
    v59 = objc_msgSend_defaultFormatWithFormatType_locale_(v185, v187, 257, v186, v188);

    v192 = v337;
    if (v337)
    {
      v193 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v189, v337, v190, v191);
      v336 = objc_alloc(MEMORY[0x277D80640]);
      v198 = objc_msgSend_asCurrencyFormat(v59, v194, v195, v196, v197);
      v203 = objc_msgSend_negativeStyle(v198, v199, v200, v201, v202);
      v208 = objc_msgSend_asCurrencyFormat(v59, v204, v205, v206, v207);
      v213 = objc_msgSend_showThousandsSeparator(v208, v209, v210, v211, v212);
      v218 = objc_msgSend_asCurrencyFormat(v59, v214, v215, v216, v217);
      v223 = objc_msgSend_accountingStyle(v218, v219, v220, v221, v222);
      v225 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v336, v224, v193, v203, v213, v223, v337);

      v59 = v225;
    }

    v226 = objc_msgSend_asCurrencyFormat(v59, v189, v192, v190, v191);
    v231 = objc_msgSend_decimalPlaces(v226, v227, v228, v229, v230);

    v236 = objc_msgSend_asCurrencyFormat(v59, v232, v233, v234, v235);
    v241 = objc_msgSend_negativeStyle(v236, v237, v238, v239, v240);

    v246 = objc_msgSend_asCurrencyFormat(v59, v242, v243, v244, v245);
    v251 = objc_msgSend_showThousandsSeparator(v246, v247, v248, v249, v250);

    v256 = objc_msgSend_asCurrencyFormat(v59, v252, v253, v254, v255);
    v261 = objc_msgSend_accountingStyle(v256, v257, v258, v259, v260);

    v266 = objc_msgSend_asCurrencyFormat(v59, v262, v263, v264, v265);
    objc_msgSend_currencyCode(v266, v267, v268, v269, v270);
    v331 = v241;
    v329 = __PAIR64__(v251, v261);
    v334 = v333 = v231;

    v278 = objc_msgSend_locale(self, v271, v272, v273, v274);
    if (!v278)
    {
      v279 = MEMORY[0x277D81150];
      v280 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v275, "[TSTCell(CoercionPrivate) _coerceTextCellToBestNumberFormatUsingLimitedParsing:allowFractions:]", v276, v277);
      v284 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v281, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v282, v283);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v279, v285, v280, v284, 1495, 0, "Need to have a locale set here.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v286, v287, v288, v289);
    }

    v290 = TSUIsGroupingSeparatorUsedInNumericString();
    v294 = objc_msgSend_characterAtIndex_(v33, v291, 0, v292, v293);
    if (v294 == 40)
    {
      v296 = 2;
    }

    else
    {
      v296 = v331;
    }

    if (v6)
    {
      if ((TSUDecimal::isInf(&v350) & 1) != 0 || (TSUDecimal::isNaN(&v350) & 1) != 0 || !TSUParsedNumber::hasTrailingZeroDecimalPlaces(v344))
      {
        v298 = 253;
      }

      else
      {
        v297 = TSUParsedNumber::numberOfDecimalPlaces(v344);
        if (v297 >= 0x1F)
        {
          v298 = 253;
        }

        else
        {
          v298 = v297;
        }
      }

      v333 = v298;
    }

    else if (!((v294 == 40) | v290 & 1))
    {
      goto LABEL_75;
    }

    v325 = objc_alloc(MEMORY[0x277D80640]);
    v327 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v325, v326, v333, v296, (v290 | BYTE4(v329)) & 1, v329, v334);

    v59 = v327;
LABEL_75:
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v295, v59, 1, 0, 1, 1, v329);

    v19 = 1;
LABEL_76:
    v303 = v334;
LABEL_77:

    goto LABEL_78;
  }

  v19 = 0;
  return v19 | v6;
}

- (BOOL)_parseFormulaFromString:(id)a3 tableInfo:(id)a4 cellID:(TSUCellCoord)a5
{
  v8 = a3;
  v13 = a4;
  if (v13 && (objc_msgSend_sharedTableConfiguration(TSTConfiguration, v9, v10, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_supportsFormulaEditing(v14, v15, v16, v17, v18), v14, (v19 & 1) != 0))
  {
    v28 = objc_msgSend_calcEngine(v13, v20, v21, v22, v23);
    if ((v28 || (objc_msgSend_documentRoot(v13, v24, v25, v26, v27), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend_calculationEngine(v29, v30, v31, v32, v33), v28 = objc_claimAutoreleasedReturnValue(), v29, v28)) && objc_msgSend_tst_hasFormulaEqualsPrefix(v8, v24, v25, v26, v27) && (objc_msgSend_tst_isEqualToFormulaEqualsString(v8, v34, v35, v36, v37) & 1) == 0)
    {
      v94 = objc_msgSend_context(v13, v38, v39, v40, v41);
      v43 = objc_alloc(MEMORY[0x277D80F28]);
      v93 = objc_msgSend_substringFromIndex_(v8, v44, 1, v45, v46);
      v92 = objc_msgSend_documentRoot(v13, v47, v48, v49, v50);
      v55 = objc_msgSend_stylesheet(v92, v51, v52, v53, v54);
      v59 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EC8], v56, v94, v57, v58);
      v63 = objc_msgSend_defaultStyleWithContext_(MEMORY[0x277D80EA0], v60, v94, v61, v62);
      v65 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v43, v64, v94, v93, 3, v55, v59, v63, 0, 0);

      TSTParser::TSTParser(v96, v28, v65, 0);
      v70 = objc_msgSend_translator(v13, v66, v67, v68, v69);
      v74 = objc_msgSend_chromeCellCoordForViewCellCoord_(v70, v71, *&a5, v72, v73);

      v95._locale = v74;
      TSTParser::parse(v96, v13, &v95);
      if (objc_claimAutoreleasedReturnValue())
      {
        __C();
      }

      v79 = objc_msgSend_documentRoot(v13, v75, v76, v77, v78);
      v84 = objc_msgSend_stylesheet(v79, v80, v81, v82, v83);

      v87 = objc_msgSend_i_copyIntoContext_stylesheet_(v65, v85, v94, v84, v86);
      objc_msgSend_setFormulaSyntaxError_(self, v88, v87, v89, v90);

      TSTParser::~TSTParser(v96);
      v42 = 1;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (BOOL)removeControlCellSpec
{
  hasControl = objc_msgSend_hasControl(self, a2, v2, v3, v4);
  if (hasControl)
  {
    objc_msgSend_setCellSpec_(self, v6, 0, v7, v8);
    v14 = objc_msgSend_formatType(self, v10, v11, v12, v13);
    switch(v14)
    {
      case 1:
        goto LABEL_5;
      case 267:
        v22 = MEMORY[0x277D80680];
        v19 = objc_msgSend_locale(self, v15, v16, v17, v18);
        v25 = objc_msgSend_defaultFormatWithFormatType_locale_(v22, v23, 256, v19, v24);
        objc_msgSend_setCurrentFormat_isExplicit_(self, v26, v25, 0, v27);

        goto LABEL_7;
      case 263:
LABEL_5:
        v19 = objc_msgSend_BOOLeanFormat(MEMORY[0x277D80680], v15, v16, v17, v18);
        objc_msgSend_setCurrentFormat_isExplicit_(self, v20, v19, 0, v21);
LABEL_7:

        break;
    }
  }

  return hasControl;
}

- (BOOL)removeControlFormatSpares
{
  hasFormatOfType_allowMismatchedSpare = objc_msgSend_hasFormatOfType_allowMismatchedSpare_(self, a2, 267, 0, v2);
  if (hasFormatOfType_allowMismatchedSpare)
  {
    objc_msgSend_clearFormatOfType_(self, v4, 267, v5, v6);
  }

  if (objc_msgSend_hasFormatOfType_allowMismatchedSpare_(self, v4, 263, 0, v6))
  {
    objc_msgSend_clearFormatOfType_(self, v8, 263, v9, v10);
    LOBYTE(hasFormatOfType_allowMismatchedSpare) = 1;
  }

  return hasFormatOfType_allowMismatchedSpare;
}

- (BOOL)coerceToFormatType:(unsigned int)a3 usingSpares:(BOOL)a4
{
  v5 = *&a3;
  if (a3 - 104 >= 5 && a3 - 264 > 2)
  {
    v20 = a4;
    if (a4 && objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, a2, *&a3, 0, v4))
    {
      v22 = objc_msgSend_formatOfType_allowMismatchedSpare_(self, a2, v5, 0, v4);
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    if ((objc_msgSend_valueType(self, a2, *&a3, a4, v4) & 0xFFFFFFF7) != 0)
    {
      if (objc_msgSend_hasMismatchedFormatAndValue(self, v24, v25, v26, v27))
      {
        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTCell(Coercion) coerceToFormatType:usingSpares:]", v30, v31);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v35, v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v38, v33, v37, 1717, 0, "Attempting to coerce a cell with mismatched format and value types");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42);
        objc_msgSend_setDefaultFormatForValue(self, v43, v44, v45, v46);
      }

      v18 = 0;
      switch(v5)
      {
        case 256:
          v47 = objc_msgSend__coerceToDecimalFormat(self, v28, v29, v30, v31);
          break;
        case 257:
          v47 = objc_msgSend__coerceToCurrencyFormat(self, v28, v29, v30, v31);
          break;
        case 258:
          v47 = objc_msgSend__coerceToPercentageFormat(self, v28, v29, v30, v31);
          break;
        case 259:
          v47 = objc_msgSend__coerceToScientificFormat(self, v28, v29, v30, v31);
          break;
        case 260:
          v47 = objc_msgSend__coerceToTextFormat(self, v28, v29, v30, v31);
          break;
        case 261:
          v47 = objc_msgSend__coerceToDateTimeFormat(self, v28, v29, v30, v31);
          break;
        case 262:
          v47 = objc_msgSend__coerceToFractionFormat(self, v28, v29, v30, v31);
          break;
        case 263:
          v47 = objc_msgSend__coerceToCheckboxFormat(self, v28, v29, v30, v31);
          break;
        case 264:
        case 265:
        case 266:
        case 273:
          goto LABEL_19;
        case 267:
          v47 = objc_msgSend__coerceToRatingFormat(self, v28, v29, v30, v31);
          break;
        case 268:
          v47 = objc_msgSend__coerceToDurationFormat(self, v28, v29, v30, v31);
          break;
        case 269:
          v47 = objc_msgSend_coerceToBaseFormat_(self, v28, 0, v30, v31);
          break;
        case 270:
          v47 = objc_msgSend__coerceToCustomNumberFormat(self, v28, v29, v30, v31);
          break;
        case 271:
          v47 = objc_msgSend__coerceToCustomTextFormat(self, v28, v29, v30, v31);
          break;
        case 272:
          v47 = objc_msgSend__coerceToCustomDateTimeFormat(self, v28, v29, v30, v31);
          break;
        case 274:
          v47 = objc_msgSend__coerceToCustomCurrencyFormat(self, v28, v29, v30, v31);
          break;
        default:
          if (v5 != 1)
          {
            goto LABEL_19;
          }

          v47 = objc_msgSend__coerceToBooleanFormat(self, v28, v29, v30, v31);
          break;
      }
    }

    else
    {
      v47 = objc_msgSend__coerceEmptyCellToFormat_(self, v24, v5, v26, v27);
    }

    v18 = v47;
    if ((v23 & v20 & v47) == 1)
    {
      if (objc_msgSend_formatType(v22, v48, v49, v50, v51) == 268)
      {
        v56 = objc_msgSend_asDurationFormat(v22, v52, v53, v54, v55);
        objc_msgSend_durationTimeIntervalValue(self, v57, v58, v59, v60);
        v65 = objc_msgSend_formatByFixingUnitsIfNecessaryForTimeInterval_(v56, v61, v62, v63, v64);

        v22 = v65;
      }

      v18 = 1;
      objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v52, v22, 1, 1, 1, 1);
    }

LABEL_19:
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell(Coercion) coerceToFormatType:usingSpares:]", a4, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v9, v10);
    v12 = NSStringForTSUFormatType();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v7, v11, 1695, 0, "Illegal format type for coercion: %{public}@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16, v17);
    return 0;
  }

  return v18;
}

- (BOOL)coerceToBaseFormat:(id)a3
{
  v4 = a3;
  v62._decimal.w[0] = objc_msgSend__rawValueForDecimalCoercion(self, v5, v6, v7, v8);
  v62._decimal.w[1] = v9;
  v13 = objc_msgSend_formatType(self, v9, v10, v11, v12);
  if ((v13 - 256) > 0x12)
  {
    goto LABEL_16;
  }

  if (((1 << v13) & 0x448CF) == 0)
  {
    if (((1 << v13) & 0x8010) != 0)
    {
      v37 = objc_msgSend__rawValueForStringCoercion(self, v14, v15, v16, v17);
      if (!v4 && objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v33, 269, 0, v36))
      {
        v38 = objc_msgSend_numberFormat(self, v33, v34, v35, v36);
        v4 = objc_msgSend_asBaseFormat(v38, v39, v40, v41, v42);
      }

      if (v4)
      {
        objc_msgSend_base(v4, v33, v34, v35, v36);
      }

      v43 = objc_msgSend_locale(self, v33, v34, v35, v36);
      MEMORY[0x223D9F8D0](v61, v43);

      TSUUnivNumberParser::parseAsNumber(v61, v37);
      if (*&v56[8] == -999)
      {
        TSUUnivNumberParser::parseAsNumber(v61, v37);
        *v56 = v51._decimal.w[0];
        *&v56[5] = *(v51._decimal.w + 5);
        objc_storeStrong(&v57, obj);
        objc_storeStrong(&v58, v53);
        objc_storeStrong(&v59, v54);
        objc_storeStrong(&v60, v55);
        MEMORY[0x223D9F890](&v51);
        if (*&v56[8] != -999)
        {
          TSUDecimal::operator=();
          v62 = v51;
          if ((TSUDecimal::isInf(&v62) & 1) == 0)
          {
            v44 = TSUDecimal::isNaN(&v62) ^ 1;
            goto LABEL_24;
          }
        }
      }

      else
      {
        TSUDecimal::operator=();
        v62 = v51;
        if ((TSUDecimal::isInf(&v62) & 1) == 0)
        {
          isNaN = TSUDecimal::isNaN(&v62);
          v44 = isNaN ^ 1;
          if (v4)
          {
            v50 = isNaN;
          }

          else
          {
            v50 = 1;
          }

          if ((v50 & 1) == 0 && (objc_msgSend_baseUseMinusSign(v4, v46, v47, v48, v49) & 1) == 0 && (v56[1] & 0x40) == 0)
          {
            TSUDecimal::reinterpretAsTwosComplement(&v62);
          }

LABEL_24:
          MEMORY[0x223D9F890](v56);

          if (v44)
          {
            goto LABEL_3;
          }

          goto LABEL_25;
        }
      }

      v44 = 0;
      goto LABEL_24;
    }

LABEL_16:
    if (v13 == 1)
    {
      goto LABEL_3;
    }

LABEL_25:
    v31 = 0;
    v18 = v4;
    goto LABEL_9;
  }

LABEL_3:
  v18 = v4;
  if (v4)
  {
    v20 = v4;
  }

  else
  {
    v21 = MEMORY[0x277D80680];
    v22 = objc_msgSend_locale(self, v14, v15, v16, v17);
    v20 = objc_msgSend_defaultFormatWithFormatType_locale_(v21, v23, 269, v22, v24);
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v19, v20, 1, 0, 1, 1);
  if (objc_msgSend_valueType(self, v25, v26, v27, v28))
  {
    objc_msgSend_setNumberDecimalValue_(self, v29, v62._decimal.w[0], v62._decimal.w[1], v30);
  }

  v31 = 1;
LABEL_9:

  return v31;
}

- (void)parseContentOrFormulaFromString:(id)a3 tableInfo:(id)a4 cellID:(TSUCellCoord)a5 flags:(unint64_t)a6
{
  v9 = a3;
  v373 = a4;
  v14 = objc_msgSend_locale(self, v10, v11, v12, v13);

  if (!v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTCell(Coercion) parseContentOrFormulaFromString:tableInfo:cellID:flags:]", v17, v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell_CoercionEngine.mm", v22, v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v24, 1898, 0, "Cell must have its locale set in parseContentOrFormulaFromString:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  if ((a6 & 2) != 0 && (objc_msgSend_currentFormatIsExplicit(self, v15, v16, v17, v18) & 1) == 0)
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v15, 0, 1, 0, 1, 1);
  }

  if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v15, 267, 0, v18) && objc_msgSend_interactionType(self, v30, v31, v32, v33) != 6)
  {
    objc_msgSend_clearFormatOfType_(self, v30, 267, v32, v33);
  }

  if ((a6 & 4) != 0)
  {
    v39 = 1;
  }

  else
  {
    v34 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v30, v31, v32, v33);
    v39 = objc_msgSend_usesLimitedAutomaticFormatParsing(v34, v35, v36, v37, v38);
  }

  v40 = objc_msgSend_formatType(self, v30, v31, v32, v33);
  IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v41, v42, v43, v44);
  v50 = objc_msgSend_currentFormat(self, v46, v47, v48, v49);
  if (objc_msgSend_valueType(self, v51, v52, v53, v54) == 9)
  {
    objc_msgSend_setRichTextValue_(self, v55, 0, v57, v58);
  }

  v59 = MEMORY[0x277D80680];
  v60 = objc_msgSend_locale(self, v55, v56, v57, v58);
  v63 = objc_msgSend_defaultFormatWithFormatType_locale_(v59, v61, 260, v60, v62);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v64, v63, 1, 0, 1, 1);
  objc_msgSend_setStringValue_(self, v65, v9, v66, v67);
  objc_msgSend_setFormulaObject_(self, v68, 0, v69, v70);
  objc_msgSend_setFormulaSyntaxError_(self, v71, 0, v72, v73);
  if (!v9 || !objc_msgSend_length(v9, v74, v75, v76, v77))
  {
    objc_msgSend_clearValue(self, v74, v75, v76, v77);
    goto LABEL_27;
  }

  if (v40 == 260 && ((a6 & 2) == 0) | IsExplicit & 1 || (a6 & 1) == 0 && v40 == 271)
  {
    goto LABEL_27;
  }

  if ((a6 & 1) != 0 && (v40 - 270) <= 4 && v40 != 273)
  {
    v78 = objc_msgSend_asCustomFormatWrapper(v50, v74, v75, v76, v77);
    v83 = objc_msgSend_defaultCustomFormatData(v78, v79, v80, v81, v82);

    v366 = v83;
    v369 = objc_msgSend_formatString(v83, v84, v85, v86, v87);
    if (v40 == 271)
    {
      v213 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v88, @"%C", v89, v90, *MEMORY[0x277D81400]);
      v217 = objc_msgSend_rangeOfString_(v369, v214, v213, v215, v216);

      if (v217 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v368 = v369;
        goto LABEL_83;
      }

      v244 = objc_msgSend_substringToIndex_(v369, v218, v217, v219, v220);
      v368 = objc_msgSend_substringFromIndex_(v369, v245, v217 + 1, v246, v247);
      v367 = v244;
    }

    else
    {
      v91 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v88, @"%C", v89, v90, 39);
      if (objc_msgSend_characterAtIndex_(v369, v92, 0, v93, v94) == 39)
      {
        v99 = objc_msgSend_substringFromIndex_(v369, v95, 1, v97, v98);
        v103 = objc_msgSend_rangeOfString_(v99, v100, v91, v101, v102);
        v367 = objc_msgSend_substringToIndex_(v99, v104, v103, v105, v106);
      }

      else
      {
        v367 = 0;
      }

      v225 = objc_msgSend_length(v369, v95, v96, v97, v98);
      if (objc_msgSend_characterAtIndex_(v369, v226, v225 - 1, v227, v228) == 39)
      {
        v233 = objc_msgSend_length(v369, v229, v230, v231, v232);
        v237 = objc_msgSend_substringToIndex_(v369, v234, v233 - 1, v235, v236);
        v240 = objc_msgSend_rangeOfString_options_(v237, v238, v91, 4, v239);
        v368 = objc_msgSend_substringFromIndex_(v237, v241, v240 + 1, v242, v243);
      }

      else
      {
        v368 = 0;
      }
    }

    if (v367)
    {
      if (objc_msgSend_length(v367, v221, v222, v223, v224))
      {
        v248 = objc_msgSend_rangeOfString_(v9, v221, v367, v223, v224);
        v365 = v221;
        v249 = v248 == 0;
        goto LABEL_85;
      }

LABEL_84:
      v365 = 0;
      v249 = 1;
LABEL_85:
      if (v368 && objc_msgSend_length(v368, v221, v222, v223, v224))
      {
        v363 = objc_msgSend_rangeOfString_(v9, v221, v368, v223, v224);
        v364 = v250;
        v254 = objc_msgSend_length(v9, v250, v251, v252, v253);
        if (v363 != v254 - objc_msgSend_length(v368, v255, v256, v257, v258) || !v249)
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (!v249)
        {
LABEL_93:

          goto LABEL_94;
        }

        v364 = 0;
      }

      v259 = objc_msgSend_substringFromIndex_(v9, v221, v365, v223, v224);
      v264 = objc_msgSend_length(v259, v260, v261, v262, v263);
      v268 = objc_msgSend_substringToIndex_(v259, v265, v264 - v364, v266, v267);

      objc_msgSend_setStringValue_(self, v269, v268, v270, v271);
      if ((objc_msgSend_coerceToFormatType_usingSpares_(self, v272, v40, 0, v273) & 1) == 0)
      {
        objc_msgSend_setStringValue_(self, v274, v9, v275, v276);

        goto LABEL_94;
      }

LABEL_27:
      objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v74, v50, 1, IsExplicit, 1, 1);
      goto LABEL_28;
    }

LABEL_83:
    v367 = 0;
    goto LABEL_84;
  }

  if ((a6 & 2) != 0 && objc_msgSend_tst_hasLeadingSingleQuoteEscape(v9, v74, v75, v76, v77))
  {
    v198 = objc_msgSend_substringFromIndex_(v9, v74, 1, v76, v77);
    objc_msgSend_setStringValue_(self, v199, v198, v200, v201);
    v202 = MEMORY[0x277D80680];
    v207 = objc_msgSend_locale(self, v203, v204, v205, v206);
    v210 = objc_msgSend_defaultFormatWithFormatType_locale_(v202, v208, 260, v207, v209);

    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v211, v210, 1, 1, 1, 1);
LABEL_64:

    goto LABEL_28;
  }

  if ((v40 - 256) < 4 || v40 == 262)
  {
    if (IsExplicit)
    {
      v212 = objc_msgSend_coerceToFormatType_usingSpares_(self, v74, v40, 0, v77);
      if (((v212 | v39) & 1) == 0)
      {
        LOBYTE(v212) = objc_msgSend__coerceToNumberFormatWithSeparatorFixing_(self, v74, v40, v76, v77);
      }

LABEL_70:
      if ((v212 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_27;
    }

    goto LABEL_94;
  }

  if (v40 == 268)
  {
    v309 = IsExplicit;
  }

  else
  {
    v309 = 0;
  }

  if (v309 == 1)
  {
    v310 = objc_msgSend_asDurationFormat(v50, v74, v75, v76, v77);
    v315 = objc_msgSend_useAutomaticUnits(v310, v311, v312, v313, v314);

    if ((v315 & 1) == 0)
    {
      v320 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v316, v317, v318, v319);
      v324 = objc_msgSend_stringByTrimmingCharactersInSet_(v9, v321, v320, v322, v323);

      v329 = objc_msgSend_locale(self, v325, v326, v327, v328);
      MEMORY[0x223D9F8D0](v376, v329);

      TSUUnivNumberParser::parseAsNumber(v376, v324);
      if (v375 != -999 && (TSUParsedNumber::isInfOrNaN(v374) & 1) == 0)
      {
        TSUParsedNumber::doubleValue(v374);
        v337 = v336;
        v342 = objc_msgSend_asDurationFormat(v50, v338, v339, v340, v341);
        objc_msgSend_durationUnitLargest(v342, v343, v344, v345, v346);
        TSUDurationFormatterSecondsInDurationUnit();
        v348 = v337 * v347;

        objc_msgSend_setDurationTimeIntervalValue_(self, v349, v350, v351, v352, v348);
        MEMORY[0x223D9F890](v374);
        sub_2211AF274(v376);

LABEL_136:
        v353 = objc_msgSend_asDurationFormat(v50, v74, v75, v76, v77);
        objc_msgSend_durationTimeIntervalValue(self, v354, v355, v356, v357);
        v198 = objc_msgSend_formatByFixingUnitsIfNecessaryForTimeInterval_(v353, v358, v359, v360, v361);

        objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v362, v198, 1, 1, 1, 1);
        goto LABEL_64;
      }

      MEMORY[0x223D9F890](v374);
      sub_2211AF274(v376);
    }

    if (!objc_msgSend_coerceToFormatType_usingSpares_(self, v316, 268, 0, v319))
    {
      goto LABEL_94;
    }

    goto LABEL_136;
  }

  if (v40 == 269)
  {
    v330 = IsExplicit;
  }

  else
  {
    v330 = 0;
  }

  if ((a6 & 0x10) == 0 && !v330)
  {
    LOBYTE(v212) = objc_msgSend_coerceToFormatType_usingSpares_(self, v74, v40, 0, v77);
    goto LABEL_70;
  }

  if (v40 == 269)
  {
    objc_msgSend_asBaseFormat(v50, v74, v75, v76, v77);
  }

  else
  {
    objc_msgSend_defaultHexadecimalFormat(MEMORY[0x277D80620], v74, v75, v76, v77);
  }
  v331 = ;
  v335 = objc_msgSend_coerceToBaseFormat_(self, v332, v331, v333, v334);

  if (v335)
  {
    goto LABEL_27;
  }

LABEL_94:
  if (v373 && (objc_msgSend__parseFormulaFromString_tableInfo_cellID_(self, v74, v9, v373, *&a5) & 1) != 0)
  {
LABEL_28:
    if ((objc_msgSend_currentFormatIsExplicit(self, v74, v75, v76, v77) & 1) == 0 && (objc_msgSend_formatType(self, v107, v108, v109, v110) == 256 || objc_msgSend_formatType(self, v107, v108, v109, v110) == 257 || objc_msgSend_formatType(self, v107, v108, v109, v110) == 259 || objc_msgSend_formatType(self, v107, v108, v109, v110) == 258 || objc_msgSend_formatType(self, v107, v108, v109, v110) == 262))
    {
      v111 = objc_msgSend_locale(self, v107, v108, v109, v110);
      v116 = objc_msgSend_decimalSeparator(v111, v112, v113, v114, v115);
      v117 = TSUNumberOfDigitsInStringAllowsPreciseDoubleParsing();

      if ((v117 & 1) == 0)
      {
        objc_msgSend_setStringValue_(self, v107, v9, v109, v110);
        v118 = MEMORY[0x277D80680];
        v123 = objc_msgSend_locale(self, v119, v120, v121, v122);
        v126 = objc_msgSend_defaultFormatWithFormatType_locale_(v118, v124, 260, v123, v125);

        objc_msgSend_setCurrentFormat_isExplicit_(self, v127, v126, 0, v128);
      }
    }

    if ((objc_msgSend_currentFormatIsExplicit(self, v107, v108, v109, v110) & 1) == 0 && objc_msgSend_formatType(self, v74, v75, v76, v77) == 269)
    {
      v129 = objc_msgSend_locale(self, v74, v75, v76, v77);
      MEMORY[0x223D9F8D0](v376, v129);

      TSUUnivNumberParser::parseAsNumber(v376, v9);
      if (v375 == -999)
      {
        v130 = 0;
      }

      else
      {
        v130 = TSUParsedNumber::isInfOrNaN(v374) ^ 1;
      }

      TSUDecimal::operator=();
      if (!v130 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
      {
        objc_msgSend_setStringValue_(self, v131, v9, v132, v133);
        v134 = MEMORY[0x277D80680];
        v139 = objc_msgSend_locale(self, v135, v136, v137, v138);
        v142 = objc_msgSend_defaultFormatWithFormatType_locale_(v134, v140, 260, v139, v141);

        objc_msgSend_setCurrentFormat_isExplicit_(self, v143, v142, 0, v144);
      }

      MEMORY[0x223D9F890](v374);
    }

    goto LABEL_45;
  }

  v372 = objc_msgSend_uppercaseString(v9, v74, v75, v76, v77);
  v281 = objc_msgSend_locale(self, v277, v278, v279, v280);
  v286 = objc_msgSend_trueString(v281, v282, v283, v284, v285);
  isEqual = objc_msgSend_isEqual_(v372, v287, v286, v288, v289);

  if ((isEqual & 1) != 0 || (objc_msgSend_locale(self, v291, v292, v293, v294), v370 = objc_claimAutoreleasedReturnValue(), objc_msgSend_falseString(v370, v295, v296, v297, v298), v299 = objc_claimAutoreleasedReturnValue(), v303 = objc_msgSend_isEqual_(v372, v300, v299, v301, v302), v299, v370, v303))
  {
    objc_msgSend_setBoolValue_(self, v291, isEqual, v293, v294);

    goto LABEL_28;
  }

  v306 = objc_msgSend__coerceTextCellToBestNumberFormatUsingLimitedParsing_allowFractions_(self, v304, v39, (a6 >> 3) & 1, v305);
  if (v40 == 261)
  {
    v307 = 1;
  }

  else
  {
    v307 = v306;
  }

  if ((v307 & 1) == 0)
  {
    v306 = objc_msgSend_coerceToFormatType_usingSpares_(self, v74, 261, 1, v77);
  }

  if (v306)
  {
    goto LABEL_28;
  }

  if ((v40 & 0xFFFFFFFC) == 0x100)
  {
    v308 = 0;
  }

  else
  {
    v308 = objc_msgSend_coerceTextCellToBestNumberFormatUsingLimitedParsing_(self, v74, v39, v76, v77);
  }

  if ((v308 & 1) == 0 && v40 != 268)
  {
    v308 = objc_msgSend_coerceToFormatType_usingSpares_(self, v74, 268, 1, v77);
  }

  if (v308)
  {
    goto LABEL_28;
  }

LABEL_45:
  v145 = objc_msgSend_cellSpec(self, v74, v75, v76, v77);
  v150 = objc_msgSend_asRangeControlSpec(v145, v146, v147, v148, v149);

  if (v150)
  {
    if ((objc_msgSend_valueType(self, v151, v152, v153, v154) == 2 || objc_msgSend_valueType(self, v155, v156, v157, v158) == 10) && ((v160 = objc_msgSend_formatType(self, v155, v156, v157, v158) - 256, v160 <= 0xD) && ((1 << v160) & 0x204F) != 0 || objc_msgSend_formatType(self, v155, v159, v157, v158) == 267))
    {
      objc_msgSend_underlyingDoubleValue(self, v155, v159, v157, v158);
      objc_msgSend_recomputedValueFromValue_changed_(v150, v161, 0, v162, v163);
      objc_msgSend_setCurrencyOrNumberDoubleValue_(self, v164, v165, v166, v167);
    }

    else
    {
      objc_msgSend_setCellSpec_(self, v155, 0, v157, v158);
    }
  }

  v168 = objc_msgSend_cellSpec(self, v151, v152, v153, v154);
  v173 = objc_msgSend_asChooserControlSpec(v168, v169, v170, v171, v172);

  if (v173)
  {
    v178 = objc_msgSend_locale(self, v174, v175, v176, v177);
    v181 = objc_msgSend_cellValueFromCell_locale_(TSTPopUpMenuModel, v179, self, v178, v180);

    if (objc_msgSend_indexForValue_(v173, v182, v181, v183, v184) == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setCellSpec_(self, v185, 0, v186, v187);
    }
  }

  if (objc_msgSend_valueType(self, v174, v175, v176, v177) != 6)
  {
    v192 = objc_msgSend_cellSpec(self, v188, v189, v190, v191);
    v197 = objc_msgSend_asToggleControlSpec(v192, v193, v194, v195, v196);

    if (v197)
    {
      objc_msgSend_setCellSpec_(self, v188, 0, v190, v191);
    }
  }

  objc_msgSend_validateAndRepair(self, v188, v189, v190, v191);
}

- (TSTCell)initWithLocale:(id)a3
{
  v25.receiver = self;
  v25.super_class = TSTCell;
  v4 = [(TSTCell *)&v25 init];
  v8 = v4;
  if (v4)
  {
    v4->_conditionalStyleAppliedRule = 15;
    if (!a3)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCell initWithLocale:]", v6, v7);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v12, v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 150, 0, "invalid nil value for '%{public}s'", "locale");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
      a3 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v20, v21, v22, v23);
    }

    v8->_locale = a3;
    v8->_valueBigNumber = xmmword_221803860;
  }

  return v8;
}

- (TSTCell)initWithStorageRef:(TSTCellStorage *)a3 dataStore:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_documentLocale(v11, v12, v13, v14, v15);
  v20 = objc_msgSend_initWithLocale_(self, v17, v16, v18, v19);

  if (v20)
  {
    objc_msgSend_inflateFromStorageRef_dataStore_(v20, v21, a3, v6, v22);
  }

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = objc_msgSend_allocWithZone_(TSTCell, a2, a3, v3, v4);
  v10 = objc_msgSend_initWithLocale_(v6, v7, self->_locale, v8, v9);
  objc_msgSend_copyToCell_(self, v11, v10, v12, v13);
  return v10;
}

- (void)copyToCell:(id)a3
{
  v71 = a3;
  if (v71)
  {
    objc_msgSend_clear(v71, v4, v5, v6, v7);
    *(v71 + 21) = self->_cellFlags;
    *(v71 + 45) = self->_valueType;
    v71[4] = *&self->_valueDouble;
    *(v71 + 1) = self->_valueBigNumber;
    if (self->_valueType == 9)
    {
      v12 = objc_msgSend_richTextValue(self, v8, v9, v10, v11);
      v17 = v12;
      if (!v12)
      {
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTCell copyToCell:]", v15, v16);
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v45, v46);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 196, 0, "invalid nil value for '%{public}s'", "srcStorage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
        *(v71 + 45) = 0;
        goto LABEL_10;
      }

      v18 = objc_msgSend_context(v12, v13, v14, v15, v16);
      v22 = objc_msgSend_copyWithContext_(v17, v19, v18, v20, v21);
      v23 = v71[7];
      v71[7] = v22;
    }

    else
    {
      if (!objc_msgSend_hasFormulaSyntaxError(self, v8, v9, v10, v11))
      {
        v41 = self->_valueObject;
        v17 = v71[7];
        v71[7] = v41;
        goto LABEL_10;
      }

      v17 = objc_msgSend_formulaSyntaxError(self, v24, v25, v26, v27);
      v18 = objc_msgSend_context(v17, v28, v29, v30, v31);
      v36 = objc_msgSend_stylesheet(v17, v32, v33, v34, v35);
      v39 = objc_msgSend_i_copyIntoContext_stylesheet_(v17, v37, v18, v36, v38);
      v40 = v71[7];
      v71[7] = v39;
    }

LABEL_10:
    *(v71 + 12) = self->_valueID;
    *(v71 + 16) = self->_cellStyleID;
    v57 = objc_msgSend_copy(self->_cellStyleHandle, v53, v54, v55, v56);
    v58 = v71[14];
    v71[14] = v57;

    objc_storeStrong(v71 + 15, self->_strongCellStyle);
    *(v71 + 17) = self->_textStyleID;
    v63 = objc_msgSend_copy(self->_textStyleHandle, v59, v60, v61, v62);
    v64 = v71[16];
    v71[16] = v63;

    objc_storeStrong(v71 + 17, self->_strongTextStyle);
    *(v71 + 13) = self->_conditionalStyleID;
    objc_storeStrong(v71 + 18, self->_conditionalStyle);
    *(v71 + 44) = self->_conditionalStyleAppliedRule;
    v69 = objc_msgSend_copy(self->_cellBorder, v65, v66, v67, v68);
    v70 = v71[19];
    v71[19] = v69;

    *(v71 + 18) = self->_formulaID;
    *(v71 + 19) = self->_controlCellSpecID;
    objc_storeStrong(v71 + 20, self->_cellSpec);
    *(v71 + 20) = self->_explicitFormatFlags;
    *(v71 + 46) = self->_cellFormatKind;
    *(v71 + 20) = self->_numberFormatID;
    v71[21] = self->_numberFormat;
    *(v71 + 21) = self->_currencyFormatID;
    v71[22] = self->_currencyFormat;
    *(v71 + 22) = self->_dateFormatID;
    v71[23] = self->_dateFormat;
    *(v71 + 23) = self->_durationFormatID;
    v71[24] = self->_durationFormat;
    *(v71 + 24) = self->_textFormatID;
    v71[25] = self->_textFormat;
    *(v71 + 25) = self->_BOOLeanFormatID;
    v71[26] = self->_BOOLeanFormat;
    *(v71 + 26) = self->_commentStorageID;
    objc_storeStrong(v71 + 29, self->_commentStorage);
    *(v71 + 27) = self->_importWarningSetID;
    objc_storeStrong(v71 + 27, self->_importWarningSet);
    v71[28] = self->_locale;
  }
}

- (void)shallowCopyToCell:(id)a3
{
  v20 = a3;
  if (v20)
  {
    objc_msgSend_clear(v20, v4, v5, v6, v7);
    *(v20 + 21) = self->_cellFlags;
    *(v20 + 45) = self->_valueType;
    v20[4] = *&self->_valueDouble;
    *(v20 + 1) = self->_valueBigNumber;
    objc_storeStrong(v20 + 7, self->_valueObject);
    *(v20 + 12) = self->_valueID;
    *(v20 + 16) = self->_cellStyleID;
    v12 = objc_msgSend_copy(self->_cellStyleHandle, v8, v9, v10, v11);
    v13 = v20[14];
    v20[14] = v12;

    objc_storeStrong(v20 + 15, self->_strongCellStyle);
    *(v20 + 17) = self->_textStyleID;
    v18 = objc_msgSend_copy(self->_textStyleHandle, v14, v15, v16, v17);
    v19 = v20[16];
    v20[16] = v18;

    objc_storeStrong(v20 + 17, self->_strongTextStyle);
    *(v20 + 13) = self->_conditionalStyleID;
    objc_storeStrong(v20 + 18, self->_conditionalStyle);
    *(v20 + 44) = self->_conditionalStyleAppliedRule;
    objc_storeStrong(v20 + 19, self->_cellBorder);
    *(v20 + 18) = self->_formulaID;
    *(v20 + 19) = self->_controlCellSpecID;
    objc_storeStrong(v20 + 20, self->_cellSpec);
    *(v20 + 20) = self->_explicitFormatFlags;
    *(v20 + 46) = self->_cellFormatKind;
    *(v20 + 20) = self->_numberFormatID;
    v20[21] = self->_numberFormat;
    *(v20 + 21) = self->_currencyFormatID;
    v20[22] = self->_currencyFormat;
    *(v20 + 22) = self->_dateFormatID;
    v20[23] = self->_dateFormat;
    *(v20 + 23) = self->_durationFormatID;
    v20[24] = self->_durationFormat;
    *(v20 + 24) = self->_textFormatID;
    v20[25] = self->_textFormat;
    *(v20 + 25) = self->_BOOLeanFormatID;
    v20[26] = self->_BOOLeanFormat;
    *(v20 + 26) = self->_commentStorageID;
    objc_storeStrong(v20 + 29, self->_commentStorage);
    *(v20 + 27) = self->_importWarningSetID;
    objc_storeStrong(v20 + 27, self->_importWarningSet);
    v20[28] = self->_locale;
  }
}

- (void)copyJustValueToCell:(id)a3
{
  v49 = a3;
  if (v49)
  {
    v8 = objc_msgSend_valueType(self, v4, v5, v6, v7);
    if (v8 <= 5)
    {
      if (v8 <= 2)
      {
        if (!v8)
        {
          objc_msgSend_clearValue(v49, v9, v10, v11, v12);
          goto LABEL_24;
        }

        if (v8 != 2)
        {
          goto LABEL_24;
        }

        goto LABEL_11;
      }

      if (v8 == 3)
      {
        v23 = objc_msgSend_stringValue(self, v9, v10, v11, v12);
        objc_msgSend_setStringValue_(v49, v31, v23, v32, v33);
      }

      else
      {
        if (v8 != 5)
        {
          goto LABEL_24;
        }

        v23 = objc_msgSend_dateValue(self, v9, v10, v11, v12);
        objc_msgSend_setDateValue_(v49, v24, v23, v25, v26);
      }

LABEL_23:

      goto LABEL_24;
    }

    if (v8 > 7)
    {
      switch(v8)
      {
        case 8:
          v23 = objc_msgSend_formulaSyntaxError(self, v9, v10, v11, v12);
          objc_msgSend_setFormulaSyntaxError_(v49, v34, v23, v35, v36);
          break;
        case 9:
          v23 = objc_msgSend_richTextValue(self, v9, v10, v11, v12);
          objc_msgSend_setRichTextValueWithoutPlaintextCollapse_(v49, v41, v23, v42, v43);
          break;
        case 10:
LABEL_11:
          v13 = objc_msgSend_underlyingDecimalValue(self, v9, v10, v11, v12);
          v15 = v14;
          if (objc_msgSend_currencyIsMostRecentlySet(v49, v14, v16, v17, v18))
          {
LABEL_12:
            objc_msgSend_setCurrencyDecimalValue_(v49, v19, v13, v15, v22);
            goto LABEL_24;
          }

          v44 = objc_msgSend_numberFormat(v49, v19, v20, v21, v22);
          if (v44)
          {
          }

          else if (objc_msgSend_valueType(self, v45, v46, v47, v48) == 10)
          {
            goto LABEL_12;
          }

          objc_msgSend_setNumberDecimalValue_(v49, v19, v13, v15, v22);
          goto LABEL_24;
        default:
          goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v8 == 6)
    {
      v37 = objc_msgSend_BOOLValue(self, v9, v10, v11, v12);
      objc_msgSend_setBoolValue_(v49, v38, v37, v39, v40);
    }

    else
    {
      objc_msgSend_durationTimeIntervalValue(self, v9, v10, v11, v12);
      objc_msgSend_setDurationTimeIntervalValue_(v49, v27, v28, v29, v30);
    }
  }

LABEL_24:
}

- (void)copyValueAndFormatToCell:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v4[45] = self->_valueType;
    *(v4 + 4) = *&self->_valueDouble;
    *(v4 + 1) = self->_valueBigNumber;
    v5 = *(v4 + 20);
    v63 = v4;
    *(v4 + 20) = 0;

    if (self->_valueType == 9)
    {
      v10 = objc_msgSend_richTextValue(self, v6, v7, v8, v9);
      v15 = v10;
      if (!v10)
      {
        v40 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTCell copyValueAndFormatToCell:]", v13, v14);
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v43, v44);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v46, v41, v45, 376, 0, "invalid nil value for '%{public}s'", "srcStorage");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50);
        v63[45] = 0;
        goto LABEL_10;
      }

      v16 = objc_msgSend_context(v10, v11, v12, v13, v14);
      v20 = objc_msgSend_copyWithContext_(v15, v17, v16, v18, v19);
      v21 = *(v63 + 7);
      *(v63 + 7) = v20;
    }

    else
    {
      if (!objc_msgSend_hasFormulaSyntaxError(self, v6, v7, v8, v9))
      {
        v39 = self->_valueObject;
        v15 = *(v63 + 7);
        *(v63 + 7) = v39;
        goto LABEL_10;
      }

      v15 = objc_msgSend_formulaSyntaxError(self, v22, v23, v24, v25);
      v16 = objc_msgSend_context(v15, v26, v27, v28, v29);
      v34 = objc_msgSend_stylesheet(v15, v30, v31, v32, v33);
      v37 = objc_msgSend_i_copyIntoContext_stylesheet_(v15, v35, v16, v34, v36);
      v38 = *(v63 + 7);
      *(v63 + 7) = v37;
    }

LABEL_10:
    *(v63 + 12) = self->_valueID;
    v63[46] = self->_cellFormatKind;
    v55 = objc_msgSend_currentFormat(self, v51, v52, v53, v54);
    IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v56, v57, v58, v59);
    objc_msgSend_setCurrentFormat_isExplicit_(v63, v61, v55, IsExplicit, v62);

    v4 = v63;
    *(v63 + 28) = self->_locale;
  }
}

- (void)inflateFromStorageRef:(TSTCellStorage *)a3 dataStore:(id)a4 cache:(id)a5 suppressingTransmutation:(BOOL)a6
{
  v6 = a6;
  sub_221144998(a3, self);
  if ((objc_msgSend_cellValueTypeIsExpected_(TSTCell, v10, self->_valueType, v11, v12) & 1) == 0)
  {
    objc_msgSend_clearValue(self, v13, v14, v15, v16);
  }

  if ((objc_msgSend_cellFormatKindIsExpected_(TSTCell, v13, self->_cellFormatKind, v15, v16) & 1) == 0)
  {
    objc_msgSend_setCurrentFormat_isExplicit_(self, v17, 0, 0, v20);
  }

  if (a4)
  {
    if (!self->_locale)
    {
      if (a5)
      {
        v21 = objc_msgSend_locale(a5, v17, v18, v19, v20);
        objc_msgSend_setLocale_(self, v22, v21, v23, v24);
      }

      else
      {
        v25 = objc_msgSend_documentRoot(a4, v17, v18, v19, v20);
        v30 = objc_msgSend_documentLocale(v25, v26, v27, v28, v29);

        v21 = v30;
        objc_msgSend_setLocale_(self, v31, v30, v32, v33);
      }
    }

    MEMORY[0x2821F9670](a4, sel_resolveDataListKeysForCell_cache_suppressTransmutation_sourceStorageVersion_, self, a5, v6);
  }
}

- (BOOL)p_currentFormatIsEqualToOtherCellFormat:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_currentFormat(self, v5, v6, v7, v8);
  v17 = objc_msgSend_currentFormat(v4, v10, v11, v12, v13);
  if (v9 == v17)
  {
    isEqual = 1;
  }

  else
  {
    isEqual = objc_msgSend_isEqual_(v9, v14, v17, v15, v16);
  }

  return isEqual;
}

- (BOOL)hasEqualContentToCell:(id)a3 usingRichTextObjectComparisonBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_msgSend_hasCellSpec(self, v8, v9, v10, v11) & 1) != 0 || objc_msgSend_hasCellSpec(v6, v12, v13, v14, v15))
  {
    if (objc_msgSend_hasFormula(self, v12, v13, v14, v15) && objc_msgSend_hasFormula(v6, v16, v17, v18, v19))
    {
      v20 = objc_msgSend_asFormulaSpec(self->_cellSpec, v16, v17, v18, v19);
      v25 = objc_msgSend_cellSpec(v6, v21, v22, v23, v24);
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

      if (!objc_msgSend_hasCellSpec(v6, v35, v36, v37, v38))
      {
        goto LABEL_18;
      }

      cellSpec = self->_cellSpec;
      v44 = objc_msgSend_cellSpec(v6, v39, v40, v41, v42);
      LOBYTE(cellSpec) = objc_msgSend_isEqual_(cellSpec, v45, v44, v46, v47);

      if ((cellSpec & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  valueType = self->_valueType;
  if (valueType != objc_msgSend_valueType(v6, v12, v13, v14, v15) || !objc_msgSend_p_currentFormatIsEqualToOtherCellFormat_(self, v49, v6, v50, v51))
  {
    goto LABEL_18;
  }

  v56 = self->_valueType;
  LOBYTE(v34) = 1;
  if (v56 > 6)
  {
    if (self->_valueType > 8u)
    {
      if (v56 != 9)
      {
        if (v56 != 10)
        {
          goto LABEL_19;
        }

        objc_msgSend_currencyDoubleValue(self, v52, v53, v54, v55);
        v81 = v80;
        objc_msgSend_currencyDoubleValue(v6, v82, v83, v84, v85);
        goto LABEL_32;
      }

      if (v7)
      {
        v57 = objc_msgSend_richTextValue(self, v52, v53, v54, v55);
        v108 = objc_msgSend_richTextValue(v6, v104, v105, v106, v107);
        v34 = objc_msgSend_range(v57, v109, v110, v111, v112);
        v114 = v113;
        v118 = objc_msgSend_range(v108, v113, v115, v116, v117);
        LOBYTE(v34) = objc_msgSend_compareRange_otherStorage_otherRange_options_objectComparisonBlock_(v57, v119, v34, v114, v108, v118, v119, 0, v7) == 0;

LABEL_38:
        goto LABEL_19;
      }

      v57 = objc_msgSend_richTextValue(self, v52, v53, v54, v55);
      v62 = objc_msgSend_richTextValue(v6, v120, v121, v122, v123);
      isEqual = objc_msgSend_isEqual_(v57, v124, v62, v125, v126);
    }

    else
    {
      if (v56 == 7)
      {
        objc_msgSend_durationTimeIntervalValue(self, v52, v53, v54, v55);
        v81 = v92;
        objc_msgSend_durationTimeIntervalValue(v6, v93, v94, v95, v96);
        goto LABEL_32;
      }

      if (v56 != 8)
      {
        goto LABEL_19;
      }

      v57 = objc_msgSend_formulaSyntaxError(self, v52, v53, v54, v55);
      v62 = objc_msgSend_formulaSyntaxError(v6, v68, v69, v70, v71);
      isEqual = objc_msgSend_isFormulaSyntaxErrorEqual_(v57, v72, v62, v73, v74);
    }

LABEL_37:
    LOBYTE(v34) = isEqual;

    goto LABEL_38;
  }

  if (self->_valueType <= 4u)
  {
    if (v56 != 2)
    {
      if (v56 != 3)
      {
        goto LABEL_19;
      }

      v57 = objc_msgSend_stringValue(self, v52, v53, v54, v55);
      v62 = objc_msgSend_stringValue(v6, v58, v59, v60, v61);
      isEqual = objc_msgSend_isEqualToString_(v57, v63, v62, v64, v65);
      goto LABEL_37;
    }

    objc_msgSend_numberDoubleValue(self, v52, v53, v54, v55);
    v81 = v87;
    objc_msgSend_numberDoubleValue(v6, v88, v89, v90, v91);
LABEL_32:
    LOBYTE(v34) = v81 == v86;
    goto LABEL_19;
  }

  if (v56 == 5)
  {
    v57 = objc_msgSend_dateValue(self, v52, v53, v54, v55);
    v62 = objc_msgSend_dateValue(v6, v97, v98, v99, v100);
    isEqual = objc_msgSend_isEqualToDate_(v57, v101, v62, v102, v103);
    goto LABEL_37;
  }

  if (v56 == 6)
  {
    v75 = objc_msgSend_BOOLValue(self, v52, v53, v54, v55);
    LODWORD(v34) = v75 ^ objc_msgSend_BOOLValue(v6, v76, v77, v78, v79) ^ 1;
  }

LABEL_19:

  return v34;
}

- (id)cellByApplyingCellDiff:(id)a3 toTable:(id)a4 andUpdateInverse:(id)a5 optionalConcurrentStylesheet:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18 = objc_msgSend_copy(self, v14, v15, v16, v17);
  if (objc_msgSend_doesSetProperty_(v10, v19, 913, v20, v21))
  {
    v26 = objc_msgSend_cellSpecForDiff(v18, v22, v23, v24, v25);
    objc_opt_class();
    v29 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(v10, v27, v26, v12, v28);
    v30 = TSUCheckedDynamicCast();

    objc_msgSend_setCellSpec_(v18, v31, v30, v32, v33);
  }

  if (objc_msgSend_doesSetProperty_(v10, v22, 907, v24, v25))
  {
    v37 = [TSTCellFormatAndValue alloc];
    v40 = objc_msgSend_initFromCell_useAllSpareFormats_(v37, v38, v18, 1, v39);
    objc_opt_class();
    v43 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(v10, v41, v40, v12, v42);
    v44 = TSUCheckedDynamicCast();

    objc_msgSend_applyToCell_(v44, v45, v18, v46, v47);
  }

  if ((objc_msgSend_doesSetProperty_(v10, v34, 905, v35, v36) & 1) != 0 || objc_msgSend_containsCellStyleProperties(v10, v48, v49, v50, v51))
  {
    v55 = objc_msgSend_cellStyle(v18, v48, v49, v50, v51);
    if (!v55)
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSTCell cellByApplyingCellDiff:toTable:andUpdateInverse:optionalConcurrentStylesheet:]", v53, v54);
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v59, v60);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v62, v57, v61, 563, 0, "invalid nil value for '%{public}s'", "cellStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66);
    }

    objc_opt_class();
    v68 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_optionalConcurrentStylesheet_(v10, v67, v55, v12, v13);
    v69 = TSUCheckedDynamicCast();

    if (v69)
    {
      objc_msgSend_setCellStyle_(v18, v70, v69, v71, v72);
    }
  }

  if ((objc_msgSend_doesSetProperty_(v10, v48, 906, v50, v51) & 1) != 0 || objc_msgSend_containsParagraphStyleProperties(v10, v73, v74, v75, v76))
  {
    v80 = objc_msgSend_textStyle(v18, v73, v74, v75, v76);
    if (!v80)
    {
      v81 = MEMORY[0x277D81150];
      v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, "[TSTCell cellByApplyingCellDiff:toTable:andUpdateInverse:optionalConcurrentStylesheet:]", v78, v79);
      v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v84, v85);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v87, v82, v86, 576, 0, "invalid nil value for '%{public}s'", "textStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91);
    }

    objc_opt_class();
    v93 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_optionalConcurrentStylesheet_(v10, v92, v80, v12, v13);
    v94 = TSUCheckedDynamicCast();

    if (v94)
    {
      objc_msgSend_setTextStyle_(v18, v95, v94, v96, v97);
    }
  }

  if (objc_msgSend_containsProperty_(v10, v73, 909, v75, v76))
  {
    v102 = objc_msgSend_conditionalStyle(v18, v98, v99, v100, v101);
    v107 = v102;
    if (v102)
    {
      v108 = v102;
    }

    else
    {
      v108 = objc_msgSend_noRuleConditionalStyleSet(v11, v103, v104, v105, v106);
    }

    v109 = v108;

    objc_opt_class();
    v112 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(v10, v110, v109, v12, v111);
    v113 = TSUCheckedDynamicCast();

    if (objc_msgSend_ruleCount(v113, v114, v115, v116, v117))
    {
      v121 = v113;
      objc_msgSend_setConditionalStyle_(v18, v118, v113, v119, v120);
    }

    else
    {

      v121 = 0;
      objc_msgSend_setConditionalStyle_(v18, v125, 0, v126, v127);
    }

    if (!v121)
    {
      objc_msgSend_setConditionalStyleAppliedRule_(v18, v122, 15, v123, v124);
    }
  }

  if (objc_msgSend_doesSetProperty_(v10, v98, 910, v100, v101))
  {
    v131 = [TSTCommentStorageWrapper alloc];
    v136 = objc_msgSend_commentStorage(v18, v132, v133, v134, v135);
    v140 = objc_msgSend_initWithCommentStorage_(v131, v137, v136, v138, v139);

    objc_opt_class();
    v143 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(v10, v141, v140, v12, v142);
    v144 = TSUCheckedDynamicCast();

    objc_msgSend_applyToCell_(v144, v145, v18, v146, v147);
  }

  if (objc_msgSend_doesSetProperty_(v10, v128, 912, v129, v130))
  {
    v152 = objc_msgSend_cellBorder(v18, v148, v149, v150, v151);
    v157 = objc_msgSend_copy(v152, v153, v154, v155, v156);

    objc_opt_class();
    v160 = objc_msgSend_objectApplyingDiffToObject_andUpdateInverse_(v10, v158, v157, v12, v159);
    v161 = TSUCheckedDynamicCast();

    objc_msgSend_applyToCell_(v161, v162, v18, v163, v164);
  }

  if (objc_msgSend_doesSetProperty_(v10, v148, 914, v150, v151) && objc_msgSend_BOOLValueForSetProperty_(v10, v165, 914, v166, v167))
  {
    objc_msgSend_setBoolValue_forProperty_(v12, v168, 1, 914, v169);
  }

  return v18;
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

  return self->_cellFlags < 4u;
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

  cellStyleHandle = self->_cellStyleHandle;
  self->_cellStyleHandle = 0;

  strongCellStyle = self->_strongCellStyle;
  self->_strongCellStyle = 0;

  textStyleHandle = self->_textStyleHandle;
  self->_textStyleHandle = 0;

  strongTextStyle = self->_strongTextStyle;
  self->_strongTextStyle = 0;

  cellBorder = self->_cellBorder;
  self->_cellBorder = 0;

  self->_cellFormatKind = 0;
  *&self->_numberFormat = 0u;
  *&self->_dateFormat = 0u;
  *&self->_textFormat = 0u;
  cellSpec = self->_cellSpec;
  self->_cellSpec = 0;

  *&self->_explicitFormatFlags = 0;
  self->_valueDouble = 0.0;
  self->_valueBigNumber = xmmword_221803860;
  *&self->_conditionalStyleAppliedRule = 15;
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

- (void)setStringID:(unsigned int)a3
{
  if (self->_valueType == 3)
  {
    self->_valueID = a3;
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

- (void)setFormulaSyntaxErrorID:(unsigned int)a3
{
  if (self->_valueType == 8)
  {
    self->_valueID = a3;
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

- (void)setRichTextID:(unsigned int)a3
{
  if (self->_valueType == 9)
  {
    self->_valueID = a3;
  }
}

- (void)clearDataListIDs
{
  *&self->_valueID = 0;
  *&self->_cellStyleID = 0u;
  *&self->_numberFormatID = 0u;
  *&self->_textFormatID = 0u;
}

- (void)setProvidedValueTypeBeforeUpgrade
{
  if (self->_valueType)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell setProvidedValueTypeBeforeUpgrade]", v2, v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v8, v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 835, 0, "Provided cells only allowed before Pre-UFF upgrade.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14, v15);
  }

  *&self->_valueType = 4;
}

- (TSUDecimal)numberDecimalValue
{
  if (self->_valueType == 2)
  {
    valueBigNumber = self->_valueBigNumber;
  }

  else
  {
    TSUDecimal::operator=();
  }

  v3 = valueBigNumber._decimal.w[1];
  v2 = valueBigNumber._decimal.w[0];
  result._decimal.w[1] = v3;
  result._decimal.w[0] = v2;
  return result;
}

- (void)setNumberDecimalValue:(TSUDecimal)a3 roundToDoublePrecision:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  self->_valueType = 2;
  self->_valueID = 0;
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  if (v4)
  {
    TSUDecimal::roundToDoublePrecision(&v8);
  }

  TSUDecimal::doubleValue(&v8);
  self->_valueDouble = v7;
  self->_valueBigNumber = v8;
  self->_cellFormatKind = 1;
}

- (TSUDecimal)currencyDecimalValue
{
  if (self->_valueType == 10)
  {
    valueBigNumber = self->_valueBigNumber;
  }

  else
  {
    TSUDecimal::operator=();
  }

  v3 = valueBigNumber._decimal.w[1];
  v2 = valueBigNumber._decimal.w[0];
  result._decimal.w[1] = v3;
  result._decimal.w[0] = v2;
  return result;
}

- (void)setCurrencyDecimalValue:(TSUDecimal)a3 roundToDoublePrecision:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  self->_valueType = 10;
  self->_valueID = 0;
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  if (v4)
  {
    TSUDecimal::roundToDoublePrecision(&v8);
  }

  TSUDecimal::doubleValue(&v8);
  self->_valueDouble = v7;
  self->_valueBigNumber = v8;
  self->_cellFormatKind = 2;
}

- (double)numberDoubleValue
{
  result = 0.0;
  if (self->_valueType == 2)
  {
    return self->_valueDouble;
  }

  return result;
}

- (double)currencyDoubleValue
{
  result = 0.0;
  if (self->_valueType == 10)
  {
    return self->_valueDouble;
  }

  return result;
}

- (TSUDecimal)underlyingDecimalValue
{
  v2 = self->_valueBigNumber._decimal.w[1];
  v3 = self->_valueBigNumber._decimal.w[0];
  result._decimal.w[1] = v2;
  result._decimal.w[0] = v3;
  return result;
}

- (void)setCurrencyOrNumberDoubleValue:(double)a3
{
  if (self->_valueType == 10 || self->_cellFormatKind == 2)
  {
    objc_msgSend_setCurrencyDoubleValue_(self, a2, v3, v4, v5, a3);
  }

  else
  {
    objc_msgSend_setNumberDoubleValue_(self, a2, v3, v4, v5, a3);
  }
}

- (void)setCurrencyOrNumberDecimalValue:(const TSUDecimal *)a3
{
  if (self->_valueType == 10 || self->_cellFormatKind == 2)
  {
    objc_msgSend_setCurrencyDecimalValue_(self, a2, a3->_decimal.w[0], a3->_decimal.w[1], v3);
  }

  else
  {
    objc_msgSend_setNumberDecimalValue_(self, a2, a3->_decimal.w[0], a3->_decimal.w[1], v3);
  }
}

- (void)setBoolValue:(BOOL)a3
{
  v3 = a3;
  self->_valueType = 6;
  self->_valueID = 0;
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  v6 = 0.0;
  if (v3)
  {
    v6 = 1.0;
  }

  self->_valueDouble = v6;
  self->_valueBigNumber = xmmword_221803860;
  self->_cellFormatKind = 6;
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

- (void)setDurationTimeIntervalValue:(double)a3
{
  self->_valueType = 7;
  self->_valueID = 0;
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  self->_valueDouble = a3;
  self->_valueBigNumber = xmmword_221803860;
  self->_cellFormatKind = 4;
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

- (void)setDateValue:(id)a3
{
  v5 = a3;
  if (v5)
  {
    self->_valueType = 5;
    self->_valueID = 0;
    v10 = v5;
    objc_storeStrong(&self->_valueObject, a3);
    v5 = v10;
    self->_valueDouble = 0.0;
    self->_valueBigNumber = xmmword_221803860;
    self->_cellFormatKind = 3;
  }

  else if (self->_valueType == 5)
  {
    objc_msgSend_clearValue(self, v6, v7, v8, v9);
    v5 = 0;
  }
}

- (NSString)stringValue
{
  if (self->_valueType == 3)
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

- (void)setStringValue:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v16 = a3;
  v10 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v6, v7, v8, v9);
  v14 = objc_msgSend_rangeOfCharacterFromSet_(v16, v11, v10, v12, v13);

  objc_msgSend_setStringValue_clearingID_shouldWrap_(self, v15, v16, v4, v14 != 0x7FFFFFFFFFFFFFFFLL);
}

- (void)setStringValue:(id)a3 clearingID:(BOOL)a4 shouldWrap:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v18 = v9;
  if (v9)
  {
    valueObject = self->_valueObject;
    self->_valueType = 3;
    self->_valueDouble = 0.0;
    self->_valueBigNumber = xmmword_221803860;
    if (valueObject != v9)
    {
      objc_storeStrong(&self->_valueObject, a3);
      self->_cellFormatKind = 5;
      self->_cellFlags = self->_cellFlags & 0xFFFE | v5;
      if (v6)
      {
        objc_msgSend_setStringID_(self, v15, 0, v16, v17);
      }
    }
  }

  else if (self->_valueType == 3)
  {
    objc_msgSend_clearValue(self, v10, v11, v12, v13);
  }
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

- (void)setFormulaSyntaxError:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v23 = v7;
  if (v7)
  {
    valueObject = self->_valueObject;
    self->_valueType = 8;
    self->_valueDouble = 0.0;
    self->_valueBigNumber = xmmword_221803860;
    if (valueObject != v7)
    {
      objc_storeStrong(&self->_valueObject, a3);
      if (v4)
      {
        self->_valueID = 0;
        if (objc_msgSend_hasCurrentFormat(self, v13, v14, v15, v16))
        {
          if ((objc_msgSend_currentFormatIsExplicit(self, v17, v18, v19, v20) & 1) == 0)
          {
            objc_msgSend_setCurrentFormat_isExplicit_(self, v21, 0, 0, v22);
          }
        }
      }
    }
  }

  else if (self->_valueType == 8)
  {
    objc_msgSend_clearValue(self, v8, v9, v10, v11);
  }
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

- (void)setRichTextValue:(id)a3 clearingID:(BOOL)a4 convertToPlaintextIfPossible:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  v29 = v9;
  if (v9)
  {
    valueObject = self->_valueObject;
    self->_valueDouble = 0.0;
    self->_valueBigNumber = xmmword_221803860;
    if (valueObject != v9)
    {
      if (v5 && objc_msgSend_canBeStoredInAStringValueCell(v9, v10, v11, v12, v13))
      {
        v19 = objc_msgSend_string(v29, v15, v16, v17, v18);
        objc_msgSend_setStringValue_(self, v20, v19, v21, v22);

        v25 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v29, v23, 0, 0, v24);
        objc_msgSend_setTextStyle_(self, v26, v25, v27, v28);
      }

      else
      {
        self->_valueType = 9;
        objc_storeStrong(&self->_valueObject, a3);
        self->_cellFormatKind = 5;
        if (v6)
        {
          self->_valueID = 0;
        }
      }
    }
  }

  else if (self->_valueType == 9)
  {
    objc_msgSend_clearValue(self, v10, v11, v12, v13);
  }
}

- (void)clearValue
{
  valueObject = self->_valueObject;
  self->_valueObject = 0;

  self->_valueID = 0;
  self->_valueDouble = 0.0;
  self->_valueBigNumber = xmmword_221803860;
  self->_valueType = 0;
  if (objc_msgSend_hasCurrentFormat(self, v4, v5, v6, v7) && (objc_msgSend_currentFormatIsExplicit(self, v8, v9, v10, v11) & 1) == 0)
  {

    objc_msgSend_setCurrentFormat_isExplicit_(self, v12, 0, 0, v13);
  }
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

- (BOOL)mightBeInterestedInMigration
{
  if (self->_textStyleHandle || self->_cellStyleHandle || self->_strongTextStyle || self->_strongCellStyle || (objc_msgSend_hasRichText(self, a2, v2, v3, v4) & 1) != 0)
  {
    return 1;
  }

  return objc_msgSend_hasFormulaSyntaxError(self, v6, v7, v8, v9);
}

- (NSString)formattedValue
{
  v6 = 0;
  locale = self->_locale;
  valueType = self->_valueType;
  if (valueType > 5)
  {
    if (self->_valueType <= 7u)
    {
      if (valueType == 6)
      {
        v34 = objc_msgSend_currentFormat(self, a2, v2, v3, v4);
        v105 = objc_msgSend_BOOLValue(self, v101, v102, v103, v104);
        v42 = objc_msgSend_stringFromBool_locale_(v34, v106, v105, locale, v107);
        goto LABEL_25;
      }

      if (valueType == 7)
      {
        v34 = objc_msgSend_currentFormat(self, a2, v2, v3, v4);
        objc_msgSend_durationTimeIntervalValue(self, v84, v85, v86, v87);
        v42 = objc_msgSend_stringFromDurationTimeInterval_locale_(v34, v88, locale, v89, v90);
        goto LABEL_25;
      }
    }

    else
    {
      switch(valueType)
      {
        case 8u:
          goto LABEL_34;
        case 9u:
          v34 = objc_msgSend_richTextValue(self, a2, v2, v3, v4);
          v42 = objc_msgSend_string(v34, v108, v109, v110, v111);
          goto LABEL_25;
        case 0xAu:
          v9 = objc_msgSend_currentFormat(self, a2, v2, v3, v4);
          objc_msgSend_currencyDoubleValue(self, v10, v11, v12, v13);
          v6 = objc_msgSend_stringFromDouble_locale_(v9, v14, locale, v15, v16);

          if (!v6)
          {
            v21 = MEMORY[0x277D81150];
            v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTCell formattedValue]", v19, v20);
            v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v24, v25);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 1253, 0, "Cell currency format failed to produce return string.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
            v34 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v32, 257, locale, v33);
            objc_msgSend_currencyDoubleValue(self, v35, v36, v37, v38);
            v42 = objc_msgSend_stringFromDouble_locale_(v34, v39, locale, v40, v41);
LABEL_25:
            v6 = v42;
            goto LABEL_31;
          }

          goto LABEL_32;
      }
    }

LABEL_26:
    v112 = MEMORY[0x277D81150];
    v113 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell formattedValue]", v3, v4);
    v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v115, v116);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v112, v118, v113, v117, 1277, 0, "Impossible cell value type reached.");

    v6 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120, v121, v122);
    goto LABEL_34;
  }

  if (self->_valueType > 2u)
  {
    if (valueType == 3)
    {
      if (objc_msgSend_formatType(self, a2, v2, v3, v4) != 271)
      {
        v6 = objc_msgSend_stringValue(self, v91, v92, v93, v94);
        if (!v6)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v34 = objc_msgSend_currentFormat(self, v91, v92, v93, v94);
      v80 = objc_msgSend_stringValue(self, v95, v96, v97, v98);
      v83 = objc_msgSend_stringFromString_locale_(v34, v99, v80, locale, v100);
    }

    else
    {
      if (valueType != 5)
      {
        goto LABEL_26;
      }

      v71 = objc_msgSend_formatType(self, a2, v2, v3, v4);
      if (v71 == 272 || v71 == 261)
      {
        v34 = objc_msgSend_currentFormat(self, v72, v73, v74, v75);
        v80 = objc_msgSend_dateValue(self, v76, v77, v78, v79);
        v83 = objc_msgSend_stringFromDate_locale_(v34, v81, v80, locale, v82);
      }

      else
      {
        v34 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v72, 261, locale, v75);
        v80 = objc_msgSend_dateValue(self, v123, v124, v125, v126);
        v83 = objc_msgSend_stringFromDate_locale_(v34, v127, v80, locale, v128);
      }
    }

    v6 = v83;

LABEL_31:
    if (!v6)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (!self->_valueType)
  {
    goto LABEL_34;
  }

  if (valueType != 2)
  {
    goto LABEL_26;
  }

  v43 = objc_msgSend_currentFormat(self, a2, v2, v3, v4);
  objc_msgSend_numberDoubleValue(self, v44, v45, v46, v47);
  v6 = objc_msgSend_stringFromDouble_locale_(v43, v48, locale, v49, v50);

  if (!v6)
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTCell formattedValue]", v19, v20);
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v54, v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v57, v52, v56, 1245, 0, "Cell number format failed to produce return string.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61);
    v34 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v62, 256, locale, v63);
    objc_msgSend_numberDoubleValue(self, v64, v65, v66, v67);
    v42 = objc_msgSend_stringFromDouble_locale_(v34, v68, locale, v69, v70);
    goto LABEL_25;
  }

LABEL_32:
  if ((objc_msgSend_cellFlags(self, v17, v18, v19, v20) & 4) != 0)
  {
    v130 = objc_msgSend_localizedStringForKey_value_table_(locale, v129, @"%@ Total", &stru_2834BADA0, @"TSTables");
    v134 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v131, v130, v132, v133, v6);

    v6 = v134;
  }

LABEL_34:

  return v6;
}

- (NSString)stringForEditing
{
  v6 = objc_msgSend_currentFormat(self, a2, v2, v3, v4);
  v11 = objc_msgSend_formatType(v6, v7, v8, v9, v10);
  v16 = v11;
  valueType = self->_valueType;
  if (valueType > 5)
  {
    if (self->_valueType <= 7u)
    {
      if (valueType == 6)
      {
        v18 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v12, 1, self->_locale, v15);
        v117 = objc_msgSend_BOOLValue(self, v113, v114, v115, v116);
        v26 = objc_msgSend_stringFromBool_locale_(v18, v118, v117, self->_locale, v119);
        goto LABEL_34;
      }

      if (valueType == 7)
      {
        v18 = objc_msgSend_asDurationFormat(v6, v12, v13, v14, v15);
        if (!v18)
        {
          v31 = MEMORY[0x277D81150];
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTCell stringForEditing]", v29, v30);
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v34, v35);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v36, 1375, 0, "invalid nil value for '%{public}s'", "durationFormat");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
        }

        IsExplicit = objc_msgSend_currentFormatIsExplicit(self, v27, v28, v29, v30);
        if ((IsExplicit & 1) == 0 && (objc_msgSend_useAutomaticUnits(v18, v42, v43, v44, v45) & 1) == 0)
        {
          v47 = objc_alloc(MEMORY[0x277D80678]);
          v52 = objc_msgSend_durationUnitSmallest(v18, v48, v49, v50, v51);
          v57 = objc_msgSend_durationUnitLargest(v18, v53, v54, v55, v56);
          v62 = objc_msgSend_durationStyle(v18, v58, v59, v60, v61);
          v64 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v47, v63, 1, v52, v57, v62);

          v18 = v64;
        }

        objc_msgSend_durationTimeIntervalValue(self, v42, v43, v44, v45);
        v26 = objc_msgSend_stringFromDurationTimeInterval_locale_showPrecision_(v18, v65, self->_locale, IsExplicit, v66);
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    if (valueType != 8)
    {
      if (valueType == 10)
      {
        if (v11 == 257)
        {
          v18 = objc_msgSend_asCurrencyFormat(v6, v12, v13, v14, v15);
          v134 = objc_alloc(MEMORY[0x277D80640]);
          v139 = objc_msgSend_showThousandsSeparator(v18, v135, v136, v137, v138);
          v144 = objc_msgSend_currencyCode(v18, v140, v141, v142, v143);
          v76 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v134, v145, 253, 0, v139, 0, v144);

          objc_msgSend_currencyDoubleValue(self, v146, v147, v148, v149);
          v77 = objc_msgSend_stringFromDouble_locale_(v76, v150, self->_locale, v151, v152);
          goto LABEL_42;
        }

        if (v11 == 274)
        {
          v18 = objc_msgSend_asCustomFormatWrapper(v6, v12, v13, v14, v15);
          v82 = objc_msgSend_customFormat(v18, v78, v79, v80, v81);
          objc_msgSend_currencyDoubleValue(self, v83, v84, v85, v86);
          v76 = objc_msgSend_conditionalFormatDataForValue_outKey_(v82, v87, 0, v88, v89);

          if (objc_msgSend_currencyCodeIndex(v76, v90, v91, v92, v93))
          {
            v94 = objc_alloc(MEMORY[0x277D80640]);
            v99 = objc_msgSend_showThousandsSeparator(v76, v95, v96, v97, v98);
            objc_msgSend_currencyCodeIndex(v76, v100, v101, v102, v103);
            v104 = TSUCurrencyCodeForIndex();
            v106 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v94, v105, 253, 0, v99, 0, v104);
          }

          else
          {
            v161 = objc_alloc(MEMORY[0x277D806A0]);
            v166 = objc_msgSend_showThousandsSeparator(v76, v162, v163, v164, v165);
            v106 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v161, v167, 256, 253, 0, v166);
          }

          objc_msgSend_currencyDoubleValue(self, v107, v108, v109, v110);
          v112 = objc_msgSend_stringFromDouble_locale_(v106, v168, self->_locale, v169, v170);

          goto LABEL_43;
        }
      }

LABEL_39:
      v111 = objc_msgSend_formattedValue(self, v12, v13, v14, v15);
      goto LABEL_40;
    }

    goto LABEL_32;
  }

  if (self->_valueType > 2u)
  {
    if (valueType != 3)
    {
      if (valueType == 5)
      {
        v18 = TSUShortestCompleteDateTimeFormat();
        if (objc_msgSend_valueRepresentsDateWithoutTime(self, v67, v68, v69, v70))
        {
          v75 = TSUShortestCompleteDateOnlyFormat();

          v18 = v75;
        }

        v76 = objc_msgSend_dateValue(self, v71, v72, v73, v74);
        v77 = TSUDateFormatterStringFromDateWithFormat();
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v111 = objc_msgSend_stringValue(self, v12, v13, v14, v15);
LABEL_40:
    v112 = v111;
    goto LABEL_45;
  }

  if (!self->_valueType)
  {
    if (v11 == 258)
    {
      v111 = objc_msgSend_percentSymbol(self->_locale, v12, v13, v14, v15);
      goto LABEL_40;
    }

LABEL_32:
    v112 = 0;
    goto LABEL_45;
  }

  if (valueType != 2)
  {
    goto LABEL_39;
  }

  if (v11 <= 258)
  {
    if (v11 == 256 || v11 == 258)
    {
      v18 = objc_msgSend_asNumberFormat(v6, v12, v13, v14, v15);
      v120 = objc_alloc(MEMORY[0x277D806A0]);
      v125 = objc_msgSend_showThousandsSeparator(v18, v121, v122, v123, v124);
      v76 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v120, v126, v16, 253, 0, v125);
      objc_msgSend_numberDoubleValue(self, v127, v128, v129, v130);
      v77 = objc_msgSend_stringFromDouble_locale_(v76, v131, self->_locale, v132, v133);
LABEL_42:
      v112 = v77;
LABEL_43:

      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v11 == 259)
  {
    v18 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v12, 259, self->_locale, v15);
    objc_msgSend_numberDoubleValue(self, v154, v155, v156, v157);
    v26 = objc_msgSend_stringFromDouble_locale_(v18, v158, self->_locale, v159, v160);
    goto LABEL_34;
  }

  if (v11 != 267 && v11 != 270)
  {
    goto LABEL_39;
  }

  v18 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v12, 256, self->_locale, v15);
  objc_msgSend_numberDoubleValue(self, v19, v20, v21, v22);
  v26 = objc_msgSend_stringFromDouble_locale_(v18, v23, self->_locale, v24, v25);
LABEL_34:
  v112 = v26;
LABEL_44:

LABEL_45:

  return v112;
}

- (NSString)stringForDisplayWithoutColor
{
  if (objc_msgSend_currentFormatNegativeStyle(self, a2, v2, v3, v4) == 1)
  {
    objc_msgSend_stringForEditing(self, v6, v7, v8, v9);
  }

  else
  {
    objc_msgSend_formattedValue(self, v6, v7, v8, v9);
  }
  v10 = ;

  return v10;
}

- (NSString)stringForUnderlyingValue
{
  if (self->_valueType)
  {
    if (self->_valueType == 2 && ((v6 = objc_msgSend_formatType(self, a2, v2, v3, v4), v6 == 258) || v6 == 269 || v6 == 262))
    {
      v8 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, 256, self->_locale, v4);
      objc_msgSend_numberDoubleValue(self, v9, v10, v11, v12);
      v7 = objc_msgSend_stringFromDouble_locale_(v8, v13, self->_locale, v14, v15);
    }

    else
    {
      v7 = objc_msgSend_stringForEditing(self, a2, v2, v3, v4);
    }
  }

  else
  {
    v7 = &stru_2834BADA0;
  }

  return v7;
}

- (TSWPStorage)richTextStorageForLayout
{
  if (self->_valueType == 9)
  {
    v129 = objc_msgSend_richTextValue(self, a2, v2, v3, v4);
    if (objc_msgSend_formatType(self, v6, v7, v8, v9) == 271)
    {
      v14 = objc_msgSend_currentFormat(self, v10, v11, v12, v13);
      v19 = objc_msgSend_asCustomFormatWrapper(v14, v15, v16, v17, v18);
      v24 = objc_msgSend_defaultCustomFormatData(v19, v20, v21, v22, v23);
      v29 = objc_msgSend_formatString(v24, v25, v26, v27, v28);
      v33 = objc_msgSend_storageByApplyingCustomFormat_(v129, v30, v29, v31, v32);

      v34 = v33;
    }

    else
    {
      v34 = v129;
    }

    conditionalStyleAppliedRule = self->_conditionalStyleAppliedRule;
    hasConditionalStyle = objc_msgSend_hasConditionalStyle(self, v10, v11, v12, v13);
    if (conditionalStyleAppliedRule == 15)
    {
      v41 = 0;
    }

    else
    {
      v41 = hasConditionalStyle;
    }

    if (v41 == 1)
    {
      v130 = v34;
      v42 = objc_msgSend_context(v34, v37, v38, v39, v40);
      v34 = objc_msgSend_copyWithContext_(v34, v43, v42, v44, v45);

      v128 = self->_conditionalStyle;
      v49 = objc_msgSend_ruleAtIndex_(v128, v46, conditionalStyleAppliedRule, v47, v48);
      v54 = objc_msgSend_textStyle(v49, v50, v51, v52, v53);

      if (v54)
      {
        v63 = objc_msgSend_propertyMap(v54, v55, v56, v57, v58);
        v64 = 0;
        v133 = 0;
        v134 = 0;
        while (v64 < objc_msgSend_length(v34, v59, v60, v61, v62))
        {
          v69 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v34, v65, v64, &v133, v68);
          v74 = objc_msgSend_copyPropertyMap(v69, v70, v71, v72, v73);
          objc_msgSend_addValuesFromPropertyMap_(v74, v75, v63, v76, v77);
          v78 = objc_alloc(MEMORY[0x277D80EC8]);
          v83 = objc_msgSend_context(v54, v79, v80, v81, v82);
          isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v78, v84, v83, 0, v74, 0);

          if (isVariation)
          {
            objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v34, v86, isVariation, v133, v134, 0);
          }

          v64 = v134 + v133;
        }

        if (objc_msgSend_characterStyleAttributeCount(v34, v65, v66, v67, v68))
        {
          v91 = objc_msgSend_characterCount(v34, v87, v88, v89, v90);
          v96 = objc_msgSend_copy(v63, v92, v93, v94, v95);
          v101 = objc_msgSend_properties(MEMORY[0x277D80DB0], v97, v98, v99, v100);
          objc_msgSend_filterWithProperties_(v96, v102, v101, v103, v104);

          if (v91)
          {
            v107 = 0;
            do
            {
              v131 = v107;
              v132 = v91 - v107;
              v108 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v34, v105, v107, &v131, v106);
              v113 = v108;
              if (v108)
              {
                v114 = objc_msgSend_copyPropertyMap(v108, v109, v110, v111, v112);
                objc_msgSend_addValuesFromPropertyMap_(v114, v115, v96, v116, v117);
                v118 = objc_alloc(MEMORY[0x277D80DB0]);
                v123 = objc_msgSend_context(v54, v119, v120, v121, v122);
                v125 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v118, v124, v123, 0, v114, 0);

                if (v125)
                {
                  objc_msgSend_setCharacterStyle_range_undoTransaction_(v34, v126, v125, v131, v132, 0);
                }
              }

              v107 += v132;
            }

            while (v107 < v91);
          }
        }
      }
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (void)bakeFormulaToValue
{
  if ((objc_msgSend_hasFormula(self, a2, v2, v3, v4) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTCell bakeFormulaToValue]", v7, v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v14, 1528, 0, "can't bake non-formula cells");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
  }

  objc_msgSend_setFormulaObject_(self, v6, 0, v7, v8);
  if (self->_valueType == 8)
  {
    objc_msgSend_setFormulaSyntaxError_(self, v20, 0, v22, v23);
    self->_valueType = 0;
  }

  if (objc_msgSend_hasValueOrError(self, v20, v21, v22, v23) && objc_msgSend_formatType(self, v24, v25, v26, v27) == 267)
  {

    objc_msgSend_clearFormatOfType_(self, v28, 267, v29, v30);
  }
}

- (BOOL)hasValueOrCommentBreakingMergeFragment
{
  if (objc_msgSend_hasCommentStorage(self, a2, v2, v3, v4))
  {
    return 1;
  }

  v11 = objc_msgSend_formulaObject(self, v6, v7, v8, v9);
  if ((objc_msgSend_isSpillFormula(v11, v12, v13, v14, v15) & 1) == 0)
  {
    if (objc_msgSend_hasCellSpec(self, v16, v17, v18, v19))
    {
    }

    else
    {
      hasValueOrError = objc_msgSend_hasValueOrError(self, v20, v21, v22, v23);

      if ((hasValueOrError & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

- (BOOL)valueRepresentsDateWithoutTime
{
  if (self->_valueType != 5)
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v7 = objc_msgSend_initWithCalendarIdentifier_(v3, v4, *MEMORY[0x277CBE5C0], v5, v6);
  v12 = objc_msgSend_gregorianCalendarLocale(self->_locale, v8, v9, v10, v11);
  objc_msgSend_setLocale_(v7, v13, v12, v14, v15);

  v16 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v7, v17, v16, v18, v19);

  v24 = objc_msgSend_dateValue(self, v20, v21, v22, v23);
  v28 = objc_msgSend_startOfDayForDate_(v7, v25, v24, v26, v27);

  v33 = objc_msgSend_dateFormat(self, v29, v30, v31, v32);
  v38 = objc_msgSend_asDateTimeFormat(v33, v34, v35, v36, v37);

  v43 = objc_msgSend_dateValue(self, v39, v40, v41, v42);
  if (objc_msgSend_isEqualToDate_(v43, v44, v28, v45, v46))
  {
    v51 = objc_msgSend_formatStringContainsOnlyDate(v38, v47, v48, v49, v50);
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

- (BOOL)dataIsReplaceable
{
  if ((objc_msgSend_hasFormula(self, a2, v2, v3, v4) & 1) != 0 || objc_msgSend_interactionType(self, v6, v7, v8, v9) == 7 || objc_msgSend_formatType(self, v10, v11, v12, v13) == 267)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    valueType = self->_valueType;
    v17 = valueType > 0xA;
    v14 = 0x6ECu >> valueType;
    if (v17)
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14 & 1;
}

- (BOOL)hasEqualValueToCell:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4 || (valueType = self->_valueType, valueType != objc_msgSend_valueType(v4, v5, v6, v7, v8)))
  {
    v16 = 0;
    goto LABEL_8;
  }

  v15 = self->_valueType;
  v16 = 1;
  if (v15 <= 5)
  {
    switch(v15)
    {
      case 2u:
        goto LABEL_15;
      case 3u:
        v18 = objc_msgSend_stringValue(self, v11, v12, v13, v14);
        v23 = objc_msgSend_stringValue(v9, v52, v53, v54, v55);
        isEqualToString = objc_msgSend_isEqualToString_(v18, v56, v23, v57, v58);
        break;
      case 5u:
        v18 = objc_msgSend_dateValue(self, v11, v12, v13, v14);
        v23 = objc_msgSend_dateValue(v9, v19, v20, v21, v22);
        isEqualToString = objc_msgSend_isEqualToDate_(v18, v24, v23, v25, v26);
        break;
      default:
        goto LABEL_8;
    }

    goto LABEL_20;
  }

  if (self->_valueType > 8u)
  {
    if (v15 != 9)
    {
      if (v15 != 10)
      {
        goto LABEL_8;
      }

LABEL_15:
      v16 = TSUDecimal::operator==();
      goto LABEL_8;
    }

    v18 = objc_msgSend_richTextValue(self, v11, v12, v13, v14);
    v23 = objc_msgSend_richTextValue(v9, v45, v46, v47, v48);
    isEqualToString = objc_msgSend_isEqual_(v18, v49, v23, v50, v51);
LABEL_20:
    v16 = isEqualToString;
    goto LABEL_21;
  }

  if (v15 - 6 >= 2)
  {
    if (v15 != 8)
    {
      goto LABEL_8;
    }

    v18 = objc_msgSend_formulaSyntaxError(self, v11, v12, v13, v14);
    v23 = objc_msgSend_stringWithFormulaPlainText(v18, v28, v29, v30, v31);
    v36 = objc_msgSend_formulaSyntaxError(v9, v32, v33, v34, v35);
    v41 = objc_msgSend_stringWithFormulaPlainText(v36, v37, v38, v39, v40);
    v16 = objc_msgSend_isEqualToString_(v23, v42, v41, v43, v44);

LABEL_21:
    goto LABEL_8;
  }

  v16 = self->_valueDouble == v9[4];
LABEL_8:

  return v16;
}

- (TSTCellStyle)cellStyle
{
  cellStyleHandle = self->_cellStyleHandle;
  if (cellStyleHandle)
  {
    v7 = objc_msgSend_cellStyle(cellStyleHandle, a2, v2, v3, v4);
  }

  else
  {
    v7 = self->_strongCellStyle;
  }

  return v7;
}

- (void)setCellStyle:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (*&self->_cellStyleHandle != __PAIR128__(v7, 0))
  {
    v9 = v7;
    objc_storeStrong(&self->_strongCellStyle, a3);
    cellStyleHandle = self->_cellStyleHandle;
    self->_cellStyleHandle = 0;

    v7 = v9;
    if (!v9 || v4)
    {
      self->_cellStyleID = 0;
    }
  }
}

- (void)setCellStyleHandle:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (*&self->_cellStyleHandle != v7)
  {
    v9 = v7;
    objc_storeStrong(&self->_cellStyleHandle, a3);
    strongCellStyle = self->_strongCellStyle;
    self->_strongCellStyle = 0;

    v7 = v9;
    if (!v9 || v4)
    {
      self->_cellStyleID = 0;
    }
  }
}

- (TSWPParagraphStyle)textStyle
{
  textStyleHandle = self->_textStyleHandle;
  if (textStyleHandle)
  {
    v7 = objc_msgSend_textStyle(textStyleHandle, a2, v2, v3, v4);
  }

  else
  {
    v7 = self->_strongTextStyle;
  }

  return v7;
}

- (void)setTextStyle:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (*&self->_textStyleHandle != __PAIR128__(v7, 0))
  {
    v9 = v7;
    objc_storeStrong(&self->_strongTextStyle, a3);
    textStyleHandle = self->_textStyleHandle;
    self->_textStyleHandle = 0;

    v7 = v9;
    if (!v9 || v4)
    {
      self->_textStyleID = 0;
    }
  }
}

- (void)setTextStyleHandle:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (*&self->_textStyleHandle != v7)
  {
    v9 = v7;
    objc_storeStrong(&self->_textStyleHandle, a3);
    strongTextStyle = self->_strongTextStyle;
    self->_strongTextStyle = 0;

    v7 = v9;
    if (!v9 || v4)
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
    if (self->_textStyleHandle)
    {
      v9 = objc_msgSend_textStyle(self->_textStyleHandle, a2, v2, v3, v4);
    }

    else
    {
      v9 = self->_strongTextStyle;
    }

    v8 = v9;
  }

  return v8;
}

- (void)setConditionalStyle:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_5;
  }

  v24 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTCell setConditionalStyle:clearingID:]", v8, v9);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v14, v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v12, v16, 1762, 0, "expected conditional style got %{public}@", v18);

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
    if (!v25 || v4)
    {
      self->_conditionalStyleID = 0;
    }
  }
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4 supportsInlineAttachments:(BOOL)a5
{
  v8 = a3;
  v13 = a4;
  if (self->_cellStyleHandle)
  {
    objc_opt_class();
    v18 = objc_msgSend_cellStyle(self->_cellStyleHandle, v14, v15, v16, v17);
    v22 = objc_msgSend_mappedStyleForStyle_(v13, v19, v18, v20, v21);
    v23 = TSUDynamicCast();

    if (v23)
    {
      v27 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v24, v23, v25, v26);
    }

    else
    {
      v27 = 0;
    }

    cellStyleHandle = self->_cellStyleHandle;
    self->_cellStyleHandle = v27;
  }

  else
  {
    if (!self->_strongCellStyle)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v31 = objc_msgSend_mappedStyleForStyle_(v13, v28, self->_strongCellStyle, v29, v30);
    v23 = TSUDynamicCast();

    if (v23)
    {
      v32 = v23;
    }

    else
    {
      v32 = 0;
    }

    cellStyleHandle = self->_strongCellStyle;
    self->_strongCellStyle = v32;
  }

LABEL_12:
  if (self->_textStyleHandle)
  {
    objc_opt_class();
    v38 = objc_msgSend_textStyle(self->_textStyleHandle, v34, v35, v36, v37);
    v42 = objc_msgSend_mappedStyleForStyle_(v13, v39, v38, v40, v41);
    v43 = TSUDynamicCast();

    if (v43)
    {
      v47 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v44, v43, v45, v46);
    }

    else
    {
      v47 = 0;
    }

    textStyleHandle = self->_textStyleHandle;
    self->_textStyleHandle = v47;
  }

  else
  {
    if (!self->_strongTextStyle)
    {
      goto LABEL_23;
    }

    objc_opt_class();
    v51 = objc_msgSend_mappedStyleForStyle_(v13, v48, self->_strongTextStyle, v49, v50);
    v43 = TSUDynamicCast();

    if (v43)
    {
      v52 = v43;
    }

    else
    {
      v52 = 0;
    }

    textStyleHandle = self->_strongTextStyle;
    self->_strongTextStyle = v52;
  }

LABEL_23:
  if (objc_msgSend_hasFormulaSyntaxError(self, v9, v10, v11, v12))
  {
    v58 = objc_msgSend_formulaSyntaxError(self, v54, v55, v56, v57);
    v63 = objc_msgSend_context(v58, v59, v60, v61, v62);
    v66 = objc_msgSend_i_copyIntoContext_stylesheet_(v58, v64, v63, v8, v65);

    objc_msgSend_setFormulaSyntaxError_(self, v67, v66, v68, v69);
  }

  if (objc_msgSend_hasRichText(self, v54, v55, v56, v57))
  {
    v74 = objc_msgSend_richTextValue(self, v70, v71, v72, v73);
    objc_msgSend_adoptStylesheet_withMapper_(v74, v75, v8, v13, v76);
    if (!a5 && objc_msgSend_attachmentCount(v74, v77, v78, v79, v80))
    {
      v82 = objc_msgSend_range(v74, v77, v81, v79, v80);
      v84 = v83;
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = sub_22168F4B4;
      v86[3] = &unk_278468148;
      v87 = v74;
      objc_msgSend_enumerateAttachmentsInTextRange_usingBlock_(v87, v85, v82, v84, v86);
    }

    objc_msgSend_setRichTextValue_(self, v77, v74, v79, v80);
  }
}

- (void)copyJustStrokesToCell:(id)a3
{
  v12 = a3;
  v8 = objc_msgSend_copy(self->_cellBorder, v4, v5, v6, v7);
  objc_msgSend_setCellBorder_(v12, v9, v8, v10, v11);
}

- (void)copyJustStyleAndStrokesToCell:(id)a3
{
  v30 = a3;
  objc_msgSend_setCellFlags_(v30, v4, self->_cellFlags & 0x8F0, v5, v6);
  cellStyleHandle = self->_cellStyleHandle;
  if (cellStyleHandle)
  {
    objc_msgSend_setCellStyleHandle_clearingID_(v30, v7, cellStyleHandle, 0, v8);
  }

  else
  {
    objc_msgSend_setCellStyle_clearingID_(v30, v7, self->_strongCellStyle, 0, v8);
  }

  objc_msgSend_setCellStyleID_(v30, v10, self->_cellStyleID, v11, v12);
  textStyleHandle = self->_textStyleHandle;
  if (textStyleHandle)
  {
    objc_msgSend_setTextStyleHandle_clearingID_(v30, v13, textStyleHandle, 0, v14);
  }

  else
  {
    objc_msgSend_setTextStyle_clearingID_(v30, v13, self->_strongTextStyle, 0, v14);
  }

  objc_msgSend_setTextStyleID_(v30, v16, self->_textStyleID, v17, v18);
  objc_msgSend_setConditionalStyle_clearingID_(v30, v19, self->_conditionalStyle, 0, v20);
  objc_msgSend_setConditionalStyleID_(v30, v21, self->_conditionalStyleID, v22, v23);
  objc_msgSend_setConditionalStyleAppliedRule_(v30, v24, self->_conditionalStyleAppliedRule, v25, v26);
  objc_msgSend_copyJustStrokesToCell_(self, v27, v30, v28, v29);
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

    return v9;
  }

  if (self->_textStyleHandle)
  {
    textStyleHandle = self->_textStyleHandle;

    return objc_msgSend_direction(textStyleHandle, a2, v2, v3, v4);
  }

  else
  {
    strongTextStyle = self->_strongTextStyle;
    if (!strongTextStyle)
    {
      return -1;
    }

    return objc_msgSend_intValueForProperty_(strongTextStyle, a2, 44, v3, v4);
  }
}

- (TSDFill)cellFill
{
  cellStyleHandle = self->_cellStyleHandle;
  if (cellStyleHandle)
  {
    v7 = objc_msgSend_cellStyle(cellStyleHandle, a2, v2, v3, v4);
  }

  else
  {
    v7 = self->_strongCellStyle;
  }

  v11 = v7;
  v12 = objc_msgSend_valueForProperty_(v7, v8, 898, v9, v10);

  return v12;
}

- (id)cellFillComparedToDefault:(id)a3 suppressCS:(BOOL)a4 isDefault:(BOOL *)a5
{
  v12 = a3;
  if (!a4)
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
    v27 = v12;
    if (!a5)
    {
      goto LABEL_18;
    }

    v28 = 1;
    goto LABEL_17;
  }

LABEL_12:
  if (objc_msgSend_isEqual_(v26, v8, v12, v10, v11))
  {
    goto LABEL_13;
  }

  v29 = v26;
  v26 = v29;
  if (a5)
  {
    v28 = 0;
    v27 = v29;
LABEL_17:
    *a5 = v28;
    goto LABEL_18;
  }

  v27 = v29;
LABEL_18:

  return v27;
}

- (unsigned)interactionType
{
  if ((self->_formulaID || self->_controlCellSpecID) && !self->_cellSpec)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell interactionType]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 1957, 0, "Cell must be inflated to determine interaction type");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  cellSpec = self->_cellSpec;
  if (!cellSpec)
  {
    return self->_valueType == 8;
  }

  return objc_msgSend_interactionType(cellSpec, a2, v2, v3, v4);
}

- (TSCEFormulaObject)formulaObject
{
  v5 = objc_msgSend_asFormulaSpec(self->_cellSpec, a2, v2, v3, v4);
  v10 = objc_msgSend_formulaObject(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setCellSpec:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v22 = a3;
  if (v22 && objc_msgSend_interactionType(v22, v7, v8, v9, v10))
  {
    if (self->_cellSpec != v22)
    {
      objc_storeStrong(&self->_cellSpec, a3);
      if (v4)
      {
        *&self->_formulaID = 0;
        self->_cellFlags &= ~0x200u;
      }
    }
  }

  else
  {
    cellSpec = self->_cellSpec;
    self->_cellSpec = 0;

    *&self->_formulaID = 0;
    objc_msgSend_p_setFormatFlags_explicit_(self, v12, 0x8000, 0, v13);
    self->_cellFlags &= ~0x200u;
    if (objc_msgSend_hasFormulaEvaluationError(self, v14, v15, v16, v17))
    {
      objc_msgSend_clearValue(self, v18, v19, v20, v21);
    }
  }
}

- (void)setFormulaObject:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v37 = a3;
  if (v37)
  {
    v10 = objc_msgSend_cellSpec(self, v6, v7, v8, v9);
    v15 = objc_msgSend_asFormulaSpec(v10, v11, v12, v13, v14);

    if (v15)
    {
      v20 = objc_msgSend_locale(self, v16, v17, v18, v19);
      v23 = objc_msgSend_cellSpecReplacingFormulaObject_locale_(v15, v21, v37, v20, v22);
    }

    else
    {
      v27 = [TSTCellFormulaSpec alloc];
      v20 = objc_msgSend_locale(self, v28, v29, v30, v31);
      v23 = objc_msgSend_initWithFormulaObject_locale_(v27, v32, v37, v20, v33);
    }

    v34 = v23;

    objc_msgSend_setCellSpec_clearingID_(self, v35, v34, v4, v36);
  }

  else
  {
    v24 = objc_msgSend_asFormulaSpec(self->_cellSpec, v6, v7, v8, v9);

    if (v24)
    {
      objc_msgSend_setCellSpec_clearingID_(self, v25, 0, v4, v26);
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

- (BOOL)hasFormula
{
  if (self->_formulaID)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_hasTSCEFormula(self->_cellSpec, a2, v2, v3, v4);
  }
}

- (BOOL)hasEditableFormula
{
  if (objc_msgSend_hasFormula(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_formulaObject(self, v6, v7, v8, v9);
    v15 = objc_msgSend_isSpillFormula(v10, v11, v12, v13, v14) ^ 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)hasStockFormulaForStockUI
{
  if (self->_formulaID && !self->_cellSpec)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell hasStockFormulaForStockUI]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 2062, 0, "Cell must be inflated to ask if it contains a stock formula");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  }

  if (objc_msgSend_interactionType(self->_cellSpec, a2, v2, v3, v4) != 2)
  {
    return 0;
  }

  v21 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v17, v18, v19, v20);
  v26 = objc_msgSend_supportsStockUI(v21, v22, v23, v24, v25);

  return v26;
}

- (TSTStockDetails)stockDetails
{
  v5 = objc_msgSend_asFormulaSpec(self->_cellSpec, a2, v2, v3, v4);
  v10 = objc_msgSend_stockDetails(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)popupChoiceIndex
{
  v6 = objc_msgSend_cellSpec(self, a2, v2, v3, v4);
  v11 = objc_msgSend_asChooserControlSpec(v6, v7, v8, v9, v10);

  if (v11)
  {
    v16 = objc_msgSend_locale(self, v12, v13, v14, v15);
    v19 = objc_msgSend_cellValueFromCell_locale_(TSTPopUpMenuModel, v17, self, v16, v18);

    Item = objc_msgSend_indexForValue_(v11, v20, v19, v21, v22);
    if (Item == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = objc_msgSend_displayChoicesForInspector(v11, v23, v24, v25, v26);
      v33 = objc_msgSend_formattedValue(self, v29, v30, v31, v32);
      v37 = objc_msgSend_indexOfObject_(v28, v34, v33, v35, v36);

      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        Item = objc_msgSend_startWithFirstItem(v11, v38, v39, v40, v41);
      }

      else
      {
        Item = v37 + 1;
      }
    }
  }

  else
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCell popupChoiceIndex]", v14, v15);
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v48, v43, v47, 2091, 0, "Not a popup cell.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50, v51, v52);
    Item = 0x7FFFFFFFFFFFFFFFLL;
  }

  return Item;
}

- (void)applyPopupChoiceIndex:(unint64_t)a3
{
  v7 = objc_msgSend_cellSpec(self, a2, a3, v3, v4);
  v109 = objc_msgSend_asChooserControlSpec(v7, v8, v9, v10, v11);

  if (!v109 || (objc_msgSend_popupModel(v109, v12, v13, v14, v15), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend_choices(v16, v17, v18, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend_count(v21, v22, v23, v24, v25), v21, v16, v26 <= a3))
  {
    v50 = MEMORY[0x277D81150];
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCell applyPopupChoiceIndex:]", v14, v15);
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v53, v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v56, v51, v55, 2144, 0, "Cannot apply popup choice");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60);
    goto LABEL_27;
  }

  objc_msgSend_clearValue(self, v12, v27, v14, v15);
  v31 = objc_msgSend_valueForIndex_(v109, v28, a3, v29, v30);
  v36 = objc_msgSend_tsceValue(v31, v32, v33, v34, v35);
  v45 = objc_msgSend_nativeType(v36, v37, v38, v39, v40);
  if (v45 > 2)
  {
    switch(v45)
    {
      case 3u:
        v46 = objc_msgSend_date(v36, v41, v42, v43, v44);
        objc_msgSend_setDateValue_(self, v69, v46, v70, v71);
        goto LABEL_24;
      case 5u:
        v46 = objc_msgSend_number(v36, v41, v42, v43, v44);
        if (objc_msgSend_hasUnits(v46, v72, v73, v74, v75) && !objc_msgSend_dimension(v46, v76, v77, v78, v79))
        {
          objc_msgSend_rawTimeIntervalValue(v46, v76, v77, v78, v79);
          if (v105 == 0.0)
          {
            v105 = 0.0;
          }

          objc_msgSend_setDurationTimeIntervalValue_(self, v101, v102, v103, v104, v105);
        }

        else if (objc_msgSend_hasUnits(v46, v76, v77, v78, v79) && objc_msgSend_dimension(v46, v80, v81, v82, v83) == 4)
        {
          v84 = objc_msgSend_decimalRepresentation(v46, v80, v81, v82, v83);
          objc_msgSend_setCurrencyDecimalValue_(self, v85, v84, v85, v86);
        }

        else
        {
          v98 = objc_msgSend_decimalRepresentation(v46, v80, v81, v82, v83);
          objc_msgSend_setNumberDecimalValue_(self, v99, v98, v99, v100);
        }

        goto LABEL_24;
      case 7u:
        v46 = objc_msgSend_asRawString(v36, v41, v42, v43, v44);
        objc_msgSend_setStringValue_(self, v47, v46, v48, v49);
LABEL_24:

        goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v45)
  {
    if (v45 == 2)
    {
      v61 = objc_msgSend_BOOLean(v36, v41, v42, v43, v44);
      objc_msgSend_setBoolValue_(self, v62, v61, v63, v64);
LABEL_25:
      v106 = objc_msgSend_format(v31, v65, v66, v67, v68);
      objc_msgSend_setCurrentFormat_isExplicit_(self, v107, v106, 1, v108);

      goto LABEL_26;
    }

LABEL_19:
    v87 = MEMORY[0x277D81150];
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTCell applyPopupChoiceIndex:]", v43, v44);
    v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v90, v91);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v87, v93, v88, v92, 2137, 0, "Unexpected argument type for popup TSCECellValue.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97);
    goto LABEL_25;
  }

  objc_msgSend_setCurrentFormat_isExplicit_(self, v41, 0, 0, v44);
LABEL_26:

LABEL_27:
}

- (void)applyFormulaResult:(id)a3 context:(id)a4 hasWarnings:(BOOL)a5 outWriteDidBeginOrEndWithTextCell:(BOOL *)a6 propagateCheckboxes:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  if (objc_msgSend_nativeType(v11, v13, v14, v15, v16) == 9)
  {
    v21 = objc_msgSend_asErrorValue(v11, v17, v18, v19, v20);
    v26 = objc_msgSend_error(v21, v22, v23, v24, v25);

    if (objc_msgSend_isNotReadyError(v26, v27, v28, v29, v30))
    {
      v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @" %C ", v32, v33, 8230);
      v38 = objc_msgSend_stringValue_(TSCEStringValue, v35, v34, v36, v37);

      v11 = v38;
    }
  }

  IsText = objc_msgSend_valueIsText(self, v17, v18, v19, v20);
  if (a6)
  {
    *a6 = IsText;
  }

  objc_msgSend_clearValue(self, v40, v41, v42, v43);
  objc_msgSend_p_setFormatFlags_explicit_(self, v44, 0x8000, 0, v45);
  if (v11)
  {
    objc_msgSend_format(v11, v46, v47, v48, v49);
    formatType = v423._formatType;
    objc_msgSend_format(v11, v51, v52, v53, v54);
    formatState = v423._formatState;
    objc_msgSend_format(v11, v56, v57, v58, v59);
  }

  else
  {
    formatState = 0;
    formatType = 0;
    memset(&v423, 0, sizeof(v423));
  }

  v64 = TSCEFormat::tskFormat(&v423, v46, v47, v48, v49);
  if (v64)
  {
    v65 = formatState == 1;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65;
  v418 = v66;
  v71 = objc_msgSend_nativeType(v11, v60, v61, v62, v63);
  if (v71 <= 6)
  {
    if (v71 <= 2)
    {
      if (!v71)
      {
        goto LABEL_30;
      }

      if (v71 == 2)
      {
        v91 = objc_msgSend_BOOLean(v11, v67, v68, v69, v70);
        objc_msgSend_setBoolValue_(self, v92, v91, v93, v94);
        if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v95, 1, 1, v96))
        {
          goto LABEL_153;
        }

        if (formatType != 1 && (formatType != 263 || !a7))
        {
          v133 = objc_msgSend_BOOLeanFormat(MEMORY[0x277D80680], v67, v68, v69, v70);
          objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v193, v133, 0, v194);
          goto LABEL_107;
        }

LABEL_54:
        v133 = v64;
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v134, v133, v418, v135);
LABEL_107:

        goto LABEL_153;
      }

      goto LABEL_57;
    }

    if (v71 == 3)
    {
      v127 = objc_msgSend_date(v11, v67, v68, v69, v70);
      objc_msgSend_setDateValue_(self, v128, v127, v129, v130);

      if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v131, 261, 1, v132))
      {
        goto LABEL_153;
      }

      if (formatType != 261 && formatType != 272)
      {
        v133 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v67, 261, self->_locale, v70);
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v286, v133, 0, v287);
        goto LABEL_107;
      }

      goto LABEL_54;
    }

    if (v71 != 5)
    {
LABEL_57:
      v136 = MEMORY[0x277D81150];
      v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "[TSTCell applyFormulaResult:context:hasWarnings:outWriteDidBeginOrEndWithTextCell:propagateCheckboxes:]", v69, v70);
      v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v138, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v139, v140);
      v146 = objc_msgSend_nativeType(v11, v142, v143, v144, v145);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v136, v147, v137, v141, 2516, 0, "unhandled formula result type found: %d", v146);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149, v150, v151);
      goto LABEL_153;
    }

    v103 = objc_msgSend_number(v11, v67, v68, v69, v70);
    if (objc_msgSend_hasUnits(v103, v104, v105, v106, v107) && !objc_msgSend_dimension(v103, v108, v109, v110, v111))
    {
      objc_msgSend_rawTimeIntervalValue(v103, v108, v109, v110, v111);
      if (v237 == 0.0)
      {
        objc_msgSend_setDurationTimeIntervalValue_(self, v233, v234, v235, v236, 0.0);
      }

      else
      {
        objc_msgSend_setDurationTimeIntervalValue_(self, v233, v234, v235, v236, v237);
      }

      if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v238, 268, 1, v239))
      {
        goto LABEL_152;
      }

      if (formatType == 268)
      {
        v244 = objc_msgSend_asDurationFormat(v64, v240, v241, v242, v243);
        v249 = objc_msgSend_durationUnitLargest(v244, v245, v246, v247, v248);
        v254 = objc_msgSend_unit(v103, v250, v251, v252, v253);
        if (v249 == sub_221387CBC(v254))
        {
          v222 = v244;
        }

        else
        {
          v416 = objc_alloc(MEMORY[0x277D80678]);
          v354 = objc_msgSend_useAutomaticUnits(v244, v350, v351, v352, v353);
          v359 = objc_msgSend_durationUnitSmallest(v244, v355, v356, v357, v358);
          v364 = objc_msgSend_unit(v103, v360, v361, v362, v363);
          v365 = sub_221387CBC(v364);
          v370 = objc_msgSend_durationStyle(v244, v366, v367, v368, v369);
          v372 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v416, v371, v354, v359, v365, v370);

          v222 = v372;
        }

LABEL_143:
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v255, v222, v418, v256);
        goto LABEL_151;
      }

      v339 = objc_msgSend_unit(v103, v240, v241, v242, v243);
      v340 = sub_221387CBC(v339);
      TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
      v341 = TSUDurationFormatterMinDurationUnitInUnits();
      v342 = objc_alloc(MEMORY[0x277D80678]);
      v222 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v342, v343, 0, v341, v340, 1);
      objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v344, v222, 0, v345);
    }

    else
    {
      v423._tskFormat = objc_msgSend_decimalRepresentation(v103, v108, v109, v110, v111);
      *&v423._formatType = v112;
      if (TSUDecimal::isZero(&v423) && TSUDecimal::isNegative(&v423))
      {
        TSUDecimal::operator=();
      }

      objc_msgSend_setNumberDecimalValue_(self, v113, v423._tskFormat, *&v423._formatType, v114);
      hasExplicitFormatOfType_allowMismatchedSpare = objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v115, 257, 1, v116);
      if (objc_msgSend_currencyIsMostRecentlySet(self, v118, v119, v120, v121))
      {
        if (hasExplicitFormatOfType_allowMismatchedSpare)
        {
          objc_msgSend_setCurrencyDecimalValue_(self, v122, v423._tskFormat, *&v423._formatType, v125);
          v126 = 176;
LABEL_64:
          objc_msgSend_setCurrentFormat_isExplicit_(self, v122, *(&self->super.isa + v126), 1, v125);
LABEL_152:

          goto LABEL_153;
        }
      }

      else if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v122, 256, 1, v125))
      {
        v126 = 168;
        goto LABEL_64;
      }

      isUnitlessZero = objc_msgSend_isUnitlessZero(v103, v122, v123, v124, v125);
      if (formatType == 257)
      {
        v166 = isUnitlessZero;
      }

      else
      {
        v166 = 0;
      }

      if (v166 == 1)
      {
        objc_msgSend_setCurrencyDecimalValue_(self, v162, v423._tskFormat, *&v423._formatType, v165);
LABEL_70:
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v167, v64, v418, v168);
        goto LABEL_152;
      }

      if (objc_msgSend_hasUnits(v103, v162, v163, v164, v165) && objc_msgSend_dimension(v103, v167, v208, v209, v168) == 4)
      {
        objc_msgSend_setCurrencyDecimalValue_(self, v167, v423._tskFormat, *&v423._formatType, v168);
        v214 = objc_msgSend_unit(v103, v210, v211, v212, v213);
        v222 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v215, v214, v216, v217);
        if (formatType != 257)
        {
          if (formatType == 274)
          {
            v223 = v64;
            objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v348, v223, v418, v349);
          }

          else
          {
            v377 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v218, v222, v220, v221);
            v378 = objc_alloc(MEMORY[0x277D80640]);
            v223 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v378, v379, v377, 0, 1, 0, v222);
            objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v380, v223, 0, v381);
          }

          goto LABEL_150;
        }

        v223 = objc_msgSend_asCurrencyFormat(v64, v218, v219, v220, v221);
        v232 = objc_msgSend_decimalPlaces(v223, v224, v225, v226, v227);
        if ((v232 & 0xFFFFFFFFFFFFFFFELL) == 0xFE)
        {
          v232 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v228, v222, v230, v231);
        }

        else
        {
          v382 = objc_msgSend_currencyCode(v223, v228, v229, v230, v231);
          isEqual = objc_msgSend_isEqual_(v382, v383, v222, v384, v385);

          if (isEqual)
          {
LABEL_149:
            objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v387, v223, v418, v388);
LABEL_150:

            goto LABEL_151;
          }
        }

        v417 = objc_alloc(MEMORY[0x277D80640]);
        v393 = objc_msgSend_negativeStyle(v223, v389, v390, v391, v392);
        v398 = objc_msgSend_showThousandsSeparator(v223, v394, v395, v396, v397);
        v403 = objc_msgSend_accountingStyle(v223, v399, v400, v401, v402);
        v405 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v417, v404, v232, v393, v398, v403, v222);

        v223 = v405;
        goto LABEL_149;
      }

      if (formatType <= 266)
      {
        if ((formatType - 258) >= 2 && formatType != 256)
        {
          if (formatType == 262)
          {
            goto LABEL_70;
          }

          goto LABEL_145;
        }

        v222 = objc_msgSend_asNumberFormat(v64, v167, v208, v209, v168);
        if ((objc_msgSend_decimalPlaces(v222, v317, v318, v319, v320) & 0xFFFFFFFFFFFFFFFELL) == 0xFE)
        {
          v321 = objc_alloc(MEMORY[0x277D806A0]);
          v326 = objc_msgSend_formatType(v222, v322, v323, v324, v325);
          v331 = objc_msgSend_negativeStyle(v222, v327, v328, v329, v330);
          v336 = objc_msgSend_showThousandsSeparator(v222, v332, v333, v334, v335);
          v338 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v321, v337, v326, 253, v331, v336);

          v222 = v338;
        }

        goto LABEL_143;
      }

      if (formatType <= 269)
      {
        if (formatType == 267)
        {
          goto LABEL_70;
        }

        if (formatType == 269)
        {
          v222 = objc_msgSend_asBaseFormat(v64, v167, v208, v209, v168);
          if (objc_msgSend_base(v222, v295, v296, v297, v298) == 255 || objc_msgSend_basePlaces(v222, v255, v299, v300, v256) == 255)
          {
            v301 = objc_msgSend_base(v222, v255, v299, v300, v256);
            if (v301 == 255)
            {
              v306 = 10;
            }

            else
            {
              v306 = v301;
            }

            v307 = objc_msgSend_basePlaces(v222, v302, v303, v304, v305);
            if (v307 == 255)
            {
              v308 = 0;
            }

            else
            {
              v308 = v307;
            }

            v309 = objc_alloc(MEMORY[0x277D80620]);
            v314 = objc_msgSend_baseUseMinusSign(v222, v310, v311, v312, v313);
            v316 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v309, v315, v306, v308, v314);

            v222 = v316;
          }

          goto LABEL_143;
        }

LABEL_145:
        v222 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v167, 256, self->_locale, v168);
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v375, v222, 0, v376);
        goto LABEL_151;
      }

      if (formatType == 270)
      {
        objc_opt_class();
        v222 = TSUDynamicCast();
        objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v373, v222, v418, v374);
        goto LABEL_151;
      }

      if (formatType != 274)
      {
        goto LABEL_145;
      }

      objc_msgSend_setCurrencyDecimalValue_(self, v167, v423._tskFormat, *&v423._formatType, v168);
      objc_opt_class();
      v222 = TSUDynamicCast();
      objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v346, v222, v418, v347);
    }

LABEL_151:

    goto LABEL_152;
  }

  if (v71 <= 9)
  {
    if (v71 != 7)
    {
      if (v71 == 9)
      {
        self->_valueType = 8;
        goto LABEL_153;
      }

      goto LABEL_57;
    }

    if (v11)
    {
      objc_msgSend_rawRichTextStorage(v11, v67, v68, v69, v70);
    }

    else
    {
      memset(&v423, 0, 24);
    }

    if (sub_221077388(&v423))
    {
      v173 = sub_2210771B0(&v423, v169, v170, v171, v172);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v178 = objc_msgSend_context(v173, v174, v175, v176, v177);
        v182 = objc_msgSend_copyPersistedWithContext_(v173, v179, v178, v180, v181);
      }

      else
      {
        v178 = objc_msgSend_context(v173, v174, v175, v176, v177);
        v182 = objc_msgSend_copyWithContext_(v173, v195, v178, v196, v197);
      }

      v183 = v182;

      textStyleHandle = self->_textStyleHandle;
      if (textStyleHandle)
      {
        v203 = objc_msgSend_textStyle(textStyleHandle, v198, v199, v200, v201);
      }

      else
      {
        v203 = self->_strongTextStyle;
      }

      v415 = v203;
      if (v203)
      {
        v257 = objc_msgSend_length(v183, v204, v205, v206, v207);
        objc_msgSend_setParagraphStyle_forCharRange_undoTransaction_(v183, v258, v415, 0, v257, 0);
        objc_msgSend_setCharacterStyle_range_undoTransaction_(v183, v259, 0, 0, v257, 0);
        v414 = v257;
        v264 = objc_msgSend_documentRoot(v12, v260, v261, v262, v263);
        v269 = objc_msgSend_theme(v264, v265, v266, v267, v268);
        v274 = objc_msgSend_hyperlinkStyle(v269, v270, v271, v272, v273);

        v420[0] = MEMORY[0x277D85DD0];
        v420[1] = 3221225472;
        v420[2] = sub_221691578;
        v420[3] = &unk_278468170;
        v421 = v183;
        v422 = v274;
        v275 = v274;
        objc_msgSend_enumerateSmartFieldsWithAttributeKind_inRange_usingBlock_(v421, v276, 6, 0, v414, v420);
      }

      objc_msgSend_setRichTextValueWithoutPlaintextCollapse_(self, v204, v183, v206, v207);
    }

    else
    {
      v183 = objc_msgSend_asRawString(v11, v169, v170, v171, v172);
      objc_msgSend_setStringValue_(self, v184, v183, v185, v186);
    }

    if ((objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v277, 260, 1, v278) & 1) == 0)
    {
      if (formatType == 271 || formatType == 260)
      {
        v283 = v64;
      }

      else
      {
        v283 = objc_msgSend_textFormat(MEMORY[0x277D80680], v279, v280, v281, v282);
        v418 = 0;
      }

      v288 = v283;
      objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v284, v283, v418, v285);
    }

    if (a6)
    {
      *a6 = 1;
    }

    goto LABEL_153;
  }

  if (v71 != 10 && v71 != 12)
  {
    if (v71 == 19)
    {
      v72 = objc_msgSend_topLevelLambdaResultError(TSCEError, v67, v68, v69, v70);
      v76 = objc_msgSend_errorValue_(TSCEErrorValue, v73, v72, v74, v75);

      self->_valueType = 8;
      v77 = MEMORY[0x277D81150];
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, "[TSTCell applyFormulaResult:context:hasWarnings:outWriteDidBeginOrEndWithTextCell:propagateCheckboxes:]", v79, v80);
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v83, v84);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v86, v81, v85, 2512, 0, "unhandled formula result type found: <Functor>");

      v11 = v76;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88, v89, v90);
      goto LABEL_153;
    }

    goto LABEL_57;
  }

LABEL_30:
  v97 = sub_22121E75C(formatType);
  v102 = v97;
  if (v97 > 4)
  {
    if (v97 == 5)
    {
      objc_msgSend_setStringValue_(self, v98, &stru_2834BADA0, v100, v101);
      goto LABEL_153;
    }

    if (v97 != 6)
    {
      goto LABEL_58;
    }
  }

  else if (v97 != 3)
  {
    if (v97 == 4)
    {
      objc_msgSend_setDurationTimeIntervalValue_(self, v98, v99, v100, v101, 0.0);
      goto LABEL_153;
    }

LABEL_58:
    if (objc_msgSend_currencyIsMostRecentlySet(self, v98, v99, v100, v101))
    {
      if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v152, 257, 1, v153))
      {
        objc_msgSend_setCurrencyDoubleValue_(self, v154, v155, v156, v157, 0.0);
        v160 = 176;
LABEL_78:
        objc_msgSend_setCurrentFormat_isExplicit_(self, v158, *(&self->super.isa + v160), 1, v159);
        goto LABEL_153;
      }
    }

    else if (objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v152, 256, 1, v153))
    {
      objc_msgSend_setNumberDoubleValue_(self, v154, v187, v188, v157, 0.0);
      v160 = 168;
      goto LABEL_78;
    }

    if (v64)
    {
      objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v154, v64, 0, v157);
      if (v102 == 2)
      {
        objc_msgSend_setCurrencyDoubleValue_(self, v189, v190, v191, v192, 0.0);
      }

      else
      {
        objc_msgSend_setNumberDoubleValue_(self, v189, v190, v191, v192, 0.0);
      }

      goto LABEL_153;
    }

    v133 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v154, 256, self->_locale, v157);
    objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v289, v133, 0, v290);
    objc_msgSend_setNumberDoubleValue_(self, v291, v292, v293, v294, 0.0);
    goto LABEL_107;
  }

  if ((objc_msgSend_currentFormatIsExplicit(self, v98, v99, v100, v101) & 1) == 0)
  {
    objc_msgSend_p_setFormatForFormulaResult_propagation_(self, v67, v64, 0, v70);
  }

LABEL_153:
  if (a5)
  {
    v406 = 512;
  }

  else
  {
    v407 = objc_msgSend_warnings(v11, v67, v68, v69, v70);
    v412 = objc_msgSend_count(v407, v408, v409, v410, v411) != 0;

    v406 = v412 << 9;
  }

  self->_cellFlags = self->_cellFlags & 0xFDFF | v406;
  if (v12)
  {
    v413 = objc_msgSend_objectLocale(v12, v67, v68, v69, v70);
    self->_locale = v413;
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

- (BOOL)hasControl
{
  if (self->_controlCellSpecID)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_isControl(self->_cellSpec, a2, v2, v3, v4);
  }
}

- (void)suggestCellFormatKind:(unsigned __int8)a3
{
  if ((self->_valueType | 8) == 8)
  {
    self->_cellFormatKind = a3;
  }
}

- (unsigned)formatType
{
  v5 = objc_msgSend_currentFormat(self, a2, v2, v3, v4);

  return objc_msgSend_formatType(v5, v6, v7, v8, v9);
}

- (id)p_formatOfCellFormatKind:(unsigned __int8)a3 create:(BOOL)a4 returnFormat:(BOOL)a5 outCreated:(BOOL *)a6
{
  v7 = a5;
  durationFormat = 0;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4u:
        durationFormat = self->_durationFormat;
        if (durationFormat)
        {
          v22 = 1;
        }

        else
        {
          v22 = !a4;
        }

        if (v22)
        {
          goto LABEL_32;
        }

        v23 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, a3, a4, a5);
        v14 = objc_msgSend_defaultFormatWithFormatType_locale_(v23, v24, 268, v11, v25);
        break;
      case 5u:
        durationFormat = self->_textFormat;
        if (durationFormat || !a4)
        {
          goto LABEL_32;
        }

        v29 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, a3, a4, a5);
        v14 = objc_msgSend_defaultFormatWithFormatType_locale_(v29, v30, 260, v11, v31);
        break;
      case 6u:
        durationFormat = self->_BOOLeanFormat;
        if (durationFormat || !a4)
        {
          goto LABEL_32;
        }

        v15 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, a3, a4, a5);
        v14 = objc_msgSend_defaultFormatWithFormatType_locale_(v15, v16, 1, v11, v17);
        break;
      default:
        goto LABEL_32;
    }
  }

  else
  {
    switch(a3)
    {
      case 1u:
        durationFormat = self->_numberFormat;
        if (durationFormat)
        {
          v18 = 1;
        }

        else
        {
          v18 = !a4;
        }

        if (v18)
        {
          goto LABEL_32;
        }

        v19 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, a3, a4, a5);
        v14 = objc_msgSend_defaultFormatWithFormatType_locale_(v19, v20, 256, v11, v21);
        break;
      case 2u:
        durationFormat = self->_currencyFormat;
        if (durationFormat || !a4)
        {
          goto LABEL_32;
        }

        v26 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, a3, a4, a5);
        v14 = objc_msgSend_defaultFormatWithFormatType_locale_(v26, v27, 257, v11, v28);
        break;
      case 3u:
        durationFormat = self->_dateFormat;
        if (durationFormat || !a4)
        {
          goto LABEL_32;
        }

        v10 = MEMORY[0x277D80680];
        v11 = objc_msgSend_locale(self, a2, a3, a4, a5);
        v14 = objc_msgSend_defaultFormatWithFormatType_locale_(v10, v12, 261, v11, v13);
        break;
      default:
        goto LABEL_32;
    }
  }

  durationFormat = v14;

  objc_msgSend_setFormat_isExplicit_(self, v32, durationFormat, 0, v33);
  if (a6)
  {
    *a6 = 1;
  }

LABEL_32:
  if (v7)
  {
    v34 = durationFormat;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (void)setFormat:(id)a3 shouldSetExplFlags:(BOOL)a4 isExplicit:(BOOL)a5 makeCurrent:(BOOL)a6 clearingID:(BOOL)a7
{
  v7 = a6;
  if (a3)
  {
    v10 = a5;
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    v11 = a7;
  }

  else
  {
    v11 = 1;
  }

  if (a3)
  {
    v12 = a4;
  }

  else
  {
    v12 = 1;
  }

  v13 = objc_msgSend_formatType(a3, a2, a3, a4, a5);
  v17 = sub_22121E75C(v13);
  if (v7)
  {
    objc_msgSend_suggestCellFormatKind_(self, v14, v17, v15, v16);
  }

  if (v17 > 3)
  {
    switch(v17)
    {
      case 4:
        self->_durationFormat = a3;
        if (!v11)
        {
          break;
        }

        v18 = 92;
        goto LABEL_31;
      case 5:
        self->_textFormat = a3;
        if (!v11)
        {
          break;
        }

        v18 = 96;
        goto LABEL_31;
      case 6:
        self->_BOOLeanFormat = a3;
        if (v11)
        {
          v18 = 100;
          goto LABEL_31;
        }

        break;
    }
  }

  else
  {
    switch(v17)
    {
      case 1:
        self->_numberFormat = a3;
        if (!v11)
        {
          break;
        }

        v18 = 80;
        goto LABEL_31;
      case 2:
        self->_currencyFormat = a3;
        if (!v11)
        {
          break;
        }

        v18 = 84;
        goto LABEL_31;
      case 3:
        self->_dateFormat = a3;
        if (v11)
        {
          v18 = 88;
LABEL_31:
          *(&self->super.isa + v18) = 0;
        }

        break;
    }
  }

  if (v12)
  {

    objc_msgSend_p_setFormatExplicit_fromCellFormatKind_setMostRecentlySet_(self, v14, v10, v17, 1);
  }
}

- (void)setCurrentFormat:(id)a3 isExplicit:(BOOL)a4 forExcel:(BOOL)a5
{
  if (a5)
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, a2, a3, 1, a4, 1, 1);
  }

  else
  {
    objc_msgSend_setCurrentFormat_isExplicit_(self, a2, a3, a4, a5);
  }
}

- (void)setCurrentFormat:(id)a3 isExplicit:(BOOL)a4
{
  v5 = a4;
  v6 = a3;
  v8 = objc_msgSend_asCustomFormatWrapper(a3, a2, a3, a4, v4);
  if (v8)
  {
    v13 = v8;
    v14 = objc_msgSend_asCustomFormatWrapper(v6, v9, v10, v11, v12);
    v18 = objc_msgSend__validateCustomFormatWrapper_(self, v15, v14, v16, v17);

    if ((v18 & 1) == 0)
    {
      v22 = MEMORY[0x277D80680];
      v23 = objc_msgSend_asCustomFormatWrapper(v6, v9, v19, v20, v21);
      objc_msgSend_formatType(v23, v24, v25, v26, v27);
      v28 = TSUDefaultRootFormatTypeForCustomFormatType();
      v33 = objc_msgSend_locale(self, v29, v30, v31, v32);
      v6 = objc_msgSend_defaultFormatWithFormatType_locale_(v22, v34, v28, v33, v35);

      v5 = 0;
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v9, v6, 1, v5, 1, 1);
}

- (void)setFormat:(id)a3 isExplicit:(BOOL)a4
{
  v5 = a4;
  v6 = a3;
  v8 = objc_msgSend_asCustomFormatWrapper(a3, a2, a3, a4, v4);
  if (v8)
  {
    v13 = v8;
    v14 = objc_msgSend_asCustomFormatWrapper(v6, v9, v10, v11, v12);
    v18 = objc_msgSend__validateCustomFormatWrapper_(self, v15, v14, v16, v17);

    if ((v18 & 1) == 0)
    {
      v22 = MEMORY[0x277D80680];
      v23 = objc_msgSend_asCustomFormatWrapper(v6, v9, v19, v20, v21);
      objc_msgSend_formatType(v23, v24, v25, v26, v27);
      v28 = TSUDefaultRootFormatTypeForCustomFormatType();
      v33 = objc_msgSend_locale(self, v29, v30, v31, v32);
      v6 = objc_msgSend_defaultFormatWithFormatType_locale_(v22, v34, v28, v33, v35);

      v5 = 0;
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v9, v6, 1, v5, 0, 1);
}

- (void)setCurrentFormat:(id)a3 flags:(unsigned __int16)a4
{
  v5 = a4;
  v8 = objc_msgSend_formatType(a3, a2, a3, a4, v4);
  v9 = 1;
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v10, a3, 0, 0, 1, 1);
  v14 = sub_22121E83C(v8) & v5;
  if (!v14)
  {
    if (objc_msgSend_p_formatTypeIsANumberFormatTypeForMostRecentlySet_(self, v11, v8, v12, v13))
    {
      v15 = sub_22121E75C(v8);
      v9 = (v5 & 0x800) == 0 || v15 == 2;
    }

    else
    {
      v9 = 0;
    }
  }

  v18 = sub_22121E75C(v8);

  objc_msgSend_p_setFormatExplicit_fromCellFormatKind_setMostRecentlySet_(self, v17, v14 != 0, v18, v9);
}

- (void)p_setFormatForFormulaResult:(id)a3 propagation:(BOOL)a4
{
  v4 = a4;
  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, a2, a3, 0, 0, 1, 1);
  v11 = objc_msgSend_formatType(a3, v7, v8, v9, v10);
  v12 = sub_22121E75C(v11);
  objc_msgSend_p_setFormatExplicit_fromCellFormatKind_setMostRecentlySet_(self, v13, 0, v12, 0);

  objc_msgSend_p_setFormatFlags_explicit_(self, v14, 0x8000, v4, v15);
}

- (void)p_clearFormatOfCellFormatKind:(unsigned __int8)a3
{
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4u:
        v5 = -5;
        v6 = 192;
        v7 = 92;
        break;
      case 5u:
        v5 = -129;
        v6 = 200;
        v7 = 96;
        break;
      case 6u:
        v5 = -33;
        v6 = 208;
        v7 = 100;
        break;
      default:
        return;
    }

    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v5 = -2;
    v6 = 168;
    v7 = 80;
LABEL_15:
    *(&self->super.isa + v7) = 0;
    *(&self->super.isa + v6) = 0;
    p_explicitFormatFlags = &self->_explicitFormatFlags;
    goto LABEL_16;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      return;
    }

    v5 = -9;
    v6 = 184;
    v7 = 88;
    goto LABEL_15;
  }

  self->_currencyFormatID = 0;
  self->_currencyFormat = 0;
  p_explicitFormatFlags = &self->_explicitFormatFlags;
  self->_explicitFormatFlags &= ~2u;
  if ((objc_msgSend_currencyIsMostRecentlySet(self, a2, a3, v3, v4) & 1) == 0)
  {
    return;
  }

  v5 = -2049;
LABEL_16:
  *p_explicitFormatFlags &= v5;
}

- (void)clearFormatOfType:(unsigned int)a3
{
  v5 = sub_22121E75C(a3);

  objc_msgSend_p_clearFormatOfCellFormatKind_(self, v4, v5, v6, v7);
}

- (BOOL)p_clearIfImplicitAndNotCurrentForKind:(unsigned __int8)a3 format:(id)a4 explicitFormatMask:(unsigned __int16)a5
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  if ((self->_explicitFormatFlags & a5) != 0 || self->_cellFormatKind == a3)
  {
    v7 = objc_msgSend_formatType(a4, a2, a3, a4, a5);
    if (sub_22121E75C(v7) == v5)
    {
      return 0;
    }
  }

  objc_msgSend_p_clearFormatOfCellFormatKind_(self, a2, v5, a4, a5);
  v8 = 1;
  if (self->_cellFormatKind == v5)
  {
    v10 = objc_msgSend_p_formatOfCellFormatKind_create_returnFormat_outCreated_(self, v9, v5, 1, 0, 0);
  }

  return v8;
}

- (BOOL)validateAndRepair
{
  numberFormat = self->_numberFormat;
  currencyFormat = self->_currencyFormat;
  dateFormat = self->_dateFormat;
  durationFormat = self->_durationFormat;
  textFormat = self->_textFormat;
  BOOLeanFormat = self->_BOOLeanFormat;
  if (objc_msgSend_hasCurrentFormat(self, a2, v2, v3, v4) && (objc_msgSend_currentFormatIsExplicit(self, v12, v13, v14, v15) & 1) == 0 && (self->_valueType | 8) == 8)
  {
    objc_msgSend_setCurrentFormat_isExplicit_(self, v12, 0, 0, v15);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  if (!self->_cellSpec)
  {
    if (objc_msgSend_formatType(numberFormat, v12, v13, v14, v15) == 267 && self->_valueType == 2)
    {
      v16 = 1;
      objc_msgSend_p_clearFormatOfCellFormatKind_(self, v17, 1, v19, v20);
    }

    if (objc_msgSend_formatType(BOOLeanFormat, v17, v18, v19, v20) == 263)
    {
      objc_msgSend_p_clearFormatOfCellFormatKind_(self, v12, 6, v14, v15);
      v16 = 1;
    }
  }

  if (objc_msgSend_hasMismatchedFormatAndValue(self, v12, v13, v14, v15))
  {
    cellFormatKind = objc_msgSend_cellFormatKindForValueType_(TSTCell, v21, self->_valueType, v22, v23);
    self->_cellFormatKind = cellFormatKind;
    v16 = 1;
  }

  else
  {
    cellFormatKind = self->_cellFormatKind;
  }

  v36 = 0;
  v25 = objc_msgSend_p_formatOfCellFormatKind_create_returnFormat_outCreated_(self, v21, cellFormatKind, 1, 0, &v36);
  v30 = v36;
  if (!numberFormat || (v31 = 1, (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v26, 1, numberFormat, 1) & 1) == 0))
  {
    v31 = v16 | v30;
  }

  if (currencyFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v26, 2, currencyFormat, 2) & 1) != 0)
  {
    v31 = 1;
  }

  if (durationFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v26, 4, durationFormat, 4) & 1) != 0)
  {
    v31 = 1;
  }

  if (dateFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v26, 3, dateFormat, 8) & 1) != 0)
  {
    v31 = 1;
  }

  if (textFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v26, 5, textFormat, 128) & 1) != 0)
  {
    v31 = 1;
  }

  if (BOOLeanFormat && (objc_msgSend_p_clearIfImplicitAndNotCurrentForKind_format_explicitFormatMask_(self, v26, 6, BOOLeanFormat, 32) & 1) != 0)
  {
    v31 = 1;
  }

  if (!currencyFormat && objc_msgSend_currencyIsMostRecentlySet(self, v26, v27, v28, v29))
  {
    objc_msgSend_p_TSTCellSetMostRecentlySetNumberFormatWithCurrencyFlag_(self, v32, 0, v33, v34);
    v31 = 1;
  }

  return v31 & 1;
}

- (void)clearAllFormats
{
  self->_explicitFormatFlags = 0;
  *&self->_dateFormatID = 0;
  *&self->_textFormatID = 0;
  *&self->_numberFormatID = 0;
  *&self->_numberFormat = 0u;
  *&self->_dateFormat = 0u;
  *&self->_textFormat = 0u;
}

- (void)copyAllFormatsToCell:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (v4)
  {
    *(v4 + 46) = self->_cellFormatKind;
    *(v4 + 20) = self->_explicitFormatFlags;
    objc_msgSend_p_setFormatFlags_explicit_(v4, v5, 0x8000, 0, v7);
    v19[20] = self->_numberFormatID;
    *(v19 + 21) = self->_numberFormat;
    v19[21] = self->_currencyFormatID;
    *(v19 + 22) = self->_currencyFormat;
    v19[22] = self->_dateFormatID;
    *(v19 + 23) = self->_dateFormat;
    v19[23] = self->_durationFormatID;
    *(v19 + 24) = self->_durationFormat;
    v19[24] = self->_textFormatID;
    *(v19 + 25) = self->_textFormat;
    v19[25] = self->_BOOLeanFormatID;
    *(v19 + 26) = self->_BOOLeanFormat;
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTCell copyAllFormatsToCell:]", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 2976, 0, "invalid nil value for '%{public}s'", "dest");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }
}

- (void)processCustomFormatsWithBlock:(id)a3
{
  v4 = a3;
  v21 = 0;
  if (objc_msgSend_formatType(self->_numberFormat, v5, v6, v7, v8) != 270 || (objc_msgSend_asCustomFormatWrapper(self->_numberFormat, v9, v10, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), v4[2](v4, v13, &v21), v13, (v21 & 1) == 0))
  {
    if (objc_msgSend_formatType(self->_currencyFormat, v9, v10, v11, v12) == 274)
    {
      v14 = objc_msgSend_asCustomFormatWrapper(self->_currencyFormat, v9, v10, v11, v12);
      v4[2](v4, v14, &v21);
    }
  }

  if ((v21 & 1) == 0 && objc_msgSend_formatType(self->_dateFormat, v9, v10, v11, v12) == 272)
  {
    v15 = objc_msgSend_asCustomFormatWrapper(self->_dateFormat, v9, v10, v11, v12);
    v4[2](v4, v15, &v21);
  }

  if ((v21 & 1) == 0 && objc_msgSend_formatType(self->_textFormat, v9, v10, v11, v12) == 271)
  {
    v20 = objc_msgSend_asCustomFormatWrapper(self->_textFormat, v16, v17, v18, v19);
    v4[2](v4, v20, &v21);
  }
}

- (BOOL)_validateCustomFormatWrapper:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_formatType(v3, v4, v5, v6, v7);
  if (!v3 || ((v13 = v8, (v8 - 270) <= 4) ? (v14 = v8 == 273) : (v14 = 1), v14))
  {
    v25 = 0;
  }

  else
  {
    v19 = objc_msgSend_customFormat(v3, v9, v10, v11, v12);
    if (v19)
    {
      v20 = objc_msgSend_customFormat(v3, v15, v16, v17, v18);
      v25 = v13 == objc_msgSend_formatType(v20, v21, v22, v23, v24);
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (void)updateCustomFormatFromPaste:(id)a3
{
  v23 = a3;
  v8 = objc_msgSend_formatType(v23, v4, v5, v6, v7);
  v9 = sub_22121E75C(v8);
  v14 = objc_msgSend_cellFormatKind(self, v10, v11, v12, v13);
  if (objc_msgSend__validateCustomFormatWrapper_(self, v15, v23, v16, v17))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(self, v18, v23, 0, 0, v14 == v9, 1);
  }

  else if (v14 == v9 && objc_msgSend_hasValue(self, v18, v19, v20, v21))
  {
    objc_msgSend_setDefaultFormatForValue(self, v18, v22, v20, v21);
  }

  else
  {
    objc_msgSend_p_clearFormatOfCellFormatKind_(self, v18, v9, v20, v21);
  }
}

- (BOOL)removeCustomFormatsWithIDs:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221692958;
  v10[3] = &unk_278468198;
  v10[4] = self;
  v11 = v4;
  v12 = &v13;
  v5 = v4;
  objc_msgSend_processCustomFormatsWithBlock_(self, v6, v10, v7, v8);
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

- (void)p_TSTCellSetMostRecentlySetNumberFormatWithCurrencyFlag:(BOOL)a3
{
  cellFormatKind = self->_cellFormatKind;
  if (a3)
  {
    if (cellFormatKind == 1)
    {
      return;
    }

    goto LABEL_3;
  }

  if (cellFormatKind != 2)
  {
LABEL_3:
    objc_msgSend_p_setFormatFlags_explicit_(self, a2, 2048, a3, v3);
  }
}

- (void)p_setFormatFlags:(unsigned __int16)a3 explicit:(BOOL)a4
{
  explicitFormatFlags = self->_explicitFormatFlags;
  v5 = explicitFormatFlags & ~a3;
  v6 = explicitFormatFlags | a3;
  if (!a4)
  {
    v6 = v5;
  }

  self->_explicitFormatFlags = v6;
}

- (void)p_setFormatExplicit:(BOOL)a3 fromCellFormatKind:(unsigned __int8)a4 setMostRecentlySet:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (self->_cellFormatKind | a4)
  {
    if (!a4)
    {
      return;
    }
  }

  else
  {
    objc_msgSend_p_setFormatFlags_explicit_(self, a2, 0x8000, 0, a5);
    if (!v6)
    {
      return;
    }
  }

  v9 = sub_22121E814(v6);
  objc_msgSend_p_setFormatFlags_explicit_(self, v10, v9, v7, v11);
  if (v5 && (self->_cellFormatKind == v6 || v7))
  {
    if (v9 == 1)
    {
      v15 = 0;
    }

    else
    {
      if (v9 != 2)
      {
        return;
      }

      v15 = 1;
    }

    objc_msgSend_p_TSTCellSetMostRecentlySetNumberFormatWithCurrencyFlag_(self, v12, v15, v13, v14);
  }
}

- (BOOL)currentFormatIsExplicitForCalcEngine
{
  if (self->_explicitFormatFlags < 0)
  {
    return 1;
  }

  else
  {
    return objc_msgSend_currentFormatIsExplicit(self, a2, v2, v3, v4);
  }
}

- (id)formatOfType:(unsigned int)a3 allowMismatchedSpare:(BOOL)a4
{
  v7 = sub_22121E75C(a3);
  v9 = objc_msgSend_p_formatOfCellFormatKind_create_returnFormat_outCreated_(self, v8, v7, 0, 1, 0);

  if (!a4 && objc_msgSend_formatType(v9, v10, v11, v12, v13) != a3)
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasFormatOfType:(unsigned int)a3 allowMismatchedSpare:(BOOL)a4
{
  v5 = objc_msgSend_formatOfType_allowMismatchedSpare_(self, a2, *&a3, a4, v4);
  v6 = v5 != 0;

  return v6;
}

- (BOOL)hasExplicitFormatOfType:(unsigned int)a3 allowMismatchedSpare:(BOOL)a4
{
  v5 = *&a3;
  v7 = sub_22121E83C(a3);
  v10 = (self->_explicitFormatFlags & v7) != 0;
  if ((self->_explicitFormatFlags & v7) != 0 && !a4)
  {
    v11 = objc_msgSend_formatOfType_allowMismatchedSpare_(self, v8, v5, 0, v9);
    v10 = v11 != 0;
  }

  return v10;
}

- (id)formatOfCellFormatKind:(unsigned __int8)a3 isExplicit:(BOOL *)a4
{
  v5 = a3;
  v7 = objc_msgSend_p_formatOfCellFormatKind_create_returnFormat_outCreated_(self, a2, a3, 0, 1, 0);
  if (v7)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    explicitFormatFlags = self->_explicitFormatFlags;
    v9 = (sub_22121E814(v5) & explicitFormatFlags) != 0;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_7;
    }

    v9 = 0;
  }

  *a4 = v9;
LABEL_7:

  return v7;
}

+ (BOOL)formatType:(unsigned int)a3 isSameCellFormatKindAs:(unsigned int)a4 allowNumberCurrencyMismatch:(BOOL)a5
{
  if (a3 == a4)
  {
    return 1;
  }

  v6 = a5;
  v8 = sub_22121E75C(a3);
  v9 = sub_22121E75C(a4);
  return v8 == v9 || v6 && (v8 == 1 && v9 == 2 || v9 == 1 && v8 == 2);
}

- (id)candidateFormatForSliderStepperControlWithIsCurrent:(BOOL *)a3
{
  cellFormatKind = self->_cellFormatKind;
  if (cellFormatKind == 2)
  {
    v8 = 176;
  }

  else if (cellFormatKind == 1)
  {
    v8 = 168;
  }

  else
  {
    IsMostRecentlySet = objc_msgSend_currencyIsMostRecentlySet(self, a2, a3, v3, v4);
    v8 = 168;
    if (IsMostRecentlySet)
    {
      v8 = 176;
    }
  }

  v10 = *(&self->super.isa + v8);
  if (!v10)
  {
LABEL_15:
    v22 = MEMORY[0x277D80680];
    v23 = objc_msgSend_locale(self, v11, v12, v13, v14);
    v15 = objc_msgSend_defaultFormatWithFormatType_locale_(v22, v24, 256, v23, v25);

    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v15 = v10;
  v16 = objc_msgSend_formatType(v10, v11, v12, v13, v14);
  if ((v16 - 256) > 0xD || ((1 << v16) & 0x204F) == 0)
  {

    goto LABEL_15;
  }

  if (a3)
  {
LABEL_16:
    v26 = objc_msgSend_currentFormat(self, v17, v18, v19, v20);
    *a3 = v15 == v26;
  }

LABEL_17:

  return v15;
}

- (NSString)customFormatString
{
  v6 = objc_msgSend_currentFormat(self, a2, v2, v3, v4);
  v11 = objc_msgSend_asCustomFormatWrapper(v6, v7, v8, v9, v10);
  objc_msgSend_underlyingDoubleValue(self, v12, v13, v14, v15);
  v20 = objc_msgSend_customFormatDataForValue_(v11, v16, v17, v18, v19);
  v25 = objc_msgSend_formatString(v20, v21, v22, v23, v24);

  return v25;
}

- (BOOL)currentFormatUsesAccountingStyle
{
  v6 = objc_msgSend_formatType(self, a2, v2, v3, v4);
  if (v6 == 274 || v6 == 270)
  {
    v11 = objc_msgSend_currentFormat(self, v7, v8, v9, v10);
    v16 = objc_msgSend_asCustomFormatWrapper(v11, v22, v23, v24, v25);
    objc_msgSend_underlyingDoubleValue(self, v26, v27, v28, v29);
    v34 = objc_msgSend_customFormatDataForValue_(v16, v30, v31, v32, v33);
    v21 = objc_msgSend_useAccountingStyle(v34, v35, v36, v37, v38);
  }

  else
  {
    if (v6 != 257)
    {
      return 0;
    }

    v11 = objc_msgSend_currentFormat(self, v7, v8, v9, v10);
    v16 = objc_msgSend_asCurrencyFormat(v11, v12, v13, v14, v15);
    v21 = objc_msgSend_accountingStyle(v16, v17, v18, v19, v20);
  }

  return v21;
}

- (unsigned)currentFormatNegativeStyle
{
  v5 = objc_msgSend_currentFormat(self, a2, v2, v3, v4);
  v10 = objc_msgSend_asNumberFormat(v5, v6, v7, v8, v9);

  if (v10)
  {
    v15 = objc_msgSend_asNumberFormat(v5, v11, v12, v13, v14);
    v20 = objc_msgSend_negativeStyle(v15, v16, v17, v18, v19);
  }

  else
  {
    v21 = objc_msgSend_asCurrencyFormat(v5, v11, v12, v13, v14);

    if (!v21)
    {
      v30 = 4;
      goto LABEL_6;
    }

    v15 = objc_msgSend_asCurrencyFormat(v5, v22, v23, v24, v25);
    v20 = objc_msgSend_negativeStyle(v15, v26, v27, v28, v29);
  }

  v30 = v20;

LABEL_6:
  return v30;
}

- (BOOL)isMostRecentlyExplicitPercent
{
  if (objc_msgSend_formatType(self, a2, v2, v3, v4) == 258)
  {
    return 1;
  }

  if (objc_msgSend_currentFormatIsExplicit(self, v6, v7, v8, v9) & 1) != 0 || (objc_msgSend_currencyIsMostRecentlySet(self, v11, v12, v13, v14))
  {
    return 0;
  }

  return objc_msgSend_hasExplicitFormatOfType_allowMismatchedSpare_(self, v15, 258, 0, v16);
}

+ (unsigned)cellFormatKindForValueType:(unsigned __int8)a3
{
  if (a3 > 0xAu)
  {
    return 6;
  }

  else
  {
    return byte_221803898[a3];
  }
}

+ (BOOL)mismatchBetweenValueType:(unsigned __int8)a3 andFormatType:(unsigned int)a4
{
  v4 = a3;
  v5 = sub_22121E75C(a4);

  return MEMORY[0x2821F9670](TSTCell, sel_p_mismatchBetweenValueType_andCellFormatKind_, v4, v5, v6);
}

- (void)setDefaultFormatForValue
{
  v4 = self->_valueType - 2;
  if (v4 <= 8 && ((0x1BBu >> v4) & 1) != 0)
  {
    v5 = objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], a2, dword_2218038A4[(self->_valueType - 2)], self->_locale, v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  objc_msgSend_setCurrentFormat_isExplicit_(self, a2, v5, 0, v2);
}

- (void)setFormatID:(unsigned int)a3 forStorageFlag:(unsigned int)a4
{
  if (a4 >= 0x10000)
  {
    switch(a4)
    {
      case 0x10000u:
        self->_durationFormatID = a3;
        return;
      case 0x20000u:
        self->_textFormatID = a3;
        return;
      case 0x40000u:
        self->_BOOLeanFormatID = a3;
        return;
    }
  }

  else
  {
    switch(a4)
    {
      case 0x2000u:
        self->_numberFormatID = a3;
        return;
      case 0x4000u:
        self->_currencyFormatID = a3;
        return;
      case 0x8000u:
        self->_dateFormatID = a3;
        return;
    }
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell setFormatID:forStorageFlag:]", *&a4, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 3496, 0, "Inappropriate storage flag.");

  v16 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
}

- (id)formatForStorageFlag:(unsigned int)a3
{
  if (a3 >= 0x10000)
  {
    switch(a3)
    {
      case 0x10000u:
        durationFormat = self->_durationFormat;
        goto LABEL_15;
      case 0x20000u:
        durationFormat = self->_textFormat;
        goto LABEL_15;
      case 0x40000u:
        durationFormat = self->_BOOLeanFormat;
        goto LABEL_15;
    }

LABEL_12:
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell formatForStorageFlag:]", v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 3522, 0, "Inappropriate storage flag.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
    v17 = 0;
    goto LABEL_16;
  }

  if (a3 == 0x2000)
  {
    durationFormat = self->_numberFormat;
    goto LABEL_15;
  }

  if (a3 == 0x4000)
  {
    durationFormat = self->_currencyFormat;
    goto LABEL_15;
  }

  if (a3 != 0x8000)
  {
    goto LABEL_12;
  }

  durationFormat = self->_dateFormat;
LABEL_15:
  v17 = durationFormat;
LABEL_16:

  return v17;
}

- (unsigned)formatIDForStorageFlag:(unsigned int)a3
{
  if (a3 >= 0x10000)
  {
    if (a3 == 0x10000)
    {
      return self->_durationFormatID;
    }

    if (a3 != 0x20000)
    {
      if (a3 == 0x40000)
      {
        return self->_BOOLeanFormatID;
      }

      goto LABEL_12;
    }

    return self->_textFormatID;
  }

  else
  {
    if (a3 == 0x2000)
    {
      return self->_numberFormatID;
    }

    if (a3 != 0x4000)
    {
      if (a3 == 0x8000)
      {
        return self->_dateFormatID;
      }

LABEL_12:
      v6 = MEMORY[0x277D81150];
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTCell formatIDForStorageFlag:]", v3, v4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCell.mm", v9, v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 3549, 0, "Inappropriate storage flag.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
      return 0;
    }

    return self->_currencyFormatID;
  }
}

- (BOOL)hasAnyWarning
{
  if (objc_msgSend_hasFormula(self, a2, v2, v3, v4))
  {
    v10 = (self->_cellFlags >> 9) & 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  importWarningSet = self->_importWarningSet;
  if (importWarningSet)
  {
    LOBYTE(importWarningSet) = objc_msgSend_areAnySet(importWarningSet, v6, v7, v8, v9);
  }

  return (v10 | importWarningSet) & 1;
}

- (void)setImportWarningSet:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_importWarningSet != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_importWarningSet, a3);
    v7 = v8;
    if (!v8 || v4)
    {
      self->_importWarningSetID = 0;
    }
  }
}

- (void)setCommentStorage:(id)a3 clearingID:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_commentStorage != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_commentStorage, a3);
    v7 = v8;
    if (!v8 || v4)
    {
      self->_commentStorageID = 0;
    }
  }
}

- (id)reorganizeValueForSorting
{
  v3 = objc_alloc_init(TSTCellReorganizeValue);
  v8 = objc_msgSend_valueType(self, v4, v5, v6, v7);
  objc_msgSend_setValueType_(v3, v9, v8, v10, v11);
  v16 = objc_msgSend_valueType(v3, v12, v13, v14, v15);
  v20 = 5;
  if (v16 > 5)
  {
    if (v16 <= 8)
    {
      if (v16 != 6)
      {
        if (v16 != 7)
        {
          goto LABEL_23;
        }

        objc_msgSend_setRank_(v3, v17, 4, v18, v19);
        goto LABEL_19;
      }

      v20 = 1;
LABEL_18:
      objc_msgSend_setRank_(v3, v17, v20, v18, v19);
LABEL_19:
      objc_msgSend_underlyingDoubleValue(self, v21, v22, v23, v24);
      objc_msgSend_setDoubleValue_(v3, v38, v39, v40, v41);
      goto LABEL_23;
    }

    if (v16 != 9)
    {
      if (v16 != 10)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    objc_msgSend_setRank_(v3, v17, 2, v18, v19);
    v29 = objc_msgSend_richTextValue(self, v49, v50, v51, v52);
    v57 = objc_msgSend_string(v29, v53, v54, v55, v56);
    objc_msgSend_setString_(v3, v58, v57, v59, v60);

LABEL_22:
    goto LABEL_23;
  }

  if (v16 > 2)
  {
    if (v16 == 3)
    {
      objc_msgSend_setRank_(v3, v17, 2, v18, v19);
      v29 = objc_msgSend_stringValue(self, v42, v43, v44, v45);
      objc_msgSend_setString_(v3, v46, v29, v47, v48);
    }

    else
    {
      if (v16 != 5)
      {
        goto LABEL_23;
      }

      objc_msgSend_setRank_(v3, v17, 3, v18, v19);
      v29 = objc_msgSend_dateValue(self, v25, v26, v27, v28);
      objc_msgSend_timeIntervalSinceReferenceDate(v29, v30, v31, v32, v33);
      objc_msgSend_setDoubleValue_(v3, v34, v35, v36, v37);
    }

    goto LABEL_22;
  }

  if (!v16)
  {
    objc_msgSend_setRank_(v3, v17, 0, v18, v19);
    goto LABEL_23;
  }

  if (v16 == 2)
  {
    goto LABEL_18;
  }

LABEL_23:

  return v3;
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

+ (id)stringForCellValueType:(unsigned __int8)a3
{
  if (a3 > 0xAu)
  {
    return @"<Unknown>";
  }

  else
  {
    return off_2784681B8[a3];
  }
}

- (id)cellValueDescription
{
  if (objc_msgSend_hasCellSpec(self, a2, v2, v3, v4))
  {
    if (self->_cellSpec)
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v6, @"<cellSpec: %@>", v7, v8, self->_cellSpec);
      goto LABEL_7;
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v6, @"<cellSpec not populated>", v7, v8);
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], v6, &stru_2834BADA0, v7, v8);
  }
  v9 = ;
LABEL_7:
  v14 = v9;
  valueType = self->_valueType;
  if (valueType > 5)
  {
    if (self->_valueType <= 7u)
    {
      if (valueType == 6)
      {
        v64 = MEMORY[0x277CCACA8];
        if (objc_msgSend_BOOLValue(self, v10, v11, v12, v13))
        {
          objc_msgSend_stringWithFormat_(v64, v65, @"<BOOL: '%@'>", v66, v67, @"TRUE");
        }

        else
        {
          objc_msgSend_stringWithFormat_(v64, v65, @"<BOOL: '%@'>", v66, v67, @"FALSE");
        }
        v21 = ;
        objc_msgSend_appendString_(v14, v68, v21, v69, v70);
        goto LABEL_33;
      }

      if (valueType == 7)
      {
        v46 = MEMORY[0x277CCACA8];
        objc_msgSend_durationTimeIntervalValue(self, v10, v11, v12, v13);
        v21 = objc_msgSend_stringWithFormat_(v46, v47, @"<duration: %f>", v48, v49, v50);
        objc_msgSend_appendString_(v14, v51, v21, v52, v53);
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (valueType == 8)
    {
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"<error>", v12, v13);
      objc_msgSend_appendString_(v14, v61, v21, v62, v63);
      goto LABEL_33;
    }

    if (valueType != 9)
    {
      if (valueType == 10)
      {
        v16 = MEMORY[0x277CCACA8];
        objc_msgSend_currencyDoubleValue(self, v10, v11, v12, v13);
        v21 = objc_msgSend_stringWithFormat_(v16, v17, @"<number: %f>", v18, v19, v20);
        objc_msgSend_appendString_(v14, v22, v21, v23, v24);
LABEL_33:

        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v71 = MEMORY[0x277CCACA8];
    v21 = objc_msgSend_richTextValue(self, v10, v11, v12, v13);
    v38 = objc_msgSend_string(v21, v72, v73, v74, v75);
    v42 = objc_msgSend_stringWithFormat_(v71, v76, @"<rich text: '%@'>", v77, v78, v38);
    objc_msgSend_appendString_(v14, v79, v42, v80, v81);
    goto LABEL_31;
  }

  if (self->_valueType > 2u)
  {
    if (valueType == 3)
    {
      v54 = MEMORY[0x277CCACA8];
      v21 = objc_msgSend_stringValue(self, v10, v11, v12, v13);
      v38 = objc_msgSend_stringWithFormat_(v54, v55, @"<string: '%@'>", v56, v57, v21);
      objc_msgSend_appendString_(v14, v58, v38, v59, v60);
LABEL_32:

      goto LABEL_33;
    }

    if (valueType != 5)
    {
      goto LABEL_34;
    }

    v33 = MEMORY[0x277CCACA8];
    v21 = objc_msgSend_dateValue(self, v10, v11, v12, v13);
    v38 = objc_msgSend_description(v21, v34, v35, v36, v37);
    v42 = objc_msgSend_stringWithFormat_(v33, v39, @"<date: '%@'>", v40, v41, v38);
    objc_msgSend_appendString_(v14, v43, v42, v44, v45);
LABEL_31:

    goto LABEL_32;
  }

  if (!self->_valueType)
  {
    objc_msgSend_appendString_(v9, v10, @"<empty>", v12, v13);
    goto LABEL_35;
  }

  if (valueType == 2)
  {
    v25 = MEMORY[0x277CCACA8];
    objc_msgSend_numberDoubleValue(self, v10, v11, v12, v13);
    v21 = objc_msgSend_stringWithFormat_(v25, v26, @"<number: %f>", v27, v28, v29);
    objc_msgSend_appendString_(v14, v30, v21, v31, v32);
    goto LABEL_33;
  }

LABEL_34:
  objc_msgSend_appendString_(v9, v10, @"<unknown cell type>", v12, v13);
LABEL_35:

  return v14;
}

@end