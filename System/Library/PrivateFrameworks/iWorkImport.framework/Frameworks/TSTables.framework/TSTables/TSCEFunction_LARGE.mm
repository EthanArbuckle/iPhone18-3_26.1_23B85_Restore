@interface TSCEFunction_LARGE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments isLarge:(BOOL)large ignoreError:(BOOL)error ignoreDuplicate:(BOOL)duplicate;
@end

@implementation TSCEFunction_LARGE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments isLarge:(BOOL)large ignoreError:(BOOL)error ignoreDuplicate:(BOOL)duplicate
{
  duplicateCopy = duplicate;
  errorCopy = error;
  largeCopy = large;
  v102 = *MEMORY[0x277D85DE8];
  v14 = *(*arguments + 8);
  v93 = 0;
  v16 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v14, v15, context, spec, 1, &v93);
  v17 = v93;
  objc_msgSend_doubleRepresentation(v16, v18, v19, v20, v21);
  v23 = v22;

  if (v17)
  {
    v28 = objc_msgSend_raiseErrorOrConvert_(context, v24, v17, v26, v27);
    goto LABEL_15;
  }

  if (v23 >= 1.0 || (v23 = 1.0, errorCopy))
  {
    v35 = **arguments;
    v92 = 0;
    v29 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v35, v24, context, spec, 0, 1, &v92);
    v36 = v92;
    if (v36)
    {
      v17 = v36;
      v40 = objc_msgSend_raiseErrorOrConvert_(context, v37, v36, v38, v39);
      goto LABEL_13;
    }

    context = objc_autoreleasePoolPush();
    v90 = objc_msgSend_deepResolveInPlace_(v29, v41, context, v42, v43);
    v48 = objc_msgSend_gridValue(v90, v44, v45, v46, v47);
    v91 = 0;
    v50 = objc_msgSend_createFromGridValue_functionSpec_argumentIndex_evaluationContext_ignoreError_ignoreDuplicates_outError_(TSCETaggedDecimalListObject, v49, v48, spec, 0, context, errorCopy, duplicateCopy, &v91);
    v17 = v91;
    v89 = v50;
    if (v17)
    {
      v28 = objc_msgSend_raiseErrorOrConvert_(context, v51, v17, v53, v54);
    }

    else
    {
      if (!v50)
      {
        v73 = MEMORY[0x277D81150];
        v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "+[TSCEFunction_LARGE evaluateForArgsWithContext:functionSpec:arguments:isLarge:ignoreError:ignoreDuplicate:]", v53, v54);
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v76, v77);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v78, v74, v28, 3065, 0, "Out of memory");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80, v81, v82);
        v55 = 1;
        goto LABEL_11;
      }

      v63 = objc_msgSend_taggedDecimalList(v50, v51, v52, v53, v54);
      v64 = v63[4];
      if (v64 && (v23 <= v64 || (v23 = v64, errorCopy)))
      {
        if (v64 < objc_msgSend_count(v48, v59, v60, v61, v62))
        {
          objc_msgSend_reportNonNumericCellWarningInContext_(TSCEWarning, v83, context, v84, v85);
        }

        TSUDecimal::operator=();
        v101 = 0;
        if (largeCopy)
        {
          sub_221402924(v63, v64 - vcvtpd_s64_f64(v23), &v94);
        }

        else
        {
          sub_221402924(v63, vcvtmd_s64_f64(v23) - 1, &v94);
        }

        v100 = v94;
        v101 = v95;
        *&v94 = context;
        *(&v94 + 1) = spec;
        v95 = 0;
        v96[0] = 0;
        *(v96 + 7) = 0;
        v97 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v98 = 0;
        v99 = 0;
        v28 = objc_msgSend_valueAtIndex_accessContext_(v48, v86, v101, &v94, v87);
      }

      else
      {
        v65 = objc_msgSend_functionName(spec, v59, v60, v61, v62);
        v69 = objc_msgSend_positionLargerThanArrayErrorForFunctionName_(TSCEError, v66, v65, v67, v68);
        v28 = objc_msgSend_raiseErrorOrConvert_(context, v70, v69, v71, v72);
      }
    }

    v55 = 0;
LABEL_11:

    objc_autoreleasePoolPop(context);
    if (!v55)
    {
      goto LABEL_14;
    }

    TSUDecimal::operator=();
    *&v94 = 0;
    DWORD2(v94) = 0;
    BYTE12(v94) = 0;
    LOWORD(v95) = 1057;
    BYTE2(v95) = 1;
    HIDWORD(v95) = -50266102;
    LODWORD(v96[0]) = 253;
    v40 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v56, &v100, &v94, v57);
LABEL_13:
    v28 = v40;
    goto LABEL_14;
  }

  v29 = objc_msgSend_functionName(spec, v24, v25, v26, v27);
  v31 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v30, 2, v29, 1, 1.0);
  v28 = objc_msgSend_raiseErrorOrConvert_(context, v32, v31, v33, v34);

  v17 = 0;
LABEL_14:

LABEL_15:

  return v28;
}

@end