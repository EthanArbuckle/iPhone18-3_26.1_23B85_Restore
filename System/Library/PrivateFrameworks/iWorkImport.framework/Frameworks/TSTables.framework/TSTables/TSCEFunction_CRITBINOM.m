@interface TSCEFunction_CRITBINOM
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CRITBINOM

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v82 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v82);
  v11 = v82;
  v16 = objc_msgSend_trunc(v10, v12, v13, v14, v15);

  objc_msgSend_doubleRepresentation(v16, v17, v18, v19, v20);
  if (v11)
  {
    v25 = objc_msgSend_raiseErrorOrConvert_(a3, v21, v11, v22, v23);
    goto LABEL_25;
  }

  v26 = v24;
  v27 = *(*a5 + 8);
  v81 = 0;
  v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v28, a3, a4, 1, &v81);
  v11 = v81;
  objc_msgSend_doubleRepresentation(v29, v30, v31, v32, v33);
  if (v11)
  {
    v25 = objc_msgSend_raiseErrorOrConvert_(a3, v34, v11, v35, v36);
    goto LABEL_24;
  }

  v38 = v37;
  v39 = *(*a5 + 16);
  v80 = 0;
  v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v40, a3, a4, 2, &v80);
  v11 = v80;
  objc_msgSend_doubleRepresentation(v41, v42, v43, v44, v45);
  if (v11)
  {
    v50 = objc_msgSend_raiseErrorOrConvert_(a3, v46, v11, v47, v48);
    goto LABEL_23;
  }

  v51 = v49;
  v75 = v41;
  v76 = v39;
  v77 = v27;
  pthread_mutex_lock(&stru_27CFB4098);
  if (v26 < 1)
  {
    v56 = 0;
    v55 = v26;
    goto LABEL_17;
  }

  v52 = 0;
  v53 = v26;
  while (1)
  {
    v54 = v53 - v52;
    v55 = v52 + (v53 - v52) / 2;
    if (sub_22168AAA0(v55, v26, v38) >= v51)
    {
      break;
    }

    v52 = v55 + 1;
LABEL_13:
    v55 = v53;
    v56 = v52;
    if (v53 <= v52)
    {
      goto LABEL_17;
    }
  }

  if (v54 >= 2)
  {
    v53 = v55 - 1;
    v56 = v52 + v54 / 2;
    if (sub_22168AAA0(v55 - 1, v26, v38) < v51)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v56 = v52 + v54 / 2;
LABEL_17:
  pthread_mutex_unlock(&stru_27CFB4098);
  if (v56 != v55)
  {
    v60 = MEMORY[0x277D81150];
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "+[TSCEFunction_CRITBINOM evaluateForArgsWithContext:functionSpec:arguments:]", v58, v59);
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v63, v64);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v66, v61, v65, 1956, 0, "CRITBINOM binary search has a bug.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69, v70);
  }

  TSUDecimal::operator=();
  v39 = v76;
  v27 = v77;
  v41 = v75;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v71, a3, v72, v73);
  }

  else
  {
    memset(v78, 0, sizeof(v78));
  }

  v50 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v71, v79, v78, v73);
LABEL_23:
  v25 = v50;

LABEL_24:
LABEL_25:

  return v25;
}

@end