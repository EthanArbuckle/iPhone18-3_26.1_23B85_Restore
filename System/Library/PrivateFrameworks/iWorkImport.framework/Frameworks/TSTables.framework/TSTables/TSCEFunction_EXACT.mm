@interface TSCEFunction_EXACT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EXACT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v33 = 0;
  v10 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v33);
  v11 = v33;
  v12 = *(*arguments + 8);
  v32 = v11;
  v14 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 1, &v32);
  v15 = v32;

  if (v15)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v18, v19);
    goto LABEL_9;
  }

  if (!v8)
  {
    memset(&v30, 0, sizeof(v30));
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    memset(&v29, 0, sizeof(v29));
    goto LABEL_8;
  }

  objc_msgSend_formatWithContext_(v8, v16, context, v18, v19);
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  objc_msgSend_formatWithContext_(v12, v16, context, v18, v19);
LABEL_8:
  TSCEFormat::formatByMergingWithFormat(&v30, &v29, v17, v18, v19, v31);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v21, v14, v22, v23);
  v20 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v25, isEqualToString, v31, v26);
LABEL_9:
  v27 = v20;

  return v27;
}

@end