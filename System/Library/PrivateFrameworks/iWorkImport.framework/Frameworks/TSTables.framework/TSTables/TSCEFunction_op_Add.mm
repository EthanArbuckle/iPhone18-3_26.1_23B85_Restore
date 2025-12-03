@interface TSCEFunction_op_Add
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Add

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  shouldTreatValueAsDateArgument = TSCEArgumentAccessor::shouldTreatValueAsDateArgument(v8, context, v10, v11, v12);
  v17 = TSCEArgumentAccessor::shouldTreatValueAsDateArgument(v9, context, v14, v15, v16);
  if ((shouldTreatValueAsDateArgument & v17) != 1)
  {
    if ((shouldTreatValueAsDateArgument | v17))
    {
      v103._tskFormat = 0;
      v103._formatType = 0;
      v103._formatState = 0;
      *&v103._durationFormat = *&v103._durationFormat & 0xC080 | 0x421;
      *(&v103._durationFormat + 2) = *(&v103._durationFormat + 2) & 0xF8 | 1;
      *&v103._baseFormat.base = -50266102;
      v103._numberFormat.decimalPlaces = -3;
      *(&v103._numberFormat + 1) &= 0xE0u;
      v103._numberFormat.currencyCodeIndex = 0;
      if (shouldTreatValueAsDateArgument)
      {
        v102 = 0;
        v22 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v18, context, spec, 0, &v102);
        v27 = v102;
        v101 = v27;
        v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v28, context, spec, 1, &v101);
        v30 = v101;

        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v31, context, v32, v33);
        }

        else
        {
          memset(&v100, 0, sizeof(v100));
        }

        TSCEFormat::operator=(&v103, &v100);
      }

      else
      {
        v99 = 0;
        v22 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v9, v18, context, spec, 1, &v99);
        v43 = v99;
        v98 = v43;
        v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v44, context, spec, 0, &v98);
        v30 = v98;

        if (v9)
        {
          objc_msgSend_formatWithContext_(v9, v45, context, v46, v47);
        }

        else
        {
          memset(&v100, 0, sizeof(v100));
        }

        TSCEFormat::operator=(&v103, &v100);
      }

      v42 = v30;
      if (v30)
      {
        v55 = objc_msgSend_raiseErrorOrConvert_(context, v63, v30, v65, v66);
        goto LABEL_24;
      }

      if (objc_msgSend_isDuration(v29, v63, v64, v65, v66))
      {
        objc_msgSend_rawTimeIntervalValue(v29, v67, v68, v69, v70);
      }

      else
      {
        objc_msgSend_timeIntervalRepresentation(v29, v67, v68, v69, v70);
        v75 = v76 * 86400.0;
      }

      v77 = objc_msgSend_dateByAddingTimeInterval_(v22, v71, v72, v73, v74, v75);
      v26 = objc_msgSend_dateValue_format_(TSCEDateValue, v78, v77, &v103, v79);

LABEL_41:
      goto LABEL_42;
    }

    if (objc_msgSend_isNil(v8, v18, v19, v20, v21))
    {
      v22 = objc_msgSend_unitlessZero(TSCENumberValue, v34, v35, v36, v37);
      v42 = 0;
    }

    else
    {
      v97 = 0;
      v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v34, context, spec, 0, &v97);
      v42 = v97;
    }

    if (objc_msgSend_isNil(v9, v38, v39, v40, v41))
    {
      v29 = objc_msgSend_unitlessZero(TSCENumberValue, v48, v49, v50, v51);
      if (v42)
      {
LABEL_14:
        v55 = objc_msgSend_raiseErrorOrConvert_(context, v52, v42, v53, v54);
LABEL_24:
        v26 = v55;
        goto LABEL_25;
      }
    }

    else
    {
      v96 = v42;
      v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v48, context, spec, 1, &v96);
      v56 = v96;

      v42 = v56;
      if (v56)
      {
        goto LABEL_14;
      }
    }

    v95 = 0;
    v26 = objc_msgSend_add_functionSpec_outError_(v22, v52, v29, spec, &v95);
    v57 = v95;
    if (v57)
    {
      v42 = v57;
      v62 = objc_msgSend_raiseErrorOrConvert_(context, v58, v57, v60, v61);

      v26 = v62;
LABEL_25:

      goto LABEL_43;
    }

    isDuration = objc_msgSend_isDuration(v22, v58, v59, v60, v61);
    if (isDuration != objc_msgSend_isDuration(v29, v81, v82, v83, v84) && (objc_msgSend_isUnitlessZero(v22, v85, v86, v87, v88) & 1) == 0 && (objc_msgSend_isUnitlessZero(v29, v85, v86, v87, v88) & 1) == 0)
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v85, context, v87, v88);
    }

    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v85, context, v87, v88);
    }

    else
    {
      memset(&v100, 0, sizeof(v100));
    }

    if (v9)
    {
      objc_msgSend_formatWithContext_(v9, v85, context, v87, v88);
    }

    else
    {
      memset(&v94, 0, sizeof(v94));
    }

    TSCEFormat::formatByMergingWithFormat(&v100, &v94, v86, v87, v88, &v93);
    TSCEFormat::TSCEFormat(&v103, &v93);
    objc_msgSend_setFormat_(v26, v89, &v103, v90, v91);
    goto LABEL_41;
  }

  v22 = objc_msgSend_invalidDateManipulationError(TSCEError, v18, v19, v20, v21);
  v26 = objc_msgSend_raiseErrorOrConvert_(context, v23, v22, v24, v25);
LABEL_42:

LABEL_43:

  return v26;
}

@end