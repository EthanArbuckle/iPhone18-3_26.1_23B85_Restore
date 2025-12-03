@interface TSCEFunction_ISPMT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISPMT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    memset(&v96, 0, sizeof(v96));
  }

  sub_22114F414(&v97, &v96);
  v95 = 0;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 0, &v95);
  v15 = v95;
  v20 = objc_msgSend_decimalRepresentation(v14, v16, v17, v18, v19);
  if (v15)
  {
    v24 = objc_msgSend_raiseErrorOrConvert_(context, v21, v15, v22, v23);
    goto LABEL_28;
  }

  v25 = v20;
  v26 = v21;
  v27 = *(*arguments + 8);
  v31 = v27;
  if (v27)
  {
    objc_msgSend_formatWithContext_(v27, v28, context, v29, v30);
  }

  else
  {
    memset(&v96, 0, sizeof(v96));
  }

  sub_22114F414(&v97, &v96);
  v94 = 0;
  v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v31, v32, context, spec, 1, &v94);
  v15 = v94;
  v93[1] = objc_msgSend_decimalRepresentation(v33, v34, v35, v36, v37);
  v93[2] = v38;
  if (!v15)
  {
    v41 = *(*arguments + 16);
    v86 = v33;
    v87 = v41;
    if (v41)
    {
      objc_msgSend_formatWithContext_(v41, v42, context, v43, v44);
    }

    else
    {
      memset(&v96, 0, sizeof(v96));
    }

    sub_22114F414(&v97, &v96);
    v93[0] = 0;
    v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v87, v45, context, spec, 2, v93);
    v15 = v93[0];
    v85 = v46;
    v47 = v46;
    v33 = v86;
    *&v92 = objc_msgSend_decimalRepresentation(v47, v48, v49, v50, v51);
    *(&v92 + 1) = v52;
    if (v15)
    {
      v24 = objc_msgSend_raiseErrorOrConvert_(context, v52, v15, v53, v54);
LABEL_26:

      goto LABEL_27;
    }

    v55 = *(*arguments + 24);
    v84 = v55;
    if (v55)
    {
      objc_msgSend_formatWithContext_(v55, v56, context, v57, v58);
    }

    else
    {
      memset(&v96, 0, sizeof(v96));
    }

    sub_22114F414(&v97, &v96);
    v91 = 0;
    v60 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v84, v59, context, spec, 3, &v91);
    v15 = v91;
    v89 = objc_msgSend_decimalRepresentation(v60, v61, v62, v63, v64);
    v90 = v65;
    if (v15)
    {
      v68 = objc_msgSend_raiseErrorOrConvert_(context, v65, v15, v66, v67);
    }

    else
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator==())
      {
        v73 = objc_msgSend_divideByZeroError(TSCEError, v69, v70, v71, v72);
        v24 = objc_msgSend_raiseErrorOrConvert_(context, v74, v73, v75, v76);

LABEL_25:
        goto LABEL_26;
      }

      v77 = TSUDecimal::operator-();
      v79 = v78;
      v96._tskFormat = v25;
      *&v96._formatType = v26;
      TSUDecimal::operator/=();
      v96._tskFormat = v77;
      *&v96._formatType = v79;
      TSUDecimal::operator*=();
      v80 = *&v96._tskFormat;
      *&v96._tskFormat = v92;
      TSUDecimal::operator-=();
      *&v96._tskFormat = v80;
      TSUDecimal::operator*=();
      v88 = *&v96._tskFormat;
      sub_221256020(&v97, &v96);
      v68 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v81, &v88, &v96, v82);
    }

    v24 = v68;
    goto LABEL_25;
  }

  v24 = objc_msgSend_raiseErrorOrConvert_(context, v38, v15, v39, v40);
LABEL_27:

LABEL_28:
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  return v24;
}

@end