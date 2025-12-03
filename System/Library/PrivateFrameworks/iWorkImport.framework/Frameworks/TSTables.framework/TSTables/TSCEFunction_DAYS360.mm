@interface TSCEFunction_DAYS360
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DAYS360

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v65 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v65);
  v11 = v65;
  v16 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14, v15);
  v20 = objc_msgSend_clearOffTime_(v16, v17, v10, v18, v19);

  if (v11)
  {
    v24 = objc_msgSend_raiseErrorOrConvert_(context, v21, v11, v22, v23);
    goto LABEL_13;
  }

  v25 = *(*arguments + 8);
  v64 = 0;
  v27 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v25, v26, context, spec, 1, &v64);
  v11 = v64;
  v31 = objc_msgSend_clearOffTime_(v16, v28, v27, v29, v30);

  if (v11)
  {
    v35 = objc_msgSend_raiseErrorOrConvert_(context, v32, v11, v33, v34);
    goto LABEL_11;
  }

  if (*(arguments + 1) - *arguments >= 0x11uLL)
  {
    v36 = *(*arguments + 16);
    if (objc_msgSend_isTokenOrEmptyArg(v36, v37, v38, v39, v40))
    {
    }

    else
    {
      v63 = 0;
      v54 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v36, v41, context, spec, 2, &v63);
      v55 = v63;
      if (v55)
      {
        v11 = v55;
        v24 = objc_msgSend_raiseErrorOrConvert_(context, v56, v55, v57, v58);

        goto LABEL_12;
      }

      if (v54)
      {
        v61 = 0;
        v42 = &v61;
        sub_2214A452C(v20, v31, 4, &v61);
        goto LABEL_9;
      }
    }
  }

  v62 = 0;
  v42 = &v62;
  sub_2214A452C(v20, v31, 0, &v62);
LABEL_9:
  v43 = *v42;
  if (!v43)
  {
    v48 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v24 = objc_msgSend_initWithDecimal_baseUnit_(v48, v49, &v60, 3, v50);
    v59._tskFormat = 0;
    v59._formatType = 0;
    v59._formatState = 0;
    *&v59._durationFormat = 1057;
    *(&v59._durationFormat + 2) = 1;
    *&v59._baseFormat.base = -50266102;
    v59._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v60, &v59);
    objc_msgSend_setFormat_(v24, v51, &v60, v52, v53);
    v11 = 0;
    goto LABEL_12;
  }

  v11 = v43;
  v35 = objc_msgSend_raiseErrorOrConvert_(context, v44, v43, v45, v46);
LABEL_11:
  v24 = v35;
LABEL_12:

LABEL_13:

  return v24;
}

@end