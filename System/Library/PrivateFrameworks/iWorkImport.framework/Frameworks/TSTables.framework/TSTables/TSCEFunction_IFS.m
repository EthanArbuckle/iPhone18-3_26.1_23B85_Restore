@interface TSCEFunction_IFS
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_IFS

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = *(a5 + 1) - *a5;
  if ((v7 >> 3) >= 255)
  {
    v8 = objc_msgSend_functionName(a4, a2, a3, a4, a5);
    v10 = objc_msgSend_tooManyArguments_maximum_provided_(TSCEError, v9, v8, 254, (v7 >> 3) & 0x7FFFFFFF);
    v14 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v12, v13);
LABEL_14:
    v51 = v14;

    goto LABEL_15;
  }

  if ((v7 & 8) != 0)
  {
    v8 = objc_msgSend_functionName(a4, a2, a3, a4, a5);
    v10 = objc_msgSend_invalidArgumentPairingsErrorForFunctionName_hasInitialUnrelatedArgument_(TSCEError, v46, v8, 0, v47);
    v14 = objc_msgSend_raiseErrorOrConvert_(a3, v48, v10, v49, v50);
    goto LABEL_14;
  }

  v15 = (v7 >> 3) >> 1;
  if (v15 < 1)
  {
LABEL_12:
    v8 = objc_msgSend_functionName(a4, a2, a3, a4, a5);
    v10 = objc_msgSend_noConditionIsTrueErrorForFunctionName_(TSCEError, v40, v8, v41, v42);
    v14 = objc_msgSend_raiseErrorOrConvert_(a3, v43, v10, v44, v45);
    goto LABEL_14;
  }

  v17 = 0;
  v18 = 2 * v15;
  while (1)
  {
    v19 = *(*a5 + 8 * v17);
    if (objc_msgSend_isThunk(v19, v20, v21, v22, v23))
    {
      v28 = objc_msgSend_unwrapThunk_(a3, v24, v19, v26, v27);

      v19 = v28;
    }

    v29 = objc_msgSend_nativeType(v19, v24, v25, v26, v27);
    v33 = objc_msgSend_deepType_(v19, v30, a3, v31, v32);
    if ((TSCEArgumentAccessor::valueSufficesForArgumentType(v19, 2, v29, v33, a3, 0) & 1) == 0)
    {
      v53 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v34, v19, a3, a4, v17);
      v51 = objc_msgSend_raiseErrorOrConvert_(a3, v54, v53, v55, v56);

      v57 = 0;
LABEL_20:
      v58 = 0;
      goto LABEL_22;
    }

    v59 = 0;
    v35 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v19, v34, a3, a4, v17, &v59);
    v36 = v59;
    if (v36)
    {
      v57 = v36;
      v51 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v36, v38, v39);
      goto LABEL_20;
    }

    if (v35)
    {
      break;
    }

    v17 += 2;
    if (v18 == v17)
    {
      goto LABEL_12;
    }
  }

  v58 = *(*a5 + 8 * v17 + 8);
  v57 = 0;
  v51 = v58;
LABEL_22:

LABEL_15:

  return v51;
}

@end