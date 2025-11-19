@interface TSCEFunction_RANK_AVG
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_RANK_AVG

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v9 = *(*a5 + 8);
  v49 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, a3, a4, 1, 0, &v49);
  v12 = v49;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v14, v15);
LABEL_9:
    v29 = v17;
    goto LABEL_10;
  }

  if (*(a5 + 1) - *a5 < 0x11uLL)
  {
    goto LABEL_6;
  }

  v18 = *(*a5 + 16);
  if (objc_msgSend_isTokenOrEmptyArg(v18, v19, v20, v21, v22))
  {

LABEL_6:
    v24 = 1;
    goto LABEL_7;
  }

  v48 = 0;
  v34 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v23, a3, a4, 2, &v48);
  v16 = v48;
  if (!v16)
  {
    v39 = objc_msgSend_zero(TSCENumberValue, v35, v36, v37, v38);
    v47 = 0;
    v24 = objc_msgSend_eq_outError_(v34, v40, v39, &v47, v41);
    v16 = v47;

    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v16, v42, v43);
      goto LABEL_9;
    }

LABEL_7:
    v46 = 0;
    objc_msgSend_computeRankWithVector_functionSpec_vector_numberToRankValue_rankDescending_returnAverage_outError_(TSCEFunction_RANK, v13, a3, a4, v11, v8, v24, 1, &v46);
    v25 = v46;
    if (!v25)
    {
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v31, a3, v32, v33);
      }

      else
      {
        memset(v44, 0, sizeof(v44));
      }

      v29 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v31, v45, v44, v33);
      v16 = 0;
      goto LABEL_10;
    }

    v16 = v25;
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v26, v25, v27, v28);
    goto LABEL_9;
  }

  v29 = objc_msgSend_raiseErrorOrConvert_(a3, v35, v16, v37, v38);

LABEL_10:

  return v29;
}

@end