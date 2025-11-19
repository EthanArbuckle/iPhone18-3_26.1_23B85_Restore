@interface TSCEFunction_MDETERM
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_MDETERM

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v71 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, a3, a4, 0, 0, &v71);
  v9 = v71;
  if (v9)
  {
    v14 = v9;
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v9, v12, v13);
    goto LABEL_21;
  }

  v16 = objc_msgSend_dimensions(v8, v10, v11, v12, v13);
  if (HIDWORD(v16) * v16)
  {
    if (v16 >> 33 <= 4 && v16 < 0xA)
    {
      v32 = objc_msgSend_asValueGrid_(v8, v17, a3, v19, v20);
      objc_msgSend_deepResolveInPlace_(v32, v33, a3, v34, v35);
      v36 = a3;
      v65[0] = v36;
      v65[1] = a4;
      v66 = 0;
      v67[0] = 0;
      *(v67 + 7) = 0;
      v68 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v69 = 0;
      v70 = 0;
      v64 = 0;
      v39 = objc_msgSend_asMatrixWithAccessContext_outError_(v32, v37, v65, &v64, v38);
      v40 = v64;
      v14 = v40;
      if (v40)
      {
        v44 = objc_msgSend_raiseErrorOrConvert_(v36, v41, v40, v42, v43);
      }

      else
      {
        v62 = 0;
        v45 = objc_msgSend_determinantWithError_(v39, v41, &v62, v42, v43);
        v47 = v46;
        v48 = v62;
        v14 = v48;
        v63[0] = v45;
        v63[1] = v47;
        if (v48)
        {
          if (objc_msgSend_errorType(v48, v49, v50, v51, v52) == 145)
          {
            v57 = objc_msgSend_functionName(a4, v53, v54, v55, v56);
            v60 = objc_msgSend_matrixNotSquareError_argIndex_(TSCEError, v58, v57, 1, v59);

            v14 = v60;
          }

          v44 = objc_msgSend_raiseErrorOrConvert_(v36, v53, v14, v55, v56);
        }

        else
        {
          v44 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v49, v63, v51, v52);
        }
      }

      v15 = v44;

      goto LABEL_20;
    }

    v32 = objc_msgSend_functionName(a4, v17, v18, v19, v20);
    v25 = objc_msgSend_matrixTooLargeError_(TSCEError, v22, v32, v23, v24);
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v26, v25, v27, v28);
  }

  else
  {
    v32 = objc_msgSend_emptyArrayError(TSCEError, v17, v18, v19, v20);
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v29, v32, v30, v31);
  }

  v14 = 0;
LABEL_20:

LABEL_21:

  return v15;
}

@end