@interface TSCEFunction_RIGHT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RIGHT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v13 = v8;
  v54 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v54);
    v14 = v54;
    if (v14)
    {
      v15 = v14;
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v9, v14, v11, v12);
      goto LABEL_25;
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  v21 = sub_221078910(&v55, v9, v10, v11, v12);
  v22 = v21 - 1;
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v21 = 1;
  }

  else
  {
    v23 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v23, v24, v25, v26, v27))
    {
      v21 = 1;
    }

    else
    {
      v53 = 0;
      v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v28, context, spec, 1, &v53);
      v15 = v53;
      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v30, v15, v32, v33);

        goto LABEL_25;
      }

      v52._tskFormat = objc_msgSend_decimalRepresentation(v29, v30, v31, v32, v33);
      *&v52._formatType = v34;
      v35 = TSUDecimal::truncatedUIntegerValue(&v52);
      v40 = sub_2210772BC(&v55, v36, v37, v38, v39);
      v41 = sub_22157EFF8(v40, v35);

      if (v21 >= v41)
      {
        v22 = v21 - v41;
      }

      else
      {
        v22 = 0;
      }

      if (v41 < v21)
      {
        v21 = v41;
      }
    }

    if (!v21)
    {
      goto LABEL_20;
    }
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_20:
    if (v13)
    {
      objc_msgSend_formatWithContext_(v13, v17, context, v19, v20);
    }

    else
    {
      memset(&v52, 0, sizeof(v52));
    }

    v16 = objc_msgSend_stringValue_format_(TSCEStringValue, v17, &stru_2834BADA0, &v52, v20);
    goto LABEL_24;
  }

  v52._tskFormat = v22;
  *&v52._formatType = v21;
  sub_2210780F0(&v55, &v52, v18, v19, v20, v51);
  v16 = sub_2210789F4(v51, v42, v43, v44, v45);
  v50._tskFormat = 0;
  v50._formatType = 0;
  v50._formatState = 0;
  *&v50._durationFormat = 1057;
  *(&v50._durationFormat + 2) = 1;
  *&v50._baseFormat.base = -50266102;
  v50._numberFormat = 253;
  TSCEFormat::TSCEFormat(&v52, &v50);
  objc_msgSend_setFormat_(v16, v46, &v52, v47, v48);

LABEL_24:
  v15 = 0;
LABEL_25:

  return v16;
}

@end