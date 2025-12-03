@interface TSCEFunction_PV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec, arguments);
  sub_221327DF4(v105, spec, v8);

  v9 = **arguments;
  v104 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v104);
  v12 = v104;
  v103[1] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  v103[2] = v17;
  if (v12)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v17, v12, v18, v19);
    goto LABEL_33;
  }

  v21 = *(*arguments + 8);
  v103[0] = 0;
  v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v22, context, spec, 1, v103);
  v12 = v103[0];
  v102._decimal.w[0] = objc_msgSend_decimalRepresentation(v23, v24, v25, v26, v27);
  v102._decimal.w[1] = v28;
  if (!v12)
  {
    v31 = *(*arguments + 16);
    v101 = 0;
    v93 = v31;
    v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v31, v32, context, spec, 2, &v101);
    v12 = v101;
    sub_2213188C0(v105, v33);
    v38 = objc_msgSend_decimalRepresentation(v33, v34, v35, v36, v37);
    v91 = v39;
    v92 = v38;
    if (v12)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v39, v12, v40, v41);
LABEL_31:

      goto LABEL_32;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments >= 0x19uLL)
    {
      v90 = *(*arguments + 24);
      if ((objc_msgSend_isTokenOrEmptyArg(v90, v45, v46, v47, v48) & 1) == 0)
      {
        v100[0] = 0;
        v50 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v90, v49, context, spec, 3, v100);
        v12 = v100[0];
        sub_2213188C0(v105, v50);
        v100[1] = objc_msgSend_decimalRepresentation(v50, v51, v52, v53, v54);
        v100[2] = v55;
        if (v12)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v55, v12, v56, v57);

          goto LABEL_31;
        }
      }
    }

    if (v106)
    {
      v58 = objc_msgSend_raiseErrorOrConvert_(context, v42, v106, v43, v44);
    }

    else
    {
      if (*(arguments + 1) - *arguments < 0x21uLL)
      {
        v65 = 0;
      }

      else
      {
        v59 = *(*arguments + 32);
        if (objc_msgSend_isTokenOrEmptyArg(v59, v60, v61, v62, v63))
        {
          v65 = 0;
        }

        else
        {
          v99 = 0;
          v66 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v59, v64, context, spec, 4, &v99);
          v12 = v99;
          if (v12)
          {
            v20 = objc_msgSend_raiseErrorOrConvert_(context, v67, v12, v69, v70);

            goto LABEL_31;
          }

          v107._decimal.w[0] = objc_msgSend_decimalRepresentation(v66, v67, v68, v69, v70);
          v107._decimal.w[1] = v71;
          v65 = TSUDecimal::isZero(&v107) ^ 1;
        }
      }

      TSUDecimal::operator=();
      TSUDecimal::operator=();
      if (TSUDecimal::operator==())
      {
        v72 = TSUDecimal::operator-();
        v74 = v73;
        v107._decimal.w[0] = v92;
        v107._decimal.w[1] = v91;
        TSUDecimal::operator*=();
        v97 = v107;
        v107._decimal.w[0] = v72;
        v107._decimal.w[1] = v74;
        TSUDecimal::operator-=();
      }

      else
      {
        TSUDecimal::operator=();
        v107 = v95;
        TSUDecimal::operator+=();
        v96 = v107;
        v97._decimal.w[0] = sub_2212B2BA4(&v96, &v102);
        v97._decimal.w[1] = v75;
        v77 = TSUDecimal::operator-();
        if (v65)
        {
          v78 = v76;
          TSUDecimal::operator=();
          v107 = v94;
          TSUDecimal::operator+=();
          v107._decimal.w[0] = v92;
          v107._decimal.w[1] = v91;
          TSUDecimal::operator*=();
          v80 = v107._decimal.w[0];
          v79 = v107._decimal.w[1];
          TSUDecimal::operator=();
          v107 = v97;
          TSUDecimal::operator-=();
          TSUDecimal::operator/=();
          v107._decimal.w[0] = v80;
          v107._decimal.w[1] = v79;
        }

        else
        {
          v78 = v76;
          TSUDecimal::operator=();
          v107 = v97;
          TSUDecimal::operator-=();
          TSUDecimal::operator/=();
          v107._decimal.w[0] = v92;
          v107._decimal.w[1] = v91;
        }

        TSUDecimal::operator*=();
        v96 = v107;
        v107._decimal.w[0] = v77;
        v107._decimal.w[1] = v78;
        TSUDecimal::operator-=();
        TSUDecimal::operator/=();
      }

      v98 = v107;
      v81 = [TSCENumberValue alloc];
      v86 = sub_2213189D8(v105, v82, v83, v84, v85);
      v58 = objc_msgSend_initWithDecimal_baseUnit_(v81, v87, &v98, v86, v88);
    }

    v20 = v58;
    v12 = 0;
    goto LABEL_31;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(context, v28, v12, v29, v30);
LABEL_32:

LABEL_33:

  return v20;
}

@end