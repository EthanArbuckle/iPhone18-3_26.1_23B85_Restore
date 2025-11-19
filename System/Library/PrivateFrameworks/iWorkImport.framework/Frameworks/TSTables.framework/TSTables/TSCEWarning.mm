@interface TSCEWarning
+ (id)loadFromArchive:(const void *)a3;
+ (id)warningFor3DReferenceFormula:(id)a3;
+ (id)warningForArrayModeWarning:(id)a3;
+ (id)warningForArrayedFormula:(id)a3;
+ (id)warningForComparisonWithLeftType:(char)a3 rightType:(char)a4;
+ (id)warningForDifferentBehaviorForFunctionFormula:(id)a3 originalFormula:(id)a4;
+ (id)warningForErrorTokenFormula:(id)a3;
+ (id)warningForExternalReferenceFormula:(id)a3;
+ (id)warningForFormulaReplacedForExcelCompat:(id)a3 originalFormula:(id)a4;
+ (id)warningForNaturalLanguageFormula:(id)a3;
+ (id)warningForReferenceOutOfBoundsFormula:(id)a3;
+ (id)warningForSharedFormulaBaseNotFoundFormula:(id)a3;
+ (id)warningForTransposedWithIssues:(id)a3;
+ (id)warningForTransposedWithoutIssues:(id)a3;
+ (id)warningForUnknownName:(id)a3 originalFormula:(id)a4;
+ (id)warningForUnsupportedDataFormat:(id)a3;
+ (id)warningForUnsupportedFormula:(id)a3;
+ (id)warningForUnsupportedFunction:(id)a3 originalFormula:(id)a4;
+ (id)warningForUnsupportedNameFormula:(id)a3 originalFormula:(id)a4;
+ (id)warningWithType:(int64_t)a3;
+ (id)warningWithType:(int64_t)a3 originalDataFormat:(id)a4;
+ (id)warningWithType:(int64_t)a3 originalFormula:(id)a4;
+ (id)warningWithType:(int64_t)a3 originalFormula:(id)a4 supplementaryText:(id)a5;
+ (id)warningWithType:(int64_t)a3 originalFormula:(id)a4 supplementaryText:(id)a5 originalDataFormat:(id)a6;
+ (int64_t)warningTypePrunedToThisVersion:(unsigned int)a3;
+ (void)reportAutomaticUnitConversionWarningInContext:(id)a3;
+ (void)reportBoolToNumberConversionWarningInContext:(id)a3;
+ (void)reportComparisonWarningInContext:(id)a3 leftType:(char)a4 rightType:(char)a5;
+ (void)reportDayOutOfRangeWarningInContext:(id)a3;
+ (void)reportLossOfUnitsWarningInContext:(id)a3;
+ (void)reportMonthOutOfRangeWarningInContext:(id)a3;
+ (void)reportNonNumericCellWarningInContext:(id)a3;
+ (void)reportWarningInContext:(id)a3 warningType:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (TSCEWarning)initWithWarningType:(int64_t)a3 originalFormula:(id)a4 supplementaryText:(id)a5 originalDataFormat:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)displayStringWithCalculationEngine:(id)a3 forTable:(const TSKUIDStruct *)a4;
- (id)displayStringWithCalculationEngine:(id)a3 forTable:(const TSKUIDStruct *)a4 andCellID:(TSUCellCoord)a5;
- (id)numberForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (void)_calculatehashValue;
- (void)saveToArchive:(void *)a3;
- (void)setNumber:(id)a3 forKey:(id)a4;
- (void)setString:(id)a3 forKey:(id)a4;
@end

@implementation TSCEWarning

+ (int64_t)warningTypePrunedToThisVersion:(unsigned int)a3
{
  if (a3 - 33 < 0x43 || a3 > 0x6E)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)warningWithType:(int64_t)a3 originalFormula:(id)a4 supplementaryText:(id)a5 originalDataFormat:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a1 alloc];
  v15 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v13, v14, a3, v10, v11, v12);

  return v15;
}

+ (id)warningWithType:(int64_t)a3 originalFormula:(id)a4 supplementaryText:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 alloc];
  v12 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v10, v11, a3, v8, v9, 0);

  return v12;
}

+ (id)warningWithType:(int64_t)a3 originalFormula:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v9 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v7, v8, a3, v6, 0, 0);

  return v9;
}

+ (id)warningWithType:(int64_t)a3 originalDataFormat:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v9 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v7, v8, a3, 0, 0, v6);

  return v9;
}

+ (id)warningWithType:(int64_t)a3
{
  v4 = [a1 alloc];
  v6 = objc_msgSend_initWithWarningType_originalFormula_supplementaryText_originalDataFormat_(v4, v5, a3, 0, 0, 0);

  return v6;
}

- (TSCEWarning)initWithWarningType:(int64_t)a3 originalFormula:(id)a4 supplementaryText:(id)a5 originalDataFormat:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v34.receiver = self;
  v34.super_class = TSCEWarning;
  v13 = [(TSCEWarning *)&v34 init];
  v18 = v13;
  if (v13)
  {
    v13->_warningType = a3;
    if (v10 || v11 || v12)
    {
      v19 = objc_opt_new();
      warningInfoDict = v18->_warningInfoDict;
      v18->_warningInfoDict = v19;

      if (v10)
      {
        v21 = v18->_warningInfoDict;
        v22 = objc_msgSend_valueWithString_(TSCEWarningValue, v14, v10, v16, v17);
        objc_msgSend_setObject_forKey_(v21, v23, v22, @"TSCEOriginalFormulaKey", v24);
      }

      if (v11)
      {
        v25 = v18->_warningInfoDict;
        v26 = objc_msgSend_valueWithString_(TSCEWarningValue, v14, v11, v16, v17);
        objc_msgSend_setObject_forKey_(v25, v27, v26, @"TSCESupplementaryTextKey", v28);
      }

      if (v12)
      {
        v29 = v18->_warningInfoDict;
        v30 = objc_msgSend_valueWithString_(TSCEWarningValue, v14, v12, v16, v17);
        objc_msgSend_setObject_forKey_(v29, v31, v30, @"TSCEOriginalDataFormatKey", v32);
      }
    }

    objc_msgSend__calculatehashValue(v18, v14, v15, v16, v17);
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v8 = objc_msgSend_warningWithType_(v4, v5, self->_warningType, v6, v7);
  v13 = objc_msgSend_mutableCopy(self->_warningInfoDict, v9, v10, v11, v12);
  v14 = v8[2];
  v8[2] = v13;

  objc_msgSend__calculatehashValue(v8, v15, v16, v17, v18);
  return v8;
}

- (id)numberForKey:(id)a3
{
  v5 = objc_msgSend_objectForKey_(self->_warningInfoDict, a2, a3, v3, v4);
  v10 = objc_msgSend_number(v5, v6, v7, v8, v9);

  return v10;
}

- (id)stringForKey:(id)a3
{
  v5 = objc_msgSend_objectForKey_(self->_warningInfoDict, a2, a3, v3, v4);
  v10 = objc_msgSend_string(v5, v6, v7, v8, v9);

  return v10;
}

- (void)setNumber:(id)a3 forKey:(id)a4
{
  v17 = a3;
  v10 = a4;
  if (v17 && v10)
  {
    warningInfoDict = self->_warningInfoDict;
    if (!warningInfoDict)
    {
      v12 = objc_opt_new();
      v13 = self->_warningInfoDict;
      self->_warningInfoDict = v12;

      warningInfoDict = self->_warningInfoDict;
    }

    v14 = objc_msgSend_valueWithNumber_(TSCEWarningValue, v6, v17, v8, v9);
    objc_msgSend_setObject_forKey_(warningInfoDict, v15, v14, v10, v16);
  }

  else if (v10)
  {
    objc_msgSend_removeObjectForKey_(self->_warningInfoDict, v6, v10, v8, v9);
  }

  objc_msgSend__calculatehashValue(self, v6, v7, v8, v9);
}

- (void)setString:(id)a3 forKey:(id)a4
{
  v17 = a3;
  v10 = a4;
  if (v17 && v10)
  {
    warningInfoDict = self->_warningInfoDict;
    if (!warningInfoDict)
    {
      v12 = objc_opt_new();
      v13 = self->_warningInfoDict;
      self->_warningInfoDict = v12;

      warningInfoDict = self->_warningInfoDict;
    }

    v14 = objc_msgSend_valueWithString_(TSCEWarningValue, v6, v17, v8, v9);
    objc_msgSend_setObject_forKey_(warningInfoDict, v15, v14, v10, v16);
  }

  else if (v10)
  {
    objc_msgSend_removeObjectForKey_(self->_warningInfoDict, v6, v10, v8, v9);
  }

  objc_msgSend__calculatehashValue(self, v6, v7, v8, v9);
}

- (id)displayStringWithCalculationEngine:(id)a3 forTable:(const TSKUIDStruct *)a4 andCellID:(TSUCellCoord)a5
{
  v5 = objc_msgSend_displayStringWithCalculationEngine_forTable_(self, a2, a3, a4, *&a5);

  return v5;
}

- (id)displayStringWithCalculationEngine:(id)a3 forTable:(const TSKUIDStruct *)a4
{
  v5 = a3;
  v10 = objc_msgSend_warningType(self, v6, v7, v8, v9);
  v15 = v10;
  if (v10 <= 99)
  {
    v16 = 0;
    switch(v10)
    {
      case 0:
        goto LABEL_62;
      case 1:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v18, @"The formula couldn’t be imported. It contained a 3-D reference and was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 2:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v84, @"The array formula couldn’t be imported and was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 3:
        v88 = MEMORY[0x277CCACA8];
        v17 = sub_2212F6DF8();
        v35 = objc_msgSend_localizedStringForKey_value_table_(v17, v89, @"The formula couldn’t be imported. The function %@ might have produced a different result than in Excel. The formula was replaced by the last calculated value. ", &stru_2834BADA0, @"TSCalculationEngine");
        v48 = objc_msgSend_supplementaryText(self, v90, v91, v92, v93);
        v68 = objc_msgSend_stringWithFormat_(v88, v94, v35, v95, v96, v48);
        goto LABEL_51;
      case 4:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v69, @"The error in the cell was removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 5:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v112, @"The formula couldn’t be imported because it contained a reference to another document. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 6:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v115, @"The natural language formula couldn’t be imported. It was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 7:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v97, @"The formula couldn’t be imported because it referenced a cell that wasn’t imported. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 8:
      case 10:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v117, @"The formula couldn’t be imported and was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 9:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v79, @"The formula couldn’t be imported because it contained an undefined range. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 11:
        v59 = MEMORY[0x277CCACA8];
        v17 = sub_2212F6DF8();
        v35 = objc_msgSend_localizedStringForKey_value_table_(v17, v60, @"The formula couldn’t be imported. %@ is an unsupported function. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        v48 = objc_msgSend_supplementaryText(self, v61, v62, v63, v64);
        v68 = objc_msgSend_stringWithFormat_(v59, v65, v35, v66, v67, v48);
        goto LABEL_51;
      case 12:
        v70 = MEMORY[0x277CCACA8];
        v17 = sub_2212F6DF8();
        v35 = objc_msgSend_localizedStringForKey_value_table_(v17, v71, @"The formula couldn’t be imported. The name “%@” couldn’t be imported. The formula was replaced by the last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        v48 = objc_msgSend_supplementaryText(self, v72, v73, v74, v75);
        v68 = objc_msgSend_stringWithFormat_(v70, v76, v35, v77, v78, v48);
        goto LABEL_51;
      case 13:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v114, @"The formula was updated because it refers to a table that was transposed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 14:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v58, @"The formula was updated because it refers to a table that was transposed. You may need to make additional changes.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 15:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v87, @"The formula refers to a table that was transposed. You may want to review it.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 16:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v57, @"The formula was replaced with its last calculated value.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 17:
        v101 = MEMORY[0x277CCACA8];
        v17 = sub_2212F6DF8();
        v35 = objc_msgSend_localizedStringForKey_value_table_(v17, v102, @"The function %@ might have produced a different result than in Excel. The formula was replaced by a formula that will give the same result.", &stru_2834BADA0, @"TSCalculationEngine");
        v48 = objc_msgSend_supplementaryText(self, v103, v104, v105, v106);
        v68 = objc_msgSend_stringWithFormat_(v101, v107, v35, v108, v109, v48);
        goto LABEL_51;
      case 18:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v116, @"The following conditional highlighting rules are not supported and were removed: Equal or Above Average, Equal or Below Average.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 19:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v137, @"Conditional highlighting rules using standard deviation are not supported and were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 20:
      case 22:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v111, @"Conditional highlighting rules using formulas are not supported and were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 21:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v113, @"The following conditional highlighting rules are not supported and were removed: Contains Errors.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 23:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v138, @"The following conditional highlighting rules are not supported and were removed: Contains No Errors.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 24:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v81, @"The conditional highlighting rules couldn’t compare different value types and were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 25:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v80, @"The property “Stop if true” is unsupported. Conditional highlighting rules using this property were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 26:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v141, @"Conditional highlighting rules containing unsupported operators were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 27:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v56, @"Conditional highlighting rules using unsupported style attributes were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 28:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v139, @"The conditional formatting containing an unsupported time period was removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 29:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v140, @"Unsupported conditional highlighting rules were removed.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 30:
        v118 = MEMORY[0x277CCACA8];
        v17 = sub_2212F6DF8();
        v35 = objc_msgSend_localizedStringForKey_value_table_(v17, v119, @"The data format couldn’t be imported. Original format: %@", &stru_2834BADA0, @"TSCalculationEngine");
        v48 = objc_msgSend_originalDataFormat(self, v120, v121, v122, v123);
        v68 = objc_msgSend_stringWithFormat_(v118, v124, v35, v125, v126, v48);
        goto LABEL_51;
      case 31:
        v17 = sub_2212F6DF8();
        v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v100, @"The cell was updated with a more accurate duration format. You may want to review formulas that refer to this cell.", &stru_2834BADA0, @"TSCalculationEngine");
        goto LABEL_58;
      case 32:
        v127 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v11, v12, v13, v14);
        v17 = objc_msgSend_applicationDisplayName(v127, v128, v129, v130, v131);

        v132 = MEMORY[0x277CCACA8];
        v35 = sub_2212F6DF8();
        v48 = objc_msgSend_localizedStringForKey_value_table_(v35, v133, @"This formula produces multiple results in newer versions of %@. It has been modified using the “@“ operator to return the intersection of its cell references instead.", &stru_2834BADA0, @"TSCalculationEngine");
        v68 = objc_msgSend_stringWithFormat_(v132, v134, v48, v135, v136, v17);
LABEL_51:
        v16 = v68;
        break;
      default:
        goto LABEL_65;
    }

    goto LABEL_52;
  }

  if (v10 > 104)
  {
    if (v10 > 107)
    {
      switch(v10)
      {
        case 'l':
          v17 = sub_2212F6DF8();
          v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v86, @"The ranges given to SUMIF have different sizes.", &stru_2834BADA0, @"TSCalculationEngine");
          break;
        case 'm':
          v17 = sub_2212F6DF8();
          v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v83, @"Duration units were removed.", &stru_2834BADA0, @"TSCalculationEngine");
          break;
        case 'n':
          v17 = sub_2212F6DF8();
          v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v22, @"The units of all arguments were converted to match the units of the first argument.", &stru_2834BADA0, @"TSCalculationEngine");
          break;
        default:
LABEL_65:
          v165 = sub_2212F6DF8();
          v167 = objc_msgSend_localizedStringForKey_value_table_(v165, v166, @"Unsupported warning.", &stru_2834BADA0, @"TSCalculationEngine");

          v16 = 0;
          if (!v15)
          {
            goto LABEL_62;
          }

          goto LABEL_60;
      }

      goto LABEL_58;
    }

    if (v10 == 105)
    {
      v17 = sub_2212F6DF8();
      v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v85, @"DATE month argument should be between 1 and 12.", &stru_2834BADA0, @"TSCalculationEngine");
      goto LABEL_58;
    }

    if (v10 == 106)
    {
      v17 = sub_2212F6DF8();
      objc_msgSend_localizedStringForKey_value_table_(v17, v82, @"DATE day argument should be between 1 and 31.", &stru_2834BADA0, @"TSCalculationEngine");
    }

    else
    {
      v17 = sub_2212F6DF8();
      objc_msgSend_localizedStringForKey_value_table_(v17, v20, @"The formula uses a Boolean in place of a number.", &stru_2834BADA0, @"TSCalculationEngine");
    }

    v19 = LABEL_9:;
LABEL_58:
    v16 = v19;
    goto LABEL_59;
  }

  if (v10 > 101)
  {
    if (v10 == 102)
    {
      v17 = sub_2212F6DF8();
      v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v99, @"The link is invalid.", &stru_2834BADA0, @"TSCalculationEngine");
      goto LABEL_58;
    }

    if (v10 == 103)
    {
      v17 = sub_2212F6DF8();
      objc_msgSend_localizedStringForKey_value_table_(v17, v98, @"ISODD arguments must be integers.", &stru_2834BADA0, @"TSCalculationEngine");
    }

    else
    {
      v17 = sub_2212F6DF8();
      objc_msgSend_localizedStringForKey_value_table_(v17, v21, @"ISEVEN arguments must be integers.", &stru_2834BADA0, @"TSCalculationEngine");
    }

    goto LABEL_9;
  }

  if (v10 == 100)
  {
    v17 = sub_2212F6DF8();
    v19 = objc_msgSend_localizedStringForKey_value_table_(v17, v110, @"The formula refers to cells without numbers.", &stru_2834BADA0, @"TSCalculationEngine");
    goto LABEL_58;
  }

  v17 = objc_msgSend_documentLocale(v5, v11, v12, v13, v14);
  v26 = objc_msgSend_numberForKey_(self, v23, @"TSCEArgument1Key", v24, v25);
  v31 = objc_msgSend_intValue(v26, v27, v28, v29, v30);
  v35 = objc_msgSend_localizedTypeStringForArgumentType_(v17, v32, v31, v33, v34);

  v39 = objc_msgSend_numberForKey_(self, v36, @"TSCEArgument2Key", v37, v38);
  v44 = objc_msgSend_intValue(v39, v40, v41, v42, v43);
  v48 = objc_msgSend_localizedTypeStringForArgumentType_(v17, v45, v44, v46, v47);

  v49 = MEMORY[0x277CCACA8];
  v50 = sub_2212F6DF8();
  v52 = objc_msgSend_localizedStringForKey_value_table_(v50, v51, @"The formula compares %@ to %@.", &stru_2834BADA0, @"TSCalculationEngine");
  v16 = objc_msgSend_stringWithFormat_(v49, v53, v52, v54, v55, v35, v48);

LABEL_52:
LABEL_59:

LABEL_60:
  v146 = objc_msgSend_originalFormula(self, v142, v143, v144, v145);

  if (v146)
  {
    v147 = MEMORY[0x277CCACA8];
    v148 = sub_2212F6DF8();
    v150 = objc_msgSend_localizedStringForKey_value_table_(v148, v149, @" Original formula: %@", &stru_2834BADA0, @"TSCalculationEngine");
    v155 = objc_msgSend_originalFormula(self, v151, v152, v153, v154);
    v159 = objc_msgSend_stringWithFormat_(v147, v156, v150, v157, v158, v155);
    v163 = objc_msgSend_stringByAppendingString_(v16, v160, v159, v161, v162);

    v16 = v163;
  }

LABEL_62:

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v9 = v5;
    if (self->_cachedHashValue == v5[3] && self->_warningType == v5[1])
    {
      warningInfoDict = self->_warningInfoDict;
      v11 = v9[2];
      if (warningInfoDict == v11)
      {
        isEqual = 1;
      }

      else
      {
        isEqual = objc_msgSend_isEqual_(warningInfoDict, v6, v11, v7, v8);
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (void)_calculatehashValue
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  warningType = self->_warningType;
  warningInfoDict = self->_warningInfoDict;
  v11 = warningType;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22108BC18;
  v7[3] = &unk_27845DA88;
  v7[4] = &v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(warningInfoDict, a2, v7, v2, v3);
  self->_cachedHashValue = v9[3];
  _Block_object_dispose(&v8, 8);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v9[0] = 0;
  v9[1] = 0;
  v3 = objc_msgSend_displayStringWithCalculationEngine_forTable_andCellID_(self, a2, 0, v9, 0x7FFF7FFFFFFFLL);
  v7 = objc_msgSend_stringWithFormat_(v2, v4, @"TSCEWarning: %@", v5, v6, v3);

  return v7;
}

+ (void)reportWarningInContext:(id)a3 warningType:(int64_t)a4
{
  v17 = a3;
  if (objc_msgSend_shouldReportWarnings(v17, v6, v7, v8, v9))
  {
    v13 = objc_msgSend_warningWithType_(a1, v10, a4, v11, v12);
    objc_msgSend_reportWarning_(v17, v14, v13, v15, v16);
  }

  objc_msgSend_setHasWarnings_(v17, v10, 1, v11, v12);
}

+ (void)reportNonNumericCellWarningInContext:(id)a3
{
  v16 = a3;
  if (objc_msgSend_shouldReportWarnings(v16, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_warningForNonNumericCell(a1, v8, v9, v10, v11);
    objc_msgSend_reportWarning_(v16, v13, v12, v14, v15);
  }

  objc_msgSend_setHasWarnings_(v16, v8, 1, v10, v11);
}

+ (void)reportMonthOutOfRangeWarningInContext:(id)a3
{
  v16 = a3;
  if (objc_msgSend_shouldReportWarnings(v16, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_warningForMonthOutOfRange(a1, v8, v9, v10, v11);
    objc_msgSend_reportWarning_(v16, v13, v12, v14, v15);
  }

  objc_msgSend_setHasWarnings_(v16, v8, 1, v10, v11);
}

+ (void)reportDayOutOfRangeWarningInContext:(id)a3
{
  v16 = a3;
  if (objc_msgSend_shouldReportWarnings(v16, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_warningForDayOutOfRange(a1, v8, v9, v10, v11);
    objc_msgSend_reportWarning_(v16, v13, v12, v14, v15);
  }

  objc_msgSend_setHasWarnings_(v16, v8, 1, v10, v11);
}

+ (void)reportBoolToNumberConversionWarningInContext:(id)a3
{
  v16 = a3;
  if (objc_msgSend_shouldReportWarnings(v16, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_warningForBoolToNumberConversion(a1, v8, v9, v10, v11);
    objc_msgSend_reportWarning_(v16, v13, v12, v14, v15);
  }

  objc_msgSend_setHasWarnings_(v16, v8, 1, v10, v11);
}

+ (void)reportLossOfUnitsWarningInContext:(id)a3
{
  v16 = a3;
  if (objc_msgSend_shouldReportWarnings(v16, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_warningForLossOfUnits(a1, v8, v9, v10, v11);
    objc_msgSend_reportWarning_(v16, v13, v12, v14, v15);
  }

  objc_msgSend_setHasWarnings_(v16, v8, 1, v10, v11);
}

+ (void)reportAutomaticUnitConversionWarningInContext:(id)a3
{
  v16 = a3;
  if (objc_msgSend_shouldReportWarnings(v16, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_warningForAutomaticUnitConversion(a1, v8, v9, v10, v11);
    objc_msgSend_reportWarning_(v16, v13, v12, v14, v15);
  }

  objc_msgSend_setHasWarnings_(v16, v8, 1, v10, v11);
}

+ (id)warningForComparisonWithLeftType:(char)a3 rightType:(char)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_msgSend_warningWithType_(a1, a2, 101, a4, v4);
  v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v8, v6, v9, v10);
  objc_msgSend_setNumber_forKey_(v7, v12, v11, @"TSCEArgument1Key", v13);

  v17 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, v5, v15, v16);
  objc_msgSend_setNumber_forKey_(v7, v18, v17, @"TSCEArgument2Key", v19);

  return v7;
}

+ (void)reportComparisonWarningInContext:(id)a3 leftType:(char)a4 rightType:(char)a5
{
  v5 = a5;
  v6 = a4;
  v19 = a3;
  if (objc_msgSend_shouldReportWarnings(v19, v8, v9, v10, v11))
  {
    v15 = objc_msgSend_warningForComparisonWithLeftType_rightType_(a1, v12, v6, v5, v14);
    objc_msgSend_reportWarning_(v19, v16, v15, v17, v18);
  }

  objc_msgSend_setHasWarnings_(v19, v12, 1, v13, v14);
}

+ (id)warningFor3DReferenceFormula:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 1, a3, v3);

  return v4;
}

+ (id)warningForArrayedFormula:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 2, a3, v3);

  return v4;
}

+ (id)warningForDifferentBehaviorForFunctionFormula:(id)a3 originalFormula:(id)a4
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(a1, a2, 3, a4, a3);

  return v4;
}

+ (id)warningForErrorTokenFormula:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 4, a3, v3);

  return v4;
}

+ (id)warningForExternalReferenceFormula:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 5, a3, v3);

  return v4;
}

+ (id)warningForNaturalLanguageFormula:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 6, a3, v3);

  return v4;
}

+ (id)warningForReferenceOutOfBoundsFormula:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 7, a3, v3);

  return v4;
}

+ (id)warningForSharedFormulaBaseNotFoundFormula:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 8, a3, v3);

  return v4;
}

+ (id)warningForUnknownName:(id)a3 originalFormula:(id)a4
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(a1, a2, 9, a4, a3);

  return v4;
}

+ (id)warningForUnsupportedFormula:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 10, a3, v3);

  return v4;
}

+ (id)warningForUnsupportedFunction:(id)a3 originalFormula:(id)a4
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(a1, a2, 11, a4, a3);

  return v4;
}

+ (id)warningForUnsupportedNameFormula:(id)a3 originalFormula:(id)a4
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(a1, a2, 12, a4, a3);

  return v4;
}

+ (id)warningForTransposedWithoutIssues:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 13, a3, v3);

  return v4;
}

+ (id)warningForTransposedWithIssues:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 14, a3, v3);

  return v4;
}

+ (id)warningForArrayModeWarning:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalFormula_(a1, a2, 32, a3, v3);

  return v4;
}

+ (id)warningForFormulaReplacedForExcelCompat:(id)a3 originalFormula:(id)a4
{
  v4 = objc_msgSend_warningWithType_originalFormula_supplementaryText_(a1, a2, 17, a4, a3);

  return v4;
}

+ (id)warningForUnsupportedDataFormat:(id)a3
{
  v4 = objc_msgSend_warningWithType_originalDataFormat_(a1, a2, 30, a3, v3);

  return v4;
}

+ (id)loadFromArchive:(const void *)a3
{
  v7 = objc_msgSend_warningTypePrunedToThisVersion_(a1, a2, *(a3 + 14), v3, v4);
  if (v7)
  {
    v15 = objc_msgSend_warningWithType_(a1, v8, v7, v9, v10);
    v16 = *(a3 + 8);
    if (v16 >= 1)
    {
      v17 = 8;
      while (1)
      {
        v18 = *(*(a3 + 5) + v17);
        v23 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v11, *(v18 + 24) & 0xFFFFFFFFFFFFFFFELL, v13, v14);
        v24 = *(v18 + 16);
        if ((v24 & 2) != 0)
        {
          break;
        }

        if ((v24 & 4) != 0)
        {
          v25 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v19, v20, v21, v22, *(v18 + 40));
          objc_msgSend_setNumber_forKey_(v15, v26, v25, v23, v27);
LABEL_8:
        }

        v17 += 8;
        if (!--v16)
        {
          goto LABEL_10;
        }
      }

      v25 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v19, *(v18 + 32) & 0xFFFFFFFFFFFFFFFELL, v21, v22);
      objc_msgSend_setString_forKey_(v15, v28, v25, v23, v29);
      goto LABEL_8;
    }

LABEL_10:
    objc_msgSend__calculatehashValue(v15, v11, v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)saveToArchive:(void *)a3
{
  v73 = *MEMORY[0x277D85DE8];
  warningType = self->_warningType;
  *(a3 + 4) |= 2u;
  *(a3 + 14) = warningType;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v6 = self->_warningInfoDict;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v66, v72, 16);
  if (v11)
  {
    v12 = *v67;
    do
    {
      v13 = 0;
      do
      {
        if (*v67 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v66 + 1) + 8 * v13);
        v19 = objc_msgSend_objectForKey_(self->_warningInfoDict, v8, v14, v9, v10, v66);
        if (!v19)
        {
          goto LABEL_19;
        }

        v20 = *(a3 + 5);
        if (!v20)
        {
          goto LABEL_12;
        }

        v21 = *(a3 + 8);
        v22 = *v20;
        if (v21 >= *v20)
        {
          if (v22 == *(a3 + 9))
          {
LABEL_12:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
            v20 = *(a3 + 5);
            v22 = *v20;
          }

          *v20 = v22 + 1;
          v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive_WarningDictionaryEntry>(*(a3 + 3));
          v24 = *(a3 + 8);
          v25 = *(a3 + 5) + 8 * v24;
          *(a3 + 8) = v24 + 1;
          *(v25 + 8) = v23;
          goto LABEL_14;
        }

        *(a3 + 8) = v21 + 1;
        v23 = *&v20[2 * v21 + 2];
LABEL_14:
        v26 = objc_msgSend_tsp_protobufString(v14, v15, v16, v17, v18);
        *(v23 + 16) |= 1u;
        sub_22108CCD0(__p, v26);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v71 < 0)
        {
          operator delete(__p[0]);
        }

        v31 = objc_msgSend_number(v19, v27, v28, v29, v30);
        v32 = v31 == 0;

        if (!v32)
        {
          v37 = objc_msgSend_number(v19, v33, v34, v35, v36);
          objc_msgSend_doubleValue(v37, v38, v39, v40, v41);
          *(v23 + 16) |= 4u;
          *(v23 + 40) = v42;
LABEL_18:

          goto LABEL_19;
        }

        v43 = objc_msgSend_string(v19, v33, v34, v35, v36);
        v44 = v43 == 0;

        if (!v44)
        {
          v37 = objc_msgSend_string(v19, v45, v46, v47, v48);
          v53 = objc_msgSend_tsp_protobufString(v37, v49, v50, v51, v52);
          *(v23 + 16) |= 2u;
          sub_22108CCD0(__p, v53);
          google::protobuf::internal::ArenaStringPtr::Set();
          if (v71 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_18;
        }

        v54 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSCEWarning saveToArchive:]", v47, v48);
        v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEWarning.mm", v57, v58);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v60, v55, v59, 747, 0, "TSCEWarningValue contains neither string nor number");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63, v64);
LABEL_19:

        ++v13;
      }

      while (v11 != v13);
      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v66, v72, 16);
      v11 = v65;
    }

    while (v65);
  }
}

@end