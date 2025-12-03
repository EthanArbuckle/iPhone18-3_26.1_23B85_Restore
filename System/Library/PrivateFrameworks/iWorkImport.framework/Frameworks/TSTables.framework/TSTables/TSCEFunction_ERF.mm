@interface TSCEFunction_ERF
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ERF

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v55[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v55);
  v11 = v55[0];
  if (v11)
  {
    v16 = v11;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14, v15);
    goto LABEL_12;
  }

  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v12, context, v14, v15);
  }

  else
  {
    memset(&v54, 0, sizeof(v54));
  }

  v18 = objc_msgSend_erf(v10, v12, v13, v14, v15);
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    goto LABEL_9;
  }

  v19 = *(*arguments + 8);
  if (objc_msgSend_isTokenOrEmptyArg(v19, v20, v21, v22, v23))
  {

LABEL_9:
    v25 = v18;
    goto LABEL_10;
  }

  v53 = 0;
  v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v24, context, spec, 1, &v53);
  v16 = v53;
  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v31, v16, v33, v34);

    goto LABEL_11;
  }

  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v31, context, v33, v34);
  }

  else
  {
    memset(&v51, 0, sizeof(v51));
  }

  if (v19)
  {
    objc_msgSend_formatWithContext_(v19, v31, context, v33, v34);
  }

  else
  {
    memset(&v50, 0, sizeof(v50));
  }

  TSCEFormat::formatByMergingWithFormat(&v51, &v50, v32, v33, v34, &v52);
  TSCEFormat::operator=(&v54, &v52);
  v39 = objc_msgSend_erf(v30, v35, v36, v37, v38);
  v44 = objc_msgSend_erf(v10, v40, v41, v42, v43);
  v49 = 0;
  v25 = objc_msgSend_subtract_functionSpec_outError_(v39, v45, v44, spec, &v49);
  v16 = v49;

  if (v16)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v46, v16, v47, v48);
    v18 = v25;
    goto LABEL_11;
  }

LABEL_10:
  TSCEFormat::TSCEFormat(&v52, &v54);
  objc_msgSend_setFormat_(v25, v26, &v52, v27, v28);
  v18 = v25;
  v16 = 0;
  v17 = v18;
LABEL_11:

LABEL_12:

  return v17;
}

@end