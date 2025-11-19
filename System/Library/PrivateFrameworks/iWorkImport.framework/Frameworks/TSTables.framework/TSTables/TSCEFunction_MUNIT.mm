@interface TSCEFunction_MUNIT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_MUNIT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v68 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, a2, a3, a4, 0, &v68);
  v13 = v68;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v13, v11, v12);
LABEL_3:
    v15 = v14;
    goto LABEL_13;
  }

  v20 = objc_msgSend_errorForDuration_argumentIndex_(v9, v10, a4, 1, v12);
  if (v20)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v20, v18, v19);
    v13 = v20;
  }

  else
  {
    v21 = objc_msgSend_nativeType(**a5, v16, v17, v18, v19);
    if (v21 == 16 || v21 == 1)
    {
      v27 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v22, v23, v24, v25);
      v15 = objc_msgSend_raiseErrorOrConvert_(a3, v28, v27, v29, v30);
    }

    else
    {
      v67._decimal.w[0] = objc_msgSend_decimalRepresentation(v9, v22, v23, v24, v25);
      v67._decimal.w[1] = v32;
      v33 = TSUDecimal::truncatedIntegerValue(&v67);
      v38 = objc_msgSend_functionName(a4, v34, v35, v36, v37);
      v13 = objc_msgSend_checkForTooLargeMatrixNumColumns_numRows_functionName_(TSCEError, v39, v33, v33, v38);

      if (v13)
      {
        v14 = objc_msgSend_raiseErrorOrConvert_(a3, v40, v13, v41, v42);
        goto LABEL_3;
      }

      v27 = objc_opt_new();
      v47 = objc_msgSend_zero(TSCENumberValue, v43, v44, v45, v46);
      v48 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v52 = objc_msgSend_initWithDecimal_(v48, v49, &v67, v50, v51);
      LODWORD(v67._decimal.w[0]) = v33;
      HIDWORD(v67._decimal.w[0]) = v33;
      objc_msgSend_padUnsetWithValue_forDimensions_(v27, v53, v47, &v67, v54);
      if (v33)
      {
        v57 = 0;
        do
        {
          v66[0] = v57;
          v66[1] = v57;
          objc_msgSend_setValue_atCoord_(v27, v55, v52, v66, v56);
          ++v57;
        }

        while (v33 != v57);
      }

      v58 = [TSCEDenseGrid alloc];
      v62 = objc_msgSend_initWithValueGrid_(v58, v59, v27, v60, v61);
      v15 = objc_msgSend_gridValue_(TSCEGridValue, v63, v62, v64, v65);
    }

    v13 = 0;
  }

LABEL_13:

  return v15;
}

@end