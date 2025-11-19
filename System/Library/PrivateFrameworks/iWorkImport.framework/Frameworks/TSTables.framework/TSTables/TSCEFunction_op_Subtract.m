@interface TSCEFunction_op_Subtract
+ (id)computeSubtraction:(id)a3 functionSpec:(id)a4 left:(id)a5 leftArgumentIndex:(int)a6 right:(id)a7 rightArgumentIndex:(int)a8;
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_op_Subtract

+ (id)computeSubtraction:(id)a3 functionSpec:(id)a4 left:(id)a5 leftArgumentIndex:(int)a6 right:(id)a7 rightArgumentIndex:(int)a8
{
  v8 = *&a8;
  v10 = *&a6;
  v13 = a3;
  v14 = a5;
  v15 = a7;
  if (!TSCEArgumentAccessor::shouldTreatValueAsDateArgument(v14, v13, v16, v17, v18))
  {
    if (objc_msgSend_deepType_(v15, v19, v13, v21, v22) == 3)
    {
      v37 = objc_msgSend_numberMinusDateError(TSCEError, v33, v34, v35, v36);
      v41 = objc_msgSend_raiseErrorOrConvert_(v13, v38, v37, v39, v40);
      goto LABEL_33;
    }

    if (objc_msgSend_isNil(v14, v33, v34, v35, v36))
    {
      v24 = objc_msgSend_unitlessZero(TSCENumberValue, v50, v51, v52, v53);
      v28 = 0;
    }

    else
    {
      v115 = 0;
      v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v14, v50, v13, a4, v10, &v115);
      v28 = v115;
    }

    if (objc_msgSend_isNil(v15, v54, v55, v56, v57))
    {
      v27 = objc_msgSend_unitlessZero(TSCENumberValue, v58, v59, v60, v61);
      if (v28)
      {
LABEL_14:
        v32 = objc_msgSend_raiseErrorOrConvert_(v13, v62, v28, v64, v65);
LABEL_23:
        v41 = v32;
LABEL_24:

        goto LABEL_34;
      }
    }

    else
    {
      v114 = v28;
      v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v58, v13, a4, v8, &v114);
      v66 = v114;

      v28 = v66;
      if (v66)
      {
        goto LABEL_14;
      }
    }

    isDuration = objc_msgSend_isDuration(v24, v62, v63, v64, v65);
    if (isDuration != objc_msgSend_isDuration(v27, v68, v69, v70, v71) && (objc_msgSend_isUnitlessZero(v24, v72, v73, v74, v75) & 1) == 0 && (objc_msgSend_isUnitlessZero(v27, v72, v76, v77, v78) & 1) == 0)
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v72, v13, v79, v80);
    }

    v113 = 0;
    v81 = objc_msgSend_subtract_functionSpec_outError_(v24, v72, v27, a4, &v113);
    v28 = v113;
    if (v28)
    {
      v86 = objc_msgSend_raiseErrorOrConvert_(v13, v82, v28, v84, v85);
    }

    else
    {
      if (v14)
      {
        objc_msgSend_formatWithContext_(v14, v82, v13, v84, v85);
      }

      else
      {
        memset(&v112, 0, sizeof(v112));
      }

      if (v15)
      {
        objc_msgSend_formatWithContext_(v15, v82, v13, v84, v85);
      }

      else
      {
        memset(&v111, 0, sizeof(v111));
      }

      TSCEFormat::formatByMergingWithFormat(&v112, &v111, v83, v84, v85, &v110);
      TSCEFormat::TSCEFormat(&v116, &v110);
      objc_msgSend_setFormat_(v81, v107, &v116, v108, v109);
      v86 = v81;
    }

    v41 = v86;

    goto LABEL_24;
  }

  if (TSCEArgumentAccessor::shouldTreatValueAsDateArgument(v15, v13, v20, v21, v22))
  {
    v120 = 0;
    v24 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v14, v23, v13, a4, v10, &v120);
    v25 = v120;
    v119 = v25;
    v27 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v15, v26, v13, a4, v8, &v119);
    v28 = v119;

    if (v28)
    {
      v32 = objc_msgSend_raiseErrorOrConvert_(v13, v29, v28, v30, v31);
    }

    else
    {
      objc_msgSend_timeIntervalSinceDate_(v24, v29, v27, v30, v31);
      v88 = sub_221387C00(v87);
      v89 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v32 = objc_msgSend_initWithDecimal_baseUnit_(v89, v90, &v116, v88, v91);
    }

    goto LABEL_23;
  }

  v118 = 0;
  v42 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v14, v23, v13, a4, v10, &v118);
  v43 = v118;
  v117 = v43;
  v45 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v44, v13, a4, v8, &v117);
  v37 = v117;

  if (v37)
  {
    v41 = objc_msgSend_raiseErrorOrConvert_(v13, v46, v37, v48, v49);
  }

  else
  {
    if (objc_msgSend_isDuration(v45, v46, v47, v48, v49))
    {
      objc_msgSend_rawTimeIntervalValue(v45, v92, v93, v94, v95);
    }

    else
    {
      objc_msgSend_timeIntervalRepresentation(v45, v92, v93, v94, v95);
      v100 = v101 * 24.0 * 60.0 * 60.0;
    }

    v102 = objc_msgSend_dateByAddingTimeInterval_(v42, v96, v97, v98, v99, -v100);

    if (v14)
    {
      objc_msgSend_formatWithContext_(v14, v103, v13, v104, v105);
    }

    else
    {
      memset(&v116, 0, sizeof(v116));
    }

    v41 = objc_msgSend_dateValue_format_(TSCEDateValue, v103, v102, &v116, v105);
    v42 = v102;
  }

LABEL_33:
LABEL_34:

  return v41;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = *(*a5 + 8);
  v8 = **a5;
  v10 = objc_msgSend_computeSubtraction_functionSpec_left_leftArgumentIndex_right_rightArgumentIndex_(TSCEFunction_op_Subtract, v9, a3, a4, v8, 0, v7, 1);

  return v10;
}

@end