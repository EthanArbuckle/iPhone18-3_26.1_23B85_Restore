@interface TSCEFunction_LAMBDA_APPLY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LAMBDA_APPLY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = ((*(arguments + 1) - *arguments) >> 3) - 1;
  v9 = *(*arguments + 8 * v8);
  v54 = 0;
  v11 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v9, v10, context, spec, v8, &v54);
  v16 = v54;
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v12, v16, v14, v15);
LABEL_12:
    v24 = v17;
    goto LABEL_13;
  }

  v22 = objc_msgSend_functor(v11, v12, v13, v14, v15);
  if (v8 != v22->_numArgs)
  {
    v47 = objc_msgSend_functionName(spec, v18, v19, v20, v21);
    v16 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v48, v47, v22->_numArgs + 1, (v8 + 1));

    v17 = objc_msgSend_raiseErrorOrConvert_(context, v49, v16, v50, v51);
    goto LABEL_12;
  }

  memset(v53, 0, sizeof(v53));
  sub_2210ED528(v53, v8);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v55 = *(*arguments + 8 * i);
      sub_221179A54(v53, &v55);
    }
  }

  v24 = TSCEFunctor::evaluateWithArgs(v22, context, v53);
  v28 = objc_msgSend_errorWithContext_(v24, v25, context, v26, v27);
  v33 = v28;
  if (v28 && objc_msgSend_errorType(v28, v29, v30, v31, v32) == 168)
  {
    v38 = objc_msgSend_functionName(spec, v34, v35, v36, v37);
    v42 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v39, v38, v40, v41);
    v46 = objc_msgSend_errorValue_(TSCEErrorValue, v43, v42, v44, v45);

    v24 = v46;
  }

  v55 = v53;
  sub_22107C2C0(&v55);
  v16 = 0;
LABEL_13:

  return v24;
}

@end