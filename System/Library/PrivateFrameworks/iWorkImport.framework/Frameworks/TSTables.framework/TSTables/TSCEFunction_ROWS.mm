@interface TSCEFunction_ROWS
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_ROWS

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = *a5;
  if (*(a5 + 1) - *a5 < 9uLL)
  {
    v18 = 0;
  }

  else
  {
    v9 = v7[1];
    if ((objc_msgSend_isTokenOrEmptyArg(v9, v10, v11, v12, v13) & 1) != 0 || objc_msgSend_deepType_(v9, v14, a3, v15, v16) == 10)
    {
      v18 = 0;
    }

    else
    {
      v152 = 0;
      v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v17, a3, a4, 1, &v152);
      v32 = v152;
      if (v32)
      {
        v43 = objc_msgSend_raiseErrorOrConvert_(a3, v44, v32, v46, v47);
        goto LABEL_43;
      }

      v18 = objc_msgSend_integer(v27, v44, v45, v46, v47) == 1;
    }

    v7 = *a5;
  }

  v9 = *v7;
  v23 = objc_msgSend_nativeType(v9, v19, v20, v21, v22);
  if (v23 == 9)
  {
    v27 = objc_msgSend_errorWithContext_(v9, v24, a3, v25, v26);
    if (v27)
    {
      v37 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v27, v35, v36);
      v32 = 0;
      goto LABEL_44;
    }

    v32 = 0;
    goto LABEL_42;
  }

  if (v23 == 6)
  {
    v151 = 0;
    v27 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v24, a3, a4, 0, &v151);
    v32 = v151;
    if (v27)
    {
      objc_msgSend_rangeRef(v27, v28, v29, v30, v31);
    }

    else
    {
      memset(&v150, 0, sizeof(v150));
    }

    v48 = objc_msgSend_calcEngine(a3, v28, v29, v30, v31);
    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v48, v49, &v150, v50, v51);

    if (IsWithinTable)
    {
      v57 = [TSCECellTractRef alloc];
      v62 = objc_msgSend_tractRef(v27, v58, v59, v60, v61);
      v66 = objc_msgSend_initWithCppCellTractRef_(v57, v63, v62, v64, v65);
      v71 = v66;
      if (v18)
      {
        v72 = objc_msgSend_calcEngine(a3, v67, v68, v69, v70);
        objc_msgSend_rowHeightInBodyOfTable_(v72, v73, v71, v74, v75);
      }

      else
      {
        if (!objc_msgSend_spansAllRows(v66, v67, v68, v69, v70))
        {
          objc_msgSend_numRows(v71, v86, v87, v88, v89);
LABEL_40:

          goto LABEL_41;
        }

        v90 = objc_msgSend_calcEngine(a3, v86, v87, v88, v89);
        v149[0] = objc_msgSend_tableUID(v71, v91, v92, v93, v94);
        v149[1] = v95;
        v72 = objc_msgSend_tableResolverForTableUID_(v90, v95, v149, v96, v97);

        if (v72)
        {
          objc_msgSend_tableRangeCoordinate(v72, v98, v99, v100, v101);
        }
      }

      goto LABEL_40;
    }

    v76 = objc_msgSend_invalidReferenceError(TSCEError, v53, v54, v55, v56);
    v80 = objc_msgSend_raiseErrorOrConvert_(a3, v77, v76, v78, v79);
    goto LABEL_22;
  }

  v148 = 0;
  v27 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v24, a3, a4, 0, 0, &v148);
  v38 = v148;
  if (!v38)
  {
    v81 = objc_msgSend_gridKind(v27, v39, v40, v41, v42);
    if (v81 == 2)
    {
      v147 = 0;
      v76 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v27, v82, a3, a4, 0, &v147);
      v32 = v147;
      if (v32)
      {
        v80 = objc_msgSend_raiseErrorOrConvert_(a3, v102, v32, v104, v105);
LABEL_22:
        v37 = v80;
LABEL_23:

        goto LABEL_44;
      }

      if (v76)
      {
        objc_msgSend_rangeRef(v76, v102, v103, v104, v105);
      }

      else
      {
        memset(&v150, 0, sizeof(v150));
      }

      v116 = objc_msgSend_calcEngine(a3, v102, v103, v104, v105);
      v120 = objc_msgSend_rangeIsWithinTable_(v116, v117, &v150, v118, v119);

      if (v120)
      {
        if (v18)
        {
          v125 = [TSCECellTractRef alloc];
          v130 = objc_msgSend_tractRef(v76, v126, v127, v128, v129);
          v134 = objc_msgSend_initWithCppCellTractRef_(v125, v131, v130, v132, v133);
          v139 = objc_msgSend_calcEngine(a3, v135, v136, v137, v138);
          objc_msgSend_rowHeightInBodyOfTable_(v139, v140, v134, v141, v142);
        }

        else
        {
          objc_msgSend_dimensions(v27, v121, v122, v123, v124);
        }

        v32 = 0;
        goto LABEL_41;
      }

      v143 = objc_msgSend_invalidReferenceError(TSCEError, v121, v122, v123, v124);
      v37 = objc_msgSend_raiseErrorOrConvert_(a3, v144, v143, v145, v146);
    }

    else
    {
      if (v81 != 1 || objc_msgSend_count(v27, v82, v83, v84, v85) == 1)
      {
        v32 = 0;
        objc_msgSend_dimensions(v27, v82, v83, v84, v85);
LABEL_41:

LABEL_42:
        v109 = MEMORY[0x277D80680];
        v110 = objc_msgSend_locale(a3, v33, v34, v35, v36);
        v27 = objc_msgSend_defaultFormatWithFormatType_locale_(v109, v111, 256, v110, v112);

        TSUDecimal::operator=();
        TSCEFormat::TSCEFormat(&v150, v27, 0);
        v43 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v113, v149, &v150, v114);
        goto LABEL_43;
      }

      v76 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v82, v83, v84, v85);
      v37 = objc_msgSend_raiseErrorOrConvert_(a3, v106, v76, v107, v108);
    }

    v32 = 0;
    goto LABEL_23;
  }

  v32 = v38;
  v43 = objc_msgSend_raiseErrorOrConvert_(a3, v39, v38, v41, v42);
LABEL_43:
  v37 = v43;
LABEL_44:

  return v37;
}

@end