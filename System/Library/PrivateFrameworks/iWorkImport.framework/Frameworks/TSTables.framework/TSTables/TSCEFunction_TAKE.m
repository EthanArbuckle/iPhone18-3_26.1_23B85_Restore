@interface TSCEFunction_TAKE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
+ (id)subGrid:(id)a3 inputGrid:(id)a4 startAtCoord:(TSCEGridCoord)a5 endAtCoord:(TSCEGridCoord)a6 inputSize:(TSCEGridDimensions)a7 resultSize:(TSCEGridDimensions)a8;
@end

@implementation TSCEFunction_TAKE

+ (id)subGrid:(id)a3 inputGrid:(id)a4 startAtCoord:(TSCEGridCoord)a5 endAtCoord:(TSCEGridCoord)a6 inputSize:(TSCEGridDimensions)a7 resultSize:(TSCEGridDimensions)a8
{
  column = a6.column;
  v42 = a8;
  v43 = a7;
  v11 = a3;
  v12 = a4;
  v40 = 0;
  v41 = a5;
  v13 = objc_opt_new();
  v16 = v11;
  v34[0] = v16;
  v34[1] = 0;
  v35 = 0;
  v36[0] = 0xFFFFFFFFLL;
  *(v36 + 7) = 0;
  v37 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v38 = 0;
  v39 = 0;
  do
  {
    v17 = objc_msgSend_valueAtGridCoord_accessContext_(v12, v14, *&v41, v34, v15);
    objc_msgSend_setValue_atCoord_(v13, v18, v17, &v40, v19);
    v41 = TSCEGridDimensions::nextCoordRowMajorOrder(&v43, &v41);
    v40 = TSCEGridDimensions::nextCoordRowMajorOrder(&v42, &v40);
    LODWORD(v20) = v41.column;
    if (v41.column != 0x7FFFFFFF && v41.row != 0x7FFFFFFF)
    {
      if (v41.column <= column)
      {
        v21 = 1;
      }

      else
      {
        v41.column = v43.width - 1;
        v20 = TSCEGridDimensions::nextCoordRowMajorOrder(&v43, &v41);
        v41 = v20;
        v21 = HIDWORD(v20) != 0x7FFFFFFF;
      }

      if (v20 != 0x7FFFFFFF && v21 && v20 < a5.column)
      {
        v41.column = a5.column;
      }
    }

    *v22.i8 = v41;
    v22.u64[1] = v40;
    v23.i64[0] = 0x8000000080000000;
    v23.i64[1] = 0x8000000080000000;
  }

  while ((vmaxv_u16(vmovn_s32(vceqq_s32(v22, v23))) & 1) == 0);
  v24 = [TSCEDenseGrid alloc];
  v28 = objc_msgSend_initWithValueGrid_(v24, v25, v13, v26, v27);
  v32 = objc_msgSend_gridValue_(TSCEGridValue, v29, v28, v30, v31);

  return v32;
}

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v85 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, a3, a4, 0, 0, &v85);
  v10 = v85;
  if (v10)
  {
    v15 = v10;
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v11, v10, v13, v14);

    goto LABEL_58;
  }

  v17 = *a5;
  if (*(a5 + 1) - *a5 < 9uLL || (isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v17[1], v11, v12, v13, v14), v17 = *a5, (isTokenOrEmptyArg & 1) != 0))
  {
    v19 = 0;
    goto LABEL_6;
  }

  v42 = v17[1];
  v84 = 0;
  v43 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v11, a3, a4, 1, &v84);
  v47 = v84;
  if (v47)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v44, v47, v45, v46);
LABEL_54:

    goto LABEL_58;
  }

  v57 = objc_msgSend_errorForDuration_argumentIndex_(v43, v44, a4, 1, v46);
  if (v57)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v53, v57, v55, v56);
    v47 = v57;
    goto LABEL_54;
  }

  v83._decimal.w[0] = objc_msgSend_decimalRepresentation(v43, v53, v54, v55, v56);
  v83._decimal.w[1] = v64;
  v19 = TSUDecimal::truncatedIntegerValue(&v83);
  if (!v19)
  {
    v74 = objc_msgSend_emptyArrayError(TSCEError, v65, v66, v67, v68);
    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v75, v74, v76, v77);

    v47 = 0;
    goto LABEL_54;
  }

  v17 = *a5;
LABEL_6:
  if (*(a5 + 1) - v17 < 0x11uLL)
  {
    v26 = 0;
    goto LABEL_11;
  }

  v20 = v17[2];
  if ((objc_msgSend_isTokenOrEmptyArg(v20, v21, v22, v23, v24) & 1) == 0)
  {
    v82 = 0;
    v48 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v25, a3, a4, 2, &v82);
    v52 = v82;
    if (v52)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(a3, v49, v52, v50, v51);
    }

    else
    {
      v62 = objc_msgSend_errorForDuration_argumentIndex_(v48, v49, a4, 2, v51);
      if (v62)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(a3, v58, v62, v60, v61);
        v52 = v62;
      }

      else
      {
        v83._decimal.w[0] = objc_msgSend_decimalRepresentation(v48, v58, v59, v60, v61);
        v83._decimal.w[1] = v69;
        v26 = TSUDecimal::truncatedIntegerValue(&v83);
        if (v26)
        {

          goto LABEL_9;
        }

        v78 = objc_msgSend_emptyArrayError(TSCEError, v70, v71, v72, v73);
        v16 = objc_msgSend_raiseErrorOrConvert_(a3, v79, v78, v80, v81);

        v52 = 0;
      }
    }

    goto LABEL_58;
  }

  v26 = 0;
LABEL_9:

LABEL_11:
  v27 = objc_msgSend_dimensions(v9, v11, v12, v13, v14);
  v29 = HIDWORD(v27);
  if (v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = v27;
  }

  if (v19)
  {
    v31 = v19;
  }

  else
  {
    v31 = HIDWORD(v27);
  }

  if (v31 >= HIDWORD(v27))
  {
    v32 = HIDWORD(v27);
  }

  else
  {
    v32 = v31;
  }

  v33 = (v32 + HIDWORD(v27)) << 32;
  if (v29 > -v32)
  {
    v34 = -v32;
  }

  else
  {
    v34 = HIDWORD(v27);
  }

  if (v29 <= -v32)
  {
    v33 = 0;
  }

  if (v32 >= v29)
  {
    v35 = HIDWORD(v27);
  }

  else
  {
    LODWORD(v35) = v32;
  }

  if (v32 < 1)
  {
    v32 = HIDWORD(v27);
  }

  else
  {
    LODWORD(v34) = v35;
    v33 = 0;
  }

  v36 = -v30;
  v37 = (v30 + v27);
  if (v27 <= -v30)
  {
    LODWORD(v36) = v27;
    v37 = 0;
  }

  if (v30 >= v27)
  {
    v38 = v27;
  }

  else
  {
    v38 = v30;
  }

  if (v30 < 1)
  {
    v39 = v37;
  }

  else
  {
    LODWORD(v36) = v38;
    v39 = 0;
  }

  if (v30 < 1)
  {
    LODWORD(v30) = v27;
  }

  if (v36 == v27 && HIDWORD(v27) == v34)
  {
    v41 = v9;
  }

  else
  {
    v41 = objc_msgSend_subGrid_inputGrid_startAtCoord_endAtCoord_inputSize_resultSize_(TSCEFunction_TAKE, v28, a3, v9, v39 | v33, ((v30 - 1) | (v32 << 32)) - 0x100000000);
  }

  v16 = v41;
LABEL_58:

  return v16;
}

@end