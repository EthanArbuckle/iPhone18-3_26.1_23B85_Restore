@interface TSCEFunction_IFERROR
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_IFERROR

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = *(a5 + 1) - *a5;
  if ((v7 & 0x7FFFFFFF8) != 0x10)
  {
    v36 = objc_msgSend_functionName(a4, a2, a3, a4, a5);
    v39 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v37, v36, (v7 >> 3), v38);
    v35 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v39, v41, v42);

    goto LABEL_12;
  }

  v9 = **a5;
  v46 = 0;
  v12 = objc_msgSend_deepType_outError_(v9, v10, a3, &v46, v11);
  v13 = v46;
  v15 = v13;
  if (v12 == 9)
  {
    v35 = *(*a5 + 8);
    v17 = v15;
    goto LABEL_11;
  }

  if (v12 != 5)
  {
    v17 = v13;
LABEL_10:
    v35 = v9;
    goto LABEL_11;
  }

  v45 = v13;
  v16 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v14, a3, a4, 0, &v45);
  v17 = v45;

  v44._decimal.w[0] = objc_msgSend_decimalRepresentation(v16, v18, v19, v20, v21);
  v44._decimal.w[1] = v22;
  if ((TSUDecimal::isNaN(&v44) & 1) == 0 && (TSUDecimal::isInf(&v44) & 1) == 0)
  {

    goto LABEL_10;
  }

  v27 = objc_msgSend_functionName(a4, v23, v24, v25, v26);
  v31 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v28, v27, v29, v30);
  v35 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v31, v33, v34);

LABEL_11:
LABEL_12:

  return v35;
}

@end