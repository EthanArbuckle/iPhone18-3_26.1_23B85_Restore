@interface TSCEFunction_XIRR
+ (TSUDecimal)solveByBisectionWithVector:(id)a3 datesVector:(id)a4 initial:(const TSUDecimal *)a5 context:(id)a6 outError:(id *)a7;
+ (TSUDecimal)solveByNewtonsWithVector:(id)a3 valuesVector:(id)a4 datesVector:(id)a5 initial:(const TSUDecimal *)a6 outError:(id *)a7;
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_XIRR

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  v107[0] = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, a3, a4, 0, 1, v107);
  v12 = v107[0];
  if (v12)
  {
    v17 = v12;
    v18 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v15, v16);
    goto LABEL_19;
  }

  v19 = objc_msgSend_count(v11, v13, v14, v15, v16);
  v20 = *(*a5 + 8);
  v106 = 0;
  v98 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v20, v21, a3, a4, 1, 1, &v106);
  v22 = v106;
  if (!v22)
  {
    TSUDecimal::operator=();
    if (*(a5 + 1) - *a5 >= 0x11uLL)
    {
      v31 = *(*a5 + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v31, v32, v33, v34, v35) & 1) == 0)
      {
        v104 = 0;
        v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v31, v36, a3, a4, 2, &v104);
        v17 = v104;
        v105[0] = objc_msgSend_decimalRepresentation(v37, v38, v39, v40, v41);
        v105[1] = v42;
        if (v17)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(a3, v42, v17, v43, v44);

          goto LABEL_18;
        }
      }
    }

    if (v19 == objc_msgSend_count(v98, v27, v28, v29, v30))
    {
      if (v19 > 1)
      {
        v102 = 0;
        v65 = objc_msgSend_solveByNewtonsWithVector_valuesVector_datesVector_initial_outError_(a1, v45, a3, v11, v98, v105, &v102);
        v67 = v66;
        v17 = v102;
        v103._decimal.w[0] = v65;
        v103._decimal.w[1] = v67;
        if (v17)
        {
          v26 = objc_msgSend_raiseErrorOrConvert_(a3, v68, v17, v69, v70);
          goto LABEL_5;
        }

        if (TSUDecimal::isNaN(&v103))
        {
          TSUDecimal::operator=();
          if ((TSUDecimal::operator==() & 1) == 0)
          {
            TSUDecimal::operator=();
            v101 = 0;
            v72 = objc_msgSend_solveByNewtonsWithVector_valuesVector_datesVector_initial_outError_(a1, v71, a3, v11, v98, v99, &v101);
            v74 = v73;
            v75 = v101;
            v103._decimal.w[0] = v72;
            v103._decimal.w[1] = v74;
            if (v75)
            {
              v17 = v75;
              v26 = objc_msgSend_raiseErrorOrConvert_(a3, v76, v75, v77, v78);
              goto LABEL_5;
            }
          }
        }

        if (!TSUDecimal::isNaN(&v103))
        {
          goto LABEL_33;
        }

        TSUDecimal::operator=();
        v100 = 0;
        v80 = objc_msgSend_solveByBisectionWithVector_datesVector_initial_context_outError_(a1, v79, v11, v98, v99, a3, &v100);
        v82 = v81;
        v17 = v100;
        v103._decimal.w[0] = v80;
        v103._decimal.w[1] = v82;
        if (v17)
        {
          v26 = objc_msgSend_raiseErrorOrConvert_(a3, v83, v17, v84, v85);
          goto LABEL_5;
        }

        if (!TSUDecimal::isNaN(&v103))
        {
LABEL_33:
          TSCEFormat::TSCEFormat(v99, 258);
          v18 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v96, &v103, v99, v97);
          goto LABEL_17;
        }

        v49 = objc_msgSend_functionName(a4, v86, v87, v88, v89);
        v53 = objc_msgSend_numberDoesNotConvergeWithEstimateErrorForFunctionName_(TSCEError, v90, v49, v91, v92);
        v57 = objc_msgSend_raiseErrorOrConvert_(a3, v93, v53, v94, v95);
      }

      else
      {
        v49 = objc_msgSend_functionName(a4, v45, v46, v47, v48);
        v53 = objc_msgSend_tooFewDataPointsErrorForFunctionName_(TSCEError, v50, v49, v51, v52);
        v57 = objc_msgSend_raiseErrorOrConvert_(a3, v54, v53, v55, v56);
      }
    }

    else
    {
      v49 = objc_msgSend_functionName(a4, v45, v46, v47, v48);
      v53 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v58, v49, v59, v60);
      v57 = objc_msgSend_raiseErrorOrConvert_(a3, v61, v53, v62, v63);
    }

    v18 = v57;

LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  v17 = v22;
  v26 = objc_msgSend_raiseErrorOrConvert_(a3, v23, v22, v24, v25);
LABEL_5:
  v18 = v26;
LABEL_18:

LABEL_19:

  return v18;
}

+ (TSUDecimal)solveByNewtonsWithVector:(id)a3 valuesVector:(id)a4 datesVector:(id)a5 initial:(const TSUDecimal *)a6 outError:(id *)a7
{
  v133 = a3;
  v12 = a4;
  v13 = a5;
  v18 = objc_msgSend_functionSpec(a1, v14, v15, v16, v17);
  v136 = objc_msgSend_count(v12, v19, v20, v21, v22);
  v135 = a7;
  v27 = objc_msgSend_gregorianCalendar(TSCECalendar, v23, v24, v25, v26);
  v154[0] = v133;
  v154[1] = v18;
  v155 = 0;
  v156[0] = 0;
  *(v156 + 7) = 0;
  v157 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v158 = 0;
  v159 = 0;
  v28 = v154[0];
  v148[0] = v28;
  v148[1] = v18;
  v149 = 0;
  v150[0] = 1;
  *(v150 + 7) = 0;
  v151 = v157;
  v152 = 0;
  v153 = 0;
  v134 = objc_msgSend_valueAtIndex_accessContext_(v13, v29, 0, v148, v30);
  if (objc_msgSend_isNil(v134, v31, v32, v33, v34))
  {
    v39 = objc_msgSend_functionName(v18, v35, v36, v37, v38);
    *a7 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v40, v39, 1, v41);

    TSUDecimal::operator=();
    goto LABEL_39;
  }

  v131 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v134, v35, v28, v18, 1, a7);
  if (*a7)
  {
    TSUDecimal::operator=();
    goto LABEL_38;
  }

  v125 = v13;
  v126 = v12;
  v128 = objc_msgSend_gregorianCalendar(TSCECalendar, v42, v43, v44, v45);
  v130 = objc_msgSend_clearOffTime_(v128, v46, v131, v47, v48);
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v147 = *a6;
  TSUDecimal::operator=();
  v132 = 0;
  v49 = 0;
  v129 = v28;
  v127 = v27;
  while (1)
  {
    v124 = v49;
    if (TSUDecimal::isNaN(&v147))
    {
LABEL_28:
      v147 = xmmword_2217E1440;
LABEL_29:
      v160 = v147;
      goto LABEL_37;
    }

    TSUDecimal::operator=();
    TSUDecimal::operator=();
    if (v136)
    {
      break;
    }

    if ((v132 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_26:
    v161 = v145;
    TSUDecimal::operator/=();
    v143 = v161;
    v161 = v147;
    TSUDecimal::operator-=();
    v146 = v161;
    TSUDecimal::operator-=();
    v144 = v161;
    TSUDecimal::abs(&v144);
    v147 = v146;
    TSUDecimal::operator=();
    if (TSUDecimal::operator<())
    {
      goto LABEL_29;
    }

    v49 = v124 + 1;
    v132 = 1;
    if (v124 == 99)
    {
      goto LABEL_28;
    }
  }

  v54 = 0;
  v123 = v132;
  do
  {
    v55 = objc_msgSend_valueAtIndex_accessContext_(v12, v50, v54, v154, v53);
    v58 = objc_msgSend_valueAtIndex_accessContext_(v13, v56, v54, v148, v57);
    if (objc_msgSend_isNil(v55, v59, v60, v61, v62) & 1) != 0 || (objc_msgSend_isNil(v58, v63, v64, v65, v66))
    {
      if (objc_msgSend_isNil(v55, v63, v64, v65, v66))
      {
        v109 = objc_msgSend_functionName(v18, v67, v68, v69, v70);
        v112 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v107, v109, 1, v108);
        goto LABEL_31;
      }

      if (objc_msgSend_isNil(v58, v67, v68, v69, v70))
      {
        v109 = objc_msgSend_functionName(v18, v71, v72, v73, v74);
        v112 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v110, v109, 2, v111);
LABEL_31:
        *v135 = v112;

        TSUDecimal::operator=();
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {
      v75 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v55, v63, v28, v18, 0, v135);
      *&v143 = objc_msgSend_decimalRepresentation(v75, v76, v77, v78, v79);
      *(&v143 + 1) = v80;

      if (*v135)
      {
        TSUDecimal::operator=();
        goto LABEL_36;
      }

      v85 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v58, v81, v28, v18, 1, v135);
      if (*v135)
      {
        TSUDecimal::operator=();
LABEL_35:

        v28 = v129;
        goto LABEL_36;
      }

      v86 = objc_msgSend_clearOffTime_(v128, v82, v85, v83, v84);
      v88 = objc_msgSend_components_fromDate_toDate_options_(v127, v87, 16, v130, v86, 0);
      if (objc_msgSend_day(v88, v89, v90, v91, v92) < 0)
      {
        v113 = objc_msgSend_functionName(v18, v93, v94, v95, v96);
        *v135 = objc_msgSend_dateEarlierThanStartingDateErrorForFunctionName_(TSCEError, v114, v113, v115, v116);

        TSUDecimal::operator=();
        goto LABEL_35;
      }

      TSUDecimal::operator=();
      if ((TSUDecimal::operator<=() & 1) != 0 && !TSUDecimal::operator==())
      {
        v123 = 1;
      }

      else
      {
        v132 = 1;
      }

      TSUDecimal::operator=();
      v161 = v140;
      TSUDecimal::operator+=();
      v141 = v161;
      TSUDecimal::operator=();
      v161 = v138;
      TSUDecimal::operator/=();
      v139 = v161;
      TSUDecimal::doubleValue(&v141);
      v98 = v97;
      TSUDecimal::doubleValue(&v139);
      pow(v98, v99);
      TSUDecimal::operator=();
      v142 = v161;
      v161 = v143;
      TSUDecimal::operator*=();
      v141 = v161;
      TSUDecimal::operator+=();
      TSUDecimal::operator=();
      v161 = v139;
      TSUDecimal::operator+=();
      v140 = v161;
      TSUDecimal::operator=();
      v161 = v137;
      TSUDecimal::operator/=();
      v100 = *(&v161 + 1);
      v101 = v161;
      TSUDecimal::operator=();
      v161 = __PAIR128__(v100, v101);
      TSUDecimal::operator-=();
      v138 = v161;
      TSUDecimal::doubleValue(&v140);
      v103 = v102;
      TSUDecimal::doubleValue(&v138);
      pow(v103, v104);
      TSUDecimal::operator=();
      v141 = v161;
      TSUDecimal::operator=();
      v161 = v139;
      TSUDecimal::operator/=();
      v105 = *(&v161 + 1);
      v106 = v161;
      TSUDecimal::operator=();
      v161 = __PAIR128__(v105, v106);
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v140 = v161;
      TSUDecimal::operator+=();

      v13 = v125;
      v12 = v126;
      v28 = v129;
    }

    ++v54;
  }

  while (v136 != v54);
  if (v132 & v123)
  {
    goto LABEL_26;
  }

LABEL_40:
  v119 = objc_msgSend_functionName(v18, v50, v51, v52, v53);
  *v135 = objc_msgSend_onlyPositiveOrNegativeErrorForFunctionName_(TSCEError, v120, v119, v121, v122);

  TSUDecimal::operator=();
LABEL_37:

LABEL_38:
LABEL_39:

  v118 = v160._decimal.w[1];
  v117 = v160._decimal.w[0];
  result._decimal.w[1] = v118;
  result._decimal.w[0] = v117;
  return result;
}

+ (TSUDecimal)solveByBisectionWithVector:(id)a3 datesVector:(id)a4 initial:(const TSUDecimal *)a5 context:(id)a6 outError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  TSUDecimal::operator=();
  v73 = xmmword_2217E1440;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v19 = objc_msgSend_functionSpec(a1, v15, v16, v17, v18);
  v21 = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v20, v14, v19, v12, v13, 0, &v72, 0, a7);
  v23 = v22;

  v75 = *a5;
  TSUDecimal::operator+=();
  v71 = v75;
  if (*a7)
  {
    TSUDecimal::operator=();
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v29 = objc_msgSend_functionSpec(a1, v24, v25, v26, v27);
      v68 = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v30, v14, v29, v12, v13, 0, &v71, 0, a7);
      v69 = v31;
      v75._decimal.w[0] = v21;
      v75._decimal.w[1] = v23;
      TSUDecimal::operator*=();
      v70 = v75;
      TSUDecimal::operator=();
      v32 = TSUDecimal::operator<=();
      v33 = i > 0x63 ? 1 : v32;

      if (v33)
      {
        break;
      }

      if (*a7)
      {
        TSUDecimal::operator=();
        goto LABEL_15;
      }

      TSUDecimal::operator+=();
    }

    v75 = v72;
    TSUDecimal::operator-=();
    v70 = v75;
    TSUDecimal::abs(&v70);
    if (i > 0x63 || (TSUDecimal::operator=(), (TSUDecimal::operator<() & 1) != 0))
    {
      v34 = v73;
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      v41 = 100;
      while (1)
      {
        v42 = objc_msgSend_functionSpec(a1, v37, v38, v39, v40);
        v67._decimal.w[0] = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v43, v14, v42, v12, v13, 0, &v72, 0, a7);
        v67._decimal.w[1] = v44;

        if (*a7 || (objc_msgSend_functionSpec(a1, v45, v46, v47, v48), v49 = objc_claimAutoreleasedReturnValue(), v66._decimal.w[0] = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v50, v14, v49, v12, v13, 0, &v71, 0, a7), v66._decimal.w[1] = v51, v49, *a7))
        {
LABEL_30:
          TSUDecimal::operator=();
          goto LABEL_15;
        }

        v65 = v67;
        TSUDecimal::abs(&v65);
        v64 = v66;
        TSUDecimal::abs(&v64);
        TSUDecimal::operator=();
        if (TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<()) || (v75 = v67, TSUDecimal::operator*=(), TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
        {
LABEL_29:
          v60 = &v73;
          goto LABEL_33;
        }

        v75 = v72;
        TSUDecimal::operator+=();
        TSUDecimal::operator/=();
        v63 = v75;
        v56 = objc_msgSend_functionSpec(a1, v52, v53, v54, v55);
        v62._decimal.w[0] = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(TSCEFunction_XNPV, v57, v14, v56, v12, v13, 0, &v63, 0, a7);
        v62._decimal.w[1] = v58;

        if (*a7)
        {
          goto LABEL_30;
        }

        v75 = v62;
        TSUDecimal::operator*=();
        TSUDecimal::operator=();
        v59 = TSUDecimal::operator<() ? &v71 : &v72;
        *v59 = v63;
        v75 = v72;
        TSUDecimal::operator-=();
        v61 = v75;
        TSUDecimal::abs(&v61);
        TSUDecimal::abs(&v62);
        TSUDecimal::operator=();
        v75 = v61;
        TSUDecimal::operator/=();
        TSUDecimal::operator=();
        if (TSUDecimal::operator<=())
        {
          break;
        }

        TSUDecimal::operator=();
        if (TSUDecimal::operator<=())
        {
          break;
        }

        if (!--v41)
        {
          goto LABEL_29;
        }
      }

      v60 = &v63;
      if (v41 == 1)
      {
        v60 = &v73;
      }

LABEL_33:
      v34 = *v60;
    }

    v74 = v34;
  }

LABEL_15:

  v36 = *(&v74 + 1);
  v35 = v74;
  result._decimal.w[1] = v36;
  result._decimal.w[0] = v35;
  return result;
}

@end