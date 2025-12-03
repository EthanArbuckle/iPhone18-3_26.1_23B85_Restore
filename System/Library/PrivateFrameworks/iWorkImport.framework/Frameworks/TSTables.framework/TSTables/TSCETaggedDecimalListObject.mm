@interface TSCETaggedDecimalListObject
+ (id)createFromGridValue:(id)value functionSpec:(id)spec argumentIndex:(int)index evaluationContext:(id)context ignoreError:(BOOL)error ignoreDuplicates:(BOOL)duplicates outError:(id *)outError;
- (id).cxx_construct;
@end

@implementation TSCETaggedDecimalListObject

+ (id)createFromGridValue:(id)value functionSpec:(id)spec argumentIndex:(int)index evaluationContext:(id)context ignoreError:(BOOL)error ignoreDuplicates:(BOOL)duplicates outError:(id *)outError
{
  duplicatesCopy = duplicates;
  errorCopy = error;
  v115 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  specCopy = spec;
  contextCopy = context;
  v96 = contextCopy;
  v99 = objc_opt_new();
  v18 = objc_msgSend_count(valueCopy, v14, v15, v16, v17);
  v97 = objc_msgSend_taggedDecimalList(v99, v19, v20, v21, v22);
  v100 = objc_msgSend_zero(TSCENumberValue, v23, v24, v25, v26);
  if (!outError)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "+[TSCETaggedDecimalListObject createFromGridValue:functionSpec:argumentIndex:evaluationContext:ignoreError:ignoreDuplicates:outError:]", v28, v29);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETaggedDecimalList.mm", v33, v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v36, v31, v35, 197, 0, "outError is required to be non-nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  memset(v111, 0, sizeof(v111));
  v112 = 1065353216;
  v43 = contextCopy;
  v105[0] = v43;
  v105[1] = specCopy;
  v106 = 0;
  v107[0] = 0;
  *(v107 + 7) = 0;
  v108 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v109 = 0;
  v110 = 0;
  if (!v18)
  {
    v103 = 0;
LABEL_40:
    v87 = v99;
    goto LABEL_41;
  }

  v101 = 0;
  v103 = 0;
  v44 = 0;
  while (1)
  {
    v45 = objc_msgSend_valueAtIndex_accessContext_(valueCopy, v41, v44, v105, v42);
    v50 = v45;
    if (errorCopy && (objc_msgSend_isError(v45, v46, v47, v48, v49) & 1) != 0 || (objc_msgSend_isNil(v50, v46, v47, v48, v49) & 1) != 0)
    {
      goto LABEL_8;
    }

    v58 = objc_msgSend_deepType_(v50, v51, v43, v52, v53);
    if (v58 <= 8u)
    {
      break;
    }

    if (v58 != 9)
    {
      if (v58 == 10 || v58 == 12)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

    if (!errorCopy)
    {
      v68 = objc_msgSend_errorWithContext_(v50, v54, v43, v56, v57);
      *outError = v68;
      if (v68)
      {
        goto LABEL_48;
      }
    }

LABEL_8:

    if (v18 == ++v44)
    {
      goto LABEL_40;
    }
  }

  if (v58 == 3)
  {
    if (v101)
    {
LABEL_44:
      v63 = objc_msgSend_functionName(specCopy, v54, v55, v56, v57);
      *outError = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v89, v63, v90, v91);
      goto LABEL_47;
    }

    v69 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v50, v54, v43, specCopy, 0, outError);

    if (*outError)
    {
      v103 = v69;
      goto LABEL_48;
    }

    objc_msgSend_timeIntervalSinceReferenceDate(v69, v70, v71, v72, v73);
    if (duplicatesCopy)
    {
      TSUDecimal::operator=();
      if (!sub_2214031D4(v111, &v113))
      {
        TSUDecimal::operator=();
        sub_221403524(v111, &v113);
        TSUDecimal::operator=();
        v113 = v104;
        v114 = v44;
        sub_221402320(v97, &v113);
      }
    }

    else
    {
      TSUDecimal::operator=();
      v113 = v104;
      v114 = v44;
      sub_221402320(v97, &v113);
    }

    v101 = 0;
    v103 = v69;
    goto LABEL_8;
  }

  if (v58 != 5)
  {
LABEL_30:
    v74 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "+[TSCETaggedDecimalListObject createFromGridValue:functionSpec:argumentIndex:evaluationContext:ignoreError:ignoreDuplicates:outError:]", v56, v57);
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETaggedDecimalList.mm", v77, v78);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v80, v75, v79, 289, 0, "Have to set the type of vector appropriately. currentType = %d", v58, v96);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v82, v83, v84);
    goto LABEL_8;
  }

  if (v103)
  {
    goto LABEL_44;
  }

  v59 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v50, v54, v43, specCopy, 0, outError);
  v63 = v59;
  if (*outError)
  {
    goto LABEL_46;
  }

  if ((v101 & 1) == 0)
  {
    v85 = v59;

    v100 = v85;
    goto LABEL_32;
  }

  if (objc_msgSend_dimensionsMatchModuloCurrency_(v100, v60, v59, v61, v62))
  {
LABEL_32:
    v86 = objc_msgSend_rawDecimalValue(v63, v64, v65, v66, v67);
    v104 = *v86;
    if (duplicatesCopy)
    {
      if (!sub_2214031D4(v111, &v104))
      {
        sub_2214032D4(v111, &v104);
        v113 = v104;
        v114 = v44;
        sub_221402320(v97, &v113);
      }
    }

    else
    {
      v113 = *v86;
      v114 = v44;
      sub_221402320(v97, &v113);
    }

    v103 = 0;
    v101 = 1;
    goto LABEL_8;
  }

  v92 = objc_msgSend_functionName(specCopy, v64, v65, v66, v67);
  *outError = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v93, v92, v94, v95);

LABEL_46:
  v103 = 0;
LABEL_47:

LABEL_48:
  v87 = 0;
LABEL_41:

  sub_2210BDEC0(v111);

  return v87;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end