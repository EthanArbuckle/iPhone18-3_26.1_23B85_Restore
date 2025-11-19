@interface TSCEFunction_TDIST
+ (double)probabilityWithX:(double)a3 V:(int)a4 tails:(double)a5;
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_TDIST

+ (double)probabilityWithX:(double)a3 V:(int)a4 tails:(double)a5
{
  pthread_mutex_lock(&stru_27CFB4098);
  sub_221250360(a4, a3);
  v9 = 1.0 - v8;
  pthread_mutex_unlock(&stru_27CFB4098);
  result = v9 + v9;
  if (a5 != 2.0)
  {
    return v9;
  }

  return result;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v76 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v76);
  v11 = v76;
  v75._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v75._decimal.w[1] = v16;
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
    goto LABEL_16;
  }

  v20 = *(*a5 + 8);
  v74 = 0;
  v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, a3, a4, 1, &v74);
  v11 = v74;
  v27 = objc_msgSend_trunc(v22, v23, v24, v25, v26);

  v70._decimal.w[0] = objc_msgSend_decimalRepresentation(v27, v28, v29, v30, v31);
  v70._decimal.w[1] = v32;
  v33 = TSUDecimal::truncateWithRounding(&v70);
  if (!v11)
  {
    v37 = v33;
    v38 = *(*a5 + 16);
    v73 = 0;
    v40 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v38, v39, a3, a4, 2, &v73);
    v11 = v73;
    v72._decimal.w[0] = objc_msgSend_decimalRepresentation(v40, v41, v42, v43, v44);
    v72._decimal.w[1] = v45;
    if (v11)
    {
      v48 = objc_msgSend_raiseErrorOrConvert_(a3, v45, v11, v46, v47);
    }

    else
    {
      TSUDecimal::operator=();
      if ((TSUDecimal::operator==() & 1) == 0)
      {
        TSUDecimal::operator=();
        if ((TSUDecimal::operator==() & 1) == 0)
        {
          v63 = objc_msgSend_functionName(a4, v49, v50, v51, v52);
          v66 = objc_msgSend_invalidTailErrorForFunctionName_argumentNumber_(TSCEError, v64, v63, 3, v65);
          v19 = objc_msgSend_raiseErrorOrConvert_(a3, v67, v66, v68, v69);

          goto LABEL_14;
        }
      }

      TSUDecimal::doubleValue(&v75);
      v54 = v53;
      TSUDecimal::doubleValue(&v72);
      objc_msgSend_probabilityWithX_V_tails_(TSCEFunction_TDIST, v55, v37, v56, v57, v54, v58);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v59, a3, v60, v61);
      }

      else
      {
        memset(&v70, 0, 32);
      }

      v48 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v59, v71, &v70, v61);
    }

    v19 = v48;
LABEL_14:

    goto LABEL_15;
  }

  v19 = objc_msgSend_raiseErrorOrConvert_(a3, v34, v11, v35, v36);
LABEL_15:

LABEL_16:

  return v19;
}

@end