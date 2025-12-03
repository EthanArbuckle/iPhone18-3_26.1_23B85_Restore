@interface TSCEFunction_NOMINAL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NOMINAL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v49 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v49);
  v11 = v49;
  v48[1] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v48[2] = v16;
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v17, v18);
  }

  else
  {
    v20 = *(*arguments + 8);
    v48[0] = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, v48);
    v11 = v48[0];
    v27 = objc_msgSend_trunc(v22, v23, v24, v25, v26);

    *&v47 = objc_msgSend_decimalRepresentation(v27, v28, v29, v30, v31);
    *(&v47 + 1) = v32;
    if (v11)
    {
      v35 = objc_msgSend_raiseErrorOrConvert_(context, v32, v11, v33, v34);
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      v43 = v42;
      TSUDecimal::doubleValue(&v43);
      log(v36);
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      v44 = v42;
      TSUDecimal::doubleValue(&v44);
      exp(v37);
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator-=();
      v45 = v42;
      v41[0] = v47;
      TSUDecimal::operator*=();
      v46 = v41[0];
      TSCEFormat::TSCEFormat(v41, 258);
      v35 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v38, &v46, v41, v39);
    }

    v19 = v35;
  }

  return v19;
}

@end