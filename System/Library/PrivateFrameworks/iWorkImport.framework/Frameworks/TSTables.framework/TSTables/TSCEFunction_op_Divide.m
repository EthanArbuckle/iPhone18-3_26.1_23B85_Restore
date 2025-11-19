@interface TSCEFunction_op_Divide
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_op_Divide

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v9 = *(*a5 + 8);
  v40 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, a3, a4, 0, &v40);
  v12 = v40;
  v39 = v12;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, a3, a4, 1, &v39);
  v15 = v39;

  if (v15)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v15, v17, v18);
    goto LABEL_12;
  }

  v38 = 0;
  v20 = objc_msgSend_divide_outError_(v11, v16, v14, &v38, v18);
  v15 = v38;
  if (!v15)
  {
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v21, a3, v23, v24);
      if (v9)
      {
LABEL_7:
        objc_msgSend_formatWithContext_(v9, v21, a3, v23, v24);
LABEL_10:
        TSCEFormat::formatByMergingWithFormat(&v36, &v35, v22, v23, v24, &v37);
        v30 = objc_msgSend_locale(a3, v26, v27, v28, v29);
        TSCEFormat::formatByModifyingFormatAccordingToCurrencyStateOfValue(&v37, v20, v30, &v36);
        TSCEFormat::operator=(&v37, &v36);

        TSCEFormat::TSCEFormat(&v36, &v37);
        objc_msgSend_setFormat_(v20, v31, &v36, v32, v33);
        v25 = v20;
        goto LABEL_11;
      }
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
      if (v9)
      {
        goto LABEL_7;
      }
    }

    memset(&v35, 0, sizeof(v35));
    goto LABEL_10;
  }

  v25 = objc_msgSend_raiseErrorOrConvert_(a3, v21, v15, v23, v24);
LABEL_11:
  v19 = v25;

LABEL_12:

  return v19;
}

@end