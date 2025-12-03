@interface TSCEFunction_BYCOL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BYCOL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_functionIndex(spec, a2, context, spec, arguments);
  if (objc_msgSend_isTokenOrEmptyArg(**arguments, v9, v10, v11, v12))
  {
    v17 = objc_msgSend_requiredArgumentMissingError(TSCEError, v13, v14, v15, v16);
    v21 = objc_msgSend_errorValue_(TSCEErrorValue, v18, v17, v19, v20);

    goto LABEL_20;
  }

  v22 = **arguments;
  v140 = 0;
  v23 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v22, v13, context, spec, 0, 0, &v140);
  v24 = v140;
  if (!v24)
  {
    v29 = *(*arguments + 8);
    v139 = 0;
    v31 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v29, v30, context, spec, 1, &v139);
    v28 = v139;
    if (v28)
    {
      v36 = objc_msgSend_raiseErrorOrConvert_(context, v32, v28, v34, v35);
    }

    else
    {
      v131 = objc_msgSend_functor(v31, v32, v33, v34, v35);
      if (v131->_numArgs == 1)
      {
        v125 = v29;
        v126 = v23;
        v124 = v31;
        v41 = objc_msgSend_dimensions(v23, v37, v38, v39, v40);
        v129 = objc_msgSend_asValueGrid_(v23, v42, context, v43, v44);
        v130 = objc_opt_new();
        v45 = HIDWORD(v41);
        contextCopy = context;
        v127 = HIDWORD(v41);
        v128 = v41;
        if (v8 == 369)
        {
          if (v45)
          {
            v48 = 0;
            do
            {
              v137 = 0;
              v138 = v48;
              v49 = objc_msgSend_subGridAtGridCoord_width_height_(v129, v46, &v137, v41, 1);
              v50 = [TSCEDenseGrid alloc];
              v54 = objc_msgSend_initWithValueGrid_(v50, v51, v49, v52, v53);
              v134 = 0;
              v135 = 0;
              v136 = 0;
              v133 = objc_msgSend_gridValue_(TSCEGridValue, v55, v54, v56, v57);
              sub_2210ED5B8(&v134, &v133);

              v58 = TSCEFunctor::evaluateWithArgs(v131, contextCopy, &v134);
              v62 = objc_msgSend_errorWithContext_(v58, v59, contextCopy, v60, v61);
              v67 = v62;
              if (v62 && objc_msgSend_errorType(v62, v63, v64, v65, v66) == 168)
              {
                v70 = objc_msgSend_functionName(spec, v63, v68, v69, v66);
                v74 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v71, v70, v72, v73);
                v78 = objc_msgSend_errorValue_(TSCEErrorValue, v75, v74, v76, v77);

                v58 = v78;
              }

              objc_msgSend_setValue_atCoord_(v130, v63, v58, &v137, v66);

              v141 = &v134;
              sub_22107C2C0(&v141);

              ++v48;
              v41 = v128;
            }

            while (v127 != v48);
          }
        }

        else if (v41)
        {
          v85 = 0;
          do
          {
            v137 = v85;
            v138 = 0;
            v86 = objc_msgSend_subGridAtGridCoord_width_height_(v129, v46, &v137, 1, v45);
            v87 = [TSCEDenseGrid alloc];
            v91 = objc_msgSend_initWithValueGrid_(v87, v88, v86, v89, v90);
            v134 = 0;
            v135 = 0;
            v136 = 0;
            v132 = objc_msgSend_gridValue_(TSCEGridValue, v92, v91, v93, v94);
            sub_2210ED5B8(&v134, &v132);

            v95 = TSCEFunctor::evaluateWithArgs(v131, contextCopy, &v134);
            v99 = objc_msgSend_errorWithContext_(v95, v96, contextCopy, v97, v98);
            v104 = v99;
            if (v99 && objc_msgSend_errorType(v99, v100, v101, v102, v103) == 168)
            {
              v107 = objc_msgSend_functionName(spec, v100, v105, v106, v103);
              v111 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v108, v107, v109, v110);
              v115 = objc_msgSend_errorValue_(TSCEErrorValue, v112, v111, v113, v114);

              v95 = v115;
            }

            objc_msgSend_setValue_atCoord_(v130, v100, v95, &v137, v103);

            v141 = &v134;
            sub_22107C2C0(&v141);

            ++v85;
            v45 = v127;
          }

          while (v128 != v85);
        }

        v116 = [TSCEDenseGrid alloc];
        v120 = objc_msgSend_initWithValueGrid_(v116, v117, v130, v118, v119);
        v31 = v124;
        v21 = objc_msgSend_gridValue_(TSCEGridValue, v121, v120, v122, v123);

        v28 = 0;
        v29 = v125;
        v23 = v126;
        goto LABEL_18;
      }

      v79 = objc_msgSend_functionName(spec, v37, v38, v39, v40);
      v28 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v80, v79, v131->_numArgs + 1, 2);

      v36 = objc_msgSend_raiseErrorOrConvert_(context, v81, v28, v82, v83);
    }

    v21 = v36;
LABEL_18:

    goto LABEL_19;
  }

  v28 = v24;
  v21 = objc_msgSend_raiseErrorOrConvert_(context, v25, v24, v26, v27);
LABEL_19:

LABEL_20:

  return v21;
}

@end