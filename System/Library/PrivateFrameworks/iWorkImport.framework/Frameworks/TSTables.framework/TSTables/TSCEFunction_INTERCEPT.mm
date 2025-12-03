@interface TSCEFunction_INTERCEPT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_INTERCEPT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v9 = *(*arguments + 8);
  v72 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 1, 0, &v72);
  v12 = v72;
  if (v12)
  {
    v16 = v12;
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14, v15);
    goto LABEL_21;
  }

  v18 = **arguments;
  v71 = 0;
  v63 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v18, v19, context, spec, 0, 1, &v71);
  v20 = v71;
  if (!v20)
  {
    v25 = objc_msgSend_nilValue(TSCENilValue, v21, v22, v23, v24);
    v70 = v25;
    v16 = objc_msgSend_computeSlope_functionSpec_xs_xArgumentIndex_ys_yArgumentIndex_xAverageResult_yAverageResult_slopeResult_xExamplePtr_yExamplePtr_(self, v26, context, spec, v11, 1, v63, 0, v75, &v74, &v73, 0, &v70);
    v27 = v70;

    if (v16)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v28, v16, v29, v30);
LABEL_19:

      goto LABEL_20;
    }

    *&v65._tskFormat = v73;
    TSUDecimal::operator*=();
    tskFormat = v65._tskFormat;
    v68 = *&v65._formatType;
    *&v65._tskFormat = v74;
    TSUDecimal::operator-=();
    v69._decimal.w[0] = v65._tskFormat;
    v69._decimal.w[1] = *&v65._formatType;
    if (objc_msgSend_deepType_(v27, v31, context, v32, v33) == 3)
    {
      TSUDecimal::doubleValue(&v69);
      v17 = objc_msgSend_dateValueWithDays_(TSCEDateValue, v35, v36, v37, v38);
    }

    else
    {
      v66 = 0;
      v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v34, context, spec, 1, &v66);
      v16 = v66;
      if (v16)
      {
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v43, v16, v45, v46);

        goto LABEL_19;
      }

      if (objc_msgSend_hasUnits(v42, v43, v44, v45, v46) && !objc_msgSend_dimension(v42, v47, v48, v49, v50))
      {
        TSUDecimal::operator=();
        *&v65._tskFormat = v69;
        TSUDecimal::operator*=();
        tskFormat = v65._tskFormat;
        v68 = *&v65._formatType;
        v60 = objc_msgSend_unit(v42, v56, v57, v58, v59);
        v51 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v61, &tskFormat, v60, v62);
      }

      else
      {
        v51 = objc_msgSend_variantWithDecimal_(v42, v47, &v69, v49, v50);
      }

      v17 = v51;
    }

    if (v63)
    {
      objc_msgSend_formatWithContext_(v63, v39, context, v40, v41);
    }

    else
    {
      memset(&v64, 0, sizeof(v64));
    }

    TSCEFormat::TSCEFormat(&v65, &v64);
    objc_msgSend_setFormat_(v17, v52, &v65, v53, v54);
    v16 = 0;
    goto LABEL_19;
  }

  v16 = v20;
  v17 = objc_msgSend_raiseErrorOrConvert_(context, v21, v20, v23, v24);
LABEL_20:

LABEL_21:

  return v17;
}

@end