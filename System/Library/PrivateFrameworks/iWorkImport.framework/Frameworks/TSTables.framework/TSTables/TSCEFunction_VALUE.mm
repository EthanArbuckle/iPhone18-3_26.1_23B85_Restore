@interface TSCEFunction_VALUE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_VALUE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v98 = 0;
  v9 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v98);
  v14 = v98;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v10, v14, v12, v13);
    v16 = v9;
    goto LABEL_21;
  }

  v17 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v10, v11, v12, v13);
  v16 = objc_msgSend_stringByTrimmingCharactersInSet_(v9, v18, v17, v19, v20);

  v28 = objc_msgSend_deepType_(v7, v21, context, v22, v23);
  if (v28 == 7)
  {
    v29 = objc_msgSend_locale(context, v24, v25, v26, v27);
    v30 = TSUCreateDateFromString();

    v31 = v30 != 0;
  }

  else
  {
    v31 = 0;
  }

  TSCEFormat::TSCEFormat(&v97, 256);
  if (v28 == 3 || v31)
  {
    v36 = objc_msgSend_functionName(spec, v32, v33, v34, v35);
    v39 = objc_msgSend_stringDoesNotRepresentNumberErrorForFunctionName_string_(TSCEError, v37, v36, v16, v38);
    v43 = objc_msgSend_raiseErrorOrConvert_(context, v40, v39, v41, v42);
    goto LABEL_8;
  }

  if (v28 != 5)
  {
    IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(v7, v32, context, v34, v35);
    if (!v16 || (objc_msgSend_isEqualToString_(v16, v51, &stru_2834BADA0, v53, v54) & IsEmptyWithContext) == 1)
    {
      v15 = objc_msgSend_zero(TSCENumberValue, v51, v52, v53, v54);
      TSCEFormat::TSCEFormat(&v95, &v97);
      objc_msgSend_setFormat_(v15, v55, &v95, v56, v57);
      goto LABEL_9;
    }

    TSUDecimal::operator=();
    v68 = MEMORY[0x277D81290];
    v73 = objc_msgSend_locale(context, v69, v70, v71, v72);
    LOBYTE(v68) = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v68, v74, v16, v73, &v95);

    if (v68)
    {
      v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v75, &v95, &v97, v78);
      goto LABEL_9;
    }

    v36 = objc_msgSend_functionName(spec, v75, v76, v77, v78);
    v39 = objc_msgSend_stringDoesNotRepresentNumberErrorForFunctionName_string_(TSCEError, v79, v36, v16, v80);
    v43 = objc_msgSend_raiseErrorOrConvert_(context, v81, v39, v82, v83);
LABEL_8:
    v15 = v43;

LABEL_9:
    v14 = 0;
    goto LABEL_21;
  }

  v96 = 0;
  v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v32, context, spec, 0, &v96);
  v14 = v96;
  if (v14)
  {
    v49 = objc_msgSend_raiseErrorOrConvert_(context, v45, v14, v47, v48);
  }

  else
  {
    v58 = objc_msgSend_rawDecimalValue(v44, v45, v46, v47, v48);
    if (objc_msgSend_hasUnits(v44, v59, v60, v61, v62, *v58, v58[1]) && !objc_msgSend_dimension(v44, v63, v64, v65, v66))
    {
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      v88 = objc_msgSend_functionName(spec, v84, v85, v86, v87);
      v91 = objc_msgSend_stringDoesNotRepresentNumberErrorForFunctionName_string_(TSCEError, v89, v88, v16, v90);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v92, v91, v93, v94);

      goto LABEL_20;
    }

    v49 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v63, &v95, &v97, v66);
  }

  v15 = v49;
LABEL_20:

LABEL_21:

  return v15;
}

@end