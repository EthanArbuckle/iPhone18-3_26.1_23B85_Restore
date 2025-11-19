@interface TSCEFunction_BIN2OCT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_BIN2OCT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v41 = 0;
  v10 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v41);
  v11 = v41;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v11, v13, v14);
  }

  else
  {
    if (*(a5 + 1) - *a5 < 9uLL)
    {
      v23 = 0;
    }

    else
    {
      v17 = *(*a5 + 8);
      if (objc_msgSend_isTokenOrEmptyArg(v17, v18, v19, v20, v21))
      {
        v23 = 0;
      }

      else
      {
        v40 = 0;
        v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v22, a3, a4, 1, &v40);
        v15 = v40;
        v29 = objc_msgSend_trunc(v24, v25, v26, v27, v28);

        if (v15)
        {
          v34 = objc_msgSend_raiseErrorOrConvert_(a3, v30, v15, v32, v33);

          goto LABEL_13;
        }

        v39._decimal.w[0] = objc_msgSend_decimalRepresentation(v29, v30, v31, v32, v33);
        v39._decimal.w[1] = v35;
        v23 = TSUDecimal::truncateWithRounding(&v39);
      }
    }

    v36 = objc_alloc(MEMORY[0x277D80620]);
    v15 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v36, v37, 8, v23, 0);
    v16 = sub_2211F78B4(a3, a4, v10, 2, 1, v15);
  }

  v34 = v16;
LABEL_13:

  return v34;
}

@end