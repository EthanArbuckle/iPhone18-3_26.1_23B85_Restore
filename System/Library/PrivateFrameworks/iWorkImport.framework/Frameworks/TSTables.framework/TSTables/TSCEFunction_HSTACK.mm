@interface TSCEFunction_HSTACK
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_HSTACK

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v83 = objc_msgSend_functionIndex(spec, a2, context, spec, arguments);
  if (*(arguments + 1) - *arguments == 8)
  {
    v9 = **arguments;
    v98[0] = 0;
    v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v8, context, spec, 0, 0, v98);
    v14 = v98[0];
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v12, v13);
    }

    else
    {
      v15 = v10;
      v10 = v15;
    }

    v72 = v15;
  }

  else
  {
    v20 = objc_opt_new();
    v21 = *(arguments + 1) - *arguments;
    if ((v21 >> 3) < 1)
    {
      v32 = 0;
LABEL_26:
      v46 = objc_msgSend_functionName(spec, v16, v17, v18, v19);
      v50 = objc_msgSend_sizeMismatchInputError_(TSCEError, v47, v46, v48, v49);
      v23 = objc_msgSend_errorValue_(TSCEErrorValue, v51, v50, v52, v53);

      contextCopy = objc_msgSend_dimensions(v20, v54, v55, v56, v57);
      v96 = 0;
      do
      {
        if ((objc_msgSend_hasValueAtCoord_(v20, v58, &v96, v59, v60) & 1) == 0)
        {
          objc_msgSend_setValue_atCoord_(v20, v61, v23, &v96, v62);
        }

        v63 = TSCEGridDimensions::nextCoordRowMajorOrder(&contextCopy, &v96);
        v96 = v63;
      }

      while (v63 != 0x7FFFFFFF && (v63 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000);
      v64 = [TSCEDenseGrid alloc];
      v68 = objc_msgSend_initWithValueGrid_(v64, v65, v20, v66, v67);
      v72 = objc_msgSend_gridValue_(TSCEGridValue, v69, v68, v70, v71);

      v14 = 0;
    }

    else
    {
      v22 = 0;
      v10 = 0;
      v85 = 0uLL;
      v84 = (v21 >> 3) & 0x7FFFFFFF;
      v82 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      while (1)
      {
        v23 = *(*arguments + 8 * v22);
        if (objc_msgSend_isTokenOrEmptyArg(v23, v24, v25, v26, v27))
        {
          v73 = objc_msgSend_functionName(spec, v28, v29, v30, v31);
          v77 = objc_msgSend_sizeMismatchInputError_(TSCEError, v74, v73, v75, v76);
          v72 = objc_msgSend_errorValue_(TSCEErrorValue, v78, v77, v79, v80);

          v14 = 0;
          goto LABEL_37;
        }

        v97 = 0;
        v32 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v23, v28, context, spec, v22, 0, &v97);
        v14 = v97;

        if (v14)
        {
          break;
        }

        if (objc_msgSend_canResolveToSingleError(v32, v33, v34, v35, v36))
        {
          v14 = objc_msgSend_errorWithContext_(v32, v33, context, v35, v36);
          if (v14)
          {
            break;
          }
        }

        v96 = objc_msgSend_dimensions(v32, v33, v37, v35, v36, *&v82);
        if (v96.height * v96.width)
        {
          v95 = 0;
          contextCopy = context;
          specCopy = spec;
          v89 = 0;
          v90 = v22;
          v91[0] = 0;
          *(v91 + 3) = 0;
          v92 = v82;
          v93 = 0;
          v94 = 0;
          do
          {
            v40 = objc_msgSend_valueAtGridCoord_accessContext_(v32, v38, *&v95, &contextCopy, v39);
            v86 = v85 >> 32;
            sub_2211786BC(&v86, &v95);
            objc_msgSend_setValue_atCoord_(v20, v41, v40, &v86, v42);
            v95 = TSCEGridDimensions::nextCoordRowMajorOrder(&v96, &v95);
          }

          while (v95.column != 0x7FFFFFFF && v95.row != 0x7FFFFFFF);
          v43 = v96.height + v85;
          if (v83 == 356)
          {
            v44 = 0;
          }

          else
          {
            v44 = v96.width + v85;
          }

          if (v83 == 356)
          {
            v45 = v43;
          }

          else
          {
            v45 = 0;
          }

          *(&v85 + 1) = v45;
          if (v83 != 356)
          {
            v43 = v96.width + v85;
          }

          *&v85 = __PAIR64__(v44, v43);
        }

        ++v22;
        v10 = v32;
        if (v22 == v84)
        {
          goto LABEL_26;
        }
      }

      v72 = objc_msgSend_raiseErrorOrConvert_(context, v33, v14, v35, v36);
    }

    v10 = v32;
LABEL_37:
  }

  return v72;
}

@end