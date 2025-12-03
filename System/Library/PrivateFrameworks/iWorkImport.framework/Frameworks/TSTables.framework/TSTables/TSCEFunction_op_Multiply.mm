@interface TSCEFunction_op_Multiply
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Multiply

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v37 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v37);
  v12 = v37;
  v36 = v12;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v36);
  v15 = v36;

  if (v15)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v17, v18);
    goto LABEL_9;
  }

  v19 = objc_msgSend_multiply_context_(v11, v16, v14, context, v18);
  if (!v8)
  {
    memset(&v34, 0, sizeof(v34));
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_7:
    memset(&v33, 0, sizeof(v33));
    goto LABEL_8;
  }

  objc_msgSend_formatWithContext_(v8, v20, context, v22, v23);
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  objc_msgSend_formatWithContext_(v9, v20, context, v22, v23);
LABEL_8:
  TSCEFormat::formatByMergingWithFormat(&v34, &v33, v21, v22, v23, &v35);
  v28 = objc_msgSend_locale(context, v24, v25, v26, v27);
  TSCEFormat::formatByModifyingFormatAccordingToCurrencyStateOfValue(&v35, v19, v28, &v34);
  TSCEFormat::operator=(&v35, &v34);

  TSCEFormat::TSCEFormat(&v34, &v35);
  objc_msgSend_setFormat_(v19, v29, &v34, v30, v31);
LABEL_9:

  return v19;
}

@end