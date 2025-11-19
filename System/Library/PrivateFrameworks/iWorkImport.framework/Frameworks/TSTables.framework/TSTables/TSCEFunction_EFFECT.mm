@interface TSCEFunction_EFFECT
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_EFFECT

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v51 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v51);
  v11 = v51;
  v16 = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(a3, v17, v11, v18, v19);
  }

  else
  {
    v21 = v16;
    v22 = v17;
    v23 = *(*a5 + 8);
    v50 = 0;
    v25 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v24, a3, a4, 1, &v50);
    v11 = v50;
    v30 = objc_msgSend_trunc(v25, v26, v27, v28, v29);

    v49._decimal.w[0] = objc_msgSend_decimalRepresentation(v30, v31, v32, v33, v34);
    v49._decimal.w[1] = v35;
    if (v11)
    {
      v38 = objc_msgSend_raiseErrorOrConvert_(a3, v35, v11, v36, v37);
    }

    else
    {
      TSUDecimal::operator=();
      *&v45[0] = v21;
      *(&v45[0] + 1) = v22;
      TSUDecimal::operator/=();
      v45[3] = v45[0];
      TSUDecimal::operator+=();
      v47 = v46;
      TSUDecimal::doubleValue(&v47);
      v40 = v39;
      TSUDecimal::doubleValue(&v49);
      pow(v40, v41);
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      v45[0] = v46;
      TSUDecimal::operator-=();
      v48 = v46;
      TSCEFormat::TSCEFormat(v45, 258);
      v38 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v42, &v48, v45, v43);
    }

    v20 = v38;
  }

  return v20;
}

@end