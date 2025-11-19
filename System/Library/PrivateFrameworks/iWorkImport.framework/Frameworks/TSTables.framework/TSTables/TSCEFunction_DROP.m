@interface TSCEFunction_DROP
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DROP

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v69 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, a3, a4, 0, 0, &v69);
  v10 = v69;
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v13, v14);
LABEL_3:

    goto LABEL_4;
  }

  v18 = *a5;
  if (*(a5 + 1) - *a5 < 9uLL || (isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v18[1], v11, v12, v13, v14), v18 = *a5, (isTokenOrEmptyArg & 1) != 0))
  {
    v20 = 0;
    goto LABEL_10;
  }

  v42 = v18[1];
  v68 = 0;
  v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v11, a3, a4, 1, &v68);
  v15 = v68;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v44, v15, v45, v46);
LABEL_40:

    goto LABEL_3;
  }

  v58 = objc_msgSend_errorForDuration_argumentIndex_(v43, v44, a4, 1, v46);
  if (v58)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v54, v58, v56, v57);
    v15 = v58;
    goto LABEL_40;
  }

  v67._decimal.w[0] = objc_msgSend_decimalRepresentation(v43, v54, v55, v56, v57);
  v67._decimal.w[1] = v64;
  v20 = TSUDecimal::truncatedIntegerValue(&v67);

  v18 = *a5;
LABEL_10:
  if (*(a5 + 1) - v18 < 0x11uLL)
  {
    v27 = 0;
LABEL_15:
    v28 = objc_msgSend_dimensions(v9, v11, v12, v13, v14);
    v33 = HIDWORD(v28);
    if (v27 >= v28 || v20 >= v33)
    {
      goto LABEL_19;
    }

    if (v20 < 0)
    {
      if (v33 <= -v20)
      {
        goto LABEL_19;
      }

      v40 = 0;
      v39 = HIDWORD(v28) + v20;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = HIDWORD(v28) - v20;
      v40 = v20;
      if ((v27 & 0x8000000000000000) == 0)
      {
LABEL_22:
        v41 = v28 - v27;
LABEL_31:
        if (v41 == v28 && v39 == HIDWORD(v28))
        {
          v53 = v9;
        }

        else
        {
          v53 = objc_msgSend_subGrid_inputGrid_startAtCoord_endAtCoord_inputSize_resultSize_(TSCEFunction_TAKE, v29, a3, v9, v27 | (v40 << 32), (v27 + v41 - 1) | ((v39 + v40 - 1) << 32));
        }

        v16 = v53;
        goto LABEL_4;
      }
    }

    if (v28 > -v27)
    {
      v41 = v28 + v27;
      LODWORD(v27) = 0;
      goto LABEL_31;
    }

LABEL_19:
    v35 = objc_msgSend_emptyArrayError(TSCEError, v29, v30, v31, v32);
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v36, v35, v37, v38);

    goto LABEL_4;
  }

  v21 = v18[2];
  if (objc_msgSend_isTokenOrEmptyArg(v21, v22, v23, v24, v25))
  {
    v27 = 0;
LABEL_13:

    goto LABEL_15;
  }

  v66 = 0;
  v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v26, a3, a4, 2, &v66);
  v51 = v66;
  if (v51)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v48, v51, v49, v50);
  }

  else
  {
    v63 = objc_msgSend_errorForDuration_argumentIndex_(v47, v48, a4, 2, v50);
    if (!v63)
    {
      v67._decimal.w[0] = objc_msgSend_decimalRepresentation(v47, v59, v60, v61, v62);
      v67._decimal.w[1] = v65;
      v27 = TSUDecimal::truncatedIntegerValue(&v67);

      goto LABEL_13;
    }

    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v59, v63, v61, v62);
    v51 = v63;
  }

LABEL_4:

  return v16;
}

@end