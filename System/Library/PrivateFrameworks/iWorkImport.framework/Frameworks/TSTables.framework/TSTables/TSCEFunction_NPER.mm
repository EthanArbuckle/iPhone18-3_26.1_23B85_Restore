@interface TSCEFunction_NPER
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NPER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v8 = **arguments;
  v12 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10, v11);
  }

  else
  {
    memset(&v133, 0, sizeof(v133));
  }

  sub_22114F414(&v134, &v133);
  v132 = 0;
  v14 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v12, v13, context, spec, 0, &v132);
  v15 = v132;
  v131[1] = objc_msgSend_decimalRepresentation(v14, v16, v17, v18, v19);
  v131[2] = v20;
  if (v15)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v20, v15, v21, v22);
    goto LABEL_41;
  }

  v24 = *(*arguments + 8);
  v28 = v24;
  if (v24)
  {
    objc_msgSend_formatWithContext_(v24, v25, context, v26, v27);
  }

  else
  {
    memset(&v133, 0, sizeof(v133));
  }

  sub_22114F414(&v134, &v133);
  v131[0] = 0;
  v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v29, context, spec, 1, v131);
  v15 = v131[0];
  *&v130 = objc_msgSend_decimalRepresentation(v30, v31, v32, v33, v34);
  *(&v130 + 1) = v35;
  if (!v15)
  {
    v38 = *(*arguments + 16);
    v42 = v38;
    if (v38)
    {
      objc_msgSend_formatWithContext_(v38, v39, context, v40, v41);
    }

    else
    {
      memset(&v133, 0, sizeof(v133));
    }

    sub_22114F414(&v134, &v133);
    v129 = 0;
    v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v43, context, spec, 2, &v129);
    v15 = v129;
    v113 = v44;
    *&v128 = objc_msgSend_decimalRepresentation(v44, v45, v46, v47, v48);
    *(&v128 + 1) = v49;
    if (v15)
    {
      v23 = objc_msgSend_raiseErrorOrConvert_(context, v49, v15, v50, v51);
LABEL_16:
      v52 = v113;
LABEL_39:

      goto LABEL_40;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      goto LABEL_28;
    }

    v53 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v53, v54, v55, v56, v57) & 1) == 0)
    {
      v112 = v42;
      if (v53)
      {
        objc_msgSend_formatWithContext_(v53, v58, context, v59, v60);
      }

      else
      {
        memset(&v133, 0, sizeof(v133));
      }

      sub_22114F414(&v134, &v133);
      v127[0] = 0;
      v62 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v53, v61, context, spec, 3, v127);
      v15 = v127[0];
      v111 = v62;
      v127[1] = objc_msgSend_decimalRepresentation(v62, v63, v64, v65, v66);
      v127[2] = v67;
      v42 = v112;
      if (v15)
      {
        v23 = objc_msgSend_raiseErrorOrConvert_(context, v67, v15, v68, v69);

        goto LABEL_16;
      }
    }

    if (*(arguments + 1) - *arguments < 0x21uLL)
    {
LABEL_28:
      v78 = 0;
    }

    else
    {
      v70 = *(*arguments + 32);
      if (objc_msgSend_isTokenOrEmptyArg(v70, v71, v72, v73, v74))
      {
        v78 = 0;
      }

      else
      {
        if (v70)
        {
          objc_msgSend_formatWithContext_(v70, v75, context, v76, v77);
        }

        else
        {
          memset(&v133, 0, sizeof(v133));
        }

        sub_22114F414(&v134, &v133);
        v126 = 0;
        v105 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v70, v104, context, spec, 4, &v126);
        v15 = v126;
        if (v15)
        {
          v23 = objc_msgSend_raiseErrorOrConvert_(context, v106, v15, v108, v109);

          goto LABEL_16;
        }

        v133._tskFormat = objc_msgSend_decimalRepresentation(v105, v106, v107, v108, v109);
        *&v133._formatType = v110;
        v78 = TSUDecimal::isZero(&v133) ^ 1;
      }
    }

    v52 = v113;
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v133._tskFormat = TSUDecimal::operator-();
      *&v133._formatType = v79;
      TSUDecimal::operator-=();
      TSUDecimal::operator/=();
    }

    else
    {
      TSUDecimal::operator=();
      if (v78)
      {
        TSUDecimal::operator=();
        *&v133._tskFormat = v122;
        TSUDecimal::operator+=();
        v123._decimal.w[0] = v133._tskFormat;
        v123._decimal.w[1] = *&v133._formatType;
        *&v133._tskFormat = v130;
        TSUDecimal::operator*=();
        v124 = *&v133._tskFormat;
      }

      else
      {
        v124 = v130;
      }

      v80 = TSUDecimal::operator-();
      v82 = v81;
      *&v133._tskFormat = v124;
      TSUDecimal::operator/=();
      v122 = *&v133._tskFormat;
      v133._tskFormat = v80;
      *&v133._formatType = v82;
      TSUDecimal::operator+=();
      tskFormat = v133._tskFormat;
      v83 = *&v133._formatType;
      *&v133._tskFormat = v124;
      TSUDecimal::operator/=();
      v118 = v133._tskFormat;
      v119 = *&v133._formatType;
      *&v133._tskFormat = v128;
      TSUDecimal::operator+=();
      v120 = v133._tskFormat;
      v121 = *&v133._formatType;
      v133._tskFormat = tskFormat;
      *&v133._formatType = v83;
      TSUDecimal::operator/=();
      v123._decimal.w[0] = v133._tskFormat;
      v123._decimal.w[1] = *&v133._formatType;
      v85 = sub_22131C960(&v123);
      v87 = v86;
      TSUDecimal::operator=();
      *&v133._tskFormat = v114;
      TSUDecimal::operator+=();
      v115._decimal.w[0] = v133._tskFormat;
      v115._decimal.w[1] = *&v133._formatType;
      v116 = sub_22131C960(&v115);
      v117 = v88;
      v133._tskFormat = v85;
      *&v133._formatType = v87;
      TSUDecimal::operator/=();
    }

    v125._decimal.w[0] = v133._tskFormat;
    v125._decimal.w[1] = *&v133._formatType;
    if (TSUDecimal::isInf(&v125))
    {
      v93 = objc_msgSend_functionName(spec, v89, v90, v91, v92);
      v97 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v94, v93, v95, v96);
      v23 = objc_msgSend_raiseErrorOrConvert_(context, v98, v97, v99, v100);
    }

    else
    {
      sub_221256020(&v134, &v133);
      v23 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v101, &v125, &v133, v102);
    }

    v15 = 0;
    goto LABEL_39;
  }

  v23 = objc_msgSend_raiseErrorOrConvert_(context, v35, v15, v36, v37);
LABEL_40:

LABEL_41:
  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }

  return v23;
}

@end