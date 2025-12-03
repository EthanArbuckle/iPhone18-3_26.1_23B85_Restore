@interface TSCEFunction_DB
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DB

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec, arguments);
  sub_221327DF4(v149, spec, v8);

  v9 = **arguments;
  v148 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v148);
  v12 = v148;
  sub_2213188C0(v149, v11);
  v147._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15, v16);
  v147._decimal.w[1] = v17;
  if (v12)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v17, v12, v18, v19);
    goto LABEL_16;
  }

  v21 = *(*arguments + 8);
  v146 = 0;
  v130 = v21;
  v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v22, context, spec, 1, &v146);
  v12 = v146;
  sub_2213188C0(v149, v23);
  v28 = objc_msgSend_decimalRepresentation(v23, v24, v25, v26, v27);
  if (!v12)
  {
    v32 = v28;
    v33 = v29;
    v34 = *(*arguments + 16);
    v145 = 0;
    v129 = v34;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 2, &v145);
    v12 = v145;
    v128 = v36;
    v144._decimal.w[0] = objc_msgSend_decimalRepresentation(v36, v37, v38, v39, v40);
    v144._decimal.w[1] = v41;
    if (v12)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v41, v12, v42, v43);
LABEL_14:

      goto LABEL_15;
    }

    v127 = v23;
    v44 = *(*arguments + 24);
    v143 = 0;
    v126 = v44;
    v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v45, context, spec, 3, &v143);
    v12 = v143;
    v51 = objc_msgSend_trunc(v46, v47, v48, v49, v50);

    v125 = v51;
    v52 = v51;
    v23 = v127;
    objc_msgSend_doubleRepresentation(v52, v53, v54, v55, v56);
    if (v12)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v57, v12, v58, v59);
LABEL_13:

      goto LABEL_14;
    }

    if (v150)
    {
      v61 = objc_msgSend_raiseErrorOrConvert_(context, v57, v150, v58, v59);
LABEL_11:
      v20 = v61;
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }

    if (v60 >= 1.0)
    {
      v63 = v60;
    }

    else
    {
      v63 = 1.0;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments >= 0x21uLL)
    {
      v64 = *(*arguments + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v64, v65, v66, v67, v68) & 1) == 0 && objc_msgSend_nativeType(v64, v69, v70, v71, v72) != 10)
      {
        v141 = 0;
        v74 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v64, v73, context, spec, 4, &v141);
        v12 = v141;
        v124 = v74;
        v79 = objc_msgSend_trunc(v74, v75, v76, v77, v78);

        v142._decimal.w[0] = objc_msgSend_decimalRepresentation(v79, v80, v81, v82, v83);
        v142._decimal.w[1] = v84;
        if (v12)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v84, v12, v85, v86);

          goto LABEL_13;
        }
      }
    }

    TSUDecimal::doubleValue(&v144);
    v88 = v87;
    TSUDecimal::operator=();
    v89 = floor(v88);
    if (TSUDecimal::operator==())
    {
      v90 = v89;
    }

    else
    {
      v90 = v89 + 1.0;
    }

    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      if (v89 < v63)
      {
        goto LABEL_36;
      }
    }

    else if (v89 + 1.0 < v63)
    {
LABEL_36:
      v95 = objc_msgSend_functionName(spec, v91, v92, v93, v94);
      v97 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v96, v95, 3, 4, 0, 1);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v98, v97, v99, v100);

      goto LABEL_12;
    }

    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v101 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v106 = sub_2213189D8(v149, v102, v103, v104, v105);
      v61 = objc_msgSend_initWithDecimal_baseUnit_(v101, v107, &v151, v106, v108);
    }

    else
    {
      TSUDecimal::operator=();
      v151._decimal.w[0] = v32;
      v151._decimal.w[1] = v33;
      TSUDecimal::operator/=();
      v137 = v151;
      TSUDecimal::operator=();
      v151 = v135;
      TSUDecimal::operator/=();
      v136 = v151;
      v138._decimal.w[0] = sub_2212B2BA4(&v137, &v136);
      v138._decimal.w[1] = v109;
      v151 = v139;
      TSUDecimal::operator-=();
      v140 = v151;
      TSUDecimal::operator=();
      TSUDecimal::operator*=();
      TSUDecimal::round(&v140);
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      v151 = v142;
      TSUDecimal::operator/=();
      v138 = v151;
      v151 = v147;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v137 = v151;
      if (v63 == 1.0)
      {
        v139 = v137;
      }

      else
      {
        if (v63 == v90 && (TSUDecimal::operator=(), (TSUDecimal::operator==() & 1) == 0))
        {
          v151 = v147;
          TSUDecimal::operator-=();
          v136 = v151;
          v151 = v140;
          TSUDecimal::operator*=();
          v112 = v151;
          TSUDecimal::operator=();
          v151 = v133;
          TSUDecimal::operator-=();
          v134 = v151;
          TSUDecimal::operator=();
          v135._decimal.w[0] = sub_2212B2BA4(&v134, &v132);
          v135._decimal.w[1] = v113;
          v151 = v112;
          TSUDecimal::operator*=();
          v114 = v151;
          TSUDecimal::operator=();
          v151 = v131;
          TSUDecimal::operator-=();
          v151 = v114;
          TSUDecimal::operator*=();
          v115 = v151;
          TSUDecimal::operator=();
          v151 = v115;
          TSUDecimal::operator/=();
        }

        else
        {
          v151 = v147;
          TSUDecimal::operator-=();
          v136 = v151;
          v151 = v140;
          TSUDecimal::operator*=();
          v110 = v151;
          TSUDecimal::operator=();
          v151 = v133;
          TSUDecimal::operator-=();
          v134 = v151;
          TSUDecimal::operator=();
          v135._decimal.w[0] = sub_2212B2BA4(&v134, &v132);
          v135._decimal.w[1] = v111;
          v151 = v110;
          TSUDecimal::operator*=();
        }

        v139 = v151;
      }

      v116 = [TSCENumberValue alloc];
      v121 = sub_2213189D8(v149, v117, v118, v119, v120);
      v61 = objc_msgSend_initWithDecimal_baseUnit_(v116, v122, &v139, v121, v123);
    }

    goto LABEL_11;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(context, v29, v12, v30, v31);
LABEL_15:

LABEL_16:

  return v20;
}

@end