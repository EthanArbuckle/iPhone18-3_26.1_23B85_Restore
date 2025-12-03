@interface TSCEFunction_MAXIFS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)extremumIfs:(id)ifs functionSpec:(id)spec maxVector:(id)vector criteria:(id)criteria isMax:(BOOL)max;
@end

@implementation TSCEFunction_MAXIFS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v26 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, context, spec, 0, 1, &v26);
  v11 = v26;
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14, v15);
  }

  else
  {
    v18 = objc_msgSend_dimensions(v10, v12, v13, v14, v15);
    v25 = 0;
    v20 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v19, context, spec, arguments, v18, 1, 0, &v25);
    v16 = v25;
    if (v16)
    {
      objc_msgSend_raiseErrorOrConvert_(context, v21, v16, v22, v23);
    }

    else
    {
      objc_msgSend_extremumIfs_functionSpec_maxVector_criteria_isMax_(TSCEFunction_MAXIFS, v21, context, spec, v10, v20, 1);
    }
    v17 = ;
  }

  return v17;
}

+ (id)extremumIfs:(id)ifs functionSpec:(id)spec maxVector:(id)vector criteria:(id)criteria isMax:(BOOL)max
{
  maxCopy = max;
  ifsCopy = ifs;
  vectorCopy = vector;
  criteriaCopy = criteria;
  if (objc_msgSend_gridKind(vectorCopy, v11, v12, v13, v14) == 2)
  {
    v151[0] = 0;
    v19 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(vectorCopy, v15, ifsCopy, spec, 0, v151);
    v20 = v151[0];
    v29 = objc_msgSend_calcEngine(ifsCopy, v21, v22, v23, v24);
    if (v19)
    {
      objc_msgSend_rangeRef(v19, v25, v26, v27, v28);
    }

    else
    {
      v145 = 0u;
      *v146 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v29, v25, &v145, v27, v28);

    if ((IsWithinTable & 1) == 0)
    {
      v103 = objc_msgSend_invalidReferenceError(TSCEError, v31, v32, v33, v34);
      v35 = objc_msgSend_raiseErrorOrConvert_(ifsCopy, v104, v103, v105, v106);

      goto LABEL_56;
    }

    if (v20)
    {
      v35 = objc_msgSend_raiseErrorOrConvert_(ifsCopy, v15, v20, v17, v18);
      goto LABEL_57;
    }
  }

  v36 = objc_msgSend_dimensions(vectorCopy, v15, v16, v17, v18);
  v37 = 0x27845C000uLL;
  v19 = objc_msgSend_sortCriteriaByCost_(TSCEGridValue, v38, criteriaCopy, v39, v40);
  v41 = ifsCopy;
  *&v145 = v41;
  *(&v145 + 1) = spec;
  *v146 = 0;
  *&v146[8] = 0;
  v146[12] = 1;
  *&v146[13] = 0;
  v147 = 0;
  v148 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v149 = 0;
  v150 = 0;
  v42 = 0x27845C000uLL;
  v138 = v19;
  v137 = objc_msgSend_zero(TSCENumberValue, v43, v44, v45, v46);
  v131 = HIDWORD(v36);
  if (!HIDWORD(v36))
  {
    goto LABEL_9;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = v36;
  v129 = ifsCopy;
  v130 = v36;
  while (1)
  {
    v132 = v52;
    v133 = v51;
    v56 = v55;
    v57 = v51;
    if (v55)
    {
      break;
    }

LABEL_42:
    v52 = v132 + 1;
    v51 = v133 + 0x100000000;
    v55 = v130;
    if (v132 + 1 == v131)
    {
      if (v53)
      {
        ifsCopy = v129;
        if (vectorCopy)
        {
          objc_msgSend_formatWithContext_(vectorCopy, v47, v41, v49, v50);
        }

        else
        {
          memset(v139, 0, sizeof(v139));
        }

        v35 = objc_msgSend_dateValue_format_(TSCEDateValue, v47, v53, v139, v50, v129);

        goto LABEL_10;
      }

      ifsCopy = v129;
      if (v54)
      {
        v35 = v137;
        v20 = 0;

        goto LABEL_55;
      }

      v42 = 0x27845C000;
LABEL_9:
      v35 = objc_msgSend_zero(*(v42 + 3432), v47, v48, v49, v50, v129);
LABEL_10:
      v20 = 0;
      goto LABEL_54;
    }
  }

  while (1)
  {
    v58 = *(v37 + 3360);
    v144 = 0;
    v59 = objc_msgSend_valueAtGridCoordPassesCriteria_coord_criteria_outError_(v58, v47, &v145, v57, v19, &v144, v129);
    v20 = v144;
    if (!v59)
    {
      goto LABEL_26;
    }

    v60 = vectorCopy;
    v61 = objc_msgSend_valueAtGridCoord_accessContext_(vectorCopy, v47, v57, &v145, v50);
    v65 = objc_msgSend_deepType_(v61, v62, v41, v63, v64);
    if ((objc_msgSend_isNil(v61, v66, v67, v68, v69) & 1) == 0)
    {
      break;
    }

LABEL_24:
    v88 = v53;
LABEL_25:

    v53 = v88;
    vectorCopy = v60;
    v19 = v138;
    v37 = 0x27845C000;
LABEL_26:
    if (v20)
    {
      ifsCopy = v129;
      v35 = objc_msgSend_raiseErrorOrConvert_(v41, v47, v20, v49, v50);

      goto LABEL_54;
    }

    ++v57;
    if (!--v56)
    {
      goto LABEL_42;
    }
  }

  if (v65 != 3)
  {
    if (v65 == 5)
    {
      if (v53)
      {
        goto LABEL_48;
      }

      v143 = v20;
      v74 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v61, v70, v41, spec, 0, &v143);
      v75 = v143;

      if (v75)
      {
        v35 = objc_msgSend_raiseErrorOrConvert_(v41, v76, v75, v78, v79);
        v53 = 0;
        goto LABEL_51;
      }

      if (v54)
      {
        if ((objc_msgSend_isNil(v74, v76, v77, v78, v79) & 1) == 0)
        {
          if ((objc_msgSend_dimensionsMatchModuloCurrency_(v74, v80, v137, v81, v82) & 1) == 0)
          {
            v120 = objc_msgSend_functionName(spec, v83, v84, v85, v86);
            v124 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v114, v120, v115, v116);
            v128 = objc_msgSend_raiseErrorOrConvert_(v41, v117, v124, v118, v119);
            goto LABEL_63;
          }

          if ((objc_msgSend_areCurrenciesMatched_(v74, v83, v137, v85, v86) & 1) == 0)
          {
            v120 = objc_msgSend_functionName(spec, v80, v87, v81, v82);
            v124 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v121, v120, v122, v123);
            v128 = objc_msgSend_raiseErrorOrConvert_(v41, v125, v124, v126, v127);
LABEL_63:
            v35 = v128;

            v53 = 0;
            goto LABEL_49;
          }
        }
      }

      else
      {
        v101 = v74;

        v137 = v101;
      }

      if (maxCopy)
      {
        objc_msgSend_max_(v137, v80, v74, v81, v82);
      }

      else
      {
        objc_msgSend_min_(v137, v80, v74, v81, v82);
      }
      v102 = ;

      v88 = 0;
      v20 = 0;
      v54 = 1;
      v137 = v102;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v54)
  {
LABEL_48:
    v74 = objc_msgSend_functionName(spec, v70, v71, v72, v73);
    v120 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v107, v74, v108, v109);
    v35 = objc_msgSend_raiseErrorOrConvert_(v41, v110, v120, v111, v112);
    v75 = v20;
LABEL_49:

LABEL_51:
    v88 = v53;
    goto LABEL_53;
  }

  if (!v53)
  {
    v142 = v20;
    v89 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v61, v70, v41, spec, 0, &v142);
    v90 = v142;

    v53 = v89;
    v20 = v90;
  }

  if (maxCopy)
  {
    v141 = v20;
    v91 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v61, v70, v41, spec, 0, &v141);
    v75 = v141;

    objc_msgSend_laterDate_(v53, v92, v91, v93, v94);
  }

  else
  {
    v140 = v20;
    v91 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v61, v70, v41, spec, 0, &v140);
    v75 = v140;

    objc_msgSend_earlierDate_(v53, v95, v91, v96, v97);
  }
  v88 = ;

  if (!v75)
  {
    v54 = 0;
    v20 = 0;
    goto LABEL_25;
  }

  v35 = objc_msgSend_raiseErrorOrConvert_(v41, v98, v75, v99, v100);
LABEL_53:

  v20 = v75;
  ifsCopy = v129;
  vectorCopy = v60;
  v19 = v138;
LABEL_54:

LABEL_55:
LABEL_56:

LABEL_57:

  return v35;
}

@end