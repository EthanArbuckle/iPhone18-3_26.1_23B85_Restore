@interface TSCESumAccumulator
- (TSCESumAccumulator)init;
- (id)resultForFunction:(id)a3;
- (void)addValue:(id)a3 evaluationContext:(id)a4 functionSpec:(id)a5;
@end

@implementation TSCESumAccumulator

- (TSCESumAccumulator)init
{
  v12.receiver = self;
  v12.super_class = TSCESumAccumulator;
  v2 = [(TSCESumAccumulator *)&v12 init];
  v7 = v2;
  if (v2)
  {
    v2->_dateAccumulator = 0;
    v2->_secondsToAdd = 0.0;
    v8 = objc_msgSend_unitlessZero(TSCENumberValue, v3, v4, v5, v6);
    numberAccumulator = v7->_numberAccumulator;
    v7->_numberAccumulator = v8;

    *&v7->_mixedDurationsAndNumbers = 0;
    error = v7->_error;
    v7->_error = 0;
  }

  return v7;
}

- (void)addValue:(id)a3 evaluationContext:(id)a4 functionSpec:(id)a5
{
  v8 = a3;
  v13 = a4;
  p_error = &self->_error;
  if (self->_error || (objc_msgSend_isNil(v8, v9, v10, v11, v12) & 1) != 0)
  {
    goto LABEL_39;
  }

  v22 = objc_msgSend_deepType_(v8, v15, v13, v16, v17);
  if (v22 > 4)
  {
    if (v22 != 5)
    {
      if (v22 != 9)
      {
        goto LABEL_39;
      }

      v25 = objc_msgSend_errorWithContext_(v8, v18, v13, v20, v21);
      if (!v25)
      {
        goto LABEL_39;
      }

      objc_storeStrong(&self->_error, v25);
LABEL_18:

      goto LABEL_39;
    }

    v84 = 0;
    v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v18, v13, a5, 0, &v84);
    v35 = v84;
    if (v35)
    {
      v25 = v35;
LABEL_16:
      v33 = &self->_error;
      v34 = v25;
      goto LABEL_17;
    }

    p_foundANumber = &self->_foundANumber;
    if (self->_foundANumber)
    {
      p_foundANumber = &self->_mixedDurationsAndNumbers;
      if (self->_mixedDurationsAndNumbers)
      {
        goto LABEL_34;
      }

      if (objc_msgSend_dimensionsMatchModuloCurrency_(self->_numberAccumulator, v36, v26, v38, v39))
      {
        numberAccumulator = self->_numberAccumulator;
        v83 = 0;
        v65 = objc_msgSend_add_functionSpec_outError_(numberAccumulator, v36, v26, a5, &v83);
        v25 = v83;
        v66 = self->_numberAccumulator;
        self->_numberAccumulator = v65;

        if (v25)
        {
          goto LABEL_16;
        }

LABEL_34:
        if (objc_msgSend_hasUnits(v26, v36, v37, v38, v39) && !objc_msgSend_dimension(v26, v67, v68, v69, v70))
        {
          objc_msgSend_rawTimeIntervalValue(v26, v67, v68, v69, v70);
          v72 = v73 + self->_secondsToAdd;
        }

        else
        {
          objc_msgSend_timeIntervalRepresentation(v26, v67, v68, v69, v70);
          v72 = self->_secondsToAdd + v71 * 86400.0;
        }

        self->_secondsToAdd = v72;
        goto LABEL_38;
      }
    }

    else
    {
      objc_storeStrong(&self->_numberAccumulator, v26);
    }

    *p_foundANumber = 1;
    goto LABEL_34;
  }

  if (v22 == 1)
  {
    v82 = 0;
    v26 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v18, v13, a5, 0, 0, &v82);
    v27 = v82;
    v28 = v82;
    if (v28)
    {
      v25 = v28;
      v33 = &self->_error;
      v34 = v27;
LABEL_17:
      objc_storeStrong(v33, v34);

      goto LABEL_18;
    }

    v80 = 0;
    v81 = objc_msgSend_dimensions(v26, v29, v30, v31, v32);
    v60 = v13;
    v74[0] = v60;
    v74[1] = a5;
    v75 = 0;
    v76[0] = 0;
    *(v76 + 7) = 0;
    v77 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v78 = 0;
    v79 = 0;
    do
    {
      v61 = objc_msgSend_valueAtGridCoord_accessContext_(v26, v58, *&v80, v74, v59);
      objc_msgSend_addValue_evaluationContext_functionSpec_(self, v62, v61, v60, a5);
      v80 = TSCEGridDimensions::nextCoordRowMajorOrder(&v81, &v80);
    }

    while (v80.column != 0x7FFFFFFF && v80.row != 0x7FFFFFFF);

LABEL_38:
    goto LABEL_39;
  }

  if (v22 == 3)
  {
    if (self->_dateAccumulator)
    {
      v23 = objc_msgSend_invalidDateManipulationError(TSCEError, v18, v19, v20, v21);
      v24 = *p_error;
      *p_error = v23;
    }

    else
    {
      v85 = 0;
      v40 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v18, v13, a5, 0, &v85);
      v41 = v85;
      self->_dateAccumulator = v40;

      if (!self->_dateAccumulator)
      {
        v45 = MEMORY[0x277D81150];
        v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSCESumAccumulator addValue:evaluationContext:functionSpec:]", v43, v44);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCESumAccumulator.mm", v48, v49);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v51, v46, v50, 63, 0, "Shouldn't get a nil date from something that says it's a date");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
      }

      if (v41)
      {
        v56 = *p_error;
        *p_error = v41;
        v57 = v41;
      }
    }
  }

LABEL_39:
}

- (id)resultForFunction:(id)a3
{
  error = self->_error;
  if (error)
  {
    v6 = objc_msgSend_errorValue_(TSCEErrorValue, a2, error, v3, v4);
LABEL_3:
    v7 = v6;
    goto LABEL_9;
  }

  if (self->_dateAccumulator)
  {
    v8 = objc_msgSend_dateByAddingTimeInterval_(self->_dateAccumulator, a2, a3, v3, v4, self->_secondsToAdd);
    v7 = objc_msgSend_dateValue_(TSCEDateValue, v9, v8, v10, v11);
  }

  else
  {
    if (!self->_mixedDurationsAndNumbers)
    {
      v6 = objc_msgSend_copy(self->_numberAccumulator, a2, a3, v3, v4);
      goto LABEL_3;
    }

    v8 = objc_msgSend_functionName(a3, a2, a3, v3, v4);
    v15 = objc_msgSend_sumMixedDurationsAndUnitlessWithoutADateErrorForFunctionName_(TSCEError, v12, v8, v13, v14);
    v7 = objc_msgSend_errorValue_(TSCEErrorValue, v16, v15, v17, v18);
  }

LABEL_9:

  return v7;
}

@end