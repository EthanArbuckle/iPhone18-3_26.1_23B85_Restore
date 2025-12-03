@interface TSCEFunction_RANK
+ (double)computeRankWithVector:(id)vector functionSpec:(id)spec vector:(id)a5 numberToRankValue:(id)value rankDescending:(BOOL)descending returnAverage:(BOOL)average outError:(id *)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RANK

+ (double)computeRankWithVector:(id)vector functionSpec:(id)spec vector:(id)a5 numberToRankValue:(id)value rankDescending:(BOOL)descending returnAverage:(BOOL)average outError:(id *)error
{
  averageCopy = average;
  descendingCopy = descending;
  vectorCopy = vector;
  v14 = a5;
  valueCopy = value;
  __key[0] = 0.0;
  v129 = objc_msgSend_zero(TSCENumberValue, v16, v17, v18, v19);
  v24 = objc_msgSend_deepType_(valueCopy, v20, vectorCopy, v21, v22);
  if (v24 == 3)
  {
    v25 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(valueCopy, v23, vectorCopy, spec, 0, error);
    objc_msgSend_mapDateToDouble_(TSCECalendar, v26, v25, v27, v28);
    __key[0] = v29;
  }

  else
  {
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(valueCopy, v23, vectorCopy, spec, 0, error);

    objc_msgSend_doubleRepresentation(v32, v33, v34, v35, v36);
    __key[0] = v37;
    v129 = v32;
  }

  if (*error)
  {
    goto LABEL_7;
  }

  if (objc_msgSend_deepType_outError_(v14, v30, vectorCopy, error, v31) == 10)
  {
    *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v38, v14, vectorCopy, spec, 1);
LABEL_7:
    v42 = NAN;
    goto LABEL_8;
  }

  v128 = v14;
  v44 = objc_msgSend_count(v14, v38, v39, v40, v41);
  v45 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
  v124 = malloc_type_malloc(8 * v44, 0x100004000313F17uLL);
  v42 = NAN;
  v125 = v45;
  if (!v45 || !v124)
  {
    v70 = v45;
    goto LABEL_74;
  }

  v123 = descendingCopy;
  v48 = vectorCopy;
  v130[0] = v48;
  v130[1] = spec;
  v131 = 0;
  v132[0] = 1;
  *(v132 + 7) = 0;
  v133 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v134 = 0;
  v135 = 0;
  if (!v44)
  {
    v70 = v45;
    if (*error)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v49 = 0;
  v126 = 0;
  while (1)
  {
    v50 = objc_msgSend_valueAtIndex_accessContext_(v128, v46, v49, v130, v47);
    v54 = objc_msgSend_deepType_(v50, v51, v48, v52, v53);
    if (objc_msgSend_valueIsEmptyWithContext_(v50, v55, v48, v56, v57))
    {
      goto LABEL_24;
    }

    if (v54 == 5)
    {
      break;
    }

    if (v54 == 3)
    {
      v62 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v50, v58, v48, spec, 1, error);
      if (*error)
      {
        goto LABEL_28;
      }

      objc_msgSend_mapDateToDouble_(TSCECalendar, v59, v62, v60, v61);
      if (v24 != 3)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_24:

    if (v44 == ++v49)
    {
      goto LABEL_30;
    }
  }

  v62 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v50, v58, v48, spec, 1, error);
  if (*error)
  {
LABEL_28:

    v14 = v128;
    v70 = v125;
    goto LABEL_54;
  }

  if (v24 != 3 && (objc_msgSend_dimensionsMatchModuloCurrency_(v129, v63, v62, v65, v66) & 1) != 0)
  {
    objc_msgSend_doubleRepresentation(v62, v63, v64, v65, v66);
LABEL_23:
    v68 = v67;

    v125[v126++] = v68;
    goto LABEL_24;
  }

LABEL_29:
  v71 = objc_msgSend_functionName(spec, v63, v64, v65, v66);
  *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v72, v71, v73, v74);

LABEL_30:
  v70 = v125;
  if (*error)
  {
LABEL_31:
    v42 = NAN;
    v14 = v128;
    goto LABEL_57;
  }

  v14 = v128;
  if (!v126)
  {
LABEL_53:
    v50 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(valueCopy, v46, v48, spec, 0, error);
    if (*error)
    {
LABEL_54:

      v42 = NAN;
      goto LABEL_74;
    }

    v94 = objc_msgSend_functionName(spec, v90, v91, v92, v93);
    *error = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v95, v50, 0, v94);

LABEL_56:
    v42 = NAN;
    goto LABEL_57;
  }

  sub_2216B20E4(v125, v124, v126, v69);
  v75 = bsearch(__key, v124, v126, 8uLL, sub_2216C8EA4);
  if (!v75)
  {
    v96 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v76, v77, v78, v79);
    v101 = objc_msgSend_dictionaryRepresentation(v96, v97, v98, v99, v100);

    v106 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v102, v103, v104, v105, __key[0]);
    v110 = objc_msgSend_descriptionWithLocale_(v106, v107, v101, v108, v109);

    v115 = objc_msgSend_functionName(spec, v111, v112, v113, v114);
    *error = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v116, v110, 0, v115);

    goto LABEL_31;
  }

  v80 = (v75 - v124) >> 3;
  if (averageCopy)
  {
    if (v123)
    {
      v81 = v126 - v80;
    }

    else
    {
      v81 = v80 + 1;
    }

    v82 = v81;
    v83 = 1.0;
    if (v126 > v80 + 1)
    {
      v84 = ~v80 + v126;
      v85 = v80 + 2;
      v86 = &v124[v80 + 1];
      do
      {
        if (__key[0] < *v86)
        {
          break;
        }

        v87 = v123 ? v84 : v85;
        v82 = v82 + v87;
        v83 = v83 + 1.0;
        ++v85;
        ++v86;
        --v84;
      }

      while (v84);
    }

    if (v80 >= 1)
    {
      v88 = v126 - v80 + 1;
      do
      {
        if (__key[0] > *&v124[v80 - 1])
        {
          break;
        }

        v89 = v123 ? v88 : v80--;
        v82 = v82 + v89;
        v83 = v83 + 1.0;
        ++v88;
      }

      while ((v80 + 1) > 1);
    }

    v42 = v82 / v83;
  }

  else if (v123)
  {
    if (v126 <= v80 + 1)
    {
      v117 = v80 + 1;
    }

    else
    {
      v117 = v126;
    }

    while (1)
    {
      v118 = v80 + 1;
      if (v126 <= v80 + 1)
      {
        break;
      }

      v119 = *&v124[++v80];
      if (__key[0] < v119)
      {
        goto LABEL_72;
      }
    }

    v118 = v117;
LABEL_72:
    v42 = (v126 - v118);
  }

  else
  {
    v120 = ((v75 - v124) >> 3) & ((v75 - v124) >> 63);
    while (1)
    {
      v121 = v80 - 1;
      if (v80 < 1)
      {
        break;
      }

      v122 = *&v124[--v80];
      if (__key[0] > v122)
      {
        v120 = v121 + 1;
        break;
      }
    }

    v42 = v120;
  }

LABEL_57:

LABEL_74:
  free(v70);
  free(v124);
LABEL_8:

  return v42;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v49 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 1, 1, &v49);
  v12 = v49;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14, v15);
LABEL_9:
    v29 = v17;
    goto LABEL_10;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    goto LABEL_6;
  }

  v18 = *(*arguments + 16);
  if (objc_msgSend_isTokenOrEmptyArg(v18, v19, v20, v21, v22))
  {

LABEL_6:
    v24 = 1;
    goto LABEL_7;
  }

  v48 = 0;
  v34 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v23, context, spec, 2, &v48);
  v16 = v48;
  if (!v16)
  {
    v39 = objc_msgSend_zero(TSCENumberValue, v35, v36, v37, v38);
    v47 = 0;
    v24 = objc_msgSend_eq_outError_(v34, v40, v39, &v47, v41);
    v16 = v47;

    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v16, v42, v43);
      goto LABEL_9;
    }

LABEL_7:
    v46 = 0;
    objc_msgSend_computeRankWithVector_functionSpec_vector_numberToRankValue_rankDescending_returnAverage_outError_(TSCEFunction_RANK, v13, context, spec, v11, v8, v24, 0, &v46);
    v25 = v46;
    if (!v25)
    {
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v31, context, v32, v33);
      }

      else
      {
        memset(v44, 0, sizeof(v44));
      }

      v29 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v31, v45, v44, v33);
      v16 = 0;
      goto LABEL_10;
    }

    v16 = v25;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v27, v28);
    goto LABEL_9;
  }

  v29 = objc_msgSend_raiseErrorOrConvert_(context, v35, v16, v37, v38);

LABEL_10:

  return v29;
}

@end