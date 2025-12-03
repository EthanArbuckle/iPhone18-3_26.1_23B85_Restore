@interface TSCEFunction_CHOOSECOLS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CHOOSECOLS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  argumentsCopy = arguments;
  v8 = objc_msgSend_functionIndex(spec, a2, context, spec, arguments);
  v9 = **argumentsCopy;
  v133[0] = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 0, 0, v133);
  v12 = v133[0];
  if (v12)
  {
    v17 = v12;
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v15, v16);
    goto LABEL_3;
  }

  v20 = objc_msgSend_dimensions(v11, v13, v14, v15, v16);
  v25 = v20;
  v108 = HIDWORD(v20);
  if (!(HIDWORD(v20) * v20))
  {
    v85 = objc_msgSend_emptyArrayError(TSCEError, v21, v22, v23, v24);
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v86, v85, v87, v88);

    v17 = 0;
    goto LABEL_3;
  }

  v115 = v8;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v26 = argumentsCopy[1] - *argumentsCopy;
  if ((v26 >> 3) < 2)
  {
LABEL_30:
    v30 = objc_opt_new();
    v66 = v130;
    v113 = v131;
    v67 = v115;
    if (v130 != v131)
    {
      v68 = 0;
      v69 = 0;
      v70 = v25 | 0x100000000;
      if (v115 != 353)
      {
        v70 = (v25 & 0xFFFFFFFF00000000) + 1;
      }

      v111 = v70;
      v109 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      do
      {
        v71 = *v66;
        v72 = v71 << 32;
        v119._decimal.w[0] = v111;
        contextCopy = context;
        specCopy = 0;
        v123 = 0;
        v124 = -1;
        v125[0] = 0;
        *(v125 + 3) = 0;
        if (v67 != 353)
        {
          v72 = v71;
        }

        v126 = v109;
        v127 = 0;
        v128 = 0;
        v118 = 0;
        do
        {
          v117 = v72;
          sub_2211786BC(&v117, &v118);
          v75 = objc_msgSend_valueAtGridCoord_accessContext_(v11, v73, v117, &contextCopy, v74);
          v116 = v69 | (v68 << 32);
          sub_2211786BC(&v116, &v118);
          objc_msgSend_setValue_atCoord_(v30, v76, v75, &v116, v77);
          v118 = TSCEGridDimensions::nextCoordRowMajorOrder(&v119, &v118);
        }

        while (v118.column != 0x7FFFFFFF && v118.row != 0x7FFFFFFF);
        v69 += v115 != 353;
        v68 = v68 + (v115 == 353);

        ++v66;
        v67 = v115;
      }

      while (v66 != v113);
    }

    v78 = [TSCEDenseGrid alloc];
    v36 = objc_msgSend_initWithValueGrid_(v78, v79, v30, v80, v81);
    v18 = objc_msgSend_gridValue_(TSCEGridValue, v82, v36, v83, v84);
    v17 = 0;
    goto LABEL_49;
  }

  v107 = v20;
  v106 = v20 + 1;
  if (v8 == 353)
  {
    v27 = HIDWORD(v20);
  }

  else
  {
    v27 = v20;
  }

  v101 = v27;
  v110 = v27;
  v28 = (v26 >> 3) & 0x7FFFFFFF;
  v105 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v29 = 1;
  v103 = v20;
  v104 = argumentsCopy;
  v102 = v28;
  while (1)
  {
    v30 = (*argumentsCopy)[v29];
    if ((objc_msgSend_isTokenOrEmptyArg(v30, v31, v32, v33, v34) & 1) == 0)
    {
      break;
    }

LABEL_29:

    if (++v29 == v28)
    {
      goto LABEL_30;
    }
  }

  v129 = 0;
  v36 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v30, v35, context, spec, v29, 0, &v129);
  v37 = v129;
  if (v37)
  {
    v17 = v37;
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v38, v37, v39, v40);
    goto LABEL_49;
  }

  contextCopy2 = context;
  contextCopy = contextCopy2;
  specCopy = spec;
  v123 = 0;
  v124 = v29;
  LOBYTE(v125[0]) = 1;
  *(v125 + 1) = 0;
  *(&v125[1] + 1) = 0;
  v126 = v105;
  v127 = 0;
  v128 = 0;
  v47 = objc_msgSend_count(v36, v41, v42, v43, v44);
  if (!v47)
  {
LABEL_28:

    v25 = v103;
    argumentsCopy = v104;
    v28 = v102;
    goto LABEL_29;
  }

  v48 = 0;
  v112 = v36;
  while (1)
  {
    v49 = objc_msgSend_valueAtIndex_accessContext_(v36, v45, v48, &contextCopy, v46, v101);
    v120 = 0;
    v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v49, v50, contextCopy2, spec, v29, &v120);
    v17 = v120;

    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v52, v17, v54, v55);
      goto LABEL_48;
    }

    v119._decimal.w[0] = objc_msgSend_decimalRepresentation(v51, v52, v53, v54, v55);
    v119._decimal.w[1] = v56;
    v57 = TSUDecimal::truncatedIntegerValue(&v119);
    if (v57 < 0)
    {
      v62 = v106;
      if (v107 < -v57)
      {
        v62 = 0;
      }

      v63 = v57 + v62;
      v64 = v108 + 1;
      if (v108 < -v57)
      {
        v64 = 0;
      }

      v65 = v57 + v64;
      if (v115 == 353)
      {
        v57 = v65;
      }

      else
      {
        v57 = v63;
      }
    }

    if (v57 > v110)
    {
      v89 = objc_msgSend_functionName(spec, v58, v59, v60, v61);
      v91 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v90, (v29 + 1), v89, 1, v101);
      v95 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v92, v91, v93, v94);
      goto LABEL_47;
    }

    if (v57 <= 0)
    {
      break;
    }

    LODWORD(v119._decimal.w[0]) = v57 - 1;
    sub_2210C47D0(&v130, &v119);

    ++v48;
    v36 = v112;
    if (v47 == v48)
    {
      goto LABEL_28;
    }
  }

  v89 = objc_msgSend_functionName(spec, v58, v59, v60, v61);
  v97 = v108;
  if (v115 != 353)
  {
    v97 = v107;
  }

  v91 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v96, (v29 + 1), v89, 1, 1, -v97, v97);
  v95 = objc_msgSend_raiseErrorOrConvert_(contextCopy2, v98, v91, v99, v100);
LABEL_47:
  v18 = v95;

LABEL_48:
  v36 = v112;
LABEL_49:

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

LABEL_3:

  return v18;
}

@end