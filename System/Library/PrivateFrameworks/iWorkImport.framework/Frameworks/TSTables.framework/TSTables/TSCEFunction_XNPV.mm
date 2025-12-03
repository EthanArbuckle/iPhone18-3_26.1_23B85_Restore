@interface TSCEFunction_XNPV
+ (TSUDecimal)computeXNPV:(id)v functionSpec:(id)spec valuesVector:(id)vector datesVector:(id)datesVector firstArgumentIndex:(int)index rate:(const TSUDecimal *)rate unit:(unsigned __int16 *)unit outError:(id *)self0;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_XNPV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v53 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v53);
  v12 = v53;
  v52[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  v52[1] = v17;
  if (v12)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v17, v12, v18, v19);
  }

  else
  {
    v21 = *(*arguments + 8);
    v51 = 0;
    v23 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v21, v22, context, spec, 1, 1, &v51);
    v24 = v51;
    if (v24)
    {
      v12 = v24;
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v25, v24, v26, v27);
    }

    else
    {
      v28 = *(*arguments + 16);
      v50 = 0;
      v30 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v28, v29, context, spec, 2, 1, &v50);
      v31 = v50;
      if (v31)
      {
        v12 = v31;
        v35 = objc_msgSend_raiseErrorOrConvert_(context, v32, v31, v33, v34);
      }

      else
      {
        v49 = 0;
        v47 = 0;
        v36 = objc_msgSend_computeXNPV_functionSpec_valuesVector_datesVector_firstArgumentIndex_rate_unit_outError_(self, v32, context, spec, v23, v30, 1, v52, &v49, &v47, 0);
        v38 = v37;
        v39 = v47;
        v12 = v39;
        v48[0] = v36;
        v48[1] = v38;
        if (v39)
        {
          v35 = objc_msgSend_raiseErrorOrConvert_(context, v40, v39, v41, v42);
        }

        else
        {
          v43 = [TSCENumberValue alloc];
          v35 = objc_msgSend_initWithDecimal_baseUnit_(v43, v44, v48, v49, v45);
        }
      }

      v20 = v35;
    }
  }

  return v20;
}

+ (TSUDecimal)computeXNPV:(id)v functionSpec:(id)spec valuesVector:(id)vector datesVector:(id)datesVector firstArgumentIndex:(int)index rate:(const TSUDecimal *)rate unit:(unsigned __int16 *)unit outError:(id *)self0
{
  v10 = *&index;
  vCopy = v;
  vectorCopy = vector;
  datesVectorCopy = datesVector;
  if (!error)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "+[TSCEFunction_XNPV computeXNPV:functionSpec:valuesVector:datesVector:firstArgumentIndex:rate:unit:outError:]", v18, v19);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFinancialFunctions.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 4289, 0, "Error pointer is required");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = objc_msgSend_count(vectorCopy, v16, v17, v18, v19);
  if (v32 != objc_msgSend_count(datesVectorCopy, v33, v34, v35, v36))
  {
    v58 = objc_msgSend_functionName(spec, v37, v38, v39, v40);
    v62 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v59, v58, v60, v61);
LABEL_9:
    *error = v62;

    TSUDecimal::operator=();
    goto LABEL_47;
  }

  if (!v32)
  {
    v58 = objc_msgSend_functionName(spec, v37, v38, v39, v40);
    v62 = objc_msgSend_tooFewDataPointsErrorForFunctionName_(TSCEError, v63, v58, v64, v65);
    goto LABEL_9;
  }

  v147 = objc_msgSend_gregorianCalendar(TSCECalendar, v37, v38, v39, v40);
  v168[0] = vCopy;
  v168[1] = spec;
  v169 = 0;
  v170 = v10;
  v171[0] = 0;
  *(v171 + 3) = 0;
  v172 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v173 = 0;
  v174 = 0;
  v41 = v168[0];
  v161[0] = v41;
  v161[1] = spec;
  v162 = 0;
  v148 = v10 + 1;
  v163 = v10 + 1;
  v164[0] = 0;
  *(v164 + 3) = 0;
  v165 = v172;
  v166 = 0;
  v167 = 0;
  v152 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v42, 0, v168, v43);
  v151 = objc_msgSend_valueAtIndex_accessContext_(datesVectorCopy, v44, 0, v161, v45);
  if (objc_msgSend_isNil(v152, v46, v47, v48, v49))
  {
    v54 = objc_msgSend_functionName(spec, v50, v51, v52, v53);
    v57 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v55, v54, v10, v56);
LABEL_12:
    *error = v57;

    TSUDecimal::operator=();
    goto LABEL_46;
  }

  if (objc_msgSend_isNil(v151, v50, v51, v52, v53))
  {
    v54 = objc_msgSend_functionName(spec, v66, v67, v68, v69);
    v57 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v70, v54, v148, v71);
    goto LABEL_12;
  }

  v72 = objc_msgSend_calcEngine(v41, v66, v67, v68, v69);
  sub_221327DF4(v159, spec, v72);

  v146 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v152, v73, v41, spec, v10, error);
  v145 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v151, v74, v41, spec, v148, error);
  if (*error)
  {
    TSUDecimal::operator=();
    goto LABEL_45;
  }

  v141 = objc_msgSend_clearOffTime_(v147, v75, v145, v76, v77);
  *&v158 = objc_msgSend_decimalRepresentation(v146, v78, v79, v80, v81);
  *(&v158 + 1) = v82;
  TSUDecimal::operator=();
  if (v32 == 1)
  {
    goto LABEL_31;
  }

  v87 = 1;
  while (1)
  {
    v150 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v83, v87, v168, v86);
    v149 = objc_msgSend_valueAtIndex_accessContext_(datesVectorCopy, v88, v87, v161, v89);
    if ((objc_msgSend_isNil(v150, v90, v91, v92, v93) & 1) == 0 && (objc_msgSend_isNil(v149, v94, v95, v96, v97) & 1) == 0)
    {
      break;
    }

    if (objc_msgSend_isNil(v150, v94, v95, v96, v97))
    {
      v131 = objc_msgSend_functionName(spec, v98, v99, v100, v101);
      v134 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v129, v131, v10, v130);
      goto LABEL_36;
    }

    if (objc_msgSend_isNil(v149, v98, v99, v100, v101))
    {
      v131 = objc_msgSend_functionName(spec, v102, v103, v104, v105);
      v134 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v132, v131, v148, v133);
LABEL_36:
      *error = v134;

      TSUDecimal::operator=();
LABEL_43:

      goto LABEL_44;
    }

LABEL_30:

    if (v32 == ++v87)
    {
      goto LABEL_31;
    }
  }

  v144 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v150, v94, v41, spec, 0, error);
  if (*error)
  {
    TSUDecimal::operator=();
    goto LABEL_42;
  }

  if (!unit || (sub_2213188C0(v159, v144), !v160))
  {
    v110 = objc_msgSend_decimalRepresentation(v144, v106, v107, v108, v109);
    v137 = v111;
    v138 = v110;
    v142 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v149, v111, v41, spec, v10, error);
    if (!*error)
    {
      v140 = objc_msgSend_clearOffTime_(v147, v112, v142, v113, v114);
      v139 = objc_msgSend_components_fromDate_toDate_options_(v147, v115, 16, v141, v140, 0);
      v143 = objc_msgSend_day(v139, v116, v117, v118, v119);
      if (v143 < 0)
      {
        v125 = objc_msgSend_functionName(spec, v120, v121, v122, v123);
        *error = objc_msgSend_dateEarlierThanStartingDateErrorForFunctionName_(TSCEError, v126, v125, v127, v128);

        TSUDecimal::operator=();
      }

      else
      {
        TSUDecimal::operator=();
        v176 = v154[1];
        TSUDecimal::operator+=();
        v155 = v176;
        TSUDecimal::operator=();
        v176 = v153;
        TSUDecimal::operator/=();
        v154[0] = v176;
        v156 = sub_2212B2BA4(&v155, v154);
        v157 = v124;
        v176._decimal.w[0] = v138;
        v176._decimal.w[1] = v137;
        TSUDecimal::operator/=();
        v155 = v176;
        TSUDecimal::operator+=();
      }

      if (v143 < 0)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    TSUDecimal::operator=();

LABEL_42:
    goto LABEL_43;
  }

LABEL_31:
  if (*error)
  {
LABEL_34:
    TSUDecimal::operator=();
  }

  else
  {
    if (v160)
    {
      *error = v160;
      goto LABEL_34;
    }

    if (unit)
    {
      *unit = sub_2213189D8(v159, v83, v84, v85, v86);
    }

    v175 = v158;
  }

LABEL_44:

LABEL_45:
LABEL_46:

LABEL_47:
  v136 = *(&v175 + 1);
  v135 = v175;
  result._decimal.w[1] = v136;
  result._decimal.w[0] = v135;
  return result;
}

@end