@interface TSCEFunction_GCD
+ (TSUDecimal)GCDFunction:(const TSUDecimal *)function number2:(const TSUDecimal *)number2;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_GCD

+ (TSUDecimal)GCDFunction:(const TSUDecimal *)function number2:(const TSUDecimal *)number2
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *function;
  v11 = *number2;
  v12 = v4;
  TSUDecimal::trunc(&v12);
  TSUDecimal::trunc(&v11);
  TSUDecimal::operator=();
  if (TSUDecimal::operator==())
  {
    v6 = v11._decimal.w[0];
    v5 = v11._decimal.w[1];
  }

  else
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v6 = v12._decimal.w[0];
      v5 = v12._decimal.w[1];
    }

    else
    {
      if ((TSUDecimal::operator<=() & 1) == 0)
      {
        v7 = v11;
        v11 = v12;
        v12 = v7;
      }

      v6 = v12._decimal.w[0];
      v5 = v12._decimal.w[1];
      TSUDecimal::operator=();
      TSUDecimal::mod(&v11, &v12, &v10);
      TSUDecimal::operator=();
      if ((TSUDecimal::operator==() & 1) == 0)
      {
        do
        {
          if (TSUDecimal::isInf(&v10))
          {
            break;
          }

          v6 = v10._decimal.w[0];
          v5 = v10._decimal.w[1];
          v11 = v12;
          v12 = v10;
          TSUDecimal::mod(&v11, &v12, &v10);
          TSUDecimal::operator=();
        }

        while (!TSUDecimal::operator==());
      }
    }
  }

  v8 = v6;
  v9 = v5;
  result._decimal.w[1] = v9;
  result._decimal.w[0] = v8;
  return result;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v79[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, v79);
  v10 = v79[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12, v13);
  }

  else
  {
    TSUDecimal::operator=();
    v20 = objc_msgSend_count(v9, v16, v17, v18, v19);
    contextCopy = context;
    v72[0] = contextCopy;
    v72[1] = spec;
    v73 = 0;
    v74[0] = 0;
    *(v74 + 7) = 0;
    v75 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v76 = 0;
    v77 = 0;
    if (v20)
    {
      v26 = 0;
      v27 = v20 - 1;
      v28 = 1;
      v29 = &OBJC_METACLASS___TSTStrokeOrderedLayer;
      do
      {
        while (1)
        {
          v30 = objc_msgSend_valueAtIndex_accessContext_(v9, v21, v26, v72, v24);
          if ((objc_msgSend_isNil(v30, v31, v32, v33, v34) & 1) != 0 || objc_msgSend_nativeType(v30, v35, v36, v37, v38) == 10)
          {
            break;
          }

          v69 = v27;
          v41 = v29;
          v71 = 0;
          v42 = objc_msgSend_asNumber_outError_(v30, v39, contextCopy, &v71, v40);
          v14 = v71;
          *&v70[0] = objc_msgSend_decimalRepresentation(v42, v43, v44, v45, v46);
          *(&v70[0] + 1) = v47;

          if (v14)
          {
            v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v48, v14, v49, v50);
LABEL_27:

            goto LABEL_21;
          }

          TSUDecimal::operator=();
          if (TSUDecimal::operator<())
          {
            v65 = objc_msgSend_numberSmallerThanZeroError(TSCEError, v51, v52, v53, v54);
            v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v66, v65, v67, v68);

            goto LABEL_27;
          }

          v29 = v41;
          v78[0] = objc_msgSend_GCDFunction_number2_(&v41[43], v51, v78, v70, v54);
          v78[1] = v55;

          v28 = 0;
          v27 = v69;
          if (v69 == v26++)
          {
            goto LABEL_16;
          }
        }

        ++v26;
      }

      while (v20 != v26);
      if (v28)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v21, contextCopy, v23, v24);
      }

      else
      {
        memset(v70, 0, sizeof(v70));
      }

      v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v21, v78, v70, v24);
    }

    else
    {
LABEL_15:
      v57 = objc_msgSend_functionName(spec, v21, v22, v23, v24);
      v60 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v58, v57, 5, v59);
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v61, v60, v62, v63);
    }

    v14 = 0;
LABEL_21:
  }

  return v15;
}

@end