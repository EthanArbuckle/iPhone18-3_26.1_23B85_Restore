@interface TSCEFunction_CHAR
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_CHAR

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = **a5;
  v71 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, a3, a4, 0, &v71);
  v14 = v71;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v10, v14, v12, v13);
    goto LABEL_30;
  }

  v70._decimal.w[0] = objc_msgSend_decimalRepresentation(v9, v10, v11, v12, v13);
  v70._decimal.w[1] = v16;
  TSUDecimal::truncateToDoubleWithRounding(&v70);
  v22 = v21;
  if (v21 != 10.0 && v21 < 32.0 && v21 != 9.0)
  {
    v23 = objc_msgSend_charInputOutOfBoundsError(TSCEError, v17, v18, v19, v20);
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v24, v23, v25, v26);

    goto LABEL_30;
  }

  if (v21 == 127.0)
  {
    v27 = objc_msgSend_functionName(a4, v17, v18, v19, v20);
    v31 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v28, v27, v29, v30);
    v15 = objc_msgSend_raiseErrorOrConvert_(a3, v32, v31, v33, v34);

    goto LABEL_30;
  }

  if (v21)
  {
    v72[0] = v21;
    if (v21 >> 32)
    {
      v35 = 0;
      v72[1] = v21 >> 32;
      v36 = 8;
    }

    else
    {
      v35 = 1;
      v36 = 4;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v37 = objc_alloc(MEMORY[0x277CCACA8]);
  v43 = objc_msgSend_initWithBytes_length_encoding_(v37, v38, v72, v36, 2617245952);
  if (!v35)
  {
    goto LABEL_25;
  }

  v44 = objc_msgSend_illegalCharacterSet(MEMORY[0x277CCA900], v39, v40, v41, v42);
  v45 = v22;
  if (!objc_msgSend_characterIsMember_(v44, v46, v22, v47, v48))
  {
    v54 = objc_msgSend_controlCharacterSet(MEMORY[0x277CCA900], v49, v50, v51, v52);
    IsMember = objc_msgSend_characterIsMember_(v54, v55, v22, v56, v57);
    v60 = v45 == 65532 || v45 >> 11 == 27;

    if ((IsMember | v60))
    {
      goto LABEL_24;
    }

LABEL_25:
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v39, a3, v41, v42);
    }

    else
    {
      memset(&v70, 0, 32);
    }

    v15 = objc_msgSend_stringValue_format_(TSCEStringValue, v39, v43, &v70, v42);
    goto LABEL_29;
  }

LABEL_24:
  v61 = objc_msgSend_functionName(a4, v39, v53, v41, v42);
  v65 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v62, v61, v63, v64);
  v15 = objc_msgSend_raiseErrorOrConvert_(a3, v66, v65, v67, v68);

LABEL_29:
LABEL_30:

  return v15;
}

@end