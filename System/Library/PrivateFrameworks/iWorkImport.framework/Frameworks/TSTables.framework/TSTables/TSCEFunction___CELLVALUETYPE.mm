@interface TSCEFunction___CELLVALUETYPE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction___CELLVALUETYPE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v6 = 0x7FFF7FFFFFFFLL;
  v67 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v68 = 0uLL;
  if (*(a5 + 1) == *a5)
  {
    v17 = 0;
    v18 = 0;
    goto LABEL_7;
  }

  v8 = **a5;
  if ((objc_msgSend_isTokenOrEmptyArg(v8, v9, v10, v11, v12) & 1) == 0 && objc_msgSend_deepType_(v8, v13, a3, v14, v15) != 10)
  {
    v66 = 0;
    v45 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v8, v16, a3, a4, 0, &v66);
    v50 = v66;
    if (v50)
    {
      v40 = objc_msgSend_raiseErrorOrConvert_(a3, v46, v50, v48, v49);
    }

    else
    {
      if (!objc_msgSend_isNil(v45, v46, v47, v48, v49))
      {
        if (v45)
        {
          objc_msgSend_rangeRef(v45, v51, v52, v53, v54);
        }

        else
        {
          v64 = 0u;
          v65 = 0u;
        }

        v67 = v64;
        v68 = v65;

        v6 = v67.i64[0];
        v17 = *(&v68 + 1);
        v18 = v68;
        goto LABEL_5;
      }

      v55 = objc_msgSend_functionName(a4, v51, v52, v53, v54);
      v59 = objc_msgSend_notAReferenceErrorForFunctionName_(TSCEError, v56, v55, v57, v58);
      v40 = objc_msgSend_raiseErrorOrConvert_(a3, v60, v59, v61, v62);
    }

    goto LABEL_13;
  }

  v17 = 0;
  v18 = 0;
LABEL_5:

LABEL_7:
  v19 = objc_msgSend_calcEngine(a3, a2, a3, a4, a5);
  IsWithinTable = objc_msgSend_rangeIsWithinTable_(v19, v20, &v67, v21, v22);

  if (IsWithinTable)
  {
    v64.i64[0] = v18;
    v64.i64[1] = v17;
    v28 = objc_msgSend_calcEngine(a3, v24, v25, v26, v27);
    v32 = objc_msgSend_tableResolverForTableUID_(v28, v29, &v64, v30, v31);
    v36 = v32;
    if (v32)
    {
      v63[0] = v6;
      objc_msgSend_cellValueTypeForCell_(v32, v33, v63, v34, v35);
    }

    TSUDecimal::operator=();
    v40 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v41, v63, v42, v43);
  }

  else
  {
    v28 = objc_msgSend_invalidReferenceError(TSCEError, v24, v25, v26, v27);
    v40 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v28, v38, v39);
  }

LABEL_13:

  return v40;
}

@end