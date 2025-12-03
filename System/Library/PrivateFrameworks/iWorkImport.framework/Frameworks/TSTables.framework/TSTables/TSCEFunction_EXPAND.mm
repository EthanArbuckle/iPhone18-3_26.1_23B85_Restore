@interface TSCEFunction_EXPAND
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EXPAND

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v96 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, &v96);
  v10 = v96;
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13, v14);
    goto LABEL_31;
  }

  v17 = objc_msgSend_dimensions(v9, v11, v12, v13, v14);
  v22 = v17;
  v23 = HIDWORD(v17);
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v30 = HIDWORD(v17);
    v37 = v17;
    goto LABEL_8;
  }

  v24 = *(*arguments + 8);
  LODWORD(v30) = v23;
  if ((objc_msgSend_isTokenOrEmptyArg(v24, v25, v26, v27, v28) & 1) == 0)
  {
    v95 = 0;
    v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v29, context, spec, 1, &v95);
    v15 = v95;
    if (v15)
    {
      v36 = objc_msgSend_raiseErrorOrConvert_(context, v32, v15, v34, v35);
LABEL_22:
      v16 = v36;

      goto LABEL_31;
    }

    v94._decimal.w[0] = objc_msgSend_decimalRepresentation(v31, v32, v33, v34, v35);
    v94._decimal.w[1] = v69;
    LODWORD(v30) = TSUDecimal::truncatedIntegerValue(&v94);
  }

  v37 = v22;
  if (*(arguments + 1) - *arguments >= 0x11uLL)
  {
    v24 = *(*arguments + 16);
    v37 = v22;
    if ((objc_msgSend_isTokenOrEmptyArg(v24, v70, v71, v72, v73) & 1) == 0)
    {
      v93 = 0;
      v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v74, context, spec, 2, &v93);
      v15 = v93;
      if (v15)
      {
        v36 = objc_msgSend_raiseErrorOrConvert_(context, v75, v15, v77, v78);
        goto LABEL_22;
      }

      v92 = v31;
      v94._decimal.w[0] = objc_msgSend_decimalRepresentation(v31, v75, v76, v77, v78);
      v94._decimal.w[1] = v79;
      v37 = TSUDecimal::truncatedIntegerValue(&v94);
    }
  }

  if (v30 >= v23)
  {
    if (v37 < v22)
    {
      v80 = objc_msgSend_functionName(spec, v18, v19, v20, v21);
      v82 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v87, 3, v80, 1, v22);
      v86 = objc_msgSend_raiseErrorOrConvert_(context, v88, v82, v89, v90);
      goto LABEL_29;
    }

LABEL_8:
    v94._decimal.w[0] = __PAIR64__(v30, v37);
    if (v37 * v30)
    {
      v38 = objc_msgSend_padWithValuesNotProvided_(TSCEError, v18, @"EXPAND", v20, v21);
      v42 = objc_msgSend_errorValue_(TSCEErrorValue, v39, v38, v40, v41);

      if (*(arguments + 1) - *arguments >= 0x19uLL)
      {
        v46 = *(*arguments + 24);
        if ((objc_msgSend_isTokenOrEmptyArg(v46, v47, v48, v49, v50) & 1) == 0 && objc_msgSend_deepType_(v46, v51, context, v52, v53) != 9)
        {
          v54 = v46;

          v42 = v54;
        }
      }

      v55 = objc_msgSend_asValueGrid_(v9, v43, context, v44, v45);
      objc_msgSend_padUnsetWithValue_forDimensions_(v55, v56, v42, &v94, v57);
      v58 = [TSCEDenseGrid alloc];
      v62 = objc_msgSend_initWithValueGrid_(v58, v59, v55, v60, v61);
      v16 = objc_msgSend_gridValue_(TSCEGridValue, v63, v62, v64, v65);
    }

    else
    {
      v42 = objc_msgSend_emptyArrayError(TSCEError, v18, v19, v20, v21);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v66, v42, v67, v68);
    }

    goto LABEL_30;
  }

  v80 = objc_msgSend_functionName(spec, v18, v19, v20, v21);
  v82 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v81, 2, v80, 1, v23);
  v86 = objc_msgSend_raiseErrorOrConvert_(context, v83, v82, v84, v85);
LABEL_29:
  v16 = v86;

LABEL_30:
  v15 = 0;
LABEL_31:

  return v16;
}

@end