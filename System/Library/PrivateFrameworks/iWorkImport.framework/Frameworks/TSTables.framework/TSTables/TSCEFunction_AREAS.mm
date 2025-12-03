@interface TSCEFunction_AREAS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AREAS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v137[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, v137);
  v10 = v137[0];
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13, v14);
    goto LABEL_43;
  }

  v129 = v7;
  v17 = objc_msgSend_gridKind(v9, v11, v12, v13, v14);
  if (v17 == 2)
  {
    v130 = 0;
    v75 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v18, context, spec, 0, &v130);
    v15 = v130;
    if (v15)
    {
      v80 = objc_msgSend_raiseErrorOrConvert_(context, v76, v15, v78, v79);
LABEL_34:
      v16 = v80;
LABEL_35:

      goto LABEL_42;
    }

    v96 = objc_msgSend_calcEngine(context, v76, v77, v78, v79);
    if (v75)
    {
      objc_msgSend_rangeRef(v75, v92, v93, v94, v95);
    }

    else
    {
      memset(v133, 0, 32);
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v96, v92, v133, v94, v95);

    if ((IsWithinTable & 1) == 0)
    {
      v114 = objc_msgSend_invalidReferenceError(TSCEError, v101, v102, v103, v104);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v115, v114, v116, v117);

      goto LABEL_35;
    }

    v133[0] = context;
    v133[1] = spec;
    v133[2] = 0;
    v133[3] = 0;
    *(&v133[3] + 7) = 0;
    v134 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v135 = 0;
    v136 = 0;
    v107 = objc_msgSend_valueAtGridCoord_accessContext_(v9, v105, 0, v133, v106);

    v15 = 0;
LABEL_33:
    v108 = MEMORY[0x277D80680];
    v109 = objc_msgSend_locale(context, v88, v89, v90, v91);
    v75 = objc_msgSend_defaultFormatWithFormatType_locale_(v108, v110, 256, v109, v111);

    TSUDecimal::operator=();
    TSCEFormat::TSCEFormat(v133, v75, 0);
    v80 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v112, v131, v133, v113);
    goto LABEL_34;
  }

  if (v17 != 1)
  {
    v81 = objc_msgSend_functionName(spec, v18, v19, v20, v21);
    v84 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v82, v81, 1, v83);
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v85, v84, v86, v87);

    v15 = 0;
    goto LABEL_42;
  }

  v15 = objc_msgSend_count(v9, v18, v19, v20, v21);
  v22 = v15;
  contextCopy = context;
  v133[0] = contextCopy;
  v133[1] = spec;
  v133[2] = 0;
  v133[3] = 0;
  *(&v133[3] + 7) = 0;
  v134 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v135 = 0;
  v136 = 0;
  if (!v15)
  {
    v74 = 0;
LABEL_26:

    goto LABEL_33;
  }

  v26 = contextCopy;
  v27 = 0;
  v15 = 0;
  while (1)
  {
    v28 = objc_msgSend_valueAtIndex_accessContext_(v9, v24, v27, v133, v25);

    if (objc_msgSend_isError(v28, v29, v30, v31, v32))
    {
      v45 = objc_msgSend_errorWithContext_(v28, v33, v26, v35, v36);
      v16 = objc_msgSend_raiseErrorOrConvert_(v26, v97, v45, v98, v99);
      v15 = 0;
LABEL_40:

      goto LABEL_41;
    }

    if ((objc_msgSend_isNil(v28, v33, v34, v35, v36) & 1) == 0)
    {
      break;
    }

    v15 = 0;
LABEL_20:

    if (++v27 >= v22)
    {
      v74 = v133[2];
      goto LABEL_26;
    }
  }

  if (objc_msgSend_nativeType(v28, v37, v38, v39, v40) != 6)
  {
    v45 = objc_msgSend_functionName(spec, v41, v42, v43, v44);
    v121 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v118, v45, v119, v120);
    v16 = objc_msgSend_raiseErrorOrConvert_(v26, v122, v121, v123, v124);
    v15 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v132 = 0;
  v45 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v28, v41, v26, spec, 0, &v132);
  v15 = v132;
  v54 = objc_msgSend_calcEngine(v26, v46, v47, v48, v49);
  if (v45)
  {
    objc_msgSend_rangeRef(v45, v50, v51, v52, v53);
  }

  else
  {
    memset(v131, 0, sizeof(v131));
  }

  v55 = objc_msgSend_rangeIsWithinTable_(v54, v50, v131, v52, v53);

  if ((v55 & 1) == 0)
  {
    v121 = objc_msgSend_invalidReferenceError(TSCEError, v56, v57, v58, v59);
    v16 = objc_msgSend_raiseErrorOrConvert_(v26, v125, v121, v126, v127);
    goto LABEL_39;
  }

  if ((objc_msgSend_isNil(v45, v56, v57, v58, v59) & 1) == 0)
  {
    v62 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v45, v60, v26, 0, v61);
  }

  if (!v15 || (objc_msgSend_isInvalidMergeReference(v15, v63, v64, v65, v66) & 1) != 0 || (objc_msgSend_isInvalidRangeUsageError(v15, v67, v68, v69, v70) & 1) != 0)
  {
    goto LABEL_20;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(v26, v71, v15, v72, v73);
LABEL_41:

LABEL_42:
  v7 = v129;
LABEL_43:

  return v16;
}

@end