@interface TSCEFunction_op_LE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_op_LE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v9 = **a5;
  v10 = *(*a5 + 8);
  v15 = objc_msgSend_checkType_right_context_(a1, v11, v9, v10, a3);
  if (!v15)
  {
    if (objc_msgSend_deepType_(v9, v12, a3, v13, v14) == 7 && objc_msgSend_deepType_(v10, v17, a3, v18, v19) == 7)
    {
      v37 = 0;
      v21 = objc_msgSend_asString_outError_(v9, v17, a3, &v37, v20);
      v22 = v37;
      v36 = v22;
      v25 = objc_msgSend_asString_outError_(v10, v23, a3, &v36, v24);
      v15 = v36;

      v29 = objc_msgSend_caseInsensitiveCompare_(v21, v26, v25, v27, v28);
      if (!v15)
      {
LABEL_6:
        v33 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v30, v29 != 1, v31, v32);
        goto LABEL_10;
      }
    }

    else
    {
      v35 = 0;
      v29 = objc_msgSend_compareValuesWithContextLeft_right_context_functionSpec_outError_(TSCEValue, v17, v9, v10, a3, a4, &v35);
      v15 = v35;
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    v16 = objc_msgSend_raiseErrorOrConvert_(a3, v30, v15, v31, v32);
    goto LABEL_9;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(a3, v12, v15, v13, v14);
LABEL_9:
  v33 = v16;

LABEL_10:

  return v33;
}

@end