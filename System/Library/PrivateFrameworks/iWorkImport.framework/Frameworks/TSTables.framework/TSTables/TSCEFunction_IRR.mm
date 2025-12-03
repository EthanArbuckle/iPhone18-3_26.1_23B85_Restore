@interface TSCEFunction_IRR
+ (TSUDecimal)solveByNewtonsWithVector:(id)vector vector:(id)a4 initial:(const TSUDecimal *)initial outError:(id *)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_IRR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v112[0] = 0;
  v98 = v9;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 0, 1, v112);
  v12 = v112[0];
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14, v15);
    goto LABEL_26;
  }

  TSUDecimal::operator=();
  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v22 = *(*arguments + 8);
    if ((objc_msgSend_isTokenOrEmptyArg(v22, v23, v24, v25, v26) & 1) == 0)
    {
      v110 = 0;
      v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v27, context, spec, 1, &v110);
      v16 = v110;
      v111[0] = objc_msgSend_decimalRepresentation(v28, v29, v30, v31, v32);
      v111[1] = v33;
      if (v16)
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v33, v16, v34, v35);

        goto LABEL_26;
      }
    }
  }

  v36 = objc_msgSend_count(v11, v18, v19, v20, v21);
  contextCopy = context;
  v104[0] = contextCopy;
  v104[1] = spec;
  v105 = 0;
  v106[0] = 0;
  *(v106 + 7) = 0;
  v107 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v108 = 0;
  v109 = 0;
  if (!v36)
  {
LABEL_21:
    v67 = objc_msgSend_functionName(spec, v37, v38, v39, v40);
    v71 = objc_msgSend_onlyPositiveOrNegativeErrorForFunctionName_(TSCEError, v68, v67, v69, v70);
    v75 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v72, v71, v73, v74);
LABEL_22:
    v17 = v75;

    goto LABEL_23;
  }

  selfCopy = self;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  do
  {
    v45 = objc_msgSend_valueAtIndex_accessContext_(v11, v37, v42, v104, v40, selfCopy);
    if ((objc_msgSend_isNil(v45, v46, v47, v48, v49) & 1) == 0)
    {
      v103 = 0;
      v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v45, v50, contextCopy, spec, 0, &v103);
      v16 = v103;
      v99[0] = objc_msgSend_decimalRepresentation(v51, v52, v53, v54, v55);
      v99[1] = v56;

      if (v16)
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v57, v16, v58, v59);

        goto LABEL_25;
      }

      TSUDecimal::operator=();
      if (TSUDecimal::operator<=())
      {
        TSUDecimal::operator=();
        v43 |= TSUDecimal::operator<();
      }

      else
      {
        v44 = 1;
      }
    }

    ++v42;
  }

  while (v36 != v42);
  if ((v44 & v43 & 1) == 0)
  {
    goto LABEL_21;
  }

  v101 = 0;
  v60 = objc_msgSend_solveByNewtonsWithVector_vector_initial_outError_(selfCopy, v37, contextCopy, v11, v111, &v101);
  v62 = v61;
  v16 = v101;
  v102._decimal.w[0] = v60;
  v102._decimal.w[1] = v62;
  if (v16)
  {
    v66 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v63, v16, v64, v65);
LABEL_20:
    v17 = v66;
    goto LABEL_25;
  }

  if (TSUDecimal::isNaN(&v102))
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator==() & 1) == 0)
    {
      TSUDecimal::operator=();
      v100 = 0;
      v78 = objc_msgSend_solveByNewtonsWithVector_vector_initial_outError_(selfCopy, v77, contextCopy, v11, v99, &v100);
      v80 = v79;
      v81 = v100;
      v102._decimal.w[0] = v78;
      v102._decimal.w[1] = v80;
      if (v81)
      {
        v16 = v81;
        v66 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v82, v81, v83, v84);
        goto LABEL_20;
      }
    }
  }

  if (TSUDecimal::isNaN(&v102))
  {
    v67 = objc_msgSend_functionName(spec, v85, v86, v87, v88);
    v71 = objc_msgSend_numberDoesNotConvergeWithEstimateErrorForFunctionName_(TSCEError, v89, v67, v90, v91);
    v75 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v92, v71, v93, v94);
    goto LABEL_22;
  }

  TSCEFormat::TSCEFormat(v99, 258);
  v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v95, &v102, v99, v96);
LABEL_23:
  v16 = 0;
LABEL_25:

LABEL_26:

  return v17;
}

+ (TSUDecimal)solveByNewtonsWithVector:(id)vector vector:(id)a4 initial:(const TSUDecimal *)initial outError:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v10 = a4;
  v15 = objc_msgSend_functionSpec(self, v11, v12, v13, v14);
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v20 = objc_msgSend_count(v10, v16, v17, v18, v19);
  v84 = *initial;
  v21 = vectorCopy;
  v76[0] = v21;
  v76[1] = v15;
  v77 = 0;
  v78[0] = 0;
  *(v78 + 7) = 0;
  v79 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v80 = 0;
  v81 = 0;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v22 = 0;
  v74 = xmmword_2217E1440;
  v75 = xmmword_2217E1440;
  v65 = xmmword_2217E1440;
  v73 = xmmword_2217E1440;
  while (1)
  {
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    if (v20)
    {
      break;
    }

LABEL_7:
    TSUDecimal::operator=();
    if (v20)
    {
      v44 = 0;
      for (i = 0; i != v20; ++i)
      {
        v27 = objc_msgSend_valueAtIndex_accessContext_(v10, v42, i, v76, v43, v65);
        if ((objc_msgSend_isNil(v27, v46, v47, v48, v49) & 1) == 0)
        {
          v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v50, v21, v15, 0, error);
          v72._decimal.w[0] = objc_msgSend_decimalRepresentation(v51, v52, v53, v54, v55);
          v72._decimal.w[1] = v56;

          TSUDecimal::operator=();
          TSUDecimal::operator=();
          v86 = v68;
          TSUDecimal::operator+=();
          v69 = v86;
          TSUDecimal::operator=();
          TSUDecimal::doubleValue(&v69);
          v58 = v57;
          TSUDecimal::doubleValue(&v67);
          pow(v58, v59);
          TSUDecimal::operator=();
          v70 = v86;
          v86 = v87;
          TSUDecimal::operator/=();
          v71 = v86;
          v86 = v72;
          TSUDecimal::operator*=();
          v87 = v86;
          TSUDecimal::operator+=();
          if (*error)
          {
            goto LABEL_24;
          }

          ++v44;
        }
      }
    }

    v86 = v83;
    TSUDecimal::operator/=();
    v82 = v86;
    v87 = v84;
    TSUDecimal::operator-=();
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=())
    {
      TSUDecimal::operator=();
      v86 = v87;
      TSUDecimal::operator-=();
      v61 = v86._decimal.w[0];
      v60 = v86._decimal.w[1];
      TSUDecimal::operator=();
      v86._decimal.w[0] = v61;
      v86._decimal.w[1] = v60;
      TSUDecimal::operator/=();
      v84 = v86;
    }

    v86 = v82;
    TSUDecimal::abs(&v86);
    if ((TSUDecimal::isNaN(&v75) & 1) != 0 || TSUDecimal::operator<())
    {
      v74 = v84;
      v75 = v86;
      v73 = v83;
    }

    TSUDecimal::operator=();
    if (TSUDecimal::operator<())
    {
      goto LABEL_27;
    }

    if (++v22 == 500)
    {
      if ((TSUDecimal::isNaN(&v74) & 1) == 0 && (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::abs(&v73), TSUDecimal::operator=(), TSUDecimal::operator<()))
      {
        v62 = v74;
      }

      else
      {
        v84 = v65;
LABEL_27:
        v62 = v84;
      }

      v85 = v62;
      goto LABEL_25;
    }
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    v27 = objc_msgSend_valueAtIndex_accessContext_(v10, v23, v26, v76, v24, v65);
    if ((objc_msgSend_isNil(v27, v28, v29, v30, v31) & 1) == 0)
    {
      v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v32, v21, v15, 0, error);
      v72._decimal.w[0] = objc_msgSend_decimalRepresentation(v33, v34, v35, v36, v37);
      v72._decimal.w[1] = v38;

      TSUDecimal::operator=();
      TSUDecimal::operator=();
      v86 = v68;
      TSUDecimal::operator+=();
      ++v25;
      v69 = v86;
      TSUDecimal::operator=();
      TSUDecimal::doubleValue(&v69);
      v40 = v39;
      TSUDecimal::doubleValue(&v67);
      pow(v40, v41);
      TSUDecimal::operator=();
      v70 = v86;
      v86 = v87;
      TSUDecimal::operator/=();
      v71 = v86;
      v86 = v72;
      TSUDecimal::operator*=();
      v87 = v86;
      TSUDecimal::operator+=();
      if (*error)
      {
        break;
      }
    }

    if (v20 == ++v26)
    {
      goto LABEL_7;
    }
  }

LABEL_24:
  TSUDecimal::operator=();

LABEL_25:
  v64 = v85._decimal.w[1];
  v63 = v85._decimal.w[0];
  result._decimal.w[1] = v64;
  result._decimal.w[0] = v63;
  return result;
}

@end