@interface TSCEFunction_LOWER
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LOWER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v12 = v7;
  v28 = 0;
  if (v7)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v28);
    v13 = v28;
    if (v13)
    {
      v14 = v13;
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v8, v13, v10, v11);
      goto LABEL_6;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  v16 = objc_msgSend_locale(context, v8, v9, v10, v11);
  v21 = objc_msgSend_locale(v16, v17, v18, v19, v20);
  sub_2210786B4(&v29, v21, v27);
  v15 = sub_2210789F4(v27, v22, v23, v24, v25);

  v14 = 0;
LABEL_6:

  return v15;
}

@end