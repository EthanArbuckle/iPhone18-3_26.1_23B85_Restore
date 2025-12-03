@interface TSCEFunction_MID
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MID

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v10 = v8;
  v90 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v90);
    v11 = v90;
    if (v11)
    {
      v15 = v11;
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13, v14);
      goto LABEL_25;
    }
  }

  else
  {
    v91 = 0;
    v92 = 0;
    v93 = 0;
  }

  v17 = *(*arguments + 8);
  if (objc_msgSend_isEmptyArg(v17, v18, v19, v20, v21))
  {
    v26 = objc_msgSend_functionName(spec, v22, v23, v24, v25);
    v28 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v27, 2, v26, 1, 1.0);
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v29, v28, v30, v31);
    v15 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v89 = 0;
  v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v22, context, spec, 1, &v89);
  v15 = v89;
  v26 = objc_msgSend_trunc(v32, v33, v34, v35, v36);

  if (!v15)
  {
    v86._tskFormat = objc_msgSend_decimalRepresentation(v26, v37, v38, v39, v40);
    *&v86._formatType = v41;
    v42 = TSUDecimal::truncatedUIntegerValue(&v86);
    v47 = sub_2210772BC(&v91, v43, v44, v45, v46);
    v48 = v42 - 1;
    v49 = sub_22157EFF8(v47, v42 - 1);

    v28 = *(*arguments + 16);
    v88 = 0;
    v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v50, context, spec, 2, &v88);
    v15 = v88;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v52, v15, v54, v55);
    }

    else
    {
      v86._tskFormat = objc_msgSend_decimalRepresentation(v51, v52, v53, v54, v55);
      *&v86._formatType = v56;
      v57 = TSUDecimal::truncatedUIntegerValue(&v86);
      v62 = sub_2210772BC(&v91, v58, v59, v60, v61);
      v63 = sub_22157EFF8(v62, v57 + v48);

      v68 = sub_221078910(&v91, v64, v65, v66, v67);
      v72 = v63 - v49;
      if (v63 < v49)
      {
        v72 = v57;
      }

      v73 = v68 - v49;
      if (v68 >= v49)
      {
        v74 = v49;
      }

      else
      {
        v74 = v68;
      }

      v75 = v72 > v73;
      if (v72 <= v73)
      {
        v76 = v49;
      }

      else
      {
        v76 = v74;
      }

      if (v75)
      {
        v72 = v68 - v74;
      }

      v86._tskFormat = v76;
      *&v86._formatType = v72;
      sub_2210780F0(&v91, &v86, v69, v70, v71, v87);
      v16 = sub_2210789F4(v87, v77, v78, v79, v80);
      v85._tskFormat = 0;
      v85._formatType = 0;
      v85._formatState = 0;
      *&v85._durationFormat = 1057;
      *(&v85._durationFormat + 2) = 1;
      *&v85._baseFormat.base = -50266102;
      v85._numberFormat = 253;
      TSCEFormat::TSCEFormat(&v86, &v85);
      objc_msgSend_setFormat_(v16, v81, &v86, v82, v83);
    }

    goto LABEL_23;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v37, v15, v39, v40);
LABEL_24:

LABEL_25:

  return v16;
}

@end