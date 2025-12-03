@interface TSCEFunction_CEILING
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CEILING

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v100 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v100);
  v15 = v100;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v15, v13, v14);
    goto LABEL_37;
  }

  v20 = objc_msgSend_errorForDuration_argumentIndex_(v11, v12, spec, 0, v14);
  if (v20)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v17, v20, v18, v19);
    v15 = v20;
    goto LABEL_37;
  }

  v99 = 0;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v17, context, spec, 1, &v99);
  v15 = v99;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v22, v15, v24, v25);
  }

  else
  {
    if (objc_msgSend_hasUnits(v21, v22, v23, v24, v25))
    {
      v30 = objc_msgSend_functionName(spec, v26, v27, v28, v29);
      v33 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v31, v30, 2, v32);
      v37 = objc_msgSend_raiseErrorOrConvert_(context, v34, v33, v35, v36);
    }

    else
    {
      v98._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v26, v27, v28, v29);
      v98._decimal.w[1] = v38;
      v97._decimal.w[0] = objc_msgSend_decimalRepresentation(v21, v38, v39, v40, v41);
      v97._decimal.w[1] = v42;
      if (TSUDecimal::isZero(&v97))
      {
        v16 = objc_msgSend_zero(TSCENumberValue, v43, v44, v45, v46);
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v47, context, v48, v49);
        }

        else
        {
          memset(&v95, 0, sizeof(v95));
        }

        TSCEFormat::TSCEFormat(&v96, &v95);
        objc_msgSend_setFormat_(v16, v67, &v96, v68, v69);
        goto LABEL_36;
      }

      if ((!TSUDecimal::isGreaterThanZero(&v98) || (TSUDecimal::isNegative(&v97) & 1) == 0) && (!TSUDecimal::isNegative(&v98) || !TSUDecimal::isGreaterThanZero(&v97)))
      {
        if (TSUDecimal::isZero(&v98))
        {
          v16 = objc_msgSend_zero(TSCENumberValue, v60, v61, v62, v63);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v64, context, v65, v66);
          }

          else
          {
            memset(&v94, 0, sizeof(v94));
          }

          TSCEFormat::TSCEFormat(&v96, &v94);
          objc_msgSend_setFormat_(v16, v80, &v96, v81, v82);
        }

        else
        {
          isNegative = TSUDecimal::isNegative(&v98);
          if (isNegative)
          {
            TSUDecimal::negate(&v98);
            TSUDecimal::negate(&v97);
          }

          TSUDecimal::operator=();
          TSUDecimal::divide(&v98, &v97, &v93);
          TSUDecimal::operator=();
          TSUDecimal::operator=();
          TSUDecimal::split(&v93, &v91, &v92);
          TSUDecimal::operator=();
          TSUDecimal::multiply(&v91, &v97, &v90);
          v89 = v90;
          if (TSUDecimal::operator<())
          {
            TSUDecimal::doubleValue(&v89);
            v75 = v74;
            TSUDecimal::doubleValue(&v98);
            if (v75 != v76)
            {
              TSUDecimal::add(&v90, &v97, &v89);
            }
          }

          if (isNegative)
          {
            TSUDecimal::negate(&v89);
          }

          v16 = objc_msgSend_variantWithDecimal_(v11, v71, &v89, v72, v73);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v77, context, v78, v79);
          }

          else
          {
            memset(&v88, 0, sizeof(v88));
          }

          TSCEFormat::formatByUnsettingDecimalPlacesIfPresent(&v88, v78, v79, &v87);
          TSCEFormat::TSCEFormat(&v96, &v87);
          objc_msgSend_setFormat_(v16, v83, &v96, v84, v85);
        }

        goto LABEL_36;
      }

      v30 = objc_msgSend_functionName(spec, v50, v51, v52, v53);
      v33 = objc_msgSend_signsMustMatchErrorForFunctionName_(TSCEError, v54, v30, v55, v56);
      v37 = objc_msgSend_raiseErrorOrConvert_(context, v57, v33, v58, v59);
    }

    v16 = v37;
  }

LABEL_36:

LABEL_37:

  return v16;
}

@end