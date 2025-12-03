@interface TSCEFunction_BETAINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BETAINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v99[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v99);
  v11 = v99[0];
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v17, v18);
    goto LABEL_25;
  }

  v21 = v19;
  v22 = *(*arguments + 8);
  v98 = 0;
  v92 = v22;
  v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v98);
  v25 = v98;
  objc_msgSend_doubleRepresentation(v24, v26, v27, v28, v29);
  v31 = v30;
  v32 = *(*arguments + 16);
  v97 = v25;
  v34 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v32, v33, context, spec, 2, &v97);
  v11 = v97;

  objc_msgSend_doubleRepresentation(v34, v35, v36, v37, v38);
  if (!v11)
  {
    v43 = v42;
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      goto LABEL_19;
    }

    v44 = *(*arguments + 24);
    v50 = 0.0;
    if ((objc_msgSend_isTokenOrEmptyArg(v44, v45, v46, v47, v48) & 1) == 0)
    {
      v91 = v24;
      v96 = 0;
      v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v49, context, spec, 3, &v96);
      v11 = v96;
      v90 = v51;
      v52 = v51;
      v24 = v91;
      objc_msgSend_doubleRepresentation(v52, v53, v54, v55, v56);
      if (v11)
      {
        v20 = objc_msgSend_raiseErrorOrConvert_(context, v57, v11, v58, v59);

LABEL_15:
        goto LABEL_24;
      }

      v50 = v60;
    }

    v65 = 1.0;
    if (*(arguments + 1) - *arguments >= 0x21uLL)
    {
      v44 = *(*arguments + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v44, v66, v67, v68, v69) & 1) == 0)
      {
        v95 = 0;
        v71 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v70, context, spec, 4, &v95);
        v11 = v95;
        objc_msgSend_doubleRepresentation(v71, v72, v73, v74, v75);
        if (v11)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v76, v11, v77, v78);

          goto LABEL_15;
        }

        v65 = v79;
      }
    }

    if (v50 >= v65)
    {
      v84 = objc_msgSend_functionName(spec, v61, v62, v63, v64);
      v86 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v85, v84, 4, 5, 1, 0);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v87, v86, v88, v89);
    }

    else
    {
LABEL_19:
      pthread_mutex_lock(&stru_27CFB4098);
      sub_221125004(v31, v43, v21);
      pthread_mutex_unlock(&stru_27CFB4098);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v80, context, v81, v82);
      }

      else
      {
        memset(v93, 0, sizeof(v93));
      }

      v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v80, v94, v93, v82);
    }

    v11 = 0;
    goto LABEL_24;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(context, v39, v11, v40, v41);
LABEL_24:

LABEL_25:

  return v20;
}

@end