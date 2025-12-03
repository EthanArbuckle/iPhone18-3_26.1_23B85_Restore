@interface TSCEFunction_MEDIAN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)evaluateVector:(id)vector context:(id)context functionSpec:(id)spec;
@end

@implementation TSCEFunction_MEDIAN

+ (id)evaluateVector:(id)vector context:(id)context functionSpec:(id)spec
{
  v138 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = objc_autoreleasePoolPush();
  v120 = objc_msgSend_deepResolveInPlace_(vector, v9, contextCopy, v10, v11);
  v16 = objc_msgSend_gridValue(v120, v12, v13, v14, v15);
  v133 = 0;
  v121 = objc_msgSend_createFromGridValue_functionSpec_argumentIndex_evaluationContext_ignoreError_ignoreDuplicates_outError_(TSCETaggedDecimalListObject, v17, v16, spec, 0, contextCopy, 0, 0, &v133);
  v22 = v133;
  if (v22)
  {
    v23 = v8;
    v24 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v18, v22, v20, v21);
LABEL_3:
    v25 = 0;
    v26 = 0;
LABEL_4:

    goto LABEL_5;
  }

  if (v121)
  {
    v28 = objc_msgSend_taggedDecimalList(v121, v18, v19, v20, v21);
    v33 = v28;
    v24 = v28[4];
    if (!v24)
    {
      v22 = objc_msgSend_functionName(spec, v29, v30, v31, v32);
      v65 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v63, v22, 8, v64);
      v23 = v8;
      v24 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v66, v65, v67, v68);

      goto LABEL_3;
    }

    v23 = v8;
    sub_221402924(v28, (v24 - 1) >> 1, &v136);
    v34 = contextCopy;
    v127[0] = v34;
    v127[1] = spec;
    v128 = 0;
    v129[0] = 0;
    *(v129 + 7) = 0;
    v130 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v131 = 0;
    v132 = 0;
    v26 = objc_msgSend_valueAtIndex_accessContext_(v16, v35, v137, v127, v36);
    if (objc_msgSend_isError(v26, v37, v38, v39, v40))
    {
      v44 = objc_msgSend_errorWithContext_(v26, v41, v34, v42, v43);
      v24 = objc_msgSend_raiseErrorOrConvert_(v34, v45, v44, v46, v47);

      v25 = 0;
      v22 = 0;
LABEL_31:

      goto LABEL_4;
    }

    if (v24)
    {
      v22 = 0;
      v25 = 1;
      goto LABEL_31;
    }

    sub_221402924(v33, ((v24 - 1) >> 1) + 1, &v134);
    v24 = v34;
    if (objc_msgSend_deepType_(v26, v69, v34, v70, v71) == 3)
    {
      v74 = objc_msgSend_valueAtIndex_accessContext_(v16, v72, v135, v127, v73);
      if (objc_msgSend_isError(v74, v75, v76, v77, v78))
      {
        v82 = objc_msgSend_errorWithContext_(v74, v79, v34, v80, v81);
        v24 = objc_msgSend_raiseErrorOrConvert_(v34, v83, v82, v84, v85);

        v22 = 0;
LABEL_25:
        v25 = 0;
        goto LABEL_31;
      }

      v126 = 0;
      v95 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v79, v34, spec, 0, &v126);
      v96 = v126;
      v125 = v96;
      v119 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v74, v97, v24, spec, 0, &v125);
      v22 = v125;

      if (v22)
      {
        v24 = objc_msgSend_raiseErrorOrConvert_(v24, v98, v22, v100, v101);

        goto LABEL_25;
      }

      objc_msgSend_timeIntervalSinceReferenceDate(v95, v98, v99, v100, v101);
      v103 = v102;
      objc_msgSend_timeIntervalSinceReferenceDate(v119, v104, v105, v106, v107);
      v109 = v108;
      v110 = objc_alloc(MEMORY[0x277CBEAA8]);
      v118 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v110, v111, v112, v113, v114, (v103 + v109) * 0.5);
      if (v26)
      {
        objc_msgSend_formatWithContext_(v26, v115, v24, v116, v117);
      }

      else
      {
        memset(v124, 0, sizeof(v124));
      }

      v91 = objc_msgSend_dateValue_format_(TSCEDateValue, v115, v118, v124, v117);
    }

    else
    {
      v124[0] = v136;
      TSUDecimal::operator+=();
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      v123 = v124[0];
      v122 = 0;
      v87 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v86, v34, spec, 0, &v122);
      v22 = v122;
      v91 = objc_msgSend_numberWithDecimal_(v87, v88, &v123, v89, v90);

      if (v22)
      {
        v24 = objc_msgSend_raiseErrorOrConvert_(v34, v92, v22, v93, v94);
        v26 = v91;
        goto LABEL_25;
      }
    }

    v22 = 0;
    v25 = 1;
    v26 = v91;
    goto LABEL_31;
  }

  v23 = v8;
  v48 = MEMORY[0x277D81150];
  v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "+[TSCEFunction_MEDIAN evaluateVector:context:functionSpec:]", v20, v21);
  v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v51, v52);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 3909, 0, "Out of memory");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
  v24 = objc_msgSend_nilValue(TSCENilValue, v59, v60, v61, v62);
  v25 = 0;
  v26 = 0;
LABEL_5:

  objc_autoreleasePoolPop(v23);
  if (v25)
  {
    v24 = v26;
  }

  return v24;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v16 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, &v16);
  v13 = v16;
  if (v13)
  {
    objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v11, v12);
  }

  else
  {
    objc_msgSend_evaluateVector_context_functionSpec_(self, v10, v9, context, spec);
  }
  v14 = ;

  return v14;
}

@end