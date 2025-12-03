@interface TSCEFunction_COMBIN
+ (TSUDecimal)COMBINFunctionWithN:(TSUDecimal)n K:(TSUDecimal)k;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COMBIN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v88[0] = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, v88);
  v12 = v88[0];
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14, v15);
  }

  else
  {
    v87 = 0;
    v18 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v87);
    v16 = v87;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v19, v16, v20, v21);
    }

    else
    {
      v25 = objc_msgSend_errorForDuration_argumentIndex_(v11, v19, spec, 0, v21);
      if (v25 || (objc_msgSend_errorForDuration_argumentIndex_(v18, v22, spec, 1, v24), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v22, v25, v23, v24);
        v16 = v25;
      }

      else if (objc_msgSend_hasUnits(v11, v22, v26, v23, v24) && objc_msgSend_hasUnits(v18, v28, v29, v30, v31) && objc_msgSend_dimension(v11, v28, v29, v30, v31) == 4 && objc_msgSend_dimension(v18, v28, v29, v30, v31) == 4 && (v32 = objc_msgSend_unit(v11, v28, v29, v30, v31), v32 != objc_msgSend_unit(v18, v33, v34, v35, v36)))
      {
        v74 = objc_msgSend_functionName(spec, v28, v29, v30, v31);
        v78 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v75, v74, v76, v77);
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v79, v78, v80, v81);

        v16 = 0;
      }

      else
      {
        v37 = objc_msgSend_trunc(v11, v28, v29, v30, v31);

        v42 = objc_msgSend_trunc(v18, v38, v39, v40, v41);

        if (objc_msgSend_gt_(v42, v43, v37, v44, v45))
        {
          v50 = objc_msgSend_functionName(spec, v46, v47, v48, v49);
          v52 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v51, v50, 1, 2, 0, 1);
          v17 = objc_msgSend_raiseErrorOrConvert_(context, v53, v52, v54, v55);

          v16 = 0;
          v18 = v42;
        }

        else
        {
          v56 = objc_msgSend_decimalRepresentation(v37, v46, v47, v48, v49);
          v58 = v57;
          v62 = objc_msgSend_decimalRepresentation(v42, v57, v59, v60, v61);
          v86[0] = objc_msgSend_COMBINFunctionWithN_K_(TSCEFunction_COMBIN, v63, v56, v58, v62, v63);
          v86[1] = v64;
          v17 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v64, v86, v65, v66);
          if (v8)
          {
            objc_msgSend_formatWithContext_(v8, v67, context, v69, v70);
          }

          else
          {
            memset(&v84, 0, sizeof(v84));
          }

          if (v9)
          {
            objc_msgSend_formatWithContext_(v9, v67, context, v69, v70);
          }

          else
          {
            memset(&v83, 0, sizeof(v83));
          }

          TSCEFormat::formatByMergingWithFormat(&v84, &v83, v68, v69, v70, &v82);
          TSCEFormat::TSCEFormat(&v85, &v82);
          objc_msgSend_setFormat_(v17, v71, &v85, v72, v73);
          v16 = 0;
          v18 = v42;
        }

        v11 = v37;
      }
    }
  }

  return v17;
}

+ (TSUDecimal)COMBINFunctionWithN:(TSUDecimal)n K:(TSUDecimal)k
{
  nCopy = n;
  kCopy = k;
  nCopy2 = n;
  nCopy3 = n;
  TSUDecimal::operator-=();
  if ((TSUDecimal::operator<=() & 1) == 0)
  {
    nCopy3 = nCopy;
    TSUDecimal::operator-=();
    kCopy = nCopy;
  }

  TSUDecimal::operator=();
  if (TSUDecimal::operator==())
  {
    TSUDecimal::operator=();
  }

  else
  {
    TSUDecimal::doubleValue(&kCopy);
    if (v4 >= 2.0)
    {
      v5 = 3;
      do
      {
        if (TSUDecimal::isInf(&nCopy2))
        {
          break;
        }

        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        TSUDecimal::operator*=();
        TSUDecimal::operator=();
        TSUDecimal::operator/=();
        v6 = v5;
        TSUDecimal::doubleValue(&kCopy);
        ++v5;
      }

      while (v7 >= v6);
    }
  }

  v8 = nCopy2._decimal.w[0];
  v9 = nCopy2._decimal.w[1];
  result._decimal.w[1] = v9;
  result._decimal.w[0] = v8;
  return result;
}

@end