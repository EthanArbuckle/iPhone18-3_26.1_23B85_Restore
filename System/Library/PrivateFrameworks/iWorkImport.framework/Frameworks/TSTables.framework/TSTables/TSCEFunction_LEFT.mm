@interface TSCEFunction_LEFT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LEFT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v13 = v8;
  v55 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v55);
    v14 = v55;
    if (v14)
    {
      v15 = v14;
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v9, v14, v11, v12);
      goto LABEL_21;
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
  }

  v20 = sub_221078910(&v56, v9, v10, v11, v12);
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v27 = 1;
  }

  else
  {
    v21 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v21, v22, v23, v24, v25))
    {
      v27 = 1;
    }

    else
    {
      v54 = 0;
      v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v26, context, spec, 1, &v54);
      v15 = v54;
      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v29, v15, v31, v32);

        goto LABEL_21;
      }

      v51._tskFormat = objc_msgSend_decimalRepresentation(v28, v29, v30, v31, v32);
      *&v51._formatType = v33;
      v34 = TSUDecimal::truncatedUIntegerValue(&v51);
      v39 = sub_2210772BC(&v56, v35, v36, v37, v38);
      v40 = sub_22157EFF8(v39, v34);

      if (v40 >= v20)
      {
        v27 = v20;
      }

      else
      {
        v27 = v40;
      }
    }
  }

  memset(v53, 0, 19);
  if (v27 && v20)
  {
    v52[0] = 0;
    v52[1] = v27;
    sub_2210780F0(&v56, v52, v17, v18, v19, &v51);
  }

  else
  {
    sub_221077074(&v51);
  }

  v41 = *&v51._tskFormat;
  v51._tskFormat = 0;
  *&v51._formatType = 0;
  *v53 = v41;
  *&v53[16] = v51._durationFormat;

  v16 = sub_2210789F4(v53, v42, v43, v44, v45);
  v50._tskFormat = 0;
  v50._formatType = 0;
  v50._formatState = 0;
  *&v50._durationFormat = 1057;
  *(&v50._durationFormat + 2) = 1;
  *&v50._baseFormat.base = -50266102;
  v50._numberFormat = 253;
  TSCEFormat::TSCEFormat(&v51, &v50);
  objc_msgSend_setFormat_(v16, v46, &v51, v47, v48);

  v15 = 0;
LABEL_21:

  return v16;
}

@end