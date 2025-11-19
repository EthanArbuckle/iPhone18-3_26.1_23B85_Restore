@interface TSCEFunction_ZTEST
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ZTEST

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = *(*a5 + 8);
  v13 = objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, v12);
  v112 = 0;
  v14 = **a5;
  v111 = v13;
  v15 = sub_22121D2C8(a3, a4, v14, 0, 0, 0, &v111, &v112);
  v16 = v111;

  v110 = 0;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v17, a3, a4, 0, &v110);
  v19 = v110;

  if (v19)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(a3, v20, v19, v21, v22);
    goto LABEL_17;
  }

  if (*(a5 + 1) - *a5 < 0x11uLL)
  {
LABEL_9:
    v34 = objc_msgSend_deepType_(v16, v20, a3, v21, v22);
    v38 = objc_msgSend_deepType_(v8, v35, a3, v36, v37);
    if (v34 == 3 && v38 != 3 || v34 != 3 && v38 == 3)
    {
      goto LABEL_13;
    }

    if (v34 == 5 && v38 == 5)
    {
      v108 = 0;
      v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v39, a3, a4, 0, &v108);
      v54 = v108;
      v107 = v54;
      v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v55, a3, a4, 1, &v107);
      v19 = v107;

      if (v19)
      {
        v59 = objc_msgSend_raiseErrorOrConvert_(a3, v56, v19, v57, v58);
LABEL_28:
        v23 = v59;
        goto LABEL_15;
      }

      matched = objc_msgSend_dimensionsMatchModuloCurrency_(v24, v56, v46, v57, v58);
      if ((objc_msgSend_dimensionsMatchModuloCurrency_(v18, v61, v24, v62, v63) & 1) == 0)
      {
        v84 = sub_2212F6DF8();
        v49 = objc_msgSend_localizedStringForKey_value_table_(v84, v85, @"1 and 3", &stru_2834BADA0, @"TSCalculationEngine");

        v101 = objc_msgSend_functionName(a4, v86, v87, v88, v89);
        v78 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v90, v101, v49, v91);
        v83 = objc_msgSend_raiseErrorOrConvert_(a3, v92, v78, v93, v94);
        goto LABEL_34;
      }

      if ((matched & 1) == 0)
      {
LABEL_13:
        v40 = sub_2212F6DF8();
        v24 = objc_msgSend_localizedStringForKey_value_table_(v40, v41, @"1 and 2", &stru_2834BADA0, @"TSCalculationEngine");

        v46 = objc_msgSend_functionName(a4, v42, v43, v44, v45);
        v49 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v47, v46, v24, v48);
        v23 = objc_msgSend_raiseErrorOrConvert_(a3, v50, v49, v51, v52);
        v19 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }
    }

    v24 = objc_msgSend_computeSubtraction_functionSpec_left_leftArgumentIndex_right_rightArgumentIndex_(TSCEFunction_op_Subtract, v39, a3, a4, v16, 0, v8, 1);
    v106 = 0;
    v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v64, a3, a4, 0, &v106);
    v65 = v106;
    if (v65)
    {
      v19 = v65;
      v59 = objc_msgSend_raiseErrorOrConvert_(a3, v66, v65, v67, v68);
      goto LABEL_28;
    }

    TSUDecimal::operator=();
    v49 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v69, v102, v70, v71);
    v105 = 0;
    v74 = objc_msgSend_divide_outError_(v18, v72, v49, &v105, v73);
    v75 = v105;
    v104 = v75;
    v101 = v74;
    v78 = objc_msgSend_divide_outError_(v46, v76, v74, &v104, v77);
    v19 = v104;

    if (v19)
    {
      objc_msgSend_raiseErrorOrConvert_(a3, v79, v19, v81, v82);
    }

    else
    {
      objc_msgSend_doubleRepresentation(v78, v79, v80, v81, v82);
      objc_msgSend_probabilityWithZ_(TSCEFunction_NORMSDIST, v95, v96, v97, v98);
      TSUDecimal::operator=();
      TSCEFormat::TSCEFormat(v102, 256);
      objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v99, v103, v102, v100);
    }
    v83 = ;
LABEL_34:
    v23 = v83;

    goto LABEL_14;
  }

  v24 = *(*a5 + 16);
  if (objc_msgSend_isTokenOrEmptyArg(v24, v25, v26, v27, v28))
  {
LABEL_8:

    goto LABEL_9;
  }

  v109 = 0;
  v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v29, a3, a4, 2, &v109);
  v19 = v109;

  if (!v19)
  {
    v18 = v30;
    goto LABEL_8;
  }

  v23 = objc_msgSend_raiseErrorOrConvert_(a3, v31, v19, v32, v33);
  v18 = v30;
LABEL_16:

LABEL_17:

  return v23;
}

@end