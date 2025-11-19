@interface TSCEFunction_T
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_T

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v12 = objc_msgSend_nativeType(v7, v8, v9, v10, v11);
  if (objc_msgSend_isNil(v7, v13, v14, v15, v16))
  {
    v21 = objc_msgSend_invalidReferenceError(TSCEError, v17, v18, v19, v20);
    v25 = objc_msgSend_raiseErrorOrConvert_(a3, v22, v21, v23, v24);
LABEL_3:
    v26 = v25;
LABEL_4:

    goto LABEL_33;
  }

  if (v12 != 6)
  {
    goto LABEL_20;
  }

  v60 = 0;
  v27 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v17, a3, a4, 0, &v60);
  v32 = v60;
  if (!v32)
  {
    if (objc_msgSend_isRange(v27, v28, v29, v30, v31))
    {
      v59 = 0;
      v35 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v33, a3, a4, 0, 0, &v59);
      v32 = v59;
      if (v32)
      {
        v26 = objc_msgSend_raiseErrorOrConvert_(a3, v36, v32, v38, v39);

        goto LABEL_8;
      }

      if (objc_msgSend_count(v35, v36, v37, v38, v39))
      {
        v58[0] = a3;
        v58[1] = a4;
        memset(&v58[2], 0, 19);
        *&v58[5] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v58[7] = 0;
        v58[8] = 0;
        v46 = objc_msgSend_valueAtIndex_accessContext_(v35, v44, 0, v58, v45);
      }

      else
      {
        v46 = objc_msgSend_nilValue(TSCENilValue, v40, v41, v42, v43);
      }

      v7 = v46;
      v57 = 0;
      v12 = objc_msgSend_deepType_outError_(v46, v47, a3, &v57, v48);
      v32 = v57;
    }

    else
    {
      v56 = 0;
      v12 = objc_msgSend_deepType_outError_(v27, v33, a3, &v56, v34);
      v32 = v56;
    }

    if (v32)
    {
      v26 = objc_msgSend_raiseErrorOrConvert_(a3, v17, v32, v19, v20);
      goto LABEL_9;
    }

LABEL_20:
    if (v12 == 9)
    {
      v21 = objc_msgSend_errorWithContext_(v7, v17, a3, v19, v20);
      v25 = objc_msgSend_raiseErrorOrConvert_(a3, v51, v21, v52, v53);
      goto LABEL_3;
    }

    if (v12 != 7)
    {
      if (v7)
      {
        objc_msgSend_formatWithContext_(v7, v17, a3, v19, v20);
      }

      else
      {
        memset(v58, 0, 32);
      }

      v26 = objc_msgSend_stringValue_format_(TSCEStringValue, v17, &stru_2834BADA0, v58, v20);
      goto LABEL_33;
    }

    v55 = 0;
    if (v7)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v7, v17, a3, a4, 0, &v55);
      v49 = v55;
      if (v49)
      {
        v21 = v49;
        v50 = objc_msgSend_raiseErrorOrConvert_(a3, v17, v49, v19, v20);
LABEL_30:
        v26 = v50;

        goto LABEL_4;
      }
    }

    else
    {
      memset(v58, 0, 24);
    }

    v21 = 0;
    v50 = sub_2210789F4(v58, v17, v18, v19, v20);
    goto LABEL_30;
  }

  v26 = objc_msgSend_raiseErrorOrConvert_(a3, v28, v32, v30, v31);
LABEL_8:

LABEL_9:
LABEL_33:

  return v26;
}

@end