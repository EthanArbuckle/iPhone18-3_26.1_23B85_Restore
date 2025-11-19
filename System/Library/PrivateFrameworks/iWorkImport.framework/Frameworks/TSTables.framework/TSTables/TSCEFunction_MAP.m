@interface TSCEFunction_MAP
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_MAP

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = ((*(a5 + 1) - *a5) >> 3) - 1;
  v9 = *(*a5 + 8 * v8);
  v125 = 0;
  v106 = objc_msgSend_asFunctorValue_functionSpec_argumentIndex_outError_(v9, v10, a3, a4, v8, &v125);
  v15 = v125;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v15, v13, v14);
LABEL_30:
    v94 = v16;
    goto LABEL_31;
  }

  v109 = objc_msgSend_functor(v106, v11, v12, v13, v14);
  if (v8 != v109->_numArgs)
  {
    v95 = objc_msgSend_functionName(a4, v17, v18, v19, v20);
    v15 = objc_msgSend_wrongArityForLambdaError_providedArity_expectedArity_(TSCEError, v96, v95, v109->_numArgs + 1, (v8 + 1));

    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v97, v15, v98, v99);
    goto LABEL_30;
  }

  v122 = 0;
  v123 = 0;
  v124 = 0;
  sub_221299CEC(&v122, v8);
  v121 = 0;
  if (v8)
  {
    v25 = 0;
    while (1)
    {
      if (objc_msgSend_isTokenOrEmptyArg(*(*a5 + 8 * v25), v21, v22, v23, v24))
      {
        v101 = objc_msgSend_requiredArgumentMissingError(TSCEError, v26, v27, v28, v29);
        v94 = objc_msgSend_errorValue_(TSCEErrorValue, v102, v101, v103, v104);

        goto LABEL_35;
      }

      v30 = *(*a5 + 8 * v25);
      v120 = 0;
      v31 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v30, v26, a3, a4, v25, 0, &v120);
      v15 = v120;
      v114[0] = v31;
      if (v15)
      {
        break;
      }

      v36 = objc_msgSend_dimensions(v31, v32, v33, v34, v35);
      if (v121.width < v36)
      {
        v121.width = v36;
      }

      if (v121.height < HIDWORD(v36))
      {
        v121.height = HIDWORD(v36);
      }

      sub_22121488C(&v122, v114);

      if (v8 == ++v25)
      {
        goto LABEL_13;
      }
    }

    v94 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v15, v34, v35);
  }

  else
  {
LABEL_13:
    v105 = v9;
    v108 = objc_opt_new();
    v114[0] = a3;
    v114[1] = a4;
    v115 = 0;
    v116[0] = 0;
    *(v116 + 7) = 0;
    v117 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v118 = 0;
    v119 = 0;
    v113 = 0;
    v107 = v114[0];
    do
    {
      memset(v112, 0, sizeof(v112));
      v37 = v122;
      v38 = v123;
      while (v37 != v38)
      {
        v39 = *v37;
        v44 = objc_msgSend_dimensions(v39, v40, v41, v42, v43);
        if (v113.row >= HIDWORD(v44) || v113.column >= v44)
        {
          v50 = objc_msgSend_functionName(a4, v45, v46, v47, v48);
          v54 = objc_msgSend_outOfArrayBoundsError_(TSCEError, v51, v50, v52, v53);
          v111 = objc_msgSend_errorValue_(TSCEErrorValue, v55, v54, v56, v57);
          sub_2210ED5B8(v112, &v111);
        }

        else
        {
          v126[0] = objc_msgSend_valueAtGridCoord_accessContext_(v39, v45, *&v113, v114, v48);
          sub_221179A54(v112, v126);
        }

        ++v37;
      }

      v58 = TSCEFunctor::evaluateWithArgs(v109, v107, v112);
      v62 = objc_msgSend_errorWithContext_(v58, v59, v107, v60, v61);
      v67 = v62;
      if (v62 && objc_msgSend_errorType(v62, v63, v64, v65, v66) == 168)
      {
        v71 = objc_msgSend_functionName(a4, v63, v68, v69, v70);
        v75 = objc_msgSend_evaluationRecursingTooDeepError_(TSCEError, v72, v71, v73, v74);
        v79 = objc_msgSend_errorValue_(TSCEErrorValue, v76, v75, v77, v78);

        v58 = v79;
      }

      objc_msgSend_collectAndApplyWarnings_functionSpec_arguments_result_(a1, v63, v107, a4, v112, v58, v105);
      objc_msgSend_clearAllWarnings(v107, v80, v81, v82, v83);
      objc_msgSend_setValue_atCoord_(v108, v84, v58, &v113, v85);
      v113 = TSCEGridDimensions::nextCoordRowMajorOrder(&v121, &v113);

      v126[0] = v112;
      sub_22107C2C0(v126);
    }

    while (v113.column != 0x7FFFFFFF && v113.row != 0x7FFFFFFF);
    v86 = [TSCEDenseGrid alloc];
    v90 = objc_msgSend_initWithValueGrid_(v86, v87, v108, v88, v89);
    v9 = v105;
    v94 = objc_msgSend_gridValue_(TSCEGridValue, v91, v90, v92, v93);

LABEL_35:
    v15 = 0;
  }

  v114[0] = &v122;
  sub_22107C2C0(v114);
LABEL_31:

  return v94;
}

@end