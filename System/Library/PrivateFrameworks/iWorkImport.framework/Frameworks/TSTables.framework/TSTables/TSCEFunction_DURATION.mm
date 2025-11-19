@interface TSCEFunction_DURATION
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DURATION

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = *a5;
  v9 = *(a5 + 1);
  if (v9 == *a5)
  {
    v19 = 0;
    v17 = 0;
    v18 = 6;
  }

  else
  {
    v10 = *v8;
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v10, v11, v12, v13, v14);
    if (isTokenOrEmptyArg)
    {
      v17 = 0;
      v18 = 6;
    }

    else
    {
      v138 = 0;
      v54 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v15, a3, a4, 0, &v138);
      v50 = v138;
      v127._tskFormat = objc_msgSend_decimalRepresentation(v54, v55, v56, v57, v58);
      *&v127._formatType = v59;
      TSUDecimal::doubleValue(&v127);
      v61 = v60;

      if (v50)
      {
        goto LABEL_58;
      }

      v137 = 0;
      v79 = objc_msgSend_deepType_outError_(v10, v62, a3, &v137, v64);
      v80 = v137;
      v84 = v79 != 10;
      if (v79 == 10)
      {
        v18 = 6;
      }

      else
      {
        v18 = 2;
      }

      v17 = v61 != 0.0 && v84;
      if (v80)
      {
        goto LABEL_80;
      }
    }

    v19 = isTokenOrEmptyArg ^ 1;

    v8 = *a5;
    v9 = *(a5 + 1);
  }

  if ((v9 - v8) < 9)
  {
    goto LABEL_17;
  }

  v10 = v8[1];
  if ((objc_msgSend_isTokenOrEmptyArg(v10, v20, v21, v22, v23) & 1) == 0)
  {
    v136 = 0;
    v71 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v24, a3, a4, 1, &v136);
    v50 = v136;
    v127._tskFormat = objc_msgSend_decimalRepresentation(v71, v72, v73, v74, v75);
    *&v127._formatType = v76;
    TSUDecimal::doubleValue(&v127);
    v78 = v77;

    if (v50)
    {
      goto LABEL_58;
    }

    if (v17)
    {
      v19 = 1;
      v17 = 1;
    }

    else
    {
      v93 = objc_msgSend_deepType_(v10, v62, a3, v63, v64);
      if (v93 == 10)
      {
        v18 = v18;
      }

      else
      {
        v18 = 3;
      }

      v17 = v78 != 0.0 && v93 != 10;
      v19 = 1;
    }
  }

  if (*(a5 + 1) - *a5 < 0x11uLL)
  {
    goto LABEL_17;
  }

  v10 = *(*a5 + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v10, v25, v26, v27, v28) & 1) == 0)
  {
    v135 = 0;
    v85 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v29, a3, a4, 2, &v135);
    v50 = v135;
    v127._tskFormat = objc_msgSend_decimalRepresentation(v85, v86, v87, v88, v89);
    *&v127._formatType = v90;
    TSUDecimal::doubleValue(&v127);
    v92 = v91;

    if (v50)
    {
      goto LABEL_58;
    }

    if (v17)
    {
      v19 = 1;
      v17 = 1;
    }

    else
    {
      v134 = 0;
      v102 = objc_msgSend_deepType_outError_(v10, v62, a3, &v134, v64);
      v80 = v134;
      if (v102 == 10)
      {
        v18 = v18;
      }

      else
      {
        v18 = 4;
      }

      v17 = v92 != 0.0 && v102 != 10;
      if (v80)
      {
        goto LABEL_80;
      }

      v19 = 1;
    }
  }

  if (*(a5 + 1) - *a5 < 0x19uLL)
  {
LABEL_17:
    if (v19)
    {
LABEL_18:
      v46 = sub_221387CBC(v18);
      TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration();
      v47 = objc_alloc(MEMORY[0x277D80678]);
      v48 = TSUDurationFormatterMinDurationUnitInUnits();
      v50 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v47, v49, 0, v48, v46, 1);
      v51 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      TSCEFormat::TSCEFormat(&v127, v50, 0);
      v53 = objc_msgSend_initWithDecimal_format_baseUnit_(v51, v52, v128, &v127, v18);
      goto LABEL_82;
    }

    v50 = objc_msgSend_functionName(a4, a2, a3, a4, a5);
    v67 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v65, v50, 5, v66);
    v53 = objc_msgSend_raiseErrorOrConvert_(a3, v68, v67, v69, v70);

    goto LABEL_82;
  }

  v10 = *(*a5 + 24);
  if (objc_msgSend_isTokenOrEmptyArg(v10, v30, v31, v32, v33))
  {
    goto LABEL_12;
  }

  v133 = 0;
  v94 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v34, a3, a4, 3, &v133);
  v50 = v133;
  v127._tskFormat = objc_msgSend_decimalRepresentation(v94, v95, v96, v97, v98);
  *&v127._formatType = v99;
  TSUDecimal::doubleValue(&v127);
  v101 = v100;

  if (v50)
  {
LABEL_58:
    v111 = objc_msgSend_raiseErrorOrConvert_(a3, v62, v50, v63, v64);
LABEL_81:
    v53 = v111;

    goto LABEL_82;
  }

  if (v17)
  {
    v19 = 1;
    v17 = 1;
  }

  else
  {
    v132 = 0;
    v112 = objc_msgSend_deepType_outError_(v10, v62, a3, &v132, v64);
    v80 = v132;
    if (v112 == 10)
    {
      v18 = v18;
    }

    else
    {
      v18 = 5;
    }

    v17 = v101 != 0.0 && v112 != 10;
    if (v80)
    {
      goto LABEL_80;
    }

    v19 = 1;
  }

LABEL_12:

  if (*(a5 + 1) - *a5 < 0x21uLL)
  {
    goto LABEL_17;
  }

  v10 = *(*a5 + 32);
  if (objc_msgSend_isTokenOrEmptyArg(v10, v35, v36, v37, v38))
  {
    goto LABEL_14;
  }

  v131 = 0;
  v103 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v39, a3, a4, 4, &v131);
  v50 = v131;
  v127._tskFormat = objc_msgSend_decimalRepresentation(v103, v104, v105, v106, v107);
  *&v127._formatType = v108;
  TSUDecimal::doubleValue(&v127);
  v110 = v109;

  if (v50)
  {
    goto LABEL_58;
  }

  if (v17)
  {
    v19 = 1;
    v17 = 1;
    goto LABEL_14;
  }

  v130 = 0;
  v124 = objc_msgSend_deepType_outError_(v10, v62, a3, &v130, v64);
  v80 = v130;
  if (v124 == 10)
  {
    v18 = v18;
  }

  else
  {
    v18 = 6;
  }

  v17 = v110 != 0.0 && v124 != 10;
  if (v80)
  {
LABEL_80:
    v50 = v80;
    v111 = objc_msgSend_raiseErrorOrConvert_(a3, v81, v80, v82, v83);
    goto LABEL_81;
  }

  v19 = 1;
LABEL_14:

  if (*(a5 + 1) - *a5 < 0x29uLL)
  {
    goto LABEL_17;
  }

  v40 = *(*a5 + 40);
  if (objc_msgSend_isTokenOrEmptyArg(v40, v41, v42, v43, v44))
  {

    goto LABEL_17;
  }

  v129 = 0;
  v113 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v45, a3, a4, 5, &v129);
  v50 = v129;
  v127._tskFormat = objc_msgSend_decimalRepresentation(v113, v114, v115, v116, v117);
  *&v127._formatType = v118;
  TSUDecimal::doubleValue(&v127);
  v120 = v119;

  if (!v50)
  {
    if (v120 == 0.0 || v17)
    {
      v18 = v18;
    }

    else
    {
      v18 = 7;
    }

    goto LABEL_18;
  }

  v53 = objc_msgSend_raiseErrorOrConvert_(a3, v121, v50, v122, v123);

LABEL_82:

  return v53;
}

@end