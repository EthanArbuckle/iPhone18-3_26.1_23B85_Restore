@interface TSCEFunction_EXPONDIST
+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5;
@end

@implementation TSCEFunction_EXPONDIST

+ (id)evaluateForArgsWithContext:(id)a3 functionSpec:(id)a4 arguments:(const void *)a5
{
  v8 = **a5;
  v53 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, a3, a4, 0, &v53);
  v11 = v53;
  v52[1] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14, v15);
  v52[2] = v16;
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(a3, v16, v11, v17, v18);
  }

  else
  {
    v20 = *(*a5 + 8);
    v52[0] = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, a3, a4, 1, v52);
    v11 = v52[0];
    *&v51 = objc_msgSend_decimalRepresentation(v22, v23, v24, v25, v26);
    *(&v51 + 1) = v27;
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(a3, v27, v11, v28, v29);
    }

    else
    {
      v30 = *(*a5 + 16);
      v50 = 0;
      v32 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v30, v31, a3, a4, 2, &v50);
      v11 = v50;
      if (v11)
      {
        v36 = objc_msgSend_raiseErrorOrConvert_(a3, v33, v11, v34, v35);
      }

      else
      {
        TSUDecimal::operator=();
        if (v32)
        {
          TSUDecimal::operator=();
          *&v45[0] = TSUDecimal::operator-();
          *(&v45[0] + 1) = v37;
          TSUDecimal::operator*=();
          v46 = v45[0];
          TSUDecimal::doubleValue(&v46);
          exp(v38);
          TSUDecimal::operator=();
          v47 = v45[0];
          v45[0] = v48;
          TSUDecimal::operator-=();
        }

        else
        {
          *&v45[0] = TSUDecimal::operator-();
          *(&v45[0] + 1) = v42;
          TSUDecimal::operator*=();
          v47 = v45[0];
          TSUDecimal::doubleValue(&v47);
          exp(v43);
          TSUDecimal::operator=();
          v48 = v45[0];
          v45[0] = v51;
          TSUDecimal::operator*=();
        }

        v49 = v45[0];
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v39, a3, v40, v41);
        }

        else
        {
          memset(v45, 0, sizeof(v45));
        }

        v36 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v39, &v49, v45, v41);
      }

      v19 = v36;
    }
  }

  return v19;
}

@end