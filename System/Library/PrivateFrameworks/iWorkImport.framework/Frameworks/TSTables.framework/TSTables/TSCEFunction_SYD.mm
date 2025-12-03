@interface TSCEFunction_SYD
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SYD

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec, arguments);
  sub_221327DF4(v91, spec, v8);

  v9 = **arguments;
  v90 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v90);
  v12 = v90;
  sub_2213188C0(v91, v11);
  v17 = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  if (v12)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v18, v12, v19, v20);
    goto LABEL_18;
  }

  v22 = v17;
  v23 = v18;
  v24 = *(*arguments + 8);
  v89 = 0;
  v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v25, context, spec, 1, &v89);
  v12 = v89;
  sub_2213188C0(v91, v26);
  v88[1] = objc_msgSend_decimalRepresentation(v26, v27, v28, v29, v30);
  v88[2] = v31;
  if (!v12)
  {
    if (v92)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v31, v92, v32, v33);
      v12 = 0;
      goto LABEL_17;
    }

    v82 = v24;
    v34 = *(*arguments + 16);
    v88[0] = 0;
    v81 = v34;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 2, v88);
    v12 = v88[0];
    v80 = v36;
    v37 = v36;
    v24 = v82;
    *&v87 = objc_msgSend_decimalRepresentation(v37, v38, v39, v40, v41);
    *(&v87 + 1) = v42;
    if (v12)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v42, v12, v43, v44);
LABEL_16:

      goto LABEL_17;
    }

    v45 = *(*arguments + 24);
    v86 = 0;
    v79 = v45;
    v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v45, v46, context, spec, 3, &v86);
    v12 = v86;
    v84 = objc_msgSend_decimalRepresentation(v47, v48, v49, v50, v51);
    v85 = v52;
    if (v12)
    {
      v55 = objc_msgSend_raiseErrorOrConvert_(context, v52, v12, v53, v54);
    }

    else
    {
      if (TSUDecimal::operator<())
      {
        v60 = objc_msgSend_functionName(spec, v56, v57, v58, v59);
        v62 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v61, v60, 3, 4, 0, 1);
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v63, v62, v64, v65);

LABEL_15:
        goto LABEL_16;
      }

      *&v93 = v22;
      *(&v93 + 1) = v23;
      TSUDecimal::operator-=();
      v66 = v93;
      v93 = v87;
      TSUDecimal::operator-=();
      v67 = v93;
      TSUDecimal::operator=();
      v93 = v67;
      TSUDecimal::operator+=();
      v93 = v66;
      TSUDecimal::operator*=();
      v68 = v93;
      TSUDecimal::operator=();
      v93 = v68;
      TSUDecimal::operator*=();
      v69 = v93;
      TSUDecimal::operator=();
      v93 = v87;
      TSUDecimal::operator+=();
      v93 = v87;
      TSUDecimal::operator*=();
      v93 = v69;
      TSUDecimal::operator/=();
      v83 = v93;
      v70 = [TSCENumberValue alloc];
      v75 = sub_2213189D8(v91, v71, v72, v73, v74);
      v55 = objc_msgSend_initWithDecimal_baseUnit_(v70, v76, &v83, v75, v77);
    }

    v21 = v55;
    goto LABEL_15;
  }

  v21 = objc_msgSend_raiseErrorOrConvert_(context, v31, v12, v32, v33);
LABEL_17:

LABEL_18:

  return v21;
}

@end