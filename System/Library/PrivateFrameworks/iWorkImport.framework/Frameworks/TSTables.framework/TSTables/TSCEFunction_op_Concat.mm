@interface TSCEFunction_op_Concat
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Concat

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  if (!objc_msgSend_isRegexString(v8, v10, v11, v12, v13) || !objc_msgSend_isRegexString(v9, v14, v15, v16, v17))
  {
    v80 = 0;
    if (v8)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v14, context, spec, 0, &v80);
      v19 = v80;
    }

    else
    {
      v19 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
    }

    v76 = v19;
    if (v9)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v9, v14, context, spec, 1, &v76);
      v57 = v76;

      v19 = v57;
    }

    else
    {
      v77 = 0;
      v78 = 0;
      v79 = 0;
    }

    memset(v75, 0, 19);
    if (v19)
    {
      v42 = objc_msgSend_raiseErrorOrConvert_(context, v14, v19, v16, v17);
LABEL_24:

      goto LABEL_25;
    }

    if (sub_221077330(&v81))
    {
      sub_221077390(&v81, &v77, context, &v74);
      v58 = *&v74._tskFormat;
      v74._tskFormat = 0;
      *&v74._formatType = 0;
      *v75 = v58;
      *&v75[16] = v74._durationFormat;
    }

    else
    {
      sub_221077424(&v81, &v77, context);
      *v75 = v81;
      *&v75[8] = v82;
      *&v75[16] = v83;
      v75[18] = BYTE2(v83);
    }

    v42 = sub_2210789F4(v75, v59, v60, v61, v62);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v63, context, v65, v66);
      if (v9)
      {
LABEL_20:
        objc_msgSend_formatWithContext_(v9, v63, context, v65, v66);
LABEL_23:
        TSCEFormat::formatByMergingWithFormat(&v73, &v72, v64, v65, v66, &v71);
        TSCEFormat::TSCEFormat(&v74, &v71);
        objc_msgSend_setFormat_(v42, v67, &v74, v68, v69);
        goto LABEL_24;
      }
    }

    else
    {
      memset(&v73, 0, sizeof(v73));
      if (v9)
      {
        goto LABEL_20;
      }
    }

    memset(&v72, 0, sizeof(v72));
    goto LABEL_23;
  }

  v19 = objc_msgSend_asStringValue(v8, v14, v18, v16, v17);
  v24 = objc_msgSend_asStringValue(v9, v20, v21, v22, v23);
  v29 = objc_msgSend_asString(v19, v25, v26, v27, v28);
  v34 = objc_msgSend_asString(v24, v30, v31, v32, v33);
  v38 = objc_msgSend_stringByAppendingString_(v29, v35, v34, v36, v37);
  v42 = objc_msgSend_stringValue_(TSCEStringValue, v39, v38, v40, v41);

  objc_msgSend_setIsRegex_(v42, v43, 1, v44, v45);
  if (objc_msgSend_isCaseSensitiveRegex(v19, v46, v47, v48, v49) && objc_msgSend_isCaseSensitiveRegex(v24, v50, v51, v52, v53))
  {
    objc_msgSend_setIsCaseSensitiveRegex_(v42, v54, 1, v55, v56);
  }

LABEL_25:

  return v42;
}

@end