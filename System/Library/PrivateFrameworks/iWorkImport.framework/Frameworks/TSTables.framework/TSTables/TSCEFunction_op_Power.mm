@interface TSCEFunction_op_Power
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Power

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v36 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v36);
  v12 = v36;
  v35 = v12;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v35);
  v15 = v35;

  if (v15)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v17, v18);
    goto LABEL_12;
  }

  v34 = 0;
  v20 = objc_msgSend_power_outError_(v11, v16, v14, &v34, v18);
  v15 = v34;
  if (!v15)
  {
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v21, context, v23, v24);
      if (v9)
      {
LABEL_7:
        objc_msgSend_formatWithContext_(v9, v21, context, v23, v24);
LABEL_10:
        TSCEFormat::formatByMergingWithFormat(&v32, &v31, v22, v23, v24, &v30);
        TSCEFormat::TSCEFormat(&v33, &v30);
        objc_msgSend_setFormat_(v20, v26, &v33, v27, v28);
        v25 = v20;
        goto LABEL_11;
      }
    }

    else
    {
      memset(&v32, 0, sizeof(v32));
      if (v9)
      {
        goto LABEL_7;
      }
    }

    memset(&v31, 0, sizeof(v31));
    goto LABEL_10;
  }

  v25 = objc_msgSend_raiseErrorOrConvert_(context, v21, v15, v23, v24);
LABEL_11:
  v19 = v25;

LABEL_12:

  return v19;
}

@end