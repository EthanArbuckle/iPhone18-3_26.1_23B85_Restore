@interface TSCEFunction_FV
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_FV

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = objc_msgSend_calcEngine(a3, a2, a3, a4, a5);
  sub_221327DF4(v104, a4, v8);

  v9 = **a5;
  v103 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, a3, a4, 0, &v103);
  v12 = v103;
  v102[1] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  v102[2] = v17;
  if (v12)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v17, v12, v18, v19);
    goto LABEL_35;
  }

  v21 = *(*a5 + 8);
  v102[0] = 0;
  v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v22, a3, a4, 1, v102);
  v12 = v102[0];
  objc_msgSend_doubleRepresentation(v23, v24, v25, v26, v27);
  if (!v12)
  {
    v31 = *(*a5 + 16);
    v101 = 0;
    v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v31, v32, a3, a4, 2, &v101);
    v12 = v101;
    sub_2213188C0(v104, v33);
    v93 = objc_msgSend_decimalRepresentation(v33, v34, v35, v36, v37);
    if (v12)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(a3, v38, v12, v39, v40);
LABEL_33:

      goto LABEL_34;
    }

    v92 = v38;
    if (v105)
    {
      v41 = objc_msgSend_raiseErrorOrConvert_(a3, v38, v105, v39, v40);
    }

    else
    {
      TSUDecimal::operator=();
      if (*(a5 + 1) - *a5 >= 0x19uLL)
      {
        v90 = *(*a5 + 24);
        if ((objc_msgSend_isTokenOrEmptyArg(v90, v45, v46, v47, v48) & 1) == 0)
        {
          v100[0] = 0;
          v89 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v90, v49, a3, a4, 3, v100);
          v12 = v100[0];
          if (v12)
          {
            v20 = objc_msgSend_raiseErrorOrConvert_(a3, v50, v12, v51, v52);

            goto LABEL_33;
          }

          sub_2213188C0(v104, v89);
          v100[1] = objc_msgSend_decimalRepresentation(v89, v53, v54, v55, v56);
          v100[2] = v57;
        }
      }

      if (v105)
      {
        v41 = objc_msgSend_raiseErrorOrConvert_(a3, v42, v105, v43, v44);
      }

      else
      {
        if (*(a5 + 1) - *a5 < 0x21uLL)
        {
          v64 = 0;
        }

        else
        {
          v58 = *(*a5 + 32);
          if (objc_msgSend_isTokenOrEmptyArg(v58, v59, v60, v61, v62))
          {
            v64 = 0;
          }

          else
          {
            v99 = 0;
            v91 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v58, v63, a3, a4, 4, &v99);
            v12 = v99;
            if (v12)
            {
              v20 = objc_msgSend_raiseErrorOrConvert_(a3, v65, v12, v67, v68);

              goto LABEL_33;
            }

            v106._decimal.w[0] = objc_msgSend_decimalRepresentation(v91, v65, v66, v67, v68);
            v106._decimal.w[1] = v69;
            v64 = TSUDecimal::isZero(&v106) ^ 1;
          }
        }

        TSUDecimal::operator=();
        TSUDecimal::operator=();
        if (TSUDecimal::operator==())
        {
          v70 = TSUDecimal::operator-();
          v72 = v71;
          TSUDecimal::operator=();
          v106._decimal.w[0] = v93;
          v106._decimal.w[1] = v92;
          TSUDecimal::operator*=();
          v97 = v106;
          v106._decimal.w[0] = v70;
          v106._decimal.w[1] = v72;
          TSUDecimal::operator-=();
        }

        else
        {
          TSUDecimal::operator=();
          v106 = v95;
          TSUDecimal::operator+=();
          v96 = v106;
          TSUDecimal::operator=();
          v97._decimal.w[0] = sub_2212B2BA4(&v96, &v106);
          v97._decimal.w[1] = v73;
          if (v64)
          {
            v106._decimal.w[0] = TSUDecimal::operator-();
            v106._decimal.w[1] = v74;
            TSUDecimal::operator*=();
            v76 = v106._decimal.w[0];
            v75 = v106._decimal.w[1];
            TSUDecimal::operator=();
            v106 = v94;
            TSUDecimal::operator+=();
            v106._decimal.w[0] = v93;
            v106._decimal.w[1] = v92;
            TSUDecimal::operator*=();
            v78 = v106._decimal.w[0];
            v77 = v106._decimal.w[1];
            TSUDecimal::operator=();
            v106 = v97;
            TSUDecimal::operator-=();
            TSUDecimal::operator/=();
            v106._decimal.w[0] = v78;
            v106._decimal.w[1] = v77;
          }

          else
          {
            v106._decimal.w[0] = TSUDecimal::operator-();
            v106._decimal.w[1] = v79;
            TSUDecimal::operator*=();
            v76 = v106._decimal.w[0];
            v75 = v106._decimal.w[1];
            TSUDecimal::operator=();
            v106 = v97;
            TSUDecimal::operator-=();
            TSUDecimal::operator/=();
            v106._decimal.w[0] = v93;
            v106._decimal.w[1] = v92;
          }

          TSUDecimal::operator*=();
          v96 = v106;
          v106._decimal.w[0] = v76;
          v106._decimal.w[1] = v75;
          TSUDecimal::operator-=();
        }

        v98 = v106;
        v80 = [TSCENumberValue alloc];
        v85 = sub_2213189D8(v104, v81, v82, v83, v84);
        v41 = objc_msgSend_initWithDecimal_baseUnit_(v80, v86, &v98, v85, v87);
      }
    }

    v20 = v41;
    v12 = 0;
    goto LABEL_33;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(a3, v28, v12, v29, v30);
LABEL_34:

LABEL_35:

  return v20;
}

@end