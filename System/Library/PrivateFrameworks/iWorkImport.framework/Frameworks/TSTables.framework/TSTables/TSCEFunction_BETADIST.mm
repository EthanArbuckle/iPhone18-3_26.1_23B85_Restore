@interface TSCEFunction_BETADIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BETADIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v115[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v115);
  v11 = v115[0];
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v17, v18);
    goto LABEL_36;
  }

  v21 = v19;
  v22 = *(*arguments + 8);
  v114 = 0;
  v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v114);
  v11 = v114;
  objc_msgSend_doubleRepresentation(v24, v25, v26, v27, v28);
  if (!v11)
  {
    v33 = v32;
    v34 = *(*arguments + 16);
    v113 = 0;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 2, &v113);
    v11 = v113;
    objc_msgSend_doubleRepresentation(v36, v37, v38, v39, v40);
    if (v11)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v41, v11, v43, v44);
LABEL_34:

      goto LABEL_35;
    }

    v46 = v45;
    if (*(arguments + 1) - *arguments < 0x19uLL || (objc_msgSend_isTokenOrEmptyArg(*(*arguments + 24), v41, v42, v43, v44) & 1) != 0)
    {
      v47 = 0.0;
      if (v21 < 0.0)
      {
        v48 = objc_msgSend_functionName(spec, v41, v42, v43, v44);
        v50 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v49, 1, v48, 1, 0.0);
        v54 = objc_msgSend_raiseErrorOrConvert_(context, v51, v50, v52, v53);
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v108 = v34;
    v55 = *(*arguments + 24);
    v112 = 0;
    v107 = v55;
    v57 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v55, v56, context, spec, 3, &v112);
    v11 = v112;
    v105 = v57;
    v58 = v57;
    v34 = v108;
    objc_msgSend_doubleRepresentation(v58, v59, v60, v61, v62);
    if (v11)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v63, v11, v65, v66);
    }

    else
    {
      v47 = v67;
      if (v21 >= v67)
      {

LABEL_17:
        if (*(arguments + 1) - *arguments < 0x21uLL || (objc_msgSend_isTokenOrEmptyArg(*(*arguments + 32), v41, v42, v43, v44) & 1) != 0)
        {
          v74 = 1.0;
          if (v21 > 1.0)
          {
            v48 = objc_msgSend_functionName(spec, v41, v42, v43, v44);
            v50 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v75, 1, v48, 1, 1.0);
            v54 = objc_msgSend_raiseErrorOrConvert_(context, v76, v50, v77, v78);
            goto LABEL_32;
          }

          goto LABEL_28;
        }

        v79 = *(*arguments + 32);
        v111 = 0;
        v107 = v79;
        v81 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v79, v80, context, spec, 4, &v111);
        v11 = v111;
        objc_msgSend_doubleRepresentation(v81, v82, v83, v84, v85);
        if (v11)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v86, v11, v88, v89);
        }

        else
        {
          v74 = v90;
          if (v21 <= v90)
          {

LABEL_28:
            if (v47 < v74)
            {
              v96 = pthread_mutex_lock(&stru_27CFB4098);
              sub_2213CD100(v96, v33, v46, (v21 - v47) / (v74 - v47));
              pthread_mutex_unlock(&stru_27CFB4098);
              TSUDecimal::operator=();
              if (v8)
              {
                objc_msgSend_formatWithContext_(v8, v97, context, v98, v99);
              }

              else
              {
                memset(v109, 0, sizeof(v109));
              }

              v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v97, v110, v109, v99);
              goto LABEL_33;
            }

            v48 = objc_msgSend_functionName(spec, v41, v42, v43, v44);
            v50 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v100, v48, 4, 5, 1, 0);
            v54 = objc_msgSend_raiseErrorOrConvert_(context, v101, v50, v102, v103);
LABEL_32:
            v20 = v54;

LABEL_33:
            v11 = 0;
            goto LABEL_34;
          }

          v106 = objc_msgSend_functionName(spec, v86, v87, v88, v89);
          v92 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v91, v106, 1, 5, 1, 1);
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v93, v92, v94, v95);
        }

LABEL_26:
        goto LABEL_34;
      }

      v68 = objc_msgSend_functionName(spec, v63, v64, v65, v66);
      v70 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v69, v68, 1, 4, 0, 1);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v71, v70, v72, v73);
    }

    goto LABEL_26;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(context, v29, v11, v30, v31);
LABEL_35:

LABEL_36:

  return v20;
}

@end