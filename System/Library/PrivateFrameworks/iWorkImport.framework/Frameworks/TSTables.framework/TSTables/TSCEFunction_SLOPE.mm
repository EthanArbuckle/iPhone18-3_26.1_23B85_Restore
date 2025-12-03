@interface TSCEFunction_SLOPE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SLOPE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  TSUDecimal::operator=();
  v9 = *(*arguments + 8);
  v105 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 1, 1, &v105);
  v12 = v105;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14, v15);
    goto LABEL_34;
  }

  v18 = **arguments;
  v104 = 0;
  v20 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v18, v19, context, spec, 0, 1, &v104);
  v21 = v104;
  if (!v21)
  {
    v94 = v20;
    v26 = objc_msgSend_nilValue(TSCENilValue, v22, v23, v24, v25);
    v31 = objc_msgSend_nilValue(TSCENilValue, v27, v28, v29, v30);
    v102 = v31;
    v103 = v26;
    v16 = objc_msgSend_computeSlope_functionSpec_xs_xArgumentIndex_ys_yArgumentIndex_xAverageResult_yAverageResult_slopeResult_xExamplePtr_yExamplePtr_(self, v32, context, spec, v11, 1, v94, 0, 0, 0, v106, &v103, &v102);
    v33 = v103;

    v34 = v102;
    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v35, v16, v37, v38);
      v39 = v33;
      v20 = v94;
LABEL_32:

      goto LABEL_33;
    }

    v93 = v33;
    v40 = objc_msgSend_nilValue(TSCENilValue, v35, v36, v37, v38);
    v20 = v94;
    if (objc_msgSend_deepType_(v34, v41, context, v42, v43) == 5 && objc_msgSend_deepType_(v93, v44, context, v45, v46) == 5)
    {
      v101 = 0;
      v92 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v44, context, spec, 0, &v101);
      v47 = v101;
      v100 = v47;
      v49 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v93, v48, context, spec, 1, &v100);
      v16 = v100;

      if (v16)
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v50, v16, v52, v53);

        v39 = v93;
LABEL_31:

        goto LABEL_32;
      }

      v58 = v92;
      if (objc_msgSend_hasUnits(v92, v50, v51, v52, v53) && !objc_msgSend_dimension(v92, v63, v64, v65, v66) && (objc_msgSend_hasUnits(v49, v67, v68, v69, v70) & 1) == 0)
      {
        TSUDecimal::operator=();
        *&v98._tskFormat = v106[0];
        TSUDecimal::operator*=();
        v97._tskFormat = v98._tskFormat;
        *&v97._formatType = *&v98._formatType;
        v75 = objc_msgSend_unit(v92, v71, v72, v73, v74);
        v78 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v76, &v97, v75, v77);

        v40 = v78;
        v58 = v92;
      }
    }

    else
    {
      if (objc_msgSend_deepType_(v34, v44, context, v45, v46) != 3 || objc_msgSend_deepType_(v93, v54, context, v56, v57) != 5)
      {
LABEL_23:
        if (objc_msgSend_isNil(v40, v54, v55, v56, v57))
        {
          v87 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v83, v106, v85, v86);

          v40 = v87;
        }

        v39 = v93;
        if (v11)
        {
          objc_msgSend_formatWithContext_(v11, v83, context, v85, v86);
          if (v94)
          {
LABEL_27:
            objc_msgSend_formatWithContext_(v94, v83, context, v85, v86);
LABEL_30:
            TSCEFormat::formatByMergingWithFormat(&v97, &v96, v84, v85, v86, &v95);
            TSCEFormat::TSCEFormat(&v98, &v95);
            objc_msgSend_setFormat_(v40, v88, &v98, v89, v90);
            v40 = v40;
            v16 = 0;
            v17 = v40;
            goto LABEL_31;
          }
        }

        else
        {
          memset(&v97, 0, sizeof(v97));
          if (v94)
          {
            goto LABEL_27;
          }
        }

        memset(&v96, 0, sizeof(v96));
        goto LABEL_30;
      }

      v99 = 0;
      v58 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v93, v54, context, spec, 1, &v99);
      v16 = v99;
      if (v16)
      {
        v39 = v93;
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v59, v16, v61, v62);

        goto LABEL_31;
      }

      if ((objc_msgSend_hasUnits(v58, v59, v60, v61, v62) & 1) == 0)
      {
        v79 = v58;
        TSUDecimal::operator=();
        *&v98._tskFormat = v106[0];
        TSUDecimal::operator*=();
        v97._tskFormat = v98._tskFormat;
        *&v97._formatType = *&v98._formatType;
        v82 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v80, &v97, 3, v81);

        v40 = v82;
        v58 = v79;
      }
    }

    goto LABEL_23;
  }

  v16 = v21;
  v17 = objc_msgSend_raiseErrorOrConvert_(context, v22, v21, v24, v25);
LABEL_33:

LABEL_34:

  return v17;
}

@end