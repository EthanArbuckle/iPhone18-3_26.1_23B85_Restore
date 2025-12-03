@interface TSCEFunction_PERCENTRANK
+ (id)computePercentRank:(id)rank functionSpec:(id)spec vector:(id)vector xValue:(id)value isExclusive:(BOOL)exclusive outError:(id *)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PERCENTRANK

+ (id)computePercentRank:(id)rank functionSpec:(id)spec vector:(id)vector xValue:(id)value isExclusive:(BOOL)exclusive outError:(id *)error
{
  exclusiveCopy = exclusive;
  rankCopy = rank;
  vectorCopy = vector;
  valueCopy = value;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v164 = objc_msgSend_zero(TSCENumberValue, v15, v16, v17, v18);
  v23 = objc_msgSend_deepType_(valueCopy, v19, rankCopy, v20, v21);
  if (v23 == 3)
  {
    v28 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(valueCopy, v22, rankCopy, spec, 1, error);
    if (*error)
    {
      goto LABEL_5;
    }

    objc_msgSend_mapDateToDouble_(TSCECalendar, v24, v28, v26, v27);
    TSUDecimal::operator=();
    v34 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v31, v166, v32, v33);

    v28 = v34;
  }

  else
  {
    v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(valueCopy, v22, rankCopy, spec, 1, error);
    if (*error)
    {
LABEL_5:
      v29 = objc_msgSend_zero(TSCENumberValue, v24, v25, v26, v27);
      v30 = 0;
      goto LABEL_68;
    }
  }

  v35 = objc_msgSend_count(vectorCopy, v24, v25, v26, v27);
  v163 = rankCopy;
  v166[0] = v163;
  v166[1] = spec;
  v167 = 0;
  v168[0] = 0;
  *(v168 + 7) = 0;
  v169 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v170 = 0;
  v171 = 0;
  if (!v35)
  {
    v160 = 0;
    v161 = 0;
LABEL_38:
    v88 = objc_msgSend_zero(TSCENumberValue, v36, v37, v38, v39);
    v41 = v88;
    if (*error)
    {
      v93 = v88;
    }

    else
    {
      if ((v160 & 1) != 0 && (v173 = v172, TSUDecimal::operator+=(), v165 = v173, TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
      {
        TSUDecimal::operator=();
        if (exclusiveCopy)
        {
          TSUDecimal::operator=();
          v173 = v172;
          TSUDecimal::operator+=();
          v122 = v173;
          v173 = v172;
          TSUDecimal::operator+=();
          v123 = v173;
          TSUDecimal::operator=();
          v173 = v123;
          TSUDecimal::operator+=();
          v173 = v122;
        }

        else
        {
          v173 = v172;
          TSUDecimal::operator+=();
          v173 = v172;
        }

        TSUDecimal::operator/=();
        v165 = v173;
        v149 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v150, &v165, v151, v152);
      }

      else
      {
        if ((v35 & 1) == 0)
        {
          if (exclusiveCopy)
          {
            objc_msgSend_percentRankExcInputOutOfRangeError(TSCEError, v89, v90, v91, v92);
          }

          else
          {
            objc_msgSend_percentRankInputOutOfRangeError(TSCEError, v89, v90, v91, v92);
          }
          *error = ;
          v93 = objc_msgSend_zero(TSCENumberValue, v141, v142, v143, v144);
          goto LABEL_66;
        }

        v94 = objc_msgSend_subtract_functionSpec_outError_(v164, v89, v161, spec, error);
        v96 = objc_msgSend_subtract_functionSpec_outError_(v28, v95, v161, spec, error);
        v99 = objc_msgSend_divide_outError_(v96, v97, v94, error, v98);

        *&v173 = objc_msgSend_decimalRepresentation(v99, v100, v101, v102, v103);
        *(&v173 + 1) = v104;
        TSUDecimal::operator+=();
        v105 = *(&v173 + 1);
        v106 = v173;
        TSUDecimal::operator=();
        if (exclusiveCopy)
        {
          v107 = v28;
          v173 = v172;
          TSUDecimal::operator+=();
          v108 = v173;
          TSUDecimal::operator=();
          v173 = v108;
          TSUDecimal::operator+=();
        }

        else
        {
          TSUDecimal::operator=();
          v173 = __PAIR128__(v105, v106);
          TSUDecimal::operator-=();
          v107 = v28;
          v105 = *(&v173 + 1);
          v106 = v173;
          v173 = v172;
          TSUDecimal::operator+=();
          v145 = v173;
          TSUDecimal::operator=();
          v173 = v145;
          TSUDecimal::operator-=();
        }

        v173 = __PAIR128__(v105, v106);
        TSUDecimal::operator/=();
        v165 = v173;
        v28 = v107;
        v149 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v146, &v165, v147, v148);
      }

      v93 = v149;
    }

    v41 = v93;
LABEL_66:
    v29 = v93;
    goto LABEL_67;
  }

  v161 = 0;
  v162 = v35;
  v159 = v23;
  v160 = 0;
  v156 = 0;
  v157 = 0;
  v40 = 0;
  specCopy = spec;
  v155 = v28;
  while (1)
  {
    v41 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v36, v40, v166, v39);
    if (objc_msgSend_isError(v41, v42, v43, v44, v45))
    {
      *error = objc_msgSend_errorWithContext_(v41, v46, v163, v48, v49);
      v93 = objc_msgSend_zero(TSCENumberValue, v109, v110, v111, v112);
      goto LABEL_66;
    }

    if ((objc_msgSend_isNil(v41, v46, v47, v48, v49) & 1) == 0)
    {
      break;
    }

LABEL_35:

    if (v162 == ++v40)
    {
      LOBYTE(v35) = v157 & v156;
      goto LABEL_38;
    }
  }

  if (objc_msgSend_deepType_(v41, v50, v163, v51, v52) == 3)
  {
    if (v159 != 3)
    {
      v124 = objc_msgSend_functionName(spec, v53, v54, v55, v56);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v125, v124, v126, v127);

      v93 = objc_msgSend_zero(TSCENumberValue, v128, v129, v130, v131);
      goto LABEL_66;
    }

    v61 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v41, v53, v163, spec, 0, error);
    if (*error)
    {
      goto LABEL_56;
    }

    objc_msgSend_mapDateToDouble_(TSCECalendar, v57, v61, v59, v60);
    TSUDecimal::operator=();
    v65 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v62, &v173, v63, v64);

    if (!v65)
    {
      goto LABEL_34;
    }

LABEL_19:
    if ((objc_msgSend_dimensionsMatchModuloCurrency_(v65, v57, v28, v59, v60) & 1) == 0)
    {
      v113 = objc_msgSend_functionName(spec, v67, v68, v69, v70);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v114, v113, v115, v116);

      v121 = objc_msgSend_zero(TSCENumberValue, v117, v118, v119, v120);
LABEL_52:
      v29 = v121;

      goto LABEL_67;
    }

    if (!(v160 & 1 | ((objc_msgSend_eq_outError_(v28, v67, v65, error, v70) & 1) == 0)))
    {
      v160 = 1;
      goto LABEL_33;
    }

    if (objc_msgSend_lt_(v65, v71, v28, v73, v74))
    {
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      if (v157)
      {
        v78 = valueCopy;
        v79 = vectorCopy;
        v80 = rankCopy;
        v157 = 1;
        v81 = v161;
        v82 = v164;
        v83 = v65;
        if ((objc_msgSend_lt_(v161, v75, v65, v76, v77) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v78 = valueCopy;
        v79 = vectorCopy;
        v80 = rankCopy;
        v157 = 1;
        v81 = v161;
        v82 = v164;
        v83 = v65;
      }
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      if (v156)
      {
        v78 = valueCopy;
        v79 = vectorCopy;
        v80 = rankCopy;
        v156 = 1;
        v81 = v164;
        v82 = v65;
        v83 = v161;
        if ((objc_msgSend_gt_(v164, v84, v65, v85, v86) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v78 = valueCopy;
        v79 = vectorCopy;
        v80 = rankCopy;
        v156 = 1;
        v81 = v164;
        v82 = v65;
        v83 = v161;
      }
    }

    v87 = v65;

    v164 = v82;
    v161 = v83;
LABEL_32:
    rankCopy = v80;
    vectorCopy = v79;
    valueCopy = v78;
    spec = specCopy;
    v28 = v155;
LABEL_33:
    if (*error)
    {
      v121 = objc_msgSend_zero(TSCENumberValue, v71, v72, v73, v74);
      goto LABEL_52;
    }

LABEL_34:

    goto LABEL_35;
  }

  v66 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v41, v53, v163, spec, 0, error);
  v61 = v66;
  if (!*error)
  {
    if (v159 == 3)
    {
      v132 = objc_msgSend_functionName(spec, v57, v58, v59, v60);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v133, v132, v134, v135);

      v140 = objc_msgSend_zero(TSCENumberValue, v136, v137, v138, v139);
      goto LABEL_57;
    }

    v65 = v66;
    if (!v66)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

LABEL_56:
  v140 = objc_msgSend_zero(TSCENumberValue, v57, v58, v59, v60);
LABEL_57:
  v29 = v140;

LABEL_67:
  v30 = v161;
LABEL_68:

  return v29;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v81 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 0, &v81);
  v11 = v81;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13, v14);
    goto LABEL_22;
  }

  v17 = *(*arguments + 8);
  v80[1] = 0;
  v75 = v17;
  v19 = objc_msgSend_computePercentRank_functionSpec_vector_xValue_isExclusive_outError_(TSCEFunction_PERCENTRANK, v18, context, spec, v10);
  v20 = 0;
  if (!v20)
  {
    TSUDecimal::operator=();
    v27 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v24, &v77, v25, v26);
    if (*(arguments + 1) - *arguments >= 0x11uLL)
    {
      v28 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v28, v29, v30, v31, v32) & 1) == 0 && objc_msgSend_nativeType(v28, v33, v34, v35, v36) != 10)
      {
        v80[0] = 0;
        v38 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v37, context, spec, 2, v80);
        v15 = v80[0];
        v74 = objc_msgSend_floor(v38, v39, v40, v41, v42);

        if (v15)
        {
          v46 = objc_msgSend_raiseErrorOrConvert_(context, v43, v15, v44, v45);
LABEL_20:
          v16 = v46;

          goto LABEL_21;
        }

        v27 = v74;
      }
    }

    v74 = v27;
    TSUDecimal::operator=();
    v50 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v47, &v77, v48, v49);
    v79 = 0;
    v28 = objc_msgSend_power_outError_(v50, v51, v27, &v79, v52);
    v53 = v79;

    if (objc_msgSend_isFinite(v28, v54, v55, v56, v57))
    {
      v61 = objc_msgSend_multiply_context_(v19, v58, v28, context, v60, v74);
      v66 = objc_msgSend_round(v61, v62, v63, v64, v65);
      v78 = v53;
      v69 = objc_msgSend_divide_outError_(v66, v67, v28, &v78, v68);
      v15 = v78;

      v19 = v69;
      if (!v15)
      {
LABEL_14:
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v58, context, v59, v60);
        }

        else
        {
          memset(&v76, 0, sizeof(v76));
        }

        TSCEFormat::TSCEFormat(&v77, &v76);
        objc_msgSend_setFormat_(v19, v70, &v77, v71, v72);
        v46 = v19;
        v19 = v46;
        goto LABEL_20;
      }
    }

    else
    {
      v15 = v53;
      if (!v53)
      {
        goto LABEL_14;
      }
    }

    v46 = objc_msgSend_raiseErrorOrConvert_(context, v58, v15, v59, v60, v74);
    goto LABEL_20;
  }

  v15 = v20;
  v16 = objc_msgSend_raiseErrorOrConvert_(context, v21, v20, v22, v23);
LABEL_21:

LABEL_22:

  return v16;
}

@end