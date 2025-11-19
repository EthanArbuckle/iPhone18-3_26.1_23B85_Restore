@interface TSCEFunction_GETPIVOTDATA
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_GETPIVOTDATA

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = objc_msgSend_calcEngine(a3, a2, a3, a4, a5);
  v9 = *(*a5 + 8);
  if (!objc_msgSend_isReferenceValue(v9, v10, v11, v12, v13))
  {
    v26 = 0;
LABEL_11:
    v110 = objc_msgSend_functionName(a4, v14, v15, v16, v17);
    v111 = objc_msgSend_missingPivotTableErrorForFunctionName_argumentNumber_(TSCEError, v39, v110, 2, v40);
    v44 = objc_msgSend_raiseErrorOrConvert_(a3, v41, v111, v42, v43);
LABEL_12:
    v45 = v44;
    v46 = 0;
LABEL_13:
    v47 = 0;
    goto LABEL_14;
  }

  v18 = objc_msgSend_asReferenceValue(v9, v14, v15, v16, v17);
  v114[0] = objc_msgSend_tableUID(v18, v19, v20, v21, v22);
  v114[1] = v23;
  v26 = objc_msgSend_tableResolverForTableUID_(v8, v23, v114, v24, v25);

  if (!v26 || (objc_msgSend_isPivotTable(v26, v14, v15, v16, v17) & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = *(a5 + 1) - *a5;
  v28 = v27 >> 3;
  if ((v27 >> 3) >= 3)
  {
    v29 = (v27 >> 3) & 0x7FFFFFFF;
    while (1)
    {
      v30 = *(*a5 + 8 * v29 - 8);
      if ((objc_msgSend_isNil(v30, v31, v32, v33, v34) & 1) == 0 && (objc_msgSend_isTokenOrEmptyArg(v30, v35, v36, v37, v38) & 1) == 0)
      {
        break;
      }

      --v29;

      if ((v29 + 1) <= 3)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    LODWORD(v28) = v29;
  }

  if (v28)
  {
    v110 = objc_msgSend_functionName(a4, v14, v15, v16, v17);
    v111 = objc_msgSend_invalidArgumentPairingsErrorForFunctionName_hasInitialUnrelatedArgument_(TSCEError, v55, v110, 0, v56);
    v44 = objc_msgSend_raiseErrorOrConvert_(a3, v57, v111, v58, v59);
    goto LABEL_12;
  }

  v49 = **a5;
  v113 = 0;
  v110 = v49;
  v111 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v49, v50, a3, a4, 0, &v113);
  v51 = v113;
  if (v51)
  {
    v46 = v51;
    v45 = objc_msgSend_raiseErrorOrConvert_(a3, v52, v51, v53, v54);
    goto LABEL_13;
  }

  v105 = v26;
  v106 = v9;
  v107 = v8;
  v109 = objc_opt_new();
  objc_msgSend_setAggregateFieldName_(v109, v60, v111, v61, v62);
  if (v28 >> 1 < 2)
  {
LABEL_29:
    v26 = v105;
    v47 = objc_msgSend_solveGetPivotData_functionSpec_context_(v105, v63, v109, a4, a3);
    v9 = v106;
    v8 = v107;
    if (objc_msgSend_isError(v47, v84, v85, v86, v87) && (MissingDataField = objc_msgSend_firstMissingDataField(v109, v88, v89, v90, v91), v97 = MissingDataField, MissingDataField != 0x7FFFFFFFFFFFFFFFLL))
    {
      v98 = objc_msgSend_functionName(a4, v93, v94, v95, v96);
      v101 = objc_msgSend_invalidGroupingColumnErrorForFunctionName_argumentNumber_(TSCEError, v99, v98, (2 * v97 + 3), v100);
      v45 = objc_msgSend_raiseErrorOrConvert_(a3, v102, v101, v103, v104);

      v46 = 0;
    }

    else
    {
      v47 = v47;
      v46 = 0;
      v45 = v47;
    }
  }

  else
  {
    v64 = 0;
    v108 = 2 * (v28 >> 1) - 2;
    while (1)
    {
      v65 = *(*a5 + 8 * v64 + 16);
      v112 = 0;
      v67 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v65, v66, a3, a4, (v64 + 2), &v112);
      v46 = v112;
      if (v46)
      {
        break;
      }

      v71 = *(*a5 + 8 * v64 + 24);
      if (objc_msgSend_isReferenceValue(v71, v72, v73, v74, v75))
      {
        v80 = objc_msgSend_asReferenceValue(v71, v76, v77, v78, v79);
        v83 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v80, v81, a3, 0, v82);

        v71 = v83;
      }

      objc_msgSend_addDataField_withValue_(v109, v76, v67, v71, v79);

      v64 += 2;
      if (v108 == v64)
      {
        goto LABEL_29;
      }
    }

    v45 = objc_msgSend_raiseErrorOrConvert_(a3, v68, v46, v69, v70);

    v47 = 0;
    v9 = v106;
    v8 = v107;
    v26 = v105;
  }

LABEL_14:

  return v45;
}

@end