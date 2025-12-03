@interface TSCEFunction_SUMPRODUCT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUMPRODUCT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = *(arguments + 1) - *arguments;
  v9 = v8 >> 3;
  v112 = objc_msgSend_zero(TSCENumberValue, a2, context, spec, arguments);
  if (!(v8 >> 3))
  {
    v41 = objc_msgSend_functionName(spec, v10, v11, v12, v13);
    v44 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v42, v41, 0, v43);
    v48 = objc_msgSend_raiseErrorOrConvert_(context, v45, v44, v46, v47);

    goto LABEL_57;
  }

  memset(v127, 0, 24);
  sub_2212B7230(&v124, (v8 >> 3));
  v111 = v8 >> 3;
  if (v9 >= 1)
  {
    v14 = 0;
    v15 = 0;
    LODWORD(v16) = 0;
    v113 = v8;
    v17 = (v8 >> 3) & 0x7FFFFFFF;
    while (1)
    {
      v18 = *(*arguments + 8 * v14);
      v123 = 0;
      v20 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v18, v19, context, spec, v14, 1, &v123);
      v25 = v123;
      v116._tskFormat = v20;
      if (v25)
      {
        break;
      }

      if (objc_msgSend_gridKind(v20, v21, v22, v23, v24) == 1 && objc_msgSend_count(v116._tskFormat, v26, v27, v28, v29) >= 2)
      {
        v93 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v26, v27, v28, v29);
        v48 = objc_msgSend_raiseErrorOrConvert_(context, v101, v93, v102, v103);
LABEL_52:

LABEL_53:
        goto LABEL_54;
      }

      if (v14)
      {
        if (__PAIR64__(v16, v15) != objc_msgSend_dimensions(v116._tskFormat, v26, v27, v28, v29))
        {
          v93 = objc_msgSend_functionName(spec, v30, v31, v32, v33);
          v97 = objc_msgSend_differentNumberOfElementsErrorForFunctionName_(TSCEError, v94, v93, v95, v96);
          v48 = objc_msgSend_raiseErrorOrConvert_(context, v98, v97, v99, v100);

          goto LABEL_52;
        }
      }

      else
      {
        v34 = objc_msgSend_dimensions(v116._tskFormat, v26, v27, v28, v29);
        v15 = v34;
        v16 = HIDWORD(v34);
      }

      if ((objc_msgSend_isNil(v116._tskFormat, v30, v31, v32, v33) & 1) == 0)
      {
        sub_22121488C(v127, &v116._tskFormat);
      }

      if (v116._tskFormat)
      {
        objc_msgSend_formatWithContext_(v116._tskFormat, v35, context, v36, v37);
      }

      else
      {
        memset(v119, 0, 32);
      }

      v38 = v125;
      if (v125 >= v126)
      {
        v39 = sub_22114F468(&v124, v119);
      }

      else
      {
        TSCEFormat::TSCEFormat(v125, v119);
        v39 = v38 + 1;
      }

      v125 = v39;

      if (v17 == ++v14)
      {
        v40 = v15 * v16;
        LODWORD(v9) = v111;
        v8 = v113;
        goto LABEL_23;
      }
    }

    v48 = objc_msgSend_raiseErrorOrConvert_(context, v21, v25, v23, v24);
    goto LABEL_53;
  }

  v40 = 0;
LABEL_23:
  contextCopy = context;
  v119[0] = contextCopy;
  v119[1] = spec;
  v119[2] = 0;
  v119[3] = 0;
  *(&v119[3] + 7) = 0;
  v120 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v121 = 0;
  v122 = 0;
  if (v40 < 1)
  {
    v82 = v112;
LABEL_42:
    sub_221256020(&v124, &v115);
    TSCEFormat::TSCEFormat(&v116, &v115);
    objc_msgSend_setFormat_(v82, v86, &v116, v87, v88);
    v48 = v82;
    v25 = 0;
    v112 = v48;
    goto LABEL_49;
  }

  v50 = contextCopy;
  v51 = 0;
  v52 = 0;
  v114 = (v8 >> 3) & 0x7FFFFFFF;
  v108 = v40;
  v109 = v40;
  while (1)
  {
    v53 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v57 = objc_msgSend_initWithDecimal_(v53, v54, &v116, v55, v56);
    v59 = v57;
    v110 = v52;
    if (v9 >= 1)
    {
      break;
    }

    v81 = v57;
LABEL_35:
    if (v110)
    {
      v117 = 0;
      v82 = objc_msgSend_add_functionSpec_outError_(v112, v58, v81, spec, &v117);
      v25 = v117;

      if (v25)
      {
        v48 = objc_msgSend_raiseErrorOrConvert_(v50, v83, v25, v84, v85);
        v59 = v81;
        v112 = v82;
        goto LABEL_48;
      }
    }

    else
    {
      v82 = v81;
    }

    ++v51;
    v52 = 1;
    v112 = v82;
    LODWORD(v9) = v111;
    if (v51 == v109)
    {
      goto LABEL_42;
    }
  }

  v60 = 0;
  while (1)
  {
    v61 = *(v127[0] + 8 * v60);
    LODWORD(v119[3]) = v60;
    v62 = v119[2];
    v119[2] = 0;

    v65 = objc_msgSend_valueAtIndex_accessContext_(v61, v63, v51, v119, v64);
    if (objc_msgSend_deepType_(v65, v66, v50, v67, v68) == 10)
    {
      v77 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v69, v65, v50, spec, v60);
      v92 = objc_msgSend_raiseErrorOrConvert_(v50, v89, v77, v90, v91);
LABEL_45:
      v48 = v92;
      v25 = 0;
      goto LABEL_47;
    }

    if (objc_msgSend_isNil(v65, v69, v70, v71, v72))
    {
      if (v108 != 1)
      {
        v81 = objc_msgSend_zero(TSCENumberValue, v73, v74, v75, v76);

        goto LABEL_35;
      }

      v77 = objc_msgSend_emptyArgumentError(TSCEError, v73, v74, v75, v76);
      v92 = objc_msgSend_raiseErrorOrConvert_(v50, v105, v77, v106, v107);
      goto LABEL_45;
    }

    v118 = 0;
    v77 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v65, v73, v50, spec, v60, &v118);
    v25 = v118;
    if (v25)
    {
      break;
    }

    v81 = objc_msgSend_multiply_context_(v59, v78, v77, v50, v80);

    ++v60;
    v59 = v81;
    if (v114 == v60)
    {
      goto LABEL_35;
    }
  }

  v48 = objc_msgSend_raiseErrorOrConvert_(v50, v78, v25, v79, v80);
LABEL_47:

LABEL_48:
LABEL_49:

LABEL_54:
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  v119[0] = v127;
  sub_22107C2C0(v119);

LABEL_57:

  return v48;
}

@end