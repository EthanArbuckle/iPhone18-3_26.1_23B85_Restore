@interface TSCEFunction_TRANSPOSE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_TRANSPOSE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v60 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, a3, a4, 0, 1, &v60);
  v14 = v60;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
    goto LABEL_14;
  }

  v16 = objc_msgSend_dimensions(v9, v10, v11, v12, v13);
  v17 = v16;
  v18 = HIDWORD(v16);
  memset(v59, 0, sizeof(v59));
  v53[0] = a3;
  v53[1] = a4;
  v54 = 0;
  v55[0] = 0;
  *(v55 + 7) = 0;
  v56 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v57 = 0;
  v58 = 0;
  if (!v17)
  {
LABEL_11:
    v52 = __PAIR64__(v17, v18);
    v38 = [TSCEDenseGrid alloc];
    isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v38, v39, v59, 0, 0, &v52);
    v14 = 0;
    v15 = objc_msgSend_gridValue_(TSCEGridValue, v41, isFlattened_dimensions, v42, v43);

    goto LABEL_13;
  }

  v21 = 0;
  while (1)
  {
    v22 = v18;
    v23 = v21;
    if (v18)
    {
      break;
    }

LABEL_10:
    if (++v21 == v17)
    {
      goto LABEL_11;
    }
  }

  while (1)
  {
    v52 = objc_msgSend_valueAtGridCoord_accessContext_(v9, v19, v23, v53, v20);
    if (!objc_msgSend_isNil(v52, v24, v25, v26, v27))
    {
      break;
    }

    v32 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v28, v29, v30, v31);
    v33 = v52;
    v52 = v32;

LABEL_9:
    sub_221179A54(v59, &v52);

    v23 += 0x100000000;
    if (!--v22)
    {
      goto LABEL_10;
    }
  }

  if (!objc_msgSend_isFunctorValue(v52, v28, v29, v30, v31))
  {
    goto LABEL_9;
  }

  v44 = objc_msgSend_functionName(a4, v34, v35, v36, v37);
  v47 = objc_msgSend_cannotAcceptLambdaError_argIndex_(TSCEError, v45, v44, 1, v46);
  v15 = objc_msgSend_errorValue_(TSCEErrorValue, v48, v47, v49, v50);

  v14 = 0;
LABEL_13:

  v53[0] = v59;
  sub_22107C2C0(v53);
LABEL_14:

  return v15;
}

@end