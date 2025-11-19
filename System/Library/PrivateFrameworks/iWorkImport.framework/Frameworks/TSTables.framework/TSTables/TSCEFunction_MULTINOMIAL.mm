@interface TSCEFunction_MULTINOMIAL
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_MULTINOMIAL

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v94[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, a3, a4, 0, 1, v94);
  v10 = v94[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v12, v13);
    goto LABEL_40;
  }

  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v20 = objc_msgSend_count(v9, v16, v17, v18, v19);
  v79 = a3;
  v84[0] = v79;
  v84[1] = a4;
  v85 = 0;
  v86[0] = 0;
  *(v86 + 7) = 0;
  v87 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v88 = 0;
  v89 = 0;
  if (!v20)
  {
LABEL_29:
    v14 = 0;
    goto LABEL_33;
  }

  v23 = 0;
  v24 = 0;
  v25 = 1;
  v77 = v9;
  v78 = v7;
  while (1)
  {
    v26 = objc_msgSend_valueAtIndex_accessContext_(v9, v21, v23, v84, v22);
    if ((objc_msgSend_isNil(v26, v27, v28, v29, v30) & 1) == 0)
    {
      break;
    }

LABEL_28:

    v25 = ++v23 < v20;
    if (v23 == v20)
    {
      goto LABEL_29;
    }
  }

  v83 = 0;
  v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v31, v79, a4, 0, &v83);
  v33 = v83;
  if (v33)
  {
    v14 = v33;
    v15 = objc_msgSend_raiseErrorOrConvert_(v79, v34, v33, v36, v37);
    goto LABEL_32;
  }

  v38 = objc_msgSend_trunc(v32, v34, v35, v36, v37);
  v82._decimal.w[0] = objc_msgSend_decimalRepresentation(v38, v39, v40, v41, v42);
  v82._decimal.w[1] = v43;

  TSUDecimal::operator=();
  if ((TSUDecimal::operator<=() & 1) != 0 && (TSUDecimal::operator==() & 1) == 0)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "+[TSCEFunction_MULTINOMIAL evaluateForArgsWithContext:functionSpec:arguments:]", v45, v46);
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEMathTrigFunctions.mm", v50, v51);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v53, v48, v52, 1252, 0, "MULTINOMIAL accepts nonnegative arguments only.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57);
  }

  if ((v24 & 1) == 0)
  {
    v92 = v82;
    v93 = v82;
LABEL_27:

    v24 = 1;
    v9 = v77;
    v7 = v78;
    goto LABEL_28;
  }

  TSUDecimal::operator=();
  if ((TSUDecimal::operator==() & 1) != 0 || (v80[0] = v93, TSUDecimal::operator+=(), v80[2] = v80[0], !TSUDecimal::operator==()))
  {
    TSUDecimal::operator=();
    v80[0] = v82;
    TSUDecimal::operator-=();
    v81 = v80[0];
    if (!TSUDecimal::operator==())
    {
      TSUDecimal::operator+=();
      while (TSUDecimal::operator<() && TSUDecimal::operator<=())
      {
        TSUDecimal::operator=();
        TSUDecimal::operator+=();
        TSUDecimal::operator*=();
        if (TSUDecimal::isInf(&v91))
        {
          goto LABEL_31;
        }
      }

      TSUDecimal::doubleValue(&v82);
      v63 = v62;
      if (v62 >= 2.0)
      {
        v64 = 2.0;
        do
        {
          TSUDecimal::operator=();
          v80[0] = v91;
          TSUDecimal::operator/=();
          v81 = v80[0];
          if (TSUDecimal::operator<=())
          {
            TSUDecimal::operator=();
            TSUDecimal::operator*=();
            if (TSUDecimal::isInf(&v90))
            {
              goto LABEL_31;
            }
          }

          else
          {
            TSUDecimal::operator=();
            TSUDecimal::operator/=();
          }

          v64 = v64 + 1.0;
        }

        while (v64 <= v63);
      }

      goto LABEL_27;
    }
  }

LABEL_31:
  v65 = objc_msgSend_functionName(a4, v58, v59, v60, v61);
  v69 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v66, v65, v67, v68);
  v15 = objc_msgSend_raiseErrorOrConvert_(v79, v70, v69, v71, v72);

  v14 = 0;
LABEL_32:

  v9 = v77;
  v7 = v78;
  if (!v25)
  {
LABEL_33:
    while (TSUDecimal::operator<())
    {
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      TSUDecimal::operator*=();
    }

    v80[0] = v91;
    TSUDecimal::operator/=();
    v82 = v80[0];
    if (v9)
    {
      objc_msgSend_formatWithContext_(v9, v73, v79, v74, v75);
    }

    else
    {
      memset(v80, 0, 32);
    }

    v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v73, &v82, v80, v75);
  }

LABEL_40:

  return v15;
}

@end