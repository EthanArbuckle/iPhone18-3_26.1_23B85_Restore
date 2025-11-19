@interface TSCEFunction_CHOOSE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CHOOSE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  if (objc_msgSend_isThunk(v8, v9, v10, v11, v12))
  {
    v16 = objc_msgSend_unwrapThunk_(a3, v13, v8, v14, v15);

    v8 = v16;
  }

  v36 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v13, a3, a4, 0, &v36);
  v22 = v36;
  if (v22)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(a3, v18, v22, v20, v21);
LABEL_5:
    v24 = v23;
    goto LABEL_10;
  }

  v35._decimal.w[0] = objc_msgSend_decimalRepresentation(v17, v18, v19, v20, v21);
  v35._decimal.w[1] = v25;
  v26 = TSUDecimal::truncatedIntegerValue(&v35);
  if (v26 >= 1 && v26 < ((*(a5 + 1) - *a5) >> 3))
  {
    v23 = *(*a5 + 8 * (v26 & 0x7FFFFFFF));
    goto LABEL_5;
  }

  v30 = objc_msgSend_invalidIndexForChooseError_(TSCEError, v27, v26, v28, v29);
  v24 = objc_msgSend_raiseErrorOrConvert_(a3, v31, v30, v32, v33);

LABEL_10:

  return v24;
}

@end