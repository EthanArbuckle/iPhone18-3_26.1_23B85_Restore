@interface TSCEFunction_RANDBETWEEN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RANDBETWEEN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v100 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v100);
  v12 = v100;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14, v15);
    goto LABEL_22;
  }

  v99 = 0;
  v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v99);
  v16 = v99;
  if (!v16)
  {
    if (objc_msgSend_dimensionsMatchModuloCurrency_(v11, v19, v18, v20, v21))
    {
      if (objc_msgSend_hasUnits(v11, v22, v23, v24, v25))
      {
        if (objc_msgSend_hasUnits(v18, v26, v27, v28, v29))
        {
          v31 = objc_msgSend_unit(v11, v26, v30, v28, v29);
          if (v31 != objc_msgSend_unit(v18, v32, v33, v34, v35))
          {
            v41 = objc_msgSend_mismatchedMaxUnitsError(TSCEError, v26, v36, v28, v29);
            v17 = objc_msgSend_raiseErrorOrConvert_(context, v92, v41, v93, v94);
            goto LABEL_13;
          }
        }
      }

      if (!objc_msgSend_gt_(v11, v26, v18, v28, v29))
      {
        v54 = objc_msgSend_ceil(v11, v37, v38, v39, v40);

        v59 = objc_msgSend_floor(v18, v55, v56, v57, v58);

        v64 = objc_msgSend_randGenerator(context, v60, v61, v62, v63);
        objc_msgSend_doubleRepresentation(v54, v65, v66, v67, v68);
        v70 = v69;
        objc_msgSend_doubleRepresentation(v59, v71, v72, v73, v74);
        TSCERandGenerator::randWithMinMax(v64, v70, v75);
        TSUDecimal::operator=();
        v79 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v76, &v98, v77, v78);
        v17 = objc_msgSend_floor(v79, v80, v81, v82, v83);

        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v84, context, v86, v87);
        }

        else
        {
          memset(&v97, 0, sizeof(v97));
        }

        if (v9)
        {
          objc_msgSend_formatWithContext_(v9, v84, context, v86, v87);
        }

        else
        {
          memset(&v96, 0, sizeof(v96));
        }

        TSCEFormat::formatByMergingWithFormat(&v97, &v96, v85, v86, v87, &v95);
        TSCEFormat::TSCEFormat(&v98, &v95);
        objc_msgSend_setFormat_(v17, v88, &v98, v89, v90);
        v11 = v54;
        v18 = v59;
        goto LABEL_21;
      }

      v41 = objc_msgSend_functionName(spec, v37, v38, v39, v40);
      v43 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v42, v41, 1, 2, 1, 1);
      v47 = objc_msgSend_raiseErrorOrConvert_(context, v44, v43, v45, v46);
    }

    else
    {
      v41 = objc_msgSend_functionName(spec, v22, v23, v24, v25);
      v43 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v48, v41, v49, v50);
      v47 = objc_msgSend_raiseErrorOrConvert_(context, v51, v43, v52, v53);
    }

    v17 = v47;

LABEL_13:
    goto LABEL_21;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(context, v19, v16, v20, v21);
LABEL_21:

LABEL_22:

  return v17;
}

@end