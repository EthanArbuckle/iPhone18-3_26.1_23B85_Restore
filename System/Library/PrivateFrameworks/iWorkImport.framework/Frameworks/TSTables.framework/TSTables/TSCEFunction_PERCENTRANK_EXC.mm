@interface TSCEFunction_PERCENTRANK_EXC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PERCENTRANK_EXC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v81 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 0, &v81);
  v11 = v81;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13, v14);
    goto LABEL_22;
  }

  v17 = *(*arguments + 8);
  v80[1] = 0;
  v75 = v17;
  v19 = objc_msgSend_computePercentRank_functionSpec_vector_xValue_isExclusive_outError_(TSCEFunction_PERCENTRANK, v18, context, spec, v10);
  v20 = 0;
  if (!v20)
  {
    TSUDecimal::operator=();
    v27 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v24, &v77, v25, v26);
    if (*(arguments + 1) - *arguments >= 0x11uLL)
    {
      v28 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v28, v29, v30, v31, v32) & 1) == 0 && objc_msgSend_nativeType(v28, v33, v34, v35, v36) != 10)
      {
        v80[0] = 0;
        v38 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v37, context, spec, 2, v80);
        v15 = v80[0];
        v74 = objc_msgSend_floor(v38, v39, v40, v41, v42);

        if (v15)
        {
          v46 = objc_msgSend_raiseErrorOrConvert_(context, v43, v15, v44, v45);
LABEL_20:
          v16 = v46;

          goto LABEL_21;
        }

        v27 = v74;
      }
    }

    v74 = v27;
    TSUDecimal::operator=();
    v50 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v47, &v77, v48, v49);
    v79 = 0;
    v28 = objc_msgSend_power_outError_(v50, v51, v27, &v79, v52);
    v53 = v79;

    if (objc_msgSend_isFinite(v28, v54, v55, v56, v57))
    {
      v61 = objc_msgSend_multiply_context_(v19, v58, v28, context, v60, v74);
      v66 = objc_msgSend_round(v61, v62, v63, v64, v65);
      v78 = v53;
      v69 = objc_msgSend_divide_outError_(v66, v67, v28, &v78, v68);
      v15 = v78;

      v19 = v69;
      if (!v15)
      {
LABEL_14:
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v58, context, v59, v60);
        }

        else
        {
          memset(&v76, 0, sizeof(v76));
        }

        TSCEFormat::TSCEFormat(&v77, &v76);
        objc_msgSend_setFormat_(v19, v70, &v77, v71, v72);
        v46 = v19;
        v19 = v46;
        goto LABEL_20;
      }
    }

    else
    {
      v15 = v53;
      if (!v53)
      {
        goto LABEL_14;
      }
    }

    v46 = objc_msgSend_raiseErrorOrConvert_(context, v58, v15, v59, v60, v74);
    goto LABEL_20;
  }

  v15 = v20;
  v16 = objc_msgSend_raiseErrorOrConvert_(context, v21, v20, v22, v23);
LABEL_21:

LABEL_22:

  return v16;
}

@end