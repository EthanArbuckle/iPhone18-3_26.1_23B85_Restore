@interface TSCEFunction_RATE
+ (TSUDecimal)solveByNewtonsWithNumPeriods:(const TSUDecimal *)periods pmt:(const TSUDecimal *)pmt pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning initial:(const TSUDecimal *)initial context:(id)context;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RATE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v127[0] = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, v127);
  v12 = v127[0];
  objc_msgSend_doubleRepresentation(v11, v13, v14, v15, v16);
  if (v12)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v17, v12, v18, v19);
    goto LABEL_44;
  }

  v21 = *(*arguments + 8);
  v126 = 0;
  v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v22, context, spec, 1, &v126);
  v12 = v126;
  *&v125 = objc_msgSend_decimalRepresentation(v23, v24, v25, v26, v27);
  *(&v125 + 1) = v28;
  if (!v12)
  {
    v111 = v21;
    v31 = *(*arguments + 16);
    v124 = 0;
    v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v31, v32, context, spec, 2, &v124);
    v12 = v124;
    v110 = v33;
    v123[0] = objc_msgSend_decimalRepresentation(v33, v34, v35, v36, v37);
    v123[1] = v38;
    if (v12)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v38, v12, v39, v40);
LABEL_42:

      v21 = v111;
      goto LABEL_43;
    }

    v109 = v31;
    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      v55 = 0;
    }

    else
    {
      v41 = *(*arguments + 24);
      if ((objc_msgSend_isTokenOrEmptyArg(v41, v42, v43, v44, v45) & 1) == 0)
      {
        v121 = 0;
        v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v41, v46, context, spec, 3, &v121);
        v12 = v121;
        v122[0] = objc_msgSend_decimalRepresentation(v47, v48, v49, v50, v51);
        v122[1] = v52;
        if (v12)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v52, v12, v53, v54);

LABEL_19:
LABEL_27:
          v31 = v109;
          goto LABEL_42;
        }
      }

      if (*(arguments + 1) - *arguments < 0x21uLL)
      {
        v55 = 0;
      }

      else
      {
        v41 = *(*arguments + 32);
        if (objc_msgSend_isTokenOrEmptyArg(v41, v56, v57, v58, v59))
        {
          v55 = 0;
        }

        else
        {
          v120 = 0;
          v55 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v41, v60, context, spec, 4, &v120);
          v61 = v120;
          if (v61)
          {
            v12 = v61;
            v20 = objc_msgSend_raiseErrorOrConvert_(context, v62, v61, v63, v64);
            goto LABEL_19;
          }
        }
      }

      v31 = v109;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments >= 0x29uLL)
    {
      v65 = *(*arguments + 40);
      if ((objc_msgSend_isTokenOrEmptyArg(v65, v66, v67, v68, v69) & 1) == 0 && objc_msgSend_nativeType(v65, v70, v71, v72, v73))
      {
        v118 = 0;
        v75 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v65, v74, context, spec, 5, &v118);
        v12 = v118;
        v119[0] = objc_msgSend_decimalRepresentation(v75, v76, v77, v78, v79);
        v119[1] = v80;
        if (v12)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v80, v12, v81, v82);

          goto LABEL_27;
        }

        v31 = v109;
      }
    }

    TSUDecimal::operator=();
    *&v114._tskFormat = v125;
    TSUDecimal::operator*=();
    TSUDecimal::operator+=();
    TSUDecimal::operator+=();
    tskFormat = v114._tskFormat;
    v117 = *&v114._formatType;
    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v20 = objc_msgSend_zero(TSCENumberValue, v83, v84, v85, v86);
      TSCEFormat::TSCEFormat(&v113, 258);
      TSCEFormat::TSCEFormat(&v114, &v113);
      objc_msgSend_setFormat_(v20, v87, &v114, v88, v89);
    }

    else
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator==())
      {
        TSUDecimal::operator=();
      }

      TSUDecimal::operator=();
      v115._decimal.w[0] = objc_msgSend_solveByNewtonsWithNumPeriods_pmt_pv_fv_dueBeginning_initial_context_(self, v90, &v114, &v125, v123, v122, v55, v119, context);
      v115._decimal.w[1] = v91;
      if (TSUDecimal::isNaN(&v115))
      {
        TSUDecimal::operator=();
        if ((TSUDecimal::operator==() & 1) == 0)
        {
          TSUDecimal::operator=();
          TSUDecimal::operator=();
          v115._decimal.w[0] = objc_msgSend_solveByNewtonsWithNumPeriods_pmt_pv_fv_dueBeginning_initial_context_(self, v92, &v114, &v125, v123, v122, v55, v112, context);
          v115._decimal.w[1] = v93;
        }
      }

      if (TSUDecimal::isNaN(&v115))
      {
        v98 = objc_msgSend_functionName(spec, v94, v95, v96, v97);
        v102 = objc_msgSend_numberDoesNotConvergeWithEstimateErrorForFunctionName_(TSCEError, v99, v98, v100, v101);
        v20 = objc_msgSend_raiseErrorOrConvert_(context, v103, v102, v104, v105);
      }

      else
      {
        TSCEFormat::TSCEFormat(&v114, 258);
        v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v106, &v115, &v114, v107);
      }

      v31 = v109;
    }

    v12 = 0;
    goto LABEL_42;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(context, v28, v12, v29, v30);
LABEL_43:

LABEL_44:

  return v20;
}

+ (TSUDecimal)solveByNewtonsWithNumPeriods:(const TSUDecimal *)periods pmt:(const TSUDecimal *)pmt pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning initial:(const TSUDecimal *)initial context:(id)context
{
  beginningCopy = beginning;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v61 = *initial;
  TSUDecimal::operator=();
  v56 = xmmword_2217E1440;
  v57 = xmmword_2217E1440;
  v55 = xmmword_2217E1440;
  v14 = 500;
  do
  {
    TSUDecimal::operator=();
    v62 = v53;
    TSUDecimal::operator+=();
    v54 = v62;
    TSUDecimal::doubleValue(&v54);
    v16 = v15;
    TSUDecimal::doubleValue(periods);
    pow(v16, v17);
    TSUDecimal::operator=();
    v60 = v62;
    TSUDecimal::operator=();
    v62 = *pv;
    TSUDecimal::operator*=();
    if (beginningCopy)
    {
      v19 = v62._decimal.w[0];
      v18 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v50;
      TSUDecimal::operator+=();
      v51 = v62;
      v62 = *pmt;
      TSUDecimal::operator*=();
      v21 = v62._decimal.w[0];
      v20 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      TSUDecimal::operator/=();
      v62._decimal.w[0] = v21;
      v62._decimal.w[1] = v20;
      TSUDecimal::operator*=();
      v62._decimal.w[0] = v19;
      v62._decimal.w[1] = v18;
      TSUDecimal::operator+=();
      TSUDecimal::operator+=();
      v54 = v62;
      v62 = *pv;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v23 = v62._decimal.w[0];
      v22 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v51;
      TSUDecimal::operator+=();
      v53 = v62;
      v62._decimal.w[0] = v23;
      v62._decimal.w[1] = v22;
      TSUDecimal::operator/=();
      v25 = v62._decimal.w[0];
      v24 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      v62 = *pmt;
      TSUDecimal::operator*=();
      TSUDecimal::operator/=();
      v50 = v62;
      v62._decimal.w[0] = v25;
      v62._decimal.w[1] = v24;
      TSUDecimal::operator+=();
      v27 = v62._decimal.w[0];
      v26 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v48;
      TSUDecimal::operator+=();
      v62 = *pmt;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v29 = v62._decimal.w[0];
      v28 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v47;
      TSUDecimal::operator+=();
      TSUDecimal::operator*=();
      v62._decimal.w[0] = v29;
      v62._decimal.w[1] = v28;
      TSUDecimal::operator/=();
      v62._decimal.w[0] = v27;
      v62._decimal.w[1] = v26;
      TSUDecimal::operator+=();
      v31 = v62._decimal.w[0];
      v30 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v46;
      TSUDecimal::operator+=();
      v62 = *pmt;
      TSUDecimal::operator*=();
      v33 = v62._decimal.w[0];
      v32 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      v62._decimal.w[0] = v33;
      v62._decimal.w[1] = v32;
    }

    else
    {
      v36 = v62._decimal.w[0];
      v37 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      TSUDecimal::operator/=();
      v52 = v62;
      v62 = *pmt;
      TSUDecimal::operator*=();
      v62._decimal.w[0] = v36;
      v62._decimal.w[1] = v37;
      TSUDecimal::operator+=();
      TSUDecimal::operator+=();
      v54 = v62;
      v62 = *pv;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v39 = v62._decimal.w[0];
      v38 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v52;
      TSUDecimal::operator+=();
      v53 = v62;
      v62._decimal.w[0] = v39;
      v62._decimal.w[1] = v38;
      TSUDecimal::operator/=();
      v41 = v62._decimal.w[0];
      v40 = v62._decimal.w[1];
      v62 = *pmt;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v43 = v62._decimal.w[0];
      v42 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v49;
      TSUDecimal::operator+=();
      TSUDecimal::operator*=();
      v62._decimal.w[0] = v43;
      v62._decimal.w[1] = v42;
      TSUDecimal::operator/=();
      v50 = v62;
      v62._decimal.w[0] = v41;
      v62._decimal.w[1] = v40;
      TSUDecimal::operator+=();
      v31 = v62._decimal.w[0];
      v30 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      v62 = *pmt;
    }

    TSUDecimal::operator*=();
    v35 = v62._decimal.w[0];
    v34 = v62._decimal.w[1];
    v62 = v61;
    TSUDecimal::operator*=();
    v62._decimal.w[0] = v35;
    v62._decimal.w[1] = v34;
    TSUDecimal::operator/=();
    v62._decimal.w[0] = v31;
    v62._decimal.w[1] = v30;
    TSUDecimal::operator-=();
    v59 = v62;
    v62 = v54;
    TSUDecimal::operator/=();
    v58 = v62;
    TSUDecimal::operator-=();
    v62 = v58;
    TSUDecimal::abs(&v62);
    if ((TSUDecimal::isNaN(&v57) & 1) != 0 || TSUDecimal::operator<())
    {
      v56 = v61;
      v57 = v62;
      v55 = v54;
    }

    if (TSUDecimal::operator<())
    {
      v45 = v61._decimal.w[1];
      v44 = v61._decimal.w[0];
      goto LABEL_16;
    }

    --v14;
  }

  while (v14);
  if ((TSUDecimal::isNaN(&v56) & 1) == 0 && (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::abs(&v55), TSUDecimal::operator=(), TSUDecimal::operator<()))
  {
    v44 = v56._decimal.w[0];
    v45 = v56._decimal.w[1];
  }

  else
  {
    v44 = 0;
    v45 = 0x7C00000000000000;
  }

LABEL_16:
  result._decimal.w[1] = v45;
  result._decimal.w[0] = v44;
  return result;
}

@end