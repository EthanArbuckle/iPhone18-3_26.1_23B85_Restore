@interface TSCEFunction_RANDARRAY
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_RANDARRAY

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = *a5;
  v9 = *(a5 + 1);
  if (v9 != *a5)
  {
    v10 = *v8;
    if (objc_msgSend_isTokenOrEmptyArg(v10, v11, v12, v13, v14))
    {
      v16 = 1;
LABEL_4:

      v8 = *a5;
      v9 = *(a5 + 1);
      goto LABEL_6;
    }

    v135 = 0;
    v39 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v15, a3, a4, 0, &v135);
    v36 = v135;
    if (v36)
    {
      v44 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v36, v42, v43);
    }

    else
    {
      v134._decimal.w[0] = objc_msgSend_decimalRepresentation(v39, v40, v41, v42, v43);
      v134._decimal.w[1] = v49;
      v50 = TSUDecimal::truncatedIntegerValue(&v134);
      v16 = v50;
      if (v50 > 0)
      {

        goto LABEL_4;
      }

      v61 = objc_msgSend_emptyArrayError(TSCEError, v51, v52, v53, v54);
      v44 = objc_msgSend_raiseErrorOrConvert_(a3, v62, v61, v63, v64);
    }

    goto LABEL_53;
  }

  v16 = 1;
LABEL_6:
  v17 = 0.0;
  v18 = 1.0;
  if ((v9 - v8) < 9)
  {
    v38 = 0;
    v25 = 1;
    goto LABEL_46;
  }

  v19 = v8[1];
  if (objc_msgSend_isTokenOrEmptyArg(v19, v20, v21, v22, v23))
  {
    v25 = 1;
  }

  else
  {
    v133 = 0;
    v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v24, a3, a4, 1, &v133);
    v36 = v133;
    if (v36)
    {
      v37 = objc_msgSend_raiseErrorOrConvert_(a3, v45, v36, v47, v48);
      goto LABEL_19;
    }

    v134._decimal.w[0] = objc_msgSend_decimalRepresentation(v31, v45, v46, v47, v48);
    v134._decimal.w[1] = v55;
    v56 = TSUDecimal::truncatedIntegerValue(&v134);
    v25 = v56;
    if (v56 <= 0)
    {
      v65 = objc_msgSend_emptyArrayError(TSCEError, v57, v58, v59, v60);
      v44 = objc_msgSend_raiseErrorOrConvert_(a3, v66, v65, v67, v68);

      goto LABEL_20;
    }
  }

  if (*(a5 + 1) - *a5 < 0x11uLL)
  {
    goto LABEL_45;
  }

  v19 = *(*a5 + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v19, v26, v27, v28, v29) & 1) == 0)
  {
    v132 = 0;
    v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v30, a3, a4, 2, &v132);
    v36 = v132;
    if (v36)
    {
      v37 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v36, v34, v35);
LABEL_19:
      v44 = v37;
LABEL_20:

      goto LABEL_53;
    }

    v134._decimal.w[0] = objc_msgSend_decimalRepresentation(v31, v32, v33, v34, v35);
    v134._decimal.w[1] = v69;
    TSUDecimal::doubleValue(&v134);
    v17 = v70;
  }

  if (*(a5 + 1) - *a5 >= 0x19uLL)
  {
    v19 = *(*a5 + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v19, v75, v76, v77, v78) & 1) == 0)
    {
      v131 = 0;
      v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v79, a3, a4, 3, &v131);
      v36 = v131;
      if (v36)
      {
        v37 = objc_msgSend_raiseErrorOrConvert_(a3, v80, v36, v82, v83);
        goto LABEL_19;
      }

      v134._decimal.w[0] = objc_msgSend_decimalRepresentation(v31, v80, v81, v82, v83);
      v134._decimal.w[1] = v84;
      TSUDecimal::doubleValue(&v134);
      v18 = v85;
    }

    if (*(a5 + 1) - *a5 >= 0x21uLL)
    {
      v86 = *(*a5 + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v86, v87, v88, v89, v90) & 1) == 0)
      {
        v130 = 0;
        v92 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v86, v91, a3, a4, 4, &v130);
        v93 = v130;
        if (v93)
        {
          v36 = v93;
          v44 = objc_msgSend_raiseErrorOrConvert_(a3, v94, v93, v95, v96);

          goto LABEL_53;
        }

        if (v17 > v18)
        {
          goto LABEL_44;
        }

        if (v92)
        {
          if (v17 != v18 && trunc(v17) == trunc(v18))
          {
            goto LABEL_44;
          }

          TSUDecimal::operator=();
          TSUDecimal::ceiling(&v134);
          TSUDecimal::doubleValue(&v134);
          v17 = v126;
          TSUDecimal::operator=();
          TSUDecimal::floor(&v134);
          TSUDecimal::doubleValue(&v134);
          v18 = v127;
          v38 = 1;
LABEL_46:
          v36 = objc_opt_new();
          v107 = objc_msgSend_randGenerator(a3, v103, v104, v105, v106, 0, __PAIR64__(v16, v25));
          do
          {
            TSCERandGenerator::randWithMinMax(v107, v17, v18);
            TSUDecimal::operator=();
            v111 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v108, &v134, v109, v110);
            v116 = v111;
            if (v38)
            {
              v117 = objc_msgSend_floor(v111, v112, v113, v114, v115);

              v116 = v117;
            }

            objc_msgSend_setValue_atCoord_(v36, v112, v116, &v128, v115);
            v128 = TSCEGridDimensions::nextCoordRowMajorOrder(&v129, &v128);
          }

          while (v128 != 0x7FFFFFFF && HIDWORD(v128) != 0x7FFFFFFF);
          v118 = [TSCEDenseGrid alloc];
          v98 = objc_msgSend_initWithValueGrid_(v118, v119, v36, v120, v121);
          v102 = objc_msgSend_gridValue_(TSCEGridValue, v122, v98, v123, v124);
          goto LABEL_52;
        }

LABEL_45:
        v38 = 0;
        goto LABEL_46;
      }
    }
  }

  if (v17 <= v18)
  {
    goto LABEL_45;
  }

LABEL_44:
  v36 = objc_msgSend_functionName(a4, v71, v72, v73, v74);
  v98 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v97, v36, 3, 4, 1, 0);
  v102 = objc_msgSend_raiseErrorOrConvert_(a3, v99, v98, v100, v101);
LABEL_52:
  v44 = v102;

LABEL_53:

  return v44;
}

@end