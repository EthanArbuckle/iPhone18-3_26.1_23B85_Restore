@interface TSCEFunction_POISSON
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_POISSON

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v119[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, v119);
  v11 = v119[0];
  v118._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v118._decimal.w[1] = v16;
  TSUDecimal::doubleValue(&v118);
  if (v11)
  {
    v22 = objc_msgSend_raiseErrorOrConvert_(a3, v17, v11, v19, v20);
    goto LABEL_20;
  }

  v23 = v21;
  if (!objc_msgSend_hasUnits(v10, v17, v18, v19, v20))
  {
    v28 = *(*a5 + 8);
    v117 = 0;
    v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v35, a3, a4, 1, &v117);
    v36 = v117;
    if (v36)
    {
      v11 = v36;
      v22 = objc_msgSend_raiseErrorOrConvert_(a3, v37, v36, v39, v40);
      goto LABEL_19;
    }

    v116._decimal.w[0] = objc_msgSend_decimalRepresentation(v31, v37, v38, v39, v40);
    v116._decimal.w[1] = v41;
    if (objc_msgSend_hasUnits(v31, v41, v42, v43, v44))
    {
      v49 = objc_msgSend_functionName(a4, v45, v46, v47, v48);
      v52 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v50, v49, 2, v51);
      v22 = objc_msgSend_raiseErrorOrConvert_(a3, v53, v52, v54, v55);

      v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v49 = *(*a5 + 16);
    v115 = 0;
    v57 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v49, v56, a3, a4, 2, &v115);
    v11 = v115;
    if (v11)
    {
      v61 = objc_msgSend_raiseErrorOrConvert_(a3, v58, v11, v59, v60);
LABEL_11:
      v22 = v61;
      goto LABEL_18;
    }

    TSUDecimal::operator=();
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v70 = objc_msgSend_functionName(a4, v62, v63, v64, v65);
      v72 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v77, 1, v70, 1, 1, 0.0, 4294967300.0);
      v76 = objc_msgSend_raiseErrorOrConvert_(a3, v78, v72, v79, v80);
    }

    else
    {
      TSUDecimal::operator=();
      if (!TSUDecimal::operator<())
      {
        v82 = v23;
        if (v57)
        {
          v113._decimal.w[0] = TSUDecimal::operator-();
          v113._decimal.w[1] = v83;
          v112._decimal.w[0] = sub_2216BA71C(&v113);
          v112._decimal.w[1] = v84;
          TSUDecimal::operator=();
          if (TSUDecimal::operator<=())
          {
            TSUDecimal::operator=();
            if (v82 >= 0xF4241)
            {
              v70 = objc_msgSend_functionName(a4, v85, v86, v87, v88);
              v72 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v89, v70, v90, v91);
              v76 = objc_msgSend_raiseErrorOrConvert_(a3, v92, v72, v93, v94);
              goto LABEL_17;
            }

            v111._decimal.w[0] = sub_22131C960(&v116);
            v111._decimal.w[1] = v105;
            TSUDecimal::operator=();
            if (v82)
            {
              for (i = 1; i <= v82; ++i)
              {
                TSUDecimal::operator=();
                sub_22131C960(v110);
                TSUDecimal::operator+=();
                TSUDecimal::operator=();
                TSUDecimal::operator*=();
                v108[3] = v108[2];
                v108[0] = v113;
                TSUDecimal::operator+=();
                TSUDecimal::operator-=();
                v109 = v108[0];
                v110[0]._decimal.w[0] = sub_2216BA71C(&v109);
                v110[0]._decimal.w[1] = v107;
                TSUDecimal::operator=();
                if (TSUDecimal::operator<())
                {
                  TSUDecimal::operator=();
                  if (TSUDecimal::operator==())
                  {
                    break;
                  }
                }

                TSUDecimal::operator+=();
              }
            }
          }

          else
          {
            TSUDecimal::operator=();
            v114 = v112;
            if (v82)
            {
              v97 = 2;
              do
              {
                TSUDecimal::operator=();
                TSUDecimal::operator*=();
                TSUDecimal::operator=();
                v110[0]._decimal.w[0] = sub_2212B2BA4(&v116, &v109);
                v110[0]._decimal.w[1] = v98;
                v108[0] = v112;
                TSUDecimal::operator*=();
                TSUDecimal::operator/=();
                v110[1] = v108[0];
                TSUDecimal::operator+=();
                if (TSUDecimal::isInf(&v111))
                {
                  break;
                }

                isNaN = TSUDecimal::isNaN(&v114);
                v100 = v97++ > v82 ? 1 : isNaN;
              }

              while ((v100 & 1) == 0);
            }
          }

          TSUDecimal::operator=();
          if ((TSUDecimal::operator<=() & 1) == 0)
          {
            TSUDecimal::operator=();
          }
        }

        else
        {
          v108[0]._decimal.w[0] = TSUDecimal::operator-();
          v108[0]._decimal.w[1] = v95;
          v113._decimal.w[0] = sub_2216BA71C(v108);
          v113._decimal.w[1] = v96;
          if (v82)
          {
            v112 = v116;
          }

          else
          {
            TSUDecimal::operator=();
          }

          TSUDecimal::operator*=();
          if (v82 >= 2)
          {
            for (j = 2; j <= v82; ++j)
            {
              TSUDecimal::operator=();
              if (TSUDecimal::operator<=())
              {
                break;
              }

              TSUDecimal::operator=();
              v108[0] = v116;
              TSUDecimal::operator/=();
              v111 = v108[0];
              TSUDecimal::operator*=();
            }
          }

          v114 = v112;
        }

        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v101, a3, v102, v103);
        }

        else
        {
          memset(v108, 0, 32);
        }

        v61 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v101, &v114, v108, v103);
        goto LABEL_11;
      }

      v70 = objc_msgSend_functionName(a4, v66, v67, v68, v69);
      v72 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v71, 2, v70, 0, 0.0);
      v76 = objc_msgSend_raiseErrorOrConvert_(a3, v73, v72, v74, v75);
    }

LABEL_17:
    v22 = v76;

    goto LABEL_18;
  }

  v28 = objc_msgSend_functionName(a4, v24, v25, v26, v27);
  v31 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v29, v28, 1, v30);
  v22 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v31, v33, v34);
  v11 = 0;
LABEL_19:

LABEL_20:

  return v22;
}

@end