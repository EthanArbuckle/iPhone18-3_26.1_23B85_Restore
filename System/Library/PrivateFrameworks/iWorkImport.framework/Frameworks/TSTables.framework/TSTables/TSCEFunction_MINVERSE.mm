@interface TSCEFunction_MINVERSE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MINVERSE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v80 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 0, &v80);
  v9 = v80;
  if (v9)
  {
    v14 = v9;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v9, v12, v13);
LABEL_3:
    v16 = v15;
    goto LABEL_22;
  }

  v17 = objc_msgSend_dimensions(v8, v10, v11, v12, v13);
  if (!(HIDWORD(v17) * v17))
  {
    v14 = objc_msgSend_emptyArrayError(TSCEError, v18, v19, v20, v21);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v29, v14, v30, v31);
    goto LABEL_3;
  }

  if (v17 >> 33 > 4 || v17 >= 0xA)
  {
    v14 = objc_msgSend_functionName(spec, v18, v19, v20, v21);
    v32 = objc_msgSend_matrixTooLargeError_(TSCEError, v23, v14, v24, v25);
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v26, v32, v27, v28);
  }

  else
  {
    v32 = objc_msgSend_asValueGrid_(v8, v18, context, v20, v21);
    objc_msgSend_deepResolveInPlace_(v32, v33, context, v34, v35);
    contextCopy = context;
    v74[0] = contextCopy;
    v74[1] = spec;
    v75 = 0;
    v76[0] = 0;
    *(v76 + 7) = 0;
    v77 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v78 = 0;
    v79 = 0;
    v73 = 0;
    v39 = objc_msgSend_asMatrixWithAccessContext_outError_(v32, v37, v74, &v73, v38);
    v40 = v73;
    if (v40)
    {
      v14 = v40;
      v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v41, v40, v42, v43);
    }

    else
    {
      v72 = 0;
      v44 = objc_msgSend_inverseWithError_(v39, v41, &v72, v42, v43);
      v45 = v72;
      if (v45)
      {
        v14 = v45;
        if (objc_msgSend_errorType(v45, v46, v47, v48, v49) == 145)
        {
          v54 = objc_msgSend_functionName(spec, v50, v51, v52, v53);
          v57 = objc_msgSend_matrixNotSquareError_argIndex_(TSCEError, v55, v54, 1, v56);

          v14 = v57;
        }

        v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v50, v14, v52, v53);
      }

      else
      {
        v58 = [TSCEValueGrid alloc];
        v62 = objc_msgSend_initWithMatrix_(v58, v59, v44, v60, v61);
        v63 = [TSCEDenseGrid alloc];
        v67 = objc_msgSend_initWithValueGrid_(v63, v64, v62, v65, v66);
        v16 = objc_msgSend_gridValue_(TSCEGridValue, v68, v67, v69, v70);

        v14 = 0;
      }
    }
  }

LABEL_22:

  return v16;
}

@end