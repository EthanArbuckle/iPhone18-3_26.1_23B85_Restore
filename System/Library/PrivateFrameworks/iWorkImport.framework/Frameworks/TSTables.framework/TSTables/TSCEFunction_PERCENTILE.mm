@interface TSCEFunction_PERCENTILE
+ (id)computeWithVector:(id)vector functionSpec:(id)spec vector:(id)a5 percentile:(const TSUDecimal *)percentile isExclusive:(BOOL)exclusive ignoreError:(BOOL)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PERCENTILE

+ (id)computeWithVector:(id)vector functionSpec:(id)spec vector:(id)a5 percentile:(const TSUDecimal *)percentile isExclusive:(BOOL)exclusive ignoreError:(BOOL)error
{
  errorCopy = error;
  exclusiveCopy = exclusive;
  v130 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v14 = a5;
  if (exclusiveCopy)
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0) || (TSUDecimal::operator==())
    {
      v19 = objc_msgSend_functionName(spec, v15, v16, v17, v18);
      v21 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v20, 2, v19, 0, 0, 0.0, 1.0);
      v25 = objc_msgSend_raiseErrorOrConvert_(vectorCopy, v22, v21, v23, v24);

      goto LABEL_17;
    }
  }

  else
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v19 = objc_msgSend_functionName(spec, v26, v27, v28, v29);
      v52 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v51, 2, v19, 1, 1, 0.0, 1.0);
      v25 = objc_msgSend_raiseErrorOrConvert_(vectorCopy, v53, v52, v54, v55);

      goto LABEL_17;
    }
  }

  context = objc_autoreleasePoolPush();
  v33 = objc_msgSend_deepResolveInPlace_(v14, v30, vectorCopy, v31, v32);
  v38 = objc_msgSend_gridValue(v33, v34, v35, v36, v37);
  v121 = 0;
  v40 = objc_msgSend_createFromGridValue_functionSpec_argumentIndex_evaluationContext_ignoreError_ignoreDuplicates_outError_(TSCETaggedDecimalListObject, v39, v38, spec, 0, vectorCopy, errorCopy, 0, &v121);
  v45 = v121;
  if (v45)
  {
    v25 = objc_msgSend_raiseErrorOrConvert_(vectorCopy, v41, v45, v43, v44);
LABEL_10:
    v19 = 0;
    v46 = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (v40)
  {
    v61 = objc_msgSend_taggedDecimalList(v40, v41, v42, v43, v44);
    v62 = v61[4];
    if (!v62)
    {
      v45 = objc_msgSend_functionName(spec, v57, v58, v59, v60);
      v106 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v104, v45, 8, v105);
      v25 = objc_msgSend_raiseErrorOrConvert_(vectorCopy, v107, v106, v108, v109);

      goto LABEL_10;
    }

    TSUDecimal::doubleValue(percentile);
    v63 = (v62 - 1);
    v65 = vcvtmd_u64_f64(v64 * v63);
    v66 = -(floor(v64 * v63) - v64 * v63);
    v67 = v64 * (v62 + 1) + -1.0;
    v68 = vcvtmd_u64_f64(v67);
    v69 = v67 - floor(v67);
    v70 = !exclusiveCopy;
    if (exclusiveCopy)
    {
      v71 = v68;
    }

    else
    {
      v71 = v65;
    }

    if (v70)
    {
      v72 = v66;
    }

    else
    {
      v72 = v69;
    }

    sub_221402924(v61, v71, &v128);
    TSUDecimal::operator=();
    if (v71 + 1 >= v62 || (sub_221402924(v61, v71 + 1, &v122), v72 == 0.0))
    {
      v120 = v128;
    }

    else
    {
      TSUDecimal::operator=();
      v119[0] = v128;
      TSUDecimal::operator*=();
      v116 = v119[0];
      TSUDecimal::operator=();
      v119[0] = v122;
      TSUDecimal::operator*=();
      v119[3] = v119[0];
      v119[0] = v116;
      TSUDecimal::operator+=();
      v120 = v116;
    }

    v73 = vectorCopy;
    *&v122 = v73;
    *(&v122 + 1) = spec;
    v123 = 0;
    v124[0] = 0;
    *(v124 + 7) = 0;
    v125 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v126 = 0;
    v127 = 0;
    v76 = objc_msgSend_valueAtIndex_accessContext_(v38, v74, v129, &v122, v75);
    if (objc_msgSend_deepType_(v76, v77, v73, v78, v79) == 3)
    {
      v81 = objc_alloc(MEMORY[0x277CBEAA8]);
      TSUDecimal::doubleValue(&v120);
      v25 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v81, v82, v83, v84, v85);
      if (v76)
      {
        objc_msgSend_formatWithContext_(v76, v86, v73, v87, v88);
      }

      else
      {
        memset(v119, 0, 32);
      }

      v19 = objc_msgSend_dateValue_format_(TSCEDateValue, v86, v25, v119, v88);

      v45 = 0;
    }

    else
    {
      v118 = 0;
      v25 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v76, v80, v73, spec, 0, &v118);
      v45 = v118;
      v19 = objc_msgSend_numberWithDecimal_(v25, v110, &v120, v111, v112);

      if (v45)
      {
        v25 = objc_msgSend_raiseErrorOrConvert_(v73, v113, v45, v114, v115);
        v46 = 0;
LABEL_42:

        goto LABEL_11;
      }
    }

    v46 = 1;
    goto LABEL_42;
  }

  v89 = MEMORY[0x277D81150];
  v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "+[TSCEFunction_PERCENTILE computeWithVector:functionSpec:vector:percentile:isExclusive:ignoreError:]", v43, v44);
  v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v92, v93);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v95, v90, v94, 4602, 0, "Out of memory");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97, v98, v99);
  v25 = objc_msgSend_nilValue(TSCENilValue, v100, v101, v102, v103);
  v19 = 0;
  v46 = 0;
LABEL_12:

  objc_autoreleasePoolPop(context);
  if (v46)
  {
    if (!v19)
    {
      v19 = objc_msgSend_nilValue(TSCENilValue, v47, v48, v49, v50);
    }

    v19 = v19;
    v25 = v19;
  }

LABEL_17:

  return v25;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = *(*arguments + 8);
  v28 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 1, &v28);
  v11 = v28;
  v27[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v27[1] = v16;
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v17, v18);
  }

  else
  {
    v20 = **arguments;
    v26 = 0;
    v21 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v20, v16, context, spec, 0, 1, &v26);
    v11 = v26;
    if (v11)
    {
      objc_msgSend_raiseErrorOrConvert_(context, v22, v11, v23, v24);
    }

    else
    {
      objc_msgSend_computeWithVector_functionSpec_vector_percentile_isExclusive_ignoreError_(TSCEFunction_PERCENTILE, v22, context, spec, v21, v27, 0, 0);
    }
    v19 = ;
  }

  return v19;
}

@end