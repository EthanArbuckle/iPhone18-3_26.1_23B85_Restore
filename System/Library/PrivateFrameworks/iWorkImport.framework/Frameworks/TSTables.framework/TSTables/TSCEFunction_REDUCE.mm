@interface TSCEFunction_REDUCE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_REDUCE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 16);
  v106 = 0;
  v11 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 2, &v106);
  v16 = v106;
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v12, v16, v14, v15);
    goto LABEL_24;
  }

  v93 = v11;
  v22 = objc_msgSend_functor(v11, v12, v13, v14, v15);
  if (v22->_numArgs != 2)
  {
    v27 = objc_msgSend_functionName(spec, v18, v19, v20, v21);
    v16 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v28, v27, v22->_numArgs + 1, 3);

    v17 = objc_msgSend_raiseErrorOrConvert_(context, v29, v16, v30, v31);
    goto LABEL_24;
  }

  v23 = *(*arguments + 8);
  v105 = 0;
  v94 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v23, v18, context, spec, 1, 0, &v105);
  v16 = v105;
  if (!v16)
  {
    v32 = v8;
    v104 = v32;
    v103 = objc_msgSend_dimensions(v94, v33, v34, v35, v36);
    contextCopy = context;
    v97[0] = contextCopy;
    v97[1] = spec;
    v98 = 0;
    v99[0] = 1;
    *(v99 + 7) = 0;
    v100 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v101 = 0;
    v102 = 0;
    v96 = 0;
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v32, v38, v39, v40, v41);
    if (objc_msgSend_isError(v32, v43, v44, v45, v46))
    {
      v51 = objc_msgSend_asErrorValue(v32, v47, v48, v49, v50);
      v56 = objc_msgSend_error(v51, v52, v53, v54, v55);

      if (objc_msgSend_errorType(v56, v57, v58, v59, v60) == 135)
      {
        v62 = v104;
        v104 = 0;
      }

      else
      {
        if (v56)
        {
          v17 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v47, v56, v61, v50);

LABEL_22:
          goto LABEL_23;
        }

        if ((isTokenOrEmptyArg & 1) == 0)
        {
LABEL_12:
          v92 = v8;
          if (v96.column != 0x7FFFFFFF && v96.row != 0x7FFFFFFF)
          {
            do
            {
              memset(v95, 0, sizeof(v95));
              v107[0] = objc_msgSend_valueAtGridCoord_accessContext_(v94, v47, *&v96, v97, v50, v92);
              sub_221179A54(v95, &v104);
              sub_221179A54(v95, v107);
              v65 = TSCEFunctor::evaluateWithArgs(v22, contextCopy, v95);
              v66 = v104;
              v104 = v65;

              v70 = objc_msgSend_errorWithContext_(v104, v67, contextCopy, v68, v69);
              v75 = v70;
              if (v70 && objc_msgSend_errorType(v70, v71, v72, v73, v74) == 168)
              {
                v80 = objc_msgSend_functionName(spec, v76, v77, v78, v79);
                v84 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v81, v80, v82, v83);
                v88 = objc_msgSend_errorValue_(TSCEErrorValue, v85, v84, v86, v87);
                v89 = v104;
                v104 = v88;

                v90 = 1;
              }

              else
              {
                v90 = 0;
                v96 = TSCEGridDimensions::nextCoordRowMajorOrder(&v103, &v96);
              }

              v107[0] = v95;
              sub_22107C2C0(v107);
            }

            while ((v90 & 1) == 0 && v96.column != 0x7FFFFFFF && v96.row != 0x7FFFFFFF);
          }

          v17 = v104;
          v8 = v92;
          goto LABEL_22;
        }
      }
    }

    else if (!isTokenOrEmptyArg)
    {
      goto LABEL_12;
    }

    v63 = objc_msgSend_valueAtGridCoord_accessContext_(v94, v47, *&v96, v97, v50);
    v64 = v104;
    v104 = v63;

    v96 = TSCEGridDimensions::nextCoordRowMajorOrder(&v103, &v96);
    goto LABEL_12;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(context, v24, v16, v25, v26);
LABEL_23:
  v11 = v93;

LABEL_24:

  return v17;
}

@end