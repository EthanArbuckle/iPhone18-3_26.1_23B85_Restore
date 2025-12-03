@interface TSCEFunction_BINOMDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BINOMDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v96[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v96);
  v11 = v96[0];
  v16 = objc_msgSend_trunc(v10, v12, v13, v14, v15);

  v95._decimal.w[0] = objc_msgSend_decimalRepresentation(v16, v17, v18, v19, v20);
  v95._decimal.w[1] = v21;
  if (v11)
  {
    v24 = objc_msgSend_raiseErrorOrConvert_(context, v21, v11, v22, v23);
    goto LABEL_19;
  }

  v25 = *(*arguments + 8);
  v94 = 0;
  v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v26, context, spec, 1, &v94);
  v11 = v94;
  v32 = objc_msgSend_trunc(v27, v28, v29, v30, v31);

  v93._decimal.w[0] = objc_msgSend_decimalRepresentation(v32, v33, v34, v35, v36);
  v93._decimal.w[1] = v37;
  if (!v11)
  {
    v40 = *(*arguments + 16);
    v92 = 0;
    v82 = v40;
    v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v41, context, spec, 2, &v92);
    v11 = v92;
    v91._decimal.w[0] = objc_msgSend_decimalRepresentation(v42, v43, v44, v45, v46);
    v91._decimal.w[1] = v47;
    if (v11)
    {
      v24 = objc_msgSend_raiseErrorOrConvert_(context, v47, v11, v48, v49);
LABEL_17:

      goto LABEL_18;
    }

    v50 = *(*arguments + 24);
    v90 = 0;
    v81 = v50;
    v52 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v50, v51, context, spec, 3, &v90);
    v11 = v90;
    if (v11)
    {
      v56 = objc_msgSend_raiseErrorOrConvert_(context, v53, v11, v54, v55);
    }

    else
    {
      if ((TSUDecimal::operator<=() & 1) == 0)
      {
        v67 = objc_msgSend_functionName(spec, v57, v58, v59, v60);
        v69 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v68, v67, 1, 2, 1, 1);
        v24 = objc_msgSend_raiseErrorOrConvert_(context, v70, v69, v71, v72);

LABEL_16:
        goto LABEL_17;
      }

      TSUDecimal::operator=();
      if (v52)
      {
        pthread_mutex_lock(&stru_27CFB4098);
        TSUDecimal::doubleValue(&v95);
        v63 = v62;
        TSUDecimal::doubleValue(&v93);
        v65 = v64;
        TSUDecimal::doubleValue(&v91);
        sub_22168AAA0(v63, v65, v66);
        TSUDecimal::operator=();
        pthread_mutex_unlock(&stru_27CFB4098);
      }

      else
      {
        v89[0] = objc_msgSend_COMBINFunctionWithN_K_(TSCEFunction_COMBIN, v61, v93._decimal.w[0], v93._decimal.w[1], v95._decimal.w[0], v95._decimal.w[1]);
        v89[1] = v73;
        v74 = sub_2212B2BA4(&v91, &v95);
        v76 = v75;
        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        v85 = v84[1];
        v83 = v93;
        TSUDecimal::operator-=();
        v84[0] = v83;
        v86 = sub_2212B2BA4(&v85, v84);
        v87 = v77;
        v83._decimal.w[0] = v74;
        v83._decimal.w[1] = v76;
        TSUDecimal::operator*=();
        v88 = v83;
        TSUDecimal::operator*=();
      }

      TSCEFormat::TSCEFormat(&v83, 256);
      v56 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v78, v89, &v83, v79);
    }

    v24 = v56;
    goto LABEL_16;
  }

  v24 = objc_msgSend_raiseErrorOrConvert_(context, v37, v11, v38, v39);
LABEL_18:

LABEL_19:

  return v24;
}

@end