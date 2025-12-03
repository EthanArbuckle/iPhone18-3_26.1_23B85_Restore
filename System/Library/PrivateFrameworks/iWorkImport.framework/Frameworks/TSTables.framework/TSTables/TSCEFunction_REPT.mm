@interface TSCEFunction_REPT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_REPT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v10 = v8;
  v47 = 0;
  if (v8)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v47);
    v11 = v47;
    if (v11)
    {
      v15 = v11;
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13, v14);
      goto LABEL_16;
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  v17 = *(*arguments + 8);
  v46 = 0;
  v19 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v18, context, spec, 1, &v46);
  v15 = v46;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v20, v15, v22, v23);
  }

  else
  {
    v44 = objc_msgSend_decimalRepresentation(v19, v20, v21, v22, v23);
    v45[0] = v24;
    v29 = TSUDecimal::truncatedIntegerValue(&v44);
    if (v29 < 0x8000)
    {
      if (sub_221078910(&v48, v25, v26, v27, v28) * (v29 & 0x7FFF) < 0x8000)
      {
        v44 = 0;
        v45[0] = 0;
        for (*(v45 + 7) = 0; v29; --v29)
        {
          sub_221077424(&v44, &v48, context);
        }

        v16 = sub_2210789F4(&v44, v36, v37, v38, v39);

        goto LABEL_15;
      }

      v30 = objc_msgSend_stringTooLongError(TSCEError, v36, v37, v38, v39);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v40, v30, v41, v42);
    }

    else
    {
      v30 = objc_msgSend_functionName(spec, v25, v26, v27, v28);
      v32 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v31, 2, v30, 1, 1, 0.0, 32767.0);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v33, v32, v34, v35);
    }
  }

LABEL_15:

LABEL_16:

  return v16;
}

@end