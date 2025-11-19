@interface TSCEFunction_WRAPCOLS
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_WRAPCOLS

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = objc_msgSend_functionIndex(a4, a2, a3, a4, a5);
  v9 = **a5;
  v114[0] = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, a3, a4, 0, 0, v114);
  v16 = v114[0];
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v16, v14, v15);
    goto LABEL_39;
  }

  if (objc_msgSend_dimensions(v11, v12, v13, v14, v15) >> 32 != 1 && objc_msgSend_dimensions(v11, v18, v19, v20, v21) != 1)
  {
    v26 = objc_msgSend_functionName(a4, v22, v23, v24, v25);
    v32 = objc_msgSend_requiresOneDimArrayInputError_argumentNumber_(TSCEError, v66, v26, 1, v67);
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v68, v32, v69, v70);
    v16 = 0;
    goto LABEL_38;
  }

  v26 = *(*a5 + 8);
  v113 = 0;
  v102 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, a3, a4, 1, &v113);
  v16 = v113;
  if (!v16)
  {
    if (objc_msgSend_integer(v102, v28, v29, v30, v31) <= 0)
    {
      v51 = objc_msgSend_functionName(a4, v33, v34, v35, v36);
      v72 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v71, 1, v51, 1, 0.0);
      v32 = v102;
      v76 = objc_msgSend_raiseErrorOrConvert_(a3, v73, v72, v74, v75);
    }

    else
    {
      v101 = v26;
      v103._decimal.w[0] = objc_msgSend_decimalRepresentation(v102, v33, v34, v35, v36);
      v103._decimal.w[1] = v37;
      v38 = TSUDecimal::truncatedIntegerValue(&v103);
      v43 = objc_msgSend_functionName(a4, v39, v40, v41, v42);
      v47 = objc_msgSend_padWithValuesNotProvided_(TSCEError, v44, v43, v45, v46);
      v51 = objc_msgSend_errorValue_(TSCEErrorValue, v48, v47, v49, v50);

      if (*(a5 + 1) - *a5 < 0x11uLL)
      {
        v26 = v101;
        v32 = v102;
      }

      else
      {
        v56 = *(*a5 + 16);
        v26 = v101;
        v32 = v102;
        if ((objc_msgSend_isTokenOrEmptyArg(v56, v57, v58, v59, v60) & 1) == 0 && objc_msgSend_deepType_(v56, v61, a3, v62, v63) != 9)
        {
          v64 = v56;
          v65 = v51;
          v51 = v64;
        }
      }

      v112 = objc_msgSend_dimensions(v11, v52, v53, v54, v55);
      if (v112.height * v112.width)
      {
        *&v110[8] = 0;
        v111 = 0;
        v109 = v8 == 358;
        *v110 = v8 != 358;
        v81 = objc_opt_new();
        v103._decimal.w[0] = a3;
        v103._decimal.w[1] = 0;
        v104 = 0;
        v105[0] = 0xFFFFFFFFLL;
        *(v105 + 7) = 0;
        v106 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v107 = 0;
        v108 = 0;
        do
        {
          v84 = objc_msgSend_valueAtGridCoord_accessContext_(v11, v82, *&v111, &v103, v83);
          objc_msgSend_setValue_atCoord_(v81, v85, v84, &v110[4], v86);
          sub_2211786BC(&v110[4], &v109);
          if (v8 == 358)
          {
            if (*&v110[4] == v38)
            {
              *&v110[4] = 0;
              ++*&v110[8];
            }

            v87 = TSCEGridDimensions::nextCoordRowMajorOrder(&v112, &v111);
          }

          else
          {
            if (*&v110[8] == v38)
            {
              *&v110[4] = (*&v110[4] + 1);
            }

            v87 = TSCEGridDimensions::nextCoordColumnMajorOrder(&v112, &v111);
          }

          v111 = v87;
        }

        while (v111.column != 0x7FFFFFFF && v111.row != 0x7FFFFFFF);
        v88 = *&v110[4];
        if (*&v110[4] && *&v110[8])
        {
          if (v8 == 358)
          {
            while (v88 < v38)
            {
              objc_msgSend_setValue_atCoord_(v81, v82, v51, &v110[4], v83);
              v88 = ++*&v110[4];
            }
          }

          else
          {
            for (; *&v110[8] < v38; ++*&v110[8])
            {
              objc_msgSend_setValue_atCoord_(v81, v82, v51, &v110[4], v83);
            }
          }
        }

        v92 = [TSCEDenseGrid alloc];
        v96 = objc_msgSend_initWithValueGrid_(v92, v93, v81, v94, v95);
        v17 = objc_msgSend_gridValue_(TSCEGridValue, v97, v96, v98, v99);

        goto LABEL_37;
      }

      v72 = objc_msgSend_emptyArrayError(TSCEError, v77, v78, v79, v80);
      v76 = objc_msgSend_raiseErrorOrConvert_(a3, v89, v72, v90, v91);
    }

    v17 = v76;

LABEL_37:
    goto LABEL_38;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(a3, v28, v16, v30, v31);
  v32 = v102;
LABEL_38:

LABEL_39:

  return v17;
}

@end