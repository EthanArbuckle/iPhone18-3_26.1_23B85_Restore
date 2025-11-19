@interface TSCEFunction_DATEVALUE
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_DATEVALUE

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v7 = **a5;
  v84 = 0;
  v9 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v84);
  v14 = v84;
  if (!v14)
  {
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v10, a3, v12, v13);
    }

    else
    {
      memset(&v83, 0, sizeof(v83));
    }

    v81 = objc_msgSend_mutableCopy(v9, v10, v11, v12, v13);
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%c", v18, v19, 160);
    v25 = objc_msgSend_length(v9, v21, v22, v23, v24);
    objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v81, v26, v20, @" ", 2, 0, v25);
    v16 = v81;

    if (v83._formatType == 272)
    {
      v31 = TSCEFormat::customFormat(&v83, v27, v28, v29, v30);
      v41 = objc_msgSend_customFormat(v31, v37, v38, v39, v40);
      v46 = objc_msgSend_defaultFormatData(v41, v42, v43, v44, v45);
      v36 = objc_msgSend_formatString(v46, v47, v48, v49, v50);
    }

    else
    {
      if (v83._formatType != 261)
      {
        v36 = 0;
        goto LABEL_12;
      }

      v31 = TSCEFormat::dateTimeFormat(&v83, v27, v28, v29, v30);
      v36 = objc_msgSend_formatString(v31, v32, v33, v34, v35);
    }

LABEL_12:
    v51 = objc_msgSend_locale(a3, v27, v28, v29, v30);
    v52 = TSUCreateDateFromStringWithPreferredFormat();

    if (v52)
    {
      v57 = objc_msgSend_gregorianCalendar(TSCECalendar, v53, v54, v55, v56);
      v61 = objc_msgSend_clearOffTime_(v57, v58, v52, v59, v60);
      v62 = MEMORY[0x277D80658];
      v67 = objc_msgSend_locale(a3, v63, v64, v65, v66);
      v71 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v62, v68, v67, v69, v70);

      TSCEFormat::TSCEFormat(&v82, v71, 0);
      v74 = objc_msgSend_dateValue_format_(TSCEDateValue, v72, v61, &v82, v73);
    }

    else
    {
      v61 = objc_msgSend_functionName(a4, v53, v54, v55, v56);
      v71 = objc_msgSend_stringDoesNotRepresentDateErrorForFunctionName_string_(TSCEError, v75, v61, v16, v76);
      v74 = objc_msgSend_raiseErrorOrConvert_(a3, v77, v71, v78, v79);
    }

    v15 = v74;

    goto LABEL_16;
  }

  v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
  v16 = v9;
LABEL_16:

  return v15;
}

@end