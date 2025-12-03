@interface TSCEFunction_TOCOL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TOCOL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_functionIndex(spec, a2, context, spec, arguments);
  v9 = **arguments;
  v105 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 0, 0, &v105);
  v12 = v105;
  if (v12)
  {
    v17 = v12;
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v15, v16);
    goto LABEL_32;
  }

  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v28 = 0;
    goto LABEL_11;
  }

  v19 = *(*arguments + 8);
  if ((objc_msgSend_isTokenOrEmptyArg(v19, v20, v21, v22, v23) & 1) != 0 || objc_msgSend_deepType_(v19, v24, context, v25, v26) == 10)
  {
    v28 = 0;
    goto LABEL_7;
  }

  v104 = 0;
  v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v27, context, spec, 1, &v104);
  v17 = v104;
  v77 = objc_msgSend_integer(v72, v73, v74, v75, v76);

  if (v17)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v78, v17, v80, v81);
LABEL_42:

    goto LABEL_32;
  }

  if (v77 >= 4)
  {
    v86 = objc_msgSend_functionName(spec, v78, v79, v80, v81);
    v89 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v87, v86, 2, v88);
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v90, v89, v91, v92);

    goto LABEL_42;
  }

  v28 = v77;
LABEL_7:

  if (*(arguments + 1) - *arguments >= 0x11uLL)
  {
    v29 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v29, v30, v31, v32, v33))
    {
      v35 = 0;
    }

    else
    {
      v103 = 0;
      v35 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v29, v34, context, spec, 2, &v103);
      v82 = v103;
      if (v82)
      {
        v17 = v82;
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v83, v82, v84, v85);

        goto LABEL_32;
      }
    }

    goto LABEL_12;
  }

LABEL_11:
  v35 = 0;
LABEL_12:
  v102 = objc_msgSend_dimensions(v11, v13, v14, v15, v16);
  if (!(v102.height * v102.width))
  {
    v40 = objc_msgSend_emptyArrayError(TSCEError, v36, v37, v38, v39);
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v65, v40, v66, v67);
    goto LABEL_31;
  }

  HIDWORD(v100) = 0;
  v101 = 0;
  LODWORD(v100) = v8 == 349;
  *(&v100 + 4) = v8 != 349;
  v40 = objc_opt_new();
  contextCopy = context;
  v93 = contextCopy;
  specCopy = spec;
  v95 = 0;
  *&v96 = 0;
  *(&v96 + 7) = 0;
  v97 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v98 = 0;
  v99 = 0;
  do
  {
    v44 = objc_msgSend_valueAtGridCoord_accessContext_(v11, v41, *&v101, &v93, v42);
    v48 = v44;
    if (!v28)
    {
      goto LABEL_20;
    }

    if (objc_msgSend_deepType_(v44, v45, contextCopy, v46, v47, v93, specCopy, v95, v96, *(&v96 + 1), *&v97, v98, v99, v100, *(&v100 + 1)) != 9)
    {
      if (v28 & 0xFFFFFFFFFFFFFFFDLL) == 1 && (objc_msgSend_valueIsEmptyWithContext_(v48, v45, contextCopy, v49, v47))
      {
        goto LABEL_21;
      }

LABEL_20:
      objc_msgSend_setValue_atCoord_(v40, v45, v48, &v100 + 8, v47, v93);
      sub_2211786BC(&v100 + 2, &v100);
      goto LABEL_21;
    }

    if ((v28 & 0xFFFFFFFE) != 2)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v35)
    {
      v50 = TSCEGridDimensions::nextCoordColumnMajorOrder(&v102, &v101);
    }

    else
    {
      v50 = TSCEGridDimensions::nextCoordRowMajorOrder(&v102, &v101);
    }

    v101 = v50;
  }

  while (v101.column != 0x7FFFFFFF && v101.row != 0x7FFFFFFF);
  if (objc_msgSend_area(v40, v41, v51, v52, v42))
  {
    v57 = [TSCEDenseGrid alloc];
    v61 = objc_msgSend_initWithValueGrid_(v57, v58, v40, v59, v60);
    objc_msgSend_gridValue_(TSCEGridValue, v62, v61, v63, v64);
  }

  else
  {
    v61 = objc_msgSend_emptyArrayError(TSCEError, v53, v54, v55, v56);
    objc_msgSend_raiseErrorOrConvert_(contextCopy, v68, v61, v69, v70);
  }
  v18 = ;

LABEL_31:
  v17 = 0;
LABEL_32:

  return v18;
}

@end