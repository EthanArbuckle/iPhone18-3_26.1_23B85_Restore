@interface TSCEFunction_SLN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SLN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec, arguments);
  sub_221327DF4(v66, spec, v8);

  v9 = **arguments;
  v65 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v65);
  v12 = v65;
  sub_2213188C0(v66, v11);
  v17 = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  if (v12)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v18, v12, v19, v20);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = v18;
  v24 = *(*arguments + 8);
  v64 = 0;
  v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v25, context, spec, 1, &v64);
  v12 = v64;
  sub_2213188C0(v66, v26);
  v63[1] = objc_msgSend_decimalRepresentation(v26, v27, v28, v29, v30);
  v63[2] = v31;
  if (!v12)
  {
    if (v67)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v31, v67, v32, v33);
      v12 = 0;
      goto LABEL_14;
    }

    v34 = *(*arguments + 16);
    v63[0] = 0;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 2, v63);
    v12 = v63[0];
    v62[2] = objc_msgSend_decimalRepresentation(v36, v37, v38, v39, v40);
    v62[3] = v41;
    if (v12)
    {
      v44 = objc_msgSend_raiseErrorOrConvert_(context, v41, v12, v42, v43);
    }

    else
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator==())
      {
        v49 = objc_msgSend_divideByZeroError(TSCEError, v45, v46, v47, v48);
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v50, v49, v51, v52);

LABEL_13:
        goto LABEL_14;
      }

      v68 = v22;
      v69 = v23;
      TSUDecimal::operator-=();
      TSUDecimal::operator/=();
      v62[0] = v68;
      v62[1] = v69;
      v53 = [TSCENumberValue alloc];
      v58 = sub_2213189D8(v66, v54, v55, v56, v57);
      v44 = objc_msgSend_initWithDecimal_baseUnit_(v53, v59, v62, v58, v60);
    }

    v21 = v44;
    goto LABEL_13;
  }

  v21 = objc_msgSend_raiseErrorOrConvert_(context, v31, v12, v32, v33);
LABEL_14:

LABEL_15:

  return v21;
}

@end