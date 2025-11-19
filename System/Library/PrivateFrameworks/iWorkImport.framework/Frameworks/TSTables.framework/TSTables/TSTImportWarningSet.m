@interface TSTImportWarningSet
+ (id)cellDiffClearingAllWarningsWithContext:(id)a3;
+ (id)emptyWarningSet;
+ (id)warningSetFor3DReferenceFormula:(id)a3;
+ (id)warningSetForArrayModeWarning:(id)a3;
+ (id)warningSetForArrayedFormula:(id)a3;
+ (id)warningSetForCondFormatAboveAvgEqualAvg;
+ (id)warningSetForCondFormatAboveAvgStdDev;
+ (id)warningSetForCondFormatComplexFormula;
+ (id)warningSetForCondFormatContainsErrors;
+ (id)warningSetForCondFormatExpr;
+ (id)warningSetForCondFormatNotContainsErrors;
+ (id)warningSetForCondFormatParamatersNotAllTheSame;
+ (id)warningSetForCondFormatStopIfTrue;
+ (id)warningSetForCondFormatUnsupportedOperator;
+ (id)warningSetForCondFormatUnsupportedStyling;
+ (id)warningSetForCondFormatUnsupportedTimePeriod;
+ (id)warningSetForDifferentBehaviorForFunctionFormula:(id)a3 originalFormula:(id)a4;
+ (id)warningSetForDurationFormatRangeChanged;
+ (id)warningSetForErrorTokenFormula:(id)a3;
+ (id)warningSetForExternalReferenceFormula:(id)a3;
+ (id)warningSetForFilteredColumnFormulaNotCopied;
+ (id)warningSetForFormulaReplacedForExcelCompat:(id)a3 originalFormula:(id)a4;
+ (id)warningSetForNaturalLanguageFormula:(id)a3;
+ (id)warningSetForReferenceOutOfBoundsFormula:(id)a3;
+ (id)warningSetForSharedFormulaBaseNotFoundFormula:(id)a3;
+ (id)warningSetForTransposeUnmodifiedWithIssues;
+ (id)warningSetForTransposedWithIssues:(id)a3;
+ (id)warningSetForTransposedWithoutIssues:(id)a3;
+ (id)warningSetForUnknownName:(id)a3 originalFormula:(id)a4;
+ (id)warningSetForUnsupportedCondFormat;
+ (id)warningSetForUnsupportedDataFormat:(id)a3;
+ (id)warningSetForUnsupportedFormula:(id)a3;
+ (id)warningSetForUnsupportedFunction:(id)a3 originalFormula:(id)a4;
+ (id)warningSetForUnsupportedNameFormula:(id)a3 originalFormula:(id)a4;
+ (id)warningSetForWarning:(id)a3;
+ (id)warningSetForWarnings:(id)a3;
- (BOOL)areAnySet;
- (BOOL)containsWarningOfType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)cellDiffClearingWarningsWithContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)individualWarnings;
- (id)initFromArchive:(const void *)a3;
- (id)localizedWarningStringsForCalcEngine:(id)a3 forTable:(TSKUIDStruct)a4;
- (id)sortedWarnings;
- (id)warningSetByAddingWarningsFromSet:(id)a3;
- (id)warningSetByRemovingWarningsOfTypes:(id)a3;
- (int)TSTImportFormulaWarningTypeToArchive:(int64_t)a3;
- (int64_t)TSTImportFormulaWarningTypeFromArchive:(int)a3;
- (unint64_t)hash;
- (void)addWarning:(id)a3;
- (void)removeWarning:(id)a3;
- (void)saveToArchive:(void *)a3;
@end

@implementation TSTImportWarningSet

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_warnings;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = objc_msgSend_copy(*(*(&v19 + 1) + 8 * v13), v7, v8, v9, v10, v19);
        objc_msgSend_addWarning_(v4, v15, v14, v16, v17);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
    }

    while (v11);
  }

  *(v4 + 24) = self->_cachedHashVal;
  *(v4 + 8) = self->_cachedHashValValid;
  return v4;
}

- (BOOL)areAnySet
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_warnings;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_warningType(*(*(&v12 + 1) + 8 * i), v4, v5, v6, v7, v12))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v10 = objc_msgSend_hash(self, v6, v7, v8, v9);
    if (v10 == objc_msgSend_hash(v5, v11, v12, v13, v14))
    {
      v19 = objc_msgSend_warnings(self, v15, v16, v17, v18);
      v28 = objc_msgSend_warnings(v5, v20, v21, v22, v23);
      if (v19 == v28)
      {
        isEqual = 1;
      }

      else
      {
        v29 = objc_msgSend_warnings(self, v24, v25, v26, v27);
        v34 = objc_msgSend_warnings(v5, v30, v31, v32, v33);
        isEqual = objc_msgSend_isEqual_(v29, v35, v34, v36, v37);
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

- (unint64_t)hash
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_cachedHashValValid)
  {
    return self->_cachedHashVal;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_warnings;
  v3 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v3 += objc_msgSend_hash(*(*(&v14 + 1) + 8 * v12++), v6, v7, v8, v9, v14);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v14, v18, 16);
    }

    while (v10);
  }

  self->_cachedHashVal = v3;
  self->_cachedHashValValid = 1;
  return v3;
}

+ (id)warningSetForWarning:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  objc_msgSend_addWarning_(v4, v5, v3, v6, v7);

  return v4;
}

+ (id)emptyWarningSet
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BOOL)containsWarningOfType:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_warnings;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v10)
  {
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_msgSend_warningType(*(*(&v15 + 1) + 8 * i), v6, v7, v8, v9, v15) == a3)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)addWarning:(id)a3
{
  v10 = a3;
  if (v10)
  {
    warnings = self->_warnings;
    if (!warnings)
    {
      v8 = objc_opt_new();
      v9 = self->_warnings;
      self->_warnings = v8;

      warnings = self->_warnings;
    }

    objc_msgSend_addObject_(warnings, v4, v10, v5, v6);
  }

  self->_cachedHashValValid = 0;
}

- (void)removeWarning:(id)a3
{
  v7 = a3;
  if (v7)
  {
    objc_msgSend_removeObject_(self->_warnings, v4, v7, v5, v6);
  }

  self->_cachedHashValValid = 0;
}

+ (id)warningSetFor3DReferenceFormula:(id)a3
{
  v6 = objc_msgSend_warningFor3DReferenceFormula_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForArrayedFormula:(id)a3
{
  v6 = objc_msgSend_warningForArrayedFormula_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForDifferentBehaviorForFunctionFormula:(id)a3 originalFormula:(id)a4
{
  v6 = objc_msgSend_warningForDifferentBehaviorForFunctionFormula_originalFormula_(TSCEWarning, a2, a3, a4, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForErrorTokenFormula:(id)a3
{
  v6 = objc_msgSend_warningForErrorTokenFormula_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForExternalReferenceFormula:(id)a3
{
  v6 = objc_msgSend_warningForExternalReferenceFormula_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForNaturalLanguageFormula:(id)a3
{
  v6 = objc_msgSend_warningForNaturalLanguageFormula_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForReferenceOutOfBoundsFormula:(id)a3
{
  v6 = objc_msgSend_warningForReferenceOutOfBoundsFormula_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForSharedFormulaBaseNotFoundFormula:(id)a3
{
  v6 = objc_msgSend_warningForSharedFormulaBaseNotFoundFormula_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForUnknownName:(id)a3 originalFormula:(id)a4
{
  v6 = objc_msgSend_warningForUnknownName_originalFormula_(TSCEWarning, a2, a3, a4, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForUnsupportedFormula:(id)a3
{
  v6 = objc_msgSend_warningForUnsupportedFormula_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForUnsupportedFunction:(id)a3 originalFormula:(id)a4
{
  v6 = objc_msgSend_warningForUnsupportedFunction_originalFormula_(TSCEWarning, a2, a3, a4, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForUnsupportedNameFormula:(id)a3 originalFormula:(id)a4
{
  v6 = objc_msgSend_warningForUnsupportedNameFormula_originalFormula_(TSCEWarning, a2, a3, a4, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForTransposedWithoutIssues:(id)a3
{
  v6 = objc_msgSend_warningForTransposedWithoutIssues_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForTransposedWithIssues:(id)a3
{
  v6 = objc_msgSend_warningForTransposedWithIssues_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForTransposeUnmodifiedWithIssues
{
  v6 = objc_msgSend_warningForTransposeUnmodifiedWithIssues(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForArrayModeWarning:(id)a3
{
  v6 = objc_msgSend_warningForArrayModeWarning_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForFilteredColumnFormulaNotCopied
{
  v6 = objc_msgSend_warningForFilteredColumnFormulaNotCopied(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForFormulaReplacedForExcelCompat:(id)a3 originalFormula:(id)a4
{
  v6 = objc_msgSend_warningForFormulaReplacedForExcelCompat_originalFormula_(TSCEWarning, a2, a3, a4, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatAboveAvgEqualAvg
{
  v6 = objc_msgSend_warningForCondFormatAboveAvgEqualAvg(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatAboveAvgStdDev
{
  v6 = objc_msgSend_warningForCondFormatAboveAvgStdDev(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatComplexFormula
{
  v6 = objc_msgSend_warningForCondFormatComplexFormula(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatContainsErrors
{
  v6 = objc_msgSend_warningForCondFormatContainsErrors(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatExpr
{
  v6 = objc_msgSend_warningForCondFormatExpr(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatNotContainsErrors
{
  v6 = objc_msgSend_warningForCondFormatNotContainsErrors(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatParamatersNotAllTheSame
{
  v6 = objc_msgSend_warningForCondFormatParamatersNotAllTheSame(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatStopIfTrue
{
  v6 = objc_msgSend_warningForCondFormatStopIfTrue(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatUnsupportedOperator
{
  v6 = objc_msgSend_warningForCondFormatUnsupportedOperator(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatUnsupportedStyling
{
  v6 = objc_msgSend_warningForCondFormatUnsupportedStyling(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForCondFormatUnsupportedTimePeriod
{
  v6 = objc_msgSend_warningForCondFormatUnsupportedTimePeriod(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForUnsupportedCondFormat
{
  v6 = objc_msgSend_warningForUnsupportedCondFormat(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForDurationFormatRangeChanged
{
  v6 = objc_msgSend_warningForDurationFormatRangeChanged(TSCEWarning, a2, v2, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

+ (id)warningSetForUnsupportedDataFormat:(id)a3
{
  v6 = objc_msgSend_warningForUnsupportedDataFormat_(TSCEWarning, a2, a3, v3, v4);
  v10 = objc_msgSend_warningSetForWarning_(a1, v7, v6, v8, v9);

  return v10;
}

- (id)individualWarnings
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_warnings;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v12)
  {
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_warningSetForWarning_(TSTImportWarningSet, v9, *(*(&v20 + 1) + 8 * i), v10, v11, v20);
        objc_msgSend_addObject_(v6, v16, v15, v17, v18);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
    }

    while (v12);
  }

  return v6;
}

- (id)localizedWarningStringsForCalcEngine:(id)a3 forTable:(TSKUIDStruct)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_warnings;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v24, 16);
  if (v11)
  {
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_displayStringWithCalculationEngine_forTable_(*(*(&v19 + 1) + 8 * i), v9, v5, &v23, v10, v19);
        objc_msgSend_addObject_(v6, v15, v14, v16, v17);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v19, v24, 16);
    }

    while (v11);
  }

  return v6;
}

+ (id)warningSetForWarnings:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_emptyWarningSet(a1, v5, v6, v7, v8);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v4;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v19, v23, 16);
  if (v15)
  {
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_addWarning_(v9, v12, *(*(&v19 + 1) + 8 * i), v13, v14, v19);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v19, v23, 16);
    }

    while (v15);
  }

  return v9;
}

- (id)warningSetByAddingWarningsFromSet:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = objc_msgSend_copy(self, v5, v6, v7, v8);
  if (v4)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = objc_msgSend_warnings(v4, v9, v10, v11, v12, 0);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v28, v32, 16);
    if (v20)
    {
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v14);
          }

          v23 = objc_msgSend_copy(*(*(&v28 + 1) + 8 * i), v16, v17, v18, v19);
          objc_msgSend_addWarning_(v13, v24, v23, v25, v26);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v28, v32, 16);
      }

      while (v20);
    }
  }

  return v13;
}

- (id)cellDiffClearingWarningsWithContext:(id)a3
{
  v4 = objc_alloc_init(TSTCellDiff);
  objc_msgSend_resetObject_forProperty_(v4, v5, self, 908, v6);

  return v4;
}

+ (id)cellDiffClearingAllWarningsWithContext:(id)a3
{
  v3 = objc_alloc_init(TSTCellDiff);
  v8 = objc_msgSend_emptyWarningSet(TSTImportWarningSet, v4, v5, v6, v7);
  objc_msgSend_setObject_forProperty_(v3, v9, v8, 908, v10);

  return v3;
}

- (id)warningSetByRemovingWarningsOfTypes:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v8 = objc_msgSend_copy(self, v4, v5, v6, v7);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = objc_msgSend_warnings(self, v9, v10, v11, v12);
  obj = v13;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v42, v47, 16);
  if (v15)
  {
    v36 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v42 + 1) + 8 * i);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v18 = v37;
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v38, v46, 16);
        if (v24)
        {
          v25 = *v39;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v39 != v25)
              {
                objc_enumerationMutation(v18);
              }

              v27 = *(*(&v38 + 1) + 8 * j);
              v28 = objc_msgSend_warningType(v17, v20, v21, v22, v23);
              if (v28 == objc_msgSend_warningType(v27, v29, v30, v31, v32))
              {
                objc_msgSend_removeWarning_(v8, v20, v17, v22, v23);
              }
            }

            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v38, v46, 16);
          }

          while (v24);
        }
      }

      v13 = obj;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v42, v47, 16);
    }

    while (v15);
  }

  return v8;
}

- (int64_t)TSTImportFormulaWarningTypeFromArchive:(int)a3
{
  v3 = (a3 - 1);
  if (v3 < 0xF)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (id)initFromArchive:(const void *)a3
{
  v6 = objc_msgSend_init(self, a2, a3, v3, v4);
  v11 = v6;
  if (!v6)
  {
    return v11;
  }

  v12 = *(a3 + 8);
  if (v12)
  {
    if (v12 >= 1)
    {
      v13 = 8;
      do
      {
        v14 = objc_msgSend_loadFromArchive_(TSCEWarning, v7, *(*(a3 + 5) + v13), v9, v10);
        objc_msgSend_addWarning_(v11, v15, v14, v16, v17);

        v13 += 8;
        --v12;
      }

      while (v12);
    }

    return v11;
  }

  if ((*(a3 + 16) & 2) != 0)
  {
    v18 = *(a3 + 7);
    v19 = *(v18 + 16);
    if ((v19 & 4) != 0)
    {
      v20 = *(v18 + 40);
      if (v19)
      {
LABEL_10:
        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v25 = objc_msgSend_tsp_initWithProtobufString_(v21, v22, *(v18 + 24) & 0xFFFFFFFFFFFFFFFELL, v23, v24);
        if ((*(v18 + 16) & 2) != 0)
        {
LABEL_11:
          v26 = objc_alloc(MEMORY[0x277CCACA8]);
          v30 = objc_msgSend_tsp_initWithProtobufString_(v26, v27, *(v18 + 32) & 0xFFFFFFFFFFFFFFFELL, v28, v29);
          objc_msgSend_warningWithType_originalFormula_supplementaryText_(TSCEWarning, v31, v20, v25, v30);
          v32 = LABEL_15:;
          objc_msgSend_addWarning_(v11, v33, v32, v34, v35);

          goto LABEL_16;
        }

LABEL_14:
        v30 = 0;
        objc_msgSend_warningWithType_originalFormula_supplementaryText_(TSCEWarning, v7, v20, v25, 0);
        goto LABEL_15;
      }
    }

    else
    {
      v20 = objc_msgSend_TSTImportFormulaWarningTypeFromArchive_(v6, v7, *(v18 + 44), v9, v10);
      v19 = *(v18 + 16);
      if (v19)
      {
        goto LABEL_10;
      }
    }

    v25 = 0;
    if ((v19 & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_16:
  if (*(a3 + 77) == 1)
  {
    v36 = objc_msgSend_warningForFilteredColumnFormulaNotCopied(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v37, v36, v38, v39);
  }

  if (*(a3 + 64) == 1)
  {
    v40 = objc_msgSend_warningForCondFormatAboveAvgEqualAvg(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v41, v40, v42, v43);
  }

  if (*(a3 + 65) == 1)
  {
    v44 = objc_msgSend_warningForCondFormatAboveAvgStdDev(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v45, v44, v46, v47);
  }

  if (*(a3 + 66) == 1)
  {
    v48 = objc_msgSend_warningForCondFormatComplexFormula(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v49, v48, v50, v51);
  }

  if (*(a3 + 67) == 1)
  {
    v52 = objc_msgSend_warningForCondFormatContainsErrors(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v53, v52, v54, v55);
  }

  if (*(a3 + 68) == 1)
  {
    v56 = objc_msgSend_warningForCondFormatExpr(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v57, v56, v58, v59);
  }

  if (*(a3 + 69) == 1)
  {
    v60 = objc_msgSend_warningForCondFormatNotContainsErrors(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v61, v60, v62, v63);
  }

  if (*(a3 + 70) == 1)
  {
    v64 = objc_msgSend_warningForCondFormatParamatersNotAllTheSame(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v65, v64, v66, v67);
  }

  if (*(a3 + 71) == 1)
  {
    v68 = objc_msgSend_warningForCondFormatStopIfTrue(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v69, v68, v70, v71);
  }

  if (*(a3 + 72) == 1)
  {
    v72 = objc_msgSend_warningForCondFormatUnsupportedOperator(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v73, v72, v74, v75);
  }

  if (*(a3 + 73) == 1)
  {
    v76 = objc_msgSend_warningForCondFormatUnsupportedStyling(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v77, v76, v78, v79);
  }

  if (*(a3 + 74) == 1)
  {
    v80 = objc_msgSend_warningForCondFormatUnsupportedTimePeriod(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v81, v80, v82, v83);
  }

  if (*(a3 + 76) == 1)
  {
    v84 = objc_msgSend_warningForUnsupportedCondFormat(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v85, v84, v86, v87);
  }

  if (*(a3 + 78) == 1)
  {
    v88 = objc_msgSend_warningForDurationFormatRangeChanged(TSCEWarning, v7, v8, v9, v10);
    objc_msgSend_addWarning_(v11, v89, v88, v90, v91);
  }

  if (*(a3 + 16))
  {
    v92 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v7, *(a3 + 6) & 0xFFFFFFFFFFFFFFFELL, v9, v10);
    v96 = objc_msgSend_warningForUnsupportedDataFormat_(TSCEWarning, v93, v92, v94, v95);
    objc_msgSend_addWarning_(v11, v97, v96, v98, v99);
  }

  return v11;
}

- (int)TSTImportFormulaWarningTypeToArchive:(int64_t)a3
{
  if ((a3 - 1) < 0xF)
  {
    return a3;
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTImportWarningSet TSTImportFormulaWarningTypeToArchive:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTImportWarningSet.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 567, 0, "Unhandled FormulaWarningType encountered while saving to archive.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  v17 = MEMORY[0x277D81150];
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTImportWarningSet TSTImportFormulaWarningTypeToArchive:]", v19, v20);
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTImportWarningSet.mm", v23, v24);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v26, v21, v25, 570, 0, "Unhandled FormulaWarningType encountered while saving to archive.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  return 0;
}

- (id)sortedWarnings
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_warnings;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v17, v21, 16);
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_addObject_(v3, v6, *(*(&v17 + 1) + 8 * i), v7, v8, v17);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v17, v21, 16);
    }

    while (v9);
  }

  v15 = objc_msgSend_sortedArrayUsingComparator_(v3, v12, &unk_2834B1A48, v13, v14);

  return v15;
}

- (void)saveToArchive:(void *)a3
{
  v114 = *MEMORY[0x277D85DE8];
  objc_msgSend_sortedWarnings(self, a2, a3, v3, v4);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  obj = v108 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v107, v113, 16);
  if (!v10)
  {

    v105 = 0;
    v106 = 0;
    v104 = 0;
    goto LABEL_42;
  }

  v104 = 0;
  v105 = 0;
  v106 = 0;
  v11 = 0;
  v12 = *v108;
  v13 = 1;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v108 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v107 + 1) + 8 * i);
      v16 = *(a3 + 5);
      if (!v16)
      {
        goto LABEL_11;
      }

      v17 = *(a3 + 8);
      v18 = *v16;
      if (v17 < *v16)
      {
        *(a3 + 8) = v17 + 1;
        objc_msgSend_saveToArchive_(v15, v7, *&v16[2 * v17 + 2], v8, v9);
        goto LABEL_13;
      }

      if (v18 == *(a3 + 9))
      {
LABEL_11:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 24));
        v16 = *(a3 + 5);
        v18 = *v16;
      }

      *v16 = v18 + 1;
      v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::WarningArchive>(*(a3 + 3));
      v24 = *(a3 + 8);
      v25 = *(a3 + 5) + 8 * v24;
      *(a3 + 8) = v24 + 1;
      *(v25 + 8) = v23;
      objc_msgSend_saveToArchive_(v15, v26, v23, v27, v28);
LABEL_13:
      if (!v11)
      {
        v11 = objc_msgSend_warningType(v15, v19, v20, v21, v22);
      }

      v29 = objc_msgSend_originalFormula(v15, v19, v20, v21, v22);
      v30 = v29 == 0;

      if (!v30)
      {
        v35 = objc_msgSend_originalFormula(v15, v31, v32, v33, v34);

        v40 = objc_msgSend_supplementaryText(v15, v36, v37, v38, v39);

        v104 = v40;
        v106 = v35;
      }

      v41 = objc_msgSend_originalDataFormat(v15, v31, v32, v33, v34);
      v42 = v41 == 0;

      if (!v42)
      {
        v44 = objc_msgSend_originalDataFormat(v15, v7, v43, v8, v9);

        v105 = v44;
      }

      v13 &= (v11 - 18) < 0xE;
    }

    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v107, v113, 16);
  }

  while (v10);

  if (v11)
  {
    v48 = v13;
  }

  else
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    *(a3 + 4) |= 2u;
    v49 = *(a3 + 7);
    if (!v49)
    {
      v50 = *(a3 + 1);
      if (v50)
      {
        v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
      }

      v49 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive_FormulaImportWarning>(v50);
      *(a3 + 7) = v49;
    }

    if (objc_msgSend_p_isPersistedWithFormulaWarningTypeEnumeration_(self, v45, v11, v46, v47))
    {
      v55 = objc_msgSend_TSTImportFormulaWarningTypeToArchive_(self, v51, v11, v53, v54);
      v56 = v49[4] | 8;
      v49[4] = v56;
      v49[11] = v55;
    }

    else
    {
      v56 = v49[4] | 8;
      v49[4] = v56;
      v49[11] = 11;
      if (v11 == 16)
      {
        *(a3 + 4) |= 0x8000u;
        *(a3 + 77) = 1;
        v56 = v49[4];
      }

      else if (v11 == 32)
      {
        LODWORD(v11) = 0;
      }
    }

    v49[4] = v56 | 4;
    v49[10] = v11;
    v57 = objc_msgSend_tsp_protobufString(v106, v51, v52, v53, v54);
    if (v57)
    {
      v49[4] |= 1u;
      sub_22108CCD0(__p, v57);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v112 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v45 = objc_msgSend_tsp_protobufString(v104, v57, v58, v59, v60);
    if (v45)
    {
      v49[4] |= 2u;
      sub_22108CCD0(__p, v45);
      google::protobuf::internal::ArenaStringPtr::Set();
      if (v112 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_42:
  if (objc_msgSend_containsWarningOfType_(self, v45, 18, v46, v47))
  {
    *(a3 + 4) |= 4u;
    *(a3 + 64) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v61, 19, v62, v63))
  {
    *(a3 + 4) |= 8u;
    *(a3 + 65) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v64, 20, v65, v66))
  {
    *(a3 + 4) |= 0x10u;
    *(a3 + 66) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v67, 21, v68, v69))
  {
    *(a3 + 4) |= 0x20u;
    *(a3 + 67) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v70, 22, v71, v72))
  {
    *(a3 + 4) |= 0x40u;
    *(a3 + 68) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v73, 23, v74, v75))
  {
    *(a3 + 4) |= 0x80u;
    *(a3 + 69) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v76, 24, v77, v78))
  {
    *(a3 + 4) |= 0x100u;
    *(a3 + 70) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v79, 25, v80, v81))
  {
    *(a3 + 4) |= 0x200u;
    *(a3 + 71) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v82, 26, v83, v84))
  {
    *(a3 + 4) |= 0x400u;
    *(a3 + 72) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v85, 27, v86, v87))
  {
    *(a3 + 4) |= 0x800u;
    *(a3 + 73) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v88, 28, v89, v90))
  {
    *(a3 + 4) |= 0x1000u;
    *(a3 + 74) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v91, 29, v92, v93))
  {
    *(a3 + 4) |= 0x4000u;
    *(a3 + 76) = 1;
  }

  if (objc_msgSend_containsWarningOfType_(self, v94, 31, v95, v96))
  {
    *(a3 + 4) |= 0x10000u;
    *(a3 + 78) = 1;
  }

  v101 = objc_msgSend_tsp_protobufString(v105, v97, v98, v99, v100);
  if (v101)
  {
    *(a3 + 4) |= 1u;
    sub_22108CCD0(__p, v101);
    google::protobuf::internal::ArenaStringPtr::Set();
    if (v112 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (NSString)description
{
  v5 = objc_msgSend_descriptionWithObject_(MEMORY[0x277D811A8], a2, self, v2, v3);
  v10 = objc_msgSend_localizedWarningStrings(self, v6, v7, v8, v9);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_221592B34;
  v21[3] = &unk_2784671A0;
  v11 = v5;
  v22 = v11;
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v12, v21, v13, v14);

  v19 = objc_msgSend_descriptionString(v11, v15, v16, v17, v18);

  return v19;
}

@end