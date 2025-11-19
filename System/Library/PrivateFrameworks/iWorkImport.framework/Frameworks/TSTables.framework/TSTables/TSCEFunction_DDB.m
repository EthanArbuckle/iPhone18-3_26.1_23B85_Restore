@interface TSCEFunction_DDB
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DDB

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = objc_msgSend_calcEngine(a3, a2, a3, a4, a5);
  sub_221327DF4(v118, a4, v8);

  v9 = **a5;
  v117 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, a3, a4, 0, &v117);
  v12 = v117;
  sub_2213188C0(v118, v11);
  if (v12)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(a3, v13, v12, v15, v16);
    goto LABEL_16;
  }

  v116._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  v116._decimal.w[1] = v18;
  v19 = *(*a5 + 8);
  v115 = 0;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, a3, a4, 1, &v115);
  v12 = v115;
  sub_2213188C0(v118, v21);
  v114[1] = objc_msgSend_decimalRepresentation(v21, v22, v23, v24, v25);
  v114[2] = v26;
  if (!v12)
  {
    v29 = *(*a5 + 16);
    v114[0] = 0;
    v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v30, a3, a4, 2, v114);
    v12 = v114[0];
    v113[1] = objc_msgSend_decimalRepresentation(v31, v32, v33, v34, v35);
    v113[2] = v36;
    if (v12)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v36, v12, v37, v38);
LABEL_14:

      goto LABEL_15;
    }

    v102 = v29;
    v39 = *(*a5 + 24);
    v113[0] = 0;
    v101 = v39;
    v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v40, a3, a4, 3, v113);
    v12 = v113[0];
    v100 = v41;
    v42 = v41;
    v29 = v102;
    v112._decimal.w[0] = objc_msgSend_decimalRepresentation(v42, v43, v44, v45, v46);
    v112._decimal.w[1] = v47;
    if (v12)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(a3, v47, v12, v48, v49);
LABEL_13:

      goto LABEL_14;
    }

    if (v119)
    {
      v50 = objc_msgSend_raiseErrorOrConvert_(a3, v47, v119, v48, v49);
    }

    else
    {
      if (TSUDecimal::operator<())
      {
        v56 = objc_msgSend_functionName(a4, v52, v53, v54, v55);
        v58 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v57, v56, 3, 4, 0, 1);
        v17 = objc_msgSend_raiseErrorOrConvert_(a3, v59, v58, v60, v61);

        goto LABEL_12;
      }

      TSUDecimal::operator=();
      if (TSUDecimal::operator<())
      {
        TSUDecimal::operator=();
      }

      TSUDecimal::operator=();
      if (*(a5 + 1) - *a5 >= 0x21uLL)
      {
        v62 = *(*a5 + 32);
        if ((objc_msgSend_isTokenOrEmptyArg(v62, v63, v64, v65, v66) & 1) == 0 && objc_msgSend_nativeType(v62, v67, v68, v69, v70) != 10)
        {
          v110 = 0;
          v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v62, v71, a3, a4, 4, &v110);
          v12 = v110;
          v99 = v72;
          v111._decimal.w[0] = objc_msgSend_decimalRepresentation(v72, v73, v74, v75, v76);
          v111._decimal.w[1] = v77;
          if (v12)
          {
            v17 = objc_msgSend_raiseErrorOrConvert_(a3, v77, v12, v78, v79);

            goto LABEL_13;
          }
        }
      }

      if (TSUDecimal::operator<=())
      {
        v120 = v111;
        TSUDecimal::operator/=();
        v109[1] = v120;
        TSUDecimal::operator=();
        if ((TSUDecimal::operator<=() & 1) == 0)
        {
          TSUDecimal::operator=();
        }

        v120 = v116;
        TSUDecimal::operator*=();
        v80 = v120;
        TSUDecimal::operator=();
        v120 = v106;
        TSUDecimal::operator-=();
        v107 = v120;
        TSUDecimal::operator=();
        v120 = v112;
        TSUDecimal::operator-=();
        v105 = v120;
        v108._decimal.w[0] = sub_2212B2BA4(&v107, &v105);
        v108._decimal.w[1] = v81;
        v120 = v80;
        TSUDecimal::operator*=();
        v109[0] = v120;
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v120 = v103[1];
        TSUDecimal::operator-=();
        v104 = v120;
        TSUDecimal::operator=();
        v120 = v112;
        TSUDecimal::operator-=();
        v103[0] = v120;
        v105._decimal.w[0] = sub_2212B2BA4(&v104, v103);
        v105._decimal.w[1] = v82;
        v120 = v106;
        TSUDecimal::operator-=();
        v107 = v120;
        v120 = v116;
        TSUDecimal::operator*=();
        v108 = v120;
        v120 = v116;
        TSUDecimal::operator-=();
        TSUDecimal::operator-=();
        v107 = v120;
        if ((TSUDecimal::operator<=() & 1) == 0)
        {
          v120 = v116;
          TSUDecimal::operator-=();
          TSUDecimal::operator-=();
          v109[0] = v120;
        }

        TSUDecimal::operator=();
        if (TSUDecimal::operator<())
        {
          TSUDecimal::operator=();
        }

        v83 = [TSCENumberValue alloc];
        v88 = sub_2213189D8(v118, v84, v85, v86, v87);
        v50 = objc_msgSend_initWithDecimal_baseUnit_(v83, v89, v109, v88, v90);
      }

      else
      {
        v91 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        v96 = sub_2213189D8(v118, v92, v93, v94, v95);
        v50 = objc_msgSend_initWithDecimal_baseUnit_(v91, v97, &v120, v96, v98);
      }
    }

    v17 = v50;
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(a3, v26, v12, v27, v28);
LABEL_15:

LABEL_16:

  return v17;
}

@end