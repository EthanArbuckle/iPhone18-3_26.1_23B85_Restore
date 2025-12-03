@interface TSCEFunction_MMULT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MMULT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v114[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 0, v114);
  v10 = v114[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12, v13);
    goto LABEL_15;
  }

  v16 = *(*arguments + 8);
  v113 = 0;
  v97 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v16, v11, context, spec, 1, 0, &v113);
  v17 = v113;
  if (!v17)
  {
    v23 = objc_msgSend_dimensions(v9, v18, v19, v20, v21);
    v32 = objc_msgSend_dimensions(v97, v24, v25, v26, v27);
    if (HIDWORD(v23) * v23)
    {
      v33 = HIDWORD(v32) * v32 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33)
    {
      v34 = objc_msgSend_emptyArrayError(TSCEError, v28, v29, v30, v31);
      v38 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36, v37);
    }

    else
    {
      v40 = objc_msgSend_functionName(spec, v28, v29, v30, v31);
      v14 = objc_msgSend_checkForTooLargeMatrixNumColumns_numRows_functionName_(TSCEError, v41, v23, HIDWORD(v23), v40);

      if (v14)
      {
        goto LABEL_23;
      }

      v46 = objc_msgSend_functionName(spec, v42, v43, v44, v45);
      v14 = objc_msgSend_checkForTooLargeMatrixNumColumns_numRows_functionName_(TSCEError, v47, v32, HIDWORD(v32), v46);

      if (v14)
      {
        goto LABEL_23;
      }

      if (v23 == HIDWORD(v32))
      {
        v49 = objc_msgSend_functionName(spec, v42, v48, v44, v45);
        v14 = objc_msgSend_checkForTooLargeMatrixNumColumns_numRows_functionName_(TSCEError, v50, v32, HIDWORD(v23), v49);

        if (v14)
        {
LABEL_23:
          v22 = objc_msgSend_raiseErrorOrConvert_(context, v42, v14, v44, v45);
          goto LABEL_5;
        }

        v34 = objc_msgSend_asValueGrid_(v9, v42, context, v44, v45);
        v57 = objc_msgSend_asValueGrid_(v97, v54, context, v55, v56);
        objc_msgSend_deepResolveInPlace_(v34, v58, context, v59, v60);
        objc_msgSend_deepResolveInPlace_(v57, v61, context, v62, v63);
        contextCopy = context;
        v107[0] = contextCopy;
        v107[1] = spec;
        v108 = 0;
        v109[0] = 0;
        *(v109 + 7) = 0;
        v110 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v111 = 0;
        v112 = 0;
        v106 = 0;
        v67 = objc_msgSend_asMatrixWithAccessContext_outError_(v34, v65, v107, &v106, v66);
        v68 = v106;
        if (v68)
        {
          v14 = v68;
          v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v69, v68, v70, v71);
        }

        else
        {
          v72 = contextCopy;
          v100[0] = v72;
          v100[1] = spec;
          v101 = 0;
          v102[0] = 1;
          *(v102 + 7) = 0;
          v103 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
          v104 = 0;
          v105 = 0;
          v99 = 0;
          v75 = objc_msgSend_asMatrixWithAccessContext_outError_(v57, v73, v100, &v99, v74);
          v76 = v99;
          if (v76)
          {
            v14 = v76;
            v15 = objc_msgSend_raiseErrorOrConvert_(v72, v77, v76, v78, v79);
          }

          else
          {
            v98 = 0;
            v80 = objc_msgSend_multiplyBy_outError_(v67, v77, v75, &v98, v79);
            v14 = v98;
            if (v14)
            {
              v15 = objc_msgSend_raiseErrorOrConvert_(v72, v81, v14, v82, v83);
            }

            else
            {
              v84 = [TSCEValueGrid alloc];
              v88 = objc_msgSend_initWithMatrix_(v84, v85, v80, v86, v87);
              v89 = [TSCEDenseGrid alloc];
              v93 = objc_msgSend_initWithValueGrid_(v89, v90, v88, v91, v92);
              v15 = objc_msgSend_gridValue_(TSCEGridValue, v94, v93, v95, v96);
            }
          }
        }

LABEL_13:
        goto LABEL_14;
      }

      v34 = objc_msgSend_wrongSizeForMatrixMultiplyError(TSCEError, v42, v48, v44, v45);
      v38 = objc_msgSend_raiseErrorOrConvert_(context, v51, v34, v52, v53);
    }

    v15 = v38;
    v14 = 0;
    goto LABEL_13;
  }

  v14 = v17;
  v22 = objc_msgSend_raiseErrorOrConvert_(context, v18, v17, v20, v21);
LABEL_5:
  v15 = v22;
LABEL_14:

LABEL_15:

  return v15;
}

@end